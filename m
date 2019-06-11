Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0853CFF0
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:57:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=76endxfWd/hP87t6bvfh9bnkFPwAiEvVAbBGWwAF6V8=; b=buz6Zk2cY0ykjc
	OnzzSdURiq/5V+G0Y8BZlqny+AxYGHa2XMIMsJ71S0T1kq5Fv+1y1zPsm5wiJsnOrYOpAPqzDPyal
	pZ8Zn6fVDGTRJ214Rn69iOqh2VVbHA1RJ7QVHQsU8bcYxtB7JqNiM7lC9J+3/3Ne1DlB4gLYIit4J
	9JzgK8+LPwttHGZvUsXBrBUERlVeTTHzFaYqRsqOiZwSwWGqoz1Xrj+a14blP9O3wPsfBpFiDzg9M
	mQlGEQQNmhOVdO8cgd0u8H/+vwU3FRXonjkZ7zqEMHNZPILsdnqmVlWO/amE/I0lRd3Us+/2MxxMW
	I7xrVKqiW3CH2JvGwAfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiD7-0000Ma-Fl; Tue, 11 Jun 2019 14:57:17 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiCu-0000AF-8P
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:57:05 +0000
Received: by mail-pf1-x443.google.com with SMTP id a186so7597416pfa.5
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:57:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3scj5tpu65v2n66++2cTbZLzQWWaAK5Y+ewcl6Aa8Eo=;
 b=Aa4i2TFy+Z/tzl2d3Lhy8K26F2hKH6de8AEl56FckY+HtN+89aoUQ/THA8cLU+JxLr
 bEwiFnOyuP2re2+QRH9b23H1kHenCQQUOZVMefYD+0R8XcEdgHMqQkP6vCuG7OBrLg6B
 sj/BQHLqy7ZNrS8PERpU1HYSiJLtUHwK9lji0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3scj5tpu65v2n66++2cTbZLzQWWaAK5Y+ewcl6Aa8Eo=;
 b=Yli8GFzDsRDu1W8F4ddXY4Az9wcsn4JfXWHqp7YFctyhTNJd/joknqfRCnfcTLyq3S
 becHprHou1/QFboQYpL5oJQmq2TAYULAbP2pV/xdmg57CA2fMNMje/OI0Vyks7PiR+bc
 jEpsSZvwWeoytNZp9x2fsQHwSyxrbbrTZN9bCirbQaZVCBeDILJYLx+lQxYZXJPeUWH6
 Ps9hEGzH0eJyQpcu8f05IpEeKA+hPkXj8bpTjZ8Nu4iguiUSisHOkXehFddlSPLqylcO
 fFwtM/YwGSMnPOXhY2aULvktlSNNZePCGpgRyshqMMAlF7QeaUw3wg9ShwZC3al6WMqS
 uh7A==
X-Gm-Message-State: APjAAAUMs9y6hYSIxUMD/NR7UnSKzHxbThNECsJwA5iRc0/B2kbVQNP3
 sLwjonE9U/9pthWuOe7AAwYkXQ==
X-Google-Smtp-Source: APXvYqyjZYz7ELLJAr4ifP0EqY/HplPaCtVfrBhZN3DZR9zsNZdX5uCR9g0v+AhTDboCpgCIefiNBg==
X-Received: by 2002:a63:1516:: with SMTP id v22mr21201453pgl.204.1560265023084; 
 Tue, 11 Jun 2019 07:57:03 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.56.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:57:02 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 79/92] arm: include: rockchip: Add rk3399 pmu file
Date: Tue, 11 Jun 2019 20:21:22 +0530
Message-Id: <20190611145135.21399-80-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075704_427879_3AA16E1F 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
