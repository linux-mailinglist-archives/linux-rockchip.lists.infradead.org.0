Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4151910F3
	for <lists+linux-rockchip@lfdr.de>; Tue, 24 Mar 2020 14:35:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Fr9sxMMs0ZdUROC6Rh0isHbtZXmNBzCXE6p0XuVpIRo=; b=DC5+NKL4ubo3fc+MQexNGPk2z
	TUpVkH42nKS8WG7bvxfz23e/24QpCPXg3dmVPVieOjxxxU+hCO1IvDjRqJ8ABPz++6Zi8PBy/iBaJ
	dg+f/9L4lC9kwcjnhP3NMtYuOxb1YRIhXNODSFp1AKwpWbRbohGJcHAu6BRAaLaT2bcRUFJwhlT6T
	+YXajkFiwo6qbxJ16OYHFTigJqkkIUxpVDal6zIEGh+79nLqPK63Z8b1sMwUGk+5iyhJKx33aB6LD
	07wdNFmeWo0tVmqCdlkfx0OWArEciF6qYtIkcgYz8gCftpmzqFGt38MdxpHKSbT+3K4oGsoTdpcvW
	fI0Q2icig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGjiG-0001dz-Aa; Tue, 24 Mar 2020 13:35:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGji3-0001Vu-GB; Tue, 24 Mar 2020 13:35:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 798F91FB;
 Tue, 24 Mar 2020 06:35:08 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F16843F52E;
 Tue, 24 Mar 2020 06:35:07 -0700 (PDT)
Date: Tue, 24 Mar 2020 13:35:06 +0000
From: Mark Brown <broonie@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: sound: convert rockchip spdif
 bindings to yaml
Message-ID: <20200324133506.GC7039@sirena.org.uk>
References: <20200324123155.11858-1-jbx6244@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200324123155.11858-1-jbx6244@gmail.com>
X-Cookie: I feel ... JUGULAR ...
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_063511_621415_D5F21F59 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org, heiko@sntech.de,
 lgirdwood@gmail.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1013319262949368171=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


--===============1013319262949368171==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ALfTUftag+2gvp1h"
Content-Disposition: inline


--ALfTUftag+2gvp1h
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Mar 24, 2020 at 01:31:53PM +0100, Johan Jonker wrote:
> Current dts files with 'spdif' nodes are manually verified.
> In order to automate this process rockchip-spdif.txt
> has to be converted to yaml.

> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> Changed V2:
>   dmas and dma-names layout

This is the second v2 you've sent of this today - it adds these but
drops Rob's ack?

--ALfTUftag+2gvp1h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl56DIkACgkQJNaLcl1U
h9AN6Af+MtKFdLKwXOq0ZSd3pZudYzkK/o1iRhCoZguoCb361prSfHsrNxVH7UgS
NoCl9lTGtnOnD0dSRW08nP6R1Uzy6S4RUHXymuSFsbFoE807UgdMhI2SlwOkSwYF
3LqiuhploNOIFoQaW3InXfrzV1Xf5DQoC2765ifQGd/WvEMD42tBSLLWHZHtS2uU
KykRMKF9TMjBko2J1usbH41ye2j5a/ubelF180cqOOdjGD+3hZ9V7CYqcEAS8zVX
CRdNEpBGVl8EDKzzcnJAR1+cjxdUAO3bC0vtcN1HD+71ut9ZN6hc5SyMvBTL2/FU
1m9eFraFsZ2Jpr4U0N4/N/LTdSmjTw==
=I6tW
-----END PGP SIGNATURE-----

--ALfTUftag+2gvp1h--


--===============1013319262949368171==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1013319262949368171==--

