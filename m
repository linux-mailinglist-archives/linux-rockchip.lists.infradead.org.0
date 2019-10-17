Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA956DB6DB
	for <lists+linux-rockchip@lfdr.de>; Thu, 17 Oct 2019 21:08:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h7toJaFQS5NsTdN78qcfQ6Sok5nnSEz92nc0yaeBjeE=; b=Wd5BPTk8fdxZkM
	OOUudONaCpZzVeFkaFViXnW8QYhDM3t+7c/RdxC9NkYg176oZmxZCgg+RYhMCF20BTduj5Un074/1
	998cf+jRGb97dejHTPsuXh8+YogbKXRzqZsf6rovosy/5q25ChT0Q+r3ceKunAO1Bl78jNuXjtgL1
	PbVGjNCMP+hGVwf/p02UOug8bTQL0VrEbS2cZ5Qhn8XJ+cmpo90haha3hMZ85y1LDDJs4Sm4p+tPf
	muCg0yM4z9N3bD5tZtN/Fr/Bpq7gfY0fhXPtYSwlPJq5tz5jjuByLmWV5OKkkoNUc4F9OE/6/kV6a
	PZMW8ntcyQAIEXOYmcMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLB85-0001Jf-DV; Thu, 17 Oct 2019 19:08:09 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLB82-0001HI-0l
 for linux-rockchip@lists.infradead.org; Thu, 17 Oct 2019 19:08:07 +0000
Received: by mail-pg1-x541.google.com with SMTP id e10so1872513pgd.11
 for <linux-rockchip@lists.infradead.org>; Thu, 17 Oct 2019 12:08:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/wGnggWrvG382A2BPL2imHgbeucx8RYhjd+hggml6Rw=;
 b=QLaelHh2K8UEAb67NhkrSBb5PwFkCGwGQ5q9EqAs9841oXpcDswyj2j+hY0HVx+U0B
 2PpT06AYUfe36VtZaxH5ErbGBXABOxgaCeKm7JwBEw1GEOD2pQEORY6CmJtcBJQh7pGE
 M7Hx/TdZ1MAoH5zisKYqmm8FV63yB343dJy7I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/wGnggWrvG382A2BPL2imHgbeucx8RYhjd+hggml6Rw=;
 b=fSd3k5+5MRUfEnN7imFRJNqGRVvwnI46G2ho9kNfQfQf94P5nfbFPg6r0wVGI7RYSE
 CllxGKy5/dJaRdlrZ7WKsFaN1Kz9RuSbK+a9q8vD/WcFjeYXtp4GRP6KAjcr5isb1Bb5
 pzUUIf1MclQf3ARweGCV5D/4HR8n+OnNlQ1sXX2YhoJLwz4muhzWi33o17TRm/1YrFlm
 se48r+A1kG5lWrnqzdg41sn+0itHKWViYJfspagTuOwbhRrgBwpxOM5qFlpwcgHWn3tT
 AYYY4SW/XgFFeEbRkpfX7KLm24ahxZJZ6ctTy8WFEVLStcF7rq1iR1JQZmYCs5SH5py0
 0HVg==
X-Gm-Message-State: APjAAAVNrTGC1itbZpiljUV/unn9gQ/zIQkxBIc7PiPAXclFlyuZrd5a
 hrtDxCFXiRYHfTe0yNtDlRIfXA==
X-Google-Smtp-Source: APXvYqx3uP1QpWMyokfQ2yO0U2LKFsB2UWszrtSK35VMvB81i/VESiVp7t9dA+R4m1DAFKCnc6WOYQ==
X-Received: by 2002:aa7:9295:: with SMTP id j21mr1941741pfa.223.1571339284985; 
 Thu, 17 Oct 2019 12:08:04 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id y28sm4422736pfq.48.2019.10.17.12.08.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 12:08:04 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v3 5/5] doc: boards: Add rockchip documentation
Date: Fri, 18 Oct 2019 00:37:10 +0530
Message-Id: <20191017190710.29985-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191017190710.29985-1-jagan@amarulasolutions.com>
References: <20191017190710.29985-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_120806_061465_20117CB3 
X-CRM114-Status: GOOD (  11.35  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: u-boot@lists.denx.de, "Matwey V . Kornilov" <matwey.kornilov@gmail.com>,
 Jagan Teki <jagan@amarulasolutions.com>, linux-rockchip@lists.infradead.org
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
 doc/board/rockchip/rockchip.rst | 125 ++++++++++++++++++++++++++++++++
 2 files changed, 135 insertions(+)
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
index 0000000000..782a0f1c7a
--- /dev/null
+++ b/doc/board/rockchip/rockchip.rst
@@ -0,0 +1,125 @@
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
+SD Card Flashing
+----------------
+
+To write an image that boots from an SD card (assumed to be /dev/sda):
+
+TPL + SPL::
+
+        sudo dd if=u-boot-rockchip-with-tpl-spl.bin of=/dev/sda seek=64
+        sync
+
+TODO
+----
+
+- Add SPL-alone SD Card flashing steps
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
