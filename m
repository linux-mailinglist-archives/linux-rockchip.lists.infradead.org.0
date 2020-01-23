Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2356146F4C
	for <lists+linux-rockchip@lfdr.de>; Thu, 23 Jan 2020 18:15:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NEZhxhStXD3nIeRzD0uVSS0/ZCwC+S6Ij5+6kzUc8ek=; b=T649/52V9Z3xJoblukhxUYVWf
	p9ZX6ZsCIfURZ5SyNP/tFfV72ByEWaeiYHOcNFqGxQpybv5ZQjHEmNUsNw2JqABMdyd8WpqT+Wsz4
	KCUyK6f/g3S5DrkFhM0ugpokwcPZfM7qfRdD7TQ0KwvxShHLxKdAc9TtkT0qkVQ23aUcBfXYDsquA
	AozHmeAxcgs7jM/HPYF4BoeaEtJnSfiSx6Q0DCKv7w+2vf7mO7GdWtSwv0paQm25loJOLx40awlh/
	Yf4aVxTPvW+Bk2gC9NF976z6XYjH93XBuEG/sWmMgd5a2LYMtv/EBumcftIwyLG8AnELp8e7o9fvM
	JYxFMystA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iug4T-0001Gn-Js; Thu, 23 Jan 2020 17:15:09 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iug4P-0000do-4f
 for linux-rockchip@lists.infradead.org; Thu, 23 Jan 2020 17:15:06 +0000
Received: by mail-yw1-xc41.google.com with SMTP id 10so1900413ywv.5
 for <linux-rockchip@lists.infradead.org>; Thu, 23 Jan 2020 09:15:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=rYaQfmIKrm0G5NYSv4X7Dq5F50XWxkhNFSifhhh7eXU=;
 b=HnjIeLbkzj6BKRfctOTA24+24Bu9PZvemCaaGGq1Aa7h+pOB3YMOSM3hSvz59AQB+f
 absyw5vNJY/orVf3aIDDutX70IFJuHWQLHgnHe49X77jKZuNCvHY9Ot8OzuEQFfsSEne
 Pd5MFVtHBais1wTpMXOzZSyGRyeuQX+2/paXs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rYaQfmIKrm0G5NYSv4X7Dq5F50XWxkhNFSifhhh7eXU=;
 b=ZylSZ6GILZeXry+TAY94EBqv+Ee0Wnjt3AerYPaEj9nHgN0kgaE2Ej9VMZeps+xUX2
 cjnGsET0IMAu+du0+6zqgEqrXQ3xAa3WCd4+QSWW2lzrCFXc4gcKkUA2qImWL4bqTBbH
 XuKNQ6uIn4KwRQKmqjASY4DcxyijmloEW6Z0r8Us+1kiIxNyASQkemAswpiklEklFZpD
 13JeGi5lz1fD6KkRzgRkRuCk4dzVytAx9Bkk8hWIGZhciOZ/VMpqhBJ+Z019dcT7D7VD
 9X6LLWLhLYbTaBmRJm1GM8ZTYoXDVeZzhzimYieTu7Y7IISGwK09I9k6XxohCzRsSC0f
 GzgQ==
X-Gm-Message-State: APjAAAX4KMrvNyvyW+6RFTl1vWnKy+/lGz92iph6I7r5TY2f5FUf3JT5
 8f6gfBQ8iNa8Z3DV1TkXE94pIw==
X-Google-Smtp-Source: APXvYqyLm2PLe1Ptbdiq0lZt+yrBzo+v2VYqq+1jBj5NChWeyfqsgYG38aMazV9c4vj7m4/27Z8ggg==
X-Received: by 2002:a81:1b54:: with SMTP id b81mr5400698ywb.110.1579799703997; 
 Thu, 23 Jan 2020 09:15:03 -0800 (PST)
Received: from bill-the-cat
 (2606-a000-1401-86dd-4d1b-b279-03ac-0199.inf6.spectrum.com.
 [2606:a000:1401:86dd:4d1b:b279:3ac:199])
 by smtp.gmail.com with ESMTPSA id k139sm642843ywe.97.2020.01.23.09.15.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 23 Jan 2020 09:15:03 -0800 (PST)
Date: Thu, 23 Jan 2020 12:15:00 -0500
From: Tom Rini <trini@konsulko.com>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH 02/11] distro_bootcmd: Add SF support
Message-ID: <20200123171500.GY26536@bill-the-cat>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-3-jagan@amarulasolutions.com>
 <20200120172240.GX8732@bill-the-cat>
 <8dddd74f-7b17-a614-48ab-aea0bc9148db@csgraf.de>
 <CAMty3ZAq+aDMuEKGYk9UyTS4Z4=TgtNcKRDtiBC-=mqRWUWAyA@mail.gmail.com>
 <20200123170301.GX26536@bill-the-cat>
 <CAMty3ZC6j+fo4c28V05OL7dn0VSWMoKdngneTBBSw1n_LQ+3bQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMty3ZC6j+fo4c28V05OL7dn0VSWMoKdngneTBBSw1n_LQ+3bQ@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_091505_199542_303E0275 
X-CRM114-Status: GOOD (  23.63  )
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
Content-Type: multipart/mixed; boundary="===============6116517896657263144=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============6116517896657263144==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3rzwkXnKuCXxoL5m"
Content-Disposition: inline


--3rzwkXnKuCXxoL5m
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 23, 2020 at 10:41:15PM +0530, Jagan Teki wrote:
> On Thu, Jan 23, 2020 at 10:33 PM Tom Rini <trini@konsulko.com> wrote:
> >
> > On Thu, Jan 23, 2020 at 10:25:50PM +0530, Jagan Teki wrote:
> > > On Mon, Jan 20, 2020 at 11:10 PM Alexander Graf <agraf@csgraf.de> wro=
te:
> > > >
> > > >
> > > > On 20.01.20 18:22, Tom Rini wrote:
> > > > > +A few people that may have insight to my question
> > > > >
> > > > > On Sat, Dec 21, 2019 at 01:24:31PM +0530, Jagan Teki wrote:
> > > > >
> > > > >> Add distro boot command support for SPI flash.
> > > > >>
> > > > >> This distro boot will read the boot script at specific
> > > > >> location at the flash and start sourcing the same.
> > > > >>
> > > > >> The common macro like BOOTENV_SHARED_FLASH would help
> > > > >> to extend the support for nand flash in future.
> > > > >>
> > > > >> Cc: Tom Rini <trini@konsulko.com>
> > > > >> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > > > > What distro is this for?  My concern here is that hundreds of boa=
rds
> > > > > (literally) grow by a few hundred bytes to add in this bit of add=
itional
> > > > > default logic.  That's not a big problem if distributions are now=
 going
> > > > > to be using SPI flash as where they're programming in their boots=
cript.
> > > > > But, who is doing that?  Thanks!
> > > >
> > > >
> > > > I am not aware of any "distro" that puts a U-Boot script at offset =
0 of
> > > > the SPI Flash.
> > > >
> > > > Traditionally, SPI Flash boot setups were always very hand crafted -
> > > > exactly the opposite of what distro boot is for. That said, I think
> > > > supporting SPI Flash boot for rk3399 is great! Albeit I would perso=
nally
> > > > only store U-Boot and the environment on SPI, not the target OS.
> > > >
> > > > Jagan, is putting a U-Boot script on the SPI Flash something you th=
ought
> > > > of or something that the rk3399 reference board already does? If it=
's
> > > > the latter, maybe you could add it as a board custom boot function?
> > >
> > > Yes it would be later that points to. rk3399 has SPI flash layout and
> > > out of which one of offset(script_offset_f=3D0xffe000 from
> > > include/configs/rk3399_common.h) stored the programming script.
> >
> > So I'm not sure why we're adding distro boot support to SPI flash.  What
> > is the reference platform storing there exactly?  Thanks!
>=20
> I'm not sure I understand the question? we have rk3399 SBC's that boot
> from SPI and have feasibility to run distro boot using programming
> script store in flash offset like boot.scr does for MMC.

OK, and what distro(s) today are doing that?  I'm not happy with this
patch as it's growing hundreds (literally) of boards in size and I'd
like to know what is leveraging this functionality today, or is going to
be as soon as it's upstream and widely available.  Thanks!

--=20
Tom

--3rzwkXnKuCXxoL5m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6HLbQJwaaH776GM2h/n2NdMddlIFAl4p1JEACgkQh/n2NdMd
dlJtSRAAo3ebclzKp7jSqZbAYP7IVFuQS7oVex2hcs4h6V8Q/y0qIa3qGchoCy2M
iGveuJ2ogrbeSqjoh2IvoUF8CcYm0nKtXt8QlR3vQEDUpiaueL9Xmc3Qvd8Tr8go
cT2zbfpt0CGraSr6OqRxefq999/1w3e9bRu0m6Ag4vv7f/qNG7SZ1q57vOz0uCUx
2g9sLq9QKR7DPj9KIH2rQjCvGxRkde8Wt5uCBrVYZaCYrq6qQujZonAcv59C9S+c
C6Vq2RN9qPpTmfQ5Q7O1s+ytaL/8LqV6YX+x6vQT8y9yeUXH8083mvvyKO78WlQl
9cJqMSzCR4Wbz9vZu5N9e8oJmm/4QY4tzPO21vzVL1hxkngegrb2DyTKbH0YQihE
iqAWtSCIBtmVWeLUdOOb+SAg87o0HOVEwdQcZKd9GKBAWTxSmMiju2YF6fRI1Bvn
36s/M4p+iaSJ7hYOBDWR7IGgHM5R9x8th+nvoIXW7/WRvnC7hM1kvsv6hxZ6wI9U
HFncdHg+3DGOh/cZWXASOETtrzPuPv4TgmxUjUBwqK+HvgApbSB4Jh4yxWGttpiN
d3uPnoBJzLk0yMo2QP5oYB0V+S0rSC20fhnE2CTWScjQgNyeC6Kk9qJw1JqZ9bZj
J9soNfRnyrqoCLuYG928HJalAVO6rWJoJDyhlzaHeiXH20Ngg4E=
=FDo3
-----END PGP SIGNATURE-----

--3rzwkXnKuCXxoL5m--


--===============6116517896657263144==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6116517896657263144==--

