Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75A2C2D7BA
	for <lists+linux-rockchip@lfdr.de>; Wed, 29 May 2019 10:26:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WxEtMh1bpfZ+oj8XHAFXXuJUtHwdlU0pa3QzSu4YAMI=; b=apXV/w+HwbmaVU
	8YrHWG4sP9KCml/CAMtvKyi/wtb6a6M1ZycT2+nFB+HQYFDAK2LtG5g2FeS2BVr5pHqUOLHVKGc/Q
	eAUHyMvwRDz3inTX/nkubHgmC5kB1NvJnKWxfOrcHTcfhEB1qRN2pbj6qoN7ysfgNUCGe8S/53jWj
	0FS3yI8T66ysx3AyEJvSWB+8jX1b5BMXJiZCI+q//Hb9Wx3cLBmjEEerf6WgdrQDL8EOoiMJ1la17
	WV+r19mAWQuXkRylv3JRWoevCS76ln5DEWWePybY01+1kVw/Y4SbUO16b3+XDu9Dh/xHp5Gnyr81r
	7XYmp07BkRnhUQ1zEmdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVtuN-0002xW-28; Wed, 29 May 2019 08:26:03 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVtuJ-0002vP-LC
 for linux-rockchip@lists.infradead.org; Wed, 29 May 2019 08:26:01 +0000
Received: by mail-pf1-x441.google.com with SMTP id u22so1151753pfm.3
 for <linux-rockchip@lists.infradead.org>; Wed, 29 May 2019 01:25:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+IIoainpEgjPDSlBKmuap0EWa85XkFgOxLZdBZu3uNQ=;
 b=mF3MRkbPN1wyrTowt0I1MK95b+XpYsNJUdhJZnSwTadja8GOjMDLOn5/mP+XML8QOF
 TcXC+QXvl4Sc1/xdLnzhzEaF/hn8maNnnPT4gc64YcQooxPdHmMNCSx9X5n+LMrlK+DY
 ZNhFG5txZDH204ifvuEa5uXbIltuuIlx1dDnY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+IIoainpEgjPDSlBKmuap0EWa85XkFgOxLZdBZu3uNQ=;
 b=apIQYyEuVgf0IKHLGw2qdDcY9M6vS1lKu9RoSCsZ4PUsrurQ76k9B42R8fBiFhJpbi
 0EXi2Jg0ZciM6ZdImu6PQhtQrFFxJXAj44b7gYPjGWfUgfMxbqWHdeqjf/5w1/EZawhQ
 ks8jX4rkmJz2SwNcAH0UxqnDVTUc3FL03cLsnrmlVFV8rpg5iOCE1M18x2CCoVeDEyF3
 FsSyXcbf3/Fgsh8uwsfJ744OVjQV/nedmIFIbtsF9dyCmq+GqAykRiO8ddHjCpzDWCQP
 v3QhUUO3r0FMLGt7h3IXvgN3O4AvZALFiEFP+aspkAKtYAbvdGBYTvNWZ/5U/40YCaDE
 XbeA==
X-Gm-Message-State: APjAAAWEfVtQvNseMtcrLbJewA3dfKFXBb2lh5Gj6ewpRPc5DH/M+uaV
 CqlmeogFb/EQrLQhkiPLHUObVA==
X-Google-Smtp-Source: APXvYqx4hMrSHxVadEk9ox/8PthuLwUEK/5XpMonrZySXLUGD77r0bFblmis2DVJXfJf19QBlOhe6w==
X-Received: by 2002:aa7:804c:: with SMTP id y12mr72583147pfm.94.1559118358366; 
 Wed, 29 May 2019 01:25:58 -0700 (PDT)
Received: from localhost.localdomain ([49.206.202.218])
 by smtp.gmail.com with ESMTPSA id d186sm22230332pfd.183.2019.05.29.01.25.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 May 2019 01:25:57 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v2 1/3] rk3399: orangepi: Enable TPL
Date: Wed, 29 May 2019 13:55:47 +0530
Message-Id: <20190529082549.32021-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_012600_202616_18B8FD25 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

Enable TPL for OrangePI rk3399 board.

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- rebase on master

 configs/orangepi-rk3399_defconfig | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/configs/orangepi-rk3399_defconfig b/configs/orangepi-rk3399_defconfig
index 0f5edef429..82ec24205e 100644
--- a/configs/orangepi-rk3399_defconfig
+++ b/configs/orangepi-rk3399_defconfig
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
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-orangepi.dtb"
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
