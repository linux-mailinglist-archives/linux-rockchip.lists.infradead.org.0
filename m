Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 414F015541F
	for <lists+linux-rockchip@lfdr.de>; Fri,  7 Feb 2020 10:00:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Bo+eiuPbobqGC055Ug6JAhFL5y/jpy2kuqBsFW4QeSs=; b=Sk4sJCf4Z4JQjaIq1qT6wVygZh
	GAOwNWKGA4ASfjHXI3RqXQfqPrN5FsYvf1zeiGdSUkenjexVg7sA53KegEwkq1sp/wUpAX6XZgHy/
	at7QgcSSfDX/s7ZEF6N4DlNLziaq9mJ/O+9tyci/CBS7bQNHJxCTfjdLqEdY8GtPOOhfAccpTSEDN
	xXkS57GkdDVWUqD9VHULMhMk7ptXcf66YA238RbbmaTDotIbVaX6+XXRvUZ8yHPLDJ2aJLb+aO/8S
	QZddMJIYCqmIY5m0iG1k/nYaKPP88DNWhH1fSfDAYmIfI9bpR8q1d20Tx1PtP5fXt7+M//e44sah4
	m17kt2cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izzUn-0005D0-8R; Fri, 07 Feb 2020 09:00:17 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izzUj-0004tP-HM
 for linux-rockchip@lists.infradead.org; Fri, 07 Feb 2020 09:00:15 +0000
Received: from localhost.localdomain
 (p200300CB87166A00301E621E2266094E.dip0.t-ipconnect.de
 [IPv6:2003:cb:8716:6a00:301e:621e:2266:94e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id E8EB2295A87;
 Fri,  7 Feb 2020 09:00:05 +0000 (GMT)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 2/4] media: staging: rkisp1: isp: check for dphy bus before
 initializations in s_stream
Date: Fri,  7 Feb 2020 09:59:49 +0100
Message-Id: <20200207085951.5226-3-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200207085951.5226-1-dafna.hirschfeld@collabora.com>
References: <20200207085951.5226-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_010013_708200_5DC46D86 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mchehab@kernel.org, dafna.hirschfeld@collabora.com, dafna3@gmail.com,
 hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, sakari.ailus@linux.intel.com, kernel@collabora.com,
 ezequiel@collabora.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

In rkisp1_isp_s_stream it is better to return error in case the
bus type is not dphy before initializing the registers.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-isp.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
index 56bd95d01f65..c98e3c16f520 100644
--- a/drivers/staging/media/rkisp1/rkisp1-isp.c
+++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
@@ -963,14 +963,14 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
 	rkisp1->active_sensor = container_of(sensor_sd->asd,
 					     struct rkisp1_sensor_async, asd);
 
+	if (rkisp1->active_sensor->mbus.type != V4L2_MBUS_CSI2_DPHY)
+		return -EINVAL;
+
 	atomic_set(&rkisp1->isp.frame_sequence, -1);
 	ret = rkisp1_config_cif(rkisp1);
 	if (ret)
 		return ret;
 
-	if (rkisp1->active_sensor->mbus.type != V4L2_MBUS_CSI2_DPHY)
-		return -EINVAL;
-
 	ret = rkisp1_mipi_csi2_start(&rkisp1->isp, rkisp1->active_sensor);
 	if (ret)
 		return ret;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
