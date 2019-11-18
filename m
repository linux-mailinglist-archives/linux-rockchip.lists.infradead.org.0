Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D612100550
	for <lists+linux-rockchip@lfdr.de>; Mon, 18 Nov 2019 13:07:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1W8OxzTkmTXGdHo5tHgy2axJgkPRULupptsUwOIHtQg=; b=jOzTmRpmocDJQEloAK7hfrWm1
	t8vurieLnzeXWvdawvKExsraIsG37Jo2ctmBTN+J7TywxT/P2mCS91+IoYKINeQ1gK2mg5drRbuZG
	QgzRch1kSwRAAV+wjQDHYHuy7vv9F6XssNeuiwSa3WM3wt7iN3orWrAM/1Ij4O3fG9pN7ySems4iD
	C0NIZLP9MSWZ+2m7tpZcSXRjs0x4RdO39dGPgZ1B2/xeP9y4sI38nfFhJLcG9Q9hA9bxlBQoGYU21
	mHSfY4pjcXobcYxlbdu6LpQgvIxXotuQSuQ5oiIasvoOz1UQaaZzmrBxx2RI/Xnv8ysosgDKySoRd
	9Yx84C8+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWfoN-0007IM-KJ; Mon, 18 Nov 2019 12:07:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWfnt-0006r5-GD; Mon, 18 Nov 2019 12:06:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9F6D11FB;
 Mon, 18 Nov 2019 03:59:32 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0D2553F6C4;
 Mon, 18 Nov 2019 03:59:31 -0800 (PST)
Date: Mon, 18 Nov 2019 11:59:30 +0000
From: Mark Brown <broonie@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 2/2] PCI: rockchip: Simplify optional regulator handling
Message-ID: <20191118115930.GC9761@sirena.org.uk>
References: <1eebc002101931012d337cda23d18f85b0326361.1573908530.git.robin.murphy@arm.com>
 <347bc3ef8399577e4cef3fdbf3af34d20b4ad27e.1573908530.git.robin.murphy@arm.com>
MIME-Version: 1.0
In-Reply-To: <347bc3ef8399577e4cef3fdbf3af34d20b4ad27e.1573908530.git.robin.murphy@arm.com>
X-Cookie: no maintenance:
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_040649_668680_366EEAE6 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: lorenzo.pieralisi@arm.com, heiko@sntech.de, linux-pci@vger.kernel.org,
 shawn.lin@rock-chips.com, lgirdwood@gmail.com,
 linux-rockchip@lists.infradead.org, bhelgaas@google.com, andrew.murray@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7778804747406677484=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============7778804747406677484==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="DSayHWYpDlRfCAAQ"
Content-Disposition: inline


--DSayHWYpDlRfCAAQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Nov 16, 2019 at 12:54:20PM +0000, Robin Murphy wrote:
> Null checks are both cheaper and more readable than having !IS_ERR()
> splattered everywhere.

> -	if (IS_ERR(rockchip->vpcie3v3))
> +	if (!rockchip->vpcie3v3)
>  		return;
> =20
>  	/*
> @@ -611,6 +611,7 @@ static int rockchip_pcie_parse_host_dt(struct rockchi=
p_pcie *rockchip)
>  		if (PTR_ERR(rockchip->vpcie12v) !=3D -ENODEV)
>  			return PTR_ERR(rockchip->vpcie12v);
>  		dev_info(dev, "no vpcie12v regulator found\n");
> +		rockchip->vpcie12v =3D NULL;

According to the API NULL is a valid regulator.  We don't currently
actually do this but it's storing up surprises if you treat it as
invalid.

--DSayHWYpDlRfCAAQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl3Sh6EACgkQJNaLcl1U
h9AOkgf/VTgP3xuhrmrWsbUIyqn+9NRUQlo2cBfiCB08Dqwn+Nyoeb6LLY0SnG6R
ezJOmBDiE/Ih8trc+IRq/nAgaM620I3ZLeodmwtndxikXe2QEl59zkpmiY3JQDlG
prOhuT1YC88FD5fPT1bmSxJyRpLwZ/dI4fP0SwuGn7sYXdv0285guwMhP80Kjn9p
Z8Z5x2AG7D41r8QMatZ0q0/W2rma7jdcE4J7yllyxDOHA8BqMX8GQs3UGohFU1GR
9bs8wM7zhZYoWS7YCuRmytgh85YUV1i/iM0OqGhzni4/ir6jQ89uZA4/KEk5S/MO
OkxQcqTDVXdu97bEOyC3ofVQiby50w==
=OHJP
-----END PGP SIGNATURE-----

--DSayHWYpDlRfCAAQ--


--===============7778804747406677484==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7778804747406677484==--

