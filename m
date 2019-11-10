Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A51FDF69DF
	for <lists+linux-rockchip@lfdr.de>; Sun, 10 Nov 2019 16:44:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ppU9shh965ESE8FHtJsa1U4wao7+UXTBDzxMKb4vUgY=; b=CZ8unT1FokRYnm
	53gDWCE/3+LYPc0yp80c7tF63rFi/WayRMZD0nx0DUAsWaiZnwtMTdpWsIJp9XKZ3EL/uSG+fYgPY
	4lon1Kzws/tseiGlYhdh38m/vDeGepAREhXbCGkAWa9jVUl2CQ0dBhsgcCJ7K6og1IW0vi4j3230t
	LLhvNiwJJk3lBJWS84U0ZGrdL9H6N8Kk+muBQB0Ltu+9h8UCLmWVI3yxSOT0C8SVVGWorMnWxrEpu
	wF3FWctwUmAXIjzBfln8WeFiTUM9eXskq3jaux3aMQiRi449YDjgmEa2ADH0xrJV+gDB6002hFEz/
	9rtbH+DjRCEaQpOoi1pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTpNk-00044N-I1; Sun, 10 Nov 2019 15:44:04 +0000
Received: from mail-qv1-xf2e.google.com ([2607:f8b0:4864:20::f2e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTpNh-00043u-3j
 for linux-rockchip@lists.infradead.org; Sun, 10 Nov 2019 15:44:02 +0000
Received: by mail-qv1-xf2e.google.com with SMTP id s18so3975197qvr.4
 for <linux-rockchip@lists.infradead.org>; Sun, 10 Nov 2019 07:44:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xNFFtsb6ylNr3ha/1apI2/6DE8XxKUFs8kVIYQSL2Rc=;
 b=rokq93MWUkHfc73Cve+yl9ID7J66jy+lSPjOyqUtwlfOr7Gn2F/BtIKR78CQEZNauF
 C/l6NaUfWeYRWGzQ3H2VantsnD4Vrzxr2HNOknmyxVALZ3fKOfeouHReyk9x1u16/ru/
 cXKH7qTTzAk8qxtOuUCyKk5AQ80uD6EUk+9QFyMuvOP0cphbfcvImS3bwFupRKVMaTIQ
 sEdpnuqWvARJkfwTgcy8HZ/pLq9JJ3SHTjQOGcutuV30NyhC4+zfed9tRVCBG2xp/hW0
 nkmwnnNRmq2mXhazMWayiBOB2dp/Wrsj0d4oyu1Z8praeboGYiI4vfVtRN9q8fsm82pL
 7Q5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xNFFtsb6ylNr3ha/1apI2/6DE8XxKUFs8kVIYQSL2Rc=;
 b=Aplcvv4sHvf7hGpoYS6pFymTnL8sRQ6OcydQ1/CGB/9+Me2C8dK0czhvpEzMSDAAgI
 3MNvX0AcNNoD8gSKK2JOLH5K7b/WKNTfCeJOoJs5qXFAiv/StH8ZN51N9l2f0q713nBF
 t/lu+7U/aSPe/eLp1gK/TpnJNBBl8hIikNEKigUwRA1wy5oCT6h/sxhuDv7WkPZr4zGz
 9JVAZPhbCBLYvYDAHK2nDKaMhnIPmDKhuQz0ErfXQH7YTRfZW5+m8gE3mxOX79CGv2ol
 opmenLuwkDOMSM7yfvv8WmImWadxsoBjJVBc0AdlzrmrbztISvk0AKG0ijDpEQbqHfeL
 Skuw==
X-Gm-Message-State: APjAAAW0wBNy9mcsV72zHuysqYh1Wsj5ygW1Te29iqwAPbPeT034nghP
 fiwfOzEf28u1G8NMbxGd3+qxj7kROPZGZWQIPhg=
X-Google-Smtp-Source: APXvYqzfqJBXN7yw0kO9xM5BDV9jhtFzKNzXcEX5i05Gdxg1y2gs01MANi3uwD01XqbQsUt5B/s1Qq7Sqrt/f5l3y0s=
X-Received: by 2002:a05:6214:1051:: with SMTP id
 l17mr6272930qvr.60.1573400638846; 
 Sun, 10 Nov 2019 07:43:58 -0800 (PST)
MIME-Version: 1.0
References: <CAMdYzYoTwjKz4EN8PtD5pZfu3+SX+68JL+dfvmCrSnLL=K6Few@mail.gmail.com>
 <CAMdYzYqQpVrA9DpN5GRc2RqvsShSamw2EBJDxwng1aE3sfpfdg@mail.gmail.com>
 <CAD=FV=XXrSsnr08bbY_Lv39tdNSUOyDDSVj_3+701eYNpFRhWQ@mail.gmail.com>
In-Reply-To: <CAD=FV=XXrSsnr08bbY_Lv39tdNSUOyDDSVj_3+701eYNpFRhWQ@mail.gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Sun, 10 Nov 2019 10:43:48 -0500
Message-ID: <CAMdYzYo6mKSMXoDR7St1ynUJ9f3sh=0rgNAbbVvFAfJn82VvVQ@mail.gmail.com>
Subject: Re: [BUG] rk3399-rockpro64 pcie synchronous external abort
To: Doug Anderson <dianders@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_074401_154236_1440BBBD 
X-CRM114-Status: GOOD (  27.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pgwipeout[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Heiko Stuebner <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Sat, Nov 9, 2019 at 11:38 AM Doug Anderson <dianders@chromium.org> wrote:
>
> Hi,
>
> On Fri, Nov 8, 2019 at 5:09 PM Peter Geis <pgwipeout@gmail.com> wrote:
> >
> > Good Evening,
> >
> > I'm not sure, but I believe the pcie address space built into the
> > rk3399 is not large enough to accommodate the pcie addresses the card
> > requires.
> > I've been trying to figure out if it's possible to use system ram
> > instead, but so far I haven't been successful.
> > Also, the ram layout for the rk3399 is odd considering the TRM, if
> > anyone has any insights in to that, I'd be grateful.
> >
> > On Mon, Nov 4, 2019 at 1:55 PM Peter Geis <pgwipeout@gmail.com> wrote:
> > >
> > > Good Morning,
> > >
> > > I'm attempting to debug an issue with the rockpro64 pcie port.
> > > It would appear that the port does not like various cards, including
> > > cards of the same make that randomly work or do not work, such as
> > > Intel i340 based NICs.
> > > I'm experiencing it with a GTX645 gpu.
> > >
> > > This seems to be a long running issue, referenced both at [0], and [1].
> > > There was an attempt to rectify it, by adding a delay between training
> > > and probing [2], but that doesn't seem to be the issue here.
> > > It appears that when we probe further into the card, such as devfn >
> > > 1, we trigger the bug.
> > > I've added a print statement that prints the devfn, address, and size
> > > information, which you can see below.
> > >
> > > I've attempted setting the available number of lanes to 1 as well, to
> > > no difference.
> > >
> > > If anyone could point me in the right direction as to where to
> > > continue debugging, I'd greatly appreciate it.
>
> I don't have tons of knowledge here, but your thread happened to fly
> by my Inbox and it reminded me of issues we faced during the bringup
> of rk3399-gru-kevin where our WiFi driver would kill the whole system
> in random / hard to debug ways.
>
> If I remember, the problem was that the rk3399 PCIe behaved very badly
> when you try to access the bus is in certain power save modes.  I
> think that traditional x86-based controllers just return 0xff in the
> same state, but rk3399 gives some sorts of asynchronous bus errors.
>
> IIRC our problem was fixed with:
>
> https://crrev.com/c/402092 - FROMLIST: mwifiex: fix corner case power save issue
>
> ...that's about all the knowledge I have around this area, but
> possibly it could point you in the right direction?
>
> -Doug

Thanks!

Unfortunately this is happening before it even gets done probing the
pcie controller, and has not had a chance to enter a power save state.
I plugged in an i350 two port nic and examined the assigned address spaces.
I've attached it below.
Judging by the usage, I think this controller has enough address space
for another two port NIC, and that's about it.
I'm pretty sure now that the rk3399 controller just doesn't have the
address space to map larger devices.
I'm pretty sure the IOMMU would allow us to address system memory as
pcie address space and overcome this limitation, but I don't know how
to do that.

The address space for the nic is below:
f8000000-f8ffffff : axi-base
fa000000-fbdfffff : MEM
  fa000000-fa4fffff : PCI Bus 0000:01
    fa000000-fa07ffff : 0000:01:00.0
      fa000000-fa07ffff : igb
    fa080000-fa0fffff : 0000:01:00.0
    fa100000-fa17ffff : 0000:01:00.1
      fa100000-fa17ffff : igb
    fa180000-fa1fffff : 0000:01:00.1
    fa200000-fa27ffff : 0000:01:00.0
    fa280000-fa2fffff : 0000:01:00.0
    fa300000-fa37ffff : 0000:01:00.1
    fa380000-fa3fffff : 0000:01:00.1
    fa400000-fa403fff : 0000:01:00.0
      fa400000-fa403fff : igb
    fa404000-fa407fff : 0000:01:00.1
      fa404000-fa407fff : igb
fd000000-fdffffff : f8000000.pcie

$ dmesg | grep pci | grep -v devfn
[   64.408414] pci 0000:01:00.1: reg 0x1c: [mem 0x00000000-0x00003fff]
[   64.408508] pci 0000:01:00.1: reg 0x30: [mem 0x00000000-0x0007ffff pref]
[   64.408546] pci 0000:01:00.1: Max Payload Size set to 256 (was 128, max 512)
[   64.409002] pci 0000:01:00.1: PME# supported from D0 D3hot D3cold
[   64.409016] pci 0000:01:00.1: PME# disabled
[   64.409179] pci 0000:01:00.1: reg 0x184: [mem 0x00000000-0x0000ffff
64bit pref]
[   64.409181] pci 0000:01:00.1: VF(n) BAR0 space: [mem
0x00000000-0x0007ffff 64bit pref] (contains BAR0 for 8 VFs)
[   64.409268] pci 0000:01:00.1: reg 0x190: [mem 0x00000000-0x0000ffff
64bit pref]
[   64.409271] pci 0000:01:00.1: VF(n) BAR3 space: [mem
0x00000000-0x0007ffff 64bit pref] (contains BAR3 for 8 VFs)

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
