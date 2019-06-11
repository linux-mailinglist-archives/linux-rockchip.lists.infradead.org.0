Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F1763CF94
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:54:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T6ooE5vPKEcNQ1R5iezMq/PxtoDFn4QsFRWSSVhgq1c=; b=sRuFGO90KGg5xo
	ZP/ZvPg3bNeJS8t4L3OKjKGbS3gLZL6kxvzy/LWGzUuxZPIGgUJfJipZ+Zm5aubFd2Q0qpfA8BmvN
	+524aHx2JQX3Y+tkjlbdlVg/nNjk/nJx4CmiXz+hJ6he0QdzFxiXE599qCvRGOYAVEo33AtzzlG1V
	4v2Kca//8nugW+RvMvVcjQYYzJcEBg8q0BslH1bOLtBqIj2ZZR/XnANdv7+Ee0WqIg6xCLllW5SF3
	LC0iYVdcIkXGuFV8HOglulZXIEPBvxx0KVALQnWNQbvRpNqi1If6FQybWOjKHmV+CFURjuiwh7HGH
	WPCf980ioPzj9JaVRsxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hai9v-00059J-5C; Tue, 11 Jun 2019 14:53:59 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hai9r-00057L-Gs
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:53:56 +0000
Received: by mail-pg1-x544.google.com with SMTP id f25so7103891pgv.10
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:53:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Vq2oI+3vMUMkg0n1XXuFvNc3vyzrVc/D6owKjBX1t4g=;
 b=jl1WRHH2HKGT3KTDigMBc6mdpZFY9R4qaxLGPRjFqiwI4+dru0Vehtkex9T9p5JbCd
 LRfAzW/zxpUGOIyTFHEO/JtHKDRzecp3RvPY8haaEx0harcbb0mgX+QEsrsTSI/NotTn
 3jWEpKNCRJkK2Bj7dAi/n2lV54GnF7CR5KQU0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Vq2oI+3vMUMkg0n1XXuFvNc3vyzrVc/D6owKjBX1t4g=;
 b=Pec6KNRfIYIHeWnAKGiO9QysPwmmfHWJzKdFnO8oDgfDdI/NyYJcmdFUZTyVvcmylo
 +WXBYZiNY3xZtWfkWkHK95qkXZhTnDahdZ9LsTiDtCK+60/ZfGZeIWVLaS3TcSbqF6fL
 eI3PeeMsj2K3ks/WcvBExhoJpXcrkq4IzSS3L3MC75/c9WuRehvLOmx7YVRkFAQz/NKh
 jmdEMRWKCyIYMz6OSpGtyM8YxF4gvg8bgNjMxInQjS9+iArVEoK3ZfsjR9Nly4oxaVDT
 O8atCULHMJlbYvJanJ0QAAEdWXalI9A1pGbGe+cOM9fBxbBHGditVrg3VmgN43t4pFBf
 FHLQ==
X-Gm-Message-State: APjAAAVG2jTNvKU5fH8yqcjMU7bXV76jeTFeymgDtp3R9ER7MKg2uw0F
 MOMgJYonUOEIKXHbnJbcbDtB2w==
X-Google-Smtp-Source: APXvYqwq1L9EuxxW0dNWzHadMSldjCMaQ8fw0phMMVozqqhNI58K+zamMktr54IMdBpCMDNN//A46g==
X-Received: by 2002:a62:e815:: with SMTP id c21mr38798237pfi.244.1560264835030; 
 Tue, 11 Jun 2019 07:53:55 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.53.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:53:54 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 31/92] ram: rk3399: s/ca_tsel_wr_select_n/tsel_wr_select_ca_n
Date: Tue, 11 Jun 2019 20:20:34 +0530
Message-Id: <20190611145135.21399-32-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075355_620298_E0E40577 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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

Rename ca_tsel_wr_select_n to tsel_wr_select_ca_n based
on the bsp code and associated datasheet.

No functionality change.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 780b18fa17..bfae4e78a9 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -161,7 +161,7 @@ static void set_ds_odt(const struct chan_info *chan,
 
 	u32 tsel_idle_en, tsel_wr_en, tsel_rd_en;
 	u32 tsel_idle_select_p, tsel_wr_select_dq_p, tsel_rd_select_p;
-	u32 ca_tsel_wr_select_p, ca_tsel_wr_select_n;
+	u32 ca_tsel_wr_select_p, tsel_wr_select_ca_n;
 	u32 tsel_idle_select_n, tsel_wr_select_dq_n, tsel_rd_select_n;
 	u32 reg_value;
 
@@ -173,7 +173,7 @@ static void set_ds_odt(const struct chan_info *chan,
 
 		tsel_rd_select_n = PHY_DRV_ODT_240;
 		tsel_wr_select_dq_n = PHY_DRV_ODT_40;
-		ca_tsel_wr_select_n = PHY_DRV_ODT_40;
+		tsel_wr_select_ca_n = PHY_DRV_ODT_40;
 		tsel_idle_select_n = PHY_DRV_ODT_240;
 	} else if (sdram_params->base.dramtype == LPDDR3) {
 		tsel_rd_select_p = PHY_DRV_ODT_240;
@@ -183,7 +183,7 @@ static void set_ds_odt(const struct chan_info *chan,
 
 		tsel_rd_select_n = PHY_DRV_ODT_HI_Z;
 		tsel_wr_select_dq_n = PHY_DRV_ODT_34_3;
-		ca_tsel_wr_select_n = PHY_DRV_ODT_48;
+		tsel_wr_select_ca_n = PHY_DRV_ODT_48;
 		tsel_idle_select_n = PHY_DRV_ODT_HI_Z;
 	} else {
 		tsel_rd_select_p = PHY_DRV_ODT_240;
@@ -193,7 +193,7 @@ static void set_ds_odt(const struct chan_info *chan,
 
 		tsel_rd_select_n = PHY_DRV_ODT_240;
 		tsel_wr_select_dq_n = PHY_DRV_ODT_34_3;
-		ca_tsel_wr_select_n = PHY_DRV_ODT_34_3;
+		tsel_wr_select_ca_n = PHY_DRV_ODT_34_3;
 		tsel_idle_select_n = PHY_DRV_ODT_240;
 	}
 
@@ -229,7 +229,7 @@ static void set_ds_odt(const struct chan_info *chan,
 	clrsetbits_le32(&denali_phy[391], 0xffffff, reg_value);
 
 	/* phy_adr_tsel_select_ 8bits DENALI_PHY_544/672/800 offset_0 */
-	reg_value = ca_tsel_wr_select_n | (ca_tsel_wr_select_p << 0x4);
+	reg_value = tsel_wr_select_ca_n | (ca_tsel_wr_select_p << 0x4);
 	clrsetbits_le32(&denali_phy[544], 0xff, reg_value);
 	clrsetbits_le32(&denali_phy[672], 0xff, reg_value);
 	clrsetbits_le32(&denali_phy[800], 0xff, reg_value);
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
