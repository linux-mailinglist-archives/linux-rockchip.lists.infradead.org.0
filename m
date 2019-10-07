Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78519CEAE5
	for <lists+linux-rockchip@lfdr.de>; Mon,  7 Oct 2019 19:46:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zqTPrROfVyYk6jRUj88rnkRHdXU14eWqtmHopHR9eXE=; b=C/6WRrHmaCMg5i
	5cuSlfzjF1dSe2bwWUlkD35gi499DmKCnSVjtEd43UieKk81nH/dw5ijUrKCNlbAd17aV7ZKukU6b
	OUv70hGHR2YsUed3TlTjg1vcbKadz7d+2mOiE5+NyVnZoq6nrD9wB9FFG/2xqBJk9AtHLR2ZTkhZ3
	0fZLYpTu4LvaP/0CpMDtfiTT3PgwkSXbax7vp5iiIZEOmwb9mamnwZN1kEupUiXs9LfPKHBdE0Mad
	RqS8RI1X/nWmdVjhuuQIqonNd3UyIXiOsJrSaPuxobo38IT1/bEQn+2IOSYMa6QuhWjvag7wZ9/5J
	Qq1o1mtqdZf/IRhwN9DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHX5z-0003Qi-Jh; Mon, 07 Oct 2019 17:46:55 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHX5v-0003Q9-U5
 for linux-rockchip@lists.infradead.org; Mon, 07 Oct 2019 17:46:53 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 4268628D406
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v2 for 5.4 1/4] media: hantro: Fix s_fmt for dynamic
 resolution changes
Date: Mon,  7 Oct 2019 14:45:02 -0300
Message-Id: <20191007174505.10681-2-ezequiel@collabora.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191007174505.10681-1-ezequiel@collabora.com>
References: <20191007174505.10681-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_104652_103112_423AC135 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Douglas Anderson <dianders@chromium.org>, fbuergisser@chromium.org,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>, linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Commit 953aaa1492c53 ("media: rockchip/vpu: Prepare things to support decoders")
changed the conditions under S_FMT was allowed for OUTPUT
CAPTURE buffers.

However, and according to the mem-to-mem stateless decoder specification,
in order to support dynamic resolution changes, S_FMT should be allowed
even if OUTPUT buffers have been allocated.

Relax decoder S_FMT restrictions on OUTPUT buffers, allowing a resolution
modification, provided the pixel format stays the same.

Tested on RK3288 platforms using ChromiumOS Video Decode/Encode Accelerator Unittests.

Fixes: 953aaa1492c53 ("media: rockchip/vpu: Prepare things to support decoders")
Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
--
v2:
* Call try_fmt_out before using the format,
  pointed out by Philipp.

 drivers/staging/media/hantro/hantro_v4l2.c | 28 +++++++++++++++-------
 1 file changed, 19 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_v4l2.c b/drivers/staging/media/hantro/hantro_v4l2.c
index 3dae52abb96c..586d243cc3cc 100644
--- a/drivers/staging/media/hantro/hantro_v4l2.c
+++ b/drivers/staging/media/hantro/hantro_v4l2.c
@@ -367,19 +367,26 @@ vidioc_s_fmt_out_mplane(struct file *file, void *priv, struct v4l2_format *f)
 {
 	struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
 	struct hantro_ctx *ctx = fh_to_ctx(priv);
+	struct vb2_queue *vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type);
 	const struct hantro_fmt *formats;
 	unsigned int num_fmts;
-	struct vb2_queue *vq;
 	int ret;
 
-	/* Change not allowed if queue is busy. */
-	vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type);
-	if (vb2_is_busy(vq))
-		return -EBUSY;
+	ret = vidioc_try_fmt_out_mplane(file, priv, f);
+	if (ret)
+		return ret;
 
 	if (!hantro_is_encoder_ctx(ctx)) {
 		struct vb2_queue *peer_vq;
 
+		/*
+		 * In other to support dynamic resolution change,
+		 * the decoder admits a resolution change, as long
+		 * as the pixelformat remains. Can't be done if streaming.
+		 */
+		if (vb2_is_streaming(vq) || (vb2_is_busy(vq) &&
+		    pix_mp->pixelformat != ctx->src_fmt.pixelformat))
+			return -EBUSY;
 		/*
 		 * Since format change on the OUTPUT queue will reset
 		 * the CAPTURE queue, we can't allow doing so
@@ -389,12 +396,15 @@ vidioc_s_fmt_out_mplane(struct file *file, void *priv, struct v4l2_format *f)
 					  V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE);
 		if (vb2_is_busy(peer_vq))
 			return -EBUSY;
+	} else {
+		/*
+		 * The encoder doesn't admit a format change if
+		 * there are OUTPUT buffers allocated.
+		 */
+		if (vb2_is_busy(vq))
+			return -EBUSY;
 	}
 
-	ret = vidioc_try_fmt_out_mplane(file, priv, f);
-	if (ret)
-		return ret;
-
 	formats = hantro_get_formats(ctx, &num_fmts);
 	ctx->vpu_src_fmt = hantro_find_format(formats, num_fmts,
 					      pix_mp->pixelformat);
-- 
2.22.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
