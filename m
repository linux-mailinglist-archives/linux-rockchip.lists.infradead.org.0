Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6083918899
	for <lists+linux-rockchip@lfdr.de>; Thu,  9 May 2019 12:58:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=f/+njcnU2GjSbznvB/c4nKucrOEOICi/BiIOxfQtE/M=; b=RVvI1qWSggfd9d
	/iJUfilZmo+RH6NEEe6uY6HpmpDXwpeBShOf6SsaY5qhJxSj9BgLDhSL1TmXtLXsYt7F9uL9tI9wF
	SFwkMDGszjpwOKcI8+9Y2vUnU7RL13YFhpSLV0lgx3ApecaThGYRAVV06QeaRPv7Txwv4laY1Yv0/
	2GOGNZNaFxA6D4x8HBfcOFMk6m0BZVu/iYlZheV3MjPpGSN+y6QKiH7SYzbk+cZkaQMrESgKauKPl
	YUF27RBMcFjfMNxwClsXeq/9gGST6urjKF3CjHDWRjSZuQJuuoIUtG0taZCLK/yiD6JsXR9HMAWd+
	EmLi4eQIQNI1CT4DURrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOgkc-0003U9-IE; Thu, 09 May 2019 10:58:10 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOgkZ-0003Tj-13
 for linux-rockchip@lists.infradead.org; Thu, 09 May 2019 10:58:08 +0000
Received: by mail-pl1-x644.google.com with SMTP id n8so968348plp.10
 for <linux-rockchip@lists.infradead.org>; Thu, 09 May 2019 03:58:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3BaLSFaXh27KRMv4ERNn0Ij45/2FxXOLGY25U/L5i30=;
 b=lnewZWwM3spSh73ADuxF/eR5EOM8H/32m95tfDln+D+zKRl8HS2E6mNJw1Kc6GGo6N
 X8OtuK3ldlzwbgBMPTh0ntQ12Wl9y8UwWfyMxx6NmDeaRaKfqxXjsGyCjEpMEq5hrYTd
 tb3Sdg4Tu+xp/N0VJG9p5EUcJzAi3abrd2p5o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3BaLSFaXh27KRMv4ERNn0Ij45/2FxXOLGY25U/L5i30=;
 b=FSvOl0bKDNQbwetcED12CAMU7n+nmxQRZ130QhhxQhD0PyPOWAv+8IR5pxyYzCk/JB
 hxm3R5P60QVYgbK0nnwB+vFSJ4RI9CgMeI1nz8pUA/UZArgkxJTUTt8Jj2C25Tv4/H6X
 lapUOsZel7DIfth+qGCc0c1R9BeYsDBSP95sdW6nLUK3VX5yugizO/MyxX3FgacL/CsN
 ZByu5iZFWKKPlmTRZbvjAF0NiWPhdOOGu93Z1hDzJA32y77/GkQ5ZdxnO8Tb2EkC3Lvq
 jtsRtwsuT3A4pnUmBOkmQkmw7onvNwAXyGY/ZDdIb3wi0OD0K/4NvDRybuNOYFwfP0hw
 1lrw==
X-Gm-Message-State: APjAAAX+xrAGALOFox+XiInyKJ8nVGnz3ek8JGZGJbwT4Z4hLmrft4RT
 Uj0FpPdBC7sBotyKJ4+C2zVcDg==
X-Google-Smtp-Source: APXvYqyvNAsw7uvQoPKTdxThb92NMQh/vC+OrO/nSr5NPxyZWOwuIwzv1sOvzcQ2zXi0i/RXFnj7Wg==
X-Received: by 2002:a17:902:8483:: with SMTP id
 c3mr3952853plo.19.1557399485115; 
 Thu, 09 May 2019 03:58:05 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id n184sm5996234pfn.21.2019.05.09.03.58.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 May 2019 03:58:04 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 1/3] rk3399: orangepi: Enable TPL
Date: Thu,  9 May 2019 16:27:44 +0530
Message-Id: <20190509105746.24830-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_035807_533368_0E78852C 
X-CRM114-Status: UNSURE (   7.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Enable TPL for OrangePI rk3399 board.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 configs/orangepi-rk3399_defconfig | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/configs/orangepi-rk3399_defconfig b/configs/orangepi-rk3399_defconfig
index 3f02c89983..90021bb695 100644
--- a/configs/orangepi-rk3399_defconfig
+++ b/configs/orangepi-rk3399_defconfig
@@ -5,7 +5,7 @@ CONFIG_SPL_LIBCOMMON_SUPPORT=y
 CONFIG_SPL_LIBGENERIC_SUPPORT=y
 CONFIG_SYS_MALLOC_F_LEN=0x4000
 CONFIG_ROCKCHIP_RK3399=y
-CONFIG_ROCKCHIP_SPL_RESERVE_IRAM=0x4000
+CONFIG_ROCKCHIP_SPL_RESERVE_IRAM=0x50000
 CONFIG_DEBUG_UART_BASE=0xFF1A0000
 CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_SPL_STACK_R_ADDR=0x80000
@@ -14,9 +14,8 @@ CONFIG_NR_DRAM_BANKS=1
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-orangepi.dtb"
 # CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
-CONFIG_SPL_TEXT_BASE=0xff8c2000
 CONFIG_SPL_STACK_R=y
-CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x4000
+CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x10000
 CONFIG_CMD_BOOTZ=y
 CONFIG_CMD_GPT=y
 CONFIG_CMD_MMC=y
@@ -24,6 +23,7 @@ CONFIG_CMD_SF=y
 CONFIG_CMD_USB=y
 # CONFIG_CMD_SETEXPR is not set
 CONFIG_CMD_TIME=y
+CONFIG_TPL=y
 CONFIG_SPL_OF_CONTROL=y
 CONFIG_DEFAULT_DEVICE_TREE="rk3399-orangepi"
 CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
@@ -56,4 +56,5 @@ CONFIG_USB_ETHER_MCS7830=y
 CONFIG_USB_ETHER_RTL8152=y
 CONFIG_USB_ETHER_SMSC95XX=y
 CONFIG_USE_TINY_PRINTF=y
+CONFIG_SPL_TINY_MEMSET=y
 CONFIG_ERRNO_STR=y
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
