Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77C0E189CC5
	for <lists+linux-rockchip@lfdr.de>; Wed, 18 Mar 2020 14:22:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=br8mBUIz7Sb376N7MrgcT7GuEJuLjyGk01AhH0d+XZs=; b=b5ahUyr32dzR19
	7VxAhladfMHvPqdT0HCNfPtZ1SqNS977Lm6Zze2ABWjgJq7I9uBSg4ciLPELbWPDUNho43gp227/g
	RvHcYfDOmzmstZLuyZK5J011dXd5opEKj7JZpce7fwh6h6PghnAnRuTyf9hBtm0niFzz55uJ2lm+U
	eMeWcs4XkHo5RXLtsGcUAeppQ8bQM9IN5QbKlR1LNtbvxBYZVe8X30CnsrckUudYDvWIvXlXW5EDX
	kids0SctoUg8g8cAsK83q+mc80UGzJeL2YhlbyQgHqcgbnJ7IVj7V+jHK372LN1emB20QbmCky7EP
	t4j1tl7WzF45sxnL2LuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEYe1-0003MX-Mz; Wed, 18 Mar 2020 13:22:01 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEYdx-0003Js-Jv
 for linux-rockchip@lists.infradead.org; Wed, 18 Mar 2020 13:21:58 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 72251296622
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/8] hantro: Set buffers' zeroth plane payload in
 .buf_prepare
Date: Wed, 18 Mar 2020 10:21:02 -0300
Message-Id: <20200318132108.21873-3-ezequiel@collabora.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200318132108.21873-1-ezequiel@collabora.com>
References: <20200318132108.21873-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_062157_796836_875AAE76 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Rob Herring <robh@kernel.org>, Tomasz Figa <tfiga@chromium.org>,
 Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, Nicolas Dufresne <nicolas@ndufresne.ca>,
 Hans Verkuil <hverkuil@xs4all.nl>, Jeffrey Kardatzke <jkardatzke@chromium.org>,
 kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Buffers' zeroth plane payload size is calculated at format
negotiation time, and so it can be set in .buf_prepare.

Keep in mind that, to make this change easier, hantro_buf_prepare
is refactored, using the cedrus driver as reference. This results
in cleaner code as byproduct.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 drivers/staging/media/hantro/hantro_v4l2.c | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_v4l2.c b/drivers/staging/media/hantro/hantro_v4l2.c
index f4ae2cee0f18..3142ab6697d5 100644
--- a/drivers/staging/media/hantro/hantro_v4l2.c
+++ b/drivers/staging/media/hantro/hantro_v4l2.c
@@ -608,7 +608,7 @@ hantro_queue_setup(struct vb2_queue *vq, unsigned int *num_buffers,
 }
 
 static int
-hantro_buf_plane_check(struct vb2_buffer *vb, const struct hantro_fmt *vpu_fmt,
+hantro_buf_plane_check(struct vb2_buffer *vb,
 		       struct v4l2_pix_format_mplane *pixfmt)
 {
 	unsigned int sz;
@@ -630,12 +630,18 @@ static int hantro_buf_prepare(struct vb2_buffer *vb)
 {
 	struct vb2_queue *vq = vb->vb2_queue;
 	struct hantro_ctx *ctx = vb2_get_drv_priv(vq);
+	struct v4l2_pix_format_mplane *pix_fmt;
+	int ret;
 
 	if (V4L2_TYPE_IS_OUTPUT(vq->type))
-		return hantro_buf_plane_check(vb, ctx->vpu_src_fmt,
-						  &ctx->src_fmt);
-
-	return hantro_buf_plane_check(vb, ctx->vpu_dst_fmt, &ctx->dst_fmt);
+		pix_fmt = &ctx->src_fmt;
+	else
+		pix_fmt = &ctx->dst_fmt;
+	ret = hantro_buf_plane_check(vb, pix_fmt);
+	if (ret)
+		return ret;
+	vb2_set_plane_payload(vb, 0, pix_fmt->plane_fmt[0].sizeimage);
+	return 0;
 }
 
 static void hantro_buf_queue(struct vb2_buffer *vb)
-- 
2.25.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
