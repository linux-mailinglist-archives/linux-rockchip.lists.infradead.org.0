Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E99671D5086
	for <lists+linux-rockchip@lfdr.de>; Fri, 15 May 2020 16:30:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CdUYOS4sdiy/13aPEYq9qU302TzM0Pn8B2Q0ZZyqmyQ=; b=qAy4ssRzH0U5eA
	jnJsuyU9t2XRcG07Sd58EAqgaepjGUykAc1vRcKN1D2CAe/y9v8YW9mCfyDlLCjztf4VfaepaAvg8
	v9feQVkVgJaXv3W3fn37Mz1SFKZIEj0CupDi7hjdufSzIlVEOpOtVzbME2EUUoaFp+LeRdQO7kU84
	TTmY3mM3VqqARNGypDLNcYNFnODyqgIDu4OJ5dq70zhc5dWbKxdd4wKVwi8fYWHolmlXsqse8L1aI
	70DDvDXisA2WvF3jGiiXCn8c3u3F4+A9AOpFS4+3c/QyCzkHgXWe49jsFFVJ8sn9D0QM+AmD2XZ/i
	/kJ+Il/v1gkEntdhU3kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZbLt-0000LB-Cx; Fri, 15 May 2020 14:30:17 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZbLh-0006dM-BP
 for linux-rockchip@lists.infradead.org; Fri, 15 May 2020 14:30:08 +0000
Received: from localhost.localdomain
 (p200300cb871f5b0000f307f9e92f920a.dip0.t-ipconnect.de
 [IPv6:2003:cb:871f:5b00:f3:7f9:e92f:920a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 3675B2A345F;
 Fri, 15 May 2020 15:30:02 +0100 (BST)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org, dafna.hirschfeld@collabora.com,
 helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl,
 kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com,
 linux-rockchip@lists.infradead.org, mchehab@kernel.org,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH v2 3/4] media: staging: rkisp1: rsz: set output format to
 YUV422 if cap format is YUV444
Date: Fri, 15 May 2020 16:29:51 +0200
Message-Id: <20200515142952.20163-4-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200515142952.20163-1-dafna.hirschfeld@collabora.com>
References: <20200515142952.20163-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_073005_525201_4DD8344F 
X-CRM114-Status: GOOD (  11.64  )
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

If the capture format is YUV444M then the memory input format
should be YUV422, so the resizer should not change the default
hdiv, vdiv in that case.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-resizer.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
index 04a29af8cc92..5f9740ddd558 100644
--- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
+++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
@@ -394,10 +394,11 @@ static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
 	 * (4:2:2 -> 4:2:0 for example). So the width/height of the CbCr
 	 * streams should be set according to the pixel format in the capture.
 	 * The resizer always gets the input as YUV422. If the capture format
-	 * is RGB then the memory input (the resizer output) should be YUV422
-	 * so we use the hdiv, vdiv of the YUV422 info in this case.
+	 * is RGB or YUV444 then the memory input (the resizer output) should
+	 * be YUV422 so we use the hdiv, vdiv of the YUV422 info in this case.
 	 */
-	if (v4l2_is_format_yuv(cap->pix.info)) {
+	if (v4l2_is_format_yuv(cap->pix.info) &&
+	    cap->pix.info->format != V4L2_PIX_FMT_YUV444M) {
 		src_c.width = cap->pix.info->hdiv;
 		src_c.height = cap->pix.info->vdiv;
 	} else {
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
