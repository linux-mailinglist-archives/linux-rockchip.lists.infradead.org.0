Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FC556A816
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:02:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=76endxfWd/hP87t6bvfh9bnkFPwAiEvVAbBGWwAF6V8=; b=MJMNFg4WznnDN0
	tr2XABUSMHBwhRzpR02TptfONfmKdNReAZfMjdHYJklrMqIJLu6SGZItE7qLTpuRfkEdHgPs0UETg
	WRZCLytVkNKtlqiZ+YUsIfOaIQW+hmlvhbmL82GAR5acu9DMAFCzWoxv/VNxhAYmaDnf8fYFINjUS
	eDSA9f3fpQPMKWobeJeSrxqKTv9HkW5aILAYWldbXO2b6elAfH9toXRV7UeU9B2tysA2oboqFGQ/7
	yPmrG94k246JrYNkKC6oM6/kjmuh/klocX37obIMCEkZVhpN8XcLVacT5xbf5OOcSdtZlMNgTF6iS
	dBNBUPz7A7+vQREVSKfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnMA8-0008RR-Uh; Tue, 16 Jul 2019 12:02:29 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM8I-0006jb-Ic
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 12:00:36 +0000
Received: by mail-pg1-x542.google.com with SMTP id o13so9321238pgp.12
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 05:00:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3scj5tpu65v2n66++2cTbZLzQWWaAK5Y+ewcl6Aa8Eo=;
 b=INi12PAPn0SwjXtqbFxY1GyAm6jWoQGMm71Cglu9MLnpWaxmDSsW0hkOZ1DBI2vLNj
 2eSKjMP7C5G7t7B68PNqNpw4u76FmaZpJPzMpNOhMFPj5cjuUqW4SqIu1HMQngqXvlNb
 7E0/Lusxjl4rBD/Nr859grPP5W2sdjV48+A6w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3scj5tpu65v2n66++2cTbZLzQWWaAK5Y+ewcl6Aa8Eo=;
 b=BdA9dj8YZjLx6lXAGtFgorJUhiNm2CXAwnGjcUzas1j00hAUVoJofPoi7ohWoAqxBq
 sSGonE+cUA2owMdmXIym2JIiPpqgBHaPQZqNpD36DL0w9TH1vD+lVq5njtiCQ/QMmOdq
 qogrEwH3kPuHJlLATS498STOouvp8hzWBOA9C25T0NVRf9P6lqb8JFoCRjHN+Ta8gZ9g
 wGz02uKRnAgeV17hulTwTt0s+8HJxi+2mfrJGU5I+KxWj/HFSFL6Yv1cIXPhZTtHcNsf
 Mvb+Bn0hj7iR6g0C8Rm+aWn2XomEAbMZOIXUbOpkZh2H/PgKHmhNMB4ZIiYdgW8ozA8f
 05QA==
X-Gm-Message-State: APjAAAXa/D4eLS7/LKTffEg/sGrQJoAEvk5VCfwsPzGbTkTMlhUo+rED
 0stwrB0fqkqELNTegPepBANmbg==
X-Google-Smtp-Source: APXvYqxJLQUd0DZtHRXWZYRWb1wVAkulv2TR5WdRBzqOTfDMgyyaf26FgIjoWGgsjUQlmthhN3N+IQ==
X-Received: by 2002:a63:5765:: with SMTP id h37mr1332189pgm.183.1563278433373; 
 Tue, 16 Jul 2019 05:00:33 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.05.00.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 05:00:33 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 44/57] arm: include: rockchip: Add rk3399 pmu file
Date: Tue, 16 Jul 2019 17:27:32 +0530
Message-Id: <20190716115745.12585-45-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_050034_680094_A2A532B6 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add pmu header file for rk3399 SoC, this will help
to configure pmu in sdram driver.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 .../include/asm/arch-rockchip/pmu_rk3399.h    | 72 +++++++++++++++++++
 1 file changed, 72 insertions(+)
 create mode 100644 arch/arm/include/asm/arch-rockchip/pmu_rk3399.h

diff --git a/arch/arm/include/asm/arch-rockchip/pmu_rk3399.h b/arch/arm/include/asm/arch-rockchip/pmu_rk3399.h
new file mode 100644
index 0000000000..f1096dccce
--- /dev/null
+++ b/arch/arm/include/asm/arch-rockchip/pmu_rk3399.h
@@ -0,0 +1,72 @@
+/* SPDX-License-Identifier:     GPL-2.0+ */
+/*
+ * (C) Copyright 2018 Rockchip Electronics Co., Ltd.
+ *
+ */
+
+#ifndef __SOC_ROCKCHIP_RK3399_PMU_H__
+#define __SOC_ROCKCHIP_RK3399_PMU_H__
+
+struct rk3399_pmu_regs {
+	u32 pmu_wakeup_cfg[5];
+	u32 pmu_pwrdn_con;
+	u32 pmu_pwrdn_st;
+	u32 pmu_pll_con;
+	u32 pmu_pwrmode_con;
+	u32 pmu_sft_con;
+	u32 pmu_int_con;
+	u32 pmu_int_st;
+	u32 pmu_gpio0_pos_int_con;
+	u32 pmu_gpio0_net_int_con;
+	u32 pmu_gpio1_pos_int_con;
+	u32 pmu_gpio1_net_int_con;
+	u32 pmu_gpio0_pos_int_st;
+	u32 pmu_gpio0_net_int_st;
+	u32 pmu_gpio1_pos_int_st;
+	u32 pmu_gpio1_net_int_st;
+	u32 pmu_pwrdn_inten;
+	u32 pmu_pwrdn_status;
+	u32 pmu_wakeup_status;
+	u32 pmu_bus_clr;
+	u32 pmu_bus_idle_req;
+	u32 pmu_bus_idle_st;
+	u32 pmu_bus_idle_ack;
+	u32 pmu_cci500_con;
+	u32 pmu_adb400_con;
+	u32 pmu_adb400_st;
+	u32 pmu_power_st;
+	u32 pmu_core_pwr_st;
+	u32 pmu_osc_cnt;
+	u32 pmu_plllock_cnt;
+	u32 pmu_pllrst_cnt;
+	u32 pmu_stable_cnt;
+	u32 pmu_ddrio_pwron_cnt;
+	u32 pmu_wakeup_rst_clr_cnt;
+	u32 pmu_ddr_sref_st;
+	u32 pmu_scu_l_pwrdn_cnt;
+	u32 pmu_scu_l_pwrup_cnt;
+	u32 pmu_scu_b_pwrdn_cnt;
+	u32 pmu_scu_b_pwrup_cnt;
+	u32 pmu_gpu_pwrdn_cnt;
+	u32 pmu_gpu_pwrup_cnt;
+	u32 pmu_center_pwrdn_cnt;
+	u32 pmu_center_pwrup_cnt;
+	u32 pmu_timeout_cnt;
+	u32 pmu_cpu0apm_con;
+	u32 pmu_cpu1apm_con;
+	u32 pmu_cpu2apm_con;
+	u32 pmu_cpu3apm_con;
+	u32 pmu_cpu0bpm_con;
+	u32 pmu_cpu1bpm_con;
+	u32 pmu_noc_auto_ena;
+	u32 pmu_pwrdn_con1;
+	u32 reserved0[0x4];
+	u32 pmu_sys_reg_reg0;
+	u32 pmu_sys_reg_reg1;
+	u32 pmu_sys_reg_reg2;
+	u32 pmu_sys_reg_reg3;
+};
+
+check_member(rk3399_pmu_regs, pmu_sys_reg_reg3, 0xfc);
+
+#endif	/* __SOC_ROCKCHIP_RK3399_PMU_H__ */
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
