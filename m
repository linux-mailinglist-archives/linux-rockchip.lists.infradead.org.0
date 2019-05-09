Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43DC31889A
	for <lists+linux-rockchip@lfdr.de>; Thu,  9 May 2019 12:58:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+odbJjoPyAtTPouWxzYeEb6b2DL8AnqxvoaqZGXyAxU=; b=WAZ7SvHIuE1sta
	aijzCzPl6kqHFVtZ+YucxBAoUtFLu88j2ycSexMBWRdfQXkkq0RG7D3BSfV+z+Xnf5GZUP2ZHCi3N
	7R7IVEwPgMTaZmOxjTU6tHnbGNhFkzGbD65trWJPc86rz7qK4J08QwxhRxpNwwZsIlslYav2pVmk8
	jvcXwhCN5Sqbt+x7K+cDuR/h0+YFF/6p4C7xGtg38SkTX7koU1A2aW8fXTmkdZrVQztGoakClt/HW
	GDj9Bm1XJiBBdoDxWi2Q84Tc5EukUdv9GY5X2jVle2fvAMuJbNqgQg/sEUfVz5fSv8ck0EWFe6wgd
	WYGxL7vn6GhHM8wgVlnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOgkh-0003WY-B1; Thu, 09 May 2019 10:58:15 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOgkd-0003U2-HV
 for linux-rockchip@lists.infradead.org; Thu, 09 May 2019 10:58:12 +0000
Received: by mail-pg1-x544.google.com with SMTP id j26so1031774pgl.5
 for <linux-rockchip@lists.infradead.org>; Thu, 09 May 2019 03:58:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PVvkMHM8eCl3XFlAoaCu1kuWFXWPc141Ac833IvB/0I=;
 b=U9GVA3XSl/WzWnZRdMJToV5GX+KqjRKMr2NoG7p1Afx7D2GjFX/zoXHRBXFApN347n
 /K/P1MsyHYQAbCj7/MLXlL9bq5jBxzoCOqAVzqi+/q17REZZkmnWKb1H9zKoH5frHRiG
 iG4cDlm8dGpp3bgCd0OqXDyZ2mFhCJVj8C02U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PVvkMHM8eCl3XFlAoaCu1kuWFXWPc141Ac833IvB/0I=;
 b=jwCRYUcrAbgeRQkn4oS0js3twnkH3Dw6GtG2m3DjVjPE8329YJnCJ9CABkWWdW55wC
 vXT4C5xGTBnGhWzhGMzbUAPeV8PqBatyKvzmb0E+ly14VLjzSN+TiBvELHOsWQ1/Sqnv
 LNBNDT2NEr2WbjMUP2tk7dXH7gP5vxD+JQixASoFKeT89d91IsvpctRdua080gS3R4Ig
 cKDhajmCO1zkYtNuJ05tUZ0RUxJB8ag4xNtkVOUbN+lyX5bYsdVYxH3goAIWIPvSX7kF
 t33JvgnEPqDZfzKcKwIGm3JkjNNtVVHcEmNGBovp/os/nLlnF6/+ggYMeX6qt1+qN/Rn
 PfNQ==
X-Gm-Message-State: APjAAAUxz6fOoktZ7HE8KXYjyViuYXEPV4p7rJ6FReOP2F8qSwYzsI+U
 a3tnNm7D+7nQHc0TRE0hkr7amA==
X-Google-Smtp-Source: APXvYqz+ozJnJNlh31ski015+FzG4r1na6KTlN2Zvw8uOF/RNBCqqJMO54nxVM8Ksu7mEAFRnaEB/g==
X-Received: by 2002:aa7:8493:: with SMTP id u19mr3921757pfn.233.1557399488689; 
 Thu, 09 May 2019 03:58:08 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id n184sm5996234pfn.21.2019.05.09.03.58.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 May 2019 03:58:08 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 2/3] rk3399: nanopi4: Enable TPL
Date: Thu,  9 May 2019 16:27:45 +0530
Message-Id: <20190509105746.24830-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190509105746.24830-1-jagan@amarulasolutions.com>
References: <20190509105746.24830-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_035811_576410_66F2C2D4 
X-CRM114-Status: UNSURE (   8.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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

Enable TPL for NanoPC T4, NanoPI M4 boards.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 configs/nanopc-t4-rk3399_defconfig | 7 ++++---
 configs/nanopi-m4-rk3399_defconfig | 7 ++++---
 2 files changed, 8 insertions(+), 6 deletions(-)

diff --git a/configs/nanopc-t4-rk3399_defconfig b/configs/nanopc-t4-rk3399_defconfig
index d9f2137b4c..9b7e15d63a 100644
--- a/configs/nanopc-t4-rk3399_defconfig
+++ b/configs/nanopc-t4-rk3399_defconfig
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
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-nanopc-t4.dtb"
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
 CONFIG_DEFAULT_DEVICE_TREE="rk3399-nanopc-t4"
 CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
@@ -56,4 +56,5 @@ CONFIG_USB_ETHER_MCS7830=y
 CONFIG_USB_ETHER_RTL8152=y
 CONFIG_USB_ETHER_SMSC95XX=y
 CONFIG_USE_TINY_PRINTF=y
+CONFIG_SPL_TINY_MEMSET=y
 CONFIG_ERRNO_STR=y
diff --git a/configs/nanopi-m4-rk3399_defconfig b/configs/nanopi-m4-rk3399_defconfig
index c2832788f0..92e70dd939 100644
--- a/configs/nanopi-m4-rk3399_defconfig
+++ b/configs/nanopi-m4-rk3399_defconfig
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
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-nanopi-m4.dtb"
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
 CONFIG_DEFAULT_DEVICE_TREE="rk3399-nanopi-m4"
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
