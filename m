Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96FE51CC267
	for <lists+linux-rockchip@lfdr.de>; Sat,  9 May 2020 17:29:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QmKCtDUkKQTs+TA3LxpSevOpASNGko42hsI0lntwU0E=; b=h3Kejtp5yetY9n9WZqewmo6irc
	R24EEQTy+obCjF6X7bVF6bEY+sP5JkjNICA1Up+noiDtkHm3tK/gJiWCeqdtGhC2V6vWzCpM8EqEq
	vt4iqzR3r3RcyDSOP7rO4EY1xSxAxg54a5bWSRKHmFc+b9Iiiz8DXiBSlQ2sj5NkQbJoXj0mmLBnb
	pPewOG/7tPbPKWCn6OhxJtxmx3xa4M9fBiO1yvk0Njhvw462whXjqaSk+T837It1Dq6zdnf7RL3qE
	IJRpYj1ytUzyo+fJ7zE8MmBorqII3rPdGJo1l2IZsWmLezzlVbnA86Fk4OJT/kOsH8e2UZcbDfuxG
	YiNdQuCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXRPs-0001qB-3q; Sat, 09 May 2020 15:29:28 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXRPo-0001pR-Ut
 for linux-rockchip@lists.infradead.org; Sat, 09 May 2020 15:29:26 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 645A0260E88
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 2/2] media: staging: rkisp1: stats: don't set stats flags in
 rkisp1_stats_send_measurement
Date: Sat,  9 May 2020 17:29:04 +0200
Message-Id: <20200509152904.26348-2-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200509152904.26348-1-dafna.hirschfeld@collabora.com>
References: <20200509152904.26348-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_082925_140323_3CFAB1C3 
X-CRM114-Status: UNSURE (   7.35  )
X-CRM114-Notice: Please train this message.
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
 hverkuil@xs4all.nl, helen.koike@collabora.com,
 laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com,
 kernel@collabora.com, ezequiel@collabora.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The flags that indicate which statistics are read are already
set in the functions that read them so there is no need to
set them in the function rkisp1_stats_send_measurement.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-stats.c | 13 +++----------
 1 file changed, 3 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-stats.c b/drivers/staging/media/rkisp1/rkisp1-stats.c
index 8351bda0be03..0616793ae395 100644
--- a/drivers/staging/media/rkisp1/rkisp1-stats.c
+++ b/drivers/staging/media/rkisp1/rkisp1-stats.c
@@ -356,26 +356,19 @@ rkisp1_stats_send_measurement(struct rkisp1_stats *stats,
 	cur_stat_buf =
 		(struct rkisp1_stat_buffer *)(cur_buf->vaddr[0]);
 
-	if (meas_work->isp_ris & RKISP1_CIF_ISP_AWB_DONE) {
+	if (meas_work->isp_ris & RKISP1_CIF_ISP_AWB_DONE)
 		rkisp1_stats_get_awb_meas(stats, cur_stat_buf);
-		cur_stat_buf->meas_type |= RKISP1_CIF_ISP_STAT_AWB;
-	}
 
-	if (meas_work->isp_ris & RKISP1_CIF_ISP_AFM_FIN) {
+	if (meas_work->isp_ris & RKISP1_CIF_ISP_AFM_FIN)
 		rkisp1_stats_get_afc_meas(stats, cur_stat_buf);
-		cur_stat_buf->meas_type |= RKISP1_CIF_ISP_STAT_AFM_FIN;
-	}
 
 	if (meas_work->isp_ris & RKISP1_CIF_ISP_EXP_END) {
 		rkisp1_stats_get_aec_meas(stats, cur_stat_buf);
 		rkisp1_stats_get_bls_meas(stats, cur_stat_buf);
-		cur_stat_buf->meas_type |= RKISP1_CIF_ISP_STAT_AUTOEXP;
 	}
 
-	if (meas_work->isp_ris & RKISP1_CIF_ISP_HIST_MEASURE_RDY) {
+	if (meas_work->isp_ris & RKISP1_CIF_ISP_HIST_MEASURE_RDY)
 		rkisp1_stats_get_hst_meas(stats, cur_stat_buf);
-		cur_stat_buf->meas_type |= RKISP1_CIF_ISP_STAT_HIST;
-	}
 
 	vb2_set_plane_payload(&cur_buf->vb.vb2_buf, 0,
 			      sizeof(struct rkisp1_stat_buffer));
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
