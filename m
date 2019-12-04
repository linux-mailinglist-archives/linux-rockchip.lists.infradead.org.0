Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 333361130F6
	for <lists+linux-rockchip@lfdr.de>; Wed,  4 Dec 2019 18:42:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rAXWfAquNsDvKQAoQPcEX9B10XT0L3EsoUmQSLE3sC8=; b=M1wOKhplZIIzXqra1VwR+1PbD
	foowa/e0qfHOsf9eY27LJa08UN281a3MctA9OyqZ5BftLPLCYHlleFM+8aMFVXMSJ62jIvsDgxhnC
	R31hbVIajHPcVHD9zs5E9Un+6odA8OSs6tLRpDDI+SLlenJl/BRXnmtTUsScdV3Xsj0yRz8mloTO7
	alQfKvby/paXAXw04eFjD1nnLkapJKVJI0ycZAwG7XS2XoZOJlcZKtnD6uRRZU8SIIFoXBkmGNpEW
	n3eY+bYkeL4YdqMsIamiM8NzX3IBMyQqY1YD8CgWOrxtGb8/A6LhkMJgjoeLlRpk7qDCRjh6I7//k
	mBofDi2nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icYfD-0004Wx-1E; Wed, 04 Dec 2019 17:42:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icYfA-0004VL-6u
 for linux-rockchip@lists.infradead.org; Wed, 04 Dec 2019 17:42:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1190031B;
 Wed,  4 Dec 2019 09:42:07 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 916143F52E;
 Wed,  4 Dec 2019 09:42:06 -0800 (PST)
Subject: Re: [BUG] rk3399 fails to reboot correctly with PCIE device inserted
To: Peter Geis <pgwipeout@gmail.com>
References: <CAMdYzYrLX=z-OVoW9RVecjoYK1J8EfLQ=cV1aNUqPsXqiOU+2g@mail.gmail.com>
 <2a5d91f1-033e-8acc-5b57-16ca77204a0b@arm.com>
 <CAMdYzYpdW13roxwHxD5w=XLBiyASp+biMqP-n2+QD9cL5g_hvg@mail.gmail.com>
 <CAMdYzYoCzU4F66Hpdy6XBTWwWi+WmSo50R+sCSDEFOBKr84U1w@mail.gmail.com>
 <CAMdYzYrHvGHRq51fbNp4Y=9HhaEUXhyoYt-dy70xVFrOmkNOTA@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <55c56fb7-9402-9798-9631-c1c3f607d663@arm.com>
Date: Wed, 4 Dec 2019 17:42:05 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAMdYzYrHvGHRq51fbNp4Y=9HhaEUXhyoYt-dy70xVFrOmkNOTA@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_094208_344726_8DB7BC0A 
X-CRM114-Status: GOOD (  25.60  )
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

On 04/12/2019 5:28 pm, Peter Geis wrote:
> On Mon, Nov 25, 2019 at 7:05 PM Peter Geis <pgwipeout@gmail.com> wrote:
>>
>> On Mon, Nov 25, 2019 at 12:10 PM Peter Geis <pgwipeout@gmail.com> wrote:
>>>
>>> On Mon, Nov 25, 2019 at 11:52 AM Robin Murphy <robin.murphy@arm.com> wrote:
>>>>
>>>> Hi Peter,
>>>>
>>>> On 25/11/2019 4:28 pm, Peter Geis wrote:
>>>>> Good Morning,
>>>>>
>>>>> Another issue I've come across while testing PCIE on the rockpro64.
>>>>> When a PCIE device is inserted into the board, and it enumerates
>>>>> successfully, the board will not reset.
>>>>> I've tried various states of u-boot-rockchip, u-boot-mainline, with
>>>>> both miniloader and TPL/SPL.
>>>>
>>>> In case it's relevant, what particular PCIe device(s) have you seen the
>>>> issue with? FWIW I've been running a Samsung 960 Evo NVMe in my
>>>> NanoPC-T4 with mainline kernels for months now and it's always rebooted
>>>> flawlessly.
>>>>
>>>> Robin.
>>>
>>> Currently with a I350 NIC, but also observed with a pcie switch, and the GTX645.
>>> The NIC works, while the other two didn't without the patch to hijack
>>> the error handler.
>>>
>>> I am running the latest atf built from their github.
>>
>> On closer examination, it isn't the pcie devices causing the reboot
>> issues, the rk3399 just doesn't reboot.
>> It would seem the trigger with miniloader was random enough that it
>> appeared to be tied to my pcie testing.
>> It happens 100% of the time with tpl/spl.
> 
> With further testing, I think I've found the trigger of the reboot failure.
> It would seem with ATF compiled from source, psci-reboot is not
> actually triggering the reboot.
> The reason my board stopped rebooting entirely is because I had
> somehow broken the psci-watchdog.
> 
> I rebuilt all from source, stripping all modifications I had done and
> using the defconfigs.
> I get the following message at reboot time:
> [ 2839.724508] watchdog: watchdog0: watchdog did not stop!
> [ 2841.162516] reboot: Restarting system
> U-Boot TPL 2020.01-rc3-00070-g9a0cbae22a-dirty (Dec 03 2019 - 14:07:57)
> Whereas before the watchdog alert was not triggering and reboot never occurred.
> 
> It would seem that the pcsi-reboot function is dead, and the only
> reason the boards are actually rebooting is because the psci-watchdog
> is triggering the reboot after the kernel fails to check in.
> 
> Now I am still having the issue with boot hanging after a warm reboot
> when certain pci-e devices are installed (particularly, the i350
> network controller).
> I think this may be due to the pci-e controller driver lacking proper
> shutdown cleanup code, which is allowing the i350 to continue to
> trigger either interrupts or dma transfers following the soft-reboot.
> 
> The hang occurs roughly the same point, when either the iommu or the
> first dma device is initialized.
> Occasionally the A72 cluster fails to initialize as well.

It turns out there's been a general issue with upstream ATF failing to 
reboot RK3399 correctly, which has just been tracked down to power 
domain states getting out of sync - there's more info on the U-Boot list 
here: https://lists.denx.de/pipermail/u-boot/2019-December/392348.html

Robin.

> 
> Log is below:
> [    0.261198] Detected PIPT I-cache on CPU5
> [    0.261223] GICv3: CPU5: found redistributor 101 region 0:0x00000000fefa0000
> [    0.261235] GICv3: CPU5: using allocated LPI pending table
> @0x00000000f0120000
> [    0.261263] CPU5: Booted secondary processor 0x0000000101 [0x410fd082]
> [    0.261377] smp: Brought up 1 node, 6 CPUs
> [    0.274833] SMP: Total of 6 processors activated.
> [    0.275297] CPU features: detected: 32-bit EL0 Support
> [    0.275801] CPU features: detected: CRC32 instructions
> [    0.290797] CPU: All CPU(s) started at EL2
> [    0.291242] alternatives: patching kernel code
> [    0.294848] devtmpfs: initialized
> [    0.311658] clocksource: jiffies: mask: 0xffffffff max_cycles:
> 0xffffffff, max_idle_ns: 7645041785100000 ns
> [    0.312629] futex hash table entries: 2048 (order: 5, 131072 bytes, linear)
> [    0.315223] pinctrl core: initialized pinctrl subsystem
> [    0.318097] DMI not present or invalid.
> [    0.318989] NET: Registered protocol family 16
> [    0.326798] DMA: preallocated 256 KiB pool for atomic allocations
> [    0.327415] audit: initializing netlink subsys (disabled)
> [    0.328106] audit: type=2000 audit(0.320:1): state=initialized
> audit_enabled=0 res=1
> [    0.330213] cpuidle: using governor menu
> [    0.331160] hw-breakpoint: found 6 breakpoint and 4 watchpoint registers.
> [    0.334653] Serial: AMBA PL011 UART driver
> [    0.384125] HugeTLB registered 1.00 GiB page size, pre-allocated 0 pages
> [    0.384800] HugeTLB registered 32.0 MiB page size, pre-allocated 0 pages
> [    0.385483] HugeTLB registered 2.00 MiB page size, pre-allocated 0 pages
> [    0.386146] HugeTLB registered 64.0 KiB page size, pre-allocated 0 pages
> [    0.390063] cryptd: max_cpu_qlen set to 1000
> [    0.396205] ACPI: Interpreter disabled.
> [    0.399113] vcc3v3_pcie: supplied by vcc12v_dcin
> [    0.400706] vcc5v0_sys: supplied by vcc12v_dcin
> [    0.401426] vcc5v0_usb: supplied by vcc12v_dcin
> [    0.402060] vcc3v3_sys: supplied by vcc5v0_sys
> [    0.403275] iommu: Default domain type: Translated
> [
> 
>>
>>>
>>>>
>>>>> With miniloader and both variants of u-boot, if you attempt a reboot
>>>>> it never fires the "reboot: Restarting system" message.
>>>>> If you trigger a sysrq reboot at this stage, it will reboot, but fails
>>>>> to start up the two a72 cores and subsequently hangs a second later
>>>>> when it loads the first dma driver.
>>>>>
>>>>> With TPL/SPL on mainline-u-boot (I can't get rockchip-u-boot to work
>>>>> with TPL/SPL), it fires the "reboot: Restarting system" message, but
>>>>> never reboots.
>>>>> sysrq does not function at this point.
>>>>>
>>>>> I believe the pcie controller is not being halted, and gets stuck in a
>>>>> loop with the two a72 cores.
>>>>>
>>>>> _______________________________________________
>>>>> Linux-rockchip mailing list
>>>>> Linux-rockchip@lists.infradead.org
>>>>> http://lists.infradead.org/mailman/listinfo/linux-rockchip
>>>>>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
