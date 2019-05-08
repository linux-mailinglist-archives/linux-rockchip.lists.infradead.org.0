Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB2716F85
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 May 2019 05:39:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=evp62Ynbo2GSjYGeQWflNbXcbXvMyIQ6BeEVNDpEZRE=; b=D22d2HSmd62/6e
	IYM5ztaR6vAi8nKnzSK+qJGSB2Bqzf/UWkkso1YpQgjVs5PdRBr85r/DBzze67Hwa822mYG59kG+a
	MNXoSPHS+iXUW9gr71Zm8lDgSl5M+p8/KKScOpe7ViWQi/rbYbfU/1uncolnFVkaoemn39Fcyvh//
	MGfyP734v0y/Y57iu4QMIi2iy/SxTwapmOSBRFG3sPkJvUUpV82jj5C4q6u46dxmwiSEikF1VKSsF
	0xrReAlmnmIiR3iIa2pxO2i8sSqF24VoH67vXnqUi8jFmb5y+XuPO4MVgrcl/x+MwAvJi5xddkwEK
	8F/Bv3EFAl2aBQ3MHpkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hODQX-0007WL-2o; Wed, 08 May 2019 03:39:29 +0000
Received: from regular1.263xmail.com ([211.150.70.199])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hODQT-0007UO-Ty
 for linux-rockchip@lists.infradead.org; Wed, 08 May 2019 03:39:27 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.252])
 by regular1.263xmail.com (Postfix) with ESMTP id 0DF71402;
 Wed,  8 May 2019 11:39:22 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P12364T140130035681024S1557286755848266_; 
 Wed, 08 May 2019 11:39:17 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <6dcd414e02c905f9e8968e42e0914319>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: u-boot@lists.denx.de
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: =?UTF-8?Q?Re:_[PATCH_v7_2/4]_arm64:_rockchip:_dts:_rk3399:_Add_boar?=
 =?UTF-8?B?ZCAtdS1ib290LmR0c2kgZmlsZXPjgJDor7fms6jmhI/vvIzpgq7ku7bnlLFsaW51?=
 =?UTF-8?Q?x-rockchip-bounces+kever.yang=3drock-chips.com@lists.infradead.or?=
 =?UTF-8?B?Z+S7o+WPkeOAkQ==?=
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Akash Gajjar <akash@openedev.com>
References: <20190507182152.4254-1-jagan@amarulasolutions.com>
 <20190507182152.4254-3-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <989d9a0b-e6fa-9873-7cbc-147f4f14e6bb@rock-chips.com>
Date: Wed, 8 May 2019 11:39:16 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20190507182152.4254-3-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_203926_274193_609A3626 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 u-boot@lists.denx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org



On 05/08/2019 02:21 AM, Jagan Teki wrote:
> Devicetree files in RK3399 platform is synced from Linux, like other
> platforms does. Apart from these u-boot in rk3399 would also require
> some u-boot specific node like dmc.
>
> dmc node has big chunk of DDR timing parameters which are specific
> to specific board, and maintained with rk3399-sdram*.dtsi.
>
> So, create board specific -u-boot.dtsi files and move these sdram dtsi
> files accordingly. This would help of maintain u-boot specific changes
> separately without touching Linux dts(i) files which indeed easy for
> syncing from Linux between releases.
>
> These board specific -u-boot.dtsi can be extendible to add more u-boot
> specific nodes or properties in future.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>


Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>  arch/arm/dts/rk3399-evb-u-boot.dtsi     | 6 ++++++
>  arch/arm/dts/rk3399-evb.dts             | 1 -
>  arch/arm/dts/rk3399-ficus-u-boot.dtsi   | 6 ++++++
>  arch/arm/dts/rk3399-ficus.dts           | 1 -
>  arch/arm/dts/rk3399-firefly-u-boot.dtsi | 6 ++++++
>  arch/arm/dts/rk3399-firefly.dts         | 1 -
>  arch/arm/dts/rk3399-gru-bob-u-boot.dtsi | 6 ++++++
>  arch/arm/dts/rk3399-gru-bob.dts         | 1 -
>  arch/arm/dts/rk3399-rock960-u-boot.dtsi | 6 ++++++
>  arch/arm/dts/rk3399-rock960.dts         | 1 -
>  10 files changed, 30 insertions(+), 5 deletions(-)
>  create mode 100644 arch/arm/dts/rk3399-evb-u-boot.dtsi
>  create mode 100644 arch/arm/dts/rk3399-ficus-u-boot.dtsi
>  create mode 100644 arch/arm/dts/rk3399-firefly-u-boot.dtsi
>  create mode 100644 arch/arm/dts/rk3399-gru-bob-u-boot.dtsi
>  create mode 100644 arch/arm/dts/rk3399-rock960-u-boot.dtsi
>
> diff --git a/arch/arm/dts/rk3399-evb-u-boot.dtsi b/arch/arm/dts/rk3399-evb-u-boot.dtsi
> new file mode 100644
> index 0000000000..7e2c57af22
> --- /dev/null
> +++ b/arch/arm/dts/rk3399-evb-u-boot.dtsi
> @@ -0,0 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
> + */
> +
> +#include "rk3399-sdram-lpddr3-4GB-1600.dtsi"
> diff --git a/arch/arm/dts/rk3399-evb.dts b/arch/arm/dts/rk3399-evb.dts
> index 9162f3dd50..a506e8da37 100644
> --- a/arch/arm/dts/rk3399-evb.dts
> +++ b/arch/arm/dts/rk3399-evb.dts
> @@ -7,7 +7,6 @@
>  #include <dt-bindings/pwm/pwm.h>
>  #include <dt-bindings/pinctrl/rockchip.h>
>  #include "rk3399.dtsi"
> -#include "rk3399-sdram-lpddr3-4GB-1600.dtsi"
>  
>  / {
>  	model = "Rockchip RK3399 Evaluation Board";
> diff --git a/arch/arm/dts/rk3399-ficus-u-boot.dtsi b/arch/arm/dts/rk3399-ficus-u-boot.dtsi
> new file mode 100644
> index 0000000000..eab86bdb30
> --- /dev/null
> +++ b/arch/arm/dts/rk3399-ficus-u-boot.dtsi
> @@ -0,0 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
> + */
> +
> +#include "rk3399-sdram-ddr3-1600.dtsi"
> diff --git a/arch/arm/dts/rk3399-ficus.dts b/arch/arm/dts/rk3399-ficus.dts
> index 4af0e4e383..4b2dd82b67 100644
> --- a/arch/arm/dts/rk3399-ficus.dts
> +++ b/arch/arm/dts/rk3399-ficus.dts
> @@ -8,7 +8,6 @@
>  
>  /dts-v1/;
>  #include "rk3399-rock960.dtsi"
> -#include "rk3399-sdram-ddr3-1600.dtsi"
>  
>  / {
>  	model = "96boards RK3399 Ficus";
> diff --git a/arch/arm/dts/rk3399-firefly-u-boot.dtsi b/arch/arm/dts/rk3399-firefly-u-boot.dtsi
> new file mode 100644
> index 0000000000..eab86bdb30
> --- /dev/null
> +++ b/arch/arm/dts/rk3399-firefly-u-boot.dtsi
> @@ -0,0 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
> + */
> +
> +#include "rk3399-sdram-ddr3-1600.dtsi"
> diff --git a/arch/arm/dts/rk3399-firefly.dts b/arch/arm/dts/rk3399-firefly.dts
> index 46f2ffaf8d..a4cb64f8bd 100644
> --- a/arch/arm/dts/rk3399-firefly.dts
> +++ b/arch/arm/dts/rk3399-firefly.dts
> @@ -7,7 +7,6 @@
>  #include <dt-bindings/pwm/pwm.h>
>  #include <dt-bindings/pinctrl/rockchip.h>
>  #include "rk3399.dtsi"
> -#include "rk3399-sdram-ddr3-1600.dtsi"
>  
>  / {
>  	model = "Firefly-RK3399 Board";
> diff --git a/arch/arm/dts/rk3399-gru-bob-u-boot.dtsi b/arch/arm/dts/rk3399-gru-bob-u-boot.dtsi
> new file mode 100644
> index 0000000000..9edb8cf841
> --- /dev/null
> +++ b/arch/arm/dts/rk3399-gru-bob-u-boot.dtsi
> @@ -0,0 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
> + */
> +
> +#include "rk3399-sdram-lpddr3-samsung-4GB-1866.dtsi"
> diff --git a/arch/arm/dts/rk3399-gru-bob.dts b/arch/arm/dts/rk3399-gru-bob.dts
> index 0e3d91fc28..1ee0dc0d9f 100644
> --- a/arch/arm/dts/rk3399-gru-bob.dts
> +++ b/arch/arm/dts/rk3399-gru-bob.dts
> @@ -7,7 +7,6 @@
>  
>  /dts-v1/;
>  #include "rk3399-gru-chromebook.dtsi"
> -#include "rk3399-sdram-lpddr3-samsung-4GB-1866.dtsi"
>  
>  / {
>  	model = "Google Bob";
> diff --git a/arch/arm/dts/rk3399-rock960-u-boot.dtsi b/arch/arm/dts/rk3399-rock960-u-boot.dtsi
> new file mode 100644
> index 0000000000..5256f6d3f2
> --- /dev/null
> +++ b/arch/arm/dts/rk3399-rock960-u-boot.dtsi
> @@ -0,0 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
> + */
> +
> +#include "rk3399-sdram-lpddr3-2GB-1600.dtsi"
> diff --git a/arch/arm/dts/rk3399-rock960.dts b/arch/arm/dts/rk3399-rock960.dts
> index 25c58b4261..7e06bc97e5 100644
> --- a/arch/arm/dts/rk3399-rock960.dts
> +++ b/arch/arm/dts/rk3399-rock960.dts
> @@ -5,7 +5,6 @@
>  
>  /dts-v1/;
>  #include "rk3399-rock960.dtsi"
> -#include "rk3399-sdram-lpddr3-2GB-1600.dtsi"
>  
>  / {
>  	model = "96boards Rock960";




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
