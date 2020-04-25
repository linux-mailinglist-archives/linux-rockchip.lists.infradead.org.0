Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 923221B88EA
	for <lists+linux-rockchip@lfdr.de>; Sat, 25 Apr 2020 21:28:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RMiBI5Yic2z/TGtEQK6+XwASEOiM2xa96KsSlhRDZH4=; b=CVjEeT6qjrn2BM
	iiF/pHRReZyMF2rVI7MsxcZ1zlp0WerYKyEF4HyJDmAS4v1oFuB6bCsgZznhda6O1asTrJkdizjXt
	pgt03i6SC3EFNQQ84ldkFThTLvQVcT/6C/atvI982vKKGnz0krYtyo7b97miFSlR96XCGOe3mXRQX
	3meIQPpzaM5tfZNgckxXrClsVxNIT6Ebpr1CR8ddYe+jNXtfCgdyO/Yoj3kjlHVptp+6hP+LJa3Rs
	ubYGJqA+RAGTy1C8WvRvziXr6i4PUVQa8ZmaiKcgZcr9PvLrnMvy75aql4yVkuL9my4sLyqoPtOEE
	b+lwGEKl/CjFJ0yTLfgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSQTr-00006N-BT; Sat, 25 Apr 2020 19:28:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSQTn-000050-LD
 for linux-rockchip@lists.infradead.org; Sat, 25 Apr 2020 19:28:49 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7E8FC20714;
 Sat, 25 Apr 2020 19:28:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587842927;
 bh=uqZb4Ri4kMh3j89fFdv3gFVALSHGMTlVnWc6qy4vE2Q=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=qtctqnX4EHzmCto6jcsMonOxY4SxrquUKXdxJmFtOtGUL5vzo1Y76wHQyRNfObhi8
 npvSjdjNG8wjbnvLRJ3rUmcCvkQLaCNY967BvYHKmiKFvYYO4bbx7imX+xdJu2IVcu
 UCOgM3x9eZpNeWBGWgOkXQ4fK7hEKGeg7mjRgqGc=
Date: Sat, 25 Apr 2020 20:28:42 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v5 1/3] iio: adc: rockchip_saradc: move all of probe to
 devm-functions
Message-ID: <20200425202842.41a2c7e2@archlinux>
In-Reply-To: <20200419100207.58108-1-heiko@sntech.de>
References: <20200419100207.58108-1-heiko@sntech.de>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_122847_737840_76E83389 
X-CRM114-Status: GOOD (  20.84  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: lars@metafoo.de, xxm@rock-chips.com, linux-iio@vger.kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 linux-kernel@vger.kernel.org, kever.yang@rock-chips.com,
 linux-rockchip@lists.infradead.org, pmeerw@pmeerw.net, knaack.h@gmx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Sun, 19 Apr 2020 12:02:05 +0200
Heiko Stuebner <heiko@sntech.de> wrote:

> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> Parts of the saradc probe rely on devm functions and later parts do not.
> This makes it more difficult to for example enable triggers via their
> devm-functions and would need more undo-work in remove.
> 
> So to make life easier for the driver, move the rest of probe calls
> also to their devm-equivalents.
> 
> This includes moving the clk- and regulator-disabling to a devm_action
> so that they gets disabled both during remove and in the error case
> in probe, after the action is registered.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> ---
> changes in v5:
> - none
> changes in v4:
> - new patch as suggested by Jonathan
> 
>  drivers/iio/adc/rockchip_saradc.c | 37 ++++++++++++++++---------------
>  1 file changed, 19 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
> index 582ba047c4a6..270eb7e83823 100644
> --- a/drivers/iio/adc/rockchip_saradc.c
> +++ b/drivers/iio/adc/rockchip_saradc.c
> @@ -193,6 +193,15 @@ static void rockchip_saradc_reset_controller(struct reset_control *reset)
>  	reset_control_deassert(reset);
>  }
>  
> +static void rockchip_saradc_disable(void *data)
> +{
> +	struct rockchip_saradc *info = data;
> +
> +	clk_disable_unprepare(info->clk);
> +	clk_disable_unprepare(info->pclk);
> +	regulator_disable(info->vref);

You should do these independently.  If you use
a separate devm_add_action_or_reset you can drop the error handling
in probe because that will all be cleaned up automatically as well.

Right now you have a nasty hybrid of managed and unmanaged needing
manual cleanup in some paths.

It will take a few more lines of code, but it will be a lot easier
to review / maintain.

Jonathan


> +}
> +
>  static int rockchip_saradc_probe(struct platform_device *pdev)
>  {
>  	struct rockchip_saradc *info = NULL;
> @@ -304,6 +313,14 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
>  		goto err_pclk;
>  	}
>  
> +	ret = devm_add_action_or_reset(&pdev->dev,
> +				       rockchip_saradc_disable, info);
> +	if (ret) {
> +		dev_err(&pdev->dev, "failed to register devm action, %d\n",
> +			ret);
> +		return ret;
> +	}
> +
>  	platform_set_drvdata(pdev, indio_dev);
>  
>  	indio_dev->name = dev_name(&pdev->dev);
> @@ -315,14 +332,12 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
>  	indio_dev->channels = info->data->channels;
>  	indio_dev->num_channels = info->data->num_channels;
>  
> -	ret = iio_device_register(indio_dev);
> +	ret = devm_iio_device_register(&pdev->dev, indio_dev);
>  	if (ret)
> -		goto err_clk;
> +		return ret;
>  
>  	return 0;
>  
> -err_clk:
> -	clk_disable_unprepare(info->clk);
>  err_pclk:
>  	clk_disable_unprepare(info->pclk);

>  err_reg_voltage:
> @@ -330,19 +345,6 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
>  	return ret;
>  }
>  
> -static int rockchip_saradc_remove(struct platform_device *pdev)
> -{
> -	struct iio_dev *indio_dev = platform_get_drvdata(pdev);
> -	struct rockchip_saradc *info = iio_priv(indio_dev);
> -
> -	iio_device_unregister(indio_dev);
> -	clk_disable_unprepare(info->clk);
> -	clk_disable_unprepare(info->pclk);
> -	regulator_disable(info->vref);
> -
> -	return 0;
> -}
> -
>  #ifdef CONFIG_PM_SLEEP
>  static int rockchip_saradc_suspend(struct device *dev)
>  {
> @@ -383,7 +385,6 @@ static SIMPLE_DEV_PM_OPS(rockchip_saradc_pm_ops,
>  
>  static struct platform_driver rockchip_saradc_driver = {
>  	.probe		= rockchip_saradc_probe,
> -	.remove		= rockchip_saradc_remove,
>  	.driver		= {
>  		.name	= "rockchip-saradc",
>  		.of_match_table = rockchip_saradc_match,


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
