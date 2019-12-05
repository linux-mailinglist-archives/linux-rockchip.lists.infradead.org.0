Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32CF31146A0
	for <lists+linux-rockchip@lfdr.de>; Thu,  5 Dec 2019 19:11:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y72RYH/LzlKQ4bcNoyDOFK/UmEK9YpDs8hJ/gixXZsE=; b=RUeOPanThhe9ks
	ChOFbbN5mq+OttokqjKSJPpgeWXCQHqMSH3rDAvqr2oKl9P1H01bc02YQkAelw3KArDpPe2mTm/pC
	dQXOFyu9dQWcMJ4Uqw3xvj9AdhnDbevm7UcLJLQc+6k4j92z0f3JZKkxNl0QQfq8DlgX02D10m1Q/
	gRI8fT2S2z8nByK3CV7pgnZeHX7+h1nw8xj5YhEsO6XwQjGU91jBU7ePL+CDDh4dfKl42QOV2kcfN
	CL7XTp868swG4of55NqiowSxqXQ59pFDZCb1MQjAxZFNQbmu34ipW5fMn1sEheH0Z3U/jaZxknVRr
	xbyDVChNP4cCjwAQOY0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icvan-000626-Ov; Thu, 05 Dec 2019 18:11:09 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icvak-00061a-BM
 for linux-rockchip@lists.infradead.org; Thu, 05 Dec 2019 18:11:08 +0000
Received: by mail-qv1-xf41.google.com with SMTP id c2so1624340qvp.12
 for <linux-rockchip@lists.infradead.org>; Thu, 05 Dec 2019 10:11:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9oKqXJl0ZDKWiLgs4H71BkchSLAsKI3TAG65BqK+Y+c=;
 b=u57+cUYh3XWPTP5MpvYgq+SkOArJEi/f3NE9NolC9gHdHD2UHD/GO5FiZQGwcSSffW
 TVroby/+7Ickvw0OPFLi40AzsbjVZegVRqz0pbDtdWWgYrng4CJGAvJGDiPOmE+ziswZ
 QnUF5Pb2fzKSmxuFYit5Y5VLHMGu/j1dBzo6H2wpvohyHOy/62djK1CXyk7Agg7RbUTm
 7JhHnkr0RIk15TPHXQv7sXvpFvrxUTpAFDXe8V4u2mXW7oFf/ylAKQpBtF85n/SlDQdx
 qAKU6yg9R7OjOEOhqFAFsPFlXPfL1UuJU+oVhxTSQSrjaRwe66hUUT5gZ+4tSqJ1FBTy
 kJXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9oKqXJl0ZDKWiLgs4H71BkchSLAsKI3TAG65BqK+Y+c=;
 b=OdDIu1ReGGEQwuAUdy3s7I0Dp6mVh63p/Be1ViJb45YvCy7hsKFag5GxxoUTV+5R9k
 KcGEplzfCKvLw1LZHfhVuKbwDlKzf6nm3nVtiG61iiU34RO9KNWVF9QkKn24XIUJTKcr
 +SPphkBsr6Um9td9kpKAmI8UJkaXZPWZ6TQtcX7XvIRLt5HrarRodhoXXMIfh5iLr+HJ
 gEZWwTNIO6yE0uXCmirFlYO0FGm0MRuShmqnwBXKE9KwYusS270moCrfsNIQ1FWChiq6
 EXTDX6BUlFEM3td+PKyXEvbqwEXwkur9GNdwt1H/1bdHISSjj2XTKAvXS18OKhLcsSiA
 jDqQ==
X-Gm-Message-State: APjAAAVrLh4nnHGRzdZTQR1DnvG10fIhAZHnUNyYoQ02E69A/CuAeK2+
 MccfMcV/wJt63UyKBcYk5qgUhHEnbyymdGuaJiwOyw==
X-Google-Smtp-Source: APXvYqwqko9MMjm6iL6DUM6yPE/+PBofkRKmzJSj/R7K4VRH8rVyW6LC5Y15eGlwu/ewiCzdrATmE/phMKVs27Oe4Og=
X-Received: by 2002:ad4:5841:: with SMTP id de1mr3522437qvb.122.1575569464276; 
 Thu, 05 Dec 2019 10:11:04 -0800 (PST)
MIME-Version: 1.0
References: <CAMdYzYrLX=z-OVoW9RVecjoYK1J8EfLQ=cV1aNUqPsXqiOU+2g@mail.gmail.com>
 <2a5d91f1-033e-8acc-5b57-16ca77204a0b@arm.com>
 <CAMdYzYpdW13roxwHxD5w=XLBiyASp+biMqP-n2+QD9cL5g_hvg@mail.gmail.com>
 <CAMdYzYoCzU4F66Hpdy6XBTWwWi+WmSo50R+sCSDEFOBKr84U1w@mail.gmail.com>
 <CAMdYzYrHvGHRq51fbNp4Y=9HhaEUXhyoYt-dy70xVFrOmkNOTA@mail.gmail.com>
 <55c56fb7-9402-9798-9631-c1c3f607d663@arm.com>
 <CAMdYzYqvNa5_5xMnw=MVOL5iJQq_-cBVGtwQMXQ_JqLvyx=mYA@mail.gmail.com>
 <CAMdYzYorsxrb1_xWjeAW-76QQ3a+Y+5iHskhM4M1N5rsUzoY7w@mail.gmail.com>
 <eb09e106-e708-8857-690e-0052f860f19c@arm.com>
In-Reply-To: <eb09e106-e708-8857-690e-0052f860f19c@arm.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Thu, 5 Dec 2019 13:10:53 -0500
Message-ID: <CAMdYzYrx0fSAJ0foUF8sP8JrBzRbW_ETDgK72zt-LsU=OYPraA@mail.gmail.com>
Subject: Re: [BUG] rk3399 fails to reboot correctly with PCIE device inserted
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_101106_416876_5F01B509 
X-CRM114-Status: GOOD (  27.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pgwipeout[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, Dec 5, 2019 at 12:31 PM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 05/12/2019 1:07 pm, Peter Geis wrote:
> [...]
> > The power off issue still exists, but I dug into the psci pm code for
> > the poweroff function and unless there is a gpio this function is a
> > no-op.
> > For this reason I think the rk808 driver should be modified to set
> > itself as the primary poweroff provider if the
> > rockchip,system-power-controller flag is set.
> > The other option is to somehow make ATF aware of the rk808 and have it
> > trigger the poweroff.
> > Thoughts on this?
>
> Yeah, this seems to be a fundamental limitation of the RK808 that, short
> of wiring up a GPIO to literally hold down the power button, the only
> way to convince it to turn off is over I2C. Downstream kernels seem to
> hack around this by short-circuiting ATF on shutdown such that the RK808
> driver pulls the plug before PSCI_SYSTEM_OFF ever gets called, but I'm
> not sure that's viable in general since it precludes gracefully shutting
> down the Secure world software stack.
>
> The main challenge in implementing I2C-based shutdown in ATF would be
> making it sufficiently robust without being incredibly complicated.
> Since the hardware resources are owned by the Non-Secure world, ATF
> can't make any assumptions about them being in a sane and usable state
> at the point where it might want to touch them - a shutdown could
> potentially be invoked while the I2C controller is already in the middle
> of a transfer. Possibly bit-banging GPIOs, including a bus recovery
> sequence, might be sufficient yet still relatively small and simple?
>
> Robin.

Theoretically, how dangerous is it to pull the rug out from under ATF
without calling a graceful shutdown?
Since it shouldn't be touching any non-volatile storage anyways,
anything it was doing is going to be gone when power is cut.

The reset handler for arm implements a hierarchy of reset handlers,
where multiple handlers can register with a priority, and they are
called in order until someone actually reboots the device.
Is there similar functionality in the shutdown handler as well?
If there is, we could have PSCI_SYSTEM_OFF called, but since it
doesn't actually do anything eventually have the rk808 driver trigger
and actually power off the board.
Or does calling PSCI_SYSTEM_OFF cause the ATF to halt any remaining
kernel functions?

Doesn't u-boot use simple non-dma drivers for i2c?
Would we be able to trigger a reset of the i2c controller, then
request a single transfer, using something similar?
Another option would be the u-boot poweroff driver, which set a flag
for u-boot to hold at next boot, but we could have a custom handler in
u-boot to trigger the poweroff instead of holding.

>
> > [0] https://github.com/ARM-software/arm-trusted-firmware/commit/45d4611563038486890b40d61e41b68213326afc
> > [1] https://github.com/armbian/build/blob/master/patch/atf/atf-rk3399/switch-power-domains-on-before-reset.patch
> >>
> >>>
> >>>>
> >>>> Log is below:
> >>>> [    0.261198] Detected PIPT I-cache on CPU5
> >>>> [    0.261223] GICv3: CPU5: found redistributor 101 region 0:0x00000000fefa0000
> >>>> [    0.261235] GICv3: CPU5: using allocated LPI pending table
> >>>> @0x00000000f0120000
> >>>> [    0.261263] CPU5: Booted secondary processor 0x0000000101 [0x410fd082]
> >>>> [    0.261377] smp: Brought up 1 node, 6 CPUs
> >>>> [    0.274833] SMP: Total of 6 processors activated.
> >>>> [    0.275297] CPU features: detected: 32-bit EL0 Support
> >>>> [    0.275801] CPU features: detected: CRC32 instructions
> >>>> [    0.290797] CPU: All CPU(s) started at EL2
> >>>> [    0.291242] alternatives: patching kernel code
> >>>> [    0.294848] devtmpfs: initialized
> >>>> [    0.311658] clocksource: jiffies: mask: 0xffffffff max_cycles:
> >>>> 0xffffffff, max_idle_ns: 7645041785100000 ns
> >>>> [    0.312629] futex hash table entries: 2048 (order: 5, 131072 bytes, linear)
> >>>> [    0.315223] pinctrl core: initialized pinctrl subsystem
> >>>> [    0.318097] DMI not present or invalid.
> >>>> [    0.318989] NET: Registered protocol family 16
> >>>> [    0.326798] DMA: preallocated 256 KiB pool for atomic allocations
> >>>> [    0.327415] audit: initializing netlink subsys (disabled)
> >>>> [    0.328106] audit: type=2000 audit(0.320:1): state=initialized
> >>>> audit_enabled=0 res=1
> >>>> [    0.330213] cpuidle: using governor menu
> >>>> [    0.331160] hw-breakpoint: found 6 breakpoint and 4 watchpoint registers.
> >>>> [    0.334653] Serial: AMBA PL011 UART driver
> >>>> [    0.384125] HugeTLB registered 1.00 GiB page size, pre-allocated 0 pages
> >>>> [    0.384800] HugeTLB registered 32.0 MiB page size, pre-allocated 0 pages
> >>>> [    0.385483] HugeTLB registered 2.00 MiB page size, pre-allocated 0 pages
> >>>> [    0.386146] HugeTLB registered 64.0 KiB page size, pre-allocated 0 pages
> >>>> [    0.390063] cryptd: max_cpu_qlen set to 1000
> >>>> [    0.396205] ACPI: Interpreter disabled.
> >>>> [    0.399113] vcc3v3_pcie: supplied by vcc12v_dcin
> >>>> [    0.400706] vcc5v0_sys: supplied by vcc12v_dcin
> >>>> [    0.401426] vcc5v0_usb: supplied by vcc12v_dcin
> >>>> [    0.402060] vcc3v3_sys: supplied by vcc5v0_sys
> >>>> [    0.403275] iommu: Default domain type: Translated
> >>>> [
> >>>>
> >>>>>
> >>>>>>
> >>>>>>>
> >>>>>>>> With miniloader and both variants of u-boot, if you attempt a reboot
> >>>>>>>> it never fires the "reboot: Restarting system" message.
> >>>>>>>> If you trigger a sysrq reboot at this stage, it will reboot, but fails
> >>>>>>>> to start up the two a72 cores and subsequently hangs a second later
> >>>>>>>> when it loads the first dma driver.
> >>>>>>>>
> >>>>>>>> With TPL/SPL on mainline-u-boot (I can't get rockchip-u-boot to work
> >>>>>>>> with TPL/SPL), it fires the "reboot: Restarting system" message, but
> >>>>>>>> never reboots.
> >>>>>>>> sysrq does not function at this point.
> >>>>>>>>
> >>>>>>>> I believe the pcie controller is not being halted, and gets stuck in a
> >>>>>>>> loop with the two a72 cores.
> >>>>>>>>
> >>>>>>>> _______________________________________________
> >>>>>>>> Linux-rockchip mailing list
> >>>>>>>> Linux-rockchip@lists.infradead.org
> >>>>>>>> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> >>>>>>>>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
