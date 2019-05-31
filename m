Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA67F30EED
	for <lists+linux-rockchip@lfdr.de>; Fri, 31 May 2019 15:35:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gS90Erh9xk6LbpRKh0zsCt6O+BmQu9eQh0VrACJ35m4=; b=Y96MqMH/UoT59V
	i7+enbM0NoXnaQH3QvD/O5uxNQsQd3LzeKKHktvtHunTSBbNc5eZ6DHqHUZ4y8NUoAEoYmfT3h+Yf
	WBfU4c/SNC0e939d1mM9yTJVhAj6z/vcrTwTXHPFKzbofBQ4O+T9rfdZjWdIieDdQM5IE62fGtqwv
	s1IqfJc3ICWncqZWbq/Nx43R5cYMoYD52qdNZZk2aFEACP5eAIMRAOUF8VR+npUPK1xmOUKFPYL+c
	y3De0c7CNkQqvMuFy3GgSwU7zUSvSM3RXVnCxDeOxOIhmZgzy934eY/8C0oy2UR6aWyYFhFqf1ahZ
	ULMStiw7Xbs7CUxFLHaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWhgh-00021y-5A; Fri, 31 May 2019 13:35:15 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWhge-00021B-5f
 for linux-rockchip@lists.infradead.org; Fri, 31 May 2019 13:35:13 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 77D14284F2D
Message-ID: <58407c4af8e08aa756c245ac571f12a80ede5f35.camel@collabora.com>
Subject: Re: [PATCH] drm/panfrost: make devfreq optional again
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Neil Armstrong <narmstrong@baylibre.com>, robh@kernel.org, 
 tomeu.vizoso@collabora.com
Date: Fri, 31 May 2019 10:34:59 -0300
In-Reply-To: <20190531123746.613-1-narmstrong@baylibre.com>
References: <20190531123746.613-1-narmstrong@baylibre.com>
Organization: Collabora
User-Agent: Evolution 3.30.5-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_063512_347858_F1A20E63 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, 2019-05-31 at 14:37 +0200, Neil Armstrong wrote:
> Devfreq runtime usage was made mandatory, thus making panfrost fail to probe
> on Amlogic S912 SoCs missin the "operating-points-v2" property.
> Make it optional again, leaving PM_DEVFREQ is selected by default.
> 
> Fixes: f3617b449d ("drm/panfrost: Select devfreq")
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  drivers/gpu/drm/panfrost/panfrost_devfreq.c | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/panfrost/panfrost_devfreq.c b/drivers/gpu/drm/panfrost/panfrost_devfreq.c
> index 29fcffdf2d57..dc75f99ad53b 100644
> --- a/drivers/gpu/drm/panfrost/panfrost_devfreq.c
> +++ b/drivers/gpu/drm/panfrost/panfrost_devfreq.c
> @@ -140,7 +140,9 @@ int panfrost_devfreq_init(struct panfrost_device *pfdev)
>  		return 0;
>  
>  	ret = dev_pm_opp_of_add_table(&pfdev->pdev->dev);
> -	if (ret)
> +	if (ret == -ENODEV) /* Optional, continue without devfreq */
> +		return 0;
> +	else
>  		return ret;
>  
>  	panfrost_devfreq_reset(pfdev);
> @@ -170,6 +172,9 @@ void panfrost_devfreq_resume(struct panfrost_device *pfdev)
>  {
>  	int i;
>  
> +	if (!pfdev->devfreq.devfreq)
> +		return;
> +
>  	panfrost_devfreq_reset(pfdev);
>  	for (i = 0; i < NUM_JOB_SLOTS; i++)
>  		pfdev->devfreq.slot[i].busy = false;
> @@ -179,6 +184,9 @@ void panfrost_devfreq_resume(struct panfrost_device *pfdev)
>  
>  void panfrost_devfreq_suspend(struct panfrost_device *pfdev)
>  {
> +	if (!pfdev->devfreq.devfreq)
> +		return;
> +
>  	devfreq_suspend_device(pfdev->devfreq.devfreq);
>  }
>  
> @@ -188,6 +196,9 @@ static void panfrost_devfreq_update_utilization(struct panfrost_device *pfdev, i
>  	ktime_t now;
>  	ktime_t last;
>  
> +	if (!pfdev->devfreq.devfreq)
> +		return;
> +
>  	now = ktime_get();
>  	last = pfdev->devfreq.slot[slot].time_last_update;
>  

This patch should also fix RK3288 platforms, which at the moment are broken
as well by my patch.

I will test and confirm next week.

Thanks for the fix,
Ezequiel 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
