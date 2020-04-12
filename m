Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D453A1A5E7E
	for <lists+linux-rockchip@lfdr.de>; Sun, 12 Apr 2020 14:05:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RYvEhR7uRpRrFem2M8z5ofFPQqGccDyZfjH+GRYucfg=; b=b4ILEfT5Ds2Cnv
	35K/goZHVKCiCgF/wlouH0QP5jXZIfHVNKJasCBBuswCU4krn36maqyPCPi7L8RG+Y+5IXFnpFSIl
	dfu9wX6vtctxLbqOdLXAy0bkIb7UlNZjaKBNunxSj7+eBVV9yS3l5vAow4nZ+i1gK2LbKEamJIT4r
	+wovQ7wY25+XJc6SM/gqosOGtVxOvoYUPJpXsvKRdL8rAJCAN8lZYSnwYmJis+zjOP5V2lOZEs68O
	zCw0z1u4Qg75RqeuPfIFP8/4gB3IitnS27UM3PWjERKgNOJh++lPaNjVgA+izZGlWPtrXS5764QF8
	ggom3fRob4fwxXp4Ipfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNbMc-0007Cf-9t; Sun, 12 Apr 2020 12:05:26 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNbMV-00078m-GD
 for linux-rockchip@lists.infradead.org; Sun, 12 Apr 2020 12:05:22 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 9ECBA2A07A7
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org, dafna.hirschfeld@collabora.com,
 helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl,
 kernel@collabora.com, dafna3@gmail.com, laurent.pinchart@ideasonboard.com,
 linux-rockchip@lists.infradead.org, sakari.ailus@linux.intel.com
Subject: [PATCH v2 3/4] media: staging: rkisp1: rsz: change (hv)div only if
 capture format is YUV
Date: Sun, 12 Apr 2020 14:05:03 +0200
Message-Id: <20200412120504.6536-4-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200412120504.6536-1-dafna.hirschfeld@collabora.com>
References: <20200412120504.6536-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_050519_768440_21772A76 
X-CRM114-Status: GOOD (  11.16  )
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
 drivers/staging/media/rkisp1/rkisp1-resizer.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
index c28919b9af44..d049374413dc 100644
--- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
+++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
@@ -394,9 +394,14 @@ static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
 	 * but also to change the scale for YUV formats,
 	 * (4:2:2 -> 4:2:0 for example). So the width/height of the CbCr
 	 * streams should be set according to the pixel format in the capture.
+	 * The resizer always gets the input as YUV422. If the capture format
+	 * is RGB then the memory input should be YUV422 so we don't change the
+	 * default hdiv, vdiv in that case.
 	 */
-	hdiv = cap->pix.info->hdiv;
-	vdiv = cap->pix.info->vdiv;
+	if (v4l2_is_format_yuv(cap->pix.info)) {
+		hdiv = cap->pix.info->hdiv;
+		vdiv = cap->pix.info->vdiv;
+	}
 
 	src_c.width = src_y.width / hdiv;
 	src_c.height = src_y.height / vdiv;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
