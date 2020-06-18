Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F21941FF45A
	for <lists+linux-rockchip@lfdr.de>; Thu, 18 Jun 2020 16:13:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b33u8642MjPORu4blhFZQqqvokseDZBSrF9OWr24z34=; b=IbqGHuROHGl0x4
	yGvyTcsWZ82L5kZNgVUsiEWTyyCejOb+S4hA6AkIASHZIeoHMDJ9zCH+fFuWnwGuUUszUFvAJgQgL
	HIkto2WkTzUx9WKFggZa3+kLmDs3Di2gmOJ7ZM0QAkBzjjdofaDwJmXmoBCl260ZMiEagqbLhv7Rq
	WTRmEQtd+KgN0KTtqoayHxnmXrekTXVHIk/RocKPqzS/LJushSxcxecJjgrpAdaeR4WeS3VutULKD
	ce58jj4FxlF5OsBsaRebLDv2IZbQfwjQnriajPwXx7w+jyxAMWACoWb7NF3OREwgXROOUczAuhd6Z
	6cLkxM+paxZHiECW338g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlvI8-0007A1-31; Thu, 18 Jun 2020 14:13:20 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlvI4-00078B-Lk
 for linux-rockchip@lists.infradead.org; Thu, 18 Jun 2020 14:13:17 +0000
Received: by mail-pl1-x642.google.com with SMTP id y17so2483090plb.8
 for <linux-rockchip@lists.infradead.org>; Thu, 18 Jun 2020 07:13:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rl0AmOyJqoqpPJL86fFQlXlDYQFCvZQU411hyTBmyG8=;
 b=DsF8S1ltrodxjruykYbTzaaZy97k0aQ6VY0JOKHuvMhxy/Wuf4uojC6Tcr33JV1VY3
 AiVaexTz4aa9Mk6YnE2B6gBcahhPY6foMqy3TCzZ2QV2cBL43ljz3RnvAz61IX2rJFUb
 IFC0pz/5SRnugbDLBuYfskTOu2pyI1TiZtWkc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rl0AmOyJqoqpPJL86fFQlXlDYQFCvZQU411hyTBmyG8=;
 b=GLBn+/CxjxA4xMBdOzV7rLYIV0cPYrSk/aFdOu1Hk2W11w+gq60QMB44VkI5IuZzan
 a/guAq2Q3Jg34CfU60akLGdYgb5ruNN+drKfMJ1lTKfTt4MuDdoTXaEriVYrwrm8DITp
 aKk2cL46JDQurBqdeZzO4ethmMM3q+S85U4u9W2zweC6UHKMMdR+2DR3INfovSNMzAuD
 ja9SscVGgYImVPKPzxuOeb5SYRa/Sp6hm7DUZ6q/tZ+NjR35BXPAhJ7S0HS9R74YR6yf
 ywrcV5DiY6/SYxqS3ATB/VTozePLlKQJmwPPckRX/YI4pQHLUPInbCwuRKbW7gXkZDst
 NOKg==
X-Gm-Message-State: AOAM532/UtrQgZ2VG8eaTdJrNFo+3fJR71uKfNuQOI+PF+JNFwIwNZyu
 FUO5WZoTwE7OjKAquGsrFSQN8q2sjXYJmw==
X-Google-Smtp-Source: ABdhPJywpUnFyBinKUfe7lFuQx59NwfmmSN/U5WhMccgVEu9w4vwvZ053cQkE6nNftyieEpWoh3usg==
X-Received: by 2002:a17:90a:21a2:: with SMTP id
 q31mr4532653pjc.230.1592489595901; 
 Thu, 18 Jun 2020 07:13:15 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:b0c7:f192:869b:df87])
 by smtp.gmail.com with ESMTPSA id p6sm3340540pfb.152.2020.06.18.07.13.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 07:13:15 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>
Subject: [PATCH v2 2/6] rock-pi-4: Enable PCI/NVME
Date: Thu, 18 Jun 2020 19:42:55 +0530
Message-Id: <20200618141259.155581-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618141259.155581-1-jagan@amarulasolutions.com>
References: <20200618141259.155581-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_071316_707803_34C2028C 
X-CRM114-Status: UNSURE (   7.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-rockchip@lists.infradead.org, Tom Cubie <tom@radxa.com>,
 U-Boot-Denx <u-boot@lists.denx.de>, Jagan Teki <jagan@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Enable PCI/NVME for M.2 Slot on RockPI-4 boards.

=> nvme info
Device 0: Vendor: 0x144d Rev: 2B2QEXM7 Prod: S4EUNG0MC10012Y
            Type: Hard Disk
            Capacity: 238475.1 MB = 232.8 GB (488397168 x 512)

Cc: Tom Cubie <tom@radxa.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- rebase on master

 configs/rock-pi-4-rk3399_defconfig | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/configs/rock-pi-4-rk3399_defconfig b/configs/rock-pi-4-rk3399_defconfig
index 0d86fdc895..2487872219 100644
--- a/configs/rock-pi-4-rk3399_defconfig
+++ b/configs/rock-pi-4-rk3399_defconfig
@@ -28,6 +28,7 @@ CONFIG_ENV_IS_IN_MMC=y
 CONFIG_SYS_RELOC_GD_ENV_ADDR=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
+CONFIG_MISC=y
 CONFIG_MMC_DW=y
 CONFIG_MMC_DW_ROCKCHIP=y
 CONFIG_MMC_SDHCI=y
@@ -35,11 +36,14 @@ CONFIG_MMC_SDHCI_ROCKCHIP=y
 CONFIG_DM_ETH=y
 CONFIG_ETH_DESIGNWARE=y
 CONFIG_GMAC_ROCKCHIP=y
+CONFIG_PHY_ROCKCHIP_INNO_USB2=y
 configs/rock-pi-4-rk3399_defconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/configs/rock-pi-4-rk3399_defconfig b/configs/rock-pi-4-rk3399_defconfig
index 2487872219..f3eeef0293 100644
--- a/configs/rock-pi-4-rk3399_defconfig
+++ b/configs/rock-pi-4-rk3399_defconfig
@@ -18,6 +18,7 @@ CONFIG_TPL=y
 CONFIG_CMD_BOOTZ=y
 CONFIG_CMD_GPT=y
 CONFIG_CMD_MMC=y
+CONFIG_CMD_PCI=y
 CONFIG_CMD_USB=y
 # CONFIG_CMD_SETEXPR is not set
 CONFIG_CMD_TIME=y
@@ -36,6 +37,8 @@ CONFIG_MMC_SDHCI_ROCKCHIP=y
 CONFIG_DM_ETH=y
 CONFIG_ETH_DESIGNWARE=y
 CONFIG_GMAC_ROCKCHIP=y
+CONFIG_NVME=y
+CONFIG_PCI=y
 CONFIG_PHY_ROCKCHIP_INNO_USB2=y
 CONFIG_PHY_ROCKCHIP_TYPEC=y
 CONFIG_PMIC_RK8XX=y
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
