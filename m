Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8ABD136073
	for <lists+linux-rockchip@lfdr.de>; Thu,  9 Jan 2020 19:48:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DgviOtqzR20DVQn2zOYYiPhgaTjYHxCPonK/p0eqNUs=; b=tuiWukX4URHqwv
	mgw74/NJrOL/k8icVigPLrCfC65bZSni6WOLjH0LJTCYlUwjecbGwwYzjtckEo6ilx3AknQJbBoVB
	1XELxDv1Rd1bG8XMoywiacBSm5hN8jY3WQ/fCIGRkwoWuXJty4rJx2up9t/UF9G3hWbwmXxkuTjFE
	aWP/SFLQ4w95e74mrHF0TO8EB2bXDdx2ftIEEXop1U2L4GSids4sJdVNobrvSlWS8H6G7Uf1qdNUg
	SEScGPckk+rEjeIZGVSvlZteRgz/PCoW+enkUlm9DVzQUcoIfwj8wDXq5lOlsGEybPvYxyhg1tWzd
	O28PxP2vNX/kB48X5xXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipcrV-0003ME-5u; Thu, 09 Jan 2020 18:48:53 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipcrR-0003L8-6g
 for linux-rockchip@lists.infradead.org; Thu, 09 Jan 2020 18:48:50 +0000
Received: by mail-pf1-x441.google.com with SMTP id x6so3768520pfo.10
 for <linux-rockchip@lists.infradead.org>; Thu, 09 Jan 2020 10:48:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RV+d12yuIQSCZ/M2vOO9iyyB/0NvK5sAyrZn/RyXJus=;
 b=QgC4yrBv+FeckqLpGGuGoIK8ExKkfGZQZklCP6m3wEVaWxN4OJjOhpLmIBcXsXVzTo
 gH/ATYeAV7DT0p2DMQ+mIoHlG2lhbv5dTBjLgrezQyDRw2nPy4/A1FN03vzG2gyB/qwk
 cDMK4IW1x6g5LdOjp4KFegAxmjw3CpsvpY4GE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RV+d12yuIQSCZ/M2vOO9iyyB/0NvK5sAyrZn/RyXJus=;
 b=DUuEvFFVGBaCTMpERKtdizhdl1/uVt4Cv5weF8BWjP9A+f4gS0ktK2yRdXR+R5pDd0
 B6Q34lzq4bg7hPT9VyR03ZbwFMYTOxP5mVONAW3yOKPZHHfbmig8Z+3vS77MRWq+d3NO
 ZDxZULnP03HxdlrQQ0frf2NC8CG9BK7X5VIn6PBQs7VO9gJG6FRx6xPP76RL9OONR8+F
 NdkC1wQVsohL6UUv7/Jk+qkz704CkvLT6NYkNk2oc+nEPUYGe9a33OU8kwgOEz8cMUft
 stiBZaP1AgQ/ZDpf+Jt3sa8P6+v5ql2gbZXmawOGjNMwTH6s5Y+p70qSg3/zoQxnQziB
 gefQ==
X-Gm-Message-State: APjAAAXhnFafNwPTurKhFAkIKz5l0rMFoNeYLMabfPvx17xVg9mRBHFg
 dmHqQMXCStAkSBJh2M7zy6C9Gg==
X-Google-Smtp-Source: APXvYqy/aEM520W/aKX8zkmsmfUA17s+YFngzDmqICFsB1mbQh7MJOD204V3lHVC1hgIvWywXxTp7Q==
X-Received: by 2002:a62:342:: with SMTP id 63mr12756077pfd.19.1578595728451;
 Thu, 09 Jan 2020 10:48:48 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c809:c7d5:c4eb:be5d:1485:edee])
 by smtp.gmail.com with ESMTPSA id i8sm8967306pfa.109.2020.01.09.10.48.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 10:48:48 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v7 7/7] doc: boards: Add rockchip documentation
Date: Fri, 10 Jan 2020 00:16:22 +0530
Message-Id: <20200109184622.3098-8-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20200109184622.3098-1-jagan@amarulasolutions.com>
References: <20200109184622.3098-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_104849_251469_589B3B8C 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
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
index 0000000000..cd9c8d6dc4
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
+.. Fri Jan 10 00:08:40 IST 2020
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
