Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D48A19653A
	for <lists+linux-rockchip@lfdr.de>; Sat, 28 Mar 2020 11:56:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XBUAbiAvEGAlXXvXvfTZe3HnZgiGoAiIZ75E7X04k+E=; b=bKGaZ8lIWU6FDw
	6vOaUo3bQK2Dxh9DoS91c6tDjyOur3ijGKvz1aln76nUtdrTT9elbp6J/aEO5qX8XmHPW9UvcAWMQ
	hYdTiup+jJ689XmhM3RMYUY+8R63G2S3rhtAEn9FsWwkJEQYbrLI1BpdeduoGM+1v7d6LYkwtZrDY
	Bt2v2mQtnLj1SOTqL2jmNs39bePSWS4tWXQz4C+MJp5Zjc38xgm4NA9eCgGqM90G51Y7WiSXCOq2Y
	xzhZXu5rydL5PBXSelPSr9cAGQ9UnV3W8nCJWCMQdv6LUoCV29THOuKKH9jhFm2un/5LCt2enVjZr
	PtNtlaMiAheobFIgUZgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jI98f-0002su-Jk; Sat, 28 Mar 2020 10:56:29 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jI98X-0002nw-G4
 for linux-rockchip@lists.infradead.org; Sat, 28 Mar 2020 10:56:24 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a02:810a:1140:6758:90b5:2774:1094:333f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id E6B852972A2;
 Sat, 28 Mar 2020 10:56:18 +0000 (GMT)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org, dafna.hirschfeld@collabora.com,
 helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl,
 kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com,
 linux-rockchip@lists.infradead.org, mchehab@kernel.org,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH 2/3] media: staging: rkisp1: rsz: change (hv)div only if
 capture format is YUV
Date: Sat, 28 Mar 2020 11:56:05 +0100
Message-Id: <20200328105606.13660-3-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200328105606.13660-1-dafna.hirschfeld@collabora.com>
References: <20200328105606.13660-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_035621_679955_6EE3F658 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

RGB formats in selfpath should receive input format as YUV422.
The resizer input format is always YUV422 and therefore
if the capture format is RGB, the resizer should not change
the YUV rations.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-resizer.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
index 8704267a066f..5721eee29ecb 100644
--- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
+++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
@@ -389,8 +389,18 @@ static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
 			&rsz->rkisp1->capture_devs[rsz->id];
 		const struct v4l2_format_info *pixfmt_info = cap->pix.info;
 
-		hdiv = pixfmt_info->hdiv;
-		vdiv = pixfmt_info->vdiv;
+		/*
+		 * The resizer always get the input as YUV422
+		 * If the capture encoding is also YUV, then the resizer should
+		 * change the 4:2:2 sampling to the sampling of the capture
+		 * format (4:2:2 -> 4:2:0 for example).
+		 * If the capture format is RGB then the memory input should
+		 * be YUV422 so we don't change the default hdiv, vdiv
+		 */
+		if (v4l2_is_format_yuv(pixfmt_info)) {
+			hdiv = pixfmt_info->hdiv;
+			vdiv = pixfmt_info->vdiv;
+		}
 	}
 	src_c.width = src_y.width / hdiv;
 	src_c.height = src_y.height / vdiv;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
