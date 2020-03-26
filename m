Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E816119488E
	for <lists+linux-rockchip@lfdr.de>; Thu, 26 Mar 2020 21:16:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mtmUmTBQW83j2ePfC2X3ghU9rxtWns6irluBC9Rdn4M=; b=KtiqwWPWZD+3U7
	vgD76qYQyKBrpAXNM5TcUIL0GiiVaqj7jNNDZ50BATcJYfSbPqRS0947YXGDn1ADk/JmHytk45xYO
	8RwuURhH7a1cwxh44ihVLsyiWIAn2yHZ7pteOENlCmN2OMbQp74012q+vz6VjCoUCb+noqmAVybP/
	E/k3n7kLoCwk+W2rz043/SPU4WKh/O/BoJWV+Bt2DrzdhFKxh6TPS78ZPjwqxTmrtS8Mon94/f1R/
	mT1qjqJXMMRMZs+9VreudoeUVuR7IhkhTYmxy2aaZ4uFzwsoZcoSnEPK+JiAQwOypbXx0UzNcgmEb
	LZy7jegaYsWjDCnKoSSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHYvg-0005RI-3n; Thu, 26 Mar 2020 20:16:40 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHYva-0005NQ-3v
 for linux-rockchip@lists.infradead.org; Thu, 26 Mar 2020 20:16:35 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a02:810a:113f:ad1c:b024:988e:8796:31a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 99CC0283C93;
 Thu, 26 Mar 2020 20:16:32 +0000 (GMT)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org, dafna.hirschfeld@collabora.com,
 helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl,
 kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com,
 linux-rockchip@lists.infradead.org, mchehab@kernel.org,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH 3/4] media: staging: rkisp1: cap: support uv swapped plane
 formats
Date: Thu, 26 Mar 2020 21:16:09 +0100
Message-Id: <20200326201610.31762-4-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200326201610.31762-1-dafna.hirschfeld@collabora.com>
References: <20200326201610.31762-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_131634_284293_553D6206 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Plane formats with the u and v planes swapped can be
supported by changing the address of the cb and cr in
the buffer.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
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
