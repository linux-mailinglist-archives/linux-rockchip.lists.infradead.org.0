Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 411771D329E
	for <lists+linux-rockchip@lfdr.de>; Thu, 14 May 2020 16:21:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Zp8dqGrpRaE6YCUqCRkWXmwr2e7HTL3x7HGbVkrnSzM=; b=r1Qa/sZluNHCgE
	ildrrQiKnCg1civWoTh0qMsW327XwnfL02VeiiwZYqfyOa8nO43TwEYngA1FIHbQhF00YxgUD/tgs
	+tx+E5Z3XvCrzewpA1hDMJG7kaNu9fTc8YPHtUr6TcOQ4Lhi7TZWmFYpiQin/mawU5wPOhFrdjZSz
	2qgG8W0BQQbPciPaBkV5pfvBaXmWDnXoX+WMrFavGUgppe2WkF+on0nTdl3x8QZ8wAVOt6xPqEe2e
	gPmNwIW8le/W8kxl9V8ZwyjdYXnVjyVhaJ3fNeAh8v1aJJa+3BeQ5oFFWqQUX59HikCDLGoKq1jCF
	8L0aOjXtwrTyoR8zZmIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZEjg-0007Hb-Iz; Thu, 14 May 2020 14:21:20 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZEjd-0007G7-Fm
 for linux-rockchip@lists.infradead.org; Thu, 14 May 2020 14:21:19 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 8C4622A2EDD
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org, dafna.hirschfeld@collabora.com,
 helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl,
 kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com,
 linux-rockchip@lists.infradead.org, mchehab@kernel.org,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH] media: staging: rkisp1: set more precise size errors in
 debugfs
Date: Thu, 14 May 2020 16:21:02 +0200
Message-Id: <20200514142102.16111-1-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_072117_652398_206FDB0E 
X-CRM114-Status: UNSURE (   9.29  )
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

When a size error is signaled, it is possible to read a register
to see where the error comes from. So, in debugfs the general
error 'pic_size_err' can be replaced with 3 more precise errors.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-common.h | 4 +++-
 drivers/staging/media/rkisp1/rkisp1-dev.c    | 8 ++++++--
 drivers/staging/media/rkisp1/rkisp1-isp.c    | 7 ++++++-
 3 files changed, 15 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
index 0c4fe503adc9..95d54306bae6 100644
--- a/drivers/staging/media/rkisp1/rkisp1-common.h
+++ b/drivers/staging/media/rkisp1/rkisp1-common.h
@@ -226,7 +226,9 @@ struct rkisp1_resizer {
 struct rkisp1_debug {
 	struct dentry *debugfs_dir;
 	unsigned long data_loss;
-	unsigned long pic_size_error;
+	unsigned long outform_size_error;
+	unsigned long is_size_error;
+	unsigned long inform_size_error;
 	unsigned long mipi_error;
 	unsigned long stats_error;
 	unsigned long stop_timeout[2];
diff --git a/drivers/staging/media/rkisp1/rkisp1-dev.c b/drivers/staging/media/rkisp1/rkisp1-dev.c
index 9ac38bafb839..2298d3ae5950 100644
--- a/drivers/staging/media/rkisp1/rkisp1-dev.c
+++ b/drivers/staging/media/rkisp1/rkisp1-dev.c
@@ -438,8 +438,12 @@ static void rkisp1_debug_init(struct rkisp1_device *rkisp1)
 	}
 	debugfs_create_ulong("data_loss", 0444, debug->debugfs_dir,
 			     &debug->data_loss);
-	debugfs_create_ulong("pic_size_error", 0444,  debug->debugfs_dir,
-			     &debug->pic_size_error);
+	debugfs_create_ulong("outform_size_err", 0444,  debug->debugfs_dir,
+			     &debug->outform_size_error);
+	debugfs_create_ulong("is_size_error", 0444,  debug->debugfs_dir,
+			     &debug->is_size_error);
+	debugfs_create_ulong("inform_size_error", 0444,  debug->debugfs_dir,
+			     &debug->inform_size_error);
 	debugfs_create_ulong("mipi_error", 0444, debug->debugfs_dir,
 			     &debug->mipi_error);
 	debugfs_create_ulong("stats_error", 0444, debug->debugfs_dir,
diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
index dc2b59a0160a..a7e5461e25a5 100644
--- a/drivers/staging/media/rkisp1/rkisp1-isp.c
+++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
@@ -1123,8 +1123,13 @@ void rkisp1_isp_isr(struct rkisp1_device *rkisp1)
 	if (status & RKISP1_CIF_ISP_PIC_SIZE_ERROR) {
 		/* Clear pic_size_error */
 		isp_err = rkisp1_read(rkisp1, RKISP1_CIF_ISP_ERR);
+		if (isp_err & RKISP1_CIF_ISP_ERR_INFORM_SIZE)
+			rkisp1->debug.inform_size_error++;
+		if (isp_err & RKISP1_CIF_ISP_ERR_IS_SIZE)
+			rkisp1->debug.is_size_error++;
+		if (isp_err & RKISP1_CIF_ISP_ERR_OUTFORM_SIZE)
+			rkisp1->debug.outform_size_error++;
 		rkisp1_write(rkisp1, isp_err, RKISP1_CIF_ISP_ERR_CLR);
-		rkisp1->debug.pic_size_error++;
 	} else if (status & RKISP1_CIF_ISP_DATA_LOSS) {
 		/* keep track of data_loss in debugfs */
 		rkisp1->debug.data_loss++;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
