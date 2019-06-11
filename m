Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2333E3CFE7
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:57:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gqYqTh5Ym2jDp8Y1i/M7Jrk1ua4ohoKhd7Y9PJXPZw8=; b=f1v0MvT0zqs0gC
	nz05roMn5WnKHyXqRN+ptLz8HIqnnBlZBzizMzpBfpzW30ZFMIj8qxycJQK/MYAmX8zZlpF1FPi5j
	auzOhOYWOUtzhsUi9M1Iu1q2MolcZT7gQiz/WBUepJbQ0sPQKJ75QQd6OjUc5XHMT+Y4aeAQDkCRJ
	MmqPe4qBMPisJlxUgQdJ5Wwx/25JMVUhv4SkzYWbeRBJYH9xIjC2RBDnC/TFrWnK4cYByYw7kD1By
	y2S687m/YhQfKVTVHZpsP18ErkQ8FtQOyGzNu2SV7f+PUOjJk7/y91Tj0I871gb3M+Fi9uyPge3Gw
	R64AX0fKjETV/Kcn51YQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiCq-0008WS-Oq; Tue, 11 Jun 2019 14:57:00 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiCX-0008Gp-9f
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:56:42 +0000
Received: by mail-pg1-x543.google.com with SMTP id 196so7119750pgc.6
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:56:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5Ey+tXNUftUUYHSLf3pHnoBViCPgW7WVcaPO8JBuG00=;
 b=j6reQS1zzb6TbqhSPww8nF/zj5QwLp94l6A7ZK8cPME33r/2vC5O4iaLoq7kSPZIrn
 lc08TyvD/Yu1XfyMMDt0eMZKqdyV70G7fTZ6t1xjGbMYrc9Dhrq1ZepCpBb1/dqMTdub
 TJx2M3D1NnxkTBpoX7AIkHPzYd1N/Pr5OaC3k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5Ey+tXNUftUUYHSLf3pHnoBViCPgW7WVcaPO8JBuG00=;
 b=a/XB09iwR2XRiBI0RkZEiHWzWZtd/oznd6nk6rXAnHDa8VP74nRkUUL9SZJKxk6R3Z
 ZRZIorSeg5J3YIUVqwaFSzAs7b5XsazhxBT/nJf/B49kBUaD6+Gl8rknh0UtpMUStDQG
 D2x4AZ+AeWNaZHGbt70jCn80GUc05mAvQF08F9nOmHOCQ1oUuUVLh6I24STDIWE6waeE
 RWq6bdPW5w8FT3pUpf1fZKVenVqFiSkSGlVi9Y+YkTYuRoVM10qPbPBANco6HSvd+n8s
 vbjBTeceFkmIYKZIGAuq0kzIC+H6EJjJ6JHni24qEqO+Cp/8SXScUjoCpx5oXv6D67NL
 E1cg==
X-Gm-Message-State: APjAAAUFfBj6dNT0sL/OKt32+pUHCz0KTaCQqeQs08GoymmQw9LpzGEM
 /DONZ2zN+E3/H2OyUwok5y2mJCgtU9A=
X-Google-Smtp-Source: APXvYqxKqpFs9gAMqmyXOGDNhHLv1sjZRbv9n+nD+dtjf1ypGv+k70M6eL2l4/LBg3WC31QYB5CD1g==
X-Received: by 2002:aa7:956d:: with SMTP id x13mr41484908pfq.132.1560265000707; 
 Tue, 11 Jun 2019 07:56:40 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.56.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:56:40 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 73/92] ram: rk3399: Configure soc odt support
Date: Tue, 11 Jun 2019 20:21:16 +0530
Message-Id: <20190611145135.21399-74-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075641_332984_20A480B0 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, gajjar04akash@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

CTL 145, 146, 159, 160 registers are used to configure
soc odt on rk3399.

These soc odt values are updated from CS0_MR22_VAL and
CS1_MR22_VAL and for lpddr4 these values ORed with
tsel_rd_select_n.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 49 ++++++++++++++++++++++++++++-
 1 file changed, 48 insertions(+), 1 deletion(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 8eaa304e95..2ce9066d53 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -40,6 +40,8 @@
 #define PHY_SLEWP_EN		0x1
 #define PHY_SLEWN_EN		0x1
 #define PHY_RX_CM_INPUT		0x1
+#define CS0_MR22_VAL		0
+#define CS1_MR22_VAL		3
 
 #define CRU_SFTRST_DDR_CTRL(ch, n)	((0x1 << (8 + 16 + (ch) * 4)) | \
 					((n) << (8 + (ch) * 4)))
@@ -555,7 +557,7 @@ static void set_ds_odt(const struct chan_info *chan,
 		       const struct rk3399_sdram_params *sdram_params, u32 mr5)
 {
 	u32 *denali_phy = chan->publ->denali_phy;
-
+	u32 *denali_ctl = chan->pctl->denali_ctl;
 	u32 tsel_idle_en, tsel_wr_en, tsel_rd_en;
 	u32 tsel_idle_select_p, tsel_rd_select_p;
 	u32 tsel_idle_select_n, tsel_rd_select_n;
@@ -563,6 +565,7 @@ static void set_ds_odt(const struct chan_info *chan,
 	u32 tsel_wr_select_dq_n, tsel_wr_select_ca_n;
 	u32 tsel_ckcs_select_p, tsel_ckcs_select_n;
 	struct io_setting *io = NULL;
+	u32 soc_odt = 0;
 	u32 reg_value;
 
 	if (sdram_params->base.dramtype == LPDDR4) {
@@ -582,6 +585,35 @@ static void set_ds_odt(const struct chan_info *chan,
 
 		tsel_ckcs_select_p = io->wr_ckcs_drv;
 		tsel_ckcs_select_n = PHY_DRV_ODT_34_3;
+		switch (tsel_rd_select_n) {
+		case PHY_DRV_ODT_240:
+			soc_odt = 1;
+			break;
+		case PHY_DRV_ODT_120:
+			soc_odt = 2;
+			break;
+		case PHY_DRV_ODT_80:
+			soc_odt = 3;
+			break;
+		case PHY_DRV_ODT_60:
+			soc_odt = 4;
+			break;
+		case PHY_DRV_ODT_48:
+			soc_odt = 5;
+			break;
+		case PHY_DRV_ODT_40:
+			soc_odt = 6;
+			break;
+		case PHY_DRV_ODT_34_3:
+			soc_odt = 6;
+			printf("%s: Unable to support LPDDR4 MR22 Soc ODT\n",
+			       __func__);
+			break;
+		case PHY_DRV_ODT_HI_Z:
+		default:
+			soc_odt = 0;
+			break;
+		}
 	} else if (sdram_params->base.dramtype == LPDDR3) {
 		tsel_rd_select_p = PHY_DRV_ODT_240;
 		tsel_rd_select_n = PHY_DRV_ODT_HI_Z;
@@ -622,6 +654,21 @@ static void set_ds_odt(const struct chan_info *chan,
 	tsel_wr_en = 0;
 	tsel_idle_en = 0;
 
+	/* F0_0 */
+	clrsetbits_le32(&denali_ctl[145], 0xFF << 16,
+			(soc_odt | (CS0_MR22_VAL << 3)) << 16);
+	/* F2_0, F1_0 */
+	clrsetbits_le32(&denali_ctl[146], 0xFF00FF,
+			((soc_odt | (CS0_MR22_VAL << 3)) << 16) |
+			(soc_odt | (CS0_MR22_VAL << 3)));
+	/* F0_1 */
+	clrsetbits_le32(&denali_ctl[159], 0xFF << 16,
+			(soc_odt | (CS1_MR22_VAL << 3)) << 16);
+	/* F2_1, F1_1 */
+	clrsetbits_le32(&denali_ctl[160], 0xFF00FF,
+			((soc_odt | (CS1_MR22_VAL << 3)) << 16) |
+			(soc_odt | (CS1_MR22_VAL << 3)));
+
 	/*
 	 * phy_dq_tsel_select_X 24bits DENALI_PHY_6/134/262/390 offset_0
 	 * sets termination values for read/idle cycles and drive strength
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
