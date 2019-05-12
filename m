Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14AAB1AD4C
	for <lists+linux-rockchip@lfdr.de>; Sun, 12 May 2019 19:06:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XxaobF7NYXdJCAEX2hIHTXWQ+M7czFoCmdfS5hEPzbA=; b=OrwqodAbcK3wWPuTvqUJORSvr
	I/EStBO6wvRhSkXeSsFr2Rhjjl91R3SS/xbplj/cYlH1ebplM8Mrr9yWbDLsjFSEnXR1yRhu/FVKo
	l/LnJcriY8eQ1PozDAtuGwOOTgV+12Y9A3Oig8I3mv67gQ/KTDXnk5a4d8yjPJ8G9d/7Gxcl21egx
	F6G4MwJT3IvPgNzgQOY9jluQwp05BexumraaRLMXH1buY5ZDJV5NMQQafYv00k+j2Wkfue+aUXItY
	2eIcIFgwnURKrcbmLjEY8SnPY8DYtQX4YmxWWyY9xsGj/h0uydjY3mhrqAdmnmJwOS+3urPaYeWmQ
	tUBmb4zZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPrvE-0000Ei-9Y; Sun, 12 May 2019 17:06:00 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPrv1-0008PV-Q9
 for linux-rockchip@lists.infradead.org; Sun, 12 May 2019 17:05:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=f61YpczbbTMv0calrg2aAD9rT2tVBXPGrc7DIwQXTro=; b=hHby0WejM3CuabDfv3c1pDZLf
 9FuQRW5VhKm1rJjiEfCAiHgpTsOtAzbbPlzMOyPWHzWRPcQZGddpc41kDpqXuUWoZzYQ08RS9pvbM
 e9u/glImqcaHzcBjbSo7H0BXJgWEm13FFpV0G2mdpmrpq8hiWBcc+TZuH2pfwI79PnxdQ=;
Received: from [81.145.206.43] (helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hPrut-00044T-MU; Sun, 12 May 2019 17:05:39 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id 0C9CB440017; Sun, 12 May 2019 08:42:53 +0100 (BST)
Date: Sun, 12 May 2019 16:42:53 +0900
From: Mark Brown <broonie@kernel.org>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH 2/4] spi: Allow SPI devices to specify that they are
 timing sensitive
Message-ID: <20190512074252.GD21483@sirena.org.uk>
References: <20190510223437.84368-1-dianders@chromium.org>
 <20190510223437.84368-3-dianders@chromium.org>
MIME-Version: 1.0
In-Reply-To: <20190510223437.84368-3-dianders@chromium.org>
X-Cookie: HOST SYSTEM RESPONDING, PROBABLY UP...
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_100547_997012_ACB4EDC5 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.1 DATE_IN_PAST_06_12     Date: is 6 to 12 hours before Received: date
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: drinkcat@chromium.org, briannorris@chromium.org,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-rockchip@lists.infradead.org, mka@chromium.org,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Guenter Roeck <groeck@chromium.org>, Benson Leung <bleung@chromium.org>
Content-Type: multipart/mixed; boundary="===============7029108184277579259=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============7029108184277579259==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="+B+y8wtTXqdUj1xM"
Content-Disposition: inline


--+B+y8wtTXqdUj1xM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, May 10, 2019 at 03:34:35PM -0700, Douglas Anderson wrote:

> + * @timing_sensitive: Transfers for this device are senstive to timing
> + *	so we should do our transfer at high priority.

Not sure this is the best name.  Every device is timing sensitive to
some extent and it's a bit wooly about what it's trying to accomplish,
it's specifically about the timing involved in ensuring that the entire
message goes out as quickly as possible AIUI.  I think if anything I'd
just have the caller specifying a RT priority for the thread, but that's
awkward as we might want to switch over to deadline at some point.  How
about just calling the parameter rt the same as it is when the
controller does the same configuration?

--+B+y8wtTXqdUj1xM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlzXznkACgkQJNaLcl1U
h9BbrAf/QuZJvvnzSN9f3YRIMrxOcWjPSXe8m7cpjjYwT8RgFk/K/D2EtHZqpPa8
elj2mlHof5nWuPrCydyTZz4dV2Q7K49cprgr2q7oK+nifKWCIVDFZvB5NjIP165o
dI34Xs1qOUui3KPVSl1CGed2W9d2y+5TEck0os5MsnjpL89b4NrMr/lq3z8zZ0dE
6WfF7Tr49s10iLyo0g7QYPqvw1/nGoxKloIEGs2j2GALOqzDZgd6UjXOTig8UfgR
VYCn8zQ3IO2FBFLnnS+jSqzNwacaKtqLIP+4oeKiQWCzIiw6HDvV/vMbOg6PvAUO
cWErMjpY5aVcL/XP4BawO+V+ivVgVw==
=Eybc
-----END PGP SIGNATURE-----

--+B+y8wtTXqdUj1xM--


--===============7029108184277579259==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7029108184277579259==--

