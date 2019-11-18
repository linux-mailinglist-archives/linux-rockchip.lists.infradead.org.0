Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1220B100B95
	for <lists+linux-rockchip@lfdr.de>; Mon, 18 Nov 2019 19:39:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=seLLta2NIrAnlCxf4f/C1sTRzTe/UUkNo+bzI+Xpgxs=; b=nFrsAKKqxzBbbbjyb1RaGeyje
	S3odg9pWICviHNEN171B5zjOLWnwHKuDfek1XTmvjMq8k9rmdJCZskKShYJRYH2yv5TgA+2+R3jbt
	aeMWVbMT6C6h7pzaTjvB1GjTCf8cPVCD6YJJ8K1KkrLQQXKEeOinPf95nROUvj3CMxm8qlSueCskf
	FZTlY9Z9XRIk5+eMJtYhrQAeOscX+y1GrKIdM8Wx5B9XpeSLj+PDkaARDr64xznnbhajfaQ2qflWg
	/Fgk01soDa/8Y1K9MURCcbIzcA9w+Qbwbie+WwPZ4PitgdoWOo1ayAa4twuIcfG+ZAQdNU1JhAxFz
	qYwttF+4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWlvb-0004uq-SI; Mon, 18 Nov 2019 18:39:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWlvQ-0004mS-Bh; Mon, 18 Nov 2019 18:39:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A32621FB;
 Mon, 18 Nov 2019 10:38:58 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 112A33F703;
 Mon, 18 Nov 2019 10:38:57 -0800 (PST)
Date: Mon, 18 Nov 2019 18:38:56 +0000
From: Mark Brown <broonie@kernel.org>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: Re: [PATCH 2/2] PCI: rockchip: Simplify optional regulator handling
Message-ID: <20191118183856.GB43585@sirena.org.uk>
References: <20191118115930.GC9761@sirena.org.uk>
 <20191118142428.GA27459@google.com>
 <20191118181538.GA2261@e121166-lin.cambridge.arm.com>
MIME-Version: 1.0
In-Reply-To: <20191118181538.GA2261@e121166-lin.cambridge.arm.com>
X-Cookie: Are we live or on tape?
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_103900_445160_A25B4891 
X-CRM114-Status: GOOD (  11.63  )
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
Cc: heiko@sntech.de, linux-pci@vger.kernel.org, shawn.lin@rock-chips.com,
 lgirdwood@gmail.com, linux-rockchip@lists.infradead.org,
 Bjorn Helgaas <helgaas@kernel.org>, andrew.murray@arm.com,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5082504892841043856=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============5082504892841043856==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="KFztAG8eRSV9hGtP"
Content-Disposition: inline


--KFztAG8eRSV9hGtP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Nov 18, 2019 at 06:15:38PM +0000, Lorenzo Pieralisi wrote:
> On Mon, Nov 18, 2019 at 08:24:28AM -0600, Bjorn Helgaas wrote:

> > I don't know anything about the regulator API, but the fact that NULL
> > can be a valid regulator is itself a little surprising :)

regulator_get() has always been documented as returning a valid
regulator or an ERR_PTR().

> if (rockchip->vpcie3v3 == NULL) is true the driver would currently
> panic the kernel AFAICS.

We don't currently use this, it's just something we could do.

> Also, by making NULL a valid regulator, it means that regulators
> (ie pointers) with default values are valid whether we call
> devm_regulator_get* or not. I understand this patch can be dropped
> but that per-se does not make this driver code any more robust AFAICS.

That's one reason we've not done this.

--KFztAG8eRSV9hGtP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl3S5T8ACgkQJNaLcl1U
h9DFqQf/cTutH2x122zo7UHe+cKZ/hNpf/F5YBX4bqzxzmvQEZ47zT6xkwjxPxHr
vFjJW5qbKE/jVgtWX0e2B3ly0K1ekarqJLQ3y19TAO7bkJ16jIMp31fh6IK0HfWC
upzwAVBEH+dEpBNlaa1RFVvaDJBlL/MGEi+VhNqOae/Pi4HrgOhmCgCenG+ux+Wp
Bgk5JvIKqef7lkKvMETRkIVgsn6YA0uVHqQtnjx53Gz3V8KlAjWF5MEQ2vlIUHPt
VQ/a+ApxM2cBGsmcipwo2i516dDPOyS3WJCujf2AnVJtNjU6FX3kH7+C0TTL1Rhp
Nqk5/0Fy9gm8n8qwXsas38Ysz5XYEw==
=vY9F
-----END PGP SIGNATURE-----

--KFztAG8eRSV9hGtP--


--===============5082504892841043856==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5082504892841043856==--

