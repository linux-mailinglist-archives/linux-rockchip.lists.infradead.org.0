Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A26B74CB93
	for <lists+linux-rockchip@lfdr.de>; Thu, 20 Jun 2019 12:08:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zwj2wiKMtEliWx46xgbjPGhR9+8nMGZQV++++H+SI5s=; b=RPAhhyQcN/QQI/
	8R0NdJSZWuNjnYSbfpeZHgUwAfI1y+cXgj4CtJ68rAOei2yUo97YcNcIiz5Wt2i0ofS5aVelN1a9t
	esobLdho3QlnL9gSncMc4IZ9BlHvPwoHrLgN4zfzMVIBV1rBcNQD7X4V+91tO8Hn4dUe+1Z11UGz0
	+VOlTisBi43JdTMH8G6WzJo5jyUa7sd0ZrfrjM83Ie352sEMeRXEiOB+cAuk/I0gRkyUUDACo8tpW
	GqEsH8k65na2004+o/s1tpHVHiJ5wTC071vRU1B2EfD3ggtmadUlC8qiyOJe4jFqUe4OwYVRYeM7l
	GUjUOHOFrRgcUlzwWypw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdtzi-0006fp-QA; Thu, 20 Jun 2019 10:08:38 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdtzN-0006NZ-6G
 for linux-rockchip@lists.infradead.org; Thu, 20 Jun 2019 10:08:18 +0000
Received: by mail-pg1-x541.google.com with SMTP id v9so1305298pgr.13
 for <linux-rockchip@lists.infradead.org>; Thu, 20 Jun 2019 03:08:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wVJfdIxX3AOWESls8BSNG7FiUmX2vaUpDqCE9rqexDM=;
 b=RURLjpaYtL2QTjx/+laxoYAEADu+g/OaAy5EcD+xAA6mJ2MhBO+yohTgMIJ8dkS8JY
 3M/N8LsnWBxgSaxukAmTSyvkIV6gr3Z4osanm0m3ZXpsOtnQJyj1gLc763jhSDggmjMD
 vFI2sdlbuMxD6fu8zDW7eLXFgR4tXyPvIO55I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wVJfdIxX3AOWESls8BSNG7FiUmX2vaUpDqCE9rqexDM=;
 b=PWi/cnSq6+WXlBZOO1P75Vew8FgFtDo717thDvRWCzpJPzixx5g4FB/BX1P/yGEn0C
 81jxby5yU+866V902BtBq50LvwpBpegdcocU05cSuAK0ZkUmEhxdNdf3epvBl8LUI2DP
 G+K1eDusjjT8KMT8RI4qXL6fvrvVW4YBJy5uRsiD3z1YpvORpVVPii7nThp664zP9R0U
 vc0PmSP+n6cTM1Q92VM3vAN5gFTGuLrDqO/1rkKj/iMUePPYVE05N7kbyHumLp5TVaS1
 LRQZS3HzdBZ+hfJJ2OJTHywGkuGficdbFr03GgmnfqT1y2hkHZNmQdToihn4iQKWhao9
 7jjQ==
X-Gm-Message-State: APjAAAVparCvHEokGrpRzLDNbrSBXTgfsSi/pN22OQWBLVLLqIJfylDK
 W5ZZgAHjXK5JXblIgVcswTxwgg==
X-Google-Smtp-Source: APXvYqx0A5Wu59pMhfcFmJirFVvQ9/4zOUcFaD93VkaWY/WC2l+H1B0kscaPEn1o7OihPTmzkcPe1Q==
X-Received: by 2002:a63:1723:: with SMTP id x35mr7776901pgl.233.1561025296366; 
 Thu, 20 Jun 2019 03:08:16 -0700 (PDT)
Received: from localhost.localdomain ([183.82.229.140])
 by smtp.gmail.com with ESMTPSA id x129sm21731387pfb.29.2019.06.20.03.08.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Jun 2019 03:08:15 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, u-boot@lists.denx.de
Subject: [PATCH v4 6/6] Kconfig: Add u-boot.itb BUILD_TARGET for Rockchip
Date: Thu, 20 Jun 2019 15:37:40 +0530
Message-Id: <20190620100740.6560-7-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190620100740.6560-1-jagan@amarulasolutions.com>
References: <20190620100740.6560-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_030817_262959_72BD1633 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add u-boot.itb BUILD_TARGET for Rockchip platform when SPL_LOAD_FIT
is being used.

This can get rid of building itb explicitly with 'make u-boot.itb'
so, from now all required images will build just by make.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
---
 Kconfig                                    | 2 +-
 board/theobroma-systems/puma_rk3399/README | 2 +-
 board/vamrs/rock960_rk3399/README          | 1 -
 doc/README.rockchip                        | 2 --
 4 files changed, 2 insertions(+), 5 deletions(-)

diff --git a/Kconfig b/Kconfig
index 6b44256538..df8f2946c5 100644
--- a/Kconfig
+++ b/Kconfig
@@ -250,7 +250,7 @@ config BUILD_TARGET
 	default "u-boot-with-spl.sfp" if TARGET_SOCFPGA_GEN5
 	default "u-boot-spl.kwb" if ARCH_MVEBU && SPL
 	default "u-boot-elf.srec" if RCAR_GEN3
-	default "u-boot.itb" if SPL_LOAD_FIT && ARCH_SUNXI
+	default "u-boot.itb" if SPL_LOAD_FIT && (ROCKCHIP_RK3399 || ARCH_SUNXI)
 	default "u-boot.kwb" if KIRKWOOD
 	default "u-boot-with-spl.bin" if ARCH_AT91 && SPL_NAND_SUPPORT
 	help
diff --git a/board/theobroma-systems/puma_rk3399/README b/board/theobroma-systems/puma_rk3399/README
index f67dfb451f..9b31b0b379 100644
--- a/board/theobroma-systems/puma_rk3399/README
+++ b/board/theobroma-systems/puma_rk3399/README
@@ -60,7 +60,7 @@ Creating a SPL image for SD-Card/eMMC
 Creating a SPL image for SPI-NOR
   > tools/mkimage -n rk3399 -T rkspi -d spl/u-boot-spl.bin spl_nor.img
 Create the FIT image containing U-Boot proper, ATF, M0 Firmware, devicetree
-  > make CROSS_COMPILE=aarch64-linux-gnu- u-boot.itb
+  > make CROSS_COMPILE=aarch64-linux-gnu-
 
 Flash the image
 ===============
diff --git a/board/vamrs/rock960_rk3399/README b/board/vamrs/rock960_rk3399/README
index d14399090e..c5c675c4ea 100644
--- a/board/vamrs/rock960_rk3399/README
+++ b/board/vamrs/rock960_rk3399/README
@@ -61,7 +61,6 @@ Compile the U-Boot
   > export CROSS_COMPILE=aarch64-linux-gnu-
   > make rock960-rk3399_defconfig
   > make
-  > make u-boot.itb
 
 Compile the rkdeveloptool
 =========================
diff --git a/doc/README.rockchip b/doc/README.rockchip
index 0ee54cd00e..fac87ade2c 100644
--- a/doc/README.rockchip
+++ b/doc/README.rockchip
@@ -103,7 +103,6 @@ For example:
      => cd /path/to/u-boot
      => make nanopi-neo4-rk3399_defconfig
      => make
-     => make u-boot.itb
 
    - Get the rkbin
 
@@ -170,7 +169,6 @@ For example:
      => cd /path/to/u-boot
      => make orangepi-rk3399_defconfig
      => make
-     => make u-boot.itb
 
      (Get spl/u-boot-spl-dtb.bin, u-boot.itb images and some boards would get
       spl/u-boot-spl.bin since it doesn't enable CONFIG_SPL_OF_CONTROL
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
