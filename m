Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45A05128801
	for <lists+linux-rockchip@lfdr.de>; Sat, 21 Dec 2019 08:55:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S5WIbaiQeJO4FsrIvuIohQuoGMdIFDOsfIIwNSiVVLw=; b=jRre+tPDsAYkJl
	wGL3HW86dK9YUDyBqFH7wuUFhf28pTMobLCm20bwdrbHSYa0pCqquPGXQD0hOtjdImPh18CQsXT0E
	9226YLT7nV5PtiFvc55GfON4emj0yb1pwmKVqgZhtkiGmOJDKlRL2QH2GfszNuaHd7pHBe7h4W/wU
	+yYWSgE3BDhUEb/P2C1KUnBDqNQgQmcvCUEBVM2L8ZJTHwGdqCRAwn9mwpYLxJfQtw2JN2p+knjww
	3x3M7WQFZYgn3ZUUoN9Q/xYjs+jZ9tpUOCWVq3H0eDqxwPPz2+dydbQ8VTlj29unYPYrUSmRTq/W+
	LAHw2RPvzVttKDJzlVZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiZbe-0006o0-Ep; Sat, 21 Dec 2019 07:55:22 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiZbU-0006If-0O
 for linux-rockchip@lists.infradead.org; Sat, 21 Dec 2019 07:55:13 +0000
Received: by mail-pg1-x544.google.com with SMTP id 6so6151702pgk.0
 for <linux-rockchip@lists.infradead.org>; Fri, 20 Dec 2019 23:55:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=O6MjjW/9J3RipD1dwouziFiSfBSsJxtZgCC8FcpGAZ8=;
 b=ibrsttwvFrXFBUjTnQJMJoILMP3bJ46SLx59sCwF30I6dznEgfnC5aclP4B3cOen8q
 1ALZz2/XSPM4IsEdE8AN0R4XCqHxZkUaegmJV/OjYOE2kDDTngTjy38bTgX9cZq+2KLQ
 4SxBvSMGynTXj2CsTaJaeV0Unjic6AM2OEg3w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=O6MjjW/9J3RipD1dwouziFiSfBSsJxtZgCC8FcpGAZ8=;
 b=bMvbZAguJz4hPTeebJHrkAS+p3KcLmp4OZ6uaeDD5vu4KVkJSX7q5Ao5tj93MYWfGc
 3b4Z6hSj1asovVqrzmKp5cYzReDZsAjEPZQL0veFixrLc1euSFFbt63s6oCMy1vi6ya/
 SGf+8F+IYDSx1cuxAQXp4wo7n7X0IDN4LaoxfeBY0Fhbh3xDGmrJfdHb15FnBZ7q/YF0
 xrlT7TaYntc5GLQr1eayF/Ce8r/vv+9ci2lvqGjIVtVdqRVfl8s4v6ddnAFjPdd+8Mg1
 ELMoDb/QvVzbLrF/h5xnyB5nDes1MQnhaOzGGte6B1RD0dPzpkS+1nXUxgTFdrq0j+qS
 la5w==
X-Gm-Message-State: APjAAAXR9AiHNjD/bVkRr6hm5/+yiC9bTGMFfwVegm+NFTKeZQLZqVDe
 R7VgULFaP/CCaZHxXVGVc6IqXA==
X-Google-Smtp-Source: APXvYqybHLJHpLm9G1EV9yo7qbXuVUUw1SITUgFiEudHRN9b7Mmr3h5iJvfeKhJk4fxSHSARwq5dLA==
X-Received: by 2002:a63:fb05:: with SMTP id o5mr19647783pgh.355.1576914911075; 
 Fri, 20 Dec 2019 23:55:11 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.177])
 by smtp.gmail.com with ESMTPSA id i9sm15551018pfk.24.2019.12.20.23.55.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Dec 2019 23:55:10 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>, Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 07/11] env: Enable SPI flash env for rockchip
Date: Sat, 21 Dec 2019 13:24:36 +0530
Message-Id: <20191221075440.6944-8-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191221075440.6944-1-jagan@amarulasolutions.com>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_235512_098968_48647518 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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

Most of the SPI flash devices in rockchip are 16MiB size.

So, keeping U-Boot proper offset start from 128MiB with 1MiB
size and then start env of 8KiB would be a compatible location
between all variants of flash sizes.

This patch add env start from 0x14000 with a size of 8KiB.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 env/Kconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/env/Kconfig b/env/Kconfig
index 9416a70022..1bb3e1078e 100644
--- a/env/Kconfig
+++ b/env/Kconfig
@@ -489,6 +489,7 @@ config ENV_OFFSET
 	depends on ENV_IS_IN_EEPROM || ENV_IS_IN_MMC || ENV_IS_IN_NAND || \
 		    ENV_IS_IN_SPI_FLASH
 	default 0x3f8000 if ARCH_ROCKCHIP && ENV_IS_IN_MMC
+	default 0x140000 if ARCH_ROCKCHIP && ENV_IS_IN_SPI_FLASH
 	default 0x88000 if ARCH_SUNXI
 	default 0xE0000 if ARCH_ZYNQ
 	default 0x1E00000 if ARCH_ZYNQMP
@@ -512,6 +513,7 @@ config ENV_SIZE
 	default 0x40000 if ENV_IS_IN_SPI_FLASH && ARCH_ZYNQMP
 	default 0x20000 if ARCH_SUNXI || ARCH_ZYNQ || ARCH_OMAP2PLUS || ARCH_AT91
 	default 0x8000 if ARCH_ROCKCHIP && ENV_IS_IN_MMC
+	default 0x2000 if ARCH_ROCKCHIP && ENV_IS_IN_SPI_FLASH
 	default 0x8000 if ARCH_ZYNQMP || ARCH_VERSAL
 	default 0x4000 if ARC
 	default 0x1f000
@@ -521,6 +523,7 @@ config ENV_SIZE
 config ENV_SECT_SIZE
 	hex "Environment Sector-Size"
 	depends on ENV_IS_IN_FLASH || ENV_IS_IN_SPI_FLASH
+	default 0x2000 if ARCH_ROCKCHIP
 	default 0x40000 if ARCH_ZYNQMP || ARCH_VERSAL
 	default 0x20000 if ARCH_ZYNQ || ARCH_OMAP2PLUS || ARCH_AT91
 	help
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
