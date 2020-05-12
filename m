Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 201521CF400
	for <lists+linux-rockchip@lfdr.de>; Tue, 12 May 2020 14:06:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=trABPYZdB/W4XqVHo1W7tJ6IoyUIHbhZxbcSKSKZkUM=; b=RlrzgfivdhcpKOgX+42PTpjfSa
	iXUxaTrBCZM6t9UO79ZGjRSQDjzS+Xs8ZEBv99fvXL7eCPl/Yy2hkEX+1kF3gNPN6/FbMN07tELjz
	ui3D+c17i9mJwjnPfFhvUB52/7Wb3pcK/Rl5A4+REQ4doq7FpZ3gTpMiNG2JKY1nz86Qil1yXBKCr
	IE556B2Bld7ZC8ed0Ep5EJam1IDMfwapdLcaPNLaYgPAQogMsq/z/pA5jhLu+IUyOhoiLpvKvxSrq
	gAgPj2pNWKHZtsRNrQelJo4/ZTSn5VKFPW0BrLJpqeYjmHAHulyh/3zkrVI0QZWs0Zc9DE1kViJNS
	yzlftx6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYTfu-0004RV-Un; Tue, 12 May 2020 12:06:18 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYTfn-0004Of-6U
 for linux-rockchip@lists.infradead.org; Tue, 12 May 2020 12:06:16 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 6E0EC2A20CA
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 2/5] media: staging: rkisp1: use a macro for the statistics
 flags mask
Date: Tue, 12 May 2020 14:05:19 +0200
Message-Id: <20200512120522.25960-3-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512120522.25960-1-dafna.hirschfeld@collabora.com>
References: <20200512120522.25960-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_050611_367352_1B189749 
X-CRM114-Status: UNSURE (   9.26  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The mask of the ready statistics flags is used in
several places in the code using bitwise-or.
Use a macro for that to make the code more readable.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-common.h |  4 ++++
 drivers/staging/media/rkisp1/rkisp1-isp.c    |  5 +----
 drivers/staging/media/rkisp1/rkisp1-stats.c  | 12 +++---------
 3 files changed, 8 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
index 33dffe21c769..c0ab16c6b3db 100644
--- a/drivers/staging/media/rkisp1/rkisp1-common.h
+++ b/drivers/staging/media/rkisp1/rkisp1-common.h
@@ -42,6 +42,10 @@
 
 #define RKISP1_MAX_BUS_CLK	8
 
+#define RKISP1_STATS_MEAS_MASK		(RKISP1_CIF_ISP_AWB_DONE |	\
+					 RKISP1_CIF_ISP_AFM_FIN |	\
+					 RKISP1_CIF_ISP_EXP_END |	\
+					 RKISP1_CIF_ISP_HIST_MEASURE_RDY)
 enum rkisp1_rsz_pad {
 	RKISP1_RSZ_PAD_SINK,
 	RKISP1_RSZ_PAD_SRC,
diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
index 19ab0ed323aa..49b47e1734b0 100644
--- a/drivers/staging/media/rkisp1/rkisp1-isp.c
+++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
@@ -1137,10 +1137,7 @@ irqreturn_t rkisp1_isp_isr(struct rkisp1_device *rkisp1)
 
 		/* New frame from the sensor received */
 		isp_ris = rkisp1_read(rkisp1, RKISP1_CIF_ISP_RIS);
-		if (isp_ris & (RKISP1_CIF_ISP_AWB_DONE |
-			       RKISP1_CIF_ISP_AFM_FIN |
-			       RKISP1_CIF_ISP_EXP_END |
-			       RKISP1_CIF_ISP_HIST_MEASURE_RDY))
+		if (isp_ris & RKISP1_STATS_MEAS_MASK)
 			rkisp1_stats_isr(&rkisp1->stats, isp_ris);
 	}
 
diff --git a/drivers/staging/media/rkisp1/rkisp1-stats.c b/drivers/staging/media/rkisp1/rkisp1-stats.c
index 6dfcbdc3deb8..12998db955e6 100644
--- a/drivers/staging/media/rkisp1/rkisp1-stats.c
+++ b/drivers/staging/media/rkisp1/rkisp1-stats.c
@@ -407,22 +407,16 @@ void rkisp1_stats_isr(struct rkisp1_stats *stats, u32 isp_ris)
 
 	spin_lock(&stats->irq_lock);
 
-	val = RKISP1_CIF_ISP_AWB_DONE | RKISP1_CIF_ISP_AFM_FIN |
-	      RKISP1_CIF_ISP_EXP_END | RKISP1_CIF_ISP_HIST_MEASURE_RDY;
+	val = RKISP1_STATS_MEAS_MASK;
 	rkisp1_write(rkisp1, val, RKISP1_CIF_ISP_ICR);
 
 	isp_mis_tmp = rkisp1_read(rkisp1, RKISP1_CIF_ISP_MIS);
-	if (isp_mis_tmp &
-	    (RKISP1_CIF_ISP_AWB_DONE | RKISP1_CIF_ISP_AFM_FIN |
-	     RKISP1_CIF_ISP_EXP_END | RKISP1_CIF_ISP_HIST_MEASURE_RDY))
+	if (isp_mis_tmp & RKISP1_STATS_MEAS_MASK)
 		rkisp1->debug.stats_error++;
 
 	if (!stats->is_streaming)
 		goto unlock;
-	if (isp_ris & (RKISP1_CIF_ISP_AWB_DONE |
-		       RKISP1_CIF_ISP_AFM_FIN |
-		       RKISP1_CIF_ISP_EXP_END |
-		       RKISP1_CIF_ISP_HIST_MEASURE_RDY)) {
+	if (isp_ris & RKISP1_STATS_MEAS_MASK) {
 		work = kzalloc(sizeof(*work), GFP_ATOMIC);
 		if (work) {
 			INIT_WORK(&work->work,
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
