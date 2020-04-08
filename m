Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B762C1A2027
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 Apr 2020 13:48:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PBBt9EBWKWJZ+Ju9Ahn16jL9giesp+Ky7U0tAj7WVZw=; b=Vi+S1uw5Uro8vR
	48SSgX3ify/hmxY+KUDVze95HHzib5zLqyUa/Yb3JnG66lrAKg9xIZmISaQ9zkYUDREJsysXxKD6G
	gSfql9E3agyOZw1IhjdXwuXPRlcVSJMVghQMMPwiV613N54IcvrUaZBzi8bYcLexxENDNo0Rh2M+z
	vASj8UObhjsO3MfUtgqx89K/P4ODBZxdG2GlL0WcA7sJvGjy9iIByrLe9LzfR/YJEJZKkZtizx1JL
	UNbjugQbYnfJtGHR9sdDNLBkDyZQ+ObC98+Fh4alTm6bCE/f/SOW742ymRdziO0CQareAaG0LLMMW
	oiRO9kDtq+LQ55dBlM1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM9CM-00041m-Gf; Wed, 08 Apr 2020 11:48:50 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM9CD-0003u3-AF
 for linux-rockchip@lists.infradead.org; Wed, 08 Apr 2020 11:48:42 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 374AA296A51
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v3 5/6] media: staging: rkisp1: cap: support uv swapped plane
 formats
Date: Wed,  8 Apr 2020 13:48:21 +0200
Message-Id: <20200408114822.27360-6-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200408114822.27360-1-dafna.hirschfeld@collabora.com>
References: <20200408114822.27360-1-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_044841_485002_420304BF 
X-CRM114-Status: UNSURE (   7.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mchehab@kernel.org, dafna.hirschfeld@collabora.com, dafna3@gmail.com,
 hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Plane formats with the u and v planes swapped can be
supported by swapping the address of the cb and cr buffers.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-capture.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
index 257799a7d865..9f0a3c407286 100644
--- a/drivers/staging/media/rkisp1/rkisp1-capture.c
+++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
@@ -743,6 +743,14 @@ static void rkisp1_vb2_buf_queue(struct vb2_buffer *vb)
 			rkisp1_pixfmt_comp_size(pixm, RKISP1_PLANE_CB);
 	}
 
+	/*
+	 * uv swap can be supported for plane formats by switching
+	 * the address of cb and cr
+	 */
+	if (cap->pix.info->comp_planes == 3 && cap->pix.cfg->uv_swap)
+		swap(ispbuf->buff_addr[RKISP1_PLANE_CR],
+		     ispbuf->buff_addr[RKISP1_PLANE_CB]);
+
 	spin_lock_irqsave(&cap->buf.lock, flags);
 
 	/*
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
