Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE1D8DE53
	for <lists+linux-rockchip@lfdr.de>; Wed, 14 Aug 2019 22:04:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c0L35bMOWErr3h3osjz/mJnTzYYQrmH3PaVY++cfCcs=; b=qymZD3MGC9EI6r
	jiTUqk13LVPAcxojfPMNtQlB4cuY//5/1SAJclelK1tpkFiun7fRUiaRCrMBKH8njF05J7bG3FJQX
	MGn2HhCTech0Qmr6bhcm/p3PaDDrSB/QXdZ/FiyEpEZQR7GgmxumOtCKtXZl6pkxd2A6ANTZb3s/e
	eRmBThEsHzmqexv9dZbU0Bzk7gAon3JqCK23M4qd/lRY8cKlJgha9uSs5Y6UURIi8xHf5su/nbS0p
	VkdjYG/sQYBvCx3I71hUxIEnGJgNIr8TiarbSOTzxYiR4h4KBaAfrWm05lcLMfRHxbnr1SUbr3qjN
	JQsB/uI03THli88FB+JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxzVe-0003xO-1c; Wed, 14 Aug 2019 20:04:38 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxzVZ-0003v0-L8
 for linux-rockchip@lists.infradead.org; Wed, 14 Aug 2019 20:04:35 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id E620F28CB9F
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v6 08/11] media: hantro: Move copy_metadata() before doing a
 decode operation
Date: Wed, 14 Aug 2019 16:59:28 -0300
Message-Id: <20190814195931.6587-9-ezequiel@collabora.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190814195931.6587-1-ezequiel@collabora.com>
References: <20190814195931.6587-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_130433_862196_530BBBA0 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
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
Cc: fbuergisser@chromium.org, Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Boris Brezillon <boris.brezillon@collabora.com>

Some decoders use intra slice/frame references. The capture buffer
pointed by these references might be new and thus have invalid
timestamp which prevents the decoder logic from retrieving the
vb2_buffer object based on the output buf timestamp.
Copy all metadata (including the timestamp) before starting the decode
operation.

Suggested-by: Jonas Karlman <jonas@kwiboo.se>
Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
Tested-by: Philipp Zabel <p.zabel@pengutronix.de>
---
Changes in v6:
* None.
Changes in v5:
* None.
Changes in v4:
* None.
---
 drivers/staging/media/hantro/hantro_drv.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index 4af6ee80229e..6e2351e46750 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -111,8 +111,6 @@ static void hantro_job_finish(struct hantro_dev *vpu,
 	src->sequence = ctx->sequence_out++;
 	dst->sequence = ctx->sequence_cap++;
 
-	v4l2_m2m_buf_copy_metadata(src, dst, true);
-
 	ret = ctx->buf_finish(ctx, &dst->vb2_buf, bytesused);
 	if (ret)
 		result = VB2_BUF_STATE_ERROR;
@@ -178,8 +176,12 @@ void hantro_finish_run(struct hantro_ctx *ctx)
 static void device_run(void *priv)
 {
 	struct hantro_ctx *ctx = priv;
+	struct vb2_v4l2_buffer *src, *dst;
 	int ret;
 
+	src = hantro_get_src_buf(ctx);
+	dst = hantro_get_dst_buf(ctx);
+
 	ret = clk_bulk_enable(ctx->dev->variant->num_clocks, ctx->dev->clocks);
 	if (ret)
 		goto err_cancel_job;
@@ -187,6 +189,8 @@ static void device_run(void *priv)
 	if (ret < 0)
 		goto err_cancel_job;
 
+	v4l2_m2m_buf_copy_metadata(src, dst, true);
+
 	ctx->codec_ops->run(ctx);
 	return;
 
-- 
2.22.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
