Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DA3512CDAC
	for <lists+linux-rockchip@lfdr.de>; Mon, 30 Dec 2019 09:29:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kxbta7UB1XkkOQ+9WNOPcgVS+QTd1QR5CBxyizbfyXA=; b=eCWhXHItVszs/S
	lHvEaItDQK+SxYxxdAdpV0hav0pKP5UgmwBqKV1VKQzgusfhXLMdlrBXMJVz6NCiSIy0lTFr4/rsc
	+oQX9Kw7s/VsECaVwFWCg8Ni57pDU3G/8GTRpBKNfDzqlsvDXCxSdN6zhiAal39D2jaZYGsqtrcV2
	bc+EmFtxASxdTWL9PF7dTI/j/GBCXF9DMcgxggje3AZAtqlg5SPRsjWyXePTryfB4ik5/eEiFRpMv
	xZ1XHKGHfUwCK2lG6qu6BVQGygVBCGaLUKrnDkyJJRmhj+3KlG/yOb8Snz3akggY/ZvIq9rtc1Avg
	TqUnfUARxynemLH16zFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilqQ6-0006aV-Kt; Mon, 30 Dec 2019 08:28:58 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilqPx-0006UM-Ur
 for linux-rockchip@lists.infradead.org; Mon, 30 Dec 2019 08:28:55 +0000
Received: by mail-pf1-x441.google.com with SMTP id q10so17902289pfs.6
 for <linux-rockchip@lists.infradead.org>; Mon, 30 Dec 2019 00:28:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cH1Kgx4pxWjY/ylyr5O0lvoO8yHz8X1lY8R/7tMQV9M=;
 b=jc+QbzRQdokwul9DQHgmtikXlYp3L0qJEx1bnx5xPYXcyp86xMIK9CTcq1c2i9xyfx
 lrict57Hmk4XJfS42aOZVYXM+7hrdiafwi9yYkWF3qrFnjKgLxS8tpYIBBj9ocLGkH8V
 MniQpzx3H653RG9b8cs56ZPYqBazLcaqndCKI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cH1Kgx4pxWjY/ylyr5O0lvoO8yHz8X1lY8R/7tMQV9M=;
 b=P3yd13NIVnarKHWdEuCXRwbwOVPlA3lpZqKU69WAucKLv1Rdw+jwO9XctWqtOgJk6P
 Bps/Ypxq64vOgfDuC5YuOy3woqb2kMzd+fTlUt1bTwgxid9Hqrn+ba6cMnvpbyQ0ZzhQ
 nd0qIJfzTjTy8kVmxXAaRm/HPwYY8qq8AZACXbOGxuLcH6SnyjU+Mo17Z/5mpkw+ZzSc
 HdjnSDzBtEXj4SkComlTCjbckTvYiAkfY+n2qq9FshBNpn4IDdJVj8e2++Z7yISic7r/
 jdc99ZQZeIQACPf+7Lb6UwoiivMcV5wtKrKPoKvJ1QGowKP+MsTP60Z8rURp7ScGJJEE
 U6mA==
X-Gm-Message-State: APjAAAUYwQ7FiAi+xW9gOZWeyNyiPhpz32RTicp4eAdr/7dGBKjSG6L1
 soDE/bxEn6X+GYBqWALW3rns1A==
X-Google-Smtp-Source: APXvYqyFT/VIWhkJnthfebtazHN9+z5ICosb3oIxBoq5CWHnnf7Pb7XkmkvMe+nkBApELjT3gVDurg==
X-Received: by 2002:a63:1119:: with SMTP id g25mr70792114pgl.359.1577694528916; 
 Mon, 30 Dec 2019 00:28:48 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.131])
 by smtp.gmail.com with ESMTPSA id s1sm46240652pgv.87.2019.12.30.00.28.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Dec 2019 00:28:48 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v5 7/7] doc: boards: Add rockchip documentation
Date: Mon, 30 Dec 2019 13:58:19 +0530
Message-Id: <20191230082819.30191-8-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191230082819.30191-1-jagan@amarulasolutions.com>
References: <20191230082819.30191-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_002849_999865_055B142F 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
 doc/board/rockchip/rockchip.rst | 128 ++++++++++++++++++++++++++++++++
 2 files changed, 138 insertions(+)
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
index 0000000000..625155e432
--- /dev/null
+++ b/doc/board/rockchip/rockchip.rst
@@ -0,0 +1,128 @@
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
+- Describe steps for eMMC flashing
+- Add missing SoC's with it boards list
+
+.. Jagan Teki <jagan@amarulasolutions.com>
+.. Thu Oct 17 22:36:14 IST 2019
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
