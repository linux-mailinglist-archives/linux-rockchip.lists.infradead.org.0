Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD6B2181FEC
	for <lists+linux-rockchip@lfdr.de>; Wed, 11 Mar 2020 18:47:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tPu7Sc8n7E4HHKdbiIHLwwfrhvPTNpAkJ4ZS+Tzdngs=; b=cRE0KitQzLLn81
	GCEPW0sSlsZJq7xAHLha5KCoXc6U2DqAGsnn4wE+OxxAQQvyGD0baXr8l07w1YPeX91AmHqHDBnKD
	HX0cw/6aCEKUuleaDAElMcy8Fyzfdhyj/tVN6h5aY3ZQ5bUAgXG1OSOj2YekdrlIBx+379jX+1SY4
	OnJGBdbQ/xU7VaKRWbp87VsttfHc2rvFLVFAvrRY6BL11LrLLRCb09d2++M7DoP3RmqaBR/q4saZA
	ZqQVTownPdjBeYuK4F8S2YlM8vFkKGnB1207egWLfHqRbnEwO1S7f9s85+lqDiuXmmwMHH6Yzhd79
	2kcSesrObVEMsmzHRPTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC5S1-0001hI-SC; Wed, 11 Mar 2020 17:47:25 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC5Ry-0001eR-2p
 for linux-rockchip@lists.infradead.org; Wed, 11 Mar 2020 17:47:23 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id C9A522912DD
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 3/6] hantro: Use v4l2_m2m_buf_done_and_job_finish
Date: Wed, 11 Mar 2020 14:42:57 -0300
Message-Id: <20200311174300.19407-4-ezequiel@collabora.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200311174300.19407-1-ezequiel@collabora.com>
References: <20200311174300.19407-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_104722_254905_F641760D 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Tomasz Figa <tfiga@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Alexandre Courbot <acourbot@chromium.org>, Jonas Karlman <jonas@kwiboo.se>,
 Nicolas Dufresne <nicolas@ndufresne.ca>, Hans Verkuil <hverkuil@xs4all.nl>,
 Jeffrey Kardatzke <jkardatzke@chromium.org>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Let the core sort out the nuances of returning buffers
to userspace, by using the v4l2_m2m_buf_done_and_job_finish
helper.

This change also removes usage of buffer sequence fields,
which shouldn't have any meaning for stateless decoders.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 drivers/staging/media/hantro/hantro_drv.c | 27 ++++++++---------------
 1 file changed, 9 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index 0b1200fc0e1a..ec889d755cd6 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -94,32 +94,23 @@ static void hantro_job_finish(struct hantro_dev *vpu,
 			      unsigned int bytesused,
 			      enum vb2_buffer_state result)
 {
-	struct vb2_v4l2_buffer *src, *dst;
 	int ret;
 
 	pm_runtime_mark_last_busy(vpu->dev);
 	pm_runtime_put_autosuspend(vpu->dev);
 	clk_bulk_disable(vpu->variant->num_clocks, vpu->clocks);
 
-	src = v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx);
-	dst = v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
-
-	if (WARN_ON(!src))
-		return;
-	if (WARN_ON(!dst))
-		return;
-
-	src->sequence = ctx->sequence_out++;
-	dst->sequence = ctx->sequence_cap++;
-
-	ret = ctx->buf_finish(ctx, &dst->vb2_buf, bytesused);
-	if (ret)
-		result = VB2_BUF_STATE_ERROR;
+	if (ctx->buf_finish) {
+		struct vb2_v4l2_buffer *dst;
 
-	v4l2_m2m_buf_done(src, result);
-	v4l2_m2m_buf_done(dst, result);
+		dst = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
+		ret = ctx->buf_finish(ctx, &dst->vb2_buf, bytesused);
+		if (ret)
+			result = VB2_BUF_STATE_ERROR;
+	}
 
-	v4l2_m2m_job_finish(vpu->m2m_dev, ctx->fh.m2m_ctx);
+	v4l2_m2m_buf_done_and_job_finish(ctx->dev->m2m_dev, ctx->fh.m2m_ctx,
+					 result);
 }
 
 void hantro_irq_done(struct hantro_dev *vpu, unsigned int bytesused,
-- 
2.25.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
