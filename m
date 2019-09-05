Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5EA8A9A69
	for <lists+linux-rockchip@lfdr.de>; Thu,  5 Sep 2019 08:15:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5q7sw+44C4HHykDnns64rBVaCs9AFlwlkdjQoDUqbsE=; b=o9XIYeQAIE6lqo
	CxGvGQ3n4tLDUNZzpfzHyqPNqOcL5Lbc6fwqZ+R5AJSyC7/CdWw2nH4JWKHheGcHWwzhgZKTHbByz
	0NdaFYGejMBUuX3d0ArkTuGIPGcC7sKHiQkYVmuvzdv1Q5Vv7Du9E48NaCUfIEjPSMR2vajA4O7dY
	nkXB1HR2lQybLIEUnvovYYqxoZZTWRXJpKC/QJKgNpngphfVYNyTTc6b7yubLsH1TqrGstTdCgRMK
	ZGcvN2kMalxfw08yI64ltJ+Zo7obj0wzmKSvtJPlAipvvmnzpfyoV54T7usHTR6uEEkcRknNgsLy4
	9bUR4K6rwEPj0r1OYXUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5l3c-0008DD-MY; Thu, 05 Sep 2019 06:15:48 +0000
Received: from mail-vk1-xa41.google.com ([2607:f8b0:4864:20::a41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5l3Y-0008Bt-6o
 for linux-rockchip@lists.infradead.org; Thu, 05 Sep 2019 06:15:45 +0000
Received: by mail-vk1-xa41.google.com with SMTP id q186so231772vkb.0
 for <linux-rockchip@lists.infradead.org>; Wed, 04 Sep 2019 23:15:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Lxv2YjVDy5w6AQ+Z95Jd1OHt1865rQWbHzl1H0ckHb4=;
 b=IurRXFpodLHrXjhNeDu0PBjJR6aKmlNT/dzeEONMU1V5mjYfCIsKTQIXkLXspZuRLT
 SO2IeUW73ig0y4hTpIc1LeJScYwe/7jF3x1ItS7fkoJd9YSTWsUH2sI/3COuK4II6o/r
 +Kj20DSoITETteLabp2V7jA4ju9DbWda2nuGTSuEzhZ1KGohbqZEVKqkpRJCAhcLSXD9
 kEdWKNMJEgbkZzacsvDJtyDbgG7jhbcfx/K1U5vEhgoviC+KwrwJF0gUE3d7mSshVMHg
 A0LYcz1miwyWZt1OUA9B7KkZFPklzUWf8pMOs0ddGs8nwCkutop0K9qwCxD0ooyRsoi+
 ohUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Lxv2YjVDy5w6AQ+Z95Jd1OHt1865rQWbHzl1H0ckHb4=;
 b=Qq0LRsuIl+qv1KHP8Jp8vQbVSK4v77SiXbHP/7TIE9uxVwvyvCUUGLsPkWD/wBKmRH
 IB48JGtnP8G+VtdMjpY7FySnSbSbF/TLQXzDMxK8Von0ybYipcI/nYUsXzmbn67b/3MI
 B+jdXgUTw1EFVNCyn6nx1SiQrOftB2oBTmElyc3VM+F3txwLiemOs1Ll1s3anOPPEzgV
 bKowE0YnB/dE8ezHF+bQJqRS7b7K0bTsIwI/iZ7mQ8M8vM1rcydRxzImbannkrDwk1sZ
 oE41EdinknxP/H6ca9UECJEQVff+kOlW3HwM+JW8jzf7F7QROI0YM6Lw+aDwL6BiI30b
 DWHQ==
X-Gm-Message-State: APjAAAW83DQySlM1cfJOyvFV+sXLqkWK2pnP6y5/b0S/XfwvUpEprybW
 Fl6oyFbrqVmcFqHHBhtV8eJX4tytC8dkUWrWTDmPgw==
X-Google-Smtp-Source: APXvYqwVi7szQ+w3nsCf0zPQZyYdR4HeVO1GXvtz/sWMMhtS2v2QWLsWh3Ip3Jb3oWwBQ9pfzHwoVyT/iOmN8ovRJtE=
X-Received: by 2002:a1f:4981:: with SMTP id w123mr690507vka.13.1567664142296; 
 Wed, 04 Sep 2019 23:15:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190904122939.23780-1-yuehaibing@huawei.com>
 <20190904122939.23780-9-yuehaibing@huawei.com>
In-Reply-To: <20190904122939.23780-9-yuehaibing@huawei.com>
From: Amit Kucheria <amit.kucheria@linaro.org>
Date: Thu, 5 Sep 2019 11:45:30 +0530
Message-ID: <CAHLCerOVuNEAkCggBoDU4NgbzhTVxpdJXeTXVrTs5tp7ZVtSMg@mail.gmail.com>
Subject: Re: [PATCH -next 08/15] thermal: tsens: use
 devm_platform_ioremap_resource() to simplify code
To: YueHaibing <yuehaibing@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_231544_255066_A71716F7 
X-CRM114-Status: GOOD (  14.99  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a41 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mans@mansr.com, Markus Mayer <mmayer@broadcom.com>,
 Eric Anholt <eric@anholt.net>, miquel.raynal@bootlin.com,
 linux-stm32@st-md-mailman.stormreply.com, Heiko Stuebner <heiko@sntech.de>,
 f.fainelli@gmail.com, Daniel Lezcano <daniel.lezcano@linaro.org>,
 phil@raspberrypi.org, linux-rockchip@lists.infradead.org,
 Andy Gross <agross@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 david.hernandezsanchez@st.com, alexandre.torgue@st.com,
 Marc Gonzalez <marc.w.gonzalez@free.fr>, rjui@broadcom.com,
 Eduardo Valentin <edubezval@gmail.com>, linux-mediatek@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org, gregory.0xf0@gmail.com,
 Matthias Brugger <matthias.bgg@gmail.com>, horms+renesas@verge.net.au,
 talel@amazon.com, lakml <linux-arm-kernel@lists.infradead.org>,
 sbranden@broadcom.com, wsa+renesas@sang-engineering.com,
 gregkh@linuxfoundation.org, Linux PM list <linux-pm@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, wahrenst@gmx.net,
 mcoquelin.stm32@gmail.com, Jun Nie <jun.nie@linaro.org>,
 computersforpeace@gmail.com, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, Sep 4, 2019 at 6:05 PM YueHaibing <yuehaibing@huawei.com> wrote:
>
> Use devm_platform_ioremap_resource() to simplify the code a bit.
> This is detected by coccinelle.
>
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Acked-by: Amit Kucheria <amit.kucheria@linaro.org>

> ---
>  drivers/thermal/qcom/tsens-common.c | 7 ++-----
>  1 file changed, 2 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/thermal/qcom/tsens-common.c b/drivers/thermal/qcom/tsens-common.c
> index 528df88..43ce4fb 100644
> --- a/drivers/thermal/qcom/tsens-common.c
> +++ b/drivers/thermal/qcom/tsens-common.c
> @@ -155,7 +155,6 @@ int __init init_common(struct tsens_priv *priv)
>  {
>         void __iomem *tm_base, *srot_base;
>         struct device *dev = priv->dev;
> -       struct resource *res;
>         u32 enabled;
>         int ret, i, j;
>         struct platform_device *op = of_find_device_by_node(priv->dev->of_node);
> @@ -166,8 +165,7 @@ int __init init_common(struct tsens_priv *priv)
>         if (op->num_resources > 1) {
>                 /* DT with separate SROT and TM address space */
>                 priv->tm_offset = 0;
> -               res = platform_get_resource(op, IORESOURCE_MEM, 1);
> -               srot_base = devm_ioremap_resource(&op->dev, res);
> +               srot_base = devm_platform_ioremap_resource(op, 1);
>                 if (IS_ERR(srot_base)) {
>                         ret = PTR_ERR(srot_base);
>                         goto err_put_device;
> @@ -184,8 +182,7 @@ int __init init_common(struct tsens_priv *priv)
>                 priv->tm_offset = 0x1000;
>         }
>
> -       res = platform_get_resource(op, IORESOURCE_MEM, 0);
> -       tm_base = devm_ioremap_resource(&op->dev, res);
> +       tm_base = devm_platform_ioremap_resource(op, 0);
>         if (IS_ERR(tm_base)) {
>                 ret = PTR_ERR(tm_base);
>                 goto err_put_device;
> --
> 2.7.4
>
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
