Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 951D44AF97
	for <lists+linux-rockchip@lfdr.de>; Wed, 19 Jun 2019 03:43:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JFBmUj3rP4Rtx8izztnNi5dLtDh7EXPfr3qSmshX0II=; b=GymqOr7E89ruAP
	8FB/ErfGzTktxVJGTr/maWeabccU5WLaCrN88ytOHsAZIJEz24bukfhfWYzsQ/UT2Owb9h8eVKO1h
	lgElc9vhOG7T0Nbkh1VIatNewylhju92LzqLn0bp+K5R3DTKXBNgaI5rBD9853LCIzpd2Y7TzMZCM
	7kiVCQO+8p28ckX5/8B/yYjVMOSmkM4K9VEnyavfRhAeC+kEnr4K/XMO/YyypiGd13R3ldtphXxD1
	FE051r5+Snuf7F/VpU1gF+H0Io42CxggMGn3BENljEkf+DFapilrqwzWOW7eNGeY3ThsnNLfAu68O
	LNNdJervqX9Lx09bpZHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdPcv-0003vQ-Sf; Wed, 19 Jun 2019 01:43:05 +0000
Received: from regular1.263xmail.com ([211.150.70.199])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdPcr-0003ul-Gb
 for linux-rockchip@lists.infradead.org; Wed, 19 Jun 2019 01:43:03 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.105])
 by regular1.263xmail.com (Postfix) with ESMTP id 960E93EE;
 Wed, 19 Jun 2019 09:42:54 +0800 (CST)
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
 P20889T140175670679296S1560908565393614_; 
 Wed, 19 Jun 2019 09:42:52 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <a3e851ccce9e656b7e857e912fbac912>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: xieqinick@gmail.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [U-Boot] [PATCH v2] arm64: dts: rockchip: Add support for Khadas
 Edge/Edge-V/Captain boards
To: Mark Kettenis <mark.kettenis@xs4all.nl>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>
References: <1558696796-10745-1-git-send-email-xieqinick@gmail.com>
 <1560756277-5928-1-git-send-email-xieqinick@gmail.com>
 <5ad4d842c462a19e6241fe620705381169d48318.camel@bootlin.com>
 <CAMty3ZA-wf7tRE=+38SujjXXNGC-pb-m9RzgxFBops6w5n9qzQ@mail.gmail.com>
 <196aa8982a2d9bc2fec5408fe4d84615bbfb2c2b.camel@bootlin.com>
 <72551f4c-f7a3-1afa-a214-66bc9c5cf48d@rock-chips.com>
 <ae83ac682e9013699e602d0b1856ec02805a6fd3.camel@bootlin.com>
 <54387600d5a68bf0@bloch.sibelius.xs4all.nl>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <fd10e649-0bd8-03e0-5b95-0313de6b59a8@rock-chips.com>
Date: Wed, 19 Jun 2019 09:42:44 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <54387600d5a68bf0@bloch.sibelius.xs4all.nl>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_184301_862975_958B052D 
X-CRM114-Status: GOOD (  35.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.199 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, u-boot@lists.denx.de,
 jagan@amarulasolutions.com, nick@khadas.com,
 linux-amarula@amarulasolutions.com, xieqinick@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Paul,


On 06/19/2019 12:12 AM, Mark Kettenis wrote:
>> From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
>> Date: Tue, 18 Jun 2019 14:47:33 +0200
>>
>> Hi Kever,
>>
>> On Tue, 2019-06-18 at 18:08 +0800, Kever Yang wrote:
>>> Hi Paul,
>>>
>>>
>>> On 06/18/2019 05:03 PM, Paul Kocialkowski wrote:
>>>> Hi,
>>>>
>>>> On Tue, 2019-06-18 at 14:27 +0530, Jagan Teki wrote:
>>>>> On Tue, Jun 18, 2019 at 1:55 PM Paul Kocialkowski
>>>>> <paul.kocialkowski@bootlin.com> wrote:
>>>>>> Hi,
>>>>>>
>>>>>> On Mon, 2019-06-17 at 15:24 +0800, xieqinick@gmail.com wrote:
>>>>>>> From: Nick Xie <nick@khadas.com>
>>>>>> Was this tested with SPL support? I don't see DRAM configuration here
>>>>>> so it seems that it relies on the non-free rockchip loader.
>>>>>>
>>>>>> If that is the case, could you please indicate that in the commit
>>>>>> message?
>>>>>>
>>>>>> To maintainers: please do not merge this series before DRAM init and
>>>>>> SPL support is available for these boards.
>>>>>>
>>>>>> It seems that other RK3399 boards were merged without SPL support and
>>>>>> sofar, I have the feeling that nobody cared to explain how we got into
>>>>>> this broken situation. Please don't merge any more such board.
>>>>> fyi: no rk3399 boards were merged w/o SPL. lpddr4 boards were merged
>>>>> with TPL-enabled (which was discussed on the threads, if you remember)
>>>>> with below boot chain.
>>>>>
>>>>> rkbin (TPL) -> SPL -> U-Boot proper
>>>>>
>>>>> Same case for this board as well.
>>>> Here is a quote from Philipp Tomsich on the thread we discussed this:
>>>>
>>>> " On some boards, there will be no TPL and only a SPL stage that will
>>>> initialise DRAM (as the move to having TPL on the RK3399 is optional).
>>>>
>>>> I agree with Paul that the DRAM init should be part of U-Boot whenever
>>>> we add new boards and make an open DRAM init a prerequisite. "
>>>>
>>>> So even if I frequently confuse SPL and TPL, it doesn't change the fact
>>>> that no board should be merged without proper DRAM init.
>>>>
>>>> Please stop pushing for merging these boards. I'm not sure what we
>>>> should do about the boards that were merged already without DRAM init,
>>>> but maybe they should be reverted.
>>> I don't think we have to have full DRAM init source code for each
>>> board before we can merge it, I believe most of the board on U-Boot
>>> mainline need to removed due to this rule. There are so many boards
>>> from different vendor need a binary loader before U-Boot, and I can
>>> see only very few drivers for dram at driver/ram/, and I believe rockchip
>>> is already the most open vendor on this area.
>> Well, I am not talking about full DRAM init source code as in dynamic
>> link training. I am talking about having at least static DRAM register
>> configuration values, 

I can tell you that this is no work for all the boards, you can see how
rockchip
lpddr4(WIP, send by Jagan) driver works.
>> which is present for a good number of rockchip
>> boards.

No, there is no rockchip board only have static DRAM register
configuration values,
that maybe happens in other vendor.
>>
>> Of course, it would be best if Rockchip would consider releasing this
>> source code, 

Rockchip already release all the DRAM init source code, including DDR3 ,
LPDDR3,
and LPDDR4(wip). You can see the driver at driver/ram/rockchip/ for
everything,
which is not only static register configuration.
As I have said, rockchip is already the most open vendor in this area
till now, I don't know
if you have working on rockchip SoC based boards.

>> which would be the easiest and friendliest solution
>> towards the community here. Are there internal discussions ongoing
>> about this? If not, it would be greatly appreciated to start such
>> discussions and clearly identify what the blocking points are.
>>
>>> I won't use this rule to stop developers contribute there source code,
>> This is really sad and I think that Philipp was, like me, inclined to
>> go towards the other direction.
>>
>>> for a board support, we only need the board to have the full documentation
>>> about how to setup and boot with upstream U-Boot. and I think the
>>> most of people cares more about features in U-Boot proper. Everything
>>> before U-Boot proper, you can use TPL/SPL or alternative to use binary
>>> from vendor, as you can see all over the U-Boot mainline now, although
>>> we encourage people to use full open source TPL/SPL.
>>> Specifically for U-Boot Rockchip platform, I would like people to
>>> support not only U-Boot
>>> proper, but also for full SPL(ATF, OP-TEE support, itb image and other
>>> features)
>>> support. And for DRAM init,
>>> - if this belongs to SPL for this board, you must implement it or else
>>> SPL won't work;
>>> - if this does not belong to SPL for this board, you need implement full
>>> function SPL;
>>>     and you can either to have full function TPL with DRAM init(which is
>>> prefered)
>>>     or alternatively use binary loader from vendor.
>> This is not really a technical argument here, more of a policy argument
>> that ensures we have full free software support for the boards we
>> support, and not only half-cooked support (that will most likely never
>> be completed as soon as something that works gets merged). So it is a
>> strategical decision, not a strictly pragmatic one.
> While having full open source software support for boards is a noble
> goal, I think there should be some room for pragmatism here.  A
> significant number of u_boot targets rely on closed source components.
> In the particular case of RK3399 the situation is better than for
> other boards since you can combine the binary loader from the vendor
> with mainline U-Boot and mainline ATF to create a firmware where (as
> far as we can tell) no closed soure component remains active after
> U-Boot and ATF take over control.
>
>> I think reverting patches adding support for boards with no DRAM
>> configuration at all would send a message in the right direction here.
As a developer, I agree on this, but as a maintainer, I know too many
developers not able to do it and what most of developers need is other
features in U-Boot or SPL, and I would like the U-Boot mainline is more
active with more and more developers. So I'm afraid I agree with Mark
at this time for the policy.

If all the other SoC platforms can have the same rule for DRAM init driver
is a mandatory instead of option, eg. brcom, qcom, mtk, omap, tegra, stm,
imx, aml, and all others, then I would very happy to follow the rule.
Rockchip is open for open source the DRAM driver, you have to know this
is the decision by the vendor, but not any of developers.
On rockchip platform, developers no need to concern about the DRAM
driver(which is pretty hard for most developers) because rockchip
already contribute it.
For the time now, I know there will be full DRAM driver for rockchip SoC,
so the SoC/board support could be step by step:
U-Boot proper -> U-Boot + SPL(no DRAM init) ->U-Boot + SPL + TPL.

As you can see the rockchip LPDDR4 driver send by Jagan, has 99 patches
in V2, you can't use static register configuration to do this, and maybe you
can't have a workable version if rockchip don't release it, but I don't
think it's
correct to make all those boards with lpddr4 float outside the mainline
support
because many developers are using the boards, they can only use vendor
branch
if the board not support by mainline.

So I think merge those patches already make board work on mainline U-Boot
is pretty important for open source community.

Thanks,
- Kever
> Frankly, I don't think that would help.  It would just drive more
> people to the vendor U-Boot that has more bugs and includes a vendor
> supplied ATF binary.
>
>>> I'm not sure if you have write a new dram driver for a board, but I know
>>> even the board vendor may not have the capability to write the DRAM
>>> driver, so this should not stop developers contribute to all other 99%
>>> features on U-Boot.
>> What they can do is run the non-free blob, dump the registers
>> afterwards and then use that in the DRAM configuration dtsi. Perhaps
>> one could write up a tool to ease the process if they think the process
>> is too much for a regular bringup.
>>
>> Most of the time, the DRAM chips are soldered so the calibrated values
>> have about no reason to change over time and can just be kept as-is.
>>
>> What do you think?
> Hopefully the pending diff to add support for other DRAM types beyond
> those that are already supported would make bring us a long way in
> that direction.  Maybe one of the existing timings will already work
> for the boards that are being discussed here.
>




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
