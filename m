Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C2A319C961
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 21:04:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WUOr4Mqvg9ZkhUgUHGumTKQOEic82fbZ5qUxqlntOjQ=; b=JS5+HjP4O+sbKQ
	GZr8L35HVh8kYJFjQ/HmKlV9t4prX/wt9J0DIQZIvSIHcNo8HzsG+dN00D6FsDuyuVIt1hr3qsHgX
	k9arNj0hS/65SGOe4SnoZYmtozOVGSD4VbpT5aj8KG5iMglN9Mkhp+02kPsae3/btrZsXfhHH01BW
	H7SabDTChrWwD3Xh8lMkrhV3DPyAbDw5SE8+8JNIWtnd/q3oSCfaGtRl6Bs7j5cjZ1s+MKavOJ2Ek
	a+20ljbe8nTA3TMA7d3an7iZu3wRme+zGw+OoSTy1//mIoFQC7RzEySsup50fnAJPDx6WwTIMbfsB
	bm54HALxB80hs+rjVkag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK58r-0001yd-CM; Thu, 02 Apr 2020 19:04:41 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK58h-0001rL-Fi
 for linux-rockchip@lists.infradead.org; Thu, 02 Apr 2020 19:04:34 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a02:810a:1140:6758:20a2:167a:3b62:26be])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id CE6A7297E42;
 Thu,  2 Apr 2020 20:04:28 +0100 (BST)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org, dafna.hirschfeld@collabora.com,
 helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl,
 kernel@collabora.com, dafna3@gmail.com, laurent.pinchart@ideasonboard.com,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v2 4/5] media: staging: rkisp1: cap: support uv swapped plane
 formats
Date: Thu,  2 Apr 2020 21:04:18 +0200
Message-Id: <20200402190419.15155-5-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200402190419.15155-1-dafna.hirschfeld@collabora.com>
References: <20200402190419.15155-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_120431_657066_628593E8 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Plane formats with the u and v planes swapped can be
supported by changing the address of the cb and cr in
the buffer.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Acked-by: Helen Koike <helen.koike@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-capture.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
index fa2849209433..2d274e8f565b 100644
--- a/drivers/staging/media/rkisp1/rkisp1-capture.c
+++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
@@ -41,6 +41,10 @@
 	(((write_format) == RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA) ||	\
 	 ((write_format) == RKISP1_MI_CTRL_SP_WRITE_SPLA))
 
+#define RKISP1_IS_PLANAR(write_format)					\
+	(((write_format) == RKISP1_MI_CTRL_SP_WRITE_PLA) ||		\
+	 ((write_format) == RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8))
+
 enum rkisp1_plane {
 	RKISP1_PLANE_Y	= 0,
 	RKISP1_PLANE_CB	= 1,
@@ -788,6 +792,19 @@ static void rkisp1_vb2_buf_queue(struct vb2_buffer *vb)
 			rkisp1_pixfmt_comp_size(pixm, RKISP1_PLANE_CB);
 	}
 
+	/*
+	 * uv swap can be supported for plane formats by switching
+	 * the address of cb and cr
+	 */
+	if (RKISP1_IS_PLANAR(cap->pix.cfg->write_format) &&
+	    cap->pix.cfg->uv_swap) {
+		ispbuf->buff_addr[RKISP1_PLANE_CR] =
+			ispbuf->buff_addr[RKISP1_PLANE_CB];
+		ispbuf->buff_addr[RKISP1_PLANE_CB] =
+			ispbuf->buff_addr[RKISP1_PLANE_CR] +
+			rkisp1_pixfmt_comp_size(pixm, RKISP1_PLANE_CR);
+	}
+
 	spin_lock_irqsave(&cap->buf.lock, flags);
 
 	/*
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
