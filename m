Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71837191163
	for <lists+linux-rockchip@lfdr.de>; Tue, 24 Mar 2020 14:44:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UaRtHk8vv1RfiK5xr2ecGbbmuNnJEKACGjkOzqMqq0s=; b=MpYrcEW2Fv7wVuKpe0wBVipIY
	xkNslc1m4bRMTBmUg3yZ9rk6KmX3QUr4ZKsnVSXOZvavYuajRg+2wri6jLu4XbEosKKa8Dk4eVLZb
	0Ci1TweczvGhjt0ud+5lwvU/veiyuoNoES6+b6HEjB59kDVSV4iEarNddXQGjOowBm4In6FcCFmNn
	Gkg0wZRWQBgIWGrCqe4ptrLUu//qLdmRQ1N6wmzfg0iQo52ej/TZvIMA4vn+e2IM8HXJ9aHv+KvVR
	DjHmnS3EmPZ8SfuVlEQ+jnb5G+vA6fPcc2Al/RQECrXedkqBzwVFxyWBe3t5oxASmYzQmkF8VTdas
	vYXWsfUcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGjrR-00059x-Ts; Tue, 24 Mar 2020 13:44:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGjrG-00050K-VR; Tue, 24 Mar 2020 13:44:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 547291FB;
 Tue, 24 Mar 2020 06:44:42 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CD68E3F52E;
 Tue, 24 Mar 2020 06:44:41 -0700 (PDT)
Date: Tue, 24 Mar 2020 13:44:40 +0000
From: Mark Brown <broonie@kernel.org>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH v2 1/3] dt-bindings: sound: convert rockchip spdif
 bindings to yaml
Message-ID: <20200324134440.GD7039@sirena.org.uk>
References: <20200324123155.11858-1-jbx6244@gmail.com>
 <20200324133506.GC7039@sirena.org.uk> <2135168.SEOWuCda4h@diego>
MIME-Version: 1.0
In-Reply-To: <2135168.SEOWuCda4h@diego>
X-Cookie: I feel ... JUGULAR ...
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_064443_057026_54B131A9 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 lgirdwood@gmail.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 Johan Jonker <jbx6244@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3225294947506235654=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============3225294947506235654==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="/unnNtmY43mpUSKx"
Content-Disposition: inline


--/unnNtmY43mpUSKx
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 24, 2020 at 02:39:56PM +0100, Heiko St=FCbner wrote:
> Am Dienstag, 24. M=E4rz 2020, 14:35:06 CET schrieb Mark Brown:

> > This is the second v2 you've sent of this today

> hmm at least when looking at my inbox ... I got one series for
> spdif in v2 (this one) and one for i2s in v2. And yes they do look
> somewhat identical in what they do but of course handle binding
> changes for different controllers.

Ah, this is one reason why I complain about subject lines - the
extra dt-bindings at the front hides the difference in subject lines for
me.

--/unnNtmY43mpUSKx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl56DscACgkQJNaLcl1U
h9AX1gf/aMYAaXz2aq59CMWwQKWFUEAhfQ7OLuhs5LSFsPlUBZXUMot13HRqsiKz
uwZgsBhO7MErfMs6l85z52J7uQ56RYXkIdfdm0m0PUVVyZsUxDHMKmV6xnS3NpHm
f1COnrZDwRLRrP4qWCipkWJFRTF/9PynetTfYX456+g6aeBI7mNlO+OdY+EWis3v
lMI5+/zO0RCkIgKb3qYp4gknlqYz+1HtIgu8RBy3JaDQk1BGNP85KFxRmGPyOe2U
8H+Tu1uO9iIGgP7XAMJFsusQTC2QmPfhGH2GG9S/R2k+gZEjELOhcGtlfOl9+S+E
gpQaRpbPjoAKtCy9IPoiy6watAt2ZA==
=WwdV
-----END PGP SIGNATURE-----

--/unnNtmY43mpUSKx--


--===============3225294947506235654==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3225294947506235654==--

