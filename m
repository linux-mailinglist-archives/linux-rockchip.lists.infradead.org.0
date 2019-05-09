Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92304183F0
	for <lists+linux-rockchip@lfdr.de>; Thu,  9 May 2019 05:01:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fkyUFUNef7hcjKbB/bVT6UJhsYdFC8sT2qw83LY76O8=; b=I1wagHevGb3dVM
	4S5kF/jxpLcKb/jeqfv7W1P9Dj6fD/43/oddTJNN0haO45cpnmMTkFii92xWl1Szk+KHVf8STHqw1
	XGr5+LEKyGXf9Q9rR4bXsp0GVPF/YUqWmW1Y3MRxM69W8dWFkkxBPFB4nAbVXV+u8o6yQgI1r0Rlz
	KDOqnd7to6HoxdAL3AZG50gtJnOpzlfBJAf3avo827e/Frz5Pw11H4V+sV5Q/hxH8L6d1A0QPfyvR
	B9jndAmlEpRfNr8fg/C3IqPOcCq1F9qAlovOKXbIwevkjm00xya4RGY0YcNuTFupGhITtZxzfMV2E
	/UzmCADa/rqN+qPemHPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOZJM-00077u-E4; Thu, 09 May 2019 03:01:32 +0000
Received: from regular1.263xmail.com ([211.150.70.201])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOZJI-00077K-CD
 for linux-rockchip@lists.infradead.org; Thu, 09 May 2019 03:01:30 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.105])
 by regular1.263xmail.com (Postfix) with ESMTP id A3A2122B;
 Thu,  9 May 2019 11:01:25 +0800 (CST)
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
 P31606T140272124020480S1557370876411694_; 
 Thu, 09 May 2019 11:01:24 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <f1eb4f000c35a1bdf050b96ac77e7462>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: u-boot@lists.denx.de
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v7 2/4] arm64: rockchip: dts: rk3399: Add board
 -u-boot.dtsi files
From: Kever Yang <kever.yang@rock-chips.com>
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Akash Gajjar <akash@openedev.com>
References: <20190507182152.4254-1-jagan@amarulasolutions.com>
 <20190507182152.4254-3-jagan@amarulasolutions.com>
 <989d9a0b-e6fa-9873-7cbc-147f4f14e6bb@rock-chips.com>
Message-ID: <c3d2e331-8f45-d41f-acc1-e9ab7a21a787@rock-chips.com>
Date: Thu, 9 May 2019 11:01:16 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <989d9a0b-e6fa-9873-7cbc-147f4f14e6bb@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_200128_770771_A2DBE982 
X-CRM114-Status: GOOD (  13.90  )
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
>> Devicetree files in RK3399 platform is synced from Linux, like other
>> platforms does. Apart from these u-boot in rk3399 would also require
>> some u-boot specific node like dmc.
>>
>> dmc node has big chunk of DDR timing parameters which are specific
>> to specific board, and maintained with rk3399-sdram*.dtsi.
>>
>> So, create board specific -u-boot.dtsi files and move these sdram dtsi
>> files accordingly. This would help of maintain u-boot specific changes
>> separately without touching Linux dts(i) files which indeed easy for
>> syncing from Linux between releases.
>>
>> These board specific -u-boot.dtsi can be extendible to add more u-boot
>> specific nodes or properties in future.
>>
>> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
>
> Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Applied to u-boot-rockchip, thanks!

>
> Thanks,
> - Kever
>> ---
>>  arch/arm/dts/rk3399-evb-u-boot.dtsi     | 6 ++++++
>>  arch/arm/dts/rk3399-evb.dts             | 1 -
>>  arch/arm/dts/rk3399-ficus-u-boot.dtsi   | 6 ++++++
>>  arch/arm/dts/rk3399-ficus.dts           | 1 -
>>  arch/arm/dts/rk3399-firefly-u-boot.dtsi | 6 ++++++
>>  arch/arm/dts/rk3399-firefly.dts         | 1 -
>>  arch/arm/dts/rk3399-gru-bob-u-boot.dtsi | 6 ++++++
>>  arch/arm/dts/rk3399-gru-bob.dts         | 1 -
>>  arch/arm/dts/rk3399-rock960-u-boot.dtsi | 6 ++++++
>>  arch/arm/dts/rk3399-rock960.dts         | 1 -
>>  10 files changed, 30 insertions(+), 5 deletions(-)
>>  create mode 100644 arch/arm/dts/rk3399-evb-u-boot.dtsi
>>  create mode 100644 arch/arm/dts/rk3399-ficus-u-boot.dtsi
>>  create mode 100644 arch/arm/dts/rk3399-firefly-u-boot.dtsi
>>  create mode 100644 arch/arm/dts/rk3399-gru-bob-u-boot.dtsi
>>  create mode 100644 arch/arm/dts/rk3399-rock960-u-boot.dtsi
>>
>> diff --git a/arch/arm/dts/rk3399-evb-u-boot.dtsi b/arch/arm/dts/rk3399-evb-u-boot.dtsi
>> new file mode 100644
>> index 0000000000..7e2c57af22
>> --- /dev/null
>> +++ b/arch/arm/dts/rk3399-evb-u-boot.dtsi
>> @@ -0,0 +1,6 @@
>> +// SPDX-License-Identifier: GPL-2.0+
>> +/*
>> + * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
>> + */
>> +
>> +#include "rk3399-sdram-lpddr3-4GB-1600.dtsi"
>> diff --git a/arch/arm/dts/rk3399-evb.dts b/arch/arm/dts/rk3399-evb.dts
>> index 9162f3dd50..a506e8da37 100644
>> --- a/arch/arm/dts/rk3399-evb.dts
>> +++ b/arch/arm/dts/rk3399-evb.dts
>> @@ -7,7 +7,6 @@
>>  #include <dt-bindings/pwm/pwm.h>
>>  #include <dt-bindings/pinctrl/rockchip.h>
>>  #include "rk3399.dtsi"
>> -#include "rk3399-sdram-lpddr3-4GB-1600.dtsi"
>>  
>>  / {
>>  	model = "Rockchip RK3399 Evaluation Board";
>> diff --git a/arch/arm/dts/rk3399-ficus-u-boot.dtsi b/arch/arm/dts/rk3399-ficus-u-boot.dtsi
>> new file mode 100644
>> index 0000000000..eab86bdb30
>> --- /dev/null
>> +++ b/arch/arm/dts/rk3399-ficus-u-boot.dtsi
>> @@ -0,0 +1,6 @@
>> +// SPDX-License-Identifier: GPL-2.0+
>> +/*
>> + * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
>> + */
>> +
>> +#include "rk3399-sdram-ddr3-1600.dtsi"
>> diff --git a/arch/arm/dts/rk3399-ficus.dts b/arch/arm/dts/rk3399-ficus.dts
>> index 4af0e4e383..4b2dd82b67 100644
>> --- a/arch/arm/dts/rk3399-ficus.dts
>> +++ b/arch/arm/dts/rk3399-ficus.dts
>> @@ -8,7 +8,6 @@
>>  
>>  /dts-v1/;
>>  #include "rk3399-rock960.dtsi"
>> -#include "rk3399-sdram-ddr3-1600.dtsi"
>>  
>>  / {
>>  	model = "96boards RK3399 Ficus";
>> diff --git a/arch/arm/dts/rk3399-firefly-u-boot.dtsi b/arch/arm/dts/rk3399-firefly-u-boot.dtsi
>> new file mode 100644
>> index 0000000000..eab86bdb30
>> --- /dev/null
>> +++ b/arch/arm/dts/rk3399-firefly-u-boot.dtsi
>> @@ -0,0 +1,6 @@
>> +// SPDX-License-Identifier: GPL-2.0+
>> +/*
>> + * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
>> + */
>> +
>> +#include "rk3399-sdram-ddr3-1600.dtsi"
>> diff --git a/arch/arm/dts/rk3399-firefly.dts b/arch/arm/dts/rk3399-firefly.dts
>> index 46f2ffaf8d..a4cb64f8bd 100644
>> --- a/arch/arm/dts/rk3399-firefly.dts
>> +++ b/arch/arm/dts/rk3399-firefly.dts
>> @@ -7,7 +7,6 @@
>>  #include <dt-bindings/pwm/pwm.h>
>>  #include <dt-bindings/pinctrl/rockchip.h>
>>  #include "rk3399.dtsi"
>> -#include "rk3399-sdram-ddr3-1600.dtsi"
>>  
>>  / {
>>  	model = "Firefly-RK3399 Board";
>> diff --git a/arch/arm/dts/rk3399-gru-bob-u-boot.dtsi b/arch/arm/dts/rk3399-gru-bob-u-boot.dtsi
>> new file mode 100644
>> index 0000000000..9edb8cf841
>> --- /dev/null
>> +++ b/arch/arm/dts/rk3399-gru-bob-u-boot.dtsi
>> @@ -0,0 +1,6 @@
>> +// SPDX-License-Identifier: GPL-2.0+
>> +/*
>> + * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
>> + */
>> +
>> +#include "rk3399-sdram-lpddr3-samsung-4GB-1866.dtsi"
>> diff --git a/arch/arm/dts/rk3399-gru-bob.dts b/arch/arm/dts/rk3399-gru-bob.dts
>> index 0e3d91fc28..1ee0dc0d9f 100644
>> --- a/arch/arm/dts/rk3399-gru-bob.dts
>> +++ b/arch/arm/dts/rk3399-gru-bob.dts
>> @@ -7,7 +7,6 @@
>>  
>>  /dts-v1/;
>>  #include "rk3399-gru-chromebook.dtsi"
>> -#include "rk3399-sdram-lpddr3-samsung-4GB-1866.dtsi"
>>  
>>  / {
>>  	model = "Google Bob";
>> diff --git a/arch/arm/dts/rk3399-rock960-u-boot.dtsi b/arch/arm/dts/rk3399-rock960-u-boot.dtsi
>> new file mode 100644
>> index 0000000000..5256f6d3f2
>> --- /dev/null
>> +++ b/arch/arm/dts/rk3399-rock960-u-boot.dtsi
>> @@ -0,0 +1,6 @@
>> +// SPDX-License-Identifier: GPL-2.0+
>> +/*
>> + * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
>> + */
>> +
>> +#include "rk3399-sdram-lpddr3-2GB-1600.dtsi"
>> diff --git a/arch/arm/dts/rk3399-rock960.dts b/arch/arm/dts/rk3399-rock960.dts
>> index 25c58b4261..7e06bc97e5 100644
>> --- a/arch/arm/dts/rk3399-rock960.dts
>> +++ b/arch/arm/dts/rk3399-rock960.dts
>> @@ -5,7 +5,6 @@
>>  
>>  /dts-v1/;
>>  #include "rk3399-rock960.dtsi"
>> -#include "rk3399-sdram-lpddr3-2GB-1600.dtsi"
>>  
>>  / {
>>  	model = "96boards Rock960";
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
