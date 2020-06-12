Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7BF1F73FA
	for <lists+linux-rockchip@lfdr.de>; Fri, 12 Jun 2020 08:41:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QFCEP2ZNeQkfZ90dx47CQf+dV/tdy+Yyyo7spzNkmN8=; b=aEMQylabwG+GD9
	xMiYD/iW1OdNku+jAnf6BxJRkKTUxl+kt8X3JYWeu83NWcJ1lVmCpwyXxOp2F2QsOeHpdI0CqfRF1
	CUyBy2GmKYka8oDecxSuV//WVwGXPpd4oKhYxPXCn8rFJEqWrlJwrO1ZODWex61Jv3t40075gdi3a
	QVrCJcietUiui0Y6ZRNqGfHzDhdDKs5JikcqW0q1b/fLE2J5BYegBhp9e1kwRq2uNu4oc9VO0H5e3
	X1y9F/Ywo2YvLzN3m2X/XnjBVQ0f7hhzCAVtxldq9kFABvhan13eJgWBU5Olh1fkQfm/u7qblnfzu
	4cMCsVlqE/hql/m19N1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjdNW-0003or-QS; Fri, 12 Jun 2020 06:41:26 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjdNS-0003o4-Hg
 for linux-rockchip@lists.infradead.org; Fri, 12 Jun 2020 06:41:24 +0000
Received: by mail-pg1-x543.google.com with SMTP id w20so3681000pga.6
 for <linux-rockchip@lists.infradead.org>; Thu, 11 Jun 2020 23:41:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wmiPMghMGOtJCYLz+C5PRYRGc3ipl34CadpNrrWCvwY=;
 b=GIcIDdlN0Q+GPOB6ghTJvxuY2lHTTeDLWNwKYBFbRrYPOoBBMWLGnd4wIm2LwyArOu
 7hFjvLYByi/7Kw3gAkgvDawhWM/++94CTLiMHKmzk6P2FocQ+cE3tGJ+OXwjoT+G7ntV
 BfEIuRHk1IP+EDNYx8VLJ3QLBbw9COhYVBdtk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wmiPMghMGOtJCYLz+C5PRYRGc3ipl34CadpNrrWCvwY=;
 b=EQp2mJsagcuowg5Gw2GoKvS3l8v7lvzvFCsbFNPxM9wfq+Ku7BDBVgmoaUgjjPYEa8
 pkRDByYFV3hrebEez/87fev7oXKl9Fi7aH8xbK0Q7ZOECyB8Lka+y+8lT9WkfvXOXrt7
 V2zQkvwSTy5saJd9ipsCnlT4oMMLNmOk6YgQjfenVpetSygYpay1sjgQJi0pYl0U2g/y
 lgfyu37r5eLLbVY8QaovnBVFqn7SSyvLG9ZZZJu5b74EPZfbhLKrKHCn4auera4dDXm3
 PjYsPf+856V7AL1ufxO7WxqtUw38nX3oGyqxvTqUcNHTYsk3vnVaYjSAPetNja06rnSa
 BcdQ==
X-Gm-Message-State: AOAM532ypokvrQu3BYTZXOhaKuSu2O5Gs5PKTwblbSk5N1prT6EBMgkw
 nhHuvlmAx1DqUEiqiQysfv8BaDLxgEnSmQ==
X-Google-Smtp-Source: ABdhPJxo78iYwHudKTqOhNyKyP69NR4Q70v11slBFtyPkfK8dLvj3F2zNJ5ZcZ0CFp2DxMYA9Yflmw==
X-Received: by 2002:a62:1654:: with SMTP id 81mr10755734pfw.137.1591944080970; 
 Thu, 11 Jun 2020 23:41:20 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:b5c9:c9f3:725c:9867])
 by smtp.gmail.com with ESMTPSA id j19sm5033878pfn.109.2020.06.11.23.41.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Jun 2020 23:41:20 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>
Subject: [PATCH 1/2] rock-pi-4: Enable USB Gadget
Date: Fri, 12 Jun 2020 12:11:06 +0530
Message-Id: <20200612064108.459227-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_234123_013278_2D1CA050 
X-CRM114-Status: UNSURE (   6.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Enable USB gadget for rock-pi-4 boards.

This would help to use fastboot by default.

Note: Connect the Host USB cable (Port A or C) to rock-pi-4
Upper USB 3.0 port.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 configs/rock-pi-4-rk3399_defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/configs/rock-pi-4-rk3399_defconfig b/configs/rock-pi-4-rk3399_defconfig
index f3eeef0293..a4b322074c 100644
--- a/configs/rock-pi-4-rk3399_defconfig
+++ b/configs/rock-pi-4-rk3399_defconfig
@@ -8,6 +8,7 @@ CONFIG_NR_DRAM_BANKS=1
 CONFIG_DEBUG_UART_BASE=0xFF1A0000
 CONFIG_DEBUG_UART_CLOCK=24000000
 CONFIG_DEBUG_UART=y
+# CONFIG_ANDROID_BOOT_IMAGE is not set
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-rock-pi-4.dtb"
 CONFIG_MISC_INIT_R=y
 CONFIG_DISPLAY_BOARDINFO_LATE=y
@@ -57,6 +58,7 @@ CONFIG_USB_EHCI_HCD=y
 CONFIG_USB_EHCI_GENERIC=y
 CONFIG_USB_DWC3=y
 CONFIG_USB_DWC3_GENERIC=y
+CONFIG_USB_GADGET=y
 CONFIG_USB_HOST_ETHER=y
 CONFIG_USB_ETHER_ASIX=y
 CONFIG_USB_ETHER_ASIX88179=y
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
