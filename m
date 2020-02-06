Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 990DE15435F
	for <lists+linux-rockchip@lfdr.de>; Thu,  6 Feb 2020 12:46:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9XYVGVb+cg+OCdWgi96Tt+7FDdcDV+bAylP+stidJ80=; b=Ae9jmpsyCOEXMhl00V7CNWPaI
	Lx3zKOzc80QephhPk5fH1L+NpE7q6QvBSXyc/4bmAeDD4/ui+lg98cVHoGR6R7f/gEbCgZ6K8LJDz
	uk38xidkz/yANpNgoR/in2ZPXpd5WPFvX/tpjBKZeKXdnVOPMJ2w2L06TGX35P6V4miHdaFyq8phH
	yf2HyCPn9O5zP6w149/A61FBtofC2sqkg6cHr644IPXZf4MIDItbB8AVRaGPESYlwrTEFf6PR0jb5
	qZelCITqQanFkEhojtRRGtRvQ1FbpTi5BgSfHYzeMZ6xL9NULVV+15Z5Sp3T1VKyRfFxQRUV6oWMo
	QfMHebe6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izfbz-0006NA-QO; Thu, 06 Feb 2020 11:46:23 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izfbt-0006IW-BX; Thu, 06 Feb 2020 11:46:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bUWREdoU4He/YcftlGWMKWe1bWizb7OK/93Il52hoRA=; b=B39UPjFUyfKnLbO50oBTfJTAi
 OjSPf4Oa2MILokP3IeooB2GgH2JBR7HTcQiOILxSIbOaTeADKvN447l0n/rQFND70+EhoStAUkM1p
 E64X6U6M6O3hRUNn3F0zdQIeKni+FuDS/srt/WReqeNGEcXCshkm1h4eWO2fkYMjVkUo4=;
Received: from fw-tnat-cam3.arm.com ([217.140.106.51]
 helo=fitzroy.sirena.org.uk) by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1izfbj-0001YB-Cl; Thu, 06 Feb 2020 11:46:07 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id CD968D01D7F; Thu,  6 Feb 2020 11:46:06 +0000 (GMT)
Date: Thu, 6 Feb 2020 11:46:06 +0000
From: Mark Brown <broonie@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 2/3] ASoC: rockchip: Make RK3328 GPIO_MUTE control explicit
Message-ID: <20200206114606.GM3897@sirena.org.uk>
References: <cover.1580950046.git.robin.murphy@arm.com>
 <29a846da33c02df64eca62b5fa0f3884652f788f.1580950046.git.robin.murphy@arm.com>
MIME-Version: 1.0
In-Reply-To: <29a846da33c02df64eca62b5fa0f3884652f788f.1580950046.git.robin.murphy@arm.com>
X-Cookie: Programming is an unnatural act.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_034617_399175_09BCD551 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org, heiko@sntech.de,
 lgirdwood@gmail.com, linux-rockchip@lists.infradead.org, pgwipeout@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6925406784995844497=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============6925406784995844497==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="+F2yqQIdYdj7GirX"
Content-Disposition: inline


--+F2yqQIdYdj7GirX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Feb 06, 2020 at 01:07:12AM +0000, Robin Murphy wrote:
> The RK3328 reference design uses an external line driver IC as a buffer
> on the analog codec output, enabled by the GPIO_MUTE pin, and such a
> configuration is currently assumed in the codec driver's direct poking
> of GRF_SOC_CON10 to control the GPIO_MUTE output value. However, some

This makes sense but it is an ABI break so is going to need
quirking for existing boards that unfortunately rely on the
existing behaviour.

--+F2yqQIdYdj7GirX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl47/H4ACgkQJNaLcl1U
h9DSgAf/fI2jTkBLGwfZiU8QU+VXIx/+BPEpU9gRjE/WwtBF2zlRRy3WLOiYqQ5Y
Y+Jgt8z1POzBClW3R1EYdRfuno7LdCv0Uw6x3N5lGI48qRilCVvtfDq7wUkMqsCT
o6WrsChoeB3VFYsyKSD/ZKjA2Zxie2VYH4actQ/kdat4TeYXyIVQ/IcEZsMZXPmL
RydsLYzjOLFElnxNVA8FlHbumD9t1u0qRvCW9G0ASdoNa1IHA0AeYUoVBFo2/yGo
5AQ5AZNMfjrTfpvzRbg7zyQdztURC/VUqnqk+dSFOzZ8SC91lj7mw9IC1+9dRF5R
1GxdYx+sA24Phw4T+p07RZO9aUY6xw==
=pHJO
-----END PGP SIGNATURE-----

--+F2yqQIdYdj7GirX--


--===============6925406784995844497==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6925406784995844497==--

