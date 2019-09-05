Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2BAAA0EC
	for <lists+linux-rockchip@lfdr.de>; Thu,  5 Sep 2019 13:07:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hvt+nSUtfmahUPsR6E2i9UK7guu6kNmYMFQBjtMFEEI=; b=bI2rioSvAnfM9R
	2SD23rYy1TZ4q4JK6HeYJmUNm9FRMg1uvZY/7Zbaziu0yBYOCV+EbBiq7CfKDKCqHfeG55esDmo74
	kZ6WilKouJxd8JH4EZdZr9cvEJ27Lum5aX8puS5G/bvyfNTUPxuJ7QBECqGKmtOf8f3JSOKc8plne
	fs6vNFxROINVVxg/1hF+pUsWH74lej+VTtnlS4SJXG7r8UvYlWoBIK9b1rACD9n9ag/Ze+TjMllf1
	B3D+j9UPnzODWJvO6/m4n+J/9CMCfII3sm4djVdkT7EBKJ4T3bEvnrSxeZuTnZ9VU8rASFZ7VTXie
	A00QIXrV6DKLJIr5RVhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5pcF-00067p-F7; Thu, 05 Sep 2019 11:07:51 +0000
Received: from unicorn.mansr.com ([2001:8b0:ca0d:8d8e::2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5pbb-0005rJ-Ae; Thu, 05 Sep 2019 11:07:12 +0000
Received: by unicorn.mansr.com (Postfix, from userid 51770)
 id B3B4B17FE3; Thu,  5 Sep 2019 12:06:54 +0100 (BST)
From: =?iso-8859-1?Q?M=E5ns_Rullg=E5rd?= <mans@mansr.com>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next 12/15] thermal: tango: use
 devm_platform_ioremap_resource() to simplify code
References: <20190904122939.23780-1-yuehaibing@huawei.com>
 <20190904122939.23780-13-yuehaibing@huawei.com>
Date: Thu, 05 Sep 2019 12:06:54 +0100
In-Reply-To: <20190904122939.23780-13-yuehaibing@huawei.com>
 (yuehaibing@huawei.com's message of "Wed, 4 Sep 2019 20:29:36 +0800")
Message-ID: <yw1xmufj6lyp.fsf@mansr.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/25.3 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_040711_573069_B150DCCF 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mmayer@broadcom.com, eric@anholt.net, miquel.raynal@bootlin.com,
 linux-stm32@st-md-mailman.stormreply.com, heiko@sntech.de,
 amit.kucheria@verdurent.com, f.fainelli@gmail.com, daniel.lezcano@linaro.org,
 phil@raspberrypi.org, linux-rockchip@lists.infradead.org, agross@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-msm@vger.kernel.org,
 rui.zhang@intel.com, david.hernandezsanchez@st.com, alexandre.torgue@st.com,
 marc.w.gonzalez@free.fr, rjui@broadcom.com, edubezval@gmail.com,
 linux-mediatek@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 gregory.0xf0@gmail.com, matthias.bgg@gmail.com, horms+renesas@verge.net.au,
 talel@amazon.com, linux-arm-kernel@lists.infradead.org, sbranden@broadcom.com,
 wsa+renesas@sang-engineering.com, gregkh@linuxfoundation.org,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, wahrenst@gmx.net,
 mcoquelin.stm32@gmail.com, jun.nie@linaro.org, computersforpeace@gmail.com,
 shawnguo@kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

YueHaibing <yuehaibing@huawei.com> writes:

> Use devm_platform_ioremap_resource() to simplify the code a bit.
> This is detected by coccinelle.
>
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Acked-by: Mans Rullgard <mans@mansr.com>

> ---
>  drivers/thermal/tango_thermal.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/thermal/tango_thermal.c b/drivers/thermal/tango_ther=
mal.c
> index 304b461..f44441b 100644
> --- a/drivers/thermal/tango_thermal.c
> +++ b/drivers/thermal/tango_thermal.c
> @@ -73,7 +73,6 @@ static void tango_thermal_init(struct tango_thermal_pri=
v *priv)
>
>  static int tango_thermal_probe(struct platform_device *pdev)
>  {
> -	struct resource *res;
>  	struct tango_thermal_priv *priv;
>  	struct thermal_zone_device *tzdev;
>
> @@ -81,8 +80,7 @@ static int tango_thermal_probe(struct platform_device *=
pdev)
>  	if (!priv)
>  		return -ENOMEM;
>
> -	res =3D platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	priv->base =3D devm_ioremap_resource(&pdev->dev, res);
> +	priv->base =3D devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(priv->base))
>  		return PTR_ERR(priv->base);
>
> -- =

> 2.7.4
>

-- =

M=E5ns Rullg=E5rd

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
