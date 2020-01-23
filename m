Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB3E146F40
	for <lists+linux-rockchip@lfdr.de>; Thu, 23 Jan 2020 18:11:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g+6JmOnob+yQUJWFP8/y9JoXjTw+dOhNO8HxQxe/QUk=; b=V6ebnfyVr+YiGc
	FeftxTs/bNOMFwUmOgaZGq2gl/im7kmwJwi8aQShr2xp/7aTcoorDO6V93YuB1q+P7C09cGq+eiZL
	GXHLkxAssuTDjvpHD6sB3aZgUInRJpKrVScD/Cj0IcDjfBQ/wwazF6T/VRS6xErpZseriIUrVNtUQ
	KhO48Kv/GjDhNtuzFbVBtJtCsuCpkUOzqeWOpZIuZ81m5BXe9AVaYujhf8ocqelxQ8a65YFu2DMSl
	7Qz48RO0AAudwuW8PHY/9nE/jE+4HiirH9aWbtWfpaGBFCC50PFLMg9QK7D6WOo/JsUKnqeBQemKw
	lX/t4n+8lgx5CHMU04cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iug0x-0007Xf-8a; Thu, 23 Jan 2020 17:11:31 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iug0t-0007XE-Np
 for linux-rockchip@lists.infradead.org; Thu, 23 Jan 2020 17:11:29 +0000
Received: by mail-io1-xd44.google.com with SMTP id e7so3654157iof.11
 for <linux-rockchip@lists.infradead.org>; Thu, 23 Jan 2020 09:11:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=izBtGnC8/JzFiWgnR7d9HTvJTnJAvTD6eS0crg2H4LU=;
 b=M6EPlgpD2DNXUY5KM7QQdX/gOgl6LueZUVNuKGBSsDjw/VsdbLxxoy01fQ9rjGFLgE
 QeUXLU2L7Y9vgep8ccUT2MH6UaoTXueHG68PPOw0EH05Ynmb0fy9iIt12YGMycf1r7Or
 +mmAlQBd2YhNKyNodrhBU0Db/0kg0Q25RuMIs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=izBtGnC8/JzFiWgnR7d9HTvJTnJAvTD6eS0crg2H4LU=;
 b=SUIT4h0dn8tQCxE72R21XhtvR/A6NQE7Xz2AAIO+VzCMf0uRSKbIicqbTlEwRD4vmw
 77FuW5mdpU+wpLlXpmmOBBvksKwluYPFYrFLTgjjM03IEzc+t8YJbVw4Qa8nrkJ8HqsD
 pgLP8pQUUIm9HV221ugyfDZVYHAuSLa9FWwdWo4NvfKmrq9U/qd05lSSy34RCEQiuKFq
 o05M+B08y8hdjXA++aDBF4onY5KcRBGTX3yrWnv96gsgZFeFDI+0aHL4ltCgxz95sFm9
 BCOKedyuYoRZl4/ksajtL/kqcrY0kM8TGlGAnPyupgxAeG7ZOue9po9MvKV6Jj9j2Au1
 bysg==
X-Gm-Message-State: APjAAAVpDbg7B/35sx+dk3+ytr1mJn+fou+heaWaYnhDMzpheND5zrNE
 UMqn1Ps+vNjnlpxzDoawooM7OB8pmLKHU4fmkMvfLA==
X-Google-Smtp-Source: APXvYqyqzlyMUsvjeFC30c4fba6L0GyRVxx8O4vxmnDmioTqpceGWGP8jLSxdPetHVDoUxqO02fHJuMeDqG5OiBAoH4=
X-Received: by 2002:a05:6602:d4:: with SMTP id
 z20mr12053165ioe.173.1579799486757; 
 Thu, 23 Jan 2020 09:11:26 -0800 (PST)
MIME-Version: 1.0
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-3-jagan@amarulasolutions.com>
 <20200120172240.GX8732@bill-the-cat>
 <8dddd74f-7b17-a614-48ab-aea0bc9148db@csgraf.de>
 <CAMty3ZAq+aDMuEKGYk9UyTS4Z4=TgtNcKRDtiBC-=mqRWUWAyA@mail.gmail.com>
 <20200123170301.GX26536@bill-the-cat>
In-Reply-To: <20200123170301.GX26536@bill-the-cat>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Thu, 23 Jan 2020 22:41:15 +0530
Message-ID: <CAMty3ZC6j+fo4c28V05OL7dn0VSWMoKdngneTBBSw1n_LQ+3bQ@mail.gmail.com>
Subject: Re: [PATCH 02/11] distro_bootcmd: Add SF support
To: Tom Rini <trini@konsulko.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_091128_209448_0FA4020E 
X-CRM114-Status: GOOD (  19.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
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

On Thu, Jan 23, 2020 at 10:33 PM Tom Rini <trini@konsulko.com> wrote:
>
> On Thu, Jan 23, 2020 at 10:25:50PM +0530, Jagan Teki wrote:
> > On Mon, Jan 20, 2020 at 11:10 PM Alexander Graf <agraf@csgraf.de> wrote:
> > >
> > >
> > > On 20.01.20 18:22, Tom Rini wrote:
> > > > +A few people that may have insight to my question
> > > >
> > > > On Sat, Dec 21, 2019 at 01:24:31PM +0530, Jagan Teki wrote:
> > > >
> > > >> Add distro boot command support for SPI flash.
> > > >>
> > > >> This distro boot will read the boot script at specific
> > > >> location at the flash and start sourcing the same.
> > > >>
> > > >> The common macro like BOOTENV_SHARED_FLASH would help
> > > >> to extend the support for nand flash in future.
> > > >>
> > > >> Cc: Tom Rini <trini@konsulko.com>
> > > >> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > > > What distro is this for?  My concern here is that hundreds of boards
> > > > (literally) grow by a few hundred bytes to add in this bit of additional
> > > > default logic.  That's not a big problem if distributions are now going
> > > > to be using SPI flash as where they're programming in their bootscript.
> > > > But, who is doing that?  Thanks!
> > >
> > >
> > > I am not aware of any "distro" that puts a U-Boot script at offset 0 of
> > > the SPI Flash.
> > >
> > > Traditionally, SPI Flash boot setups were always very hand crafted -
> > > exactly the opposite of what distro boot is for. That said, I think
> > > supporting SPI Flash boot for rk3399 is great! Albeit I would personally
> > > only store U-Boot and the environment on SPI, not the target OS.
> > >
> > > Jagan, is putting a U-Boot script on the SPI Flash something you thought
> > > of or something that the rk3399 reference board already does? If it's
> > > the latter, maybe you could add it as a board custom boot function?
> >
> > Yes it would be later that points to. rk3399 has SPI flash layout and
> > out of which one of offset(script_offset_f=0xffe000 from
> > include/configs/rk3399_common.h) stored the programming script.
>
> So I'm not sure why we're adding distro boot support to SPI flash.  What
> is the reference platform storing there exactly?  Thanks!

I'm not sure I understand the question? we have rk3399 SBC's that boot
from SPI and have feasibility to run distro boot using programming
script store in flash offset like boot.scr does for MMC.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
