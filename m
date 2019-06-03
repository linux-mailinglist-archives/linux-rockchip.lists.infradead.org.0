Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0852D32E0C
	for <lists+linux-rockchip@lfdr.de>; Mon,  3 Jun 2019 12:52:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xk77+yy0Iv8Sl9CVKl+C/2UQs55GHYyXxtJsO6SZ3h8=; b=GSqGBsw/AYUJuc
	+nKUEhuj5ETeAiJJtxYTaZSrPBNlyg0y3Mwrbeo2jHZlMzhIM5UQF06bR0iBwmL463yAF8khx0J3A
	Ms8+FMkF20RGumXRn5aVLmp6EucVEaiW7gx9y1tpOc1fr+p3od7W9eNR3fYlZoYQXEZ03nfito8jA
	1G/zcaA2F9jThpmaB3KPNiq7xu0aC1XWj5ReTwIPE0NwUsVacBfdwUZ0e8odyAyxv6Sv/3TgH1oMC
	oGsg9xbn7jcegnLKGqH/vKGhQFHeAGpL1XCTQLHkxoOYslU6erROBLSqfjOw5SdVMZnM5BciCjnxV
	Mo8z5qJ0ROtJ/aChv6ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXkZd-000832-67; Mon, 03 Jun 2019 10:52:17 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXkZS-0007uV-Nf; Mon, 03 Jun 2019 10:52:08 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id C6EF836B; Mon,  3 Jun 2019 12:51:59 +0200 (CEST)
Date: Mon, 3 Jun 2019 12:51:58 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Tom Murphy <tmurphy@arista.com>
Subject: Re: [PATCH v3 0/4] iommu/amd: Convert the AMD iommu driver to the
 dma-iommu api
Message-ID: <20190603105158.GL12745@8bytes.org>
References: <20190506185207.31069-1-tmurphy@arista.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190506185207.31069-1-tmurphy@arista.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_035206_922800_E0E965BD 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [81.169.241.247 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Heiko Stuebner <heiko@sntech.de>, Will Deacon <will.deacon@arm.com>,
 David Brown <david.brown@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>, linux-s390@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, iommu@lists.linux-foundation.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Kukjin Kim <kgene@kernel.org>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Andy Gross <andy.gross@linaro.org>, linux-tegra@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>,
 linux-kernel@vger.kernel.org, murphyt7@tcd.ie, Rob Clark <robdclark@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Tom,

On Mon, May 06, 2019 at 07:52:02PM +0100, Tom Murphy wrote:
> Convert the AMD iommu driver to the dma-iommu api. Remove the iova
> handling and reserve region code from the AMD iommu driver.

Thank you for your work on this! I appreciate that much, but I am not
sure we are ready to make that move for the AMD and Intel IOMMU drivers
yet.

My main concern right now is that these changes will add a per-page
table lock into the fast-path for dma-mapping operations. There has been
much work in the past to remove all locking from these code-paths and
make it scalable on x86.

The dma-ops implementations in the x86 IOMMU drivers have the benefit
that they can call their page-table manipulation functions directly and
without locks, because they can make the necessary assumptions. The
IOMMU-API mapping/unmapping path can't make these assumptions because it
is also used for non-DMA-API use-cases.

So before we can move the AMD and Intel drivers to the generic DMA-API
implementation we need to solve this problem to not introduce new
scalability regressions.

Regards,

	Joerg


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
