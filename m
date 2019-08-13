Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C6DC8B97F
	for <lists+linux-rockchip@lfdr.de>; Tue, 13 Aug 2019 15:07:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7S0jCLWSsWE68XPir1MMAnL99r/+XjF/mElvtkw1gh4=; b=fixI46uv5ap3qr
	ZUkZstwtHLeBZTBPq8mCPAMmDkBYb5jKdJ7qr6FuHB0lfOgzL1pVnfMFnOpEBXp7/PL+6SyM5yCCQ
	apC/VjmiFz++p9oQyzUq2UrJcl8WHyUpNp/3n8ib1ijfACqlko+nBc8Q6uaurJuKIrZUScE5H0AHX
	sj5IllOQYme837yDAh9OAWmIcRPBl4z8FPjggcigC/XmKhfM0/x/chNdo6SPJa44jJ84wOXPOlhK2
	wCVQZInMtcul4TnYLm42KRHE9nFfRJ6WZYUxOKOhND9/3/HaZpp1I3tXfs3kw85REbO2z3KHqBSuU
	FKeDDPitaU02djPV3GEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxWWC-0002OF-Cd; Tue, 13 Aug 2019 13:07:16 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hxWW7-0002GY-Ir; Tue, 13 Aug 2019 13:07:11 +0000
Date: Tue, 13 Aug 2019 06:07:11 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Tom Murphy <murphyt7@tcd.ie>
Subject: Re: [PATCH v4 0/5] iommu/amd: Convert the AMD iommu driver to the
 dma-iommu api
Message-ID: <20190813130711.GA30468@infradead.org>
References: <20190613223901.9523-1-murphyt7@tcd.ie>
 <20190624061945.GA4912@infradead.org>
 <20190810071952.GA25550@infradead.org>
 <CALQxJuvxBc3MH3_B_fZ3FvURHOM3F3dvvZ6x=GtALUAvyu7Qxw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALQxJuvxBc3MH3_B_fZ3FvURHOM3F3dvvZ6x=GtALUAvyu7Qxw@mail.gmail.com>
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
 Joerg Roedel <joro@8bytes.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Christoph Hellwig <hch@infradead.org>,
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

On Tue, Aug 13, 2019 at 08:09:26PM +0800, Tom Murphy wrote:
> Hi Christoph,
> 
> I quit my job and am having a great time traveling South East Asia.

Enjoy!  I just returned from my vacation.

> I definitely don't want this work to go to waste and I hope to repost it
> later this week but I can't guarantee it.
> 
> Let me know if you need this urgently.

It isn't in any strict sense urgent.  I just have various DMA API plans
that I'd rather just implement in dma-direct and dma-iommu rather than
also in two additional commonly used iommu drivers.  So on the one had
the sooner the better, on the other hand no real urgency.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
