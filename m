Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE271B342
	for <lists+linux-rockchip@lfdr.de>; Sat, 27 Apr 2019 13:49:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GUJKhNki58VOqnMIk9N4Vpyx66NAoDT17ac3ybn0XVw=; b=H+cHWLU8AasB0L
	ANdrh7R49ib4UVDHXC+tJXPIzKVzonP1GCFyOgigUXDkw6CdJ4a5r6yzxgPedwRZsCr4b99cf6i2R
	NKbfbmr79PKeLxVq6D3RwUl5kSzVjPX54wL/BJwSKM0I4km2F8+1JPCXzsTei+6FAWnrGfVTGVuN6
	5IH4huILMNJreMFM4djp6aAPuX6NV+AYV0sICMZmkvYA7LWKASTXwnURyizBkbJVQ5yN0EXbyUaOo
	sC33ScIqLPyhJQCnmsf5/VskBbrwY/GSeQ9+7Bax5p6oUwZhDDWAtlMhp1XRZqSqBCrrf/DXovL3K
	nQiyjM8Eu/BfsbK7gPRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKLpd-00014t-19; Sat, 27 Apr 2019 11:49:25 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKLpY-00013M-Rn
 for linux-rockchip@lists.infradead.org; Sat, 27 Apr 2019 11:49:22 +0000
Received: by mail-pf1-x431.google.com with SMTP id g3so3000568pfi.4
 for <linux-rockchip@lists.infradead.org>; Sat, 27 Apr 2019 04:49:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Um8qSQd4kNEDgUzuJzj+ZQ3+GQ9eCiB/O4N9spqTVvI=;
 b=eH4p0BGJn8GkyXldGv2zQxcxlclycthxK2yxer9EzREhSoYeH2Kx17+DX4OOc/Ct6s
 Zl4J2tY2q5l4cOpSTvK66xb65IDTqJ7gJ7dO59BiPpsRz4FyKdcWyeZ3eGhNNhvzAj+Z
 3i2SpRC483Gt+Wcde/GbFAK5kY0ww6xxLT5Ww=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Um8qSQd4kNEDgUzuJzj+ZQ3+GQ9eCiB/O4N9spqTVvI=;
 b=jwg49V4KTYvDaMjdrKs2PfRaCR3CLHgqZdByfnF9AiMr1SwM2NjLJQbeyOtGKU2cE7
 JlWwLbvkO1uWYjwOA1ppe//EFDidrivvrf4gE0Dl1gsO8UosGuc7UuK48QWC7AG/8SU2
 zmxT5aFXLiimyPR0AwR2v26Bh7MlyVBHJgBykvtJxQA2R1/Dz0s3eSCxI60kTnpm/mrv
 /49T8ketpfiitQ1acpzV6orxTGii9li4pMe/35wgwOg7lWlTbNjE36vUxgtEY1tqfE2g
 Dv8IgDZGv7P2lYLDmAFvn8hOAJnERds8LwsjYVzC582CSKs3Zy7RuZWV98i8oKneAkxT
 njSA==
X-Gm-Message-State: APjAAAUstTRCv8NfNPfQtzyvbjHCk8/OwMk1teFFGRiKy0AWwwFHV2IQ
 Jpv3AKyvfOrfziXO0a3EG53R0w==
X-Google-Smtp-Source: APXvYqx0hqcky1QxVoN9giencRPmeYNLI+p6L0d9FT8wa1UyzMvdXkTSHxBvZEH6+uTMFMDC1PSPVg==
X-Received: by 2002:a63:d04b:: with SMTP id s11mr28933671pgi.137.1556365759850; 
 Sat, 27 Apr 2019 04:49:19 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id y3sm2368768pfe.9.2019.04.27.04.49.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 27 Apr 2019 04:49:19 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>,
 Tom Rini <trini@konsulko.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v6 03/13] Kconfig: Add default SPL_FIT_GENERATOR for rockchip
Date: Sat, 27 Apr 2019 17:18:46 +0530
Message-Id: <20190427114852.7608-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190427114852.7608-1-jagan@amarulasolutions.com>
References: <20190427114852.7608-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_044920_903015_057FE8E1 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:431 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Add default SPL_FIT_GENERATOR py script for rockchip platforms if
specific target enabled SPL_LOAD_FIT.

So, this would help get rid of explicitly mentioning the default
SPL FIT generator in defconfigs. however some targets, like puma_rk3399
still require their own FIT generator so in those cases the default will
override with defconfig defined generator.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 Kconfig                          | 1 +
 configs/chromebook_bob_defconfig | 1 -
 configs/evb-rk3399_defconfig     | 1 -
 configs/ficus-rk3399_defconfig   | 1 -
 configs/firefly-rk3399_defconfig | 1 -
 configs/rock960-rk3399_defconfig | 1 -
 6 files changed, 1 insertion(+), 5 deletions(-)

diff --git a/Kconfig b/Kconfig
index 305b265ed7..5679a288ec 100644
--- a/Kconfig
+++ b/Kconfig
@@ -424,6 +424,7 @@ config SPL_FIT_GENERATOR
 	string ".its file generator script for U-Boot FIT image"
 	depends on SPL_FIT
 	default "board/sunxi/mksunxi_fit_atf.sh" if SPL_LOAD_FIT && ARCH_SUNXI
+	default "arch/arm/mach-rockchip/make_fit_atf.py" if SPL_LOAD_FIT && ARCH_ROCKCHIP
 	help
 	  Specifies a (platform specific) script file to generate the FIT
 	  source file used to build the U-Boot FIT image file. This gets
diff --git a/configs/chromebook_bob_defconfig b/configs/chromebook_bob_defconfig
index ce3deccb8a..04e25e1d4f 100644
--- a/configs/chromebook_bob_defconfig
+++ b/configs/chromebook_bob_defconfig
@@ -19,7 +19,6 @@ CONFIG_DEBUG_UART=y
 CONFIG_NR_DRAM_BANKS=1
 CONFIG_FIT=y
 CONFIG_SPL_LOAD_FIT=y
-CONFIG_SPL_FIT_GENERATOR="arch/arm/mach-rockchip/make_fit_atf.py"
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-gru-bob.dtb"
 # CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
diff --git a/configs/evb-rk3399_defconfig b/configs/evb-rk3399_defconfig
index d98535357a..49b2e2e089 100644
--- a/configs/evb-rk3399_defconfig
+++ b/configs/evb-rk3399_defconfig
@@ -13,7 +13,6 @@ CONFIG_DEBUG_UART=y
 CONFIG_NR_DRAM_BANKS=1
 CONFIG_FIT=y
 CONFIG_SPL_LOAD_FIT=y
-CONFIG_SPL_FIT_GENERATOR="arch/arm/mach-rockchip/make_fit_atf.py"
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-evb.dtb"
 # CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
diff --git a/configs/ficus-rk3399_defconfig b/configs/ficus-rk3399_defconfig
index 94c565efc2..fe3b9964e8 100644
--- a/configs/ficus-rk3399_defconfig
+++ b/configs/ficus-rk3399_defconfig
@@ -13,7 +13,6 @@ CONFIG_SPL_STACK_R_ADDR=0x80000
 CONFIG_DEBUG_UART=y
 CONFIG_FIT=y
 CONFIG_SPL_LOAD_FIT=y
-CONFIG_SPL_FIT_GENERATOR="arch/arm/mach-rockchip/make_fit_atf.py"
 # CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_STACK_R=y
diff --git a/configs/firefly-rk3399_defconfig b/configs/firefly-rk3399_defconfig
index 6725b48970..914304bb43 100644
--- a/configs/firefly-rk3399_defconfig
+++ b/configs/firefly-rk3399_defconfig
@@ -13,7 +13,6 @@ CONFIG_DEBUG_UART=y
 CONFIG_NR_DRAM_BANKS=1
 CONFIG_FIT=y
 CONFIG_SPL_LOAD_FIT=y
-CONFIG_SPL_FIT_GENERATOR="arch/arm/mach-rockchip/make_fit_atf.py"
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-firefly.dtb"
 # CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
diff --git a/configs/rock960-rk3399_defconfig b/configs/rock960-rk3399_defconfig
index cb5a35f4f5..5e6778ea20 100644
--- a/configs/rock960-rk3399_defconfig
+++ b/configs/rock960-rk3399_defconfig
@@ -13,7 +13,6 @@ CONFIG_SPL_STACK_R_ADDR=0x80000
 CONFIG_DEBUG_UART=y
 CONFIG_FIT=y
 CONFIG_SPL_LOAD_FIT=y
-CONFIG_SPL_FIT_GENERATOR="arch/arm/mach-rockchip/make_fit_atf.py"
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-rock960.dtb"
 # CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
