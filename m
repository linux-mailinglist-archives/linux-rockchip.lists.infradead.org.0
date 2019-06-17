Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBCC847B73
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:41:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=76endxfWd/hP87t6bvfh9bnkFPwAiEvVAbBGWwAF6V8=; b=THYJ8R714ZbSZD
	k9RQKLPz/s3JqaQm6VRScC2mognZd4cwC07vVKP8/QrfzicjOxzSqmFfYh76sMF9o8WEVpwsOuoiE
	ywGDbQmsQgK52mwQCDePJ7kG3tmHNQXVGIxHepTIoIRY7QfyQbW0iAPBQ6ywIwKr9+NsMiP2pglk+
	uQ2Q3Hn0bb1w4xlWQMRWT0x8DuWOP7UUxCTME5CKwWzXPJ0dwaLCOPm7UkL1Q0BUJAIeuDKllKaEV
	e2c0dFfO3jxX6U6TUtAbn/5RrJxgL2Ogux1qFHMt7eg5qnPiBb0wYY/eilcxW5j4qe0m4np+WtaiH
	bTRxN7ijxIcfTbpraWlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmGD-0001nr-TM; Mon, 17 Jun 2019 07:41:01 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmG8-0001kd-UM
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:40:58 +0000
Received: by mail-pf1-x443.google.com with SMTP id c85so5205540pfc.1
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:40:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3scj5tpu65v2n66++2cTbZLzQWWaAK5Y+ewcl6Aa8Eo=;
 b=E5TjqQptKaiDZU7Y7PuLnxpI9PSn6NOS2+GueAz5igqmNSDenlwqhYlO49Tqqv2ODG
 9XqftnE8PfjJlJSpFL0eF8y6zWjZ1LrA/IEf4qY5V7bTJj00L0nRonGbFcLuctaKNHX8
 G7MSABeCzM/Z7Lg4E6ArkRKAMkdL6VVBVJGvI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3scj5tpu65v2n66++2cTbZLzQWWaAK5Y+ewcl6Aa8Eo=;
 b=dzzSv1/3ItuQ2MGQksTGt8uHw1+obqpU0i7UEgvZjQAF0HwNeL7Gwb5DPgk678zb/Y
 NQZoBUPWClGYr2b+ldnqiDaz9kRATINVEeZf5hQNPCdKmyTxMtZa2nzDBT4k/lBe19A2
 unDgnhpdcOUf5EWW4+4j41Iu3LcJ9otIbtERpSJ9iHRm0T0mmHyRWM//nWTuUYhJMQpN
 +0B7Kgbc4hA1YUilhky0js0jffKyh39BPp1GhxBBoMKzAlgKEGJ13S0HNu9XDBY92B2v
 PB4P2S91KCdMb92fXzm2w23MACjacEzvwPoTTIkQ6pFU1zYL1Xh1Hfw0dlHJ2vPQBkcp
 pfhQ==
X-Gm-Message-State: APjAAAWM3H1Y81EOt2BT81qrrB74RNb3AmWnctLh3vlZ5x9fOBhZTKZc
 tBkMEH8eEhiAt+dMS9dfyyGhUg==
X-Google-Smtp-Source: APXvYqz/ZXE2q4c55juPsGQ+wHmSreuPKQyIVxDW9K35zDwdJuGsjBbFmFLEQ4ibJf/MRF3yLnpHrA==
X-Received: by 2002:a63:e502:: with SMTP id r2mr19502433pgh.261.1560757256451; 
 Mon, 17 Jun 2019 00:40:56 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.40.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:40:56 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 83/99] arm: include: rockchip: Add rk3399 pmu file
Date: Mon, 17 Jun 2019 13:02:36 +0530
Message-Id: <20190617073252.27810-84-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_004056_977559_4EED6B4C 
X-CRM114-Status: UNSURE (   9.77  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
