Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F17D41CC2EC
	for <lists+linux-rockchip@lfdr.de>; Sat,  9 May 2020 18:57:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eVos36IrbliUwp8FMLXmanGCf6t3Pu++oGFvmX3v5qQ=; b=JaSH7jW7sAXMaUbE75AMr1hoM8
	TSbeiW4r4ZDXntB5k2NUR9emrD70wrUL1OBChwYXJ5kjSbzjoJ3wQi0x3lgkjdoYb+hoHqjeVTyj0
	WcSq9vatJ/CorjU0eePO0w1ZiCU1SF8J9RlDS8c+6N8SvUPX04bGyeUfjajWy3vNO8BDcnu8mqQ08
	7xDVm2H8zul/ToH8DsP2XYQh/E2bfhLL3eSmSzyP6aVh9akhqV/UKAwBQl3OEeRLGavMmw/Yr2314
	RuSXQy54AGP5lYQSw/8yUOKGfQAFxyOKcS3+TXZKJqcZSYe3QAAov404NqfqxFq7QcPyFZJE/wdBE
	xFChQ5yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXSmb-00039M-9X; Sat, 09 May 2020 16:57:01 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXSmX-00036e-Um
 for linux-rockchip@lists.infradead.org; Sat, 09 May 2020 16:56:59 +0000
Received: by mail-pg1-x544.google.com with SMTP id q124so2378862pgq.13
 for <linux-rockchip@lists.infradead.org>; Sat, 09 May 2020 09:56:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Ii5Sn8J9fYkrnAk20hsnlM7A2tcOzMzExjTK6/tjUZE=;
 b=PHZowljK05cgKQPBV+wWex8kqoj/T/Ah1+m0VX2cT9fpSL37zP0HH42aDMm4GRc6Lx
 Pp84okKaKzEZQUc7Gt/l/ZCyHKXl0jjc1TRXaoMZItpg+kEj+LLW5AbQmcqKMojBALO1
 4yauRYB2oBW7jeIitd5NN9Z7N5twGBcEDiC6c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Ii5Sn8J9fYkrnAk20hsnlM7A2tcOzMzExjTK6/tjUZE=;
 b=Gfg5LZndPTsbhcvwqYhrj88ow6BGVx3bQKBGOc27wZbo7xja8bvwaIKixywte1sZlb
 ebX8aMNB8i8pSkOfpyLvJKeOJqgYQ7Q02BehGy2ENwI+88N8SDDyi2hkWavmLfkVMG7k
 YSoyATK9KOZOPPG7eHgNE8v4PW1XJEIrq98/PUTqFw84jQPMQkGtkBLb5MAD8XjFdBzT
 1ZTRZSzUavaNxbkVpY/gT8Ji+liksLFyCq/E3u5uA9brmZzqOtPLpcad37P7Be8iS94Z
 UuyNjB2Dyo6rjCOCIFRHdDlDBVpD3VHIXkFB5gBF9IBR/YBKTENWuaiXDqVTsxBoI8ke
 79Ew==
X-Gm-Message-State: AGi0PuZmH9RMMLp7dYYaWrH0G14cv55yk97pNZEIhewqc+gx7KETuLP5
 HReZQGtKpxAW0iKKJIGa0FVDPfxiMU4HCw==
X-Google-Smtp-Source: APiQypLGB0zapM5uOHoZilodSsRc4XHjz5gmLvp7H5J9JWnM67suKg+QK7Y+1LxK6pbiptqoAjFw3w==
X-Received: by 2002:a62:6385:: with SMTP id x127mr9026745pfb.276.1589043417095; 
 Sat, 09 May 2020 09:56:57 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:21f6:1c8f:ae94:fb04])
 by smtp.gmail.com with ESMTPSA id x195sm4977098pfc.0.2020.05.09.09.56.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 09 May 2020 09:56:56 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v3 5/6] rockchip: Enable PCIe/M.2 on rk3399 board w/ M.2
Date: Sat,  9 May 2020 22:26:23 +0530
Message-Id: <20200509165624.20791-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200509165624.20791-1-jagan@amarulasolutions.com>
References: <20200509165624.20791-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_095658_000566_85B56A20 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: patrick@blueri.se, u-boot@lists.denx.de, shawn.lin@rock-chips.com,
 linux-rockchip@lists.infradead.org, Jagan Teki <jagan@amarulasolutions.com>,
 sunil@amarulasolutions.com, linux-amarula@amarulasolutions.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Enable PCIe/M.2 support on
- NanoPC-T4
- ROC-RK3399-PC Mezzanine boards.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v3:
- none

 arch/arm/dts/rk3399-u-boot.dtsi           | 1 +
 configs/nanopc-t4-rk3399_defconfig        | 4 ++++
 configs/roc-pc-mezzanine-rk3399_defconfig | 4 ++++
 3 files changed, 9 insertions(+)

diff --git a/arch/arm/dts/rk3399-u-boot.dtsi b/arch/arm/dts/rk3399-u-boot.dtsi
index 9bb130a92a..d66d5b6a38 100644
--- a/arch/arm/dts/rk3399-u-boot.dtsi
+++ b/arch/arm/dts/rk3399-u-boot.dtsi
@@ -8,6 +8,7 @@
 	aliases {
 		mmc0 = &sdhci;
 		mmc1 = &sdmmc;
+		pci0 = &pcie0;
 	};
 
 	cic: syscon@ff620000 {
diff --git a/configs/nanopc-t4-rk3399_defconfig b/configs/nanopc-t4-rk3399_defconfig
index ae865908d8..3bb5b498f2 100644
--- a/configs/nanopc-t4-rk3399_defconfig
+++ b/configs/nanopc-t4-rk3399_defconfig
@@ -18,6 +18,7 @@ CONFIG_CMD_BOOTZ=y
 CONFIG_CMD_GPT=y
 CONFIG_CMD_MMC=y
 CONFIG_CMD_USB=y
+CONFIG_CMD_PCI=y
 # CONFIG_CMD_SETEXPR is not set
 CONFIG_CMD_TIME=y
 CONFIG_SPL_OF_CONTROL=y
@@ -34,10 +35,13 @@ CONFIG_MMC_SDHCI_ROCKCHIP=y
 CONFIG_DM_ETH=y
 CONFIG_ETH_DESIGNWARE=y
 CONFIG_GMAC_ROCKCHIP=y
+CONFIG_NVME=y
+CONFIG_PCI=y
 CONFIG_PMIC_RK8XX=y
 CONFIG_REGULATOR_PWM=y
 CONFIG_REGULATOR_RK8XX=y
 CONFIG_PWM_ROCKCHIP=y
+CONFIG_DM_RESET=y
 CONFIG_BAUDRATE=1500000
 CONFIG_DEBUG_UART_SHIFT=2
 CONFIG_SYSRESET=y
diff --git a/configs/roc-pc-mezzanine-rk3399_defconfig b/configs/roc-pc-mezzanine-rk3399_defconfig
index 5a694edc03..0b853805f3 100644
--- a/configs/roc-pc-mezzanine-rk3399_defconfig
+++ b/configs/roc-pc-mezzanine-rk3399_defconfig
@@ -19,6 +19,7 @@ CONFIG_CMD_BOOTZ=y
 CONFIG_CMD_GPT=y
 CONFIG_CMD_MMC=y
 CONFIG_CMD_USB=y
+CONFIG_CMD_PCI=y
 # CONFIG_CMD_SETEXPR is not set
 CONFIG_CMD_TIME=y
 CONFIG_SPL_OF_CONTROL=y
@@ -36,11 +37,14 @@ CONFIG_SPI_FLASH_WINBOND=y
 CONFIG_DM_ETH=y
 CONFIG_ETH_DESIGNWARE=y
 CONFIG_GMAC_ROCKCHIP=y
+CONFIG_NVME=y
+CONFIG_PCI=y
 CONFIG_PMIC_RK8XX=y
 CONFIG_REGULATOR_PWM=y
 CONFIG_REGULATOR_RK8XX=y
 CONFIG_PWM_ROCKCHIP=y
 CONFIG_RAM_RK3399_LPDDR4=y
+CONFIG_DM_RESET=y
 CONFIG_BAUDRATE=1500000
 CONFIG_DEBUG_UART_SHIFT=2
 CONFIG_ROCKCHIP_SPI=y
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
