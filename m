Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5A3B1B6226
	for <lists+linux-rockchip@lfdr.de>; Thu, 23 Apr 2020 19:40:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1/LjE14sCiBYQe6G7v79ramy00tpfeATi3Lj1xjXn4c=; b=EuiX7R40mfbWQKSYF3RUdCoCN
	TFK8WgUk9nucs+x16XeltPwKEM0Q+5HHgieLKsFy8VeDdBvAnNsZXBP0ixGlC0JN8EuQv8EyWLIR9
	CWwuFMK3NPIhD+y+w0NckKAchRrWDmiyYb/hvnhemoS7PTUFx2BpOMb8aoYHQqzkYo07Ivx3ocZrx
	httUQ+fgJQAjz3t5cF97WB8irQQnf4RQ5H8r7mVhBVt1mreVUU+hsvk5WYU4MwdwpGFFkUEHA5Z2E
	NESkrng+BhFnAFnppHNcPsgKJ+B+8thTVJjSyK5LR8q2lBKx3ySc59Ikxlv/AILg92q6ZXEAqNxcb
	929tES4QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRfpk-0006Hl-K6; Thu, 23 Apr 2020 17:40:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRfpf-0006FZ-N2
 for linux-rockchip@lists.infradead.org; Thu, 23 Apr 2020 17:40:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6DF6330E;
 Thu, 23 Apr 2020 10:40:14 -0700 (PDT)
Received: from [10.57.33.170] (unknown [10.57.33.170])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A1E0A3F68F;
 Thu, 23 Apr 2020 10:40:13 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: rockchip: fix rk3399 pcie speed
To: Peter Geis <pgwipeout@gmail.com>
References: <20200423150510.6216-1-pgwipeout@gmail.com>
 <CAMdYzYoFvaVXoYo0-vZnEmXK4GKsO_i8Cdggr7AJ8U6uS_ZW8Q@mail.gmail.com>
 <84c67c59-49ec-e33f-250e-875151968ed2@arm.com>
 <CAMdYzYq5iQJJ-7qgTvo8j=kEA-rSMCafP2ctsAgmeob7m_oDSw@mail.gmail.com>
 <CAL_Jsq+Wg=q2YcWPUAYoZO8YE9s56KvEC_YUyMB2TmyRqsjFTQ@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <d463ef54-2363-ea1c-e07d-e9a6de87c73e@arm.com>
Date: Thu, 23 Apr 2020 18:40:12 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAL_Jsq+Wg=q2YcWPUAYoZO8YE9s56KvEC_YUyMB2TmyRqsjFTQ@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_104015_842346_D1BEC526 
X-CRM114-Status: GOOD (  23.33  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 2020-04-23 5:26 pm, Rob Herring wrote:
> On Thu, Apr 23, 2020 at 11:13 AM Peter Geis <pgwipeout@gmail.com> wrote:
>>
>> On Thu, Apr 23, 2020 at 11:49 AM Robin Murphy <robin.murphy@arm.com> wrote:
>>>
>>> On 2020-04-23 4:09 pm, Peter Geis wrote:
>>>> On Thu, Apr 23, 2020 at 11:05 AM Peter Geis <pgwipeout@gmail.com> wrote:
>>>>>
>>>>> The rk3399 is capable of operating at PCIe gen 2 as per the TRM.
>>>>> The device-tree incorrectly limits us to gen 1.
>>>>>
>>>>> Correctly set the maximum link speed to <2>.
>>>>>
>>>>> Tested on the rockpro64.
>>>>
>>>> Note, this was tested on the rockpro64 after I performed the hardware
>>>> fixes as delineated at
>>>> https://forum.pine64.org/showthread.php?tid=8374
> 
> Are you going to fix everyone's board?
> 
>>>>
>>>> We probably will have to drop this back to <1> on board specific dts
>>>> files if issues are discovered.
>>>
>>> I'd say commit 712fa1777207 and the fact that the current rev 1.8
>>> datasheet only mentions 2.5GT/s rather weaken that argument. It would
>>> seem safer to leave the default as-is, and only override it for boards
>>> where Gen2 really is proven to work reliably. Which, er, is already the
>>> case ;)
>>
>> Do we have a copy of this errata?
>> I can't seem to find it.
>> The write up in that commit is extremely vague.

I'm not a Rockchip customer, so I don't have access to any more RK3399 
documentation than you do. However, I have been involved in plenty of 
errata discussions, writeups, and workarounds for Arm Ltd. IP, so based 
on general experience if I see a patch like that coming directly from 
the silicon vendor, I'm inclined to trust it at face value.

>> As the tegra mailing list often points out, the device-tree describes
>> the hardware as it is.
> 
> I think that's DT describes the h/w not settings for the Linux kernel
> which is different from what's discussed here.

Seconded - this is not a matter of software policy, it's still a 
property of the hardware regardless of what exact route it takes into 
the final DTB. If anyone wants to get into the philosophical argument of 
how accurately a SoC dtsi should describe the SoC in isolation, then I'd 
push for the correct default speed actually being 0GT/s, since if you 
don't consider the board then the link layer isn't even powered ;)

>> As:
>> The rk3399 itself supports PCIe gen 2.

That's what's in question here - clearly RK3399 *was designed* to 
support Gen2, but Rockchip have since decided that they will only 
officially support using it at Gen1 speeds.

>> The board specific implementations determine if we need to limit that to gen 1.
>> The rk3399 should be set to 2, and any board that requires that to be
>> redefined should do that via an override in their device-tree.
>> This is similar to the gmac overrides for timing.

Note that the GMAC delay settings are not "overrides", they are 
board-specific parameters based the physical trace lengths between the 
SoC and the external phy.

AFAICS this would be far more like putting the 2GHz/1.5GHz OPPs into the 
base dtsi - on the basis that that was also an original design target[1] 
and does work on some RK3399s - then expecting board authors to remember 
to downgrade them to the 1.8GHz/1.4GHz that ended up being the 
officially-supported maximum for all the chips that weren't lucky enough 
to be special "OP1"s.

>> Do we have a list of the boards that require pulling back down to gen 1?

Any that are likely to suffer wobbly signal integrity by exporting the 
PCIe signals on random pin headers instead of proper connectors would 
probably be a fair starting point, but most of that list would consist 
of any number of current and future boards that are not yet supported 
upstream, and would potentially not be supported upstream for even 
longer if some poor engineer wastes time chasing random PCI errors 
because someone set the default to an unsupported value.

Robin.

[1] 
https://www.cnx-software.com/2016/02/22/more-details-about-rockchip-rk3399-cortex-a72-soc-4k-h-264h-265vp9-usb-3-0-pcie-and-displayport/

>>> That said, "proven to work reliably" is itself a bit doubtful - my
>>> NanoPC-T4 has always been rock-solid at Gen2 with a Samsung Evo 960
>>> NVMe, yet I've seen plenty of reports of other NVMe models being
>>> unusable with mainline due to failing link training ~90% of the time.
>>> It's a grey area for sure.
> 
> That seems pretty clear to me as to what the default should be. What's
> most likely to work OOTB for users.
> 
> Rob
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
