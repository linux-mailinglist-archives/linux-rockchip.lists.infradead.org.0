Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 551781C09E5
	for <lists+linux-rockchip@lfdr.de>; Fri,  1 May 2020 00:07:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=afrqHv1TSVNHOExOKg7eym2/JujjZGJ0P+R7qmmnNWw=; b=Na3BW+aze9oDcBldKP9rQTlVV
	4KCYRQVnGwHw90WbCSM7oWkI7hueFrZSpI+8bjyUcgDMdITOhylGtPGOgGLlVcwqLWiac6mwOZYy7
	Mx9ufmXJ1w69n/j7U/V8U2UqAkTGZrgIiqZUKYiq9/YjT7mKLBmIxc3oI/HiCmVxDo1DTYMDtWQHx
	1Mq9r+cWxTC1kNRiRzxXWmtV43XcIiCjynbCE6KFI+24OMr7pAhXtRmTaOs4M6hl6+C/jpCLxVaUJ
	gH4wyTZjsI501Z0+7k78IJppyb6n9yoANXR4PLfPizqQlUi/88MtZBxCVy8d5J3dowFWo9P3/rC9f
	eS/EavQnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUHKX-00043k-8y; Thu, 30 Apr 2020 22:06:53 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUHKT-00042R-I2
 for linux-rockchip@lists.infradead.org; Thu, 30 Apr 2020 22:06:52 +0000
Received: by mail-qt1-x844.google.com with SMTP id e17so6468588qtp.7
 for <linux-rockchip@lists.infradead.org>; Thu, 30 Apr 2020 15:06:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=3M51FFw1qgZn/HGqEUqbxSXrxISO0/8C9vIjfHkZHME=;
 b=JsVgtW9BLemTIi86ARudIl7TotoEdhwElb7ahyxPxzR0k4SYoeWnwhAmGij942q1wW
 batN0k3YpP/E2JJKPQ0yT4jTPTH7Sut+3O3sj8e4nuWmECR5VYN6WVp6byxEfiQFYFJi
 QEy/WkYMNyKcL1GAGX2KQHI6l5OtKEs1oJxpI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3M51FFw1qgZn/HGqEUqbxSXrxISO0/8C9vIjfHkZHME=;
 b=O1f8Vq5w5k0g9ybXLl9vnA+7RGyhzdKLHrQcMuCoZzPoGCdmUUqyvBofnUFTDQl6h1
 wNFZJbTXFWaDj26QBT/dcOWHzOLrQGzn1q7rIPssJR+Iren9GEixYQjgnfp+1g3FFsYr
 G0aqrsfT5LnNGGl5087AM20Ue3UrakS/hpgvbziBugT3S8pGkAWA9JCe08GOtenKfeta
 YBoWZ7guoEhAd/9kC1K3Iqmrbk2OyynU3yM7JLrBWWl7pbj037hociPn4HdawCUSMaYl
 xgMQegalNVOJqqh1gHOTU8t9bn4n1b0TTuJa1+iWAEDUHFk5g7S0kDIISlpCCg9lADOr
 YrGQ==
X-Gm-Message-State: AGi0PuaEwC4egDG7fICotCW6QHqyFwqjUHG9TCt9m2XR6Gkwlq5d3TWA
 kRkOi6AFzaR5X/G0cBF95K8OHA==
X-Google-Smtp-Source: APiQypLjJhRHBugH23OI26ESmJrFCYIwcDaTbR6PKeJYpdctnNqZwtBJ7pCO5BCTgPQBGs1vWTCh+g==
X-Received: by 2002:ac8:4e2c:: with SMTP id d12mr746254qtw.204.1588284408290; 
 Thu, 30 Apr 2020 15:06:48 -0700 (PDT)
Received: from bill-the-cat
 (2606-a000-1401-826f-b0c9-f05d-9676-99b1.inf6.spectrum.com.
 [2606:a000:1401:826f:b0c9:f05d:9676:99b1])
 by smtp.gmail.com with ESMTPSA id o67sm1229522qkc.2.2020.04.30.15.06.46
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 30 Apr 2020 15:06:46 -0700 (PDT)
Date: Thu, 30 Apr 2020 18:06:44 -0400
From: Tom Rini <trini@konsulko.com>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v2 1/8] iopoll: Add dealy to read poll
Message-ID: <20200430220644.GC4468@bill-the-cat>
References: <20200430070412.12499-1-jagan@amarulasolutions.com>
 <20200430070412.12499-2-jagan@amarulasolutions.com>
 <20200430144628.GU4468@bill-the-cat>
 <CAMty3ZA77GU+f=_J23m65=RwRY3L3bibqgdzZyLR_HBejfsoTg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMty3ZA77GU+f=_J23m65=RwRY3L3bibqgdzZyLR_HBejfsoTg@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_150649_603652_88B03482 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Patrick Wildt <patrick@blueri.se>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Simon Glass <sjg@chromium.org>, Kever Yang <kever.yang@rock-chips.com>,
 U-Boot-Denx <u-boot@lists.denx.de>, Suniel Mahesh <sunil@amarulasolutions.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: multipart/mixed; boundary="===============8421361628756751876=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============8421361628756751876==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5YKxbtAlDq2FnV+Q"
Content-Disposition: inline


--5YKxbtAlDq2FnV+Q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 01, 2020 at 02:33:17AM +0530, Jagan Teki wrote:
> On Thu, Apr 30, 2020 at 8:16 PM Tom Rini <trini@konsulko.com> wrote:
> >
> > On Thu, Apr 30, 2020 at 12:34:05PM +0530, Jagan Teki wrote:
> >
> > > Some drivers and other bsp code not only poll the
> > > register with timeout but also required to delay
> > > on each transaction.
> > >
> > > This patch add that requirement by adding sleep_us
> > > variable so-that read_poll_timeout now support
> > > delay as well.
> > >
> > > Cc: Tom Rini <trini@konsulko.com>
> > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> >
> > This (and 2/8) need to say what kernel commit you're taking this from,
> > thanks.
>=20
> Linux supports sleep_us at the beginning where read_poll_timeout
> supports, i.e. the reason I didn't add the sha1. If that works, I will
> add the same sha1 and apply via my tree (since it has some SPI changes
> dependency patch)?

Yes, I think that sounds right, thanks!

--=20
Tom

--5YKxbtAlDq2FnV+Q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAABCgAdFiEEGjx/cOCPqxcHgJu/FHw5/5Y0tywFAl6rS/QACgkQFHw5/5Y0
tyyMLQv/W889DXRmlyXPVfzhMERv1e0eY9cfXOV/ZpIJfPBOXojy7J8emAb/zEbj
G4U/+66r0VAtQIAn5ceFacDYGUVq0YE0MLAosv1GzJQib0+RSlCovr0OGcM7XS9a
9rfEOmScK6Ao5qhG1DrIHLuMiPgnOLaVSuC1yoooaezGN04oYsgEgDjZxLpJxkFt
zPcT8dw8HaqBh+JDhI9JuO6LxJUnrUXryuNk7YbwTEw+6DKcGPOuHYVzJTAmhy0b
foUVybqnUhtOoO24O3i2xNU80hj4f7R+VM17VCXnce9zXC3gP4xa55sA54qQ/1Al
cIifsKJw4fMwewIY5INy0oC+gJlETz+5trDrf7dycvIhbFapvDYP/RAcO52KL4Vv
fSt8oYCHeBHgpjXs+ofP6sD52iwHuaVds3KaqO72Y5C7WozTVDyxHvIO5AOSP127
ITY3zLD2zAPn04YIzDWn3l0DDQd8/Vb4R3szdHFaBE4Zy5a1hWNjKF8BdAV1Fjsx
0uaQWC79
=gJIO
-----END PGP SIGNATURE-----

--5YKxbtAlDq2FnV+Q--


--===============8421361628756751876==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8421361628756751876==--

