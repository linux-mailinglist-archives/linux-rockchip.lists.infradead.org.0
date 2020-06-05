Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 827E11EFED1
	for <lists+linux-rockchip@lfdr.de>; Fri,  5 Jun 2020 19:27:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Q0Vxz4Gy8cgd4+h5mCEGOpAkzuUX3KfzaEI2XJDm/Jc=; b=CpY/8o5y9hDV/qB04OBrs9xwRS
	YST5EKSy5zpELblize1oUXD6T/1sYA/SmN0nCcks07ZO/VsrsLhtDKLuOvKaSa9R/fTKkhSsXTLtH
	Iu9sbGwrgjXVGVp2asQ33eX4vNAy6QZFTy5tTiYVrohHclb5jQaOW3DxNz8seJmgJkROBWQjXyznZ
	fCImue+l1uCW/y4bl+3uWgV2UbXBhe0O423Lp8M5cXU3ZQDj0F+AkW576UsW83XE96qplhMunm4Tm
	EsbJo7cvaifSSScBTZwINBMBQyhrQYsHCwoXt4KM4d/+Da+CsF3653/1Mtdac2dNvlH0mQZqnb+/M
	kxQxI2Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhG7z-0001u2-8P; Fri, 05 Jun 2020 17:27:35 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhG7O-0001LA-O6
 for linux-rockchip@lists.infradead.org; Fri, 05 Jun 2020 17:27:01 +0000
Received: from localhost.localdomain
 (p200300cb871f5b0030b619f331cc239b.dip0.t-ipconnect.de
 [IPv6:2003:cb:871f:5b00:30b6:19f3:31cc:239b])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 8DE432A5069;
 Fri,  5 Jun 2020 18:26:54 +0100 (BST)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org,
	laurent.pinchart@ideasonboard.com
Subject: [RFC v4 6/8] media: staging: rkisp1: validate quantization matching
 in link_validate callbacks
Date: Fri,  5 Jun 2020 19:26:23 +0200
Message-Id: <20200605172625.19777-7-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200605172625.19777-1-dafna.hirschfeld@collabora.com>
References: <20200605172625.19777-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_102659_011902_0E2C768C 
X-CRM114-Status: GOOD (  12.34  )
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
Cc: mchehab@kernel.org, dafna.hirschfeld@collabora.com, p.zabel@pengutronix.de,
 dafna3@gmail.com, tfiga@chromium.org, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 sakari.ailus@linux.intel.com, skhan@linuxfoundation.org, kernel@collabora.com,
 ezequiel@collabora.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The quantization of the rkisp1 entities can be set by userspace
using the CSC API. Therefore we validate that the
quantization field matches on the links in the link_validate
callbacks.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-capture.c |  3 ++-
 drivers/staging/media/rkisp1/rkisp1-resizer.c | 21 ++++++++++++++++++-
 2 files changed, 22 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
index 66856d5eb576..3eb2ea1a9eb1 100644
--- a/drivers/staging/media/rkisp1/rkisp1-capture.c
+++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
@@ -1263,7 +1263,8 @@ static int rkisp1_capture_link_validate(struct media_link *link)
 		return ret;
 
 	if (sd_fmt.format.height != cap->pix.fmt.height ||
-	    sd_fmt.format.width != cap->pix.fmt.width)
+	    sd_fmt.format.width != cap->pix.fmt.width ||
+	    sd_fmt.format.quantization != cap->pix.fmt.quantization)
 		return -EPIPE;
 
 	return 0;
diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
index 237cce9183f7..027396b00124 100644
--- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
+++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
@@ -671,6 +671,25 @@ static int rkisp1_rsz_set_selection(struct v4l2_subdev *sd,
 	return 0;
 }
 
+int rkisp1_rsz_link_validate(struct v4l2_subdev *sd, struct media_link *link,
+			     struct v4l2_subdev_format *source_fmt,
+			     struct v4l2_subdev_format *sink_fmt)
+{
+	int ret;
+
+	ret = v4l2_subdev_link_validate_default(sd, link, source_fmt, sink_fmt);
+	if (ret)
+		return ret;
+	if (source_fmt->format.quantization != sink_fmt->format.quantization) {
+		struct device *dev = link->graph_obj.mdev->dev;
+
+		dev_warn(dev, "isp->resizer link validation failed, ");
+		dev_warn(dev, "quantizations don't match\n");
+		return -EPIPE;
+	}
+	return 0;
+}
+
 static const struct media_entity_operations rkisp1_rsz_media_ops = {
 	.link_validate = v4l2_subdev_link_validate,
 };
@@ -682,7 +701,7 @@ static const struct v4l2_subdev_pad_ops rkisp1_rsz_pad_ops = {
 	.init_cfg = rkisp1_rsz_init_config,
 	.get_fmt = rkisp1_rsz_get_fmt,
 	.set_fmt = rkisp1_rsz_set_fmt,
-	.link_validate = v4l2_subdev_link_validate_default,
+	.link_validate = rkisp1_rsz_link_validate,
 };
 
 /* ----------------------------------------------------------------------------
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
