Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7690B5C0
	for <lists+linux-rockchip@lfdr.de>; Sun, 28 Apr 2019 11:10:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fk2Icyak6W7UhvXp2jK+JOtXeJ5JtcEwikVqGbw6v9A=; b=qcBpN8OLOlzfvC
	FrDfRNRloN1GauE1ihwGOU1USjHUBYnD5Q01oLNiDS8Yl3bVWldukHcXmqP0bO8hT6NRdyB3OzUhm
	afCWRqqT0Y+wVtU02PGnDnSB9CCIKg2rw5KPNUlFCAKeFZ1r298MfvCLbyVr/IiJFcX4stSk9DzAW
	NoTWi6jM545rJ0r71BCd2HKBMQ4ayboExILvnsZFJ9LA2GTD6pe37v+pAn9ni4DAeminLysPGaYIR
	GAKPtB6Mruet0ev9EtzDDbP5k7CETIweN2MyduVjiIeLopBQsjpJ/akIPZ84wCfo034BG59dJjXI2
	Sq/TgHfKdGZv033PlBTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKfor-000126-Q4; Sun, 28 Apr 2019 09:09:57 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKfop-00010Z-4c
 for linux-rockchip@lists.infradead.org; Sun, 28 Apr 2019 09:09:56 +0000
Received: by mail-pf1-x444.google.com with SMTP id z5so3847843pfn.3
 for <linux-rockchip@lists.infradead.org>; Sun, 28 Apr 2019 02:09:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eCXXxbS350tcxIqTsUZMM4f279DxaWxGFOZAXsVfst4=;
 b=dEtzQviHls9FyHfnkqqdhFRSh0YC1t8Z6KixOh0GvIoPvU5uCmxc8YcSeRy2jdsKTG
 gvXXs36GwK0rriXelJwcB++nJM9TKHtTJd3Ktr/saMHICju97mStZf0lHFo0w8nmYmqC
 kzv35x7lWnLaBaCEeTl/oucWX56vDb6Y08t5Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eCXXxbS350tcxIqTsUZMM4f279DxaWxGFOZAXsVfst4=;
 b=hK+bjZ9hADozkvqrfFdniens+5uFAiIhelD0Q45YTXw89OIS5bitb1j/PhtcZTmihm
 8B7IxElxr1cb/AR9f2tWA8RbWIc0Bu6660VUL3DVcl8/gy1PY/Q5KAcysOKwD8PVZfME
 ni7WARY1GPRAroS5qOORhaYm8TlYj56rD+EmvywC6k7SoZjWdIgDj5KCH3YgvEppxnyS
 tFS384d6+bzkO8d5dFxN2LGh2wSZDlRqOVHaJEjRHdPCnsjNy0EYRLsY0HkL4GDEkN9G
 z5dA+VHMXc4gq7JVfS7vZCf39OPs9/1jkgKicFjgGMHan0dT1iWQ6SPRo8dPHEHNBjXY
 wpDQ==
X-Gm-Message-State: APjAAAWl8tI8uc8bBCQluDnrtjEH95KxE/7EU2zlq/FKUrdx45MRAloH
 Wft2L0WOxrgD4KDJySk3hUlZxg==
X-Google-Smtp-Source: APXvYqxeF4mTjRBbMKBm+zNhd0XvscOnxnZSHO7AVGOULdL1u+zFI5XYzmCKi1E7gI8M69svJx2VWQ==
X-Received: by 2002:a62:1483:: with SMTP id 125mr14974621pfu.161.1556442594347; 
 Sun, 28 Apr 2019 02:09:54 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id k7sm3040338pfk.93.2019.04.28.02.09.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 28 Apr 2019 02:09:53 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>,
 Tom Rini <trini@konsulko.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 6/9] Kconfig: Add u-boot.itb BUILD_TARGET for Rockchip
Date: Sun, 28 Apr 2019 14:39:10 +0530
Message-Id: <20190428090913.10568-7-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190428090913.10568-1-jagan@amarulasolutions.com>
References: <20190428090913.10568-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_020955_179508_325B4D0E 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add u-boot.itb BUILD_TARGET for Rockchip platform when SPL_LOAD_FIT
is being used.

This can get rid of building itb explicitly with 'make u-boot.itb'
so, from now all required images will build just by make.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 Kconfig             | 2 +-
 doc/README.rockchip | 2 --
 2 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/Kconfig b/Kconfig
index 5679a288ec..7e918e5c37 100644
--- a/Kconfig
+++ b/Kconfig
@@ -230,7 +230,7 @@ config BUILD_TARGET
 	default "u-boot-with-spl.sfp" if TARGET_SOCFPGA_GEN5
 	default "u-boot-spl.kwb" if ARCH_MVEBU && SPL
 	default "u-boot-elf.srec" if RCAR_GEN3
-	default "u-boot.itb" if SPL_LOAD_FIT && ARCH_SUNXI
+	default "u-boot.itb" if SPL_LOAD_FIT && (ROCKCHIP_RK3399 || ARCH_SUNXI)
 	default "u-boot.kwb" if KIRKWOOD
 	help
 	  Some SoCs need special image types (e.g. U-Boot binary
diff --git a/doc/README.rockchip b/doc/README.rockchip
index 88a4593392..c4e5f83da7 100644
--- a/doc/README.rockchip
+++ b/doc/README.rockchip
@@ -103,7 +103,6 @@ For example:
      => cd /path/to/u-boot
      => make nanopi-neo4-rk3399_defconfig
      => make
-     => make u-boot.itb
 
    - Get the rkbin
 
@@ -170,7 +169,6 @@ For example:
      => cd /path/to/u-boot
      => make orangepi-rk3399_defconfig
      => make
-     => make u-boot.itb
 
      (Get spl/u-boot-spl-dtb.bin, u-boot.itb images and some boards would get
       spl/u-boot-spl.bin since it doesn't enable CONFIG_SPL_OF_CONTROL)
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
