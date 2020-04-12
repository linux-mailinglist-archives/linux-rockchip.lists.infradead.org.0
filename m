Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA5581A5E7A
	for <lists+linux-rockchip@lfdr.de>; Sun, 12 Apr 2020 14:05:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KUazU1p/timtgNgrd42s7IPSvv7Oi8lFP2Ks9cXQp1U=; b=VCG1RtuHZlhSn7
	FQKUr7JXUzCfA/5lBo5B4oFEYwqMSHH7HjtECTURwRybE7skWFP4x+hbr3lVFtQeECSdDE48qsO1V
	F/1cpLWp3n9RjeCMmoBCehA2qz132Gfjwum2QtLnTP3//vDhSaIgCMGJuU7/geN+PwGoKYwI9fw8c
	rCt8TsIyaku1pAhou9J9K4GB++IyXDxFEwuuI2k5tO1SoCs9icOGxtHrVIc6Udad43g9V8+iURGWJ
	D2UYHSZxNlV5nASPX7nI+2k9W815+yQac0mWkSgcOkZZyccqgeDcWuJTfO5qOq4U6IK0tfAhMSrKZ
	eUrnr3iAM31XB4ZjIfug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNbMY-0007AF-UQ; Sun, 12 Apr 2020 12:05:22 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNbMV-00078l-GD
 for linux-rockchip@lists.infradead.org; Sun, 12 Apr 2020 12:05:21 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id A2F682A0713
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org, dafna.hirschfeld@collabora.com,
 helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl,
 kernel@collabora.com, dafna3@gmail.com, laurent.pinchart@ideasonboard.com,
 linux-rockchip@lists.infradead.org, sakari.ailus@linux.intel.com
Subject: [PATCH v2 1/4] media: staging: rkisp1: rsz: get the capture format
 info from the capture struct
Date: Sun, 12 Apr 2020 14:05:01 +0200
Message-Id: <20200412120504.6536-2-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200412120504.6536-1-dafna.hirschfeld@collabora.com>
References: <20200412120504.6536-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_050519_763700_B0B72657 
X-CRM114-Status: UNSURE (   8.66  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Currently the format info of the capture is retrieved by calling
the function  v4l2_format_info. This is not needed since it is
already save in the capture object.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-resizer.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
index 7b6b7ddd4169..84f23a91b0a0 100644
--- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
+++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
@@ -387,11 +387,9 @@ static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
 	if (rsz->pixel_enc == V4L2_PIXEL_ENC_YUV) {
 		struct rkisp1_capture *cap =
 			&rsz->rkisp1->capture_devs[rsz->id];
-		const struct v4l2_format_info *pixfmt_info =
-			v4l2_format_info(cap->pix.fmt.pixelformat);
 
-		hdiv = pixfmt_info->hdiv;
-		vdiv = pixfmt_info->vdiv;
+		hdiv = cap->pix.info->hdiv;
+		vdiv = cap->pix.info->vdiv;
 	}
 	src_c.width = src_y.width / hdiv;
 	src_c.height = src_y.height / vdiv;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
