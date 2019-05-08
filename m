Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62CCD1734D
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 May 2019 10:09:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0i4w4RMLVMNxUJHUgMFDNyg2aizus7iADCdTlqPk3mM=; b=B1Kdgw0jJ7Y9V7
	auvsMr8sGO7KjigCH41TAakvbF+RlWXV/ZVaAsW2Drt9hk+mMysOQrssvuiGcYiY6V5LN1/Ua43Ww
	v+K7r3tJYETUIdx16CYpIzjkcPx7HNWHHMZWq+1P1Kzij1u3WVBltkXKLHYrHrrz8PxZtErXITvb3
	ujpiMbhSWca8r0jRAd0Jky8tq8uqARPMr6/BdKCwu9YZqUsd4S9Tp0hrguDmyI2IzTuUbSWmmV3WV
	u70KW7wanB07EBgJlPLkDysDWz6beSsLGWEJ4r4qxL3AYmZunekk3ComswRDLqtAMgQrkPQmkrXhn
	gyqyVzJSbbnTybQ7o8eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOHe0-0007t6-87; Wed, 08 May 2019 08:09:40 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOHdx-0007rU-6r
 for linux-rockchip@lists.infradead.org; Wed, 08 May 2019 08:09:38 +0000
Received: by mail-pf1-x443.google.com with SMTP id 10so10091191pfo.5
 for <linux-rockchip@lists.infradead.org>; Wed, 08 May 2019 01:09:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IXklBQ6ai0O2AEMFHBbAi493eYh613acLhwbCyGgVi0=;
 b=foyf1HUc5ZphoH3z8o0m5PU/T20zTRMX7F6XoieIohV4o/tp8RVdJmCIfY2ZafjLVR
 jWbl+8RMz+gpOTw1TE7jOvMF2QRSj4gOlwRUGV+spknPKS0y4Kpg9wfNJt8Sw/msmNnS
 a2wLpSgCSS7hbJuBN0HHMRDEKMDHTB+buXXtc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IXklBQ6ai0O2AEMFHBbAi493eYh613acLhwbCyGgVi0=;
 b=J9yQgojkkxvFbPGuKnnU2bDJ4xwiQN58S+3sJAp0gC5xh5cFBp5m+PPcNNwlzncJch
 NDw6kmA+HF9J/wPxSW6l6kTtz1RWHnTP2bbRmyRXJivZnH9dh9y9MscWNT9hSzZme1ED
 XzAt2i7C3KV3nKjU+5CMwXDqc7ElXp1RFr3Ffei57M1Y5QXWCEdckNeXnW3MX7jI9gjF
 QQAl0P9mQv+VDt3ETVdpoPr6vWnYk2pg3pdhCODkAQriNoRlT8NZQH6/SBDeaFhrX9Mv
 ABF3+XZAryRWl4VJdjhQMNCPKgYxPRSAeOfPTijVbA9ShhZHucR9X6aEG+lbqIckmoIa
 /9Dw==
X-Gm-Message-State: APjAAAXDmX+WZW59vp1JO3T9382GBsr/gl6n5ccwqyCYo96YobeBW+f/
 BwSpKWUM5r1YoQv5OjMQOL5YsQ==
X-Google-Smtp-Source: APXvYqyLz5S+isw4t02WlIqHy99vdcWM/GK4kENlbTMtERMJMigmEQjk/wKMXxLtfh2Ufr5WU3pJXg==
X-Received: by 2002:a63:b1d:: with SMTP id 29mr45435010pgl.103.1557302976759; 
 Wed, 08 May 2019 01:09:36 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id j9sm33537133pfc.43.2019.05.08.01.09.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 01:09:36 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>
Subject: [PATCH 5/8] rockchip: rk3399: Enable SPL_BOARD_INIT
Date: Wed,  8 May 2019 13:39:01 +0530
Message-Id: <20190508080904.1567-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190508080904.1567-1-jagan@amarulasolutions.com>
References: <20190508080904.1567-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_010937_244942_810A771B 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Enable SPL_BOARD_INIT globally to rk3399, this would
help to print the SPL banner during bootup.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/mach-rockchip/Kconfig | 1 +
 configs/puma-rk3399_defconfig  | 1 -
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index c05e3c3f48..ce039022df 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -158,6 +158,7 @@ config ROCKCHIP_RK3399
 	select SPL
 	select SPL_ATF
 	select SPL_ATF_NO_PLATFORM_PARAM if SPL_ATF
+	select SPL_BOARD_INIT if SPL
 	select SPL_LOAD_FIT
 	select SPL_CLK if SPL
 	select SPL_PINCTRL if SPL
diff --git a/configs/puma-rk3399_defconfig b/configs/puma-rk3399_defconfig
index ebc78fb216..5cb2273a15 100644
--- a/configs/puma-rk3399_defconfig
+++ b/configs/puma-rk3399_defconfig
@@ -21,7 +21,6 @@ CONFIG_MISC_INIT_R=y
 # CONFIG_DISPLAY_CPUINFO is not set
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_TEXT_BASE=0xff8c2000
-CONFIG_SPL_BOARD_INIT=y
 # CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
 # CONFIG_SPL_LEGACY_IMAGE_SUPPORT is not set
 CONFIG_SPL_STACK_R=y
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
