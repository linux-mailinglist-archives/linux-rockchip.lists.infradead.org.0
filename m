Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E7A146EB4
	for <lists+linux-rockchip@lfdr.de>; Thu, 23 Jan 2020 17:56:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/JD3BuV8bqeckdEmXcHNgQa0ABriTs/wQ0q8tHKruus=; b=D4o1cQ+i5ShY3s
	FKYHCtZoJWvUMvM3HcXxDPL6I/y7vDY1r0KMLpnHDv7Ki6+5pduU4Cbl2GdIj3MXy/GEKrfFyYm1p
	VIAz+E1HG1JRmx0zZiCh3bGb+Q0jvqRb8RrcniXcafDF5cho6n3JIAQVCUTSgx+RzMPLSEHD78sKd
	76hs8S8udaZfgxsviQ8qYFKBDm+JF0060vuygNejAz3kAX5Li2FoYfwxbM3+6cf1UPNhdtF2fza+z
	hSICfyoeDFSn5UvlS+32+dkAM2YecX3+tr7kh9CzhqzhylmJDQjOKLEq8TiTD1A2LvZ6jvlHQnndY
	Wc9jXoZYaKp7uGXVHRXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iufm1-0000dR-On; Thu, 23 Jan 2020 16:56:05 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iufly-0000d8-A6
 for linux-rockchip@lists.infradead.org; Thu, 23 Jan 2020 16:56:04 +0000
Received: by mail-il1-x144.google.com with SMTP id v69so2570682ili.10
 for <linux-rockchip@lists.infradead.org>; Thu, 23 Jan 2020 08:56:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YIM8cGtXJeDSUZ5rx4E9o0ABegFU5w/IoycbPZ/X/Ps=;
 b=QPOusPhj86vc++2f0TcTV5PtpmEx5mlMlNaNexj6mbD7iC2x7VRThRSMhRJoEg0bRQ
 HCTc35IKUDe+FMaBvZF06urzmGiS7F4bjD6xzNdFTSaOgkqmI00yXZ7+T0SVcQB2gQXh
 +W8EQwfiR/4KRke6ue+nAQJASmFD6sT8BGSXE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YIM8cGtXJeDSUZ5rx4E9o0ABegFU5w/IoycbPZ/X/Ps=;
 b=RntZzq8oi4Y+xo/uqcKzFKY9g/Hp/mwImO2pkV7uVfY3I08hxHZodugW5im2Ui2qwz
 4NRus99Oh6fgHH5d+BhfYiYUtSRZrIxYYz4D/mYG6CXFREUAJat8YD5NXEu3Fx+jgXyP
 8WLC9sZAePb20sDZQuH75+XnfJPB4xA0j9dqAMpwnY4Wr3t+Rd/un9V79n7cMZDjSqT2
 j/z19dRlk+QF/tTc1EhwzY15UA8M65xD08YRuO/EbjlVnOBKyAisUF8v2zlhWyWIWkqE
 2xYZWpyGEWhr+Aps1ZVTCogT9AIMXtgQwLdgolPwk1r3ubYLi/kSeD8EhCDKG3xnJEgS
 ocvw==
X-Gm-Message-State: APjAAAWFCwdfDhZrMtvz55GPycNZBcHDBd+jLOVnngO3OSTeW0q7KiiN
 UK9AqAabxeImgnigNuX2QPH6/JjDBb1kAQoZNcem1A==
X-Google-Smtp-Source: APXvYqxBPEIsOGcp806Hb0lNkcYBxLyipHqkKQEpC2B/hlXFJ9xf7tQiiE3bATdcrNIUjg+NJpieKpPQbPsU5PyumBM=
X-Received: by 2002:a92:9f1b:: with SMTP id u27mr13665562ili.173.1579798560979; 
 Thu, 23 Jan 2020 08:56:00 -0800 (PST)
MIME-Version: 1.0
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-3-jagan@amarulasolutions.com>
 <20200120172240.GX8732@bill-the-cat>
 <8dddd74f-7b17-a614-48ab-aea0bc9148db@csgraf.de>
In-Reply-To: <8dddd74f-7b17-a614-48ab-aea0bc9148db@csgraf.de>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Thu, 23 Jan 2020 22:25:50 +0530
Message-ID: <CAMty3ZAq+aDMuEKGYk9UyTS4Z4=TgtNcKRDtiBC-=mqRWUWAyA@mail.gmail.com>
Subject: Re: [PATCH 02/11] distro_bootcmd: Add SF support
To: Alexander Graf <agraf@csgraf.de>, Tom Rini <trini@konsulko.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_085603_001108_ABE0004D 
X-CRM114-Status: GOOD (  15.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
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
 Peter Robinson <pbrobinson@gmail.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, Jan 20, 2020 at 11:10 PM Alexander Graf <agraf@csgraf.de> wrote:
>
>
> On 20.01.20 18:22, Tom Rini wrote:
> > +A few people that may have insight to my question
> >
> > On Sat, Dec 21, 2019 at 01:24:31PM +0530, Jagan Teki wrote:
> >
> >> Add distro boot command support for SPI flash.
> >>
> >> This distro boot will read the boot script at specific
> >> location at the flash and start sourcing the same.
> >>
> >> The common macro like BOOTENV_SHARED_FLASH would help
> >> to extend the support for nand flash in future.
> >>
> >> Cc: Tom Rini <trini@konsulko.com>
> >> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > What distro is this for?  My concern here is that hundreds of boards
> > (literally) grow by a few hundred bytes to add in this bit of additional
> > default logic.  That's not a big problem if distributions are now going
> > to be using SPI flash as where they're programming in their bootscript.
> > But, who is doing that?  Thanks!
>
>
> I am not aware of any "distro" that puts a U-Boot script at offset 0 of
> the SPI Flash.
>
> Traditionally, SPI Flash boot setups were always very hand crafted -
> exactly the opposite of what distro boot is for. That said, I think
> supporting SPI Flash boot for rk3399 is great! Albeit I would personally
> only store U-Boot and the environment on SPI, not the target OS.
>
> Jagan, is putting a U-Boot script on the SPI Flash something you thought
> of or something that the rk3399 reference board already does? If it's
> the latter, maybe you could add it as a board custom boot function?

Yes it would be later that points to. rk3399 has SPI flash layout and
out of which one of offset(script_offset_f=0xffe000 from
include/configs/rk3399_common.h) stored the programming script.

Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
