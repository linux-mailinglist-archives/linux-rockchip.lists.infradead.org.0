Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D860216F87
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 May 2019 05:39:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KEu0MJw3aV/LIQv+V4R1ythapyBuTeREd8bt0Jdq6NU=; b=KPeWgV4zScoBR4
	LjUD3jOa5NG6d/m/1fdR3FdR3BOUQUEq0LGFAyd62gXLQMVwQjn13iArWdHjCCilztIimEgWm7xbd
	ShD5CwBRBWJZPH+Gl20toYiBxbPKUV/acaK9Bu6hJzygynoCkQufK8s/9ns9PlbS7NNfC27aA2BR9
	nD1PQUEenKVF0EV8TokbcHJbt6kcewprCQAoo7nRYcp/64YDodFRgJZ5JNi4layEtYphTaejspjhx
	1L1tanYGzc+Zug88lxCHR8Oi8B9JNUY/RvbDevdKxy5bvkEVnmWz4DXpuCWF6BQd5nNhQW4HeWpvN
	GoTakr1hW8sNlInsF/aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hODQr-0007bJ-0Q; Wed, 08 May 2019 03:39:49 +0000
Received: from regular1.263xmail.com ([211.150.70.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hODQn-0007ah-LZ
 for linux-rockchip@lists.infradead.org; Wed, 08 May 2019 03:39:47 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.252])
 by regular1.263xmail.com (Postfix) with ESMTP id 2E91996E;
 Wed,  8 May 2019 11:39:43 +0800 (CST)
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
 P12364T140130098620160S1557286779853151_; 
 Wed, 08 May 2019 11:39:41 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <645ef264e236ec51ca3bc3119c2f1b8b>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: u-boot@lists.denx.de
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: =?UTF-8?Q?Re:_[PATCH_v7_4/4]_arm64:_rockchip:_dts:_rk3399:_Use_rk33?=
 =?UTF-8?B?OTktdS1ib290LmR0c2njgJDor7fms6jmhI/vvIzpgq7ku7bnlLFsaW51eC1yb2Nr?=
 =?UTF-8?Q?chip-bounces+kever.yang=3drock-chips.com@lists.infradead.org?=
 =?UTF-8?B?5Luj5Y+R44CR?=
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Akash Gajjar <akash@openedev.com>
References: <20190507182152.4254-1-jagan@amarulasolutions.com>
 <20190507182152.4254-5-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <8e954f57-ce89-744b-b20a-4085c16d824f@rock-chips.com>
Date: Wed, 8 May 2019 11:39:40 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20190507182152.4254-5-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_203946_053316_D86C1454 
X-CRM114-Status: GOOD (  17.20  )
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
> Now we have
> - board specific -u-boot.dtsi files for board specific u-boot
>   dts changes.
> - soc specific rk3399-u-boot.dtsi for soc specific u-boot
>   dts changes.
>
> So, include the rk3399-u-boot-dtsi on respective board -u-boot.dtsi
> and drop the properties which are globally available in rk3399-u-boot.dtsi
>
> Right now rk3399-u-boot.dtsi has sdmmc, spi1 u-boot,dm-pre-reloc
> property and more properties and nodes can be move further based
> on the requirements.
>
> This would fix, the -u-boot.dtsi inclusion for evb, firefly, puma
> boards that was accidentally merged on below commit.
> "rockchip: dts: rk3399: Create initial rk3399-u-boot.dtsi"
> (sha1: e05b4a4fa84b65a0c8873e8f34721741fe2bc09d)
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>


Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>  arch/arm/dts/rk3399-evb-u-boot.dtsi     | 1 +
>  arch/arm/dts/rk3399-firefly-u-boot.dtsi | 1 +
>  arch/arm/dts/rk3399-gru-bob-u-boot.dtsi | 1 +
>  arch/arm/dts/rk3399-gru-u-boot.dtsi     | 6 ++++++
>  arch/arm/dts/rk3399-gru.dtsi            | 1 -
>  arch/arm/dts/rk3399-puma-ddr1600.dts    | 1 +
>  arch/arm/dts/rk3399-puma.dtsi           | 2 --
>  7 files changed, 10 insertions(+), 3 deletions(-)
>  create mode 100644 arch/arm/dts/rk3399-gru-u-boot.dtsi
>
> diff --git a/arch/arm/dts/rk3399-evb-u-boot.dtsi b/arch/arm/dts/rk3399-evb-u-boot.dtsi
> index 7e2c57af22..20910e744b 100644
> --- a/arch/arm/dts/rk3399-evb-u-boot.dtsi
> +++ b/arch/arm/dts/rk3399-evb-u-boot.dtsi
> @@ -3,4 +3,5 @@
>   * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
>   */
>  
> +#include "rk3399-u-boot.dtsi"
>  #include "rk3399-sdram-lpddr3-4GB-1600.dtsi"
> diff --git a/arch/arm/dts/rk3399-firefly-u-boot.dtsi b/arch/arm/dts/rk3399-firefly-u-boot.dtsi
> index eab86bdb30..67b63a8352 100644
> --- a/arch/arm/dts/rk3399-firefly-u-boot.dtsi
> +++ b/arch/arm/dts/rk3399-firefly-u-boot.dtsi
> @@ -3,4 +3,5 @@
>   * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
>   */
>  
> +#include "rk3399-u-boot.dtsi"
>  #include "rk3399-sdram-ddr3-1600.dtsi"
> diff --git a/arch/arm/dts/rk3399-gru-bob-u-boot.dtsi b/arch/arm/dts/rk3399-gru-bob-u-boot.dtsi
> index 9edb8cf841..726f396f32 100644
> --- a/arch/arm/dts/rk3399-gru-bob-u-boot.dtsi
> +++ b/arch/arm/dts/rk3399-gru-bob-u-boot.dtsi
> @@ -3,4 +3,5 @@
>   * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
>   */
>  
> +#include "rk3399-gru-u-boot.dtsi"
>  #include "rk3399-sdram-lpddr3-samsung-4GB-1866.dtsi"
> diff --git a/arch/arm/dts/rk3399-gru-u-boot.dtsi b/arch/arm/dts/rk3399-gru-u-boot.dtsi
> new file mode 100644
> index 0000000000..7bddc3acdb
> --- /dev/null
> +++ b/arch/arm/dts/rk3399-gru-u-boot.dtsi
> @@ -0,0 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
> + */
> +
> +#include "rk3399-u-boot.dtsi"
> diff --git a/arch/arm/dts/rk3399-gru.dtsi b/arch/arm/dts/rk3399-gru.dtsi
> index 4cdb4320b7..ca0fc391b2 100644
> --- a/arch/arm/dts/rk3399-gru.dtsi
> +++ b/arch/arm/dts/rk3399-gru.dtsi
> @@ -545,7 +545,6 @@ ap_i2c_audio: &i2c8 {
>  
>  &spi1 {
>  	status = "okay";
> -	u-boot,dm-pre-reloc;
>  
>  	pinctrl-names = "default", "sleep";
>  	pinctrl-1 = <&spi1_sleep>;
> diff --git a/arch/arm/dts/rk3399-puma-ddr1600.dts b/arch/arm/dts/rk3399-puma-ddr1600.dts
> index 337e0eabb4..42763f82d0 100644
> --- a/arch/arm/dts/rk3399-puma-ddr1600.dts
> +++ b/arch/arm/dts/rk3399-puma-ddr1600.dts
> @@ -6,5 +6,6 @@
>  /dts-v1/;
>  
>  #include "rk3399-puma.dtsi"
> +#include "rk3399-u-boot.dtsi"
>  #include "rk3399-sdram-ddr3-1600.dtsi"
>  
> diff --git a/arch/arm/dts/rk3399-puma.dtsi b/arch/arm/dts/rk3399-puma.dtsi
> index 319a610022..897e0bda85 100644
> --- a/arch/arm/dts/rk3399-puma.dtsi
> +++ b/arch/arm/dts/rk3399-puma.dtsi
> @@ -647,8 +647,6 @@
>  
>  
>  &spi1 {
> -	u-boot,dm-pre-reloc;
> -
>  	status = "okay";
>  
>  	#address-cells = <1>;




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
