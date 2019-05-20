Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BD9E22F58
	for <lists+linux-rockchip@lfdr.de>; Mon, 20 May 2019 10:52:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3cWyu9jLpz2w18ToQvN9yRFnm6OQwLLlIYSNpVf8s9k=; b=fNvboef2+c9N8kHujQsl8WPl3
	xc/vrBEjf4H4TF92iKoS0O8MxujFz/cksMHF4Oyx6yEOqEI/YcqFHu66lk47Myw3yAH2OGiBhCRGE
	yuzXwm5DgKFwY08CqI2rXr89Tmq9rf7D6BNSwbABL6ZhqIoYQK6VSzQfBvGuh2WZEoK1bkD3Tj4BN
	Dh5dn2FJE5s8lNZ9BuhUaXIPd1CmvjwYq/XXDG41GK0/LA9VlDJO5FCOATcGoEPWnchKm5T2JIYoX
	6S9zxnXstl3ly2yFHSU7OHOBvqTDoG/cLNB9Xiv+FWoXDdM+EVpanVAH7ZWtgLzLVDmTYON80prTJ
	CIQhda/yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSe1f-0002xV-Ij; Mon, 20 May 2019 08:52:07 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSe1b-0002x8-QW
 for linux-rockchip@lists.infradead.org; Mon, 20 May 2019 08:52:05 +0000
Received: from localhost (p54B333DA.dip0.t-ipconnect.de [84.179.51.218])
 by pokefinder.org (Postfix) with ESMTPSA id 43F282C2761;
 Mon, 20 May 2019 10:52:02 +0200 (CEST)
Date: Mon, 20 May 2019 10:52:01 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Arend Van Spriel <arend.vanspriel@broadcom.com>
Subject: Re: [PATCH 2/3] mmc: core: API for temporarily disabling
 auto-retuning due to errors
Message-ID: <20190520085201.GA1021@kunai>
References: <20190517225420.176893-1-dianders@chromium.org>
 <20190517225420.176893-3-dianders@chromium.org>
 <20190519090642.GA2279@kunai>
 <36cae1d3-f11c-3c71-3f04-23fdc74f8866@broadcom.com>
MIME-Version: 1.0
In-Reply-To: <36cae1d3-f11c-3c71-3f04-23fdc74f8866@broadcom.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_015204_010054_2190C4EF 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-kernel@vger.kernel.org,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, briannorris@chromium.org,
 linux-mmc@vger.kernel.org, Double Lo <double.lo@cypress.com>,
 Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 Avri Altman <avri.altman@wdc.com>, mka@chromium.org,
 Ritesh Harjani <riteshh@codeaurora.org>, Wright Feng <wright.feng@cypress.com>,
 Jiong Wu <lohengrin1024@gmail.com>, Adrian Hunter <adrian.hunter@intel.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: multipart/mixed; boundary="===============5293278781399190483=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============5293278781399190483==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sdtB3X0nJg68CQEu"
Content-Disposition: inline


--sdtB3X0nJg68CQEu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 20, 2019 at 10:46:19AM +0200, Arend Van Spriel wrote:
> On 5/19/2019 11:06 AM, Wolfram Sang wrote:
> >=20
> > > Let's add an API that the SDIO card drivers can call that will
> > > temporarily disable the auto-tuning functionality.  Then we can add a
> > > call to this in the Broadcom WiFi driver and any other driver that
> > > might have similar needs.
> >=20
> > Can't you fix the WiFi driver to return something else than -EILSEQ
> > before calling mmc_request_done() to skip the retuning?
>=20
> Not really. mmc_request_done() is for the host controller driver so the w=
ifi
> driver is not involved.

Uh, right. Brown paper bag, please...


--sdtB3X0nJg68CQEu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAlziaq0ACgkQFA3kzBSg
KbaQVA//WXYFC+BIrlY0Pul+9dGBD8PAFC8f7fZUdwUGDjSC/CI1SfSMkOojpbLX
MQvDlzKvpYj/rS3+xcrNQjgRELPn9DdKWXUEU6CZkgo+xs/cbms1H9fg65UwkVk3
VARN5T2AgnFidWfXrxnD+LxRudQnj6LQqifhfUq6I0X+CfQ7AcDH80gC7FdPCwO5
RM2gC+NNczRd3zxKKWQNXLvuY+yHzx71kHc5+gd5GVRqzsLYwgYQWj1wd6hpUuqY
Ur+m6uUUoQo66teAA+FF+injciq6DJhwqZwa1pvkw7/hXorBArzBbHo3EAqch/hA
349urJNcPBhbN+FCBzjhN+3XpoJATd4DM69v157zYHd2I1QFOiDqBukksD3OBuSk
BRRfrSO2fcTVraEVTtTSgsl8e9eHvGP5hkpwl3GGq+1YvoC5/jOJAXwh17g4vQGD
/wIPqA7a2Edd3Ei3uVjdquqBmmGGDQXADgE+fS9U/gbq/632tXdJ8c25eFUBlN8N
KekuqSINDVvdEHnuy1yKTf7LU0q2hZjifSTU9in3ynzFZSe7ZghCrro/HBCeKBF3
lPCZ2Qf3GlexViNy5/FhvNXPoWQY1sYh0fWMYzOuKm2VEdznrpt5oTtasTapIzy6
9vf04EbfsMnAmHTPi8Hteo+jvczd+rYgFGg6hY/t8FiPtKgWwfs=
=zF+7
-----END PGP SIGNATURE-----

--sdtB3X0nJg68CQEu--


--===============5293278781399190483==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5293278781399190483==--

