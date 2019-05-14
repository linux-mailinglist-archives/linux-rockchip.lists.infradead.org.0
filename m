Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BEBD1CB57
	for <lists+linux-rockchip@lfdr.de>; Tue, 14 May 2019 17:06:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Iepk99R1rrF6Go17IdN9g0Chx1GD76eJvCgMV3FutmU=; b=rrOacNmMDszS/3nWRYaUtFWbj
	RKkRjdxRftxwgdhaGmIrpRw2aU+8WKUYw7xFYL05TfXWD4s8GITZPWPAttVll5XPLctXjRGHX46wb
	K3NuHwRLs/dvjzvZFVA40LlV4JKUuwHBhNmKD6TQG1/4rBFlii/eJbatgFiKZ/TNUgf3D0cLIziAw
	CsZEIiymIdNtUBnGaB5FVOA9+qQ0ZQga/5fmn8ApzNwMHjZMmBjK6MCdQzZ5whFCEsCA1X20CeWfJ
	32Z79EejGnepVZZSeI/zFGiNgys6J6PCOV2z3Tv6cRYrEQzAM1IXRG8yYFY+3Fl+xw8nP/0/7LjRs
	HdBGT7Z2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQZ0R-0003ui-9A; Tue, 14 May 2019 15:06:15 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQZ0O-0003uK-4f
 for linux-rockchip@lists.infradead.org; Tue, 14 May 2019 15:06:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NQhfVy0qFNuvDpdRYcvkTlDsVD03kBM9D8DvgCnqBPc=; b=Dl5/ocQVDpG/+WUNiJvVsFRBD
 +ZkCa4teBLvzobqhtymTMHwRMN1560TtLfuX8i3hGHz4nH+aHwmDrQig/arE4f8Em+vwjmiclnVGl
 axaSq2p7TChHq11t36ylMJH87h10VU4zL8+zHyONdqsNUd+YcPZIwuVXIdQZS4Oswg+7w=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=debutante.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpa (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hQZ0K-00015Q-Ac; Tue, 14 May 2019 15:06:08 +0000
Received: by debutante.sirena.org.uk (Postfix, from userid 1000)
 id 85DBD1121EE8; Tue, 14 May 2019 16:06:07 +0100 (BST)
Date: Tue, 14 May 2019 16:06:07 +0100
From: Mark Brown <broonie@kernel.org>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH 1/4] spi: For controllers that need realtime always use
 the pump thread
Message-ID: <20190514150607.GA1917@sirena.org.uk>
References: <20190510223437.84368-1-dianders@chromium.org>
 <20190510223437.84368-2-dianders@chromium.org>
 <20190512073301.GC21483@sirena.org.uk>
 <CAD=FV=UBic4qywgYQFGEXx_frD9ZoRJX7XGgDbQCvb2CbkBa9w@mail.gmail.com>
 <20190514093038.GB8665@sirena.org.uk>
 <CAD=FV=UXhQg2CuNsTCkSe1BuEvkGMj6qeUB2iF=Qfj=Z0fLiWw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAD=FV=UXhQg2CuNsTCkSe1BuEvkGMj6qeUB2iF=Qfj=Z0fLiWw@mail.gmail.com>
X-Cookie: There is a fly on your nose.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_080612_329384_BFF93AD9 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Nicolas Boichat <drinkcat@chromium.org>,
 Brian Norris <briannorris@chromium.org>, LKML <linux-kernel@vger.kernel.org>,
 linux-spi <linux-spi@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Guenter Roeck <groeck@chromium.org>, Benson Leung <bleung@chromium.org>
Content-Type: multipart/mixed; boundary="===============5467550613680805101=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============5467550613680805101==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ikeVEW9yuYc//A+q"
Content-Disposition: inline


--ikeVEW9yuYc//A+q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, May 14, 2019 at 07:42:38AM -0700, Doug Anderson wrote:

> ...but I guess you're saying that you don't want to guarantee that the
> SPI core will happen to have this thread sitting around in the future
> so you'd rather add the extra complexity to cros_ec so the core can
> evolve more freely?

We need something to support spi_async() but what you're asking for is
fairly specific implementation details about how things are currently
structured, and we do need to be able to continue to make improvements
for users who are interested in performance.  Ensuring that the calling
context is also less likely to be preempted is going to make it much
less likely that any other work is going to cause some timing change
that creates problems for you.

--ikeVEW9yuYc//A+q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlza2V4ACgkQJNaLcl1U
h9BdzAf+KMVQaYP9/vNw0i0uGrveiVFMzejKMkn1HLO53K5CGl+UPRj+Y2OYUy/4
o4zonygqZNCkn+XY4BVZHOGInN1sb2Vzp6Ky1kuw76YxxwL+xKsLuua7+HQ9bCQM
oVh1Okwky0twqGK78DMtZpfRrYyetWfXA6teiW7G3LZ9+eEd0hXuVVGamq9lzDlM
zYR8ar3mdRRJmW8JGkJSE0t6Q03CMoeVPoNT8TUs41QnLfNOi/shVZ5kRwbuyoTA
PZGyAEjbIEYmMe7UR09ePu685ymCtrO9KjqplYeBQBOaUm6KqjURqrJBGWhVyLqF
sRSuDvQVfjGjiNbqlpfc7QsEj0HaLw==
=RN96
-----END PGP SIGNATURE-----

--ikeVEW9yuYc//A+q--


--===============5467550613680805101==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5467550613680805101==--

