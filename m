Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3723146F12
	for <lists+linux-rockchip@lfdr.de>; Thu, 23 Jan 2020 18:03:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QkDSIHXomSlnipcIKtlX2z4j0ZRp3/XkGr5ST+Uv1dA=; b=cb/EJt7+muOGlYLOKLAAK6OJm
	zEpjL3/x0SLvsOfREoLCBFB2hyAz+u4XRO2eIrdKyL4lzge9N3z9oxVdcStQZhl4WcLXzkbsBDelY
	gQT6hYJ0d4JnP7kA+w0Qjn6kWjiitwragokQ6ivw8qrv822dVgFNG3RIyZeqM+DFvykDOjiwAxqFP
	ZyFD0u+KoQ8Q0MuidjV7p8cMq0VZWVLEd+Apq9SfbjS6ksKKnUYI+dmBoz+96D9m6Lxh2/udpN95A
	G75fg06cmfOB8kwAxhkjpMS+lOY0rAP7KXyEgwr47fBYIe9PxwE+lW3nHrOCVWY2Iz+8fVqZhmR05
	vVHrA7Wlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iufsr-0003Cl-CL; Thu, 23 Jan 2020 17:03:09 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iufsn-0003Be-O8
 for linux-rockchip@lists.infradead.org; Thu, 23 Jan 2020 17:03:07 +0000
Received: by mail-yb1-xb43.google.com with SMTP id k15so1967325ybd.10
 for <linux-rockchip@lists.infradead.org>; Thu, 23 Jan 2020 09:03:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Bv4Eqb7gDhzO8YHfL3TqdO5LbyM+xHJ10qro6f6jGLA=;
 b=UiEUjOVNmbUcZ1kHMaXj7LOZPg+BfTVXbPgCID/fisugr2f1dCTVL18lrHjMBi7g/P
 azc7UOSKa+B1gVeHul0vFXrA+hv5f24f0PKQrEMIyNAMWzl5W6sZRm+kyKLLrNGXzkbH
 h8I9y1bDBnTTbNMAXsRGc4dPg5rycPDxyr+nI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Bv4Eqb7gDhzO8YHfL3TqdO5LbyM+xHJ10qro6f6jGLA=;
 b=HPrJVe0z5MjOPgRzV8b2NrYTfj43PGnoIPiJGijP3OLe+fpnZPn3vOTT4n7svC7adI
 6a7ikbajd7VG4YqOwpOqfZCcQihOBjKW8E8ZyhzAS3tZKDQsbRoJsiq7xiQn7qWCSAwL
 ODGWGUcsqN59Ig2fWl10UumQ7m9bHztDXjYtx4JypiQBIlaL1/sz7reFfZ0y4dEt9b/m
 mqi5Oo7ArxApiZ3svrYTe/HVwZv+xvPUXHEWW0XnpXhw7+ipDXSZDPqfX1Nsk5je3PGB
 ob6Ef0KxCi76Kj9THTc3eJ+/SD8STn/HNjXHcYnPjwHS3XR4NeX87NtFhXoMFx8zNfKW
 +zTw==
X-Gm-Message-State: APjAAAUPZ4IH+19k5FLugGEOlYAFzXaxel8aQ+gFB/YD+LPS6W1g5V/4
 gXK0MfnzW3T1xgI++Okl3THPAA==
X-Google-Smtp-Source: APXvYqxP71X1vJdKgP8D4Uex1P8cbDteQeSoUUReiyg4nHAJwAc+0KVHvY22G6PyDXDF0hkmVrJygQ==
X-Received: by 2002:a5b:8:: with SMTP id a8mr11725148ybp.208.1579798984299;
 Thu, 23 Jan 2020 09:03:04 -0800 (PST)
Received: from bill-the-cat
 (2606-a000-1401-86dd-4d1b-b279-03ac-0199.inf6.spectrum.com.
 [2606:a000:1401:86dd:4d1b:b279:3ac:199])
 by smtp.gmail.com with ESMTPSA id k5sm1050718ywa.80.2020.01.23.09.03.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 23 Jan 2020 09:03:03 -0800 (PST)
Date: Thu, 23 Jan 2020 12:03:01 -0500
From: Tom Rini <trini@konsulko.com>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH 02/11] distro_bootcmd: Add SF support
Message-ID: <20200123170301.GX26536@bill-the-cat>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-3-jagan@amarulasolutions.com>
 <20200120172240.GX8732@bill-the-cat>
 <8dddd74f-7b17-a614-48ab-aea0bc9148db@csgraf.de>
 <CAMty3ZAq+aDMuEKGYk9UyTS4Z4=TgtNcKRDtiBC-=mqRWUWAyA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMty3ZAq+aDMuEKGYk9UyTS4Z4=TgtNcKRDtiBC-=mqRWUWAyA@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_090305_801354_3CA9EB2F 
X-CRM114-Status: GOOD (  19.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b43 listed in]
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
Content-Type: multipart/mixed; boundary="===============5319046884476548140=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============5319046884476548140==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cxfMsoqvp1jUizWj"
Content-Disposition: inline


--cxfMsoqvp1jUizWj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 23, 2020 at 10:25:50PM +0530, Jagan Teki wrote:
> On Mon, Jan 20, 2020 at 11:10 PM Alexander Graf <agraf@csgraf.de> wrote:
> >
> >
> > On 20.01.20 18:22, Tom Rini wrote:
> > > +A few people that may have insight to my question
> > >
> > > On Sat, Dec 21, 2019 at 01:24:31PM +0530, Jagan Teki wrote:
> > >
> > >> Add distro boot command support for SPI flash.
> > >>
> > >> This distro boot will read the boot script at specific
> > >> location at the flash and start sourcing the same.
> > >>
> > >> The common macro like BOOTENV_SHARED_FLASH would help
> > >> to extend the support for nand flash in future.
> > >>
> > >> Cc: Tom Rini <trini@konsulko.com>
> > >> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > > What distro is this for?  My concern here is that hundreds of boards
> > > (literally) grow by a few hundred bytes to add in this bit of additio=
nal
> > > default logic.  That's not a big problem if distributions are now goi=
ng
> > > to be using SPI flash as where they're programming in their bootscrip=
t.
> > > But, who is doing that?  Thanks!
> >
> >
> > I am not aware of any "distro" that puts a U-Boot script at offset 0 of
> > the SPI Flash.
> >
> > Traditionally, SPI Flash boot setups were always very hand crafted -
> > exactly the opposite of what distro boot is for. That said, I think
> > supporting SPI Flash boot for rk3399 is great! Albeit I would personally
> > only store U-Boot and the environment on SPI, not the target OS.
> >
> > Jagan, is putting a U-Boot script on the SPI Flash something you thought
> > of or something that the rk3399 reference board already does? If it's
> > the latter, maybe you could add it as a board custom boot function?
>=20
> Yes it would be later that points to. rk3399 has SPI flash layout and
> out of which one of offset(script_offset_f=3D0xffe000 from
> include/configs/rk3399_common.h) stored the programming script.

So I'm not sure why we're adding distro boot support to SPI flash.  What
is the reference platform storing there exactly?  Thanks!

--=20
Tom

--cxfMsoqvp1jUizWj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6HLbQJwaaH776GM2h/n2NdMddlIFAl4p0b4ACgkQh/n2NdMd
dlIxeA/7BF5iuPhR9EtbXGIG77zygutE+fEj9UXANy3IP9B53y5EIbkgckKS2fR8
T+ZJJiFBEyZsc9bDubxeWfwlXF84yP98Nce/MKeoF7EI9Z9EPsGaZKZ2Mgd1CVsi
LfnFWdEvr8n0yhz2iShZTp7Ojgsm9hWMFonwo25iRvOjyBmzVVoQ0oe7AraqJEz0
HdmIhGuQC2Ob3K9dcy09JdGS3TT+SgJNr5APWcHCuP6nKIJqUGRocjH0ItM0LbO2
zb3hdB5jKyO7bKPDYvo6FjMRt9EJ6ZtRZBIvNOqeR7R1I7FBHFlZ2SsJuVN0xCXu
5lGRRFZIleed4JkFCMwdYcx+of+uuucp9onxMmykDjbYY8n2ACaep/m7O+MFVHer
xN7U+yH6A2pRganBGLcYZcTiV50X37xIgFtoYLRNgKNab/0hUNhltEjhdGmKk61b
5Alf5UOqsSXqAoJxwHnM8LPunBaR5rsLgRDKRbmmFdLk6smQAzMY4ykcEk9VK77s
b5U0UshdpLUr37MLWY8Wps6qUBAvI2IyWIdPvVlXRvOdgGHecRiPlY6tguswJKvQ
TjWnKocMimWtw8sQpycM/VOr38kjkcth+beLEcacWQURIREgAET9GyoHiA3sl9QB
yzKKj29esuS4EJkVdtcW+ex0/GtfyCxtg/Fj/SG19lAOKulOilg=
=OpTr
-----END PGP SIGNATURE-----

--cxfMsoqvp1jUizWj--


--===============5319046884476548140==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5319046884476548140==--

