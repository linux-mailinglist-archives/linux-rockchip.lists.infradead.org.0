Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD511BF0CA
	for <lists+linux-rockchip@lfdr.de>; Thu, 30 Apr 2020 09:04:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ww5RP5izL+tkqhRmHyts/EVs1VF/MuLKrB6s+C1s3P8=; b=BT++S8iAOXnYLXNF6lqQk7JycC
	aZ0SHYSGAzWW0SN33QEizqGxX502+ZM0cc/SfYTSbKcuIY/BwnnJsC287GxmdJ3OaSr4ShItChh94
	2tjshtnMJQnlKue/t8D1JavPgnAYbUhHcWkpVd2OkqhrS7CyQlLYbOSm2oLX2T4PVnYIa+9XYW/hv
	uv+w0SUdqU+cR5SkG61cQ2nleKGxNbXm3LZYFYPxrCSuekewtZQ0jLnSV9+QoE3iNZoigB5vAaqXz
	Qaxp0Q+DMwTf13E5NJRujqVsVnzuPopeQWyJrMUkv8Q5QDqYk5nD1lRSG732gNmx4QQEZXejXbxNz
	eL3UFwVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU3Fe-0006Qu-AT; Thu, 30 Apr 2020 07:04:54 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU3Fb-0006OC-2x
 for linux-rockchip@lists.infradead.org; Thu, 30 Apr 2020 07:04:52 +0000
Received: by mail-pf1-x443.google.com with SMTP id z1so2466966pfn.3
 for <linux-rockchip@lists.infradead.org>; Thu, 30 Apr 2020 00:04:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=btfRNFjDwjdUkMKeVi2RwLB4eJwmNgaGoIeOs3gZS+o=;
 b=HBucWF/WAmZJtF74pIy/N63TVsteLmJmUJ3k39X2H1LCkmOm8KJJnpbyll6Imrhk15
 AyiZReHCMzVVVA63zvjvSZq5xmt36xYDFk3Bihk/M3zfUxNb6PStFTIQU9V65S48Yrzw
 b7W69+2Ae2PLgNt1cD+uHKmAs8k/o2xow3RmU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=btfRNFjDwjdUkMKeVi2RwLB4eJwmNgaGoIeOs3gZS+o=;
 b=kudcuzyqjPTpZwsl/UosCJP7WYLTucihVoe+Xq1HSzYoj39/KtBlplpy1nOoB5Dc3n
 InmRQJi2UelWFPnhR1IkusQMvWk5xui6D+YT4WO9jfstgJEWboM9IwDjFD/dRco6UlXz
 hhizVe7ezDJCbjt5q9ivurr4aLI+JJY90ZEwVviO69vISsX9gdfZEDVgpKqJ+iGQF+ep
 hPIf6GT2v6MAh1o2h21/4xT1GjY7Ys1BtbaQb8rChcahn8bgx8eZpUQAIvfqp+se9hSu
 wcO3t9jV7Xg55hEDc+g1HBDgPRhhXIDtjjiiOqpnbuzN8kx3wj8lrJVm/y8zzOvEELTn
 khzw==
X-Gm-Message-State: AGi0PuZVzHmTcEHJUFmQlhkQRcj7g7jp27AVSA3J0lP9GbjY3FU0z7Nq
 IOE7IZKCydUInA0+Q9am9Ot9Ng==
X-Google-Smtp-Source: APiQypK1IQrHifr3Ri0ecNQfEaSXh2olkIOML6TGFkaDmydG7U3inCYUxZT/rhIF0f3D0sFGpfWbJA==
X-Received: by 2002:aa7:81d1:: with SMTP id c17mr2163240pfn.58.1588230290418; 
 Thu, 30 Apr 2020 00:04:50 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:6514:3619:d1af:85f6])
 by smtp.gmail.com with ESMTPSA id p64sm964143pjp.7.2020.04.30.00.04.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 00:04:49 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v2 7/8] rockchip: Enable PCIe/M.2 on rk3399 board w/ M.2
Date: Thu, 30 Apr 2020 12:34:11 +0530
Message-Id: <20200430070412.12499-8-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200430070412.12499-1-jagan@amarulasolutions.com>
References: <20200430070412.12499-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_000451_137929_673FBC97 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- none

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
