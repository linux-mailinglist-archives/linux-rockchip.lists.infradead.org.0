Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1472F88908
	for <lists+linux-rockchip@lfdr.de>; Sat, 10 Aug 2019 09:20:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K+eOBluTKosTFStoxORQLA7/0Z8VBQpuHjXXNqZ+KSM=; b=BGhviBxZplTcQi
	cyGWhpd0KVUooybo18q9NtCdXZym3vl0L30TS8Y62+KlSTq/7W1HqmhZhhbDMsHkOyG2tmjNa/pkG
	vMvmThnuiNfFN3qEJjJ3KAU400PgZgF1+GOrh4EB+APJaxyeqiK9JjHoZM6rmf4XJV5vdCc9EOvC1
	UHYL2zRh2IVLXN6OG+DFXUrl7aL6finbZV61rPNGkebTQU+/Ao7a4rr2FdzZC+1SKBEH+WcEFW9I7
	/ANOT1vuB9tcBYWQDQv1EN8RMTcK1AD1rbqRceEYxh/9Dbs57gh9DyQoSXNbaCowybucu5z56gVzY
	AUYSM/4DF2cThLaFUPDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwLfT-0006iV-2f; Sat, 10 Aug 2019 07:19:59 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hwLfM-0006iA-Bq; Sat, 10 Aug 2019 07:19:52 +0000
Date: Sat, 10 Aug 2019 00:19:52 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Tom Murphy <murphyt7@tcd.ie>, Joerg Roedel <joro@8bytes.org>
Subject: Re: [PATCH v4 0/5] iommu/amd: Convert the AMD iommu driver to the
 dma-iommu api
Message-ID: <20190810071952.GA25550@infradead.org>
References: <20190613223901.9523-1-murphyt7@tcd.ie>
 <20190624061945.GA4912@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190624061945.GA4912@infradead.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: Heiko Stuebner <heiko@sntech.de>, Will Deacon <will.deacon@arm.com>,
 virtualization@lists.linux-foundation.org,
 David Brown <david.brown@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, linux-s390@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org,
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Andy Gross <agross@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>, linux-arm-msm@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-tegra@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 Kukjin Kim <kgene@kernel.org>, David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Sun, Jun 23, 2019 at 11:19:45PM -0700, Christoph Hellwig wrote:
> Tom,
> 
> next time please cc Jerg as the AMD IOMMU maintainer.
> 
> Joerg, any chance you could review this?  Toms patches to convert the
> AMD and Intel IOMMU drivers to the dma-iommu code are going to make my
> life in DMA land significantly easier, so I have a vested interest
> in this series moving forward :)

Tom, can you repost the series?  Seems like there hasn't been any
news for a month.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
