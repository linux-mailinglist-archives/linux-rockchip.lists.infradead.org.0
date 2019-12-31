Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A5BB12DA5F
	for <lists+linux-rockchip@lfdr.de>; Tue, 31 Dec 2019 17:40:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eilNaaq9kYXa15PYUFsQn2/ibXKzKLAnZys04MuHy58=; b=av3/KSRgR9PB4TppDzgU7HMfO
	XmDbwhVq0+Y/49d7SQjrkbqX2x2N2CfymlYEhspL5KRrF6bd+c+5n+k5V2qOEiWqbte2BsgAAgPVq
	5NugwqZS8D/b8+96mlNXrv12izIgdmyKAJA7FveBHsKjXqSqpHlVfR9uGy9r3MfJBor3aYmkWhmlv
	pG2utTT687TJZkMRk/ZpZQp8wfIpgkJjJ+f8CzzwwTXvCyVJ+ILZx7ZpE/Iivi8ZT0pOZQ0bRZmXG
	4YWwRNL6PPInKoZhZauXU6SE3mlVvmKLrwL0oGMtgkgVZn6XYGrByVWoyrprWzfWNsYTctbkYU5GM
	vox84KlMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imKZ5-000484-9P; Tue, 31 Dec 2019 16:40:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imKYy-00035k-H2; Tue, 31 Dec 2019 16:40:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F0C84328;
 Tue, 31 Dec 2019 08:40:00 -0800 (PST)
Received: from [192.168.1.123] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 263263F68F;
 Tue, 31 Dec 2019 08:39:59 -0800 (PST)
Subject: Re: [RFC v2 1/1] drm/lima: Add optional devfreq support
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
References: <20191227173707.20413-1-martin.blumenstingl@googlemail.com>
 <20191227173707.20413-2-martin.blumenstingl@googlemail.com>
 <dd38ff5c-6a14-bb6a-4df5-d706f99234e9@arm.com>
 <CAFBinCDs3a8TJcQKgHUkDvssMR6Y2Kys38p50P0q=2KOiDTNHg@mail.gmail.com>
 <fe45f4f8-8c67-ded2-90bf-8d5fd6874876@arm.com>
 <CAFBinCByzLLdVTL0v=eC-TbZQnwnDY7cBLf4jyWq7N4PA1rr+A@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <ff2bdd26-3c34-63db-beb5-8f7c9fc7e790@arm.com>
Date: Tue, 31 Dec 2019 16:39:58 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <CAFBinCByzLLdVTL0v=eC-TbZQnwnDY7cBLf4jyWq7N4PA1rr+A@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_084008_658220_6AEE764B 
X-CRM114-Status: GOOD (  21.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: robh@kernel.org, tomeu.vizoso@collabora.com, airlied@linux.ie,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 steven.price@arm.com, linux-rockchip@lists.infradead.org, wens@csie.org,
 yuq825@gmail.com, daniel@ffwll.ch, linux-amlogic@lists.infradead.org,
 alyssa.rosenzweig@collabora.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 2019-12-31 2:17 pm, Martin Blumenstingl wrote:
> Hi Robin,
> 
> On Mon, Dec 30, 2019 at 1:47 AM Robin Murphy <robin.murphy@arm.com> wrote:
>>
>> On 2019-12-29 11:19 pm, Martin Blumenstingl wrote:
>>> Hi Robin,
>>>
>>> On Sun, Dec 29, 2019 at 11:58 PM Robin Murphy <robin.murphy@arm.com> wrote:
>>>>
>>>> Hi Martin,
>>>>
>>>> On 2019-12-27 5:37 pm, Martin Blumenstingl wrote:
>>>>> Most platforms with a Mali-400 or Mali-450 GPU also have support for
>>>>> changing the GPU clock frequency. Add devfreq support so the GPU clock
>>>>> rate is updated based on the actual GPU usage when the
>>>>> "operating-points-v2" property is present in the board.dts.
>>>>>
>>>>> The actual devfreq code is taken from panfrost_devfreq.c and modified so
>>>>> it matches what the lima hardware needs:
>>>>> - a call to dev_pm_opp_set_clkname() during initialization because there
>>>>>      are two clocks on Mali-4x0 IPs. "core" is the one that actually clocks
>>>>>      the GPU so we need to control it using devfreq.
>>>>> - locking when reading or writing the devfreq statistics because (unlike
>>>>>      than panfrost) we have multiple PP and GP IRQs which may finish jobs
>>>>>      concurrently.
>>>>
>>>> I gave this a quick try on my RK3328, and the clock scaling indeed kicks
>>>> in nicely on the glmark2 scenes that struggle, however something appears
>>>> to be missing in terms of regulator association, as the appropriate OPP
>>>> voltages aren't reflected in the GPU supply (fortunately the initial
>>>> voltage seems close enough to that of the highest OPP not to cause major
>>>> problems, on my box at least). With panfrost on RK3399 I do see the
>>>> supply voltage scaling accordingly, but I don't know my way around
>>>> devfreq well enough to know what matters in the difference :/
>>> first of all: thank you for trying this out! :-)
>>>
>>> does your kernel include commit 221bc77914cbcc ("drm/panfrost: Use
>>> generic code for devfreq") for your panfrost test?
>>> if I understand the devfreq API correct then I suspect with that
>>> commit panfrost also won't change the voltage anymore.
>>
>> Oh, you're quite right - I was already considering that change as
>> ancient history, but indeed it's only in 5.5-rc, while that board is
>> still on 5.4.y release kernels. No wonder I couldn't make sense of how
>> the (current) code could possibly be working :)
>>
>> I'll try the latest -rc kernel tomorrow to confirm (now that PCIe is
>> hopefully fixed), but I'm already fairly confident you've called it
>> correctly.
> I just tested it with the lima driver (by undervolting the GPU by
> 0.05V) and it seems that dev_pm_opp_set_regulators is really needed.
> I'll fix this in the next version of this patch and also submit a fix
> for panfrost (I won't be able to test that though, so help is
> appreciated in terms of testing :))

Yeah, I started hacking something up for panfrost yesterday, but at the 
point of realising the core OPP code wants refactoring to actually 
handle optional regulators without spewing errors, decided that was 
crossing the line into "work" and thus could wait until next week :D

Cheers,
Robin.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
