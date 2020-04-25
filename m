Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A3E1B85ED
	for <lists+linux-rockchip@lfdr.de>; Sat, 25 Apr 2020 13:04:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+2ytHdgbfgpvvNNP4Q80RGqmRqot/WMCk4bULt+q8+c=; b=H5z1UilefswraOi5REpCSiPgKQ
	UdRKA1g572vVwflWZe+aWtHdTsegRYkOKiTs4daa9LUHO0MZamuwVUs/kju39Jb+SlMNXuuXbKmlX
	JW3PsUV4XG+jXBynrODlKbb+ln1NgH5v4IWt/tEMIJKFSBuwDNMyd1wVFaZ8sys6O8TVj2Lm/E3WW
	DLN3sucNQZin+pbdaNLSqoh2Wlvc354TcOUIQtVrCaxtpgu4OsXV3aKAD9A7p6ng2rfO2me6s5C7J
	rFWGkqOhy+zv6AC27UVDFQwb36+I2qf4+Kir6R+mkVOiPmkDUjBQrE1PVaPBJBVppcEkJ1/cvc0WF
	RkL4ZfHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSIbu-0006TY-9N; Sat, 25 Apr 2020 11:04:38 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSIbq-0006Qk-Hh
 for linux-rockchip@lists.infradead.org; Sat, 25 Apr 2020 11:04:35 +0000
Received: by mail-pf1-x442.google.com with SMTP id x15so6130417pfa.1
 for <linux-rockchip@lists.infradead.org>; Sat, 25 Apr 2020 04:04:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=6gYgLijV3LtEDXmDCnnHOndc5g0iNuTtmUjrvfApMLY=;
 b=ktWRb5KMLwC1NJ6ICMA5OFpleBxlWRmQUIDWbv/i6liBN7Da2vfctqRGV5Dg6fZUFY
 k97WQrv5WcOdP42eEagN5qijLK+4plFTDKorkzPZY2lGk1VPjQWxpOqwcn0ne37+H374
 n0wdAK6H/KJi9wer3KAqw29EdI+OdaEVlZiOo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=6gYgLijV3LtEDXmDCnnHOndc5g0iNuTtmUjrvfApMLY=;
 b=Csn+HOKj82k8EfAg2u6jnyPYAqe30yMcJEBUY1EqS7Dog/z2ACaRODB8EN8lh86Fgi
 yoj1BhwRWqSY9IDrJKxLRPSvWX4HCxyebQZC9jNVABOiIs4jHeunh6DbydPfr06HHaC2
 P3sEBTVojJdx5Dx3v8ihbSCiebqvfCtF+vX6zdHbEuXZKonL509Pr7yxqfy3sVHGp8GH
 fpS7ZrbAfILaqU/2uUiSu38OACo2XREjAk2lEteHyx7ugkHSa6MDLqBb38qtf8QaMBa5
 lwzBG9XdO03Ouc0aw+R8n96WUgYYg2kZEuZ31wS9YzZIunc7ESFA0dTiQK73DMOHDb/M
 Hasg==
X-Gm-Message-State: AGi0PuYkK2r2bfENghZH0/OwWgmUqOHfhfv26M2mQa97mEsRd1+Q/iSJ
 adKa1xMFNz1YdZBwwKJf8pDyPA==
X-Google-Smtp-Source: APiQypLlLF0098phQ3StCU/qkKCZpc3e99zaYAfGxL1wlJvUw0refKRIN+1xoTzookDUcTF8hYWnKQ==
X-Received: by 2002:a62:76c3:: with SMTP id
 r186mr14347430pfc.190.1587812673908; 
 Sat, 25 Apr 2020 04:04:33 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:1d46:fa69:c34:93dc])
 by smtp.gmail.com with ESMTPSA id
 v94sm6922831pjb.39.2020.04.25.04.04.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 25 Apr 2020 04:04:33 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 7/8] rockchip: Enable PCIe/M.2 on rk3399 board w/ M.2
Date: Sat, 25 Apr 2020 16:33:53 +0530
Message-Id: <20200425110354.12381-8-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200425110354.12381-1-jagan@amarulasolutions.com>
References: <20200425110354.12381-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_040434_587660_FE48244A 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: patrick@blueri.se, linux-rockchip@lists.infradead.org, u-boot@lists.denx.de,
 Jagan Teki <jagan@amarulasolutions.com>, sunil@amarulasolutions.com,
 linux-amarula@amarulasolutions.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Enable PCIe/M.2 support on
- NanoPC-T4
- ROC-RK3399-PC Mezzanine boards.

=> pci
Scanning PCI devices on bus 0
BusDevFun  VendorId   DeviceId   Device Class       Sub-Class
_____________________________________________________________
00.00.00   0x1d87     0x0100     Bridge device           0x04
=> nvme scan
=> nvme dev

IDE device 0: Vendor: 0x144d Rev: 4L1QCXB7 Prod: S35FNX0J623292
            Type: Hard Disk
            Capacity: 122104.3 MB = 119.2 GB (250069680 x 512)

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/dts/rk3399-u-boot.dtsi           | 1 +
 configs/nanopc-t4-rk3399_defconfig        | 4 ++++
 configs/roc-pc-mezzanine-rk3399_defconfig | 4 ++++
 3 files changed, 9 insertions(+)

diff --git a/arch/arm/dts/rk3399-u-boot.dtsi b/arch/arm/dts/rk3399-u-boot.dtsi
index ef57c36e73..a79a2d23d8 100644
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
index 607a00dbf7..032256fd76 100644
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
