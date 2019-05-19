Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BFB422658
	for <lists+linux-rockchip@lfdr.de>; Sun, 19 May 2019 11:07:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ch5g87IP8P+ST2uLDu4DKSN9c4rKKt2Ac4M2/qIqJaw=; b=iXrqssVqUfsAGDfUHAHPyTytW
	d4ZaCPKEU+3S3Z/C3IHLacqVHh+AP/vwf5yZBRhn+sN2jgVfA9IsUlgB26Hxl1DKcGQm9KK2HJJh/
	3cLeHys5XFzIoAXd69kk5/eTKrOHz5WHA90ioRWx3C8bNYiqFrt046rEz+1RDoSZqVdN/g4rCuJof
	hM8pjNMANGY1gJuskBvTp2lyWgl8Rm1HfXaMS7GJX4ngqF0p+f6uu8dhrXOjVvQK1qRcr58qzbOxT
	3lt1PTJq0upcSzzYYt7On3DD2M9k//AcSWmZZvPpMhoFeZpSnNBb6hLa3hoyXJ4nHLvAdrXkxWuRq
	+HaepuNwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSHmP-00006N-Ce; Sun, 19 May 2019 09:06:53 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSHmL-00005g-KK
 for linux-rockchip@lists.infradead.org; Sun, 19 May 2019 09:06:51 +0000
Received: from localhost (p5486CF3F.dip0.t-ipconnect.de [84.134.207.63])
 by pokefinder.org (Postfix) with ESMTPSA id AA86B2C36A9;
 Sun, 19 May 2019 11:06:42 +0200 (CEST)
Date: Sun, 19 May 2019 11:06:42 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH 2/3] mmc: core: API for temporarily disabling
 auto-retuning due to errors
Message-ID: <20190519090642.GA2279@kunai>
References: <20190517225420.176893-1-dianders@chromium.org>
 <20190517225420.176893-3-dianders@chromium.org>
MIME-Version: 1.0
In-Reply-To: <20190517225420.176893-3-dianders@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_020649_816128_C057065F 
X-CRM114-Status: UNSURE (   8.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Madhan Mohan R <madhanmohan.r@cypress.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, Martin Hicks <mort@bork.org>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Double Lo <double.lo@cypress.com>, linux-kernel@vger.kernel.org,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, briannorris@chromium.org,
 linux-mmc@vger.kernel.org, Arend van Spriel <arend.vanspriel@broadcom.com>,
 Adrian Hunter <adrian.hunter@intel.com>, linux-rockchip@lists.infradead.org,
 Avri Altman <avri.altman@wdc.com>, mka@chromium.org,
 Ritesh Harjani <riteshh@codeaurora.org>, Wright Feng <wright.feng@cypress.com>,
 Jiong Wu <lohengrin1024@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: multipart/mixed; boundary="===============4212091236098525067=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============4212091236098525067==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="envbJBWh7q8WU6mo"
Content-Disposition: inline


--envbJBWh7q8WU6mo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


> Let's add an API that the SDIO card drivers can call that will
> temporarily disable the auto-tuning functionality.  Then we can add a
> call to this in the Broadcom WiFi driver and any other driver that
> might have similar needs.

Can't you fix the WiFi driver to return something else than -EILSEQ
before calling mmc_request_done() to skip the retuning?


--envbJBWh7q8WU6mo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAlzhHJ4ACgkQFA3kzBSg
KbbeARAAjRwuYMVRg9/KiLaxQrOgOKoCgflbt6sCKz+IWQYwpHqy/NMeXxogeaZp
y/kpClhWulThbXbH5kiV59qh55aSNFsNM0yA+IZFwbye0fKtXEtkJIjBVAOfQDdz
PY2Jx2nNSJWWJeUzcfbW1LwvygH2a3Hon2p1/UubaqYvLPoZPCZmwVC/1LFdJPPN
fv2uN5ukpVcfmNBSbQUUaoMPZp6oeuAxHa1+58aQzpCMo3h329ERrcgkDDcw4WP9
K20azhSC961CnA7Syj84BsmlMnARaCyZ9S8atXXCtX6R5hbgUXLkBIcqtbfB+npd
j0sTjbHGDh7eaQ0l14Xh3FVSeHZiepGlupQ1wW6HuHkR1Be1mL6nEdCvSqT0mNHf
TsHkuq9Loh/95/eInWqtpGVM2XOpwDkN8czDOwwiO4ejRHaIEaoZX6FWeV80lDnX
emtFSLifF0VaH5GqM4HwOu3iXFBxpuj6zwnADaxYZqwnFNyi0+nvhp9W2tHyaLey
fcB6sw/i+2Knu5k2JnaSHZutc2hqY6lhoLaJyjQKMfk2fxRBmdimnt3u6bNV9U+N
Qo4IQM5w5wgRGUbUAcfo9/aLXnEdVbEuSy6QJdLgp7pZUBaIj4c5U7XROP6RQRFJ
6XB4ckAS0xBjDQ/mFNM/W2+Keu+9dcqNtDrAEn3vchAKecUJdO0=
=k7qP
-----END PGP SIGNATURE-----

--envbJBWh7q8WU6mo--


--===============4212091236098525067==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4212091236098525067==--

