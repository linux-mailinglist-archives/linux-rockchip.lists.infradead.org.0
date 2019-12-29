Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4387612CA8A
	for <lists+linux-rockchip@lfdr.de>; Sun, 29 Dec 2019 20:07:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WKH0t105k4DEladYE3hDvXnpU1uXTaWcMCddppT12Bg=; b=sxe4k4bLGwemgO
	3eFN+hjAAFnW2H/448cVHg5I1eIz7YFXmvSbSCmeHPzSKQ3bA6l2OVXPFuv6TFc4+gKNxVsNSxziS
	j7+SUkWyXbzL4YX7IJGdyHqun53aSD5BFV5Ceh0OkTPR9OHq37CApqNgbye4QLcweIYfCEBULIP4H
	8u5MB9WqhJLsXMw7Nv6o3Rj1cb5De1EF8LDEvkFEvBbBeZUJBKS7OIsJURuwq9LD0rhyn5MHLlL8U
	8p1A1Gu9FU62N9XoBfXLpZ7og3koyizE67mDwFEPKecVWp3DH94rIBhBlNgcZiciaCLmii0eax5Xx
	zOwG6sJOy5JOCtHbB+TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ildus-0003XF-39; Sun, 29 Dec 2019 19:07:54 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ildun-0003Su-9X
 for linux-rockchip@lists.infradead.org; Sun, 29 Dec 2019 19:07:51 +0000
Received: by mail-pl1-x62d.google.com with SMTP id az3so13807062plb.11
 for <linux-rockchip@lists.infradead.org>; Sun, 29 Dec 2019 11:07:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OtmZ1qNSWxmpJa/T/TO3AWHJUxH5xCu1/l+KuQn3jHY=;
 b=rGWVofWiCGfIYwYBth2gtUfT9axcs5vhdjB5K4ukvqXEyLx16ioT3kbdSu2w0oEuXs
 eq5zXsbKRv7RWwWs0nHYG5RnRmCZuMdDGRRnZSo+Z9BhMr4ZUn6yUCCWqOFVbo2q/d6b
 SF4bK/NN5UMsbPBtIe1CuMJji4m6TCcD4HSUE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OtmZ1qNSWxmpJa/T/TO3AWHJUxH5xCu1/l+KuQn3jHY=;
 b=NSX/y33B1j1kQgkPjNa1nMZNJ+7zsTE3XIz8xsSYpMHco0DzzFIU5slHv5wy+GdpjC
 eSDTWg6kOotelbXjXgfHYm7enfqX3DeQyn1sIhk291KQ3mdwg3KMf38q5nrhiw3b7m2p
 M7vuZYHa1PJPr0issuyDgaNpdNkp0aR+74rafY+FpxEE/OmrS+ynabzLRwwYod+D3YN6
 pq5cfMjCogy9G1HNcZWnC9bSVzxssTpf/fifa4RyZPY/5Rqcxp+DOXkZp1TjgpXkg+ar
 OO6XAy1OA0k0XUrGN+H97AYp7htIrHrpPjJIpVNtgMkkuLhbN7SvbjWRoQ+Zg1VFWwmN
 e5FQ==
X-Gm-Message-State: APjAAAUMyK7wzZa6/ejopzPspvORXfgNdIXZvH1+Hs7SM9tXGYVqzsr9
 idrGc7XOmOOoHee/0el95ciAgg==
X-Google-Smtp-Source: APXvYqyohH38JB15uZnFQkSeUwG8TpPO4G06NfAZEz54AvPVRUedH1C5OGtQuzBOhmrzb5tyORblBg==
X-Received: by 2002:a17:90a:9dc3:: with SMTP id
 x3mr41208196pjv.45.1577646465774; 
 Sun, 29 Dec 2019 11:07:45 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c809:c7d5:f590:ce0e:1ce1:c326])
 by smtp.gmail.com with ESMTPSA id u10sm44879700pgg.41.2019.12.29.11.07.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Dec 2019 11:07:45 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v3 2/5] rockchip: rk3399: Enable DISPLAY_CPUINFO
Date: Mon, 30 Dec 2019 00:37:23 +0530
Message-Id: <20191229190726.29266-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191229190726.29266-1-jagan@amarulasolutions.com>
References: <20191229190726.29266-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_110749_340699_34A80133 
X-CRM114-Status: UNSURE (   7.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62d listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de,
 linux-amarula@amarulasolutions.com, Akash Gajjar <akash@openedev.com>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

RK3288, RK3399 are now support cpu-info, so enable
DISPLAY_CPUINFO by default.

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
