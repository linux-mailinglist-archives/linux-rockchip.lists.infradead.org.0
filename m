Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8FC9146FAC
	for <lists+linux-rockchip@lfdr.de>; Thu, 23 Jan 2020 18:29:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4XrLaSwt5qeRHBFQ8/qjWvnzUR2OHuKk2+kpIUZw9Ss=; b=i+RoedcXvRV+5B
	Tk1WqGl0NrTf1MR2dHCV02puX1tNAqMqTLyo9HN1H5v9ulVTak+mA4podyEasJmrmZXamJR7O5xfX
	ZRBX9+EBNr0V4qFk/RRW0v6xyRDCG0/HBh9DSKIAsvOL0BwWWbci0nKsnfM2antQkMNeLVSV3s6Jf
	Y//lnC11Uep1fpKy41+cL1yW2IYVe6GaV6Km32+wTj2KyppSPU5CpmoMrkVSoZco9/srCCGU1HJKM
	GmMmiktlIQneZtUerRttIy8mqkevTQ2WEZUv6Maj7mhfSNh2wyzynvcx/PZrITUslzHWktxweGJFT
	1eOuN8GogEtagh3DMq3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iugIQ-0005Ew-Sy; Thu, 23 Jan 2020 17:29:34 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iugIN-0005EK-2L
 for linux-rockchip@lists.infradead.org; Thu, 23 Jan 2020 17:29:33 +0000
Received: by mail-il1-x141.google.com with SMTP id v69so2654731ili.10
 for <linux-rockchip@lists.infradead.org>; Thu, 23 Jan 2020 09:29:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=s+hWUnZGLblv6WI/hujdQjOjyM2TaElGwoxsJ3Pwuss=;
 b=QE+GN+N0WSjz82TYTWeTOexfbymbR6BrSBmg2QwjYg6TmsQ8BUXgDtUFl08M7ripVp
 LEI4VZaFm1dr3gN82VYaLHUFHH63M9Rj/gStmHdrmsVrbAaqhUCjAtIboU0OPHdVI7ip
 rGLunEod6ReiI5g4CbUeT2Z1DySr1XEjZUJiQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=s+hWUnZGLblv6WI/hujdQjOjyM2TaElGwoxsJ3Pwuss=;
 b=QfBHezp1vJKpUPsnkNBZTelq2DkAtSzC4YjFG2vapjY1G6aLbwqGzZENZpN0XrO9Vs
 uEE/F5Y5nUJ+N+xybm87BojvU6mZBlm2jsPwzg5bjbqrC+HY9falJU6QyB7qlsHT8Jb5
 RG7Na0br1/EDb4PWIRsjxpqUlIKnmGx4OGIJrlkiWkzNqNsFwr7TdZbzOcTkXdWAVsE7
 FvFuhjvmfHZico8/fDBbqqNOYXYt6VPUN+8U+FuFoLCTZ9BfuxudLprcq2Ui5eNdGaHp
 m3bSzSzKMISaYnjqCwpxANTiQTW4dDnClvLAYVMiB413ygmIhJ5aABABz/5VDRf5thef
 46tQ==
X-Gm-Message-State: APjAAAWSW9hpayT1UuOxNuVMA73DL9zM9oOkxZakW5UTpxYIkiqTwhp5
 AqBSEawfVfn9z4tcV0eeM1ZxvzhdpLdmpszXuu1nCw==
X-Google-Smtp-Source: APXvYqzWyOSI7Wgmy8TKnW0faFMnRfBMFzEYyEi3YddOocpKTvPxMPPnPB18KGUDZYUA1HV9XSYgxL4VOQCsCcOn4Lc=
X-Received: by 2002:a92:cc89:: with SMTP id x9mr1935240ilo.77.1579800568627;
 Thu, 23 Jan 2020 09:29:28 -0800 (PST)
MIME-Version: 1.0
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-3-jagan@amarulasolutions.com>
 <20200120172240.GX8732@bill-the-cat>
 <8dddd74f-7b17-a614-48ab-aea0bc9148db@csgraf.de>
 <CAMty3ZAq+aDMuEKGYk9UyTS4Z4=TgtNcKRDtiBC-=mqRWUWAyA@mail.gmail.com>
 <20200123170301.GX26536@bill-the-cat>
 <CAMty3ZC6j+fo4c28V05OL7dn0VSWMoKdngneTBBSw1n_LQ+3bQ@mail.gmail.com>
 <20200123171500.GY26536@bill-the-cat>
In-Reply-To: <20200123171500.GY26536@bill-the-cat>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Thu, 23 Jan 2020 22:59:17 +0530
Message-ID: <CAMty3ZDd0PSDbRir4mqqePDfFi5fdc2Pg8JL7TyGKu_zbsBCGQ@mail.gmail.com>
Subject: Re: [PATCH 02/11] distro_bootcmd: Add SF support
To: Tom Rini <trini@konsulko.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_092931_767080_CF835F46 
X-CRM114-Status: GOOD (  24.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Heinrich Schuchardt <xypron.glpk@gmx.de>, Simon Glass <sjg@chromium.org>,
 Kever Yang <kever.yang@rock-chips.com>, U-Boot-Denx <u-boot@lists.denx.de>,
 Alexander Graf <agraf@csgraf.de>, Peter Robinson <pbrobinson@gmail.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, Jan 23, 2020 at 10:45 PM Tom Rini <trini@konsulko.com> wrote:
>
> On Thu, Jan 23, 2020 at 10:41:15PM +0530, Jagan Teki wrote:
> > On Thu, Jan 23, 2020 at 10:33 PM Tom Rini <trini@konsulko.com> wrote:
> > >
> > > On Thu, Jan 23, 2020 at 10:25:50PM +0530, Jagan Teki wrote:
> > > > On Mon, Jan 20, 2020 at 11:10 PM Alexander Graf <agraf@csgraf.de> wrote:
> > > > >
> > > > >
> > > > > On 20.01.20 18:22, Tom Rini wrote:
> > > > > > +A few people that may have insight to my question
> > > > > >
> > > > > > On Sat, Dec 21, 2019 at 01:24:31PM +0530, Jagan Teki wrote:
> > > > > >
> > > > > >> Add distro boot command support for SPI flash.
> > > > > >>
> > > > > >> This distro boot will read the boot script at specific
> > > > > >> location at the flash and start sourcing the same.
> > > > > >>
> > > > > >> The common macro like BOOTENV_SHARED_FLASH would help
> > > > > >> to extend the support for nand flash in future.
> > > > > >>
> > > > > >> Cc: Tom Rini <trini@konsulko.com>
> > > > > >> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > > > > > What distro is this for?  My concern here is that hundreds of boards
> > > > > > (literally) grow by a few hundred bytes to add in this bit of additional
> > > > > > default logic.  That's not a big problem if distributions are now going
> > > > > > to be using SPI flash as where they're programming in their bootscript.
> > > > > > But, who is doing that?  Thanks!
> > > > >
> > > > >
> > > > > I am not aware of any "distro" that puts a U-Boot script at offset 0 of
> > > > > the SPI Flash.
> > > > >
> > > > > Traditionally, SPI Flash boot setups were always very hand crafted -
> > > > > exactly the opposite of what distro boot is for. That said, I think
> > > > > supporting SPI Flash boot for rk3399 is great! Albeit I would personally
> > > > > only store U-Boot and the environment on SPI, not the target OS.
> > > > >
> > > > > Jagan, is putting a U-Boot script on the SPI Flash something you thought
> > > > > of or something that the rk3399 reference board already does? If it's
> > > > > the latter, maybe you could add it as a board custom boot function?
> > > >
> > > > Yes it would be later that points to. rk3399 has SPI flash layout and
> > > > out of which one of offset(script_offset_f=0xffe000 from
> > > > include/configs/rk3399_common.h) stored the programming script.
> > >
> > > So I'm not sure why we're adding distro boot support to SPI flash.  What
> > > is the reference platform storing there exactly?  Thanks!
> >
> > I'm not sure I understand the question? we have rk3399 SBC's that boot
> > from SPI and have feasibility to run distro boot using programming
> > script store in flash offset like boot.scr does for MMC.
>
> OK, and what distro(s) today are doing that?  I'm not happy with this
> patch as it's growing hundreds (literally) of boards in size and I'd
> like to know what is leveraging this functionality today, or is going to
> be as soon as it's upstream and widely available.  Thanks!

Not sure about the possibility more boards using this at this point,
but I was initially created custom to rockchip and feel that it would
be useful to rest if it's generic. May be will split into rockchip
area if it's eating too much footprint.

Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
