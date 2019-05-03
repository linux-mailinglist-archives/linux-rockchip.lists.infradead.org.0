Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C559C12CC7
	for <lists+linux-rockchip@lfdr.de>; Fri,  3 May 2019 13:47:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tA4+8aZOFejpeiEVc68PqGoIGZmPGfOFY+2Iz7/G/Us=; b=fOdCqJnmgmRl7X
	EN5IdLWZbSGAvDNlm0j6LYR79hdsJ4oQNb0/DP312U0pHREmQyrFdl5eBticdsDnh5W3DB88hJARl
	wRiADC/4tPeN75/iQhhblJAMq5GA3Xp7XhRh6lh55IWeDkoKxJNbrTu7m2HkJifd6PsUY0t9UaIPe
	hCm9fUoDfgtjeVPXTPb5YEUUU58T9fFtD7RoLIXep8YfJrddf86vteCIMd+ubQKtMD1T5UmiArAQi
	ICZsOPa9kWFRlgG8P/UiCo7suVEcotAJN3ACHdk8zxdMWefZfMvUHA8cbAYYQu4n3WEh4MbOlO5Fk
	NHqC00flqqa6PhR+EWPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMWf9-0002qd-OD; Fri, 03 May 2019 11:47:35 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMWf0-0002i1-UG
 for linux-rockchip@lists.infradead.org; Fri, 03 May 2019 11:47:29 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id EDE9B283617;
 Fri,  3 May 2019 12:47:23 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@iki.fi>, linux-media@vger.kernel.org
Subject: [PATCH v5 02/15] media: v4l2-common: Add an helper to apply frmsize
 constraints
Date: Fri,  3 May 2019 13:47:06 +0200
Message-Id: <20190503114719.28784-3-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190503114719.28784-1-boris.brezillon@collabora.com>
References: <20190503114719.28784-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_044727_102143_3A277F59 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Tomasz Figa <tfiga@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Nicolas Dufresne <nicolas@ndufresne.ca>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The rockchip VPU driver is open-coding this logic which seems pretty
generic. Let's provide an helper to apply the min/max and alignment
constraints on width/height.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
---
Changes in v5:
* New patch
---
 drivers/media/v4l2-core/v4l2-common.c | 27 +++++++++++++++++++++++++++
 include/media/v4l2-common.h           |  2 ++
 2 files changed, 29 insertions(+)

diff --git a/drivers/media/v4l2-core/v4l2-common.c b/drivers/media/v4l2-core/v4l2-common.c
index 6ae84aa1f7a9..3c6f5c115fc5 100644
--- a/drivers/media/v4l2-core/v4l2-common.c
+++ b/drivers/media/v4l2-core/v4l2-common.c
@@ -331,6 +331,16 @@ static unsigned int clamp_align(unsigned int x, unsigned int min,
 	return x;
 }
 
+static unsigned int clamp_roundup(unsigned int x, unsigned int min,
+				   unsigned int max, unsigned int alignment)
+{
+	x = clamp(x, min, max);
+	if (alignment)
+		x = round_up(x, alignment);
+
+	return x;
+}
+
 void v4l_bound_align_image(u32 *w, unsigned int wmin, unsigned int wmax,
 			   unsigned int walign,
 			   u32 *h, unsigned int hmin, unsigned int hmax,
@@ -519,6 +529,23 @@ static inline unsigned int v4l2_format_block_height(const struct v4l2_format_inf
 	return info->block_h[plane];
 }
 
+void v4l2_apply_frmsize_constraints(u32 *width, u32 *height,
+				    const struct v4l2_frmsize_stepwise *frmsize)
+{
+	if (!frmsize)
+		return;
+
+	/*
+	 * Clamp width/height to meet min/max constraints and round it up to
+	 * macroblock alignment.
+	 */
+	*width = clamp_roundup(*width, frmsize->min_width, frmsize->max_width,
+			       frmsize->step_width);
+        *height = clamp_roundup(*height, frmsize->min_height, frmsize->max_height,
+				frmsize->step_height);
+}
+EXPORT_SYMBOL_GPL(v4l2_apply_frmsize_constraints);
+
 int v4l2_fill_pixfmt_mp(struct v4l2_pix_format_mplane *pixfmt,
 			u32 pixelformat, u32 width, u32 height)
 {
diff --git a/include/media/v4l2-common.h b/include/media/v4l2-common.h
index 3226bc8107cc..e826b154bc35 100644
--- a/include/media/v4l2-common.h
+++ b/include/media/v4l2-common.h
@@ -420,6 +420,8 @@ struct v4l2_format_info {
 
 const struct v4l2_format_info *v4l2_format_info(u32 format);
 
+void v4l2_apply_frmsize_constraints(u32 *width, u32 *height,
+				    const struct v4l2_frmsize_stepwise *frmsize);
 int v4l2_fill_pixfmt(struct v4l2_pix_format *pixfmt, u32 pixelformat,
 		     u32 width, u32 height);
 int v4l2_fill_pixfmt_mp(struct v4l2_pix_format_mplane *pixfmt, u32 pixelformat,
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
