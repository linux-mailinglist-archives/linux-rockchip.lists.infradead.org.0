Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEA0C1E7F96
	for <lists+linux-rockchip@lfdr.de>; Fri, 29 May 2020 16:04:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Gb2BC/8VmBCklLM3v6HBaO6n+puA59hyu726Zvpvgmg=; b=hR3
	dikKPu0cBJAkOnN4pNG5CTmiJA9SdBB2SsK4kP5byel2k99hDnsAKFGJeUeS/Dy5XkdVIc0oYqlwN
	AN7wuu0Bw7Di+CVvrurB6p2FHLUGzOVKlMDpyBEzM39F5sngDZX4NR+0fz1iIwrgu1B8memQn9qNm
	liB+KW+qhqP8AnkU6LCW03X0Tq2Gp4d41KlGZFyZaxbjnd4woJb0w+5btFB7cMC3uidNCfmbkju8c
	6KtSEfdkKRQVqlk9aISoIoZJslcfnfw5EIDNn08ijOFh8xCgsvCq2T9PQVesRKB+TVF2V//95aIn/
	HudEvk67rAvqZoOgv3Eu7PDH3grQfBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jefcH-0007AO-9Q; Fri, 29 May 2020 14:04:09 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jefcD-000779-Qa
 for linux-rockchip@lists.infradead.org; Fri, 29 May 2020 14:04:07 +0000
Received: from localhost.localdomain
 (p200300cb871f5b005488ffc16399a6c0.dip0.t-ipconnect.de
 [IPv6:2003:cb:871f:5b00:5488:ffc1:6399:a6c0])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id A8F552A45B0;
 Fri, 29 May 2020 15:04:02 +0100 (BST)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org,
	laurent.pinchart@ideasonboard.com
Subject: [PATCH v2] media: staging: rkisp1: set more precise size errors in
 debugfs
Date: Fri, 29 May 2020 16:03:51 +0200
Message-Id: <20200529140351.18632-1-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_070405_997034_2BB4769D 
X-CRM114-Status: GOOD (  11.07  )
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
Cc: mchehab@kernel.org, dafna.hirschfeld@collabora.com, dafna3@gmail.com,
 tfiga@chromium.org, hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, sakari.ailus@linux.intel.com, kernel@collabora.com,
 ezequiel@collabora.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

When a size error is signaled, it is possible to read a register
to see where the error comes from. So, in debugfs the general
error 'pic_size_err' can be replaced with 3 more precise errors.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Acked-by: Helen Koike <helen.koike@collabora.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
changes from v2: rename the variable 'is_size_error' to 'img_stabilization_size_error'

 drivers/staging/media/rkisp1/rkisp1-common.h | 4 +++-
 drivers/staging/media/rkisp1/rkisp1-dev.c    | 9 +++++++--
 drivers/staging/media/rkisp1/rkisp1-isp.c    | 7 ++++++-
 3 files changed, 16 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
index 0c4fe503adc9..d20f79ea55e4 100644
--- a/drivers/staging/media/rkisp1/rkisp1-common.h
+++ b/drivers/staging/media/rkisp1/rkisp1-common.h
@@ -226,7 +226,9 @@ struct rkisp1_resizer {
 struct rkisp1_debug {
 	struct dentry *debugfs_dir;
 	unsigned long data_loss;
-	unsigned long pic_size_error;
+	unsigned long outform_size_error;
+	unsigned long img_stabilization_size_error;
+	unsigned long inform_size_error;
 	unsigned long mipi_error;
 	unsigned long stats_error;
 	unsigned long stop_timeout[2];
diff --git a/drivers/staging/media/rkisp1/rkisp1-dev.c b/drivers/staging/media/rkisp1/rkisp1-dev.c
index 9ac38bafb839..a51459ec3fd5 100644
--- a/drivers/staging/media/rkisp1/rkisp1-dev.c
+++ b/drivers/staging/media/rkisp1/rkisp1-dev.c
@@ -438,8 +438,13 @@ static void rkisp1_debug_init(struct rkisp1_device *rkisp1)
 	}
 	debugfs_create_ulong("data_loss", 0444, debug->debugfs_dir,
 			     &debug->data_loss);
-	debugfs_create_ulong("pic_size_error", 0444,  debug->debugfs_dir,
-			     &debug->pic_size_error);
+	debugfs_create_ulong("outform_size_err", 0444,  debug->debugfs_dir,
+			     &debug->outform_size_error);
+	debugfs_create_ulong("img_stabilization_size_error", 0444,
+			     debug->debugfs_dir,
+			     &debug->img_stabilization_size_error);
+	debugfs_create_ulong("inform_size_error", 0444,  debug->debugfs_dir,
+			     &debug->inform_size_error);
 	debugfs_create_ulong("mipi_error", 0444, debug->debugfs_dir,
 			     &debug->mipi_error);
 	debugfs_create_ulong("stats_error", 0444, debug->debugfs_dir,
diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
index dc2b59a0160a..6543f7fd2392 100644
--- a/drivers/staging/media/rkisp1/rkisp1-isp.c
+++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
@@ -1123,8 +1123,13 @@ void rkisp1_isp_isr(struct rkisp1_device *rkisp1)
 	if (status & RKISP1_CIF_ISP_PIC_SIZE_ERROR) {
 		/* Clear pic_size_error */
 		isp_err = rkisp1_read(rkisp1, RKISP1_CIF_ISP_ERR);
+		if (isp_err & RKISP1_CIF_ISP_ERR_INFORM_SIZE)
+			rkisp1->debug.inform_size_error++;
+		if (isp_err & RKISP1_CIF_ISP_ERR_IS_SIZE)
+			rkisp1->debug.img_stabilization_size_error++;
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
