Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE87183F2
	for <lists+linux-rockchip@lfdr.de>; Thu,  9 May 2019 05:02:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZF4GC3xNl0CW2pzyTJZGgS+cI4mNa3CYD/PmTMPYmH4=; b=Gyq7rLEoYqzcR+
	vDIJDflWijzlA1cx1zBUc2kRd1wGcr6dyeB9AawiCMxfL6/dGDZt4nc5JHb6fFMnbBCwJ/leo44sP
	Z6BoKXrbezenqgcXbm5N5JRwQXj47/5wSibUfIWy/eGdwO8GD/UilLnQZcUvwXG2yi1HYu2yoJyFv
	ymMnhkbYeQieLZuhoXWI+yDojf9/uY6Vsa75OCcMY7nkECWAohO5dxD0HqqUe27M4d20I7TPyX+kD
	dNwz4umEg7fUjRL9AgV/1RwQNsDKTuLO74y4gFMA0Ur0TPPOV3s791H2Uc8euzFz0tVp07xl5ujZE
	Cxbp5U9TlAMEmFCdp6Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOZK3-0007EU-EK; Thu, 09 May 2019 03:02:15 +0000
Received: from regular1.263xmail.com ([211.150.70.199])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOZJz-0007Du-Bz
 for linux-rockchip@lists.infradead.org; Thu, 09 May 2019 03:02:13 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.252])
 by regular1.263xmail.com (Postfix) with ESMTP id 6C8B63CB;
 Thu,  9 May 2019 11:02:07 +0800 (CST)
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
 P12364T140129786119936S1557370921312231_; 
 Thu, 09 May 2019 11:02:04 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <89605a2d1f80d0dfa4b9de6c2ab47727>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: u-boot@lists.denx.de
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v7 4/4] arm64: rockchip: dts: rk3399: Use
 rk3399-u-boot.dtsi
From: Kever Yang <kever.yang@rock-chips.com>
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Akash Gajjar <akash@openedev.com>
References: <20190507182152.4254-1-jagan@amarulasolutions.com>
 <20190507182152.4254-5-jagan@amarulasolutions.com>
 <8e954f57-ce89-744b-b20a-4085c16d824f@rock-chips.com>
Message-ID: <2aa12a04-2155-001f-5b8b-8d3e47017503@rock-chips.com>
Date: Thu, 9 May 2019 11:02:01 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <8e954f57-ce89-744b-b20a-4085c16d824f@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_200211_725567_5C19BED8 
X-CRM114-Status: GOOD (  15.39  )
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



On 05/08/2019 11:39 AM, Kever Yang wrote:
>
> On 05/08/2019 02:21 AM, Jagan Teki wrote:
>> Now we have
>> - board specific -u-boot.dtsi files for board specific u-boot
>>   dts changes.
>> - soc specific rk3399-u-boot.dtsi for soc specific u-boot
>>   dts changes.
>>
>> So, include the rk3399-u-boot-dtsi on respective board -u-boot.dtsi
>> and drop the properties which are globally available in rk3399-u-boot.dtsi
>>
>> Right now rk3399-u-boot.dtsi has sdmmc, spi1 u-boot,dm-pre-reloc
>> property and more properties and nodes can be move further based
>> on the requirements.
>>
>> This would fix, the -u-boot.dtsi inclusion for evb, firefly, puma
>> boards that was accidentally merged on below commit.
>> "rockchip: dts: rk3399: Create initial rk3399-u-boot.dtsi"
>> (sha1: e05b4a4fa84b65a0c8873e8f34721741fe2bc09d)
>>
>> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
>
> Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Applied to u-boot-rockchip, thanks!

>
> Thanks,
> - Kever
>> ---
>>  arch/arm/dts/rk3399-evb-u-boot.dtsi     | 1 +
>>  arch/arm/dts/rk3399-firefly-u-boot.dtsi | 1 +
>>  arch/arm/dts/rk3399-gru-bob-u-boot.dtsi | 1 +
>>  arch/arm/dts/rk3399-gru-u-boot.dtsi     | 6 ++++++
>>  arch/arm/dts/rk3399-gru.dtsi            | 1 -
>>  arch/arm/dts/rk3399-puma-ddr1600.dts    | 1 +
>>  arch/arm/dts/rk3399-puma.dtsi           | 2 --
>>  7 files changed, 10 insertions(+), 3 deletions(-)
>>  create mode 100644 arch/arm/dts/rk3399-gru-u-boot.dtsi
>>
>> diff --git a/arch/arm/dts/rk3399-evb-u-boot.dtsi b/arch/arm/dts/rk3399-evb-u-boot.dtsi
>> index 7e2c57af22..20910e744b 100644
>> --- a/arch/arm/dts/rk3399-evb-u-boot.dtsi
>> +++ b/arch/arm/dts/rk3399-evb-u-boot.dtsi
>> @@ -3,4 +3,5 @@
>>   * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
>>   */
>>  
>> +#include "rk3399-u-boot.dtsi"
>>  #include "rk3399-sdram-lpddr3-4GB-1600.dtsi"
>> diff --git a/arch/arm/dts/rk3399-firefly-u-boot.dtsi b/arch/arm/dts/rk3399-firefly-u-boot.dtsi
>> index eab86bdb30..67b63a8352 100644
>> --- a/arch/arm/dts/rk3399-firefly-u-boot.dtsi
>> +++ b/arch/arm/dts/rk3399-firefly-u-boot.dtsi
>> @@ -3,4 +3,5 @@
>>   * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
>>   */
>>  
>> +#include "rk3399-u-boot.dtsi"
>>  #include "rk3399-sdram-ddr3-1600.dtsi"
>> diff --git a/arch/arm/dts/rk3399-gru-bob-u-boot.dtsi b/arch/arm/dts/rk3399-gru-bob-u-boot.dtsi
>> index 9edb8cf841..726f396f32 100644
>> --- a/arch/arm/dts/rk3399-gru-bob-u-boot.dtsi
>> +++ b/arch/arm/dts/rk3399-gru-bob-u-boot.dtsi
>> @@ -3,4 +3,5 @@
>>   * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
>>   */
>>  
>> +#include "rk3399-gru-u-boot.dtsi"
>>  #include "rk3399-sdram-lpddr3-samsung-4GB-1866.dtsi"
>> diff --git a/arch/arm/dts/rk3399-gru-u-boot.dtsi b/arch/arm/dts/rk3399-gru-u-boot.dtsi
>> new file mode 100644
>> index 0000000000..7bddc3acdb
>> --- /dev/null
>> +++ b/arch/arm/dts/rk3399-gru-u-boot.dtsi
>> @@ -0,0 +1,6 @@
>> +// SPDX-License-Identifier: GPL-2.0+
>> +/*
>> + * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
>> + */
>> +
>> +#include "rk3399-u-boot.dtsi"
>> diff --git a/arch/arm/dts/rk3399-gru.dtsi b/arch/arm/dts/rk3399-gru.dtsi
>> index 4cdb4320b7..ca0fc391b2 100644
>> --- a/arch/arm/dts/rk3399-gru.dtsi
>> +++ b/arch/arm/dts/rk3399-gru.dtsi
>> @@ -545,7 +545,6 @@ ap_i2c_audio: &i2c8 {
>>  
>>  &spi1 {
>>  	status = "okay";
>> -	u-boot,dm-pre-reloc;
>>  
>>  	pinctrl-names = "default", "sleep";
>>  	pinctrl-1 = <&spi1_sleep>;
>> diff --git a/arch/arm/dts/rk3399-puma-ddr1600.dts b/arch/arm/dts/rk3399-puma-ddr1600.dts
>> index 337e0eabb4..42763f82d0 100644
>> --- a/arch/arm/dts/rk3399-puma-ddr1600.dts
>> +++ b/arch/arm/dts/rk3399-puma-ddr1600.dts
>> @@ -6,5 +6,6 @@
>>  /dts-v1/;
>>  
>>  #include "rk3399-puma.dtsi"
>> +#include "rk3399-u-boot.dtsi"
>>  #include "rk3399-sdram-ddr3-1600.dtsi"
>>  
>> diff --git a/arch/arm/dts/rk3399-puma.dtsi b/arch/arm/dts/rk3399-puma.dtsi
>> index 319a610022..897e0bda85 100644
>> --- a/arch/arm/dts/rk3399-puma.dtsi
>> +++ b/arch/arm/dts/rk3399-puma.dtsi
>> @@ -647,8 +647,6 @@
>>  
>>  
>>  &spi1 {
>> -	u-boot,dm-pre-reloc;
>> -
>>  	status = "okay";
>>  
>>  	#address-cells = <1>;
>
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
>




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
