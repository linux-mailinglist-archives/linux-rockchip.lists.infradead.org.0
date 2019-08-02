Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 388117FE77
	for <lists+linux-rockchip@lfdr.de>; Fri,  2 Aug 2019 18:17:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZV6vcxHvn+TTM6Flvq4nuQBE9mJZrtCFyM1Jc1EDcP0=; b=QIMBN9K04gzFOi
	k6OMtke8AGOVd7PnsWpXp8fR5GUuc0n2ymcFpM2k0+6aBwn40uiOO48DHLkE+YxigxvNFTMYj0Sxk
	t3vYGxg3zHENveorkuk/qAMfAUFLKREimDymm8/caHUaVQJtM/aQaSojoiG/Wf8D7VWIRtN3r3o1J
	QlapJsfzI+l8tzJAKxTI2nzdIWkTwzWCxsJ/596H2b16qZBZrXNS2cY/Er45vuiMqdHwIzGouLx7Q
	csg2P6fpVDYsEJ7D+tq56JdrroTm2ems6pCMTefTFbpv2Z/2Ur7AGgCI9DyCAl04ZuVJ8e7WWan40
	KGcxjd7bgru/ub83PEFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htaFI-00021v-Od; Fri, 02 Aug 2019 16:17:32 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htaF9-0001sN-EV; Fri, 02 Aug 2019 16:17:25 +0000
X-Originating-IP: 90.76.143.236
Received: from localhost (lfbn-1-2078-236.w90-76.abo.wanadoo.fr
 [90.76.143.236]) (Authenticated sender: antoine.tenart@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id E0A5DFF807;
 Fri,  2 Aug 2019 16:17:03 +0000 (UTC)
Date: Fri, 2 Aug 2019 18:17:01 +0200
From: Antoine Tenart <antoine.tenart@bootlin.com>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next 05/12] crypto: inside-secure - use
 devm_platform_ioremap_resource() to simplify code
Message-ID: <20190802161701.GD14470@kwain>
References: <20190802132809.8116-1-yuehaibing@huawei.com>
 <20190802132809.8116-6-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190802132809.8116-6-yuehaibing@huawei.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_091723_649379_30DB39B7 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: heiko@sntech.de, gary.hook@amd.com, clabbe.montjoie@gmail.com,
 linux-arm-kernel@axis.com, jamie@jamieiles.com,
 linux-stm32@st-md-mailman.stormreply.com, jesper.nilsson@axis.com,
 linux-samsung-soc@vger.kernel.org, herbert@gondor.apana.org.au,
 krzk@kernel.org, linux-rockchip@lists.infradead.org, wens@csie.org,
 agross@kernel.org, thomas.lendacky@amd.com, alexandre.torgue@st.com,
 antoine.tenart@bootlin.com, linux-arm-msm@vger.kernel.org, mripard@kernel.org,
 linux-mediatek@lists.infradead.org, lars.persson@axis.com,
 matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-crypto@vger.kernel.org,
 mcoquelin.stm32@gmail.com, kgene@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hello,

On Fri, Aug 02, 2019 at 09:28:02PM +0800, YueHaibing wrote:
> Use devm_platform_ioremap_resource() to simplify the code a bit.
> This is detected by coccinelle.
> =

> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Acked-by: Antoine Tenart <antoine.tenart@bootlin.com>

Thanks,
Antoine

> ---
>  drivers/crypto/inside-secure/safexcel.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> =

> diff --git a/drivers/crypto/inside-secure/safexcel.c b/drivers/crypto/ins=
ide-secure/safexcel.c
> index d1f60fd..822744d 100644
> --- a/drivers/crypto/inside-secure/safexcel.c
> +++ b/drivers/crypto/inside-secure/safexcel.c
> @@ -999,7 +999,6 @@ static void safexcel_init_register_offsets(struct saf=
excel_crypto_priv *priv)
>  static int safexcel_probe(struct platform_device *pdev)
>  {
>  	struct device *dev =3D &pdev->dev;
> -	struct resource *res;
>  	struct safexcel_crypto_priv *priv;
>  	int i, ret;
>  =

> @@ -1015,8 +1014,7 @@ static int safexcel_probe(struct platform_device *p=
dev)
>  =

>  	safexcel_init_register_offsets(priv);
>  =

> -	res =3D platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	priv->base =3D devm_ioremap_resource(dev, res);
> +	priv->base =3D devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(priv->base)) {
>  		dev_err(dev, "failed to get resource\n");
>  		return PTR_ERR(priv->base);
> -- =

> 2.7.4
> =

> =


-- =

Antoine T=E9nart, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
