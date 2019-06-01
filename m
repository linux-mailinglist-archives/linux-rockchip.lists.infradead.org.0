Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A0531913
	for <lists+linux-rockchip@lfdr.de>; Sat,  1 Jun 2019 04:40:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5t1mvOhuHxc7mXwoyyzGr8e51uG662BMQNLv16ITXlQ=; b=jx92Rrym1M7FxK
	MlX8LwmxoenBjopx702YumQEsYwclvJIlqcbZ/RuV0OqMRS9UEaOXXXAA0HjgDrWcQawn6z94UOFU
	+SJou9JbB02ra0bVGRelEmV2zJtgs218ndaj96mZoZHZsEOY3pgoxP0xK5fQc0ASsvZnfdcP7ZSn5
	oHs/j6l2Dr7sAICCZ5hMuzJw+gg/p+CUSFQnzSIbzpqNeGPkijtCtzUgf8Kas/3Xmum1rHw0zm2XR
	QDrIo6Pf/LfsmkiCLVsOVkmv/Fdetjr6hcDONQK0ZniT37pduOHMSikVRM0PgvNKbFVzVJ/u1vzKN
	TwOxrKb3yJss8Hulnr+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWtw5-0003bl-M4; Sat, 01 Jun 2019 02:39:57 +0000
Received: from regular1.263xmail.com ([211.150.70.205])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWtw2-0003bJ-4L
 for linux-rockchip@lists.infradead.org; Sat, 01 Jun 2019 02:39:56 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.140])
 by regular1.263xmail.com (Postfix) with ESMTP id B947F466;
 Sat,  1 Jun 2019 10:39:51 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.12.214] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P16448T140512971970304S1559356790673275_; 
 Sat, 01 Jun 2019 10:39:51 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <1c24933a8009ab13beeadc81dc318bd5>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: u-boot@lists.denx.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH 3/3] doc: rockchip: Add doc for rk3399 TPL build/flash
From: Kever Yang <kever.yang@rock-chips.com>
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20190509105746.24830-1-jagan@amarulasolutions.com>
 <20190509105746.24830-3-jagan@amarulasolutions.com>
 <b5cd9180-56c9-dd02-e6bf-4e7638902d5c@rock-chips.com>
Message-ID: <f821cb88-a2b4-e586-91ef-71052cd0098a@rock-chips.com>
Date: Sat, 1 Jun 2019 10:39:50 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <b5cd9180-56c9-dd02-e6bf-4e7638902d5c@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_193954_479473_60FE7C36 
X-CRM114-Status: GOOD (  14.43  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 u-boot@lists.denx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org



On 05/29/2019 04:02 PM, Kever Yang wrote:
> Hi Jagan,
>
>
> On 05/09/2019 06:57 PM, Jagan Teki wrote:
>> This patch add documentation for TPL build and flashing steps
>> for rk3399 boards.
>>
>> Add full boot log for future reference.
>>
>> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Applied to u-boot-rockchip/master, thanks!

>
> Thanks,
> - Kever
>> ---
>>  doc/README.rockchip | 51 ++++++++++++++++++++++++++++++++++++++++++++-
>>  1 file changed, 50 insertions(+), 1 deletion(-)
>>
>> diff --git a/doc/README.rockchip b/doc/README.rockchip
>> index ca4d6473b0..264f7e4994 100644
>> --- a/doc/README.rockchip
>> +++ b/doc/README.rockchip
>> @@ -173,7 +173,10 @@ For example:
>>       => make u-boot.itb
>>  
>>       (Get spl/u-boot-spl-dtb.bin, u-boot.itb images and some boards would get
>> -      spl/u-boot-spl.bin since it doesn't enable CONFIG_SPL_OF_CONTROL)
>> +      spl/u-boot-spl.bin since it doesn't enable CONFIG_SPL_OF_CONTROL
>> +
>> +      If TPL enabled on the target, get tpl/u-boot-tpl-dtb.bin or tpl/u-boot-tpl.bin
>> +      if CONFIG_TPL_OF_CONTROL not enabled)
>>  
>>  Writing to the board with USB
>>  =============================
>> @@ -455,6 +458,52 @@ Net:   eth0: ethernet@fe300000
>>  Hit any key to stop autoboot:  0
>>  =>
>>  
>> +Option 3: Package the image with TPL:
>> +
>> +  - Prefix rk3399 header to TPL image
>> +
>> +    => cd /path/to/u-boot
>> +    => ./tools/mkimage -n rk3399 -T rksd -d tpl/u-boot-tpl-dtb.bin out
>> +
>> +  - Concatinate tpl with spl
>> +
>> +    => cd /path/to/u-boot
>> +    => cat ./spl/u-boot-spl-dtb.bin >> out
>> +
>> +  - Write tpl+spl at 64th sector
>> +
>> +    => sudo dd if=out of=/dev/sdc seek=64
>> +
>> +  - Write U-Boot proper at 16384 sector
>> +
>> +    => sudo dd if=u-boot.itb of=/dev/sdc seek=16384
>> +    => sync
>> +
>> +Put this SD (or micro-SD) card into your board and reset it. You should see
>> +something like:
>> +
>> +U-Boot TPL board init
>> +Trying to boot from BOOTROM
>> +Returning to boot ROM...
>> +
>> +U-Boot SPL board init
>> +Trying to boot from MMC1
>> +
>> +
>> +U-Boot 2019.07-rc1-00241-g5b3244767a (May 08 2019 - 10:51:06 +0530)
>> +
>> +Model: Orange Pi RK3399 Board
>> +DRAM:  2 GiB
>> +MMC:   dwmmc@fe310000: 2, dwmmc@fe320000: 1, sdhci@fe330000: 0
>> +Loading Environment from MMC... OK
>> +In:    serial@ff1a0000
>> +Out:   serial@ff1a0000
>> +Err:   serial@ff1a0000
>> +Model: Orange Pi RK3399 Board
>> +Net:   eth0: ethernet@fe300000
>> +Hit any key to stop autoboot:  0
>> +=>
>> +
>>  Using fastboot on rk3288
>>  ========================
>>  - Write GPT partition layout to mmc device which fastboot want to use it to
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
