Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71916D003E
	for <lists+linux-rockchip@lfdr.de>; Tue,  8 Oct 2019 19:58:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cx5T/H5yu5vCd371zy4H2RmOIya4LLA8CWqO7Vg5XqU=; b=W79PBIGW+37YdK
	1rjWT7QGe60gfQD0g2C54MofUDPeloZ+Q57ZGZ4e4j2LfzsX+DelikNXr3vkO8ofnHzokaw1cLrl2
	KMzKogHaNpKOfiRIcQm7iLbQVdG5kVxpg1xN9QzmyArC3BwjPF+G3fqw6VLZ08mFybPshLEqaKzvI
	Uy1u5p/z4pUSX7KYz3iHCCuQnRcsN0m4GK3WavKiNmcxtRUw8kvY748YDKckKDlUd1OTHQQVkLZ8D
	Vgx0IsH2zH8Dq1f3wfCocGbqJOEN65HJnNF8beOxuPVHyxWCePvTl1Re7/VgGzaQmr6bMhMUSRXwV
	sSdi70WDydQgvw45+oAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHtki-0003Rn-8n; Tue, 08 Oct 2019 17:58:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHtke-0003Qk-4V; Tue, 08 Oct 2019 17:58:26 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iHtkV-0002h5-9E; Tue, 08 Oct 2019 19:58:15 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: Re: [PATCH] iommu/rockchip: Don't loop until failure to count
 interrupts
Date: Tue, 08 Oct 2019 19:58:14 +0200
Message-ID: <3132916.nyj3dfveGU@diego>
In-Reply-To: <20191008135843.30640-1-enric.balletbo@collabora.com>
References: <20191008135843.30640-1-enric.balletbo@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_105824_327894_AE139213 
X-CRM114-Status: GOOD (  18.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Joerg Roedel <joro@8bytes.org>, linux-kernel@vger.kernel.org,
 dianders@chromium.org, linux-rockchip@lists.infradead.org,
 iommu@lists.linux-foundation.org, mka@chromium.org, groeck@chromium.org,
 kernel@collabora.com, bleung@chromium.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Enric,

Am Dienstag, 8. Oktober 2019, 15:58:43 CEST schrieb Enric Balletbo i Serra:
> As platform_get_irq() now prints an error when the interrupt does not
> exist, counting interrupts by looping until failure causes the printing
> of scary messages like:
> 
>  rk_iommu ff924000.iommu: IRQ index 1 not found
>  rk_iommu ff914000.iommu: IRQ index 1 not found
>  rk_iommu ff903f00.iommu: IRQ index 1 not found
>  rk_iommu ff8f3f00.iommu: IRQ index 1 not found
>  rk_iommu ff650800.iommu: IRQ index 1 not found
> 
> Fix this by using the platform_irq_count() helper to avoid touching
> non-existent interrupts.

It looks like we did the same fix ... see my patch from september 25:
https://patchwork.kernel.org/patch/11161221/


> Fixes: 7723f4c5ecdb8d83 ("driver core: platform: Add an error message to platform_get_irq*()")
> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> ---
> 
>  drivers/iommu/rockchip-iommu.c | 35 +++++++++++++++++++++++-----------
>  1 file changed, 24 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
> index 26290f310f90..8c6318bd1b37 100644
> --- a/drivers/iommu/rockchip-iommu.c
> +++ b/drivers/iommu/rockchip-iommu.c
> @@ -1136,7 +1136,7 @@ static int rk_iommu_probe(struct platform_device *pdev)
>  	struct rk_iommu *iommu;
>  	struct resource *res;
>  	int num_res = pdev->num_resources;
> -	int err, i, irq;
> +	int err, i, irq, num_irqs;
>  
>  	iommu = devm_kzalloc(dev, sizeof(*iommu), GFP_KERNEL);
>  	if (!iommu)
> @@ -1219,20 +1219,28 @@ static int rk_iommu_probe(struct platform_device *pdev)
>  
>  	pm_runtime_enable(dev);
>  
> -	i = 0;
> -	while ((irq = platform_get_irq(pdev, i++)) != -ENXIO) {
> -		if (irq < 0)
> -			return irq;
> +	num_irqs = platform_irq_count(pdev);
> +	if (num_irqs < 0) {
> +		err = num_irqs;
> +		goto err_disable_pm_runtime;
> +	}

By moving the basic irq count above the pm_runtime_enable
you save some lines and the whole goto logic ... see my patch
for reference :-D

Heiko

> +
> +	for (i = 0; i < num_irqs; i++) {
> +		irq = platform_get_irq(pdev, i);
> +		if (irq < 0) {
> +			err = irq;
> +			goto err_disable_pm_runtime;
> +		}
>  
>  		err = devm_request_irq(iommu->dev, irq, rk_iommu_irq,
>  				       IRQF_SHARED, dev_name(dev), iommu);
> -		if (err) {
> -			pm_runtime_disable(dev);
> -			goto err_remove_sysfs;
> -		}
> +		if (err)
> +			goto err_disable_pm_runtime;
>  	}
>  
>  	return 0;
> +err_disable_pm_runtime:
> +	pm_runtime_disable(dev);
>  err_remove_sysfs:
>  	iommu_device_sysfs_remove(&iommu->iommu);
>  err_put_group:
> @@ -1245,10 +1253,15 @@ static int rk_iommu_probe(struct platform_device *pdev)
>  static void rk_iommu_shutdown(struct platform_device *pdev)
>  {
>  	struct rk_iommu *iommu = platform_get_drvdata(pdev);
> -	int i = 0, irq;
> +	int i, irq, num_irqs;
>  
> -	while ((irq = platform_get_irq(pdev, i++)) != -ENXIO)
> +	num_irqs = platform_irq_count(pdev);
> +	for (i = 0; i < num_irqs; i++) {
> +		irq = platform_get_irq(pdev, i);
> +		if (irq < 0)
> +			continue;
>  		devm_free_irq(iommu->dev, irq, iommu);
> +	}
>  
>  	pm_runtime_force_suspend(&pdev->dev);
>  }
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
