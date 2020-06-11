Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 001FD1F6AD9
	for <lists+linux-rockchip@lfdr.de>; Thu, 11 Jun 2020 17:21:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wkNHHxljYWm/5uY5yaQmO+RkT7v5tO8bms5wdVz5jZw=; b=lOIP/f9Nxgsd/mFFOi5U1hXr2
	PmJfn7Klz+WtYhwCcM2pz+k70Q301XX1zduI0lnBLoLHl7z1YF1iQipZmdmtxLnZYPp5hDtEbpSbB
	enqzWVl2Wfrw7nPqVGpSqlj1OkKmaYI5/n5ZYo74tqsOVZJQMUNA+N9f+G1QpWD4ZLVlIZkgzzoY3
	Os2cJMZWhrKbHwRDz8D/pRVZ2mPJbIHZ/FOR/N3usdDvXtKha96hAvpZJtgiYurSs238ev340yl2U
	ac0f9Q9VceG1meWl+p04POHrMkysrjGta7RszxQuZLDA/8KNOI8p6eYQ7vwaJGgwXpNYLoB/DP2UP
	9ivhsmb/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjP15-0000Av-US; Thu, 11 Jun 2020 15:21:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjP0s-0008Os-9F; Thu, 11 Jun 2020 15:21:08 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2DDE22067B;
 Thu, 11 Jun 2020 15:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591888865;
 bh=fU4053E/gEMjOvm/1ax+QwbZU9nEqKq0J4A2Bf6dWHQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=N5Tn1ZgbQacjixDiubcV1IE5JEiq9iPEMWmGtJ2uM8xzzrHlI2gqPF2Q5iGG1JqLI
 A52kNMFN/6DvyS/5oAyXPU5yFTgGxFM4wQGGa3Q8/cyJWLM0NjP0KLKhMCXgaEEl3/
 wxbew7LG7ar+YC4EVflLnlWgU9cUn3sgLjAXk7+8=
Date: Thu, 11 Jun 2020 16:21:03 +0100
From: Mark Brown <broonie@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: Fix more incorrect 'reg' property sizes in
 examples
Message-ID: <20200611152103.GJ4671@sirena.org.uk>
References: <20200611151923.1102796-1-robh@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20200611151923.1102796-1-robh@kernel.org>
X-Cookie: I like your SNOOPY POSTER!!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_082106_349031_327979DE 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Liam Girdwood <lgirdwood@gmail.com>,
 Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Richard Weinberger <richard@nod.at>,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-rockchip@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
 netdev@vger.kernel.org, linux-mtd@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 "David S. Miller" <davem@davemloft.net>, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============0838056965227584336=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============0838056965227584336==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pMCBjikF2xGw87uL"
Content-Disposition: inline


--pMCBjikF2xGw87uL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jun 11, 2020 at 09:19:23AM -0600, Rob Herring wrote:
> The examples template is a 'simple-bus' with a size of 1 cell for
> had between 2 and 4 cells which really only errors on I2C or SPI type
> devices with a single cell.

Acked-by: Mark Brown <broonie@kernel.org>

--pMCBjikF2xGw87uL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7iS94ACgkQJNaLcl1U
h9ALwgf9FJflzTQOP828gD9dhJPBLf9uqdG6GFRFf/iGqCG+0EHh1MxRNIBXMNFU
pFc2qOrOXnTCvFmSwYib4Ic2S+mc1j9JMhrEjEp6ybbJzWwTmqImDlCydJ81it+0
mJ2ohVbaOo8OsZprM11pEL6wflKweqzJgzQWsg7IgWJUebFsrzEXOKt0nElgxHwM
DxIkj39TRFocuWU1NqkIBefPYWejxr1I8DppfhMBZnAI74UaODz+zAo+EYGPsj+a
OFde9BISP8NNn/skIz7L+4sPP/vkKIw4NoG376dcODKCA88n9Z1clhYE5CkYLhlx
c/Of3H7INUOo4nh6sqkC+DMhtfn58g==
=GWWY
-----END PGP SIGNATURE-----

--pMCBjikF2xGw87uL--


--===============0838056965227584336==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0838056965227584336==--

