Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 822F0131990
	for <lists+linux-rockchip@lfdr.de>; Mon,  6 Jan 2020 21:45:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vW7Z7XkYQ+JnjmJKTvLinSg+aAgXcvg0oe2VnKGSdmk=; b=MGpDbSd65MZZ18ZJOF91HBRsN
	bFiGt+y86I1Oe2nIdnesfzJ6Hovm2DBub1F0RNIQgb+Tc1pP6pxy7olcJlryQEekwmTqBKZ0LJH25
	bR2u77AjxR83tpf1ZD2ZX748gag+co9/zi2XTw6y6g6HWXgVeThh+EdUpv/MK8uXWlXo00mHGBqOK
	mVS5SpfhN8UMPMMHBfsD7rcKk1oAp7zVZ2+zYWwOSfDaTuXDGNHBuxDFMK8UOoQn2xrlQLGNGrwWt
	p2NXk3dlOh/updu1rOBn6T1tpDozw+uJg3wh6oyHv1xQER/C3YD1utSm7iLuEUfMMnebutZe/zcKu
	XP4MbCpWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioZFe-0001UR-UG; Mon, 06 Jan 2020 20:45:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioZFb-0001TX-T1
 for linux-rockchip@lists.infradead.org; Mon, 06 Jan 2020 20:45:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E6394328;
 Mon,  6 Jan 2020 12:45:22 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6C91A3F534;
 Mon,  6 Jan 2020 12:45:22 -0800 (PST)
Date: Mon, 6 Jan 2020 20:45:20 +0000
From: Mark Brown <broonie@kernel.org>
To: Markus Reichl <m.reichl@fivetechno.de>
Subject: Re: [PATCH 1/5] regulator: mp8859: add driver
Message-ID: <20200106204520.GD6448@sirena.org.uk>
References: <20200104153321.6584-1-m.reichl@fivetechno.de>
 <20200104153321.6584-2-m.reichl@fivetechno.de>
MIME-Version: 1.0
In-Reply-To: <20200104153321.6584-2-m.reichl@fivetechno.de>
X-Cookie: It's later than you think.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_124523_984262_0FF4EC66 
X-CRM114-Status: UNSURE (   7.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-rockchip@lists.infradead.org, Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============4338651922691682475=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============4338651922691682475==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="iVCmgExH7+hIHJ1A"
Content-Disposition: inline


--iVCmgExH7+hIHJ1A
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Jan 04, 2020 at 04:32:45PM +0100, Markus Reichl wrote:
> The MP8859 from Monolithic Power Systems is a single output DC/DC
> converter. The voltage can be controlled via I2C.

I have patches 1, 2 and 4 with no cover letter or other information
about dependencies.  What's the story there?

--iVCmgExH7+hIHJ1A
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl4TnGAACgkQJNaLcl1U
h9A46gf/bxiSXCC7UE5lAyiSv1Ty0tmILgIugHIDfpv1kiItsznOj8o8gd3t8Xak
RfV15p/RE5SEf5Mt9PmQ9HZLYrz57LYhPdIW8mdqPYEBBSLIK6yomYITST5+FrH7
pc36LC/KBi310B2EzWReP45Tmw+oEWw/CTYHYcto48soSNDBsoaqoqfM59GrLRP5
2YapCH/IaVzmrxAToY00vPDGeOvkeRIzXV4ewVTedOB/ZDU0tUtKZhDPLzjv6P2+
lEGdUmRK+TYlP9UIB0i9b4i+Rmvx9LjHpZ3e+HZ3WOIiv6ONfgt2j9AcpgZUraeF
ExDGyMhZQFn9v/qcJs5Txp0Tdrebzw==
=5TQL
-----END PGP SIGNATURE-----

--iVCmgExH7+hIHJ1A--


--===============4338651922691682475==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4338651922691682475==--

