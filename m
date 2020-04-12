Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D8C1A5E7C
	for <lists+linux-rockchip@lfdr.de>; Sun, 12 Apr 2020 14:05:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uafv7ktC49Yujm630sBCBQmCm8dxygEzJRvRAB4ime8=; b=ZkCsan1QkxdAiJ
	vKvwEKfxjS/w3zpRa7qClxYy8ZxthBGDSsHTSGQRua7xhXD5T3nb2Z7sxfHLwHclXFzV/XVGMVd1W
	kkpYK6RYW/p7ICc0zHNd9pW4q60gEkv4SjeUq5yoKNPQF+WeTYHayHvuLYXOCq06kcB4I4J5RLGlL
	mggnDrZSyednESTM3kp/6P4/dJGstAzbtKui5KL82VIffyK09lp3Cs5rY3RnjDa1QR1n0mFcLuTdp
	w3C0TlFQnNZJOuEkHqdDhVGFVfAO7ClnXJvs0ydS9So4EdDTVeFZaU2UpniIqCh5SxbsmKnpOAosU
	EPbSQ++fEp9x/xQJlKoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNbMb-0007Bd-88; Sun, 12 Apr 2020 12:05:25 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNbMV-00078n-GB
 for linux-rockchip@lists.infradead.org; Sun, 12 Apr 2020 12:05:22 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 24C352A0849
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org, dafna.hirschfeld@collabora.com,
 helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl,
 kernel@collabora.com, dafna3@gmail.com, laurent.pinchart@ideasonboard.com,
 linux-rockchip@lists.infradead.org, sakari.ailus@linux.intel.com
Subject: [PATCH v2 4/4] media: staging: rkisp1: cap: enable RGB capture format
 with YUV media bus
Date: Sun, 12 Apr 2020 14:05:04 +0200
Message-Id: <20200412120504.6536-5-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200412120504.6536-1-dafna.hirschfeld@collabora.com>
References: <20200412120504.6536-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_050519_777678_0EBD4506 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 drivers/staging/media/rkisp1/rkisp1-capture.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
index fbf62399fe3d..a94483170e9c 100644
--- a/drivers/staging/media/rkisp1/rkisp1-capture.c
+++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
@@ -1208,6 +1208,8 @@ static int rkisp1_capture_link_validate(struct media_link *link)
 		media_entity_to_v4l2_subdev(link->source->entity);
 	struct rkisp1_capture *cap = video_get_drvdata(vdev);
 	struct rkisp1_isp *isp = &cap->rkisp1->isp;
+	u8 isp_pix_enc = isp->src_fmt->pixel_enc;
+	u8 cap_pix_enc = cap->pix.info->pixel_enc;
 	struct v4l2_subdev_format sd_fmt;
 	int ret;
 
@@ -1218,7 +1220,9 @@ static int rkisp1_capture_link_validate(struct media_link *link)
 		return -EPIPE;
 	}
 
-	if (cap->pix.info->pixel_enc != isp->src_fmt->pixel_enc) {
+	if (cap_pix_enc != isp_pix_enc &&
+	    !(isp_pix_enc == V4L2_PIXEL_ENC_YUV &&
+	      cap_pix_enc == V4L2_PIXEL_ENC_RGB)) {
 		dev_err(cap->rkisp1->dev,
 			"format type mismatch in link '%s:%d->%s:%d'\n",
 			link->source->entity->name, link->source->index,
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
