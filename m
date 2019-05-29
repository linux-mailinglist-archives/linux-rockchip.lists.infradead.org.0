Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7CA42D7BB
	for <lists+linux-rockchip@lfdr.de>; Wed, 29 May 2019 10:26:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A42FxV2XlvQ9PIHJ/HE3PTumv/DptjVZ3AEuvaEBjL4=; b=aDJFPnrkjJOsyL
	M7xuu+Y9ByTYzRGJVwDKvnLce7vfiik2Y9pR+saXY7IrTj1g7uOoOh7RIdZ0ceEB+5ii7S+6d1IiZ
	UCI/c9jTmnovxZeNZlQM47XkuTqq+EAaq+iIn9N/O6o9fAyXfenJRjsh77VBPKEcMK3PbyUeliNB0
	oe2B1W1T/LtaOMrD+QOlHwEKAuvpnA+31kMo1QpWSh3ykdhYIhGaoJpbJdQucO4HHpY8AqEnKiE+j
	WHE3ivpsgOznH0+ilG2/rn9kOnKyuCbHkP7PyyPfTfcbJyYav11BtQkKX+6Q6r+BNo/1B5XdU9cgX
	EFBzvBv81Tl2OM+YIBDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVtuP-0002zu-LM; Wed, 29 May 2019 08:26:05 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVtuM-0002ww-0N
 for linux-rockchip@lists.infradead.org; Wed, 29 May 2019 08:26:03 +0000
Received: by mail-pl1-x643.google.com with SMTP id g9so745740plm.6
 for <linux-rockchip@lists.infradead.org>; Wed, 29 May 2019 01:26:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vK8A7dWb+SD/clgRgMkpFbQzuQ4fWONhuZ/PfL7LM4I=;
 b=bZUAXWRUiB3uzYRale6RufRsKQGIFFsjQrpCkleVEXmvlw51jbkaUvSa553BJPs6iq
 CSXnBfCU083fQx6vz9ZDrhdAPeq747G9jQVY4u32yVKcuAIAnmALp5Wq6d+cPjRQQMTi
 Q20q3vGZETOx0beky6U5OKnr83U7HOqRkWvLM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vK8A7dWb+SD/clgRgMkpFbQzuQ4fWONhuZ/PfL7LM4I=;
 b=M7R4No8R1p9zPazcSkm7o4xdjAIXkQxDsda+hYXJmYjTDVG1IrD9+BEM0Gi+ToncVm
 vS2+BPqWKx+pOF6r6lwu05RslBjqWyDe3Pswh8TAIBXx7ztWUXLY5blQmhrdh8SLJH0O
 NKoCOxyxgZOT4tUc2BqXI19gfI/V5anP4vctG3V+s9vbm+1PC3tMVxMc8+FpGmz2idVS
 HfBJOpLd5dr1JxaaBinqqWxA9RdNbj0KtPDeQvjZgr5PFwuL6n3XlxX//65NEEGcBlkG
 cZuTzsxGrbkTm37+O++Emdy7vnQbs2K/tMiqkAf9z6UEY4I8yLKnJZ87e0i5vWjp2hW+
 2tbw==
X-Gm-Message-State: APjAAAXmzKh7A282ei+dnVbjOnwLmeAkBIp4KyMkOy6ebUdlAgwxV86D
 CVBK/9GR0fvCmyCuI/wD9in/9g==
X-Google-Smtp-Source: APXvYqyw7n61zmbR4MCrGynd2kfU5l97mpO8VEeZmonOUle5RKNwiW2P6pYCBMdbQvs+uuaTfqBOGw==
X-Received: by 2002:a17:902:778d:: with SMTP id
 o13mr78200974pll.275.1559118361097; 
 Wed, 29 May 2019 01:26:01 -0700 (PDT)
Received: from localhost.localdomain ([49.206.202.218])
 by smtp.gmail.com with ESMTPSA id d186sm22230332pfd.183.2019.05.29.01.25.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 May 2019 01:26:00 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v2 2/3] rk3399: nanopi4: Enable TPL
Date: Wed, 29 May 2019 13:55:48 +0530
Message-Id: <20190529082549.32021-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190529082549.32021-1-jagan@amarulasolutions.com>
References: <20190529082549.32021-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_012602_067129_F91CE74C 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- rebase on master

 configs/nanopc-t4-rk3399_defconfig | 7 ++++---
 configs/nanopi-m4-rk3399_defconfig | 7 ++++---
 2 files changed, 8 insertions(+), 6 deletions(-)

diff --git a/configs/nanopc-t4-rk3399_defconfig b/configs/nanopc-t4-rk3399_defconfig
index 37df3f34bc..7863e45db9 100644
--- a/configs/nanopc-t4-rk3399_defconfig
+++ b/configs/nanopc-t4-rk3399_defconfig
@@ -5,7 +5,7 @@ CONFIG_SPL_LIBCOMMON_SUPPORT=y
 CONFIG_SPL_LIBGENERIC_SUPPORT=y
 CONFIG_SYS_MALLOC_F_LEN=0x4000
 CONFIG_ROCKCHIP_RK3399=y
-CONFIG_ROCKCHIP_SPL_RESERVE_IRAM=0x4000
+CONFIG_ROCKCHIP_SPL_RESERVE_IRAM=0x50000
 CONFIG_NR_DRAM_BANKS=1
 CONFIG_SPL_STACK_R_ADDR=0x80000
 CONFIG_DEBUG_UART_BASE=0xFF1A0000
@@ -14,9 +14,9 @@ CONFIG_DEBUG_UART=y
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-nanopc-t4.dtb"
 # CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
-CONFIG_SPL_TEXT_BASE=0xff8c2000
 CONFIG_SPL_STACK_R=y
-CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x4000
+CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x10000
+CONFIG_TPL=y
 CONFIG_CMD_BOOTZ=y
 CONFIG_CMD_GPT=y
 CONFIG_CMD_MMC=y
@@ -56,4 +56,5 @@ CONFIG_USB_ETHER_MCS7830=y
 CONFIG_USB_ETHER_RTL8152=y
 CONFIG_USB_ETHER_SMSC95XX=y
 CONFIG_USE_TINY_PRINTF=y
+CONFIG_SPL_TINY_MEMSET=y
 CONFIG_ERRNO_STR=y
diff --git a/configs/nanopi-m4-rk3399_defconfig b/configs/nanopi-m4-rk3399_defconfig
index 68fd9ff79b..8b9237c5ed 100644
--- a/configs/nanopi-m4-rk3399_defconfig
+++ b/configs/nanopi-m4-rk3399_defconfig
@@ -5,7 +5,7 @@ CONFIG_SPL_LIBCOMMON_SUPPORT=y
 CONFIG_SPL_LIBGENERIC_SUPPORT=y
 CONFIG_SYS_MALLOC_F_LEN=0x4000
 CONFIG_ROCKCHIP_RK3399=y
-CONFIG_ROCKCHIP_SPL_RESERVE_IRAM=0x4000
+CONFIG_ROCKCHIP_SPL_RESERVE_IRAM=0x50000
 CONFIG_NR_DRAM_BANKS=1
 CONFIG_SPL_STACK_R_ADDR=0x80000
 CONFIG_DEBUG_UART_BASE=0xFF1A0000
@@ -14,9 +14,9 @@ CONFIG_DEBUG_UART=y
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-nanopi-m4.dtb"
 # CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
-CONFIG_SPL_TEXT_BASE=0xff8c2000
 CONFIG_SPL_STACK_R=y
-CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x4000
+CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x10000
+CONFIG_TPL=y
 CONFIG_CMD_BOOTZ=y
 CONFIG_CMD_GPT=y
 CONFIG_CMD_MMC=y
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
