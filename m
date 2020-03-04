Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABCB2179666
	for <lists+linux-rockchip@lfdr.de>; Wed,  4 Mar 2020 18:11:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=R9yic3FyyDQN63CfHO77Lv6rEzw12HFEL8IlRPeFS84=; b=Iy5qRbgr+JEwwkJBcEFor8kNH
	tlHnghBlZtpwcSHY8zdu91YLtWAMoapmsGRSaPCN8a0r77siK29cGeLz1+MCjK1X/l1eRzxinzA6H
	Vl/h5Uuo8+5+OUSxU7VNhsVwr4fad9Ey+2nKRcf4KB+0UB6CCj/Kn/8QjCBZaNxC+cHx5axF5EHy2
	Wxz61nyAD2nJszC6FtmcKLZz3S47Hj/te4NWs+u5PSVHhk8SIF5+yRsMMjYotm1nELIKffsdf+GGp
	0WE+4969wgAaMDcAO5hruaqsPOHXrpxlq1mDcN/JHOaHlkb0y5ErEyI1Xc6/SgAApXNUgT6Vtr4JI
	YZwCw5pkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9XXw-0001aW-0A; Wed, 04 Mar 2020 17:11:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9XXm-0001Sd-Ru; Wed, 04 Mar 2020 17:10:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C8DF031B;
 Wed,  4 Mar 2020 09:10:49 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4D0173F6CF;
 Wed,  4 Mar 2020 09:10:49 -0800 (PST)
Date: Wed, 4 Mar 2020 17:10:47 +0000
From: Mark Brown <broonie@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: spi: convert rockchip spi bindings
 to yaml
Message-ID: <20200304171047.GD5646@sirena.org.uk>
References: <20200122224555.6845-1-jbx6244@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200122224555.6845-1-jbx6244@gmail.com>
X-Cookie: Tomorrow, you can be anywhere.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_091050_946333_229B3D05 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, heiko@sntech.de,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4494136438205786245=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============4494136438205786245==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kvUQC+jR9YzypDnK"
Content-Disposition: inline


--kvUQC+jR9YzypDnK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 22, 2020 at 11:45:53PM +0100, Johan Jonker wrote:
> Current dts files with 'spi' nodes are manually verified.
> In order to automate this process spi-rockchip.txt
> has to be converted to yaml. In the new setup
> spi-rockchip.yaml will inherit properties from
> spi-controller.yaml.
>=20
> Add document to MAINTAINERS.

This doesn't apply against current code, please check and resend.

--kvUQC+jR9YzypDnK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5f4RYACgkQJNaLcl1U
h9AUJQf+NIBVp/NuXcA8ap1DTnZKngd1ChQwtZBK7j45Ck2jg/rcwmKK8WT3Dd89
tlhn7yP8Ad1Bx7jxd7w76jpBVuPE3K9z0EjZeI6nnxxMdv15bW5+Rcrp8QetP0qA
Yn5L8jNUSpFS97y7ACecT98AkKB8C6mExQ84U4s9qxjl5rZqzzlPmJBJASt9rgF4
Ox/eSAEqdiv85KsmMGzqc5171uhicslVUvjCw5YFB0RVhm+fZw8G3PFpdJdQGt1w
KRQkMrkEyLUU/znr92Ggk6ehIdMu4gzoLSk3Qe6DihtXVQPyE9LuY5PUZi81RpVZ
GyDX0FN7FIBIO0xBFkF+V1cPyGtWPA==
=JWON
-----END PGP SIGNATURE-----

--kvUQC+jR9YzypDnK--


--===============4494136438205786245==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4494136438205786245==--

