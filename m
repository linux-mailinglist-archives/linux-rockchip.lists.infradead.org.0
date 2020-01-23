Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34C3F14702F
	for <lists+linux-rockchip@lfdr.de>; Thu, 23 Jan 2020 18:59:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2YbrZDTmoko9M70jsTDKy+xyZ2QHTp9IVSIjpgyncxw=; b=jgEdygHgsSGUmNxLpfod+eiaN
	N9QWCQTfiN+ys4UDKP4GOxqefV7kCROsHpSAzjVYYiWSaUYwAC3QzbzeafGp3Gf8tq65GtWH+NH+o
	v+So/fDKQ/Pr9eQ2cnbkKZZqA5vBwRnL3fJ6W19FVZnTsHvqPDe18Orow5QzAv5p4DTIjJTbezfIF
	lUHdv/2eQwRPlAYcyLNu2KlCoS52m7+o+nBgKcHRZ4aQkjyai56OQPIgFfSewTyFWb8WQxuWJ0RhM
	3C5R2YxItH/H6lsyU8EXkW8I28dusNC+MnzZiJ4lErc4WPB1+QaaMlAGn1ZTHPnX/imHXaoYjW5HL
	DhQoqoXaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuglE-0007kK-FP; Thu, 23 Jan 2020 17:59:20 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuglA-0007jw-AX
 for linux-rockchip@lists.infradead.org; Thu, 23 Jan 2020 17:59:17 +0000
Received: by mail-yw1-xc41.google.com with SMTP id t141so1941224ywc.11
 for <linux-rockchip@lists.infradead.org>; Thu, 23 Jan 2020 09:59:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=vWpBtzuFtcFcSX4MCI8KWGqQcT/pIuuwbsMYx0VA1nU=;
 b=QHI0CijFsIW2/SI5blxKGQMPNrdIN6iEAOK9ga9Dy9RKs3qioWZ2ygsFABleHNhkTv
 kEFJVCV1hHqR5jO/WI+FBkH/aJqTsmdXsUdUfm5cagj+kup6wRCeas1OlC9vBs/FQG+E
 C7l6YXmKEHgxmECJhqCE/BmvMA/zrZ8FhJAs4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=vWpBtzuFtcFcSX4MCI8KWGqQcT/pIuuwbsMYx0VA1nU=;
 b=ns7L6jlZAEnZfXssBIJCLPWBxDVwtxQWOmlxyH8KCpd8W/fPrGTkfei9yovEnnRRkm
 xaMTALMvBHUmCXHeqehElndt3OLfAeAfm6DFPn0X2A6XpcqxQ8/n68jX1DTAJNMgI/jE
 Y85t7Knzilwi4uTTAkCycF3o9jN9UyQepxm5Hq1MAMfTHKqn/DXey3SaD1LeLsBr5z+B
 xLFdPO9n8Xovvh2XHy/ogcWB+UTRbN7G4TtjyLeYxWu4JbdB2d9MYIDALJ/fKtgwb7L1
 aOFh4pLnJMTkRTjGh24jKg99+jvmn9h9R91048euqVtKQLYQMkAL1S0aNrsLgNTRlNkM
 HybQ==
X-Gm-Message-State: APjAAAUvDWXuqIw9reXJLM0VOr9+ds7lU654zSbvH9sQLiYlIlxp+PF/
 eeswdRUSGBbiX0onyLZTJdc8Rg==
X-Google-Smtp-Source: APXvYqz0MDTzKyIgLNAruFgyT72Le53wCvIDY8oPTINAtYSrsFuvElT2xRtt3M3Fp+eyxWKO1fa8yw==
X-Received: by 2002:a81:4686:: with SMTP id
 t128mr12215194ywa.183.1579802355129; 
 Thu, 23 Jan 2020 09:59:15 -0800 (PST)
Received: from bill-the-cat
 (2606-a000-1401-86dd-4d1b-b279-03ac-0199.inf6.spectrum.com.
 [2606:a000:1401:86dd:4d1b:b279:3ac:199])
 by smtp.gmail.com with ESMTPSA id j68sm1113254ywg.6.2020.01.23.09.59.13
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 23 Jan 2020 09:59:14 -0800 (PST)
Date: Thu, 23 Jan 2020 12:59:12 -0500
From: Tom Rini <trini@konsulko.com>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH 02/11] distro_bootcmd: Add SF support
Message-ID: <20200123175912.GZ26536@bill-the-cat>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-3-jagan@amarulasolutions.com>
 <20200120172240.GX8732@bill-the-cat>
 <8dddd74f-7b17-a614-48ab-aea0bc9148db@csgraf.de>
 <CAMty3ZAq+aDMuEKGYk9UyTS4Z4=TgtNcKRDtiBC-=mqRWUWAyA@mail.gmail.com>
 <20200123170301.GX26536@bill-the-cat>
 <CAMty3ZC6j+fo4c28V05OL7dn0VSWMoKdngneTBBSw1n_LQ+3bQ@mail.gmail.com>
 <20200123171500.GY26536@bill-the-cat>
 <CAMty3ZDd0PSDbRir4mqqePDfFi5fdc2Pg8JL7TyGKu_zbsBCGQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMty3ZDd0PSDbRir4mqqePDfFi5fdc2Pg8JL7TyGKu_zbsBCGQ@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_095916_364011_8EF680FB 
X-CRM114-Status: GOOD (  26.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
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
Content-Type: multipart/mixed; boundary="===============4148465039524555456=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============4148465039524555456==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="iIOavGAISvUeFFLW"
Content-Disposition: inline


--iIOavGAISvUeFFLW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 23, 2020 at 10:59:17PM +0530, Jagan Teki wrote:
> On Thu, Jan 23, 2020 at 10:45 PM Tom Rini <trini@konsulko.com> wrote:
> >
> > On Thu, Jan 23, 2020 at 10:41:15PM +0530, Jagan Teki wrote:
> > > On Thu, Jan 23, 2020 at 10:33 PM Tom Rini <trini@konsulko.com> wrote:
> > > >
> > > > On Thu, Jan 23, 2020 at 10:25:50PM +0530, Jagan Teki wrote:
> > > > > On Mon, Jan 20, 2020 at 11:10 PM Alexander Graf <agraf@csgraf.de>=
 wrote:
> > > > > >
> > > > > >
> > > > > > On 20.01.20 18:22, Tom Rini wrote:
> > > > > > > +A few people that may have insight to my question
> > > > > > >
> > > > > > > On Sat, Dec 21, 2019 at 01:24:31PM +0530, Jagan Teki wrote:
> > > > > > >
> > > > > > >> Add distro boot command support for SPI flash.
> > > > > > >>
> > > > > > >> This distro boot will read the boot script at specific
> > > > > > >> location at the flash and start sourcing the same.
> > > > > > >>
> > > > > > >> The common macro like BOOTENV_SHARED_FLASH would help
> > > > > > >> to extend the support for nand flash in future.
> > > > > > >>
> > > > > > >> Cc: Tom Rini <trini@konsulko.com>
> > > > > > >> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > > > > > > What distro is this for?  My concern here is that hundreds of=
 boards
> > > > > > > (literally) grow by a few hundred bytes to add in this bit of=
 additional
> > > > > > > default logic.  That's not a big problem if distributions are=
 now going
> > > > > > > to be using SPI flash as where they're programming in their b=
ootscript.
> > > > > > > But, who is doing that?  Thanks!
> > > > > >
> > > > > >
> > > > > > I am not aware of any "distro" that puts a U-Boot script at off=
set 0 of
> > > > > > the SPI Flash.
> > > > > >
> > > > > > Traditionally, SPI Flash boot setups were always very hand craf=
ted -
> > > > > > exactly the opposite of what distro boot is for. That said, I t=
hink
> > > > > > supporting SPI Flash boot for rk3399 is great! Albeit I would p=
ersonally
> > > > > > only store U-Boot and the environment on SPI, not the target OS.
> > > > > >
> > > > > > Jagan, is putting a U-Boot script on the SPI Flash something yo=
u thought
> > > > > > of or something that the rk3399 reference board already does? I=
f it's
> > > > > > the latter, maybe you could add it as a board custom boot funct=
ion?
> > > > >
> > > > > Yes it would be later that points to. rk3399 has SPI flash layout=
 and
> > > > > out of which one of offset(script_offset_f=3D0xffe000 from
> > > > > include/configs/rk3399_common.h) stored the programming script.
> > > >
> > > > So I'm not sure why we're adding distro boot support to SPI flash. =
 What
> > > > is the reference platform storing there exactly?  Thanks!
> > >
> > > I'm not sure I understand the question? we have rk3399 SBC's that boot
> > > from SPI and have feasibility to run distro boot using programming
> > > script store in flash offset like boot.scr does for MMC.
> >
> > OK, and what distro(s) today are doing that?  I'm not happy with this
> > patch as it's growing hundreds (literally) of boards in size and I'd
> > like to know what is leveraging this functionality today, or is going to
> > be as soon as it's upstream and widely available.  Thanks!
>=20
> Not sure about the possibility more boards using this at this point,
> but I was initially created custom to rockchip and feel that it would
> be useful to rest if it's generic. May be will split into rockchip
> area if it's eating too much footprint.

Yes, the "distro boot" functionality refers to what we need to allow
boards to easily Just Work with standard off the shelf *nix
distributions.  Thanks!

--=20
Tom

--iIOavGAISvUeFFLW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6HLbQJwaaH776GM2h/n2NdMddlIFAl4p3u0ACgkQh/n2NdMd
dlJGLg//fgjMxpwkOJx4ZJE2wfdLFIjIaWfayY89nChRiywlK9RM3QYH4LnDbOMI
xcJKYupT8f7KayukWlModfgOV0umA/uWLf3PFgg5Un7attGH4EmvKhvg+wqYrYTU
bkPRJ0DSPB+R2vDuy1c3JPYYHeyIYh/r2zLL2aJH6RPtJkdadvB3ZXxFINaSQxsB
9aI9zJg4/oD/VPwBdd8BcROfc/YZj8AqtlQYYHIwCUGgTghyIRnaecl1lZD3ca3R
RoEGt+1cw7WTyYpOAgneZFB489tlbelSc91xvDLo9gXL64CLMLDRmF3cnuQCvgcm
w/0+J1zrQ5jhIdaYhCMxEVaFC+7XnZB96nLbBv9H250CtpdmZ3lZhiPE1r+1jF0j
Xnggd57XQdkgfQyXlh662qYkZ8dX+HmkuFUEObHWZbRj0rQqkwQ2C0Ycctuhl9x0
FN0/VGpyr0PbtG9/AsPWpRUtra2qA8crSfPlwMUsPD/6vWtVyIc3KNalq4b0j6dl
+s+hPn5fhvXVad+mpX01F6DRvFO1Ta+tSsR/T3uqoDHdCBZQwCTHE5XW71bxNBs0
CTfBGt01VpYORb6XFsYwSCgx37LNbBtVkkAC7a0cyV8s48tztWOwRujI1j5oGHJl
2uOqfzxFiOJuYfMhTtx2A7bfFC7Bs3kZCoVSbvl5e0ga5RnldgE=
=y6iy
-----END PGP SIGNATURE-----

--iIOavGAISvUeFFLW--


--===============4148465039524555456==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4148465039524555456==--

