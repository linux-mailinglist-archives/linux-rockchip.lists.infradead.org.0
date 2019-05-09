Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE8701889B
	for <lists+linux-rockchip@lfdr.de>; Thu,  9 May 2019 12:58:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZXR5WDn6NHQb57jY6yHa9iHOAzGFf0/125RTEzNyT6M=; b=C6efuwYjXBF/pP
	SDOIZ+WfSoieOygWYtZdqJB32QF6KoOC6IApcOcxMST4IKBAHv0vFfoF3jjHHgJe3C9MLqGHmkhQx
	iBF/wermfBNpblKsXZcDLqHjQbo3LkgOoHKU1VUoe7GRp6vREokTQ4Xb1F8jtGomlaYrmje6wBLQL
	zYZpzK7ycLO/TpWZHR6UkbRk4+AFzZciICbaComWsqLDbmMcEDEsfd/s56aEu4LvvuRZWyQclP0//
	7xqlwY4p1YpyKJDPWxNrXTWlNRt47gQlwIhNWrxKGdOBABNiRofkfXmjoQb9MrcTffCy/CcPvkCr8
	SmsnIiNXe+N3TnCtfltQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOgki-0003Xy-Q6; Thu, 09 May 2019 10:58:16 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOgkf-0003Vw-Um
 for linux-rockchip@lists.infradead.org; Thu, 09 May 2019 10:58:15 +0000
Received: by mail-pg1-x541.google.com with SMTP id z16so1019087pgv.11
 for <linux-rockchip@lists.infradead.org>; Thu, 09 May 2019 03:58:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wo83Y9eMyqzW3i6WsLdjT9/MKteUZiUdWU8bx3448Bw=;
 b=TZD0q6H3ZZej03pOny9mDr6WrupOIzGA89hhPySUEt/nVHnERZUpDgMjYRtL/atWUA
 4hD2X1sW+GWbz/zwplBicrRG6IjgvrNk2ySGi/dZhDv/SVgHT5naZwAaVbZ2xvCEpwFx
 m7mB8uqNbbcj4g/mJ6gm+bKVPPP/SiMjuImkY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wo83Y9eMyqzW3i6WsLdjT9/MKteUZiUdWU8bx3448Bw=;
 b=jwK1sWM1LDeIUO/O/xmowlstdhce16lrm2AwefCW8cUMCRx5t0gFEKGziZHaHTOSQZ
 Gqu5eygX7L6YU5EMJOKb2b6WKi23xv6Di/dGiQVR2TXcwHPBsd909QRRXzQ2XOQVThn+
 TFW25fwa9InDxzp3wuwcHTLJuvpddMo6oCsVLxa5334EeCIEFlM0FTyQ8kcQb78RrfGq
 m8sa/g4nL9EWV2YkwG8VeyKYmZKtU1NAUbFOU3onf0B26Pwpc7vV2+gucVMyHb2rtqKO
 q7ujinEnolZx0DU0RLNkiqn4onUTwUMkjVX9S5ylo1jMck3gWNWUDFJFC0/yR5oyGu9j
 1gUw==
X-Gm-Message-State: APjAAAUg3h1ZP5gL/zuYnGN4Yg+2cM09Str5LMLvJKjVybkWSUyrKRvo
 B+Rp3D6/nh+6l52X+nj/m7U/bA==
X-Google-Smtp-Source: APXvYqxVzArGn4M7dwBHWagg7Tfpr8ChXdsF7uLAKExutj46HvPOwCafimkVOqLE5iLfP8Fns6vBQg==
X-Received: by 2002:aa7:8554:: with SMTP id y20mr4024998pfn.258.1557399493298; 
 Thu, 09 May 2019 03:58:13 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id n184sm5996234pfn.21.2019.05.09.03.58.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 May 2019 03:58:12 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 3/3] doc: rockchip: Add doc for rk3399 TPL build/flash
Date: Thu,  9 May 2019 16:27:46 +0530
Message-Id: <20190509105746.24830-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190509105746.24830-1-jagan@amarulasolutions.com>
References: <20190509105746.24830-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_035813_985613_360A530D 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

This patch add documentation for TPL build and flashing steps
for rk3399 boards.

Add full boot log for future reference.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 doc/README.rockchip | 51 ++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 50 insertions(+), 1 deletion(-)

diff --git a/doc/README.rockchip b/doc/README.rockchip
index ca4d6473b0..264f7e4994 100644
--- a/doc/README.rockchip
+++ b/doc/README.rockchip
@@ -173,7 +173,10 @@ For example:
      => make u-boot.itb
 
      (Get spl/u-boot-spl-dtb.bin, u-boot.itb images and some boards would get
-      spl/u-boot-spl.bin since it doesn't enable CONFIG_SPL_OF_CONTROL)
+      spl/u-boot-spl.bin since it doesn't enable CONFIG_SPL_OF_CONTROL
+
+      If TPL enabled on the target, get tpl/u-boot-tpl-dtb.bin or tpl/u-boot-tpl.bin
+      if CONFIG_TPL_OF_CONTROL not enabled)
 
 Writing to the board with USB
 =============================
@@ -455,6 +458,52 @@ Net:   eth0: ethernet@fe300000
 Hit any key to stop autoboot:  0
 =>
 
+Option 3: Package the image with TPL:
+
+  - Prefix rk3399 header to TPL image
+
+    => cd /path/to/u-boot
+    => ./tools/mkimage -n rk3399 -T rksd -d tpl/u-boot-tpl-dtb.bin out
+
+  - Concatinate tpl with spl
+
+    => cd /path/to/u-boot
+    => cat ./spl/u-boot-spl-dtb.bin >> out
+
+  - Write tpl+spl at 64th sector
+
+    => sudo dd if=out of=/dev/sdc seek=64
+
+  - Write U-Boot proper at 16384 sector
+
+    => sudo dd if=u-boot.itb of=/dev/sdc seek=16384
+    => sync
+
+Put this SD (or micro-SD) card into your board and reset it. You should see
+something like:
+
+U-Boot TPL board init
+Trying to boot from BOOTROM
+Returning to boot ROM...
+
+U-Boot SPL board init
+Trying to boot from MMC1
+
+
+U-Boot 2019.07-rc1-00241-g5b3244767a (May 08 2019 - 10:51:06 +0530)
+
+Model: Orange Pi RK3399 Board
+DRAM:  2 GiB
+MMC:   dwmmc@fe310000: 2, dwmmc@fe320000: 1, sdhci@fe330000: 0
+Loading Environment from MMC... OK
+In:    serial@ff1a0000
+Out:   serial@ff1a0000
+Err:   serial@ff1a0000
+Model: Orange Pi RK3399 Board
+Net:   eth0: ethernet@fe300000
+Hit any key to stop autoboot:  0
+=>
+
 Using fastboot on rk3288
 ========================
 - Write GPT partition layout to mmc device which fastboot want to use it to
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
