Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BEAB3CFA1
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:54:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BjC9JSUGBPjG6ES4K02jgeg0WQD2f21G7KUcissW7ms=; b=qJz9zpuxiT1iFJ
	DmykX30gsZHCCGF4rvasfiBWH4Os19mKmrciDSLy966tyEgIl14HK2XX2C5uaAVriJUNLNYjs+O00
	XT7wPmWzYlCKnuDKKOSIAkSX4gDgHCipvNVhtRookGVJwOXbDH2d1R4j1H5xPZDrSsLImXUrvMnuX
	WDCswQ4KoPa3+8i7Rf5e0bce1kVQIqutQRHmLm0nxvs8Tb1Kpn/7pRon8OlrR+KLjYgseCNAxU44A
	V+2c66ESheeapnlBtyotqm2DC1aZM3RpLxoEYtoYWRX1vglPxQYVaIsmP3fgIw5fq+WAB1ILIi9un
	phNwug09iQer95tI81UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiAZ-0005Yb-SH; Tue, 11 Jun 2019 14:54:39 +0000
Received: from mail-pf1-x433.google.com ([2607:f8b0:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiAW-0005VD-2T
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:54:37 +0000
Received: by mail-pf1-x433.google.com with SMTP id j2so7596621pfe.6
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:54:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UO8s36uD488DPxloYMOirzQDsI0oPxHRDrZXZS1gaH4=;
 b=mAlknVM8Jbxyv7YzrvKcUhQ1vDiBOw/z+zj5WQk63uww6Nd5BZNKp7/4iq4IiQWi43
 su6qDsVv/NLZETxRQEol36RMR6uHJplAIFcD03HHQSgYvF/eGFhjcwLL0ugCbzmKHF83
 gwT5zKkbhHcaUB4Vt/WALSzS80hshcpClcHoU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UO8s36uD488DPxloYMOirzQDsI0oPxHRDrZXZS1gaH4=;
 b=ohHpOcJ8amX4AyxrjDVbvzDh1lQgSlQTHnP1Iw3H1Xa14aIe6dX4/tWsRirzaniCvF
 sigQGGCPLd13pub9iSSG58G6msIcRL16pZdgKnM2tIx/OU45SfVeDfrPNqvegId/8BxS
 wmRVcog0nXUP2dpBGn0UVBI7H/nqTkh1g1R/WXcKc5s/+ooN6gllM9qRmKti50LglSzq
 6WU1K019aeZTJ62UIaDLIlhChUQQUQueTISiNDx0ZJzOirgdqr+1rbkYg6geMBk4FWxf
 v1WXBN70kTC/v+2L3OJ2eTs4AAo75ba+rqqFt5Guo6Vt5T1WhtNJpvvhKWNdB139HG7N
 5M7Q==
X-Gm-Message-State: APjAAAVk0WDvcEUaopAbjruTbI9zhU6j2rSQuQdk4dtMLCSMsQB0YrYW
 I+FE0qWpPI1tQL6OgwEq25IRcA==
X-Google-Smtp-Source: APXvYqxu4NpASje77z1O/PuaICAB5fsaVr369J4Z5RHk69fiG7WbiCjQiPNNpIiS/72WfXx9tkrrhw==
X-Received: by 2002:a62:5214:: with SMTP id g20mr26762065pfb.187.1560264875555; 
 Tue, 11 Jun 2019 07:54:35 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.54.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:54:35 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 41/92] arm: include: rockchip: Add DDR4 enum
Date: Tue, 11 Jun 2019 20:20:44 +0530
Message-Id: <20190611145135.21399-42-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075436_124844_C875BBA2 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:433 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, gajjar04akash@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add DDR4 enum number in common header.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_common.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index e0a94f81a4..d723e6dacc 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -7,6 +7,7 @@
 #define _ASM_ARCH_SDRAM_COMMON_H
 
 enum {
+	DDR4 = 0,
 	DDR3 = 0x3,
 	LPDDR2 = 0x5,
 	LPDDR3 = 0x6,
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
