Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96D381FF0A9
	for <lists+linux-rockchip@lfdr.de>; Thu, 18 Jun 2020 13:35:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=a5Ay50p0bITsh65phqQo7cwKYsfAL+ceOFi6nkWJHoI=; b=NJgDbS6bRLJl5/waIFR3O7hKsk
	oQR3UFP0rW3qvGKM/igpIzGOZsXQJJVdTgzwydAXg6GdFtxrm5KygcHsEURr3A+jSo8bFSEm0TezL
	Rcb7joYfP+EDN1snyidrAkAU8pjPrp3rUvH68twVEvUky/z9gukriDDsUSFRdXPLndV1trqlKxfd1
	gEVykIFulKe1rMd8cIuqHiSUH9zFlghfhx331WWuF45+Xy6ocsgAx2/KrUyP/36Vw8GyWvUVBOGVl
	Zehxt0aVH9N/JqzBFnXggWPoSntDA13Do7YUfgtgKLPI9nrhoc9lgMqz139uFoHjuzNK5BEfJnCjx
	J8j8RqyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlspd-00030b-HF; Thu, 18 Jun 2020 11:35:45 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlspV-0002vL-Gj
 for linux-rockchip@lists.infradead.org; Thu, 18 Jun 2020 11:35:39 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id D91C12A4A86
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org,
	laurent.pinchart@ideasonboard.com
Subject: [PATCH v4 4/4] media: staging: rkisp1: rsz: set default format if the
 given format is not RKISP1_ISP_SD_SRC
Date: Thu, 18 Jun 2020 13:35:18 +0200
Message-Id: <20200618113518.30057-5-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618113518.30057-1-dafna.hirschfeld@collabora.com>
References: <20200618113518.30057-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_043537_691346_4252614D 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: mchehab@kernel.org, dafna.hirschfeld@collabora.com, dafna3@gmail.com,
 tfiga@chromium.org, hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, sakari.ailus@linux.intel.com, kernel@collabora.com,
 ezequiel@collabora.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

When setting the sink format of the 'rkisp1_resizer'
the format should be supported by 'rkisp1_isp' on
the video source pad. This patch checks this condition
and sets the format to default if the condition is false.

Fixes: 56e3b29f9f6b "media: staging: rkisp1: add streaming paths"

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Reviewed-by: Tomasz Figa <tfiga@chromium.org>
---
 drivers/staging/media/rkisp1/rkisp1-common.h  | 3 +++
 drivers/staging/media/rkisp1/rkisp1-isp.c     | 3 ---
 drivers/staging/media/rkisp1/rkisp1-resizer.c | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
index 0c4fe503adc9..12bd9d05050d 100644
--- a/drivers/staging/media/rkisp1/rkisp1-common.h
+++ b/drivers/staging/media/rkisp1/rkisp1-common.h
@@ -22,6 +22,9 @@
 #include "rkisp1-regs.h"
 #include "uapi/rkisp1-config.h"
 
+#define RKISP1_ISP_SD_SRC BIT(0)
+#define RKISP1_ISP_SD_SINK BIT(1)
+
 #define RKISP1_ISP_MAX_WIDTH		4032
 #define RKISP1_ISP_MAX_HEIGHT		3024
 #define RKISP1_ISP_MIN_WIDTH		32
diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
index abfedb604303..b21a67aea433 100644
--- a/drivers/staging/media/rkisp1/rkisp1-isp.c
+++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
@@ -23,9 +23,6 @@
 
 #define RKISP1_ISP_DEV_NAME	RKISP1_DRIVER_NAME "_isp"
 
-#define RKISP1_ISP_SD_SRC BIT(0)
-#define RKISP1_ISP_SD_SINK BIT(1)
-
 /*
  * NOTE: MIPI controller and input MUX are also configured in this file.
  * This is because ISP Subdev describes not only ISP submodule (input size,
diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
index d64c064bdb1d..137298b77341 100644
--- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
+++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
@@ -542,7 +542,7 @@ static void rkisp1_rsz_set_sink_fmt(struct rkisp1_resizer *rsz,
 					    which);
 	sink_fmt->code = format->code;
 	mbus_info = rkisp1_isp_mbus_info_get(sink_fmt->code);
-	if (!mbus_info) {
+	if (!mbus_info || !(mbus_info->direction & RKISP1_ISP_SD_SRC)) {
 		sink_fmt->code = RKISP1_DEF_FMT;
 		mbus_info = rkisp1_isp_mbus_info_get(sink_fmt->code);
 	}
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
