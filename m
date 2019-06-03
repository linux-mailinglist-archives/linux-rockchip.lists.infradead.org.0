Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2391A33476
	for <lists+linux-rockchip@lfdr.de>; Mon,  3 Jun 2019 18:03:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mkmapy+NkMMsYJ8kQlOLyS3TNPoHgi8ukB/buc9C3dw=; b=lSEfIiHX8Vgwi+Rjb5yvov35X
	4a1+z1l2UKkzd7KOEoRDfjxoOpZRYBQowapUXi7z2HFBKjp3I/mZftIPfbASk/h9IoetZrGsK7AMy
	oRphZzKYRcTzMYJXuau+YNcCn1SpsLVOdW67pOLtmCQ3Svpa+PDibS3ebNCPa0T/s7faysFKN/mh2
	DUiASILuhKjXdaIvvIir3abCovPnt0lghfQfv+Ud5d4aWuaQ+D//N7YbHozDS5o9GzFJ+aiarodCq
	i2khnb9m08G02pB6mHRsQOlw4bvTaYngy8HMzzZVhrMWnKUOE723/PzaeeEttTBDoZGHhnerU2WT2
	XwFiNI6Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXpQV-0004zB-EV; Mon, 03 Jun 2019 16:03:11 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXpQS-0004yn-5a
 for linux-rockchip@lists.infradead.org; Mon, 03 Jun 2019 16:03:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dp+gjvYWRdgHVkhbmlVJAz1zWAjzq79b6MVJC60iFPQ=; b=FpJ9y5ceJuqEha547Jxv6YK28
 kmLIzpgGEwfBWgLJxR+bDcoU/9yBoB8F6sJMbCGVjiGD/hFzQcCot81TqlMSPn30bS4kFYyiD78Cg
 kQh7kbX2j117vXP8+2lR1gMrMfGyqVNEdKmqnbK5+E+XG44MMlrz6f+ArPKvJkmVhl+VU=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hXpQG-0002Ic-E7; Mon, 03 Jun 2019 16:02:56 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id 76257440046; Mon,  3 Jun 2019 17:02:55 +0100 (BST)
Date: Mon, 3 Jun 2019 17:02:55 +0100
From: Mark Brown <broonie@kernel.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [RFC PATCH 09/57] drivers: sound: rockchip: rk3399: Use
 bus_find_device_by_of_node helper
Message-ID: <20190603160255.GA27065@sirena.org.uk>
References: <1559577023-558-1-git-send-email-suzuki.poulose@arm.com>
 <1559577023-558-10-git-send-email-suzuki.poulose@arm.com>
MIME-Version: 1.0
In-Reply-To: <1559577023-558-10-git-send-email-suzuki.poulose@arm.com>
X-Cookie: Been Transferred Lately?
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_090308_352172_040FE153 
X-CRM114-Status: UNSURE (   6.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Heiko Stuebner <heiko@sntech.de>, rafael@kernel.org,
 gregkh@linuxfoundation.org, Liam Girdwood <lgirdwood@gmail.com>,
 Takashi Iwai <tiwai@suse.com>, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============8527146244830033558=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============8527146244830033558==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="VbJkn9YxBvnuCH5J"
Content-Disposition: inline


--VbJkn9YxBvnuCH5J
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jun 03, 2019 at 04:49:35PM +0100, Suzuki K Poulose wrote:
> Switch to using the bus_find_device_by_of_node helper

Please use subject lines matching the style for the subsystem.  This
makes it easier for people to identify relevant patches.

Acked-by: Mark Brown <broonie@kernel.org>

--VbJkn9YxBvnuCH5J
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlz1RK4ACgkQJNaLcl1U
h9DAowf+PJhFFfev/hfXmzrc3lXbYtKrtaH2AWJctdLKF8NITVZYeDac1/YxdWQZ
5oRw2NhJAxlhj1xrtMxh0q5H1HezivdBiEqifu404MMnn83vnT7hSG4slSXSPkk6
PlokK0cvaie6gRvPpAMUOrmwixP6akITU4/yOH4PjWbBRedHAkc6NSd1y7IKloiI
NOmQoX4KZi1PBhxjcKaj2P0B8G6E45TUTHKGYxtl8n0c4vwUXW1u23Kf/MKaINtr
6vUDoOzBkZEbkNfchAEUCnU6WUYSTXrTWagVWpWRT0Af4y/QfuW04vsAM/4Tmwx1
vy+cJ2wV591mNPb95PYauA7DMmnLcg==
=wwku
-----END PGP SIGNATURE-----

--VbJkn9YxBvnuCH5J--


--===============8527146244830033558==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8527146244830033558==--

