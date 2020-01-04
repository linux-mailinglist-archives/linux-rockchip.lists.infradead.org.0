Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F04130176
	for <lists+linux-rockchip@lfdr.de>; Sat,  4 Jan 2020 09:38:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PPBzJswyKmll+Sq39ufcGhzb79HxyAGGFwrwyusznuw=; b=hBwWNCIXc4hxRt
	zAjldlFd9ehJgzNy4DflX8i3oQgNhCYoZck8tGSZrIE8YEFuTvtP8fvt9WV9BRDUEgeEbWfxdFHVP
	Bc6J+m9Csw6Z3pezFvDUJCt/GC1wW0r2Tf/d3wnpnd1KUR+Y5Ur94j9T6YUZySrYDFT7SujFd4Xw8
	shLu7izpAO/YBavIpsC4FQul3TiTI7juefqwDk2igUSUBO7RE75k18+OAxk/wr6Yv4taKXIYWrPZg
	bNLZeJHaxocH87QBH4DXeITvS/Hu996xWqvb127gG1/tEY0eOXBT7o4hfAH8GLz8bITmgIqewewAx
	R/JZdae9aDl4UnvBHARw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inexJ-0003MF-Nz; Sat, 04 Jan 2020 08:38:45 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inexG-0003Jk-7I
 for linux-rockchip@lists.infradead.org; Sat, 04 Jan 2020 08:38:43 +0000
Received: by mail-pl1-x643.google.com with SMTP id g6so19911143plt.2
 for <linux-rockchip@lists.infradead.org>; Sat, 04 Jan 2020 00:38:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=g4cWf3FBE3zdBAFpTRzwkWLhbqmjDXkUilYmTikUnN8=;
 b=NnPb4HWKoKDbADlF1/UlGmkF1rDMW+RjzpchoCCqZEuj44DbmSCdFRA1yJ+Bs8uRec
 fT7OoL9LDf1jw1Rk+k4s273dBERHnp2kIyzreFPnAIdkUg+gLgQEUdPMjxmYRFsZK2rW
 G2JdN7VIvS4TwFhl7ZlU52bVIof2I5h6/3ABQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=g4cWf3FBE3zdBAFpTRzwkWLhbqmjDXkUilYmTikUnN8=;
 b=sHv11LjHU6K4UHldjzoSSKmgZ5gAWyHclQ0nz5ghJawuJzQeCVYdLtZgvWZWMx2FuY
 TS60aTyRxcXa9eo57M/24UjL5VrS0TvRqtYZkMVl9J231EmQKlH/dWHedi2+bMaKqJnL
 t9xwhCmneIUd499SUiRSb7jrBJEjBaYDcxBNLx2P9rwO1IrDTgxsvPsgwi+j+WLUzY26
 9LewmhuBgV+nl8BJ6yE+zB3FPDnAP31pdHFA6fVfwZ9lCzGdieAGvSnkZ5z3i6k9k99Q
 24k5Z6fSIbrTTaJzI39LG+b+YgSm6tRIow4cWf1rhwlaBK2/rgl+T0k317PqzGIe09on
 mkqQ==
X-Gm-Message-State: APjAAAVH6sxzew8OV3OflnegE3kM4DAoK3re6zZzZUAZkA57GF6LNcwB
 Z24QLGluJ2On7S+TueiCrcVmdg==
X-Google-Smtp-Source: APXvYqyHwbSDA9cVcqEOTTJyRxv9kf22kcx9GbRGzhdGEiT9WaSrXr9BvBsPagx3gbcPO4wWl3nujQ==
X-Received: by 2002:a17:902:6b83:: with SMTP id
 p3mr82245420plk.284.1578127121634; 
 Sat, 04 Jan 2020 00:38:41 -0800 (PST)
Received: from localhost.localdomain ([49.206.201.128])
 by smtp.gmail.com with ESMTPSA id z4sm70201623pfn.42.2020.01.04.00.38.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Jan 2020 00:38:41 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v6 6/6] doc: boards: Add rockchip documentation
Date: Sat,  4 Jan 2020 14:08:06 +0530
Message-Id: <20200104083806.3930-7-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20200104083806.3930-1-jagan@amarulasolutions.com>
References: <20200104083806.3930-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_003842_285397_34ABBC1F 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rockchip@lists.infradead.org, u-boot@lists.denx.de,
 "Matwey V . Kornilov" <matwey.kornilov@gmail.com>,
 Jagan Teki <jagan@amarulasolutions.com>, linux-amarula@amarulasolutions.com,
 Akash Gajjar <akash@openedev.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Rockchip has documentation file, doc/README.rockchip but
which is not so readable to add or understand the existing
contents. Even the format that support is legacy readme
in U-Boot.

Add rockchip specific documentation file using new rst
format, which describes the information about Rockchip
supported boards and it's usage steps.

Added minimal information about rk3288, rk3328, rk3368
and rk3399 boards and usage. This would indeed updated
further based on the requirements and updates.

Cc: Kever Yang <kever.yang@rock-chips.com>
Cc: Matwey V. Kornilov <matwey.kornilov@gmail.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 doc/board/rockchip/index.rst    |  10 +++
 doc/board/rockchip/rockchip.rst | 130 ++++++++++++++++++++++++++++++++
 2 files changed, 140 insertions(+)
 create mode 100644 doc/board/rockchip/index.rst
 create mode 100644 doc/board/rockchip/rockchip.rst

diff --git a/doc/board/rockchip/index.rst b/doc/board/rockchip/index.rst
new file mode 100644
index 0000000000..0c377e9bbb
--- /dev/null
+++ b/doc/board/rockchip/index.rst
@@ -0,0 +1,10 @@
+.. SPDX-License-Identifier: GPL-2.0+
+.. Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
+
+Rockchip
+========
+
+.. toctree::
+   :maxdepth: 2
+
+   rockchip
diff --git a/doc/board/rockchip/rockchip.rst b/doc/board/rockchip/rockchip.rst
new file mode 100644
index 0000000000..6c34f1ab99
--- /dev/null
+++ b/doc/board/rockchip/rockchip.rst
@@ -0,0 +1,130 @@
+.. SPDX-License-Identifier: GPL-2.0+
+.. Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
+
+ROCKCHIP
+========
+
+About this
+----------
+
+This document describes the information about Rockchip supported boards
+and it's usage steps.
+
+Rockchip boards
+---------------
+
+Rockchip is SoC solutions provider for tablets & PCs, streaming media
+TV boxes, AI audio & vision, IoT hardware.
+
+A wide range of Rockchip SoCs with associated boardsare supported in
+mainline U-Boot.
+
+List of mainline supported rockchip boards:
+
+* rk3288
+     - Evb-RK3288
+     - Firefly-RK3288
+     - mqmaker MiQi
+     - Phytec RK3288 PCM-947
+     - PopMetal-RK3288
+     - Radxa Rock 2 Square
+     - Tinker-RK3288
+     - Google Jerry
+     - Google Mickey
+     - Google Minnie
+     - Google Speedy
+     - Amarula Vyasa-RK3288
+* rk3328
+     - Rockchip RK3328 EVB
+     - Pine64 Rock64
+* rk3368
+     - GeekBox
+     - PX5 EVB
+     - Rockchip sheep board
+     - Theobroma Systems RK3368-uQ7 SoM
+* rk3399
+     - 96boards RK3399 Ficus
+     - 96boards Rock960
+     - Firefly-RK3399 Board
+     - Firefly ROC-RK3399-PC Board
+     - FriendlyElec NanoPC-T4
+     - FriendlyElec NanoPi M4
+     - FriendlyARM NanoPi NEO4
+     - Google Bob
+     - Khadas Edge
+     - Khadas Edge-Captain
+     - Khadas Edge-V
+     - Orange Pi RK3399 Board
+     - Pine64 RockPro64
+     - Radxa ROCK Pi 4
+     - Rockchip RK3399 Evaluation Board
+     - Theobroma Systems RK3399-Q7 SoM
+
+Building
+--------
+
+TF-A
+^^^^
+
+TF-A would require to build for ARM64 Rockchip SoCs platforms.
+
+To build TF-A::
+
+        git clone https://github.com/ARM-software/arm-trusted-firmware.git
+        cd arm-trusted-firmware
+        make realclean
+        make CROSS_COMPILE=aarch64-linux-gnu- PLAT=rk3399
+
+Specify the PLAT= with desired rockchip platform to build TF-A for.
+
+U-Boot
+^^^^^^
+
+To build rk3328 boards::
+
+        export BL31=/path/to/arm-trusted-firmware/to/bl31.elf
+        make evb-rk3328_defconfig
+        make
+
+To build rk3288 boards::
+
+        make evb-rk3288_defconfig
+        make
+
+To build rk3368 boards::
+
+        export BL31=/path/to/arm-trusted-firmware/to/bl31.elf
+        make evb-px5_defconfig
+        make
+
+To build rk3399 boards::
+
+        export BL31=/path/to/arm-trusted-firmware/to/bl31.elf
+        make evb-rk3399_defconfig
+        make
+
+Flashing
+--------
+
+SD Card
+^^^^^^^
+
+All rockchip platforms, except rk3128 (which doesn't use SPL) are now
+supporting single boot image using binman and pad_cat.
+
+To write an image that boots from an SD card (assumed to be /dev/sda)::
+
+        sudo dd if=u-boot-rockchip.bin of=/dev/sda seek=64
+        sync
+
+TODO
+----
+
+- Add rockchip idbloader image building
+- Add rockchip TPL image building
+- Document SPI flash boot
+- Describe steps for eMMC flashing
+- Add missing SoC's with it boards list
+
+.. Jagan Teki <jagan@amarulasolutions.com>
+.. Sat Jan  4 14:00:54 IST 2020
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
