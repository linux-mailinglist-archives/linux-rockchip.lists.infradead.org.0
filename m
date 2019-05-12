Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 695F31AD4B
	for <lists+linux-rockchip@lfdr.de>; Sun, 12 May 2019 19:06:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=W8RGtc9FM+4EBWcs5fFwA7VfZ2lBAe0ujelDuAQksQ8=; b=CYGdjBrKA20SKg+ApH/iBzAvX
	ZqYIdCKXjLFfngw8wM0rxzRL+1ss3ND/YjHxaveCGBsRXMMdtLUa/LGbh5oEHBXqJx1RuYOWBbPoP
	H8X647a5CBsO/9yFQdWdHi3+5A8mTw1cba7qMg5wyHtpMGZ0wWURMn4661IwbPdaRdYQvFQwtZwFB
	E8f3l7DDLtbTRdaJnbbNVAlaJafHOdQk3lVeWLnEJ+xn+5wgknWSG7sl/zqZ4nkvx+0A3IsAMH76g
	QfU+sWYc5g5lOcN4hkBxRR1LbkK3L76NmQaMY1E76vXi+6M05Whn1HyBkZ0dIKj2e+MVz8OLgZnqT
	Kdcl6e+Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPrvC-0000CE-EP; Sun, 12 May 2019 17:05:58 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPrv1-0008PT-Mr
 for linux-rockchip@lists.infradead.org; Sun, 12 May 2019 17:05:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JGyDpXs0z4qP/VLm+QIIvl6tLAm7ZejvyxnTMOgb8/o=; b=kPQ9K/GcuDxCVWrz7TmQZp9qq
 uWbtRKu5SSeuFIwTtJ5d4MgiHwpuqoLAndskrb2iTEFu8Oy0KiEKGW9bJtjSm09or+/MMBizPkRjh
 xZ80jRTm/E1gPRhYoiX0p7977HVfVdo76T9WcZCaiG+QNMAvdXQlpqpb2QcZ/OGfCksrw=;
Received: from [81.145.206.43] (helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hPruu-00044g-9y; Sun, 12 May 2019 17:05:40 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id 44E0644000C; Sun, 12 May 2019 08:33:01 +0100 (BST)
Date: Sun, 12 May 2019 16:33:01 +0900
From: Mark Brown <broonie@kernel.org>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH 1/4] spi: For controllers that need realtime always use
 the pump thread
Message-ID: <20190512073301.GC21483@sirena.org.uk>
References: <20190510223437.84368-1-dianders@chromium.org>
 <20190510223437.84368-2-dianders@chromium.org>
MIME-Version: 1.0
In-Reply-To: <20190510223437.84368-2-dianders@chromium.org>
X-Cookie: HOST SYSTEM RESPONDING, PROBABLY UP...
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_100547_889455_5826565D 
X-CRM114-Status: GOOD (  12.57  )
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
Content-Type: multipart/mixed; boundary="===============7376112348469151644=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============7376112348469151644==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="/e2eDi0V/xtL+Mc8"
Content-Disposition: inline


--/e2eDi0V/xtL+Mc8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, May 10, 2019 at 03:34:34PM -0700, Douglas Anderson wrote:
> If a controller specifies that it needs high priority for sending
> messages we should always schedule our transfers on the thread.  If we
> don't do this we'll do the transfer in the caller's context which
> might not be very high priority.

If performance is important you probably also want to avoid the context
thrashing - executing in the calling context is generally a substantial
performance boost.  I can see this causing problems further down the
line when someone else turns up with a different requirement, perhaps in
an application where the caller does actually have a raised priority
themselves and just wanted to make sure that the thread wasn't lower
than they are.  I guess it'd be nice if we could check what priority the
calling thread has and make a decision based on that but there don't
seem to be any facilities for doing that which I can see right now.

--/e2eDi0V/xtL+Mc8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlzXzCcACgkQJNaLcl1U
h9AjOAf+MXPHyjoQyfbJn08k/H8FZGylRFAxKaq4gxN0q4GV4ErRQ4izUJ80gQ5U
sCbdavMU+2u2yZ8yl/uthfJzXlmpViMGmi/nnHwRcPunHFz1nBmA9sZ4/ODkIj8N
cCWjLrCRxeE9e23yjIInTgiMkgg2DgSeA+0kVbtg4S0gyIM+POpLXtN6thC9bi0N
+ZVukER12euMeuVoruZ9jAo52XBhVjj2tpFK18N+bbgIMKB1T2qrd1Fp2r3H6+ty
GQsyEb/f1XN0NXaLDI5wunSFe0EiUe6P6rZuu4p9ZTyPhg663C+JsqU72Rj8EBXA
qT+vCFKYWKPzapEj1LDuT9p+DyPnyg==
=aJHR
-----END PGP SIGNATURE-----

--/e2eDi0V/xtL+Mc8--


--===============7376112348469151644==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7376112348469151644==--

