Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBFC4F9FD3
	for <lists+linux-rockchip@lfdr.de>; Wed, 13 Nov 2019 02:06:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lelD6Ox0HR9CHytKOvsKiLvGwo4B3YdIL7/0j5ocTlw=; b=HIxDyLXSbtjFWr
	kP5wGPpWvl1LiPPyQg0q0K8W9ogYPGZ1udO5bmQHRdXJnZDkWjnQhdHzV1uEo7DqPyF4LcIlLCeby
	PeTv9Ay1ZbRi4QYRvQTF+Pm/tjh9WEyvBtmcszysigyrpXd2n86EVphixOnBrR9nFgtb0e3cAbk3s
	g2Q1klIFu1p5JCJIaSwjQANcXkH38CCt2A2YG6Lxtg0zTv7k6LGt34CxzSJXmw++38Lz/KrRGdScs
	Gd1aDpbZz9vULPJdp8RML5SIYX63zV2RylbKXI7pOUA1kdLW1H6zS2IzDdjTmGXrzElZr8DmMM3Xg
	qxd8izL+HpUWXqpb/nAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUh7I-00030g-Ev; Wed, 13 Nov 2019 01:06:40 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUh7D-0002zQ-MY
 for linux-rockchip@lists.infradead.org; Wed, 13 Nov 2019 01:06:38 +0000
Received: by mail-qk1-x742.google.com with SMTP id z16so294114qkg.7
 for <linux-rockchip@lists.infradead.org>; Tue, 12 Nov 2019 17:06:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EmD5ZKfclv8/UJvbIZUvBQcBPOkaFiePH6nCcLMZai8=;
 b=tMDdFZ1oecCsKtdAcpXTvkU5Yc5Sd1bQADdxPyPt5ksntzsN47DuzuphUla6mvCPuB
 1GWuQ9+9EdRX4Z7WNLLB5rQrhwPSxFX/3HOCpExn3PdU+znQaru7gn1MeOijciXo6kEW
 PHqxglCzTYqmSxaC0WwNX0zO8TEG4WKsXIYT3M5I1kptDY1vX4n6cO1AGjjKKLqL4BLd
 O3IVd+E8ofm2dlkGT2KXrVws+iuc7xA9I6w8f9Cu7mdcQRx7tTJHT96jhiESN1G93p+i
 fdBfd+bH93CmZPMZR92jSuVVfq8YmQaisCuxJfuSdGcpfoypMwhOzOmQInmifhKZUgl5
 EZkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EmD5ZKfclv8/UJvbIZUvBQcBPOkaFiePH6nCcLMZai8=;
 b=nJIVLbj3g9BNevoANIV8ko4jbIZnFWbqjRhqzUISBJFxe7z/SvZtJM6J+EvdgSrBlj
 ZxTJHGGFOKwg9xC7SDqq71WIcHahLY0jEvZVQuWinL9uXCZxEzUj59f1ML20vaLIYagS
 Mw1R/fNxKqzJVBrrWxykYHej6nCX8IAWAlT8YuhRgf9mAI96L5Q/1TWjyS8V2v322ESb
 zg8e/F0P8Vk4i6Xxwt8/Z/GtTNRDLZLvHY+2hpM+u1ATRj2SZZQOdLgXLvnDaTvtPdTL
 GEQkoMDET340sSXCmDIaek0XD/6TQlLixgB6U0Pi/9IfnvDxqHscPhmtxVBjCrkSjKAf
 wxDA==
X-Gm-Message-State: APjAAAUP07XFrfrGT1CoASmz64wMU4mE+2RjXbxoRB7sdYBZgRxCh3ug
 PZ21RH3zE8Qy9hJRH92Kuj7XwJWJWXp/eY8LL58CwdsXqv+krw==
X-Google-Smtp-Source: APXvYqydmZMrKUujmv7dyIMM77XU+QtSbd3c3oo8BSa+aD7kRA3UdvGs+EzC+sVfsIkiNfSIoau3vI2+JE2bqacXexw=
X-Received: by 2002:a05:620a:242:: with SMTP id q2mr329045qkn.87.1573607191039; 
 Tue, 12 Nov 2019 17:06:31 -0800 (PST)
MIME-Version: 1.0
References: <CAMdYzYp7kQdMKzX2RQW0tY2P4Um=CNJW93RPquBmYATRGrxwng@mail.gmail.com>
 <20191112022938.GA89741@google.com>
 <CAMdYzYrYHtiEXwiKxwWcKSV7Re6dG4zTvkKtZxvso+fLBRYbPQ@mail.gmail.com>
 <991e386e-4c4f-fcbd-89a1-1edd82f63ece@arm.com>
 <CAMdYzYri-yroFtvVXdNZH=sNOM7RP_PBHVnmbHuAKmGBZ0GifA@mail.gmail.com>
In-Reply-To: <CAMdYzYri-yroFtvVXdNZH=sNOM7RP_PBHVnmbHuAKmGBZ0GifA@mail.gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Tue, 12 Nov 2019 20:06:19 -0500
Message-ID: <CAMdYzYrc-AJNpnqR6Xw9Np0wuUvS4-u+TCS2WEo78TfyEhCQKg@mail.gmail.com>
Subject: Re: [BUG] rk3399-rockpro64 pcie synchronous external abort
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_170635_745647_A90FFAFD 
X-CRM114-Status: GOOD (  40.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pgwipeout[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-pci@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>,
 Bjorn Helgaas <helgaas@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, Nov 12, 2019 at 2:41 PM Peter Geis <pgwipeout@gmail.com> wrote:
>
> On Tue, Nov 12, 2019 at 2:15 PM Robin Murphy <robin.murphy@arm.com> wrote:
> >
> > On 12/11/2019 3:55 pm, Peter Geis wrote:
> > > On Mon, Nov 11, 2019 at 9:29 PM Bjorn Helgaas <helgaas@kernel.org> wrote:
> > >>
> > >> On Mon, Nov 11, 2019 at 07:30:15PM -0500, Peter Geis wrote:
> > >>> On Mon, Nov 11, 2019 at 7:13 PM Bjorn Helgaas <helgaas@kernel.org> wrote:
> > >>>> On Mon, Nov 04, 2019 at 01:55:40PM -0500, Peter Geis wrote:
> > >>>>> Good Morning,
> > >>>>>
> > >>>>> I'm attempting to debug an issue with the rockpro64 pcie port.
> > >>>>> It would appear that the port does not like various cards, including
> > >>>>> cards of the same make that randomly work or do not work, such as
> > >>>>> Intel i340 based NICs.
> > >>>>> I'm experiencing it with a GTX645 gpu.
> > >>>>>
> > >>>>> This seems to be a long running issue, referenced both at [0], and [1].
> > >>>>> There was an attempt to rectify it, by adding a delay between training
> > >>>>> and probing [2], but that doesn't seem to be the issue here.
> > >>>>> It appears that when we probe further into the card, such as devfn >
> > >>>>> 1, we trigger the bug.
> > >>>>> I've added a print statement that prints the devfn, address, and size
> > >>>>> information, which you can see below.
> > >>>>>
> > >>>>> I've attempted setting the available number of lanes to 1 as well, to
> > >>>>> no difference.
> > >>>>>
> > >>>>> If anyone could point me in the right direction as to where to
> > >>>>> continue debugging, I'd greatly appreciate it.
> > >>>>>
> > >>>>> [0] https://github.com/ayufan-rock64/linux-build/issues/254
> > >>>>> [1] https://github.com/rockchip-linux/kernel/issues/116
> > >>>>> [2] https://github.com/ayufan-rock64/linux-kernel/commit/3cde5c624c9c39aa03251a55c2d26a48b5bdca5b
> > >>>>>
> > >>>>> [  198.491458] rockchip-pcie f8000000.pcie: missing legacy phy; search
> > >>>>> for per-lane PHY
> > >>>>> [  198.492986] rockchip-pcie f8000000.pcie: no vpcie1v8 regulator found
> > >>>>> [  198.493060] rockchip-pcie f8000000.pcie: no vpcie0v9 regulator found
> > >>>>> [  198.550444] rockchip-pcie f8000000.pcie: current link width is x1
> > >>>>> [  198.550458] rockchip-pcie f8000000.pcie: idling lane 1
> > >>>>> [  198.550479] rockchip-pcie f8000000.pcie: idling lane 2
> > >>>>> [  198.550490] rockchip-pcie f8000000.pcie: idling lane 3
> > >>>>> [  198.550608] rockchip-pcie f8000000.pcie: host bridge /pcie@f8000000 ranges:
> > >>>>> [  198.550625] rockchip-pcie f8000000.pcie: Parsing ranges property...
> > >>>>> [  198.550656] rockchip-pcie f8000000.pcie:   MEM
> > >>>>> 0xfa000000..0xfbdfffff -> 0xfa000000
> > >>>>> [  198.550676] rockchip-pcie f8000000.pcie:    IO
> > >>>>> 0xfbe00000..0xfbefffff -> 0xfbe00000
> > >>>>> [  198.552908] rockchip-pcie f8000000.pcie: PCI host bridge to bus 0000:00
> > >>>>> [  198.552933] pci_bus 0000:00: root bus resource [bus 00-1f]
> > >>>>> [  198.552943] pci_bus 0000:00: root bus resource [mem 0xfa000000-0xfbdfffff]
> > >>>>> [  198.552954] pci_bus 0000:00: root bus resource [io  0x0000-0xfffff]
> > >>>>> (bus address [0xfbe00000-0xfbefffff])
> > >>>>> [  198.552965] pci_bus 0000:00: scanning bus
> > >>>>> [  198.554198] pci 0000:00:00.0: [1d87:0100] type 01 class 0x060400
> > >>>>> [  198.555508] pci 0000:00:00.0: supports D1
> > >>>>> [  198.555516] pci 0000:00:00.0: PME# supported from D0 D1 D3hot
> > >>>>> [  198.556023] pci 0000:00:00.0: PME# disabled
> > >>>>> [  198.561245] pci_bus 0000:00: fixups for bus
> > >>>>> [  198.561269] pci 0000:00:00.0: scanning [bus 00-00] behind bridge, pass 0
> > >>>>> [  198.561277] pci 0000:00:00.0: bridge configuration invalid ([bus
> > >>>>> 00-00]), reconfiguring
> > >>>>> [  198.566429] pci 0000:00:00.0: scanning [bus 00-00] behind bridge, pass 1
> > >>>>> [  198.567008] pci_bus 0000:01: scanning bus
> > >>>>> [  198.567171] pci 0000:01:00.0: [10de:11c4] type 00 class 0x030000
> > >>>>> [  198.567420] pci 0000:01:00.0: reg 0x10: [mem 0x00000000-0x00ffffff]
> > >>>>> [  198.567515] pci 0000:01:00.0: reg 0x14: [mem 0x00000000-0x07ffffff
> > >>>>> 64bit pref]
> > >>>>> [  198.567608] pci 0000:01:00.0: reg 0x1c: [mem 0x00000000-0x01ffffff
> > >>>>> 64bit pref]
> > >>>>> [  198.567665] pci 0000:01:00.0: reg 0x24: initial BAR value 0x00000000 invalid
> > >>>>> [  198.567673] pci 0000:01:00.0: reg 0x24: [io  size 0x0080]
> > >>>>> [  198.567730] pci 0000:01:00.0: reg 0x30: [mem 0x00000000-0x0007ffff pref]
> > >>>>> [  198.567815] pci 0000:01:00.0: Max Payload Size set to 256 (was 128, max 256)
> > >>>>> [  198.569051] pci 0000:01:00.0: 2.000 Gb/s available PCIe bandwidth,
> > >>>>> limited by 2.5 GT/s x1 link at 0000:00:00.0 (capable of 126.016 Gb/s
> > >>>>> with 8 GT/s x16 link)
> > >>>>> [  198.570225] pci 0000:01:00.0: vgaarb: VGA device added:
> > >>>>> decodes=io+mem,owns=none,locks=none
> > >>>>> [  198.570481] pci 0000:01:00.1: [10de:0e0b] type 00 class 0x040300
> > >>>>> [  198.570663] pci 0000:01:00.1: reg 0x10: [mem 0x00000000-0x00003fff]
> > >>>>> [  198.571039] pci 0000:01:00.1: Max Payload Size set to 256 (was 128, max 256)
> > >>>>> <snip>
> > >>>>> [  198.749857] pci_bus 0000:01: read pcie, devfn 1, at 100, size 2
> > >>>>> [  198.750252] pci_bus 0000:01: read pcie, devfn 2, at 0, size 4
> > >>>>> [  198.750881] Internal error: synchronous external abort: 96000210
> > >>>>> [#1] PREEMPT SMP
> > >>>>
> > >>>> Is there really supposed to be a device at 01:00.2?
> > >>>>
> > >>>> Maybe this is just the PCIe Unsupported Request error that we expect
> > >>>> to get when trying to read config space of a device that doesn't
> > >>>> exist.
> > >>>>
> > >>>> On "most" platforms, we just get ~0 data back when that happens, but
> > >>>> I'm not sure that's always the case on arm64.  I think it depends on
> > >>>> how the PCIe host bridge is designed, and there might be some CPU
> > >>>> configuration, too.
> > >>>
> > >>> Yes, this is a GTX645 video card.
> > >>> Nvidia cards usually have two to three devices,
> > >>> The GPU proper, the audio device for the hdmi output, and the i2c controller.
> > >>>
> > >>> I do think that this driver is missing sanity checking on the
> > >>> addressing, since the BRCM driver for the RPI4 doesn't try to
> > >>> enumerate a video card, since it checks if the MMIO space is large
> > >>> enough to fit the BAR before assigning the addresses. See [3]. Also in
> > >>> that thread he was able to increase the address space provided to the
> > >>> BRCM driver and fix the issue, but I don't see how we could do that on
> > >>> the rk3399.
> > >>>
> > >>> pci 0000:01:00.0: reg 0x14: [mem 0x00000000-0x07ffffff 64bit pref] is
> > >>> 128 MB, which already exceeds our address space.
> > >>> I think the driver is just overflowing the address space.
> > >>
> > >> If we don't have enough space to assign all the device BARs, I think a
> > >> driver will still be able to claim the device, but when the driver
> > >> calls pci_enable_device(), it should fail.  Lack of address space
> > >> should not cause a PCIe error.
> > >>
> > >> But in this case, none of that matters because we're still enumerating
> > >> devices in pci_scan_root_bus_bridge().  We haven't gotten to the point
> > >> of trying to bind drivers to devices, so the driver isn't involved at
> > >> all yet.
> > > For clarification, the driver I'm referring to is the rk3399-pcie host driver.
> > >>
> > >> The backtrace says we're trying to read the Vendor ID of a device, and
> > >> your debug output suggests we're trying to enumerate 01:00.2.  If you
> > >> put that card in another system, you could find out how many functions
> > >> it has.
> > >>
> > >> Or if you swapped this with other cards where you know the number of
> > >> functions, you could see if the external abort always happens when
> > >> probing for the first unimplemented function.
> > > This card definitely has more than one function.
> >
> > FWIW, random lspci logs I grovelled up off the internet show cards with
> > the same IDs only implementing functions 0 and 1, which does suggest
> > that maybe function 2 really doesn't exist but the card handles
> > unsupported config requests in a way that this particular bridge/root
> > port doesn't quite deal with properly.
>
> Thanks! Is there a sane way we could make the kernel handle this in
> place of the controller?
> (It's apparently based on the designware ip, but it doesn't use their
> driver for some reason)
>
> >
> > > Before my original message I hacked in some code to make the driver
> > > return 0xff when devfn > 1, and the scan passed, but as soon as
> > > nouveau attempted to access the device, the entire kernel exploded.

This is what happens when probing is prevented from reading above
devfn 1, and nouveau gets a shot.
[   76.658128] SError Interrupt on CPU4, code 0xbf000000 -- SError
[   76.658129] CPU: 4 PID: 1752 Comm: systemd-udevd Not tainted
5.4.0-rc5-next-20191031-00001-gddbfb17ac1c4-dirty #16
[   76.658130] Hardware name: Pine64 RockPro64 (DT)
[   76.658131] pstate: 60400005 (nZCv daif +PAN -UAO)
[   76.658131] pc : nvkm_device_ctor+0x2cc/0x2e18 [nouveau]
[   76.658132] lr : nvkm_device_ctor+0x2c0/0x2e18 [nouveau]
[   76.658133] sp : ffff800012daf740
[   76.658134] x29: ffff800012daf740 x28: ffff0000c2db9800
[   76.658136] x27: 0000000000000000 x26: ffff0000c7f2e0b0
[   76.658138] x25: 0000000000000000 x24: 0000000000000000
[   76.658139] x23: 0000000000000000 x22: ffff800009e1b1e0
[   76.658141] x21: ffff0000c335b940 x20: ffff800009ede660
[   76.658142] x19: 0000000000000000 x18: 0000000000000001
[   76.658144] x17: 0000000000000000 x16: 0000000000000000
[   76.658145] x15: ffff0000c335bdc0 x14: ffff8000140a0000
[   76.658147] x13: 0000000000110000 x12: 0040000000000001
[   76.658148] x11: ffff0000c12b8180 x10: 0000000000000085
[   76.658150] x9 : ffff800013c00000 x8 : 0000000000110000
[   76.658152] x7 : 0000000000000000 x6 : ffff0000f7ff0008
[   76.658153] x5 : ffff800013d0ffff x4 : ffff800013c00000
[   76.658154] x3 : ffff800013c00004 x2 : 0140000000000000
[   76.658156] x1 : 0000000000000000 x0 : ffff800013c00000
[   76.658158] Kernel panic - not syncing: Asynchronous SError Interrupt
[   76.658159] CPU: 4 PID: 1752 Comm: systemd-udevd Not tainted
5.4.0-rc5-next-20191031-00001-gddbfb17ac1c4-dirty #16
[   76.658160] Hardware name: Pine64 RockPro64 (DT)
[   76.658161] Call trace:
[   76.658161]  dump_backtrace+0x0/0x148
[   76.658162]  show_stack+0x24/0x30
[   76.658163]  dump_stack+0xa8/0xf0
[   76.658163]  panic+0x160/0x36c
[   76.658164]  nmi_panic+0x94/0x98
[   76.658164]  arm64_serror_panic+0x84/0x90
[   76.658165]  do_serror+0x88/0x140
[   76.658166]  el1_error+0xc4/0x170
[   76.658166]  nvkm_device_ctor+0x2cc/0x2e18 [nouveau]
[   76.658167]  nvkm_device_pci_new+0xf8/0x2c8 [nouveau]
[   76.658168]  nouveau_drm_probe+0x60/0x288 [nouveau]
[   76.658168]  local_pci_probe+0x44/0x98
[   76.658169]  pci_device_probe+0x118/0x1b0
[   76.658170]  really_probe+0xe0/0x320
[   76.658171]  driver_probe_device+0x5c/0xf0
[   76.658171]  device_driver_attach+0x74/0x80
[   76.658172]  __driver_attach+0x64/0xe0
[   76.658173]  bus_for_each_dev+0x80/0xd0
[   76.658173]  driver_attach+0x30/0x40
[   76.658174]  bus_add_driver+0x14c/0x1f0
[   76.658175]  driver_register+0x64/0x110
[   76.658175]  __pci_register_driver+0x58/0x68
[   76.658176]  nouveau_drm_init+0x17c/0x10000 [nouveau]
[   76.658177]  do_one_initcall+0x50/0x298
[   76.658178]  do_init_module+0x88/0x270
[   76.658178]  load_module+0x2068/0x2600
[   76.658179]  __do_sys_finit_module+0xd0/0xe8
[   76.658180]  __arm64_sys_finit_module+0x28/0x38
[   76.658180]  el0_svc_common.constprop.0+0x7c/0x1f0
[   76.658181]  el0_svc_handler+0x34/0xa0
[   76.658182]  el0_svc+0x14/0x40
[   76.658182]  el0_sync_handler+0x118/0x280
[   76.658183]  el0_sync+0x164/0x180
[   76.658248] SMP: stopping secondary CPUs
[   76.658249] Kernel Offset: disabled
[   76.658250] CPU features: 0x10002,2000600c
[   76.658250] Memory Limit: none


> > >
> > > Another reason I believe the address assignments are overflowing and
> > > corrupting other address assignments is after the external abort, the
> > > entire PCIE controller is inaccessible.
> > > $ lspci
> > > pcilib: Cannot open /sys/bus/pci/devices/0000:01:00.1/config
> > > lspci: Unable to read the standard configuration space header of
> > > device 0000:01:00.1
> > > pcilib: Cannot open /sys/bus/pci/devices/0000:00:00.0/config
> > > lspci: Unable to read the standard configuration space header of
> > > device 0000:00:00.0
> > > pcilib: Cannot open /sys/bus/pci/devices/0000:01:00.0/config
> > > lspci: Unable to read the standard configuration space header of
> > > device 0000:01:00.0
> > >
> > > Attempting to rescan the bus or any other pci function results in a
> > > hung kernel task.
> >
> > You crashed deep in the kernel part-way through the driver's probe
> > routine; don't expect any partly-initialised bits of that driver to
> > actually work. I bet you also can't load/unload modules and do various
> > other things either, because the thread will almost certainly have been
> > holding a bunch of locks, too. It's not worth trying to reason about the
> > state of anything after that kind of unexpected crash ;)
>
> That is observed, but I think it is actually more destructive than that.
> Attempting to do an access after the fact, then performing a soft
> reset results in a spectacular crash when it tries to bring the BIG
> cluster online.
>
> [    0.203160] CPU3: Booted secondary processor 0x0000000003 [0x410fd034]
> [    5.355606] CPU4: failed to come online
> [    5.363258] CPU4: failed in unknown state : 0x0
> Unhandled Exception in EL3.
> x30 =           0xUhandled Exception in L3.
> x30 =           UNhandled ExcEption in EL3.
> x30 =   0xUnhandled Excepti2n in EL_.
> x30 =           0xUnhandled Exception in EL3.
> x30 =           lxUnhadled Exception in EL3.
> x30 =           0xUnhandled Excepion in EL3.
> x30 =           0xUnhandled Exception in EL3.
> x30 =   0xUnhandled Eception in EL3.
> x30 =           0xUnhandled Exception in EL3.
> x30 =           0xUnhandled Exception in EL3.x30 =
> 0xUnhandled Exception in EL3.
> x30 =           0xUnhandled Excepton i2 EL3.
> x30 =           0xUnhandUnhandled Exceptionein EL3.lx30 =
>  0xUnhandled Exception in EL3.
> x30 =           0xUnhandled Unhanded Exception in EL3.
> x30 =           0xUnhandled Exceptin in EL3Unhandled Exception inEL3.
> x0 =            0xUnhandled Exception in EL3.
> x30 =           0xUnhandled Exception in EL3.
> x30 =           0xUnhandled Exception in EL.
> x30 =           0xUnhandled Exception in EL3.
> x30 =           0xUnhandled Exception in EL3.
> x30 =           0xUnhandled xception in EL3
> x30 =           0xUnhcndled Exception in EL3.
> x30=            0xUnhandled Excextion in EL3.
> x30 =   0xUnhandled Exception in EL3.
> x30 =           0x[   10.484411] CPU5: failed to come online
> [   10.484807] CPU5: failed in unknown state : 0x0
> [   10.485374] smp: Brought up 1 node, 4 CPUs
>
> It goes on until it tries to do it's first DMA setup, then just hangs.
> >
> > >> If the Root Port (00:00.0) supports AER, you could also dump out the
> > >> status registers from the AER capability and figure out whether it
> > >> logged a PCIe error.  This would be sort of like what
> > >> aer_process_err_devices() does.  A bit of a hassle to do this by hand
> > >> in the exception path, but could be enlightening, just as a debug
> > >> tool.
> > >
> > > Is there a way to handle external synchronous aborts in a device driver?
> >
> > Not easily on arm64 - the closest thing we have is some arch-internal
> > machinery for undefined instruction hooks. You'd have to hack something
> > gruesome into do_sea()...
> >
> > For starters it might be worth enabling all the debug prints in
> > rockchip-pcie to see if there's any error IRQ corresponding to the
> > aborted access.
>
> Debug prints are already enabled, I had to hack in the print to show
> what addresses it was crashing on.
>
> Your explanation was the last piece for me to understand how this all
> works, thanks!
> >
> > Robin.
> >
> > > If so, I'll definitely look into plugging in the aer status functions.
> > >
> > >>
> > >>> [3] https://twitter.com/domipheus/status/1167586160077627393
> > >>>>
> > >>>>> [  198.751581] Modules linked in: drm_panel_orientation_quirks
> > >>>>> pcie_rockchip_host(+) cpufreq_dt sch_fq_codel ip_tables x_tables ipv6
> > >>>>> crc_ccitt nf_defrag_ipv6
> > >>>>> [  198.752861] CPU: 1 PID: 1686 Comm: systemd-udevd Not tainted
> > >>>>> 5.4.0-rc5-next-20191031-00001-gddbfb17ac1c4-dirty #5
> > >>>>> [  198.753791] Hardware name: Pine64 RockPro64 (DT)
> > >>>>> [  198.754215] pstate: 60400085 (nZCv daIf +PAN -UAO)
> > >>>>> [  198.754672] pc : __raw_readl+0x0/0x8 [pcie_rockchip_host]
> > >>>>> [  198.755172] lr : rockchip_pcie_rd_conf+0x140/0x1dc [pcie_rockchip_host]
> > >>>>> [  198.755773] sp : ffff8000132af530
> > >>>>> [  198.756079] x29: ffff8000132af530 x28: 0000000000000000
> > >>>>> [  198.756565] x27: 0000000000000001 x26: 0000000000000000
> > >>>>> [  198.757049] x25: ffff0000c20ac000 x24: 0000000000002000
> > >>>>> [  198.757534] x23: ffff0000c20ae5c0 x22: ffff8000132af5d4
> > >>>>> [  198.758018] x21: 0000000000002000 x20: 0000000000000004
> > >>>>> [  198.758502] x19: 0000000000102000 x18: 0000000000000001
> > >>>>> [  198.758987] x17: 0000000000000000 x16: 0000000000000000
> > >>>>> [  198.759472] x15: ffffffffffffffff x14: ffff80001159bcc8
> > >>>>> [  198.759957] x13: 0000000000000000 x12: ffff800011b2c000
> > >>>>> [  198.760441] x11: ffff8000115bf000 x10: ffff800011310018
> > >>>>> [  198.760926] x9 : 00000000fffb9fff x8 : 0000000000000001
> > >>>>> [  198.761410] x7 : 0000000000000000 x6 : ffff0000f7492548
> > >>>>> [  198.761894] x5 : 0000000000000001 x4 : ffff0000f7492548
> > >>>>> [  198.762379] x3 : 0000000000000000 x2 : 0000000000c00008
> > >>>>> [  198.762863] x1 : ffff80001dc00008 x0 : ffff80001a102000
> > >>>>> [  198.763348] Call trace:
> > >>>>> [  198.763583]  __raw_readl+0x0/0x8 [pcie_rockchip_host]
> > >>>>> [  198.764057]  pci_bus_read_config_dword+0x88/0xd0
> > >>>>> [  198.764484]  pci_bus_generic_read_dev_vendor_id+0x40/0x1b8
> > >>>>> [  198.764982]  pci_bus_read_dev_vendor_id+0x58/0x88
> > >>>>> [  198.765413]  pci_scan_single_device+0x84/0xf8
> > >>>>> [  198.765812]  pci_scan_slot+0x7c/0x120
> > >>>>> [  198.766149]  pci_scan_child_bus_extend+0x68/0x2dc
> > >>>>> [  198.766579]  pci_scan_bridge_extend+0x350/0x588
> > >>>>> [  198.766992]  pci_scan_child_bus_extend+0x21c/0x2dc
> > >>>>> [  198.767430]  pci_scan_child_bus+0x24/0x30
> > >>>>> [  198.767797]  pci_scan_root_bus_bridge+0xc4/0xd0
> > >>>>> [  198.768215]  rockchip_pcie_probe+0x610/0x74c [pcie_rockchip_host]
> > >>>>> [  198.768770]  platform_drv_probe+0x58/0xa8
> > >>>>> [  198.769139]  really_probe+0xe0/0x318
> > >>>>> [  198.769468]  driver_probe_device+0x5c/0xf0
> > >>>>> [  198.769844]  device_driver_attach+0x74/0x80
> > >>>>> [  198.770227]  __driver_attach+0x64/0xe8
> > >>>>> [  198.770572]  bus_for_each_dev+0x84/0xd8
> > >>>>> [  198.770924]  driver_attach+0x30/0x40
> > >>>>> [  198.771253]  bus_add_driver+0x188/0x1e8
> > >>>>> [  198.771605]  driver_register+0x64/0x110
> > >>>>> [  198.771956]  __platform_driver_register+0x54/0x60
> > >>>>> [  198.772388]  rockchip_pcie_driver_init+0x28/0x10000 [pcie_rockchip_host]
> > >>>>> [  198.772998]  do_one_initcall+0x94/0x390
> > >>>>> [  198.773353]  do_init_module+0x88/0x268
> > >>>>> [  198.773697]  load_module+0x1e18/0x2198
> > >>>>> [  198.774043]  __do_sys_finit_module+0xd0/0xe8
> > >>>>> [  198.774435]  __arm64_sys_finit_module+0x28/0x38
> > >>>>> [  198.774858]  el0_svc_common.constprop.3+0xa4/0x1d8
> > >>>>> [  198.775297]  el0_svc_handler+0x34/0xa0
> > >>>>> [  198.775645]  el0_svc+0x14/0x40
> > >>>>> [  198.775928]  el0_sync_handler+0x118/0x290
> > >>>>> [  198.776295]  el0_sync+0x164/0x180
> > >>>>> [  198.776609] Code: bad PC value
> > >>>>> [  198.776897] ---[ end trace 88fc77651b5e2909 ]---
> > >
> > > _______________________________________________
> > > Linux-rockchip mailing list
> > > Linux-rockchip@lists.infradead.org
> > > http://lists.infradead.org/mailman/listinfo/linux-rockchip
> > >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
