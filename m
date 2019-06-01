Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1BEA31911
	for <lists+linux-rockchip@lfdr.de>; Sat,  1 Jun 2019 04:39:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pMvOzLeAO6vLtBUUz7IBKouwRn4FFOcpdyibJvUxQNw=; b=JT2sFjReYjznms
	ChVYhwXaUWxQ/cs9Hjzx1Tfq7J6t8fa5Q3o8u5z85AxyulPPemtHaCFHQbCG4TYJfrcPl+fLEcRAJ
	lquf8mMKo4mbrc6cwdx7Ffb+9YdYxiVvBbKInVoHtTcrbNZSIscsG/1RQuzmAnXOC2UjGg8RG0wE6
	w0/1l8Gie6T7DKTFvAJf7MIO+XtaJjF/5CzOt7fgz8z1JVLBZ/1UmdA5JvpfPbeUlqYopcrbNUbl4
	dL1QKJQTmkofyWLh1PbxSW9k9/ifSRud7m3cFeXo8FJuvYaGVgguoxDzB1jjlINMNOJ8j0JEP15Eq
	tgfGYjcB2D272PZY67OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWtvd-0003VY-8K; Sat, 01 Jun 2019 02:39:29 +0000
Received: from regular1.263xmail.com ([211.150.70.197])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWtvZ-0003Uv-KD
 for linux-rockchip@lists.infradead.org; Sat, 01 Jun 2019 02:39:27 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.235])
 by regular1.263xmail.com (Postfix) with ESMTP id BAE895E2;
 Sat,  1 Jun 2019 10:39:15 +0800 (CST)
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
 P19792T140535949944576S1559356754247127_; 
 Sat, 01 Jun 2019 10:39:14 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <ec8b4e61703c4db120ceded1b88a5e58>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: u-boot@lists.denx.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH 2/3] rk3399: nanopi4: Enable TPL
From: Kever Yang <kever.yang@rock-chips.com>
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20190509105746.24830-1-jagan@amarulasolutions.com>
 <20190509105746.24830-2-jagan@amarulasolutions.com>
 <a7a1c1ce-c7c4-dca3-36c3-336785a13b8f@rock-chips.com>
Message-ID: <3b0aa147-8a63-302a-b102-b6e4fd72d04d@rock-chips.com>
Date: Sat, 1 Jun 2019 10:39:14 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <a7a1c1ce-c7c4-dca3-36c3-336785a13b8f@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_193925_975492_E8332E74 
X-CRM114-Status: GOOD (  12.80  )
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
>> Enable TPL for NanoPC T4, NanoPI M4 boards.
>>
>> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
>
> Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Applied to u-boot-rockchip/master, thanks!

>
> Thanks,
> - Kever
>> ---
>>  configs/nanopc-t4-rk3399_defconfig | 7 ++++---
>>  configs/nanopi-m4-rk3399_defconfig | 7 ++++---
>>  2 files changed, 8 insertions(+), 6 deletions(-)
>>
>> diff --git a/configs/nanopc-t4-rk3399_defconfig b/configs/nanopc-t4-rk3399_defconfig
>> index d9f2137b4c..9b7e15d63a 100644
>> --- a/configs/nanopc-t4-rk3399_defconfig
>> +++ b/configs/nanopc-t4-rk3399_defconfig
>> @@ -5,7 +5,7 @@ CONFIG_SPL_LIBCOMMON_SUPPORT=y
>>  CONFIG_SPL_LIBGENERIC_SUPPORT=y
>>  CONFIG_SYS_MALLOC_F_LEN=0x4000
>>  CONFIG_ROCKCHIP_RK3399=y
>> -CONFIG_ROCKCHIP_SPL_RESERVE_IRAM=0x4000
>> +CONFIG_ROCKCHIP_SPL_RESERVE_IRAM=0x50000
>>  CONFIG_DEBUG_UART_BASE=0xFF1A0000
>>  CONFIG_DEBUG_UART_CLOCK=24000000
>>  CONFIG_SPL_STACK_R_ADDR=0x80000
>> @@ -14,9 +14,8 @@ CONFIG_NR_DRAM_BANKS=1
>>  CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-nanopc-t4.dtb"
>>  # CONFIG_DISPLAY_CPUINFO is not set
>>  CONFIG_DISPLAY_BOARDINFO_LATE=y
>> -CONFIG_SPL_TEXT_BASE=0xff8c2000
>>  CONFIG_SPL_STACK_R=y
>> -CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x4000
>> +CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x10000
>>  CONFIG_CMD_BOOTZ=y
>>  CONFIG_CMD_GPT=y
>>  CONFIG_CMD_MMC=y
>> @@ -24,6 +23,7 @@ CONFIG_CMD_SF=y
>>  CONFIG_CMD_USB=y
>>  # CONFIG_CMD_SETEXPR is not set
>>  CONFIG_CMD_TIME=y
>> +CONFIG_TPL=y
>>  CONFIG_SPL_OF_CONTROL=y
>>  CONFIG_DEFAULT_DEVICE_TREE="rk3399-nanopc-t4"
>>  CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
>> @@ -56,4 +56,5 @@ CONFIG_USB_ETHER_MCS7830=y
>>  CONFIG_USB_ETHER_RTL8152=y
>>  CONFIG_USB_ETHER_SMSC95XX=y
>>  CONFIG_USE_TINY_PRINTF=y
>> +CONFIG_SPL_TINY_MEMSET=y
>>  CONFIG_ERRNO_STR=y
>> diff --git a/configs/nanopi-m4-rk3399_defconfig b/configs/nanopi-m4-rk3399_defconfig
>> index c2832788f0..92e70dd939 100644
>> --- a/configs/nanopi-m4-rk3399_defconfig
>> +++ b/configs/nanopi-m4-rk3399_defconfig
>> @@ -5,7 +5,7 @@ CONFIG_SPL_LIBCOMMON_SUPPORT=y
>>  CONFIG_SPL_LIBGENERIC_SUPPORT=y
>>  CONFIG_SYS_MALLOC_F_LEN=0x4000
>>  CONFIG_ROCKCHIP_RK3399=y
>> -CONFIG_ROCKCHIP_SPL_RESERVE_IRAM=0x4000
>> +CONFIG_ROCKCHIP_SPL_RESERVE_IRAM=0x50000
>>  CONFIG_DEBUG_UART_BASE=0xFF1A0000
>>  CONFIG_DEBUG_UART_CLOCK=24000000
>>  CONFIG_SPL_STACK_R_ADDR=0x80000
>> @@ -14,9 +14,8 @@ CONFIG_NR_DRAM_BANKS=1
>>  CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-nanopi-m4.dtb"
>>  # CONFIG_DISPLAY_CPUINFO is not set
>>  CONFIG_DISPLAY_BOARDINFO_LATE=y
>> -CONFIG_SPL_TEXT_BASE=0xff8c2000
>>  CONFIG_SPL_STACK_R=y
>> -CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x4000
>> +CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x10000
>>  CONFIG_CMD_BOOTZ=y
>>  CONFIG_CMD_GPT=y
>>  CONFIG_CMD_MMC=y
>> @@ -24,6 +23,7 @@ CONFIG_CMD_SF=y
>>  CONFIG_CMD_USB=y
>>  # CONFIG_CMD_SETEXPR is not set
>>  CONFIG_CMD_TIME=y
>> +CONFIG_TPL=y
>>  CONFIG_SPL_OF_CONTROL=y
>>  CONFIG_DEFAULT_DEVICE_TREE="rk3399-nanopi-m4"
>>  CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
>> @@ -56,4 +56,5 @@ CONFIG_USB_ETHER_MCS7830=y
>>  CONFIG_USB_ETHER_RTL8152=y
>>  CONFIG_USB_ETHER_SMSC95XX=y
>>  CONFIG_USE_TINY_PRINTF=y
>> +CONFIG_SPL_TINY_MEMSET=y
>>  CONFIG_ERRNO_STR=y
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
