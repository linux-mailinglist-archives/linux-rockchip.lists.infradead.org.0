Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA603183F1
	for <lists+linux-rockchip@lfdr.de>; Thu,  9 May 2019 05:02:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yBhopEnXNba7ASaQiNl/mKoQoNoo13kU0weYFXKdfhc=; b=oe3xKciFU+rVcK
	3G7NWyhzGdEJC3LVmEfvnXsR+/h+EoAksV+1Ee4ShnXJ0smtzXOjHhIZgpnM/leCct7j/s+RfCeIw
	ZpKKmdmLh9hmVk+KvJ6mrZ7x+vdpxsI16hMCH3FnANGDPTVut5Fpy6JtJRLl4rZ3pUd5iknwdgCki
	OP0Xgj44PdeqdQCm+8WyLVx1vBLfE8WNa1Fqw8mRK9A7v2EsqwAST7LuKF8fFjF2is/vKERuY540V
	K0zenYHY6a8VojwFV0RnCtKeUyQin1pnNtCyweUxVoDT0AFR/1A2E6wm2qhAgrejdthC4DGr0YrTT
	TgSQ1KIrxSWq+4VI05ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOZJn-0007B7-Ud; Thu, 09 May 2019 03:01:59 +0000
Received: from regular1.263xmail.com ([211.150.70.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOZJk-0007Aj-H5
 for linux-rockchip@lists.infradead.org; Thu, 09 May 2019 03:01:58 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.103])
 by regular1.263xmail.com (Postfix) with ESMTP id 8E3D39E2;
 Thu,  9 May 2019 11:01:52 +0800 (CST)
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
 P31737T140211307767552S1557370902830190_; 
 Thu, 09 May 2019 11:01:51 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <250a008eb59bb6a2a56b3f9c145cba6f>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: u-boot@lists.denx.de
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v7 3/4] rockchip: dts: rk3399-u-boot: Add u-boot,
 dm-pre-reloc for spi1
From: Kever Yang <kever.yang@rock-chips.com>
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Akash Gajjar <akash@openedev.com>
References: <20190507182152.4254-1-jagan@amarulasolutions.com>
 <20190507182152.4254-4-jagan@amarulasolutions.com>
 <c7964e95-1ff3-91b7-c34d-29ca9c617215@rock-chips.com>
Message-ID: <a244a80a-9c93-f477-80c2-00fbdfcc6586@rock-chips.com>
Date: Thu, 9 May 2019 11:01:42 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <c7964e95-1ff3-91b7-c34d-29ca9c617215@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_200156_741291_967CE24E 
X-CRM114-Status: GOOD (  11.42  )
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
>> Add u-boot,dm-pre-reloc property for spi1, so-that the
>> subsequent rk3399 boards which boot from SPI.
>>
>> This help to separate the u-boot specific properties away
>> from base dts files so-that the Linux sync become easy and
>> meaningful.
>>
>> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
>
> Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Applied to u-boot-rockchip, thanks!

>
> Thanks,
> - Kever
>> ---
>>  arch/arm/dts/rk3399-u-boot.dtsi | 4 ++++
>>  1 file changed, 4 insertions(+)
>>
>> diff --git a/arch/arm/dts/rk3399-u-boot.dtsi b/arch/arm/dts/rk3399-u-boot.dtsi
>> index f533ed95eb..0786c1193a 100644
>> --- a/arch/arm/dts/rk3399-u-boot.dtsi
>> +++ b/arch/arm/dts/rk3399-u-boot.dtsi
>> @@ -6,3 +6,7 @@
>>  &sdmmc {
>>  	u-boot,dm-pre-reloc;
>>  };
>> +
>> +&spi1 {
>> +	u-boot,dm-pre-reloc;
>> +};
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
