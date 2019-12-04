Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 044AE1134D8
	for <lists+linux-rockchip@lfdr.de>; Wed,  4 Dec 2019 19:28:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0l8cTnkQWVtXm1iy6ljI8K8+cTl/i6WEqT2gGHBLpBU=; b=QKJ8wKi1lcBnOd
	1Ehx6w1YYy+vn2lro8UX5hftO9UadZVTW7hrqFDqoYRZ5vNhYVfmMevQgqK1Fp+MMtpQe8BIe9+ji
	zqtkhbwjJGK0d2V//Gtx1qwrwL4iLrT5tN6VGRNpoGX113JMxNNe02IOqazNj6Vz81+ZaL3v5d8bN
	PMQdd1lKwV6nPDM/4gZNPL6QIMO5UdN5X4t7TMxsMqsuWlYlMEvGHwrAJfl/afdfkrRZKoB8tzPj6
	ga6pW2gXOT5PVmUIFf/+g2eo6uJZ7XdC+tYO4Utklhe+MhUkVdU5QTtyym2EnrOdmykSUDdBdrw5Y
	fITHkDgqkuX2PZwMCGww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icZO4-0007N1-6e; Wed, 04 Dec 2019 18:28:32 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icZO1-0007MW-13
 for linux-rockchip@lists.infradead.org; Wed, 04 Dec 2019 18:28:31 +0000
Received: by mail-qt1-x842.google.com with SMTP id d5so795077qto.0
 for <linux-rockchip@lists.infradead.org>; Wed, 04 Dec 2019 10:28:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=go3NSg7iBKyx5MVliosWyoAqAs6MWdDbadw9r9yZcwU=;
 b=JGYScYHweJDeT4BLAzAh5rUg7BzudIyQH656GQcAyz3BFcgHarus172rpsBD++K+B+
 dA074Hy4ohC/w2ojXsjR1lsNl1lmc51ll7Y8hTsOtwZeocHGjQxzpRpzdvNLQloGwADz
 YYjo7/D9H4Re8HxaDivIkFaCVhLGD4o4/czQN+RJw+KmvdlHQvMrVeb4W369wFtigbsS
 ggHhCwnWQ1i/OaAoON+yMLMb/wv8QRx2XIxLoNfs8b87IpAdYycmFhzrq+1GWAm4rmDU
 FTj0qpgD0LaJENux4NzmxycxEDdT36Z9avzFjh2JGvI1aJJ5A/qqGqDEh82Wsa0OAd34
 Xrrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=go3NSg7iBKyx5MVliosWyoAqAs6MWdDbadw9r9yZcwU=;
 b=hw71pvlvPH7Q2STwUHjSkl1yHHVaMXBrirEkrsWlQIaorlllF3PmTSU1KWILVLHLTm
 LCclAeDu7gdS8ui7hULbMV+Nf6v/wjECB2ONG4Em5K1vulZYoUHoxTf7JVj1iEfycPP+
 IEc1thq3bJP4lCGc3WAY8gIGMlD2ehpALGHUcIyuyeQ8VX/UOYLY8OEsXJ5gA2LE+cZa
 S0XO6MIeSja+/vujHM3BOjp9dLPPj9GfCoUNMZ4WveWH5zImHhHw1iGAlsXoSEGDGz34
 CaSTAiURZjwOXR/MgZPyEbNtUsdS0567cIqqFozoXr+55fF/InL6yvsu8u9zBKWHzYoT
 zgPw==
X-Gm-Message-State: APjAAAVjv15V9PpL5l+MLSnGENzouwXwUpBElvkIhsvPSdt3/C6zG9SZ
 MZDmXzqL1HDRuBENe2f8EOUN5hC1marGorWeyDQIabaa
X-Google-Smtp-Source: APXvYqylDBwrpCzirfE0vAOPWNxq6Xg0oadNpe6iCO7D9RMPTsfPQwDRhweRMsAD6hJSzupIybs6x4T4Hq7ng8TBTv0=
X-Received: by 2002:ac8:1494:: with SMTP id l20mr4094167qtj.356.1575484106912; 
 Wed, 04 Dec 2019 10:28:26 -0800 (PST)
MIME-Version: 1.0
References: <CAMdYzYrLX=z-OVoW9RVecjoYK1J8EfLQ=cV1aNUqPsXqiOU+2g@mail.gmail.com>
 <2a5d91f1-033e-8acc-5b57-16ca77204a0b@arm.com>
 <CAMdYzYpdW13roxwHxD5w=XLBiyASp+biMqP-n2+QD9cL5g_hvg@mail.gmail.com>
 <CAMdYzYoCzU4F66Hpdy6XBTWwWi+WmSo50R+sCSDEFOBKr84U1w@mail.gmail.com>
 <CAMdYzYrHvGHRq51fbNp4Y=9HhaEUXhyoYt-dy70xVFrOmkNOTA@mail.gmail.com>
 <55c56fb7-9402-9798-9631-c1c3f607d663@arm.com>
In-Reply-To: <55c56fb7-9402-9798-9631-c1c3f607d663@arm.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 4 Dec 2019 13:28:15 -0500
Message-ID: <CAMdYzYqvNa5_5xMnw=MVOL5iJQq_-cBVGtwQMXQ_JqLvyx=mYA@mail.gmail.com>
Subject: Re: [BUG] rk3399 fails to reboot correctly with PCIE device inserted
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_102829_097620_0E679A23 
X-CRM114-Status: GOOD (  30.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
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

On Wed, Dec 4, 2019 at 12:42 PM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 04/12/2019 5:28 pm, Peter Geis wrote:
> > On Mon, Nov 25, 2019 at 7:05 PM Peter Geis <pgwipeout@gmail.com> wrote:
> >>
> >> On Mon, Nov 25, 2019 at 12:10 PM Peter Geis <pgwipeout@gmail.com> wrote:
> >>>
> >>> On Mon, Nov 25, 2019 at 11:52 AM Robin Murphy <robin.murphy@arm.com> wrote:
> >>>>
> >>>> Hi Peter,
> >>>>
> >>>> On 25/11/2019 4:28 pm, Peter Geis wrote:
> >>>>> Good Morning,
> >>>>>
> >>>>> Another issue I've come across while testing PCIE on the rockpro64.
> >>>>> When a PCIE device is inserted into the board, and it enumerates
> >>>>> successfully, the board will not reset.
> >>>>> I've tried various states of u-boot-rockchip, u-boot-mainline, with
> >>>>> both miniloader and TPL/SPL.
> >>>>
> >>>> In case it's relevant, what particular PCIe device(s) have you seen the
> >>>> issue with? FWIW I've been running a Samsung 960 Evo NVMe in my
> >>>> NanoPC-T4 with mainline kernels for months now and it's always rebooted
> >>>> flawlessly.
> >>>>
> >>>> Robin.
> >>>
> >>> Currently with a I350 NIC, but also observed with a pcie switch, and the GTX645.
> >>> The NIC works, while the other two didn't without the patch to hijack
> >>> the error handler.
> >>>
> >>> I am running the latest atf built from their github.
> >>
> >> On closer examination, it isn't the pcie devices causing the reboot
> >> issues, the rk3399 just doesn't reboot.
> >> It would seem the trigger with miniloader was random enough that it
> >> appeared to be tied to my pcie testing.
> >> It happens 100% of the time with tpl/spl.
> >
> > With further testing, I think I've found the trigger of the reboot failure.
> > It would seem with ATF compiled from source, psci-reboot is not
> > actually triggering the reboot.
> > The reason my board stopped rebooting entirely is because I had
> > somehow broken the psci-watchdog.
> >
> > I rebuilt all from source, stripping all modifications I had done and
> > using the defconfigs.
> > I get the following message at reboot time:
> > [ 2839.724508] watchdog: watchdog0: watchdog did not stop!
> > [ 2841.162516] reboot: Restarting system
> > U-Boot TPL 2020.01-rc3-00070-g9a0cbae22a-dirty (Dec 03 2019 - 14:07:57)
> > Whereas before the watchdog alert was not triggering and reboot never occurred.
> >
> > It would seem that the pcsi-reboot function is dead, and the only
> > reason the boards are actually rebooting is because the psci-watchdog
> > is triggering the reboot after the kernel fails to check in.
> >
> > Now I am still having the issue with boot hanging after a warm reboot
> > when certain pci-e devices are installed (particularly, the i350
> > network controller).
> > I think this may be due to the pci-e controller driver lacking proper
> > shutdown cleanup code, which is allowing the i350 to continue to
> > trigger either interrupts or dma transfers following the soft-reboot.
> >
> > The hang occurs roughly the same point, when either the iommu or the
> > first dma device is initialized.
> > Occasionally the A72 cluster fails to initialize as well.
>
> It turns out there's been a general issue with upstream ATF failing to
> reboot RK3399 correctly, which has just been tracked down to power
> domain states getting out of sync - there's more info on the U-Boot list
> here: https://lists.denx.de/pipermail/u-boot/2019-December/392348.html
>
> Robin.

Thanks!
Seems there were two issues here, both involving the power bugs I've
been tracking.

First, there was no sanity check if there was a power-off or reset
gpio, before trying to get the gpio.
This broke reset and poweroff functions on board without reset or
power-off gpios.
The fix they implemented is to try to set the gpio value before
getting the gpio, which fails if the gpio doesn't exist and it returns
null in that case.
This fix has been merged as of last night.

The power domain issue hasn't been merged yet, but I've grabbed that
patch and will test it as well.

>
> >
> > Log is below:
> > [    0.261198] Detected PIPT I-cache on CPU5
> > [    0.261223] GICv3: CPU5: found redistributor 101 region 0:0x00000000fefa0000
> > [    0.261235] GICv3: CPU5: using allocated LPI pending table
> > @0x00000000f0120000
> > [    0.261263] CPU5: Booted secondary processor 0x0000000101 [0x410fd082]
> > [    0.261377] smp: Brought up 1 node, 6 CPUs
> > [    0.274833] SMP: Total of 6 processors activated.
> > [    0.275297] CPU features: detected: 32-bit EL0 Support
> > [    0.275801] CPU features: detected: CRC32 instructions
> > [    0.290797] CPU: All CPU(s) started at EL2
> > [    0.291242] alternatives: patching kernel code
> > [    0.294848] devtmpfs: initialized
> > [    0.311658] clocksource: jiffies: mask: 0xffffffff max_cycles:
> > 0xffffffff, max_idle_ns: 7645041785100000 ns
> > [    0.312629] futex hash table entries: 2048 (order: 5, 131072 bytes, linear)
> > [    0.315223] pinctrl core: initialized pinctrl subsystem
> > [    0.318097] DMI not present or invalid.
> > [    0.318989] NET: Registered protocol family 16
> > [    0.326798] DMA: preallocated 256 KiB pool for atomic allocations
> > [    0.327415] audit: initializing netlink subsys (disabled)
> > [    0.328106] audit: type=2000 audit(0.320:1): state=initialized
> > audit_enabled=0 res=1
> > [    0.330213] cpuidle: using governor menu
> > [    0.331160] hw-breakpoint: found 6 breakpoint and 4 watchpoint registers.
> > [    0.334653] Serial: AMBA PL011 UART driver
> > [    0.384125] HugeTLB registered 1.00 GiB page size, pre-allocated 0 pages
> > [    0.384800] HugeTLB registered 32.0 MiB page size, pre-allocated 0 pages
> > [    0.385483] HugeTLB registered 2.00 MiB page size, pre-allocated 0 pages
> > [    0.386146] HugeTLB registered 64.0 KiB page size, pre-allocated 0 pages
> > [    0.390063] cryptd: max_cpu_qlen set to 1000
> > [    0.396205] ACPI: Interpreter disabled.
> > [    0.399113] vcc3v3_pcie: supplied by vcc12v_dcin
> > [    0.400706] vcc5v0_sys: supplied by vcc12v_dcin
> > [    0.401426] vcc5v0_usb: supplied by vcc12v_dcin
> > [    0.402060] vcc3v3_sys: supplied by vcc5v0_sys
> > [    0.403275] iommu: Default domain type: Translated
> > [
> >
> >>
> >>>
> >>>>
> >>>>> With miniloader and both variants of u-boot, if you attempt a reboot
> >>>>> it never fires the "reboot: Restarting system" message.
> >>>>> If you trigger a sysrq reboot at this stage, it will reboot, but fails
> >>>>> to start up the two a72 cores and subsequently hangs a second later
> >>>>> when it loads the first dma driver.
> >>>>>
> >>>>> With TPL/SPL on mainline-u-boot (I can't get rockchip-u-boot to work
> >>>>> with TPL/SPL), it fires the "reboot: Restarting system" message, but
> >>>>> never reboots.
> >>>>> sysrq does not function at this point.
> >>>>>
> >>>>> I believe the pcie controller is not being halted, and gets stuck in a
> >>>>> loop with the two a72 cores.
> >>>>>
> >>>>> _______________________________________________
> >>>>> Linux-rockchip mailing list
> >>>>> Linux-rockchip@lists.infradead.org
> >>>>> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> >>>>>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
