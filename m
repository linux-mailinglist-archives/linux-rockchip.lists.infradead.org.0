Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25A37157CE3
	for <lists+linux-rockchip@lfdr.de>; Mon, 10 Feb 2020 14:57:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+5/466T+2R2vE3Uw3MuivMeMws3y+TYEwf0JgLVg03I=; b=q9EQLJ/rZtuUC6bIgt2UonXc/
	RqRAaS77QxgSq+QMrB1iH0o6UdhQhg6mpy8UmOds2hs/2VEIcxbJJXKTtjmmXPY3Kob5n/QFbsezc
	gkhjmoQ85s0hlVWwYMBLRiFhotWmcAunPOMGBWOvCvu7XD7q+af/LLV+55DM5VeK68EAcWDncCFJT
	mzAcIoozpdu4sJ7ASFkgh7F1AQqqQThlMamsB+4JgSr/804vNzGx6d7VzRNc7ps364VzphRWSN8pa
	or1Ad9ld0iqt4emFm5k+EAY0kFwhTumQUf7D16GUf5FBM4jdiBMHfVPRdVorVF02i76aTEa+qq9A4
	NitTUU/Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j19YW-0005Xz-I3; Mon, 10 Feb 2020 13:56:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j19YN-0005QA-4t; Mon, 10 Feb 2020 13:56:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 863881FB;
 Mon, 10 Feb 2020 05:56:46 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0A80B3F68E;
 Mon, 10 Feb 2020 05:56:45 -0800 (PST)
Date: Mon, 10 Feb 2020 13:56:44 +0000
From: Mark Brown <broonie@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v2 2/3] ASoC: rockchip: Make RK3328 GPIO_MUTE control
 explicit
Message-ID: <20200210135644.GL7685@sirena.org.uk>
References: <cover.1580950046.git.robin.murphy@arm.com>
 <29a846da33c02df64eca62b5fa0f3884652f788f.1580950046.git.robin.murphy@arm.com>
 <20200206114606.GM3897@sirena.org.uk>
 <ad2c941a-9724-510e-959f-3cca3cab1dc2@arm.com>
 <20200206135718.GQ3897@sirena.org.uk>
 <CAMdYzYqTEnG_Q-8SvO2R6PeaPXQ3VBKu6iVYhYvb=wK7tT7c3A@mail.gmail.com>
 <bca13994-a8b1-fa21-fdf0-9f362d693f39@arm.com>
MIME-Version: 1.0
In-Reply-To: <bca13994-a8b1-fa21-fdf0-9f362d693f39@arm.com>
X-Cookie: Avoid gunfire in the bathroom tonight.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_055647_229158_BE749657 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 Heiko Stuebner <heiko@sntech.de>, lgirdwood@gmail.com,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Peter Geis <pgwipeout@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8800989290850370244=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============8800989290850370244==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sMZCuqyhuhd4ycTi"
Content-Disposition: inline


--sMZCuqyhuhd4ycTi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 06, 2020 at 09:38:11PM +0000, Robin Murphy wrote:
> On 2020-02-06 6:05 pm, Peter Geis wrote:
> > On Thu, Feb 6, 2020 at 8:57 AM Mark Brown <broonie@kernel.org> wrote:
> >>


> compromise that isn't too hideous, preserves the logical cleanup but
> at least prevents audio going silent with old DTBs (plus handling GPIO
> probe deferral properly which I forgot about first time around). How
> does this look?
>=20
> Robin.
>=20
> ----->8-----

Please don't send revisions of individual patches in reply to discussion
of a series, it makes it really hard to follow what's going on with the
series.  Please just send patches normally.

--sMZCuqyhuhd4ycTi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5BYRsACgkQJNaLcl1U
h9Du0wf9HO3Q6AaZJ1I4tRS3loJ/OXK/v8QMTdDtKmw/Ek+JwYeQh3npOWMQBItK
6pwxmpW5l4Cej0jPXpea00qCFYlQEadT1topkaNHLoNic2dlkVSv2seRbm3R6dwP
ghjNr4Mwv3vycd1P46hmJZsB+eDH4HmZnQGKSFkdz4i1j6MOLfwWxdnJLWpOP740
dwaB4VXKiS3EKCw5A3Q07jMCTuNyeXumjmq79/4POKCmN7FcE5Gr64c747stLQ+g
cDRDRKWiVhLuAFTDTnHf4ry9bTlGulap1bs2xN2qlmbxIKMT5ZV/UGQDhqrDQ6MV
/A1zX6aZmKOe6X82hUl4CSeTgIR6HQ==
=TcrG
-----END PGP SIGNATURE-----

--sMZCuqyhuhd4ycTi--


--===============8800989290850370244==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8800989290850370244==--

