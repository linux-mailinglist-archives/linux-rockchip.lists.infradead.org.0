Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F16D02CCEE
	for <lists+linux-rockchip@lfdr.de>; Tue, 28 May 2019 19:03:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nMAbvPfooBOX8Lt6dlbcsWiteVGSEG1Hlx/4jmcsP3c=; b=tfRVnd6xLilZzu
	QjK73Uz5MohUJepjZhUCpY8VtOPM7nT9NKg8gAVvZpoWIIknYoLcFELfaiRpqfmOuUek1QHn9vT97
	Atu8dvwuM+L4GdBBpY/rE2HG6UMzDe+MbehwatUeK+wi4FdM0F8XMCFr12VyEnep3uku34jX+6Uzo
	QCuQ70pCicRYm5kr2T4CpTf10QQaCzJB8cWhNnJAe6D7Bl/1VVH2OCb7JlmI1ujFTwFsy5BFUBXR7
	uZH5m0dylFy1zX7o7/oHm+kPyQ3aMHuIpACUJQdlWXgo8jVdOtYzF1soe7M7a6KodoCjvtAPNcmdc
	+2qYvmyg1KMXAxkkmmOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVfVe-0007Y1-31; Tue, 28 May 2019 17:03:34 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVfVY-0007SR-Ut
 for linux-rockchip@lists.infradead.org; Tue, 28 May 2019 17:03:31 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 165F7263952
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org,
	Hans Verkuil <hans.verkuil@cisco.com>
Subject: [PATCH v6 03/16] media: v4l2-common: Support custom imagesize in
 fill_pixfmt()
Date: Tue, 28 May 2019 14:02:19 -0300
Message-Id: <20190528170232.2091-4-ezequiel@collabora.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190528170232.2091-1-ezequiel@collabora.com>
References: <20190528170232.2091-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_100329_371705_E0FBBF12 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 Tomasz Figa <tfiga@chromium.org>, linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Boris Brezillon <boris.brezillon@collabora.com>

Users can define custom sizeimage as long as they're big enough to
store the amount of pixels required for a specific width/height under a
specific format. Avoid overriding those fields in this case.

We could possibly do the same for bytesperline, but it gets tricky when
dealing with !MPLANE definitions, so this case is omitted for now and
->bytesperline is always overwritten with the value calculated in
fill_pixfmt().

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
---
Changes from v5:
* Overwrite bytesperline with the value calculated in fill_pixfmt()

Changes from v4:
* New patch

 drivers/media/v4l2-core/v4l2-common.c | 58 ++++++++++++++++++++-------
 1 file changed, 43 insertions(+), 15 deletions(-)

diff --git a/drivers/media/v4l2-core/v4l2-common.c b/drivers/media/v4l2-core/v4l2-common.c
index b2d1e55d9561..fd286f6e17d7 100644
--- a/drivers/media/v4l2-core/v4l2-common.c
+++ b/drivers/media/v4l2-core/v4l2-common.c
@@ -585,9 +585,9 @@ int v4l2_fill_pixfmt_mp(struct v4l2_pix_format_mplane *pixfmt,
 	pixfmt->num_planes = info->mem_planes;
 
 	if (info->mem_planes == 1) {
+		u32 sizeimage = 0;
+
 		plane = &pixfmt->plane_fmt[0];
-		plane->bytesperline = ALIGN(width, v4l2_format_block_width(info, 0)) * info->bpp[0];
-		plane->sizeimage = 0;
 
 		for (i = 0; i < info->comp_planes; i++) {
 			unsigned int hdiv = (i == 0) ? 1 : info->hdiv;
@@ -598,10 +598,21 @@ int v4l2_fill_pixfmt_mp(struct v4l2_pix_format_mplane *pixfmt,
 			aligned_width = ALIGN(width, v4l2_format_block_width(info, i));
 			aligned_height = ALIGN(height, v4l2_format_block_height(info, i));
 
-			plane->sizeimage += info->bpp[i] *
-				DIV_ROUND_UP(aligned_width, hdiv) *
-				DIV_ROUND_UP(aligned_height, vdiv);
+			sizeimage += info->bpp[i] *
+				     DIV_ROUND_UP(aligned_width, hdiv) *
+				     DIV_ROUND_UP(aligned_height, vdiv);
 		}
+
+		/* Custom bytesperline value is not supported yet. */
+		plane->bytesperline = ALIGN(width,
+					    v4l2_format_block_width(info, 0)) *
+				      info->bpp[0];
+
+		/*
+		 * The user might have specified a custom sizeimage, only
+		 * override it if it's not big enough.
+		 */
+		plane->sizeimage = max(sizeimage, plane->sizeimage);
 	} else {
 		for (i = 0; i < info->comp_planes; i++) {
 			unsigned int hdiv = (i == 0) ? 1 : info->hdiv;
@@ -613,10 +624,19 @@ int v4l2_fill_pixfmt_mp(struct v4l2_pix_format_mplane *pixfmt,
 			aligned_height = ALIGN(height, v4l2_format_block_height(info, i));
 
 			plane = &pixfmt->plane_fmt[i];
-			plane->bytesperline =
-				info->bpp[i] * DIV_ROUND_UP(aligned_width, hdiv);
-			plane->sizeimage =
-				plane->bytesperline * DIV_ROUND_UP(aligned_height, vdiv);
+
+			/* Custom bytesperline value is not supported yet. */
+			plane->bytesperline = info->bpp[i] *
+					      DIV_ROUND_UP(aligned_width, hdiv);
+
+			/*
+			 * The user might have specified a custom sizeimage,
+			 * only override it if it's not big enough.
+			 */
+			plane->sizeimage = max_t(u32,
+						 plane->bytesperline *
+						 DIV_ROUND_UP(aligned_height, vdiv),
+						 plane->sizeimage);
 		}
 	}
 	return 0;
@@ -627,6 +647,7 @@ int v4l2_fill_pixfmt(struct v4l2_pix_format *pixfmt, u32 pixelformat,
 		     u32 width, u32 height)
 {
 	const struct v4l2_format_info *info;
+	u32 sizeimage = 0;
 	int i;
 
 	info = v4l2_format_info(pixelformat);
@@ -640,8 +661,6 @@ int v4l2_fill_pixfmt(struct v4l2_pix_format *pixfmt, u32 pixelformat,
 	pixfmt->width = width;
 	pixfmt->height = height;
 	pixfmt->pixelformat = pixelformat;
-	pixfmt->bytesperline = ALIGN(width, v4l2_format_block_width(info, 0)) * info->bpp[0];
-	pixfmt->sizeimage = 0;
 
 	for (i = 0; i < info->comp_planes; i++) {
 		unsigned int hdiv = (i == 0) ? 1 : info->hdiv;
@@ -651,11 +670,20 @@ int v4l2_fill_pixfmt(struct v4l2_pix_format *pixfmt, u32 pixelformat,
 
 		aligned_width = ALIGN(width, v4l2_format_block_width(info, i));
 		aligned_height = ALIGN(height, v4l2_format_block_height(info, i));
-
-		pixfmt->sizeimage += info->bpp[i] *
-			DIV_ROUND_UP(aligned_width, hdiv) *
-			DIV_ROUND_UP(aligned_height, vdiv);
+		sizeimage += info->bpp[i] * DIV_ROUND_UP(aligned_width, hdiv) *
+			     DIV_ROUND_UP(aligned_height, vdiv);
 	}
+
+	/* Custom bytesperline value is not supported yet. */
+	pixfmt->bytesperline = ALIGN(width, v4l2_format_block_width(info, 0)) *
+			       info->bpp[0];
+
+	/*
+	 * The user might have specified its own sizeimage value, only override
+	 * it if it's not big enough.
+	 */
+	pixfmt->sizeimage = max(sizeimage, pixfmt->sizeimage);
+
 	return 0;
 }
 EXPORT_SYMBOL_GPL(v4l2_fill_pixfmt);
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
