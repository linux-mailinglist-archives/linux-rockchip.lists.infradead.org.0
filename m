Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48BBA183EF
	for <lists+linux-rockchip@lfdr.de>; Thu,  9 May 2019 05:01:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nG+H6J7KAK94t+nD3OyKxNV8VQQgw8TUn0SpSa8Afzw=; b=R8r33X5joH634e
	WrAHwfymXzgPYviIRVRke6y7mwc0MeP68KHlvUBpu48e/T/xxnhQYf0Wci6/LAY5ORNpj9tQZabni
	uWbfR9oFl5D5uibQr1LMvf9vhub4lKQz8yxzQLatY/MEhMrncLw5rikcSEP/ujecQgMLtEL61wCJ7
	TbO6IRxwSP/watAy8leS22h7vltC6SY7Jfn31Ghhs4b+jvyFTviavns1fFXG846cx7iR/Rm+2CG+v
	ZNkyqEnnu+nzeab14Qjxfc9gDxoEhEDLghoFPvlsSVpGIqkXo2dBrxT/f4X75ZUGXY2VmNwOkaQxN
	54O8dIpQasa64RyZknCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOZIs-00074p-QC; Thu, 09 May 2019 03:01:02 +0000
Received: from regular1.263xmail.com ([211.150.70.206])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOZIo-000748-Ih
 for linux-rockchip@lists.infradead.org; Thu, 09 May 2019 03:01:00 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.141])
 by regular1.263xmail.com (Postfix) with ESMTP id 651EB2D4;
 Thu,  9 May 2019 11:00:51 +0800 (CST)
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
 P18796T140244588406528S1557370842260854_; 
 Thu, 09 May 2019 11:00:50 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <139c034f0985a6ade91fac64e2097617>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: u-boot@lists.denx.de
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: =?UTF-8?Q?Re:_[PATCH_v7_1/4]_dts:_Makefile:_Build_rockchip_dtbs_bas?=
 =?UTF-8?B?ZWQgb24gU29DIHR5cGVz44CQ6K+35rOo5oSP77yM6YKu5Lu255SxbGludXgtcm9j?=
 =?UTF-8?Q?kchip-bounces+kever.yang=3drock-chips.com@lists.infradead.org?=
 =?UTF-8?B?5Luj5Y+R44CR?=
From: Kever Yang <kever.yang@rock-chips.com>
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Akash Gajjar <akash@openedev.com>
References: <20190507182152.4254-1-jagan@amarulasolutions.com>
 <20190507182152.4254-2-jagan@amarulasolutions.com>
 <d9e9c4b0-64a6-2b2f-29a3-bd7d501def1b@rock-chips.com>
Message-ID: <1fd7da71-b585-396f-6146-78a91bc7ae5e@rock-chips.com>
Date: Thu, 9 May 2019 11:00:42 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <d9e9c4b0-64a6-2b2f-29a3-bd7d501def1b@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_200058_981743_32072FCD 
X-CRM114-Status: GOOD (  11.53  )
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



On 05/08/2019 11:38 AM, Kever Yang wrote:
>
> On 05/08/2019 02:21 AM, Jagan Teki wrote:
>> - Sometimes u-boot specific dtsi files are included
>>   automatically which would build for entire rockchip SoC,
>>   even-though the respective dtsi should used it for specific
>>   family of rockchip SoC.
>> - Sometimes u-boot specific dts nodes or properties can use
>>   config macros from respective rockchip family include/configs
>>   files, example CONFIG_SPL_PAD_TO.
>>
>> So, it's better to compile the dtbs based on the respective
>> rockchip family types rather than rockchip itself to avoid
>> compilation issues.
>>
>> This patch organize the existing dtb's based on the rockchip
>> family types.
>>
>> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Applied to u-boot-rockchip, thanks!

>
> Thanks,
> - Kever
>> ---
>>  arch/arm/dts/Makefile | 35 ++++++++++++++++++++++++++---------
>>  1 file changed, 26 insertions(+), 9 deletions(-)
>>
>> diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
>> index 8e082f2840..35cbbfabd0 100644
>> --- a/arch/arm/dts/Makefile
>> +++ b/arch/arm/dts/Makefile
>> @@ -65,16 +65,23 @@ dtb-$(CONFIG_KIRKWOOD) += \
>>  dtb-$(CONFIG_ARCH_OWL) += \
>>  	bubblegum_96.dtb
>>  
>> -dtb-$(CONFIG_ARCH_ROCKCHIP) += \
>> -	rk3036-sdk.dtb \
>> -	rk3128-evb.dtb \
>> -	rk3188-radxarock.dtb \
>> -	rk3229-evb.dtb \
>> +dtb-$(CONFIG_ROCKCHIP_RK3036) += \
>> +	rk3036-sdk.dtb
>> +
>> +dtb-$(CONFIG_ROCKCHIP_RK3128) += \
>> +	rk3128-evb.dtb
>> +
>> +dtb-$(CONFIG_ROCKCHIP_RK3188) += \
>> +	rk3188-radxarock.dtb
>> +
>> +dtb-$(CONFIG_ROCKCHIP_RK322X) += \
>> +	rk3229-evb.dtb
>> +
>> +dtb-$(CONFIG_ROCKCHIP_RK3288) += \
>>  	rk3288-evb.dtb \
>>  	rk3288-fennec.dtb \
>>  	rk3288-firefly.dtb \
>>  	rk3288-miqi.dtb \
>> -	rk3399-orangepi.dtb \
>>  	rk3288-phycore-rdk.dtb \
>>  	rk3288-popmetal.dtb \
>>  	rk3288-rock2-square.dtb \
>> @@ -83,22 +90,32 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += \
>>  	rk3288-veyron-mickey.dtb \
>>  	rk3288-veyron-minnie.dtb \
>>  	rk3288-veyron-speedy.dtb \
>> -	rk3288-vyasa.dtb \
>> -	rk3328-evb.dtb \
>> -	rk3399-ficus.dtb \
>> +	rk3288-vyasa.dtb
>> +
>> +dtb-$(CONFIG_ROCKCHIP_RK3328) += \
>> +	rk3328-evb.dtb
>> +
>> +dtb-$(CONFIG_ROCKCHIP_RK3368) += \
>>  	rk3368-lion.dtb \
>>  	rk3368-sheep.dtb \
>>  	rk3368-geekbox.dtb \
>>  	rk3368-px5-evb.dtb \
>> +
>> +dtb-$(CONFIG_ROCKCHIP_RK3399) += \
>>  	rk3399-evb.dtb \
>> +	rk3399-ficus.dtb \
>>  	rk3399-firefly.dtb \
>>  	rk3399-gru-bob.dtb \
>> +	rk3399-orangepi.dtb \
>>  	rk3399-puma-ddr1333.dtb \
>>  	rk3399-puma-ddr1600.dtb \
>>  	rk3399-puma-ddr1866.dtb \
>>  	rk3399-rock960.dtb \
>> +
>> +dtb-$(CONFIG_ROCKCHIP_RV1108) += \
>>  	rv1108-elgin-r1.dtb \
>>  	rv1108-evb.dtb
>> +
>>  dtb-$(CONFIG_ARCH_MESON) += \
>>  	meson-gxbb-nanopi-k2.dtb \
>>  	meson-gxbb-odroidc2.dtb \
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
