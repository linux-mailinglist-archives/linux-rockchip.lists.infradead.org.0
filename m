Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CFFE1354CD
	for <lists+linux-rockchip@lfdr.de>; Thu,  9 Jan 2020 09:53:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UuTksvcrR1WZZrUhxotvsS1hRbqfE07QUdBG6zv4EQc=; b=tDFDZtO1o77arb
	ScTEl4whpxuDP184BsGlud7n51rUlAH29HIUHzJyeuE1HH/D+ZngvlZ3k+19kWmu29pOMO4GEqISo
	DsJIB/hbUka21md/QdzdQwP7KTwJc3xAGhkEPg3sMMqzddEGhKlTZ+SXOANG91DTx5pP5QsMQoo8l
	iFko/+TbZY3ZwatZgmaAf+KZSa8jGnD9FFYsGi5cdaEJiBrNT7sq8S96utGY9fZubOiw6AldxNNbD
	epfmhEOIXqGmyWSEZgBFRjBGPrM1w7jW6607ZNsam5zZQBpP09geGWthqDXjUFhnOxQTU4IXcPBso
	/Z6D0untDHeWWf2pWGvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipTYp-0006Ag-R3; Thu, 09 Jan 2020 08:52:59 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipTYa-0005sp-2o
 for linux-rockchip@lists.infradead.org; Thu, 09 Jan 2020 08:52:46 +0000
Received: by mail-pf1-x443.google.com with SMTP id q8so3045303pfh.7
 for <linux-rockchip@lists.infradead.org>; Thu, 09 Jan 2020 00:52:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9fV8777BLo+lJicpi0tY+CBRa+K3xOz1i3eD6Aao/so=;
 b=SzDhk85iT73dEPv38kXeHm2C+FXnZ5c8tNK5oMOF8tzwAzGE54q+TNHw62lnblpem+
 rsjCsEjEdrTeGkaX4MxDIzlOivQG7YaXte35553qt0QhA7ncL1bbCHKIWVKHb60FLtga
 fFNTDEYPPEH/w/xUVTHD3bqmpz4Qs/dDiOw5k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9fV8777BLo+lJicpi0tY+CBRa+K3xOz1i3eD6Aao/so=;
 b=blFysmgZmFdAl2gfbzyJR55P0MaZEN85vHx5L1XJBp3hEjfFF5oa1ICmC43kWaJkjK
 jD7/IegQ5DrxVQkygzOlvIoZXpvg2uTF2roI1cFwXwiqQNRgM1VNFR+1774gUk9LeuYa
 BAakKUoc5srTHjI+eC+mPlfDBmMadqWS/kN0l4iu3GW0ErCdLg1Y0xybCKg/1776iPQ5
 ljx4TExgpjUrGLPrP9w9667W+bLFulRigwy9Uiz/7EDHZ8xXQEBl2KID/62zSV8nX49o
 qjVdUw79QI5yDfhasyKRi6IsreKYoQhTw/TswPWRpmgyjV2sXJ6KNv7yLR9CoFw3nzhX
 tRuQ==
X-Gm-Message-State: APjAAAVhFQIXr6Mjf+LsYJLqmL5n22zxUPia+RacpS2cDTk8wvDGUxwe
 6FxhJMjZk13nJ2FoR14coghPoQ==
X-Google-Smtp-Source: APXvYqz2CmitB+bG25fuZOqdvlQ8z/eA5NNm3VJ8RIY2nYbvRtB+a2kuqlFltVePSrYmAT1exzW19Q==
X-Received: by 2002:a63:941:: with SMTP id 62mr10402561pgj.203.1578559963025; 
 Thu, 09 Jan 2020 00:52:43 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c809:c7d5:d888:9871:544a:b516])
 by smtp.gmail.com with ESMTPSA id o17sm2139121pjq.1.2020.01.09.00.52.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 00:52:42 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v4 2/8] rockchip: rk3399: Enable DISPLAY_CPUINFO
Date: Thu,  9 Jan 2020 14:22:16 +0530
Message-Id: <20200109085222.22670-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20200109085222.22670-1-jagan@amarulasolutions.com>
References: <20200109085222.22670-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_005244_221976_CDCED2F3 
X-CRM114-Status: UNSURE (   7.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
Cc: u-boot@lists.denx.de, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

RK3288, RK3399 are now support cpu-info, so enable
DISPLAY_CPUINFO by default.

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 configs/evb-rk3288_defconfig                 | 1 -
 configs/evb-rk3399_defconfig                 | 1 -
 configs/ficus-rk3399_defconfig               | 1 -
 configs/firefly-rk3288_defconfig             | 1 -
 configs/firefly-rk3399_defconfig             | 1 -
 configs/khadas-edge-captain-rk3399_defconfig | 1 -
 configs/khadas-edge-rk3399_defconfig         | 1 -
 configs/khadas-edge-v-rk3399_defconfig       | 1 -
 configs/leez-rk3399_defconfig                | 1 -
 configs/miqi-rk3288_defconfig                | 1 -
 configs/nanopc-t4-rk3399_defconfig           | 1 -
 configs/nanopi-m4-rk3399_defconfig           | 1 -
 configs/nanopi-neo4-rk3399_defconfig         | 1 -
 configs/orangepi-rk3399_defconfig            | 1 -
 configs/phycore-rk3288_defconfig             | 1 -
 configs/popmetal-rk3288_defconfig            | 1 -
 configs/puma-rk3399_defconfig                | 1 -
 configs/roc-pc-rk3399_defconfig              | 1 -
 configs/rock-pi-4-rk3399_defconfig           | 1 -
 configs/rock960-rk3399_defconfig             | 1 -
 configs/rockpro64-rk3399_defconfig           | 1 -
 configs/tinker-rk3288_defconfig              | 1 -
 configs/tinker-s-rk3288_defconfig            | 1 -
 configs/vyasa-rk3288_defconfig               | 1 -
 24 files changed, 24 deletions(-)

diff --git a/configs/evb-rk3288_defconfig b/configs/evb-rk3288_defconfig
index 1fa4054f5d..59c909e10d 100644
--- a/configs/evb-rk3288_defconfig
+++ b/configs/evb-rk3288_defconfig
@@ -14,7 +14,6 @@ CONFIG_DEBUG_UART=y
 CONFIG_USE_PREBOOT=y
 CONFIG_SILENT_CONSOLE=y
 CONFIG_DEFAULT_FDT_FILE="rk3288-evb-rk808.dtb"
-# CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_STACK_R=y
 CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x2000
diff --git a/configs/evb-rk3399_defconfig b/configs/evb-rk3399_defconfig
index 8b8cdc5109..896a6050eb 100644
--- a/configs/evb-rk3399_defconfig
+++ b/configs/evb-rk3399_defconfig
@@ -8,7 +8,6 @@ CONFIG_DEBUG_UART_BASE=0xFF1A0000
 CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_DEBUG_UART=y
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-evb.dtb"
-# CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 # CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
 CONFIG_SPL_STACK_R=y
diff --git a/configs/ficus-rk3399_defconfig b/configs/ficus-rk3399_defconfig
index 6bb030acc1..5b49fe0b7b 100644
--- a/configs/ficus-rk3399_defconfig
+++ b/configs/ficus-rk3399_defconfig
@@ -9,7 +9,6 @@ CONFIG_DEBUG_UART_BASE=0xFF1A0000
 CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_DEBUG_UART=y
 CONFIG_SPL_TEXT_BASE=0xff8c2000
-# CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 # CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
 CONFIG_SPL_STACK_R=y
diff --git a/configs/firefly-rk3288_defconfig b/configs/firefly-rk3288_defconfig
index 0c0a51c54f..41a6fc3edd 100644
--- a/configs/firefly-rk3288_defconfig
+++ b/configs/firefly-rk3288_defconfig
@@ -14,7 +14,6 @@ CONFIG_DEBUG_UART=y
 CONFIG_USE_PREBOOT=y
 CONFIG_SILENT_CONSOLE=y
 CONFIG_DEFAULT_FDT_FILE="rk3288-firefly.dtb"
-# CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_STACK_R=y
 CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x2000
diff --git a/configs/firefly-rk3399_defconfig b/configs/firefly-rk3399_defconfig
index b84d7b9ff0..5d197f5f8a 100644
--- a/configs/firefly-rk3399_defconfig
+++ b/configs/firefly-rk3399_defconfig
@@ -8,7 +8,6 @@ CONFIG_DEBUG_UART_BASE=0xFF1A0000
 CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_DEBUG_UART=y
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-firefly.dtb"
-# CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 # CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
 CONFIG_SPL_STACK_R=y
diff --git a/configs/khadas-edge-captain-rk3399_defconfig b/configs/khadas-edge-captain-rk3399_defconfig
index c408a1a59b..379e21e28d 100644
--- a/configs/khadas-edge-captain-rk3399_defconfig
+++ b/configs/khadas-edge-captain-rk3399_defconfig
@@ -8,7 +8,6 @@ CONFIG_DEBUG_UART_BASE=0xFF1A0000
 CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_DEBUG_UART=y
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-khadas-edge-captain.dtbi"
-# CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 # CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
 CONFIG_SPL_STACK_R=y
diff --git a/configs/khadas-edge-rk3399_defconfig b/configs/khadas-edge-rk3399_defconfig
index 796f94f8d7..9086018cd0 100644
--- a/configs/khadas-edge-rk3399_defconfig
+++ b/configs/khadas-edge-rk3399_defconfig
@@ -8,7 +8,6 @@ CONFIG_DEBUG_UART_BASE=0xFF1A0000
 CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_DEBUG_UART=y
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-khadas-edge.dtb"
-# CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 # CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
 CONFIG_SPL_STACK_R=y
diff --git a/configs/khadas-edge-v-rk3399_defconfig b/configs/khadas-edge-v-rk3399_defconfig
index e70e1ec2e6..261d75526b 100644
--- a/configs/khadas-edge-v-rk3399_defconfig
+++ b/configs/khadas-edge-v-rk3399_defconfig
@@ -8,7 +8,6 @@ CONFIG_DEBUG_UART_BASE=0xFF1A0000
 CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_DEBUG_UART=y
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-khadas-edge-v.dtbi"
-# CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 # CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
 CONFIG_SPL_STACK_R=y
diff --git a/configs/leez-rk3399_defconfig b/configs/leez-rk3399_defconfig
index 3758d79a1e..1d621fc9ce 100644
--- a/configs/leez-rk3399_defconfig
+++ b/configs/leez-rk3399_defconfig
@@ -8,7 +8,6 @@ CONFIG_DEBUG_UART_BASE=0xFF1A0000
 CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_DEBUG_UART=y
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-leez-p710.dtb"
-# CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_STACK_R=y
 CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x10000
diff --git a/configs/miqi-rk3288_defconfig b/configs/miqi-rk3288_defconfig
index cec8e42c5e..25a808eb89 100644
--- a/configs/miqi-rk3288_defconfig
+++ b/configs/miqi-rk3288_defconfig
@@ -15,7 +15,6 @@ CONFIG_SPL_TEXT_BASE=0xff704000
 CONFIG_USE_PREBOOT=y
 CONFIG_SILENT_CONSOLE=y
 CONFIG_DEFAULT_FDT_FILE="rk3288-miqi.dtb"
-# CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_STACK_R=y
 CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x2000
diff --git a/configs/nanopc-t4-rk3399_defconfig b/configs/nanopc-t4-rk3399_defconfig
index 504346eb99..bd6d60ff6c 100644
--- a/configs/nanopc-t4-rk3399_defconfig
+++ b/configs/nanopc-t4-rk3399_defconfig
@@ -8,7 +8,6 @@ CONFIG_DEBUG_UART_BASE=0xFF1A0000
 CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_DEBUG_UART=y
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-nanopc-t4.dtb"
-# CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 # CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
 CONFIG_SPL_STACK_R=y
diff --git a/configs/nanopi-m4-rk3399_defconfig b/configs/nanopi-m4-rk3399_defconfig
index 24c8aa401b..74ede13c23 100644
--- a/configs/nanopi-m4-rk3399_defconfig
+++ b/configs/nanopi-m4-rk3399_defconfig
@@ -8,7 +8,6 @@ CONFIG_DEBUG_UART_BASE=0xFF1A0000
 CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_DEBUG_UART=y
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-nanopi-m4.dtb"
-# CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 # CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
 CONFIG_SPL_STACK_R=y
diff --git a/configs/nanopi-neo4-rk3399_defconfig b/configs/nanopi-neo4-rk3399_defconfig
index 986739f16e..a44124aac0 100644
--- a/configs/nanopi-neo4-rk3399_defconfig
+++ b/configs/nanopi-neo4-rk3399_defconfig
@@ -8,7 +8,6 @@ CONFIG_DEBUG_UART_BASE=0xFF1A0000
 CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_DEBUG_UART=y
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-nanopi-neo4.dtb"
-# CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 # CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
 CONFIG_SPL_STACK_R=y
diff --git a/configs/orangepi-rk3399_defconfig b/configs/orangepi-rk3399_defconfig
index bed634b699..4c464de8a6 100644
--- a/configs/orangepi-rk3399_defconfig
+++ b/configs/orangepi-rk3399_defconfig
@@ -8,7 +8,6 @@ CONFIG_DEBUG_UART_BASE=0xFF1A0000
 CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_DEBUG_UART=y
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-orangepi.dtb"
-# CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 # CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
 CONFIG_SPL_STACK_R=y
diff --git a/configs/phycore-rk3288_defconfig b/configs/phycore-rk3288_defconfig
index 4c48d42299..2f10c7a3b3 100644
--- a/configs/phycore-rk3288_defconfig
+++ b/configs/phycore-rk3288_defconfig
@@ -16,7 +16,6 @@ CONFIG_USE_PREBOOT=y
 CONFIG_SILENT_CONSOLE=y
 CONFIG_CONSOLE_MUX=y
 CONFIG_DEFAULT_FDT_FILE="rk3288-phycore-rdk.dtb"
-# CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_STACK_R=y
 CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x2000
diff --git a/configs/popmetal-rk3288_defconfig b/configs/popmetal-rk3288_defconfig
index f732f6b209..512efee1a9 100644
--- a/configs/popmetal-rk3288_defconfig
+++ b/configs/popmetal-rk3288_defconfig
@@ -16,7 +16,6 @@ CONFIG_USE_PREBOOT=y
 CONFIG_SILENT_CONSOLE=y
 CONFIG_CONSOLE_MUX=y
 CONFIG_DEFAULT_FDT_FILE="rk3288-popmetal.dtb"
-# CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_STACK_R=y
 CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x2000
diff --git a/configs/puma-rk3399_defconfig b/configs/puma-rk3399_defconfig
index 55255bf6af..30c7ab2751 100644
--- a/configs/puma-rk3399_defconfig
+++ b/configs/puma-rk3399_defconfig
@@ -16,7 +16,6 @@ CONFIG_SPL_TEXT_BASE=0xff8c2000
 CONFIG_SPL_FIT_GENERATOR="board/theobroma-systems/puma_rk3399/fit_spl_atf.sh"
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-puma-haikou.dtb"
 CONFIG_MISC_INIT_R=y
-# CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 # CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
 CONFIG_SPL_STACK_R=y
diff --git a/configs/roc-pc-rk3399_defconfig b/configs/roc-pc-rk3399_defconfig
index 305baa712c..bf83b25dbc 100644
--- a/configs/roc-pc-rk3399_defconfig
+++ b/configs/roc-pc-rk3399_defconfig
@@ -8,7 +8,6 @@ CONFIG_DEBUG_UART_BASE=0xFF1A0000
 CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_DEBUG_UART=y
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-roc-pc.dtb"
-# CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 # CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
 CONFIG_SPL_STACK_R=y
diff --git a/configs/rock-pi-4-rk3399_defconfig b/configs/rock-pi-4-rk3399_defconfig
index 2c01bf1f87..4429f58fde 100644
--- a/configs/rock-pi-4-rk3399_defconfig
+++ b/configs/rock-pi-4-rk3399_defconfig
@@ -9,7 +9,6 @@ CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_DEBUG_UART=y
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-rock-pi-4.dtb"
 CONFIG_MISC_INIT_R=y
-# CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 # CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
 CONFIG_SPL_STACK_R=y
diff --git a/configs/rock960-rk3399_defconfig b/configs/rock960-rk3399_defconfig
index ec32e6cf05..7b6dc3f83c 100644
--- a/configs/rock960-rk3399_defconfig
+++ b/configs/rock960-rk3399_defconfig
@@ -9,7 +9,6 @@ CONFIG_DEBUG_UART_BASE=0xFF1A0000
 CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_DEBUG_UART=y
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-rock960.dtb"
-# CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 # CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
 CONFIG_SPL_STACK_R=y
diff --git a/configs/rockpro64-rk3399_defconfig b/configs/rockpro64-rk3399_defconfig
index 49e27c91cb..955b717131 100644
--- a/configs/rockpro64-rk3399_defconfig
+++ b/configs/rockpro64-rk3399_defconfig
@@ -10,7 +10,6 @@ CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_DEBUG_UART=y
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-rockpro64.dtb"
 CONFIG_MISC_INIT_R=y
-# CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 # CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
 CONFIG_SPL_STACK_R=y
diff --git a/configs/tinker-rk3288_defconfig b/configs/tinker-rk3288_defconfig
index 83c3450839..894e7d1e12 100644
--- a/configs/tinker-rk3288_defconfig
+++ b/configs/tinker-rk3288_defconfig
@@ -16,7 +16,6 @@ CONFIG_USE_PREBOOT=y
 CONFIG_SILENT_CONSOLE=y
 CONFIG_CONSOLE_MUX=y
 CONFIG_DEFAULT_FDT_FILE="rk3288-tinker.dtb"
-# CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_STACK_R=y
 CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x2000
diff --git a/configs/tinker-s-rk3288_defconfig b/configs/tinker-s-rk3288_defconfig
index 4925b14821..6215aa2d61 100644
--- a/configs/tinker-s-rk3288_defconfig
+++ b/configs/tinker-s-rk3288_defconfig
@@ -15,7 +15,6 @@ CONFIG_DEBUG_UART=y
 CONFIG_USE_PREBOOT=y
 CONFIG_SILENT_CONSOLE=y
 CONFIG_DEFAULT_FDT_FILE="rk3288-tinker-s.dtb"
-# CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_STACK_R=y
 CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x300000
diff --git a/configs/vyasa-rk3288_defconfig b/configs/vyasa-rk3288_defconfig
index 9497f0dd0f..6cb7f13e49 100644
--- a/configs/vyasa-rk3288_defconfig
+++ b/configs/vyasa-rk3288_defconfig
@@ -14,7 +14,6 @@ CONFIG_DEBUG_UART=y
 CONFIG_USE_PREBOOT=y
 CONFIG_SILENT_CONSOLE=y
 CONFIG_DEFAULT_FDT_FILE="rk3288-vyasa.dtb"
-# CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_STACK_R=y
 CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x2000
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
