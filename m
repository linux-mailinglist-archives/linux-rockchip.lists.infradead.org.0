Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7C37101D42
	for <lists+linux-rockchip@lfdr.de>; Tue, 19 Nov 2019 09:27:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mbztQg/NvB5yhS706IqN6lblQ3quV76UyzfLeDK+ye4=; b=aOOzbMbA7eZTAU
	YOi1Wto5QDDPTJ0+zYHBTEjEYCIL1dR/wkCRS/Gzxb95pIAj3x0TSZhzcpWJVZRvlj/lzOzERiOCj
	zQwoy5YcN/gq8mdqEQdoCnMYposaL4nEdoPyo9a9xFcL06OvD5hCvcukRnIdWqNxYN/LzayfjRmWI
	vI/tUSijusPsrksCw6sNEsmhxvIVSTqdRrbjhocb/NDGiYaLbFcfr/Nv74gwKYwzL2zUB25bMwooM
	qoyQPkOPP88RuOFJLdnhJcnkyVATauehajUkOxTRBgUVxskKJmbIPuMRVjJBDynVNU1xbWu9yJZGr
	9RKfZBB7IvWqhnxrfq0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWyqs-00023m-NC; Tue, 19 Nov 2019 08:27:10 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWyqm-0001yc-RW
 for linux-rockchip@lists.infradead.org; Tue, 19 Nov 2019 08:27:08 +0000
Received: by mail-pj1-x102f.google.com with SMTP id s8so2385326pji.2
 for <linux-rockchip@lists.infradead.org>; Tue, 19 Nov 2019 00:27:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8o7coaIQPe7QB3fuJO1ULMoonw3x0xMnjKhtjDwulfg=;
 b=C5gIZVna/6rkEmBAYvl8vRHgFvyRsxT20kPKYLE329WdRkIsqKEiX2z15bYnzvsfLk
 8HMOWOcl/LfdFczKZQOsouPVoJ37lofuJ5PnS2TaaiH5fIUbKBgFz7zg9PkmW1CnhptF
 I3g6EzXSnplsv6t9ggpSX8NFLgl1RcJ12PNk4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8o7coaIQPe7QB3fuJO1ULMoonw3x0xMnjKhtjDwulfg=;
 b=aZJMyozkE2HCuaRQSOLddTEaBSf9TVAXU7MM8eHtqO+RRUabViuFzpA9ihnSiAMYjp
 AiwKXcVeVYCwYMMN4rpq+epZBbvZfRdgFlb98GmeusVSUT/ALtik1YmKFnkXbTgfEEMn
 WlJtJETV3XdAVV7D854DMWNwc5NAdM3FKkC4xddFZlwv18f7ONHYTLF8CUafsbvee/8g
 m1NzfJ87d/Ue5zrWSuyQ/WkR0mlJoHz1RGsR6tgptAPxkY6/6pSx9tAizaSskTqYLXZI
 TTBxGj9z+nEgiW4xc8z36XwnpsqwjJ/YTCDsgRvx1V4g6BMgQjCvuVox7idIswX0XioT
 j32Q==
X-Gm-Message-State: APjAAAXgMnjKw45ShCzkJGx8QaoGywoybCYehNx34Rq1MaWha7HEm1tk
 nKAfvOFSC+uxKOy5reYN+wVcBA==
X-Google-Smtp-Source: APXvYqw9dawgzIVgd9d+Bg0h+iZuKdUosLXpO/UGqb3xJV5UC0aq3VpESpTxIO5/wz8Axqx4O+Rurw==
X-Received: by 2002:a17:90b:30ca:: with SMTP id
 hi10mr4717512pjb.143.1574152024028; 
 Tue, 19 Nov 2019 00:27:04 -0800 (PST)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id u7sm2312221pjx.19.2019.11.19.00.27.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Nov 2019 00:27:03 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v2 10/10] rock960: Enable USB Gadget
Date: Tue, 19 Nov 2019 13:56:23 +0530
Message-Id: <20191119082623.6165-11-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191119082623.6165-1-jagan@amarulasolutions.com>
References: <20191119082623.6165-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_002704_902903_568811CD 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: u-boot@lists.denx.de, Levin Du <djw@t-chip.com.cn>,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Enable DWC3 core, gadget for rock960 board.

This would help to use fastboot by default.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 configs/rock960-rk3399_defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/configs/rock960-rk3399_defconfig b/configs/rock960-rk3399_defconfig
index 979ca0f93b..d0ad6865cf 100644
--- a/configs/rock960-rk3399_defconfig
+++ b/configs/rock960-rk3399_defconfig
@@ -57,6 +57,8 @@ CONFIG_USB_ETHER_ASIX88179=y
 CONFIG_USB_ETHER_MCS7830=y
 CONFIG_USB_ETHER_RTL8152=y
 CONFIG_USB_ETHER_SMSC95XX=y
+CONFIG_USB_GADGET=y
+CONFIG_USB_DWC3=y
 CONFIG_USE_TINY_PRINTF=y
 CONFIG_SPL_TINY_MEMSET=y
 CONFIG_ERRNO_STR=y
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
