Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7B27128800
	for <lists+linux-rockchip@lfdr.de>; Sat, 21 Dec 2019 08:55:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ozv3WSerCWBlcI6JPPKYrsNtzq3lD2A3tCGBe/ypCyQ=; b=Tb44Q+KnjRCoHq
	dgiH/K9m0HheHTJajQQtBloR9zYLrJWPewyfsqm0rDnsHX2D4weKqqHhaSCd0dOwu8XcHlZgyG2S7
	7WVdwT8098osgUYQqQGROLmNjQl6kXNgXjNoiyzIp4uxsv4zDXrczzPTaBc6SYaJsfROMKo0B7b1E
	FWToOTd7xK8IzFADVArWFKJWpGCeROGAirUxwjcEQrTUIr+FKkCZ62v62COfy9PTfKQkXFja6yo8h
	ZADwslGz7XKStddl77K53E4ht/dBTG34tLh8DHCeJDxvxfXLyYwRao+0gTCz2RqUg3V0aSe3uagyi
	FO4KKdnAO8He48o65bTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiZbc-0006lO-8C; Sat, 21 Dec 2019 07:55:20 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiZbR-0005x4-Ua
 for linux-rockchip@lists.infradead.org; Sat, 21 Dec 2019 07:55:11 +0000
Received: by mail-pf1-x442.google.com with SMTP id 195so5633953pfw.11
 for <linux-rockchip@lists.infradead.org>; Fri, 20 Dec 2019 23:55:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WGB90yvfu/qbXtiS6a4vXKmXBIXqxoljZrUUSd4jX/4=;
 b=QfZmlyqP8lYOKrZQE3YPtZpfjUrhhF8tj2IilIKaw95jG9a4Qx6uzuZZpWQNbtUdbC
 VbqnDD3YRn+Em6FUQotBsW/9hGgzqt3hV4X6ga/VzI32SNbsTRsCcepzKlDVOOsgoQFb
 kFPdETJ1fqanR59hmltyECcmDbUqqMg8AyHUg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WGB90yvfu/qbXtiS6a4vXKmXBIXqxoljZrUUSd4jX/4=;
 b=Bnj6z6/HK5JTlqXrdDj7AzaYSnU8R1WFf1u+l80mpeaCBvWU/ak0Egul7SgpZXhFyU
 r4YLq4XOKtqfg3+hnpg/MTXhSymEyKAzVHHi20/oLvYKaiDJ3udydlKhve0r/nscCW+7
 8e7qtGZd+v1j5J+go3LhmA3jiIM/0x23EaDYBXA23FncvfdY7Gz8S820uC+paTrqXri+
 uO0R5uW2Dbp47RFDIoL2x3ftUo0WzDmglR6S/91+MsZpWMUzHtDzmNRdP/opR4a1npx+
 VDTh3Tzp3l+I9yxBSBVLMK99myBx2BTLxOc92mc8IN7i5SzyQ3VES56H3qJggd1VNYXc
 x3SQ==
X-Gm-Message-State: APjAAAUAyMwN+gkS1vyntOWTlI4Nr8mgiuz/OjYr8FXHZ89zPn2Ts9w2
 qX35h6wo1lF47sDziR1OikpV+Q==
X-Google-Smtp-Source: APXvYqxOJJmiV4NF4zQKiGJBJkcGbWN9ORrHIKF5xdWd1sCRV1Vdshud0cAVUbMC5I+tk9CIfMp6rA==
X-Received: by 2002:a63:590e:: with SMTP id n14mr19041557pgb.10.1576914908356; 
 Fri, 20 Dec 2019 23:55:08 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.177])
 by smtp.gmail.com with ESMTPSA id i9sm15551018pfk.24.2019.12.20.23.55.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Dec 2019 23:55:07 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>, Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 06/11] env: kconfig: Restrict rockchip env for MMC
Date: Sat, 21 Dec 2019 13:24:35 +0530
Message-Id: <20191221075440.6944-7-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191221075440.6944-1-jagan@amarulasolutions.com>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_235510_026436_40552D75 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: u-boot@lists.denx.de, linux-amarula <linux-amarula@amarulasolutions.com>,
 Jagan Teki <jagan@amarulasolutions.com>, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Rockchip do support SPI flash as well, so there is
a possibility of using flash environment for those
use cases.

So, restrict the current env offset, size for MMC.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 env/Kconfig | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/env/Kconfig b/env/Kconfig
index ed12609f6a..9416a70022 100644
--- a/env/Kconfig
+++ b/env/Kconfig
@@ -488,7 +488,7 @@ config ENV_OFFSET
 	hex "Environment offset"
 	depends on ENV_IS_IN_EEPROM || ENV_IS_IN_MMC || ENV_IS_IN_NAND || \
 		    ENV_IS_IN_SPI_FLASH
-	default 0x3f8000 if ARCH_ROCKCHIP
+	default 0x3f8000 if ARCH_ROCKCHIP && ENV_IS_IN_MMC
 	default 0x88000 if ARCH_SUNXI
 	default 0xE0000 if ARCH_ZYNQ
 	default 0x1E00000 if ARCH_ZYNQMP
@@ -511,7 +511,8 @@ config ENV_SIZE
 	hex "Environment Size"
 	default 0x40000 if ENV_IS_IN_SPI_FLASH && ARCH_ZYNQMP
 	default 0x20000 if ARCH_SUNXI || ARCH_ZYNQ || ARCH_OMAP2PLUS || ARCH_AT91
-	default 0x8000 if ARCH_ROCKCHIP || ARCH_ZYNQMP || ARCH_VERSAL
+	default 0x8000 if ARCH_ROCKCHIP && ENV_IS_IN_MMC
+	default 0x8000 if ARCH_ZYNQMP || ARCH_VERSAL
 	default 0x4000 if ARC
 	default 0x1f000
 	help
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
