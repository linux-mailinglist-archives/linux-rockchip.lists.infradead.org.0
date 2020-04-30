Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE3F11C02E8
	for <lists+linux-rockchip@lfdr.de>; Thu, 30 Apr 2020 18:44:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q6gGdmXhGxXqb0Xn7dRrWrzFDEtU7tgGLjvOB0UP/Wg=; b=Pv1zreQhQC+8hL
	obhI1VFDJ1AUrlvf0+k0ajRmc/x6eyTCS7+FFO8Phgt4Agzj3ZEyJiCbxsf2CXhTbEJBfGXjIgEDF
	bfhx4vy5a/ECaeXh7qT3W888LOLKAMHBaQ6/bU2oJxh0DO+Hqzy3ariaH1iMWq0QsuaSuUOUR2APy
	Nljna3+TRiMwkbpfw8Kwh8NFtqapZ59LXw1amUsnMcoyDjdNVuui0rVfjBqw6mR9LB9rL33/Y9gbc
	Q5pg4wpds8aZnPiPeXVNSg/1oZNsz6NRa2F/Rjm3M+AnZXw8InQerh5Z4CZdfbyMF7j+XXfrTYdMm
	GT6Qe5DKIqfxFN/Uy07Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUCIb-0007aM-N4; Thu, 30 Apr 2020 16:44:33 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUCHB-00067z-0e; Thu, 30 Apr 2020 16:43:07 +0000
X-Originating-IP: 93.29.109.196
Received: from localhost.localdomain (196.109.29.93.rev.sfr.net
 [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 2DEF11C0006;
 Thu, 30 Apr 2020 16:43:01 +0000 (UTC)
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 3/4] media: rockchip: rga: Introduce color fmt macros and
 refactor CSC mode logic
Date: Thu, 30 Apr 2020 18:42:44 +0200
Message-Id: <20200430164245.1630174-4-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200430164245.1630174-1-paul.kocialkowski@bootlin.com>
References: <20200430164245.1630174-1-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_094305_184963_03B8E126 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Heiko Stuebner <heiko@sntech.de>, Hans Verkuil <hansverk@cisco.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This introduces two macros: RGA_COLOR_FMT_IS_YUV and RGA_COLOR_FMT_IS_RGB
which allow quick checking of the colorspace familily of a RGA color format.

These macros are then used to refactor the logic for CSC mode selection.
The two nested tests for input colorspace are simplified into a single one,
with a logical and, making the whole more readable.

Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 drivers/media/platform/rockchip/rga/rga-hw.c | 23 +++++++++-----------
 drivers/media/platform/rockchip/rga/rga-hw.h |  5 +++++
 2 files changed, 15 insertions(+), 13 deletions(-)

diff --git a/drivers/media/platform/rockchip/rga/rga-hw.c b/drivers/media/platform/rockchip/rga/rga-hw.c
index 4be6dcf292ff..5607ee8d1917 100644
--- a/drivers/media/platform/rockchip/rga/rga-hw.c
+++ b/drivers/media/platform/rockchip/rga/rga-hw.c
@@ -200,22 +200,19 @@ static void rga_cmd_set_trans_info(struct rga_ctx *ctx)
 	dst_info.data.format = ctx->out.fmt->hw_format;
 	dst_info.data.swap = ctx->out.fmt->color_swap;
 
-	if (ctx->in.fmt->hw_format >= RGA_COLOR_FMT_YUV422SP) {
-		if (ctx->out.fmt->hw_format < RGA_COLOR_FMT_YUV422SP) {
-			switch (ctx->in.colorspace) {
-			case V4L2_COLORSPACE_REC709:
-				src_info.data.csc_mode =
-					RGA_SRC_CSC_MODE_BT709_R0;
-				break;
-			default:
-				src_info.data.csc_mode =
-					RGA_SRC_CSC_MODE_BT601_R0;
-				break;
-			}
+	if (RGA_COLOR_FMT_IS_YUV(ctx->in.fmt->hw_format) &&
+	    RGA_COLOR_FMT_IS_RGB(ctx->out.fmt->hw_format)) {
+		switch (ctx->in.colorspace) {
+		case V4L2_COLORSPACE_REC709:
+			src_info.data.csc_mode = RGA_SRC_CSC_MODE_BT709_R0;
+			break;
+		default:
+			src_info.data.csc_mode = RGA_SRC_CSC_MODE_BT601_R0;
+			break;
 		}
 	}
 
-	if (ctx->out.fmt->hw_format >= RGA_COLOR_FMT_YUV422SP) {
+	if (RGA_COLOR_FMT_IS_YUV(ctx->out.fmt->hw_format)) {
 		switch (ctx->out.colorspace) {
 		case V4L2_COLORSPACE_REC709:
 			dst_info.data.csc_mode = RGA_SRC_CSC_MODE_BT709_R0;
diff --git a/drivers/media/platform/rockchip/rga/rga-hw.h b/drivers/media/platform/rockchip/rga/rga-hw.h
index 96cb0314dfa7..e8917e5630a4 100644
--- a/drivers/media/platform/rockchip/rga/rga-hw.h
+++ b/drivers/media/platform/rockchip/rga/rga-hw.h
@@ -95,6 +95,11 @@
 #define RGA_COLOR_FMT_CP_8BPP 15
 #define RGA_COLOR_FMT_MASK 15
 
+#define RGA_COLOR_FMT_IS_YUV(fmt) \
+	(((fmt) >= RGA_COLOR_FMT_YUV422SP) && ((fmt) < RGA_COLOR_FMT_CP_1BPP))
+#define RGA_COLOR_FMT_IS_RGB(fmt) \
+	((fmt) < RGA_COLOR_FMT_YUV422SP)
+
 #define RGA_COLOR_NONE_SWAP 0
 #define RGA_COLOR_RB_SWAP 1
 #define RGA_COLOR_ALPHA_SWAP 2
-- 
2.26.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
