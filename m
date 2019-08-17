Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89BC990DAF
	for <lists+linux-rockchip@lfdr.de>; Sat, 17 Aug 2019 09:21:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WwN3mJ+p4Y5ssmzmYqwmx8TPV4BhxRHLEScssBaJyKw=; b=s/U0wj/qrB4DpY
	4fyCwVZmfxuYCNN3IADIkG9ex0NtCtl1cgW2CIRDRj2koZk1I0FZo8jrLr8qFsQy9xrvYbDICI5gf
	8y4lZy0JA6VNUz98goNIpTZBthUYJRp+ONuTMcA/3FHR8RqeVh2bMQgSwYkWg+eV2Ro3gsADOZS+G
	nj5+TCG+nduLuqJ5ZGY1LQOdcm7aajzKFLDYoxJJrwCKq98eM9q2whTHTEwi9cTb3xBTwKIkzME98
	J0G5KBYgvrBcrtUQno5hEwf+7wO3qQOKMBJwPPIc+uUoYCM+2U85ob9WyWvrQL8Sf07WfxyhK/aKN
	yvzn9uE3+TNgshyh3aHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyt19-00024F-SQ; Sat, 17 Aug 2019 07:20:51 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyt0a-0001SZ-LE
 for linux-rockchip@lists.infradead.org; Sat, 17 Aug 2019 07:20:18 +0000
Received: by mail-io1-xd44.google.com with SMTP id i22so10777013ioh.2
 for <linux-rockchip@lists.infradead.org>; Sat, 17 Aug 2019 00:20:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tcd-ie.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3gnS0PBpeFma+nR0/93xLJSxk0RZjywB6TYlsGP6x54=;
 b=iuaKaoZkqD3jS65GkFRQXUesr+iHDQw7qZXVp3ez2fmCt49N//RMqfebteueaUoH+p
 97zi714OqDL373xaRAuH3dX8FyF/Ggim5AtCytyMJbs8OW1HRJxUvrBWziOojWSjQyyv
 N8V4gNN86Fa2SkaukvBfzPcjbRwF05BDdxAP0vXBWYtOD0SIpiwB1xkPByOxsAsX+9h1
 04BQeNXJdFWKxBekEW+jFClh2sgwRA/Wjk7i3VyRYr7XND2lelrmJe56TnoW4qN1h7sB
 KsNL/98KtTPtlpVSTykKF2Hed4ptAKREhBRKgytLAlnBDShNx9anmljZsQvOgXkrjk/s
 f08A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3gnS0PBpeFma+nR0/93xLJSxk0RZjywB6TYlsGP6x54=;
 b=em0rkzwXCSLSxUu+1O1dsb72PWCICdIQ/Qqasfog8lhDYCDBVobyHXdtOFJfAucWc1
 EGaKn1ieU3lY6+3b0Fa0wa4ht+ECjmj1vPzPWcxpN6dCnL/qVvW4r03m3Wc1etdPPq2c
 IkgvAowiDnKFMSW9VdMKyavfnZoEc4HQJN483F5nQeSJROYfGONQvUA11dC3626364u6
 LgXweVejH/whB62/FRp3S8HT1uJ4SYTDUXkCbszz/Nz2iNaor4fVImswEPrholW0h5nO
 N4PwGGSwHsiIfP2mn38DHAFiIgzydznZs1HEWRRfAgRU+eLJvSsQTROKdpf84hutzH46
 c5oQ==
X-Gm-Message-State: APjAAAVzj1a9zMRRmvKSTXsL7+QpSPwy0EqWj1NQ/bhvREQ7WrR85bpm
 3TLhNDTxHFyL3vJ3cPJVeyGLl96oD/w/oJFo/HlbPg==
X-Google-Smtp-Source: APXvYqzi3uE7FL/BNaGBwf9NcctQEJa1uqSCgIDdI7X8T4a271+rNn6qVr2H/9WkS8ckRMiROhEplUC0qpc0vOhpjPg=
X-Received: by 2002:a02:a18e:: with SMTP id n14mr15977616jah.84.1566026405753; 
 Sat, 17 Aug 2019 00:20:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190815110944.3579-1-murphyt7@tcd.ie>
 <20190817033914.4812-1-hdanton@sina.com>
In-Reply-To: <20190817033914.4812-1-hdanton@sina.com>
From: Tom Murphy <murphyt7@tcd.ie>
Date: Sat, 17 Aug 2019 08:19:33 +0100
Message-ID: <CALQxJut_0bjojiFza9bZF26n0+9Vjq8QFqsxgd5Rxag+Qx609Q@mail.gmail.com>
Subject: Re: [PATCH V5 3/5] iommu/dma-iommu: Handle deferred devices
To: Hillf Danton <hdanton@sina.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190817_002016_925655_90865FAB 
X-CRM114-Status: GOOD (  18.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Heiko Stuebner <heiko@sntech.de>, virtualization@lists.linux-foundation.org,
 linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 Will Deacon <will@kernel.org>, Marek Szyprowski <m.szyprowski@samsung.com>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 linux-samsung-soc@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 iommu@lists.linux-foundation.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-rockchip@lists.infradead.org,
 Andy Gross <agross@kernel.org>, Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 linux-s390@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, David Woodhouse <dwmw2@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Clark <robdclark@gmail.com>, Kukjin Kim <kgene@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Sat, 17 Aug 2019 at 04:39, Hillf Danton <hdanton@sina.com> wrote:
>
>
> On Thu, 15 Aug 2019 12:09:41 +0100 Tom Murphy wrote:
> >
> > Handle devices which defer their attach to the iommu in the dma-iommu api
> >
> > Signed-off-by: Tom Murphy <murphyt7@tcd.ie>
> > ---
> >  drivers/iommu/dma-iommu.c | 27 ++++++++++++++++++++++++++-
> >  1 file changed, 26 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
> > index 2712fbc68b28..906b7fa14d3c 100644
> > --- a/drivers/iommu/dma-iommu.c
> > +++ b/drivers/iommu/dma-iommu.c
> > @@ -22,6 +22,7 @@
> >  #include <linux/pci.h>
> >  #include <linux/scatterlist.h>
> >  #include <linux/vmalloc.h>
> > +#include <linux/crash_dump.h>
> >
> >  struct iommu_dma_msi_page {
> >       struct list_head        list;
> > @@ -351,6 +352,21 @@ static int iommu_dma_init_domain(struct iommu_domain *domain, dma_addr_t base,
> >       return iova_reserve_iommu_regions(dev, domain);
> >  }
> >
> > +static int handle_deferred_device(struct device *dev,
> > +     struct iommu_domain *domain)
> > +{
> > +     const struct iommu_ops *ops = domain->ops;
> > +
> > +     if (!is_kdump_kernel())
> > +             return 0;
> > +
> > +     if (unlikely(ops->is_attach_deferred &&
> > +             ops->is_attach_deferred(domain, dev)))
> > +             return iommu_attach_device(domain, dev);
> > +
> > +     return 0;
> > +}
> > +
> >  /**
> >   * dma_info_to_prot - Translate DMA API directions and attributes to IOMMU API
> >   *                    page flags.
> > @@ -463,6 +479,9 @@ static dma_addr_t __iommu_dma_map(struct device *dev, phys_addr_t phys,
> >       size_t iova_off = iova_offset(iovad, phys);
> >       dma_addr_t iova;
> >
> > +     if (unlikely(handle_deferred_device(dev, domain)))
> > +             return DMA_MAPPING_ERROR;
> > +
> >       size = iova_align(iovad, size + iova_off);
> >
> >       iova = iommu_dma_alloc_iova(domain, size, dma_get_mask(dev), dev);
>
> iommu_map_atomic() is applied to __iommu_dma_map() in 2/5.
> Is it an atomic context currently given the mutex_lock() in
> iommu_attach_device()?

I don't see your point here. __iommu_dma_map isn't called from
iommu_attach_device, why would we care about a mutex in
iommu_attach_device?

__iommu_dma_map can be called from an atomic context (it isn't always
but it does happen). __iommu_dma_map is called by iommu_dma_alloc
which implements the iommu_dma_ops::alloc function which by design
needs to be callable from an atomic context. Does that answer your
question?

>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
