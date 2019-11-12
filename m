Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 950E9F8E9E
	for <lists+linux-rockchip@lfdr.de>; Tue, 12 Nov 2019 12:31:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7c68HHgT6ISTxsGATxVNu3xtW9jxgE4wtoGRyAPYRcg=; b=BQkl6olwqo9uZlQTkrN9gmfId
	16LC/hBka3mBpYTNhZXhnREveL6b2wVqYu6+rg5W1Wf/P7koEi7DKBVhpHBvaUF6I/SdVr736kzM1
	5y3exPRZii6Sb2T8KKSviqOo7n7n+dDlxZglJd0CwnsTzXp6M3XbKwyabOgJk8BcEG+ceRvicO6CH
	ZoEmDpXfsPAGOQBnxEq8++tBcnSWa3hxvJrEvMrXsN+NFlXseFvf+7mE1n+72S5y7QMs47/JLaFX6
	rgMwO86UtF8ecGDKf5guBuL4tLkwbvSwyPUEJNfj6LO6Zutwfa2yj5I26BVpFv01qmoPIoIUQYVKr
	4lLzZQbfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUUO3-0001Zy-HD; Tue, 12 Nov 2019 11:31:07 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUUO1-0001Zb-3A; Tue, 12 Nov 2019 11:31:06 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iUUNw-00062q-I5; Tue, 12 Nov 2019 12:31:00 +0100
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] iommu/rockchip: Don't provoke WARN for harmless IRQs
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Tue, 12 Nov 2019 12:40:21 +0109
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <82cba203551939399d219e4cb6c602315fd0c410.1573498518.git.robin.murphy@arm.com>
References: <82cba203551939399d219e4cb6c602315fd0c410.1573498518.git.robin.murphy@arm.com>
Message-ID: <45975bd87e34e9ff6e9656a3235fe074@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: robin.murphy@arm.com, joro@8bytes.org, heiko@sntech.de,
 iommu@lists.linux-foundation.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, anarsoul@gmail.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_033105_281747_A8417830 
X-CRM114-Status: GOOD (  15.06  )
X-Spam-Score: 1.7 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 BUG6152_INVALID_DATE_TZ_ABSURD No description available.
 0.6 INVALID_DATE_TZ_ABSURD Invalid Date: header (timezone does not
 exist)
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: heiko@sntech.de, joro@8bytes.org, Vasily Khoruzhick <anarsoul@gmail.com>,
 linux-rockchip@lists.infradead.org, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 2019-11-11 20:04, Robin Murphy wrote:
> Although we don't generally expect IRQs to fire for a suspended 
> IOMMU,
> there are certain situations (particularly with debug options) where
> we might legitimately end up with the pm_runtime_get_if_in_use() call
> from rk_iommu_irq() returning 0. Since this doesn't represent an 
> actual
> error, follow the other parts of the driver and save the WARN_ON()
> condition for a genuine negative value. Even if we do have spurious
> IRQs due to a wedged VOP asserting the shared line, it's not this
> driver's job to try to second-guess the IRQ core to warn about that.
>
> Reported-by: Vasily Khoruzhick <anarsoul@gmail.com>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  drivers/iommu/rockchip-iommu.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/iommu/rockchip-iommu.c 
> b/drivers/iommu/rockchip-iommu.c
> index 4dcbf68dfda4..bd7e9b1e40ac 100644
> --- a/drivers/iommu/rockchip-iommu.c
> +++ b/drivers/iommu/rockchip-iommu.c
> @@ -527,7 +527,7 @@ static irqreturn_t rk_iommu_irq(int irq, void 
> *dev_id)
>  	int i, err;
>
>  	err = pm_runtime_get_if_in_use(iommu->dev);
> -	if (WARN_ON_ONCE(err <= 0))
> +	if (!err || WARN_ON_ONCE(err < 0))
>  		return ret;
>
>  	if (WARN_ON(clk_bulk_enable(iommu->num_clocks, iommu->clocks)))

Acked-by: Marc Zyngier <maz@kernel.org>

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
