Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A9B019C960
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 21:04:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lL6oZsjbjvv7/FAQu5/5Zixa5fLvc39/Eay1pFA0lQo=; b=BrCwyRZyKDhx+p
	rfAHbTdwr+0Cy2occ5Yys5S/AupsDe2SBIIeZmW34catSVaPOS7aNK++S7f7h/sPYMRDwDVj4jiyl
	vX0ZX5BNGuAuKU3OHnmp+VZzRP3Q9pF0ymhaQbqWHy0GjuqsXUNa1AEy9tpX9iP3SSc8Hzw0bax4E
	LiwvNC5VvQVVV1FnGaTk6l5kjCNMeewZdQLsNexvL3HUhBY6yPEhltFa/m5qxGUPKeaQY86NA3L+q
	iFZ5HEfOnQvhAa7sNlelUwqJpn+Mdde11zJhLr7E+Obctb3ZPLKoUyZ0Pv0+r/BxyYZTjYPf7qtIq
	wo+N+Vt/rVqEBnqAhuhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK58p-0001w2-Cp; Thu, 02 Apr 2020 19:04:39 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK58g-0001rJ-Uk
 for linux-rockchip@lists.infradead.org; Thu, 02 Apr 2020 19:04:34 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a02:810a:1140:6758:20a2:167a:3b62:26be])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 5D81C295BD9;
 Thu,  2 Apr 2020 20:04:28 +0100 (BST)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org, dafna.hirschfeld@collabora.com,
 helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl,
 kernel@collabora.com, dafna3@gmail.com, laurent.pinchart@ideasonboard.com,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v2 3/5] media: staging: rkisp1: cap: support uv swap only for
 semiplanar formats
Date: Thu,  2 Apr 2020 21:04:17 +0200
Message-Id: <20200402190419.15155-4-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200402190419.15155-1-dafna.hirschfeld@collabora.com>
References: <20200402190419.15155-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_120431_123908_3974E41E 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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

The register RKISP1_CIF_MI_XTD_FORMAT_CTRL is relevant only
for semiplanar formats, therefore the uv swap can be supported
through this register only for semiplanar formats.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Acked-by: Helen Koike <helen.koike@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-capture.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
index 84a3cf565106..fa2849209433 100644
--- a/drivers/staging/media/rkisp1/rkisp1-capture.c
+++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
@@ -37,6 +37,10 @@
 
 #define RKISP1_MIN_BUFFERS_NEEDED 3
 
+#define RKISP1_IS_SEMI_PLANAR(write_format)				\
+	(((write_format) == RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA) ||	\
+	 ((write_format) == RKISP1_MI_CTRL_SP_WRITE_SPLA))
+
 enum rkisp1_plane {
 	RKISP1_PLANE_Y	= 0,
 	RKISP1_PLANE_CB	= 1,
@@ -429,7 +433,8 @@ static void rkisp1_mp_config(struct rkisp1_capture *cap)
 		     cap->config->mi.cr_size_init);
 
 	rkisp1_irq_frame_end_enable(cap);
-	if (cap->pix.cfg->uv_swap) {
+	if (RKISP1_IS_SEMI_PLANAR(cap->pix.cfg->write_format) &&
+	    cap->pix.cfg->uv_swap) {
 		reg = rkisp1_read(rkisp1, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
 
 		reg = reg | RKISP1_CIF_MI_XTD_FMT_CTRL_MP_CB_CR_SWAP;
@@ -466,7 +471,8 @@ static void rkisp1_sp_config(struct rkisp1_capture *cap)
 	rkisp1_write(rkisp1, cap->sp_y_stride, RKISP1_CIF_MI_SP_Y_LLENGTH);
 
 	rkisp1_irq_frame_end_enable(cap);
-	if (cap->pix.cfg->uv_swap) {
+	if (RKISP1_IS_SEMI_PLANAR(cap->pix.cfg->write_format) &&
+	    cap->pix.cfg->uv_swap) {
 		u32 reg = rkisp1_read(rkisp1, RKISP1_CIF_MI_XTD_FORMAT_CTRL);
 
 		reg = reg | RKISP1_CIF_MI_XTD_FMT_CTRL_SP_CB_CR_SWAP;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
