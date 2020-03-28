Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 520E4196539
	for <lists+linux-rockchip@lfdr.de>; Sat, 28 Mar 2020 11:56:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ElcHbnIID9u+Ai2q+cXue+ieK4JDSliGi75i8aSRoS0=; b=XETnQNUkyPqxX7
	iEJbUHiKychzl8t18ddUr40oi0sJLMGPKKdQmcJALul9E0LXJlpOolEAx7dOs3faRTbrA3wycs4rB
	9JuGssgRd/gCHkkFXrYXIWEBPz/aigxX4S2Mv+B+0zzEZikS1qttYOjEPOCwtiMz9QYrExciSrW3u
	pc+IyW+3YA41FlPDCAxdvUj0e0Gn8mDWhy/xWTU/vYiGg2qkrsGuHCnhPANxHDjdyjS+2Plju+N2u
	epgZE4EVLJH2vEAKkLdYbXrottu3yC94NbnTUwfWOn5ny39lqyWNtRJpGqoa6cevpzQggA3OzlDqR
	J2LL20FPgqn8NEX2wUeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jI98e-0002re-Ed; Sat, 28 Mar 2020 10:56:28 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jI98X-0002ny-G5
 for linux-rockchip@lists.infradead.org; Sat, 28 Mar 2020 10:56:24 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a02:810a:1140:6758:90b5:2774:1094:333f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 6DAC129724B;
 Sat, 28 Mar 2020 10:56:19 +0000 (GMT)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org, dafna.hirschfeld@collabora.com,
 helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl,
 kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com,
 linux-rockchip@lists.infradead.org, mchehab@kernel.org,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH 3/3] media: staging: rkisp1: cap: enable RGB capture format
 with YUV media bus
Date: Sat, 28 Mar 2020 11:56:06 +0100
Message-Id: <20200328105606.13660-4-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200328105606.13660-1-dafna.hirschfeld@collabora.com>
References: <20200328105606.13660-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_035621_675542_D229029B 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

In selfpath, RGB capture formats are received in the sink pad as YUV
and are converted to RGB only when writing to memory. So the validation
function should accept YUV bus formats with RGB capture encoding.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-capture.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
index b7681b806b4c..3abf38362f5a 100644
--- a/drivers/staging/media/rkisp1/rkisp1-capture.c
+++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
@@ -1227,6 +1227,9 @@ static int rkisp1_capture_link_validate(struct media_link *link)
 		media_entity_to_v4l2_subdev(link->source->entity);
 	struct rkisp1_capture *cap = video_get_drvdata(vdev);
 	struct rkisp1_isp *isp = &cap->rkisp1->isp;
+	enum rkisp1_fmt_pix_type cap_fmt =
+		rkisp1_pixel_enc_to_fmt_pix(cap->pix.info);
+	enum rkisp1_fmt_pix_type isp_fmt = isp->src_fmt->fmt_type;
 	struct v4l2_subdev_format sd_fmt;
 	int ret;
 
@@ -1237,8 +1240,8 @@ static int rkisp1_capture_link_validate(struct media_link *link)
 		return -EPIPE;
 	}
 
-	if (rkisp1_pixel_enc_to_fmt_pix(cap->pix.info) !=
-	    isp->src_fmt->fmt_type) {
+	if ((cap_fmt == RKISP1_FMT_BAYER && isp_fmt == RKISP1_FMT_YUV) ||
+	    (cap_fmt != RKISP1_FMT_BAYER && isp_fmt == RKISP1_FMT_BAYER)) {
 		dev_err(cap->rkisp1->dev,
 			"format type mismatch in link '%s:%d->%s:%d'\n",
 			link->source->entity->name, link->source->index,
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
