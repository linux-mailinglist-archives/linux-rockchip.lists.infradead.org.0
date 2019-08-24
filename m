Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DFC59C0D5
	for <lists+linux-rockchip@lfdr.de>; Sun, 25 Aug 2019 00:41:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QIdjzYILioRMzC3FjwJBTEcp1bxdiWCJZfdAxvW93Fw=; b=c76K/E6ksCbLTy
	CG2SiIPucc9qA2z3ebw0R1Ir3IKfu/IS3I1wkGWLEfXXyg3AovOwM9owrgxdjndIIGRGNIDiMf2Mc
	VQ8+YtQ+2+mwaBd6XwmnJMxesI3vpSLEJZCre/d95oGr7WW6nx+xn3xEpxTDKJht5lz0w5pGWpPjU
	yoUSUNhk4xtzuiU159rOjvcSeVJp/eDddXg4nKeIzqH0KFwYylRJUwdlp4wU1gNZbGocsGHmJ/bak
	zTlwIpv4QnHrEt847m6YfSjtks80HBlXUsMH+Xinm77Bj670UYew1m+IXswKaem7gOdUrPOOMlKBL
	zRf0a60494fH7Y2/tmoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1ej7-0003sG-02; Sat, 24 Aug 2019 22:41:41 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i1eiy-0003rr-8F; Sat, 24 Aug 2019 22:41:32 +0000
Date: Sat, 24 Aug 2019 15:41:32 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Tom Murphy <murphyt7@tcd.ie>
Subject: Re: [PATCH V5 1/5] iommu/amd: Remove unnecessary locking from AMD
 iommu driver
Message-ID: <20190824224132.GA14806@infradead.org>
References: <20190815110944.3579-1-murphyt7@tcd.ie>
 <20190815110944.3579-2-murphyt7@tcd.ie>
 <20190820094143.GA24154@infradead.org>
 <CALQxJussiGDzWFT1xhko6no5jZNOezWCFuJQUCr4XwH4NHri3Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALQxJussiGDzWFT1xhko6no5jZNOezWCFuJQUCr4XwH4NHri3Q@mail.gmail.com>
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
Cc: Heiko Stuebner <heiko@sntech.de>, virtualization@lists.linux-foundation.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>, Will Deacon <will@kernel.org>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 linux-samsung-soc@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Christoph Hellwig <hch@infradead.org>,
 linux-rockchip@lists.infradead.org, Kukjin Kim <kgene@kernel.org>,
 Andy Gross <agross@kernel.org>, linux-s390@vger.kernel.org,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>, linux-arm-msm@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-tegra@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 iommu@lists.linux-foundation.org, David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Thank for the explanation Tom. It might make sense to add a condensed
version of it to commit log for the next iteration.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
