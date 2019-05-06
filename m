Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9252E15031
	for <lists+linux-rockchip@lfdr.de>; Mon,  6 May 2019 17:27:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AupgUJSk4ObxiEzohRTs8QukL0YZ1zVRQzrs4aKWHIQ=; b=aru7uTAP/B7m5i
	ogVhZEoLfXOQuVy+FuZPM2ItDUwjNtyJkiNX/4iD4ZzwBUvKz5oS1dIg8Juw29VO9UVJ0Q8aXnH4q
	NLXmq7f4t3hLTFaBDdHPoF3WZPEFhPDU5PRDGnsysuB6DQmKOeUs1U5oq/qqqcT3Z2Qo++DZjjdiP
	6Wz0nDmm7uxdjA+UqLm9s3yR9LlYaZLnLMO5/XuAeKlKZlnNmXK/a2e5FAzCRvSA31fDXjkzNdmNk
	+pMM++scFAT5T1KilUM7jH4/MbaI/eXqGlw/LYTiU0lIPIKNZcTtynrr5ICny9W9WJzm9p5e0I7Xi
	Li8RlMkjdXIFl7hrL0zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNfWf-0006om-BF; Mon, 06 May 2019 15:27:33 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNfWU-0006e8-Ee
 for linux-rockchip@lists.infradead.org; Mon, 06 May 2019 15:27:25 +0000
Received: by mail-wr1-x443.google.com with SMTP id r7so17770263wrr.13
 for <linux-rockchip@lists.infradead.org>; Mon, 06 May 2019 08:27:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GuMSdmXl0z53dDi0xhlaU7BU2n/bLw/DBUWaPvlO+dc=;
 b=C/d9PWiZ7kbJC0oH7zo5Ibhtjb0LJxg5WGRhk2z22dgXTR0ahak265kLVZyGYOhfje
 aEtSmh42RRvz8bCCBZRBFOn7uv5XCF0ECqKL0Hb338d0yPodqMwGb1L0gvRyJgITkaxQ
 Ki1y61sbdbPypKRjDCxUR8MH0zfn/bbro9LPpFVyLBByJZzEOqelQf5tS81MK2FkUIP3
 sLhve+NsmP0dlDX03w14Qjs93JrqJwcC/r4yHUZhJhCv/72E7VCM80drfYcNtln/9ipb
 cKIyK6t7ROv023pVx/00hbtubgQCmfBlIjzs3E6R48gtIILod1LUINjWV6UVWZ8tSjxH
 BBpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GuMSdmXl0z53dDi0xhlaU7BU2n/bLw/DBUWaPvlO+dc=;
 b=VxezoZ9dLTcS6V2VBXiZ8pX82/VfsO2xY0gW0t1VZKoOIEyyKRPgQWvolK0PpgMLlK
 sQN92znA8OyMXvMbtK2k+gRIYEF9TwG1l/lMR8UEvuw4VSBKHVatPuUj03TbpArqXA+k
 CPPXfCm2x/0HAaFVMw8zK4nuY3C3UADgd1No8w7wssDKZwj9bhv5iFa+m8GRXFklRMdn
 OICOvVVXZ5x1KX/wcg6Q1KGR6EBlf2Ry8+JN18hQi+zQva5XrX0ttb9cFEba6IDd2M/2
 2qxxF5ZDTO9OB0CxR3J93G2Uu+So7uYektdJDUBm3mYPR9iv85EAPefCmMQQaC4+10g2
 SVoQ==
X-Gm-Message-State: APjAAAU9TpR0bDk/vQ9cb3xat2ASdfrefSt6j0ctgoJJUvbaar4ttIsV
 jHV5TP8UmmQlQIrMwppnFUEdR2N/SKSwWeeqLBajxA==
X-Google-Smtp-Source: APXvYqzdYjq2KzNwXSYRUYk147h4YL+JNa0zWfymURRoAL7aXQogilrHn37rwl9PoIS46ayzMGu+Ikwm2tOs7SUKN4Y=
X-Received: by 2002:a5d:5551:: with SMTP id g17mr20082024wrw.50.1557156440752; 
 Mon, 06 May 2019 08:27:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190504132327.27041-1-tmurphy@arista.com>
 <20190504132327.27041-2-tmurphy@arista.com>
 <8fef18f5-773c-e1c9-2537-c9dff5bfd35e@linux.intel.com>
In-Reply-To: <8fef18f5-773c-e1c9-2537-c9dff5bfd35e@linux.intel.com>
From: Tom Murphy <tmurphy@arista.com>
Date: Mon, 6 May 2019 16:27:09 +0100
Message-ID: <CAPL0++4_Qa+dxzQ2k6BJi_o+VSSrHEtomYgVmRqjtjsOfHbGew@mail.gmail.com>
Subject: Re: [RFC 1/7] iommu/vt-d: Set the dma_ops per device so we can remove
 the iommu_no_mapping code
To: Lu Baolu <baolu.lu@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_082722_494416_5EB04168 
X-CRM114-Status: GOOD (  21.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Heiko Stuebner <heiko@sntech.de>, kvm@vger.kernel.org,
 Will Deacon <will.deacon@arm.com>, David Brown <david.brown@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>, linux-s390@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 iommu@lists.linux-foundation.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-rockchip@lists.infradead.org,
 Kukjin Kim <kgene@kernel.org>, Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Andy Gross <andy.gross@linaro.org>, linux-tegra@vger.kernel.org,
 Marc Zyngier <marc.zyngier@arm.com>, linux-arm-msm@vger.kernel.org,
 Alex Williamson <alex.williamson@redhat.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 Tom Murphy <murphyt7@tcd.ie>, Rob Clark <robdclark@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, May 6, 2019 at 2:48 AM Lu Baolu <baolu.lu@linux.intel.com> wrote:
>
> Hi,
>
> On 5/4/19 9:23 PM, Tom Murphy wrote:
> > Set the dma_ops per device so we can remove the iommu_no_mapping code.
> >
> > Signed-off-by: Tom Murphy<tmurphy@arista.com>
> > ---
> >   drivers/iommu/intel-iommu.c | 85 +++----------------------------------
> >   1 file changed, 6 insertions(+), 79 deletions(-)
> >
> > diff --git a/drivers/iommu/intel-iommu.c b/drivers/iommu/intel-iommu.c
> > index eace915602f0..2db1dc47e7e4 100644
> > --- a/drivers/iommu/intel-iommu.c
> > +++ b/drivers/iommu/intel-iommu.c
> > @@ -2622,17 +2622,6 @@ static int __init si_domain_init(int hw)
> >       return 0;
> >   }
> >
> > -static int identity_mapping(struct device *dev)
> > -{
> > -     struct device_domain_info *info;
> > -
> > -     info = dev->archdata.iommu;
> > -     if (info && info != DUMMY_DEVICE_DOMAIN_INFO)
> > -             return (info->domain == si_domain);
> > -
> > -     return 0;
> > -}
> > -
> >   static int domain_add_dev_info(struct dmar_domain *domain, struct device *dev)
> >   {
> >       struct dmar_domain *ndomain;
> > @@ -3270,43 +3259,6 @@ static unsigned long intel_alloc_iova(struct device *dev,
> >       return iova_pfn;
> >   }
> >
> > -/* Check if the dev needs to go through non-identity map and unmap process.*/
> > -static int iommu_no_mapping(struct device *dev)
> > -{
> > -     int found;
> > -
> > -     if (iommu_dummy(dev))
> > -             return 1;
> > -
> > -     found = identity_mapping(dev);
> > -     if (found) {
> > -             /*
> > -              * If the device's dma_mask is less than the system's memory
> > -              * size then this is not a candidate for identity mapping.
> > -              */
> > -             u64 dma_mask = *dev->dma_mask;
> > -
> > -             if (dev->coherent_dma_mask &&
> > -                 dev->coherent_dma_mask < dma_mask)
> > -                     dma_mask = dev->coherent_dma_mask;
> > -
> > -             if (dma_mask < dma_get_required_mask(dev)) {
> > -                     /*
> > -                      * 32 bit DMA is removed from si_domain and fall back
> > -                      * to non-identity mapping.
> > -                      */
> > -                     dmar_remove_one_dev_info(dev);
> > -                     dev_warn(dev, "32bit DMA uses non-identity mapping\n");
> > -
> > -                     return 0;
> > -             }
>
> The iommu_no_mapping() also checks whether any 32bit DMA device uses
> identity mapping. The device might not work if the system memory space
> is bigger than 4G.

It looks like their is actually a bug in the v3 of the "iommu/vt-d:
Delegate DMA domain to generic iommu" patch set. I will leave a
message in that email thread. Fixing that bug should also fix this
issue.


>
> Will you add this to other place, or it's unnecessary?
>
> Best regards,
> Lu Baolu

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
