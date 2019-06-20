Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1B704D256
	for <lists+linux-rockchip@lfdr.de>; Thu, 20 Jun 2019 17:42:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2vV7dkv39RTK5opojg4Jl89JkSOZ6I+tBbrBMqdSguc=; b=inKyD3au+vv80dZi9s+PYXIks
	6OwBiWuLF3517N+mec0YPEIGbJJ6YFFtXWppsRyXy6hzt/0Qr11cZnZdwP2vK0VTZJg1WOPH6GjB0
	Su4KCwdyNO3iMTYToCCrcTnYT35Ohbc+j7Znd/dTKmkmYgvEa+MERyTbKhZmkkqWXCZMgDpTEdbiD
	HAhkyRwfUlmBx3JMsLzPRsEeD9uvc2o8LXSHfGPw0ev02v5lLDHqDtq29Bpk59y+RhRCWabB1FGPR
	TdKFHGbo60G9J7yquUDR3HrGR0Y18yv3jW5Wi7ZiUQd8OhJODj7n7wfbg53hCVX32zGTp8T0m4hPU
	9Fxy14yJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdzCu-00011J-El; Thu, 20 Jun 2019 15:42:36 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdzCI-0000al-49; Thu, 20 Jun 2019 15:41:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6s6aZu8b9dqDAqPoq81Bk78Hj/YlZ9Zu2gddBiQR0jA=; b=jov01KPU7Ey0HCtDvL/bMfUvM
 q+kHss2+okCgunU54lbz7AUEXxS2cz7t6hVp3TCiDXLIBSddCYMcK66KsNAYrByHqXzLdYmj5E8ms
 s98+kDkEwIFNMnhf/WgI7uAcAm8nRSMA5EA0gm8aA9dNtYxJ/3JhRSD6SoNS961M86AwU=;
Received: from [2001:470:1f1d:6b5:7e7a:91ff:fede:4a45]
 (helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hdzCB-0000qH-N9; Thu, 20 Jun 2019 15:41:51 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id AF546440046; Thu, 20 Jun 2019 16:41:50 +0100 (BST)
Date: Thu, 20 Jun 2019 16:41:50 +0100
From: Mark Brown <broonie@kernel.org>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: Re: [PATCH] ASoC: rk3399_gru_sound: Support 32, 44.1 and 88.2 kHz
 sample rates
Message-ID: <20190620154150.GE5316@sirena.org.uk>
References: <20190620134708.28311-1-enric.balletbo@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20190620134708.28311-1-enric.balletbo@collabora.com>
X-Cookie: Editing is a rewording activity.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_084158_311935_FE51591C 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alsa-devel@alsa-project.org, Heiko Stuebner <heiko@sntech.de>,
 Xing Zheng <zhengxing@rock-chips.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Takashi Iwai <tiwai@suse.com>, linux-kernel@vger.kernel.org,
 Jaroslav Kysela <perex@perex.cz>, linux-rockchip@lists.infradead.org,
 Collabora Kernel ML <kernel@collabora.com>, Benson Leung <bleung@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5093942827689511021=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============5093942827689511021==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rOnZ5ITIX7GHaQD9"
Content-Disposition: inline


--rOnZ5ITIX7GHaQD9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jun 20, 2019 at 03:47:08PM +0200, Enric Balletbo i Serra wrote:
> According to the datasheet the max98357a also supports 32, 44.1 and
> 88.2 kHz sample rate. This support was also introduced recently by
> commit fdf34366d324 ("ASoC: max98357a: add missing supported rates").
> This patch adds support for these rates also for the machine driver so
> we get rid of the errors like the below and we are able to play files
> using these sample rates.

Does the machine actually need to validate this at all?  The component
drivers can all apply whatever constraints are needed and do their own
validation, the machine driver is just getting in the way here.

--rOnZ5ITIX7GHaQD9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl0LqT0ACgkQJNaLcl1U
h9Aomwf+IWYRVucBBZvhsm/gdBVe/B8CpBjmp/2qlcOTbdBRiwV3TGlwjFiWqyNF
a/7criDs2zMUCDb4Ad2Xh7FoRj24dC+1QikkP64iwyN/Y5wJLwQhRRDuM60vjRGp
waQP/rQ86h14cWtTi/+IE8Rm3nFcs/0J0S+87SVuW8kIifVcEAzUGYH8fhTwgkki
SerVWbkR+weSZLJVq/cvR2CKQvt4qPaQ2AT2V7W9pCRzBJRza8CLIg+t7jaFUuLP
EefouE+9/aOgtVf4NT+BPfcy7pptkMZwAsbX0Obcm6+1dmIpjffWRdRzki4AVnJD
wUUi0N6O0HWIkSLhMnqzgBaOrZBMjg==
=cr78
-----END PGP SIGNATURE-----

--rOnZ5ITIX7GHaQD9--


--===============5093942827689511021==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5093942827689511021==--

