Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D182D7BD
	for <lists+linux-rockchip@lfdr.de>; Wed, 29 May 2019 10:26:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hyONkNxzdacFVXE82NkD5LLlWwB2qSuTcPVt/zKkl2k=; b=O3iPtlZNKszgU9
	3pgPGUvBda/eCslNZ+BK60Y9JhoewTJgaHNvQAdj6CVcJB5/U3iD/Xt1NkQwsUrFbx3JtgT3aBdw+
	HIWNxY31Rvw5ONJin45PF9n/Om1sPLiEsgcapOwG+GpohLNMlizg51eqsvnvJ746GhNLeDbm27JHR
	ZYIqZL/aku19yhDj06S9ZtDuaX+YmoTHsWyoWrkaI9NgDjJk1Ly4TgnHx6IS9/MkpZL0MRCx4ymJL
	qWQNU8hpBLOX8OVVKfXYppLNUblqbo6egestUl2p8rtBjed/wvrSqMcFQ36q3x411NDkt7zGZgngx
	3Om4L7Ya3OLn8jBH/Pgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVtuT-00032Y-AQ; Wed, 29 May 2019 08:26:09 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVtuO-0002z2-I2
 for linux-rockchip@lists.infradead.org; Wed, 29 May 2019 08:26:06 +0000
Received: by mail-pl1-x642.google.com with SMTP id c5so736162pll.11
 for <linux-rockchip@lists.infradead.org>; Wed, 29 May 2019 01:26:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Cmf3QYbWb+StZpFl8r620yXvZ7a3KSQvWw8nrzDrRJE=;
 b=n4cSqC1L8zNvpvPJ73Ut9JTFm250fiSIfr25I0pL4KD4ueZLfi//u3ar+IdkGpn75n
 t+lWvXh/PVs1LYDBvNVDepIYHufMhJVHwzxGWs6yjZTewywdaK8JZq3Lzfvk5lPJHJqt
 vtMIah5n45bf8HEAFnqi7c0atrAF4tL50Tn/8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Cmf3QYbWb+StZpFl8r620yXvZ7a3KSQvWw8nrzDrRJE=;
 b=ttT0u/TTAtEG1MlLqhjIfIcK4wruaUHx5lGp2n4neozTQmM7Ib4IeAVzf4p35s/sZw
 lXk0pc3VouEw00D/WbUrEF/UQzZvrBS5ebMLkEW9ic9RIIOMvb2r2XMBpj0kzILvy982
 DCAS8qP/Oi2k9TdPV+A4k31OxFX8D7FLloyCu4w3vowH6oazpE8NCTnBF5vtbXE3yQ/q
 el/E5EgArDfTvtN4pQzIRu2akdNbFQKq+oJhtsc+1sxHtB6iKIWsyQ9KXqps1/a+zsLn
 4o5Id4sWcU0wyVXXHB/ypv4CRUeXLdRp8pbEfKLFE+4WDGqnwBXX5D6uzbh/rkrULOcj
 tXsA==
X-Gm-Message-State: APjAAAXG2loMKRVXxX1mvuVM2A37WHVJAf1cM+cxpFoue2t3ow3Vmryk
 fhtNY7F8xMu/ZLOorhO9HJkc1g==
X-Google-Smtp-Source: APXvYqziFdAovqfBJk+sMsIHpn2Fghbbf12lwB/E62Ugc635xnpMLcMZ4sbKreqn5u/hE6+pswZzBg==
X-Received: by 2002:a17:902:868f:: with SMTP id
 g15mr1494815plo.67.1559118363592; 
 Wed, 29 May 2019 01:26:03 -0700 (PDT)
Received: from localhost.localdomain ([49.206.202.218])
 by smtp.gmail.com with ESMTPSA id d186sm22230332pfd.183.2019.05.29.01.26.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 May 2019 01:26:03 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v2 3/3] doc: rockchip: Add doc for rk3399 TPL build/flash
Date: Wed, 29 May 2019 13:55:49 +0530
Message-Id: <20190529082549.32021-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190529082549.32021-1-jagan@amarulasolutions.com>
References: <20190529082549.32021-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_012604_739575_D9B8EB88 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- rebase on master

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
