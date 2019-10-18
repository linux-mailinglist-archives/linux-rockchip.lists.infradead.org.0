Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A22FCDC492
	for <lists+linux-rockchip@lfdr.de>; Fri, 18 Oct 2019 14:21:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YvigtfNdO8v2FdnSHg0N25VkaFAo1jFvJH+jirt2pe4=; b=PLBfJ4G1ivdyNJWGOgq4uWdPr
	tMrOme13zL525ChDhFxqElM18Q0R4PxIbvdcLMzAx3L5Idj9yWcdO8Bg8fp+0gurVGipKzJYEl1xD
	g+Wwxojd3QiiKnHG8OVBz5kk7oPko9+V/UCtrvWxFa2VUlHdS5ZX+IHZXmub5QrwmKtAbzaNWrU06
	YMO2G/lo4aWcfldFzm+ZQg4CIhPY08uwUnUdjeZBo9a9EeHUk0JWJ5OctrvKpTt1ext0F1qKmpyl9
	wzne7qtjnk6pGwtkcDxACIVJVDolsYPJ/9Ib7fFln7BHVu3Y4QwPrqdeKzWM6/LLgk0G6AkCgS1kk
	N4sMUtOBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLRFl-0000QW-Uj; Fri, 18 Oct 2019 12:21:09 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLRFh-0000P8-IZ
 for linux-rockchip@lists.infradead.org; Fri, 18 Oct 2019 12:21:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 68BF63BB;
 Fri, 18 Oct 2019 05:20:54 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7F7133F6C4;
 Fri, 18 Oct 2019 05:20:53 -0700 (PDT)
Subject: Re: [PATCH v3 5/5] doc: boards: Add rockchip documentation
To: Jagan Teki <jagan@amarulasolutions.com>,
 Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20191017190710.29985-1-jagan@amarulasolutions.com>
 <20191017190710.29985-6-jagan@amarulasolutions.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <b1742ff2-9ea2-22cc-5315-d4c1e4933fe9@arm.com>
Date: Fri, 18 Oct 2019 13:20:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20191017190710.29985-6-jagan@amarulasolutions.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_052106_058297_89995993 
X-CRM114-Status: GOOD (  22.18  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
 linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 17/10/2019 20:07, Jagan Teki wrote:
> Rockchip has documentation file, doc/README.rockchip but
> which is not so readable to add or understand the existing
> contents. Even the format that support is legacy readme
> in U-Boot.
> 
> Add rockchip specific documentation file using new rst
> format, which describes the information about Rockchip
> supported boards and it's usage steps.
> 
> Added minimal information about rk3288, rk3328, rk3368
> and rk3399 boards and usage. This would indeed updated
> further based on the requirements and updates.
> 
> Cc: Kever Yang <kever.yang@rock-chips.com>
> Cc: Matwey V. Kornilov <matwey.kornilov@gmail.com>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>   doc/board/rockchip/index.rst    |  10 +++
>   doc/board/rockchip/rockchip.rst | 125 ++++++++++++++++++++++++++++++++
>   2 files changed, 135 insertions(+)
>   create mode 100644 doc/board/rockchip/index.rst
>   create mode 100644 doc/board/rockchip/rockchip.rst
> 
> diff --git a/doc/board/rockchip/index.rst b/doc/board/rockchip/index.rst
> new file mode 100644
> index 0000000000..0c377e9bbb
> --- /dev/null
> +++ b/doc/board/rockchip/index.rst
> @@ -0,0 +1,10 @@
> +.. SPDX-License-Identifier: GPL-2.0+
> +.. Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
> +
> +Rockchip
> +========
> +
> +.. toctree::
> +   :maxdepth: 2
> +
> +   rockchip
> diff --git a/doc/board/rockchip/rockchip.rst b/doc/board/rockchip/rockchip.rst
> new file mode 100644
> index 0000000000..782a0f1c7a
> --- /dev/null
> +++ b/doc/board/rockchip/rockchip.rst
> @@ -0,0 +1,125 @@
> +.. SPDX-License-Identifier: GPL-2.0+
> +.. Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
> +
> +ROCKCHIP
> +========
> +
> +About this
> +----------
> +
> +This document describes the information about Rockchip supported boards
> +and it's usage steps.
> +
> +Rockchip boards
> +---------------
> +
> +Rockchip is SoC solutions provider for tablets & PCs, streaming media
> +TV boxes, AI audio & vision, IoT hardware.
> +
> +A wide range of Rockchip SoCs with associated boardsare supported in
> +mainline U-Boot.
> +
> +List of mainline supported rockchip boards:
> +
> +* rk3288
> +     - Evb-RK3288
> +     - Firefly-RK3288
> +     - mqmaker MiQi
> +     - Phytec RK3288 PCM-947
> +     - PopMetal-RK3288
> +     - Radxa Rock 2 Square
> +     - Tinker-RK3288
> +     - Google Jerry
> +     - Google Mickey
> +     - Google Minnie
> +     - Google Speedy
> +     - Amarula Vyasa-RK3288
> +* rk3328
> +     - Rockchip RK3328 EVB
> +     - Pine64 Rock64
> +* rk3368
> +     - GeekBox
> +     - PX5 EVB
> +     - Rockchip sheep board
> +     - Theobroma Systems RK3368-uQ7 SoM
> +* rk3399
> +     - 96boards RK3399 Ficus
> +     - 96boards Rock960
> +     - Firefly-RK3399 Board
> +     - Firefly ROC-RK3399-PC Board
> +     - FriendlyElec NanoPC-T4
> +     - FriendlyElec NanoPi M4
> +     - FriendlyARM NanoPi NEO4
> +     - Google Bob
> +     - Khadas Edge
> +     - Khadas Edge-Captain
> +     - Khadas Edge-V
> +     - Orange Pi RK3399 Board
> +     - Pine64 RockPro64
> +     - Radxa ROCK Pi 4
> +     - Rockchip RK3399 Evaluation Board
> +     - Theobroma Systems RK3399-Q7 SoM
> +
> +Building
> +--------
> +
> +TF-A
> +^^^^
> +
> +TF-A would require to build for ARM64 Rockchip SoCs platforms.
> +
> +To build TF-A::
> +
> +        git clone https://github.com/ARM-software/arm-trusted-firmware.git

Nit: it's probably worth updating that to 
https://git.trustedfirmware.org/TF-A/trusted-firmware-a.git

Robin.

> +        cd arm-trusted-firmware
> +        make realclean
> +        make CROSS_COMPILE=aarch64-linux-gnu- PLAT=rk3399
> +
> +Specify the PLAT= with desired rockchip platform to build TF-A for.
> +
> +U-Boot
> +^^^^^^
> +
> +To build rk3328 boards::
> +
> +        export BL31=/path/to/arm-trusted-firmware/to/bl31.elf
> +        make evb-rk3328_defconfig
> +        make
> +
> +To build rk3288 boards::
> +
> +        make evb-rk3288_defconfig
> +        make
> +
> +To build rk3368 boards::
> +
> +        export BL31=/path/to/arm-trusted-firmware/to/bl31.elf
> +        make evb-px5_defconfig
> +        make
> +
> +To build rk3399 boards::
> +
> +        export BL31=/path/to/arm-trusted-firmware/to/bl31.elf
> +        make evb-rk3399_defconfig
> +        make
> +
> +SD Card Flashing
> +----------------
> +
> +To write an image that boots from an SD card (assumed to be /dev/sda):
> +
> +TPL + SPL::
> +
> +        sudo dd if=u-boot-rockchip-with-tpl-spl.bin of=/dev/sda seek=64
> +        sync
> +
> +TODO
> +----
> +
> +- Add SPL-alone SD Card flashing steps
> +- Add rockchip idbloader image building
> +- Describe steps for eMMC flashing
> +- Add missing SoC's with it boards list
> +
> +.. Jagan Teki <jagan@amarulasolutions.com>
> +.. Thu Oct 17 22:36:14 IST 2019
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
