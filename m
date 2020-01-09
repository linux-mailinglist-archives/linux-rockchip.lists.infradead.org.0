Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 411D613580B
	for <lists+linux-rockchip@lfdr.de>; Thu,  9 Jan 2020 12:32:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j92b2zcA3jW6PbC2EL0ptW7ZjPe7ocnWi7Wa9jOylfk=; b=IHo/VqKyUB3v+i
	CrQIvyISyxDHOUkkS8ainL2a/1jXb4ViSJalZ9ZsZIwC9vRkeb2LxXRmbAy2g1MvDFG0EtuRzde0s
	xbP0u2+L5aQ65xima2ConBXkLoWagSisSTlr8OMtuphQIeF3PrGdOTt3TKmhqv8czkan66syl2EY+
	uG0ITQ39nACcoxYVtwrC4m9DUnWCbZWSJsfWoXjEq7tWiGZKGnMUdgCGAz95VA9CS3LMsEA+zRngD
	YDWXvVNsoBafVLOBrSUzFaJ+48weRKDkWhss7ZXRemiBYlXr+3GxHxtcmbeCDg4iTenBwASLtC7BF
	gWO5+zmy9wPqfJpzB1YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipW2v-0007wH-2l; Thu, 09 Jan 2020 11:32:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipW2b-0007fw-JX; Thu, 09 Jan 2020 11:31:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 04B3C328;
 Thu,  9 Jan 2020 03:31:53 -0800 (PST)
Received: from [10.1.194.52] (e112269-lin.cambridge.arm.com [10.1.194.52])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B627A3F871;
 Thu,  9 Jan 2020 03:31:51 -0800 (PST)
Subject: Re: [PATCH RFT v1 2/3] drm/panfrost: call
 dev_pm_opp_of_remove_table() in all error-paths
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 dri-devel@lists.freedesktop.org, alyssa@rosenzweig.io,
 tomeu.vizoso@collabora.com, robh@kernel.org
References: <20200107230626.885451-1-martin.blumenstingl@googlemail.com>
 <20200107230626.885451-3-martin.blumenstingl@googlemail.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <394ef595-198a-3cd1-968e-2182098da92a@arm.com>
Date: Thu, 9 Jan 2020 11:31:50 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200107230626.885451-3-martin.blumenstingl@googlemail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_033153_700767_3DACEE88 
X-CRM114-Status: GOOD (  14.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: airlied@linux.ie, linux-rockchip@lists.infradead.org, robin.murphy@arm.com,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 07/01/2020 23:06, Martin Blumenstingl wrote:
> If devfreq_recommended_opp() fails we need to undo
> dev_pm_opp_of_add_table() by calling dev_pm_opp_of_remove_table() (just
> like we do it in the other error-path below).
> 
> Fixes: f3ba91228e8e91 ("drm/panfrost: Add initial panfrost driver")
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

Reviewed-by: Steven Price <steven.price@arm.com>

> ---
>  drivers/gpu/drm/panfrost/panfrost_devfreq.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/panfrost/panfrost_devfreq.c b/drivers/gpu/drm/panfrost/panfrost_devfreq.c
> index 1471588763ce..170f6c8c9651 100644
> --- a/drivers/gpu/drm/panfrost/panfrost_devfreq.c
> +++ b/drivers/gpu/drm/panfrost/panfrost_devfreq.c
> @@ -93,8 +93,10 @@ int panfrost_devfreq_init(struct panfrost_device *pfdev)
>  	cur_freq = clk_get_rate(pfdev->clock);
>  
>  	opp = devfreq_recommended_opp(dev, &cur_freq, 0);
> -	if (IS_ERR(opp))
> +	if (IS_ERR(opp)) {
> +		dev_pm_opp_of_remove_table(dev);
>  		return PTR_ERR(opp);
> +	}
>  
>  	panfrost_devfreq_profile.initial_freq = cur_freq;
>  	dev_pm_opp_put(opp);
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
