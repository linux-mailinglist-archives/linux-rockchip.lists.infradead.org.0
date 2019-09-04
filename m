Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDB34A958F
	for <lists+linux-rockchip@lfdr.de>; Wed,  4 Sep 2019 23:51:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6a4IwCwnCT/RkDrbkms/VlGeXxXJ31a6lkY0CkFNkdo=; b=DAnmeuahMqcVE6
	DYm0tctbfREu6yNNNBVEkPxRGwZ14eBTc4Q3+Og6P8dYvfs0LzLnm0u52lx7APgYEyWKfSPpHNCy2
	2CNI68z9F0EaeTcbLgoLTuJXtSvmZMpZER36jgGABHRahPh4z53dMXDnb9NACsCNNgzoBg0QyzAlG
	vafa6L/em4KHCZ7yhBuhnQqDkhb9UgXPARyvm7HogI4wre6CkFpBBRxVPR7fwehlBQ8nvtHotD68o
	/cVKMvRg7M6SLLkcG1wRg0foEd3k2fLbpolsk1YCGU6+rSehuWDwdKjXt8jncRnaQ4gncyrQAaRDr
	SzL/dfv93bOLatCweBBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5dB3-0004Do-O3; Wed, 04 Sep 2019 21:50:57 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5dAq-00042C-FW
 for linux-rockchip@lists.infradead.org; Wed, 04 Sep 2019 21:50:47 +0000
Received: by mail-pf1-x444.google.com with SMTP id h195so167894pfe.5
 for <linux-rockchip@lists.infradead.org>; Wed, 04 Sep 2019 14:50:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=8+W3OmsE39CBrAqbMD2zucygtqzvFfD25TTwncsech0=;
 b=GjpcQGU018si9YdNfH37M4Jo6uFHTdY0pqnKW1bI2T4aZO3/19Jl5FH8QdTr0Txf8r
 lbdktBIKjY2hxc0z7a5SHCBYbyQppUU8ZGyzcF8t2+flQ2Lwlaci+p+gktP+EW6EDqmr
 7s3ugo5oTSkkJtiu8ZB2vHh7nTcCkJZ54OVg2D6VObo1g+/f028Cz07rHoklB10LETyV
 dFLuT9gELB49hdOz0T2z4JW8dQv635Vj0nXxpecfeEsOaJpbIBJvSdsZWsjU0QjyIfUH
 6VYX5tAcR4yuR3xTSFjlWWV60la4AcfUIWbgbdwQcCg1cQrBM60/vQn9sZI9Ky7KMt6T
 2ZMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8+W3OmsE39CBrAqbMD2zucygtqzvFfD25TTwncsech0=;
 b=RNf+Ym+y0VXDYWkfbf9HBzkCqRrBa2TSstKVWB41n3/qz94G7aWJfBPCm9Dp5rwpwP
 jYkfpm9JTzA9I5RtuvRuH543PFvwJK+5RyJIBJZCL8gPA6X1q1CcRvLygRUpB/yhk3lu
 PiWufH6M+UIMJy1vuHXviCxsTpjvApWq3fP2ik64VQq4aqtcom3VDk7ubhRIFW1RsrrZ
 qVvW4VvFQ9DD0/ozvi0kuc7IyEeQYiZwcje05MfEOklpxbR+EHx/oguSRb+dEHEzgPyg
 iIuIoURqaGHizkKZU1VUtbg+2a57QDT0JokEDkh4ahzJfP4AmMO9E9Y+HfnRzhYHcaXL
 4I4Q==
X-Gm-Message-State: APjAAAVxM80Uu/tiGFQPwnxCyJBRfuXFe5UtmDpDDjDtb+Kuf5eu0Ny6
 TkNokC6gecNrOGuoPVwIvwqzjw==
X-Google-Smtp-Source: APXvYqznFPRSJgh/JgdkRzej7oU2uH6AV2QPDQ8rDqB3T60xWU5jKILyc014vwXgwi8/8ui1HTj0dw==
X-Received: by 2002:a17:90a:cc0c:: with SMTP id
 b12mr375908pju.138.1567633843429; 
 Wed, 04 Sep 2019 14:50:43 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id w2sm88618pgc.32.2019.09.04.14.50.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Sep 2019 14:50:42 -0700 (PDT)
Date: Wed, 4 Sep 2019 14:50:39 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next 08/15] thermal: tsens: use
 devm_platform_ioremap_resource() to simplify code
Message-ID: <20190904215039.GG580@tuxbook-pro>
References: <20190904122939.23780-1-yuehaibing@huawei.com>
 <20190904122939.23780-9-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190904122939.23780-9-yuehaibing@huawei.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_145044_520343_8F7C649B 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mans@mansr.com, mmayer@broadcom.com, eric@anholt.net,
 miquel.raynal@bootlin.com, linux-stm32@st-md-mailman.stormreply.com,
 heiko@sntech.de, amit.kucheria@verdurent.com, f.fainelli@gmail.com,
 daniel.lezcano@linaro.org, phil@raspberrypi.org,
 linux-rockchip@lists.infradead.org, agross@kernel.org,
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed 04 Sep 05:29 PDT 2019, YueHaibing wrote:

> Use devm_platform_ioremap_resource() to simplify the code a bit.
> This is detected by coccinelle.
> 

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
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
>  	void __iomem *tm_base, *srot_base;
>  	struct device *dev = priv->dev;
> -	struct resource *res;
>  	u32 enabled;
>  	int ret, i, j;
>  	struct platform_device *op = of_find_device_by_node(priv->dev->of_node);
> @@ -166,8 +165,7 @@ int __init init_common(struct tsens_priv *priv)
>  	if (op->num_resources > 1) {
>  		/* DT with separate SROT and TM address space */
>  		priv->tm_offset = 0;
> -		res = platform_get_resource(op, IORESOURCE_MEM, 1);
> -		srot_base = devm_ioremap_resource(&op->dev, res);
> +		srot_base = devm_platform_ioremap_resource(op, 1);
>  		if (IS_ERR(srot_base)) {
>  			ret = PTR_ERR(srot_base);
>  			goto err_put_device;
> @@ -184,8 +182,7 @@ int __init init_common(struct tsens_priv *priv)
>  		priv->tm_offset = 0x1000;
>  	}
>  
> -	res = platform_get_resource(op, IORESOURCE_MEM, 0);
> -	tm_base = devm_ioremap_resource(&op->dev, res);
> +	tm_base = devm_platform_ioremap_resource(op, 0);
>  	if (IS_ERR(tm_base)) {
>  		ret = PTR_ERR(tm_base);
>  		goto err_put_device;
> -- 
> 2.7.4
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
