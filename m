Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23DB71145F2
	for <lists+linux-rockchip@lfdr.de>; Thu,  5 Dec 2019 18:31:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=J8BxBawJYr8isxVlsm2yH6w+xoibJrt0IdWtbNbSykc=; b=qyH1shFW7lsv3QXxLnprJ6tWW
	F4IbNehCWgeouv4qJc4Q/la9LnzAk6+jMHS5PnKLZ3bi9MuxComCeO+76sEPqjUoV6Lgg2lcrD32r
	xZmkoRSusyxIoHjgewu7jdL5pMjkbTcx7ZwOHzTmfcBDm2rum5S10ZuVNEcAKhBSmfYvg2es4eAiQ
	Eg95PxEIN6BGnUPpJs4wnuOn5tUsMMQDp9FBkw1Xxl3kDjRRNn9SyHUr5wVo/2lFUgfTkttfdqM5R
	qPHdfWwdVOLhq69ZuygqSxDl/aqJRvlmgKC2FCeWGuTGCexgQIAtHtmvMTwC8XpXhDi/rKrBxLnqb
	ShOqv/sLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icuyD-0006u3-A1; Thu, 05 Dec 2019 17:31:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icuyA-0006tU-EL
 for linux-rockchip@lists.infradead.org; Thu, 05 Dec 2019 17:31:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8655531B;
 Thu,  5 Dec 2019 09:31:10 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 151443F52E;
 Thu,  5 Dec 2019 09:31:09 -0800 (PST)
Subject: Re: [BUG] rk3399 fails to reboot correctly with PCIE device inserted
To: Peter Geis <pgwipeout@gmail.com>
References: <CAMdYzYrLX=z-OVoW9RVecjoYK1J8EfLQ=cV1aNUqPsXqiOU+2g@mail.gmail.com>
 <2a5d91f1-033e-8acc-5b57-16ca77204a0b@arm.com>
 <CAMdYzYpdW13roxwHxD5w=XLBiyASp+biMqP-n2+QD9cL5g_hvg@mail.gmail.com>
 <CAMdYzYoCzU4F66Hpdy6XBTWwWi+WmSo50R+sCSDEFOBKr84U1w@mail.gmail.com>
 <CAMdYzYrHvGHRq51fbNp4Y=9HhaEUXhyoYt-dy70xVFrOmkNOTA@mail.gmail.com>
 <55c56fb7-9402-9798-9631-c1c3f607d663@arm.com>
 <CAMdYzYqvNa5_5xMnw=MVOL5iJQq_-cBVGtwQMXQ_JqLvyx=mYA@mail.gmail.com>
 <CAMdYzYorsxrb1_xWjeAW-76QQ3a+Y+5iHskhM4M1N5rsUzoY7w@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <eb09e106-e708-8857-690e-0052f860f19c@arm.com>
Date: Thu, 5 Dec 2019 17:31:08 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAMdYzYorsxrb1_xWjeAW-76QQ3a+Y+5iHskhM4M1N5rsUzoY7w@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_093114_568592_C41C707C 
X-CRM114-Status: GOOD (  19.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: heiko.stuebner@theobroma-systems.com,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 05/12/2019 1:07 pm, Peter Geis wrote:
[...]
> The power off issue still exists, but I dug into the psci pm code for
> the poweroff function and unless there is a gpio this function is a
> no-op.
> For this reason I think the rk808 driver should be modified to set
> itself as the primary poweroff provider if the
> rockchip,system-power-controller flag is set.
> The other option is to somehow make ATF aware of the rk808 and have it
> trigger the poweroff.
> Thoughts on this?

Yeah, this seems to be a fundamental limitation of the RK808 that, short 
of wiring up a GPIO to literally hold down the power button, the only 
way to convince it to turn off is over I2C. Downstream kernels seem to 
hack around this by short-circuiting ATF on shutdown such that the RK808 
driver pulls the plug before PSCI_SYSTEM_OFF ever gets called, but I'm 
not sure that's viable in general since it precludes gracefully shutting 
down the Secure world software stack.

The main challenge in implementing I2C-based shutdown in ATF would be 
making it sufficiently robust without being incredibly complicated. 
Since the hardware resources are owned by the Non-Secure world, ATF 
can't make any assumptions about them being in a sane and usable state 
at the point where it might want to touch them - a shutdown could 
potentially be invoked while the I2C controller is already in the middle 
of a transfer. Possibly bit-banging GPIOs, including a bus recovery 
sequence, might be sufficient yet still relatively small and simple?

Robin.

> [0] https://github.com/ARM-software/arm-trusted-firmware/commit/45d4611563038486890b40d61e41b68213326afc
> [1] https://github.com/armbian/build/blob/master/patch/atf/atf-rk3399/switch-power-domains-on-before-reset.patch
>>
>>>
>>>>
>>>> Log is below:
>>>> [    0.261198] Detected PIPT I-cache on CPU5
>>>> [    0.261223] GICv3: CPU5: found redistributor 101 region 0:0x00000000fefa0000
>>>> [    0.261235] GICv3: CPU5: using allocated LPI pending table
>>>> @0x00000000f0120000
>>>> [    0.261263] CPU5: Booted secondary processor 0x0000000101 [0x410fd082]
>>>> [    0.261377] smp: Brought up 1 node, 6 CPUs
>>>> [    0.274833] SMP: Total of 6 processors activated.
>>>> [    0.275297] CPU features: detected: 32-bit EL0 Support
>>>> [    0.275801] CPU features: detected: CRC32 instructions
>>>> [    0.290797] CPU: All CPU(s) started at EL2
>>>> [    0.291242] alternatives: patching kernel code
>>>> [    0.294848] devtmpfs: initialized
>>>> [    0.311658] clocksource: jiffies: mask: 0xffffffff max_cycles:
>>>> 0xffffffff, max_idle_ns: 7645041785100000 ns
>>>> [    0.312629] futex hash table entries: 2048 (order: 5, 131072 bytes, linear)
>>>> [    0.315223] pinctrl core: initialized pinctrl subsystem
>>>> [    0.318097] DMI not present or invalid.
>>>> [    0.318989] NET: Registered protocol family 16
>>>> [    0.326798] DMA: preallocated 256 KiB pool for atomic allocations
>>>> [    0.327415] audit: initializing netlink subsys (disabled)
>>>> [    0.328106] audit: type=2000 audit(0.320:1): state=initialized
>>>> audit_enabled=0 res=1
>>>> [    0.330213] cpuidle: using governor menu
>>>> [    0.331160] hw-breakpoint: found 6 breakpoint and 4 watchpoint registers.
>>>> [    0.334653] Serial: AMBA PL011 UART driver
>>>> [    0.384125] HugeTLB registered 1.00 GiB page size, pre-allocated 0 pages
>>>> [    0.384800] HugeTLB registered 32.0 MiB page size, pre-allocated 0 pages
>>>> [    0.385483] HugeTLB registered 2.00 MiB page size, pre-allocated 0 pages
>>>> [    0.386146] HugeTLB registered 64.0 KiB page size, pre-allocated 0 pages
>>>> [    0.390063] cryptd: max_cpu_qlen set to 1000
>>>> [    0.396205] ACPI: Interpreter disabled.
>>>> [    0.399113] vcc3v3_pcie: supplied by vcc12v_dcin
>>>> [    0.400706] vcc5v0_sys: supplied by vcc12v_dcin
>>>> [    0.401426] vcc5v0_usb: supplied by vcc12v_dcin
>>>> [    0.402060] vcc3v3_sys: supplied by vcc5v0_sys
>>>> [    0.403275] iommu: Default domain type: Translated
>>>> [
>>>>
>>>>>
>>>>>>
>>>>>>>
>>>>>>>> With miniloader and both variants of u-boot, if you attempt a reboot
>>>>>>>> it never fires the "reboot: Restarting system" message.
>>>>>>>> If you trigger a sysrq reboot at this stage, it will reboot, but fails
>>>>>>>> to start up the two a72 cores and subsequently hangs a second later
>>>>>>>> when it loads the first dma driver.
>>>>>>>>
>>>>>>>> With TPL/SPL on mainline-u-boot (I can't get rockchip-u-boot to work
>>>>>>>> with TPL/SPL), it fires the "reboot: Restarting system" message, but
>>>>>>>> never reboots.
>>>>>>>> sysrq does not function at this point.
>>>>>>>>
>>>>>>>> I believe the pcie controller is not being halted, and gets stuck in a
>>>>>>>> loop with the two a72 cores.
>>>>>>>>
>>>>>>>> _______________________________________________
>>>>>>>> Linux-rockchip mailing list
>>>>>>>> Linux-rockchip@lists.infradead.org
>>>>>>>> http://lists.infradead.org/mailman/listinfo/linux-rockchip
>>>>>>>>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
