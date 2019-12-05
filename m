Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F96C114296
	for <lists+linux-rockchip@lfdr.de>; Thu,  5 Dec 2019 15:25:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3TJOXWwkEuDvn0eIypaNur+bxSM8p3eyX0u78QhP+Hg=; b=twImbliUxX7gZ1
	fIBJGCkkdX0kPHV1D4e2ul+7BFtDcFfbD9Y6JZRT1iywhQND+AmGxVAw4twGLwiIRNGTywxm70Rh5
	/w3ZcpsTClT0u5v7MykzD2TMuCwrgGczpHMgnnxP0+RNLCL4Yn3XYhgMUVN3BE3K3r2K7DLC1g9NA
	mi+bZwHTKvsRGUHuWIBf0yMyt42fFnjvX5P7f9L+uaqFJSN6uZ+yEL9ZS1za6QUEM+r7SiAas8njn
	iX/Kfq/ZOZyM5s7T557LYp5p4ZhQ8EWNpOu236XNCI9Abxg5obc4XxCKLVX5WpLZyja3UkCJkFy2/
	yUXWVkwk3gwsbFCDeJ1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ics4N-0003o2-Kz; Thu, 05 Dec 2019 14:25:27 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ics4J-0003l8-VB
 for linux-rockchip@lists.infradead.org; Thu, 05 Dec 2019 14:25:25 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 72F0329224A
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v4 2/4] media: hantro: Cleanup format negotiation helpers
Date: Thu,  5 Dec 2019 11:24:41 -0300
Message-Id: <20191205142443.1298-3-ezequiel@collabora.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191205142443.1298-1-ezequiel@collabora.com>
References: <20191205142443.1298-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_062524_267980_799309E5 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>, Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Format negotiation helpers, hantro_find_format()
and hantro_get_default_fmt() can be simplified,
making the code a little bit clearer.

More importantly, this change is preparation work
for the post-processor usage.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/staging/media/hantro/hantro_v4l2.c | 53 ++++++++--------------
 1 file changed, 20 insertions(+), 33 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_v4l2.c b/drivers/staging/media/hantro/hantro_v4l2.c
index 1dae76f20034..af27edd58a0b 100644
--- a/drivers/staging/media/hantro/hantro_v4l2.c
+++ b/drivers/staging/media/hantro/hantro_v4l2.c
@@ -47,23 +47,26 @@ hantro_get_formats(const struct hantro_ctx *ctx, unsigned int *num_fmts)
 }
 
 static const struct hantro_fmt *
-hantro_find_format(const struct hantro_fmt *formats, unsigned int num_fmts,
-		   u32 fourcc)
+hantro_find_format(const struct hantro_ctx *ctx, u32 fourcc)
 {
-	unsigned int i;
+	const struct hantro_fmt *formats;
+	unsigned int i, num_fmts;
 
+	formats = hantro_get_formats(ctx, &num_fmts);
 	for (i = 0; i < num_fmts; i++)
 		if (formats[i].fourcc == fourcc)
 			return &formats[i];
+
 	return NULL;
 }
 
 static const struct hantro_fmt *
-hantro_get_default_fmt(const struct hantro_fmt *formats, unsigned int num_fmts,
-		       bool bitstream)
+hantro_get_default_fmt(const struct hantro_ctx *ctx, bool bitstream)
 {
-	unsigned int i;
+	const struct hantro_fmt *formats;
+	unsigned int i, num_fmts;
 
+	formats = hantro_get_formats(ctx, &num_fmts);
 	for (i = 0; i < num_fmts; i++) {
 		if (bitstream == (formats[i].codec_mode !=
 				  HANTRO_MODE_NONE))
@@ -89,8 +92,7 @@ static int vidioc_enum_framesizes(struct file *file, void *priv,
 				  struct v4l2_frmsizeenum *fsize)
 {
 	struct hantro_ctx *ctx = fh_to_ctx(priv);
-	const struct hantro_fmt *formats, *fmt;
-	unsigned int num_fmts;
+	const struct hantro_fmt *fmt;
 
 	if (fsize->index != 0) {
 		vpu_debug(0, "invalid frame size index (expected 0, got %d)\n",
@@ -98,8 +100,7 @@ static int vidioc_enum_framesizes(struct file *file, void *priv,
 		return -EINVAL;
 	}
 
-	formats = hantro_get_formats(ctx, &num_fmts);
-	fmt = hantro_find_format(formats, num_fmts, fsize->pixel_format);
+	fmt = hantro_find_format(ctx, fsize->pixel_format);
 	if (!fmt) {
 		vpu_debug(0, "unsupported bitstream format (%08x)\n",
 			  fsize->pixel_format);
@@ -196,8 +197,7 @@ static int vidioc_try_fmt(struct file *file, void *priv, struct v4l2_format *f,
 {
 	struct hantro_ctx *ctx = fh_to_ctx(priv);
 	struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
-	const struct hantro_fmt *formats, *fmt, *vpu_fmt;
-	unsigned int num_fmts;
+	const struct hantro_fmt *fmt, *vpu_fmt;
 	bool coded;
 
 	coded = capture == hantro_is_encoder_ctx(ctx);
@@ -208,10 +208,9 @@ static int vidioc_try_fmt(struct file *file, void *priv, struct v4l2_format *f,
 		  (pix_mp->pixelformat >> 16) & 0x7f,
 		  (pix_mp->pixelformat >> 24) & 0x7f);
 
-	formats = hantro_get_formats(ctx, &num_fmts);
-	fmt = hantro_find_format(formats, num_fmts, pix_mp->pixelformat);
+	fmt = hantro_find_format(ctx, pix_mp->pixelformat);
 	if (!fmt) {
-		fmt = hantro_get_default_fmt(formats, num_fmts, coded);
+		fmt = hantro_get_default_fmt(ctx, coded);
 		f->fmt.pix_mp.pixelformat = fmt->fourcc;
 	}
 
@@ -306,12 +305,10 @@ hantro_reset_fmt(struct v4l2_pix_format_mplane *fmt,
 static void
 hantro_reset_encoded_fmt(struct hantro_ctx *ctx)
 {
-	const struct hantro_fmt *vpu_fmt, *formats;
+	const struct hantro_fmt *vpu_fmt;
 	struct v4l2_pix_format_mplane *fmt;
-	unsigned int num_fmts;
 
-	formats = hantro_get_formats(ctx, &num_fmts);
-	vpu_fmt = hantro_get_default_fmt(formats, num_fmts, true);
+	vpu_fmt = hantro_get_default_fmt(ctx, true);
 
 	if (hantro_is_encoder_ctx(ctx)) {
 		ctx->vpu_dst_fmt = vpu_fmt;
@@ -332,12 +329,10 @@ hantro_reset_encoded_fmt(struct hantro_ctx *ctx)
 static void
 hantro_reset_raw_fmt(struct hantro_ctx *ctx)
 {
-	const struct hantro_fmt *raw_vpu_fmt, *formats;
+	const struct hantro_fmt *raw_vpu_fmt;
 	struct v4l2_pix_format_mplane *raw_fmt, *encoded_fmt;
-	unsigned int num_fmts;
 
-	formats = hantro_get_formats(ctx, &num_fmts);
-	raw_vpu_fmt = hantro_get_default_fmt(formats, num_fmts, false);
+	raw_vpu_fmt = hantro_get_default_fmt(ctx, false);
 
 	if (hantro_is_encoder_ctx(ctx)) {
 		ctx->vpu_src_fmt = raw_vpu_fmt;
@@ -384,8 +379,6 @@ vidioc_s_fmt_out_mplane(struct file *file, void *priv, struct v4l2_format *f)
 	struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
 	struct hantro_ctx *ctx = fh_to_ctx(priv);
 	struct vb2_queue *vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type);
-	const struct hantro_fmt *formats;
-	unsigned int num_fmts;
 	int ret;
 
 	ret = vidioc_try_fmt_out_mplane(file, priv, f);
@@ -421,9 +414,7 @@ vidioc_s_fmt_out_mplane(struct file *file, void *priv, struct v4l2_format *f)
 			return -EBUSY;
 	}
 
-	formats = hantro_get_formats(ctx, &num_fmts);
-	ctx->vpu_src_fmt = hantro_find_format(formats, num_fmts,
-					      pix_mp->pixelformat);
+	ctx->vpu_src_fmt = hantro_find_format(ctx, pix_mp->pixelformat);
 	ctx->src_fmt = *pix_mp;
 
 	/*
@@ -457,9 +448,7 @@ static int vidioc_s_fmt_cap_mplane(struct file *file, void *priv,
 {
 	struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
 	struct hantro_ctx *ctx = fh_to_ctx(priv);
-	const struct hantro_fmt *formats;
 	struct vb2_queue *vq;
-	unsigned int num_fmts;
 	int ret;
 
 	/* Change not allowed if queue is busy. */
@@ -488,9 +477,7 @@ static int vidioc_s_fmt_cap_mplane(struct file *file, void *priv,
 	if (ret)
 		return ret;
 
-	formats = hantro_get_formats(ctx, &num_fmts);
-	ctx->vpu_dst_fmt = hantro_find_format(formats, num_fmts,
-					      pix_mp->pixelformat);
+	ctx->vpu_dst_fmt = hantro_find_format(ctx, pix_mp->pixelformat);
 	ctx->dst_fmt = *pix_mp;
 
 	/*
-- 
2.22.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
