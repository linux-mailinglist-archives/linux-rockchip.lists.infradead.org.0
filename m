Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B60ECF5AA
	for <lists+linux-rockchip@lfdr.de>; Tue,  8 Oct 2019 11:08:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R4xyqEEyj/C/3K+Ubun9g5I9Qc2eQRyiC3vDSo1C/IY=; b=DTN4wSMXdfvLXu
	jURyXFOwIJbWJn+mFPyudSgdpkD0XjkQPJftWKrlg0y/pdHsLDsNVYj6A//rXDuCssdeA4/XpJMwL
	xdi8ZtRsue6MRjFUwB4kbEhvJmwt4wgkE/5HFD7kczEho1rTnpwa20m+yze7hoxWzdCoZRX6ck3Ay
	g4Ma6HruE0BNHKyYWRezDmTBqLfQsHKH29SMgqceDmY6m2Yq8PqG7vPxsM/Zgf9HEXlICGMXlpGy7
	yEBahAz5yMFwvIRRj+r32Yqx4Vm0SLxv418d40uNTcBR9tardwVYewdxHXb+DVnEBYkK4QC78ocQY
	HgubwSDpjdEVmlEr5HjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHlTv-0000lx-CU; Tue, 08 Oct 2019 09:08:35 +0000
Received: from 8bytes.org ([2a01:238:4383:600:38bc:a715:4b6d:a889]
 helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHlTk-0000a9-GE; Tue, 08 Oct 2019 09:08:26 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 51E203D0; Tue,  8 Oct 2019 11:08:13 +0200 (CEST)
Date: Tue, 8 Oct 2019 11:08:13 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Tom Murphy <murphyt7@tcd.ie>
Subject: Re: [PATCH v6 0/5] iommu/amd: Convert the AMD iommu driver to the
 dma-iommu api
Message-ID: <20191008090813.GB2514@8bytes.org>
References: <20190908165642.22253-1-murphyt7@tcd.ie>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190908165642.22253-1-murphyt7@tcd.ie>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_020824_688528_DDFBD4D1 
X-CRM114-Status: UNSURE (   7.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Heiko Stuebner <heiko@sntech.de>, virtualization@lists.linux-foundation.org,
 linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 Will Deacon <will@kernel.org>, Marek Szyprowski <m.szyprowski@samsung.com>,
 linux-s390@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 iommu@lists.linux-foundation.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-rockchip@lists.infradead.org,
 Andy Gross <agross@kernel.org>, Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, David Woodhouse <dwmw2@infradead.org>,
 linux-kernel@vger.kernel.org, Rob Clark <robdclark@gmail.com>,
 Kukjin Kim <kgene@kernel.org>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Sun, Sep 08, 2019 at 09:56:36AM -0700, Tom Murphy wrote:
> Convert the AMD iommu driver to the dma-iommu api. Remove the iova
> handling and reserve region code from the AMD iommu driver.

Applied, thanks. Note that it will not show up in linux-next before
-rc3.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
