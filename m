Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 692C91AD405
	for <lists+linux-rockchip@lfdr.de>; Fri, 17 Apr 2020 03:14:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6L+DPkKHKfQcTIFycVI76s433MvgH2zFw8/HXACz4wU=; b=JXiIZFHsVSLWqw
	lLJZZ5VuplWv2JD9oBjo2n9Wr7LaL2nSFl9/2knFs7eoowe7567+KlqWtKzbuli7LB7rF6Q3clNOB
	aPVkYj2TbPB39DvcoPpBbm4dRbyC8TU0BnbGxiKIV4vyfzM7SsSf/Oi73DGxsPYmGj8MPc49cleDp
	c0p6etFCB7TwO5hZx5fgxl1vvz+2YzrYmeljbwr0X4DM6gc6SIWfPcIndBwUom/+98WjtDNLKkLeP
	vKDphPOAg/PbYTf6mPAKGUIE7XzpYnjFSodDPBg1IyOWUjCBjRUeR/evwR45MObYkruWDLyquuDQf
	4jywNKpFksnxUPnp4BRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPFaZ-0002dW-P3; Fri, 17 Apr 2020 01:14:39 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPFaU-0002bQ-3R; Fri, 17 Apr 2020 01:14:36 +0000
IronPort-SDR: +Y/7tyBOk0v3raFHhcX/9NiCYfLP6Q+cNQvPLHqlnDxMuDE70xkP0ZXZeLoIJmys5R1aIXEPNX
 6NAqdn/dmQ3Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2020 18:14:32 -0700
IronPort-SDR: sZlVw/7cjCHq0F1EFVv0TW8FklMi9s4vHlLYLRHCGjn12jklAHdg6QlmB19PsSs7PeDXqv0gk5
 UINIzZVqpibg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,393,1580803200"; d="scan'208";a="272262073"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
 by orsmga002.jf.intel.com with ESMTP; 16 Apr 2020 18:14:32 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.204]) by
 ORSMSX103.amr.corp.intel.com ([169.254.5.143]) with mapi id 14.03.0439.000;
 Thu, 16 Apr 2020 18:14:32 -0700
From: "Derrick, Jonathan" <jonathan.derrick@intel.com>
To: "joro@8bytes.org" <joro@8bytes.org>, "drake@endlessm.com"
 <drake@endlessm.com>
Subject: Re: [PATCH v2 00/33] iommu: Move iommu_group setup to IOMMU core code
Thread-Topic: [PATCH v2 00/33] iommu: Move iommu_group setup to IOMMU core code
Thread-Index: AQHWEmDrg4k1XREwpUada/q2n6OD7qh8+KGAgAADDAA=
Date: Fri, 17 Apr 2020 01:14:30 +0000
Message-ID: <aafed865c0254934986528b3ce9c4d34ff2fccad.camel@intel.com>
References: <20200414131542.25608-1-joro@8bytes.org>
 <20200417010335.31739-1-drake@endlessm.com>
In-Reply-To: <20200417010335.31739-1-drake@endlessm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.255.0.232]
Content-ID: <B8851D46B4E5F2468CD8AA858DAC2199@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_181434_154853_8C2B8D9F 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
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
Cc: "heiko@sntech.de" <heiko@sntech.de>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
 "will@kernel.org" <will@kernel.org>,
 "m.szyprowski@samsung.com" <m.szyprowski@samsung.com>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 "robdclark@gmail.com" <robdclark@gmail.com>,
 "krzk@kernel.org" <krzk@kernel.org>,
 "jonathanh@nvidia.com" <jonathanh@nvidia.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "kgene@kernel.org" <kgene@kernel.org>, "agross@kernel.org" <agross@kernel.org>,
 "jean-philippe@linaro.org" <jean-philippe@linaro.org>,
 "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "virtualization@lists.linux-foundation.org"
 <virtualization@lists.linux-foundation.org>,
 "gerald.schaefer@de.ibm.com" <gerald.schaefer@de.ibm.com>,
 "dwmw2@infradead.org" <dwmw2@infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 "baolu.lu@linux.intel.com" <baolu.lu@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Daniel,

On Fri, 2020-04-17 at 09:03 +0800, Daniel Drake wrote:
> Hi Joerg,
> 
> > Hi,
> > 
> > here is the second version of this patch-set. The first version with
> > some more introductory text can be found here:
> > 
> > 	https://lore.kernel.org/lkml/20200407183742.4344-1-joro@8bytes.org/
> 
> Thanks for the continued improvements in this area!
> 
> I may have spotted a problem with setups like VMD.
> 
> The core PCI bus is set up during early boot.
> Then, for the PCI bus, we reach iommu_bus_init() -> bus_iommu_probe().
> In there, we call probe_iommu_group() -> dev_iommu_get() for each PCI
> device, which allocates dev->iommu in each case. So far so good.
> 
> The problem is that this is the last time that we'll call dev_iommu_get().
> If any PCI bus devices get added after this point, they do not get passed
> to dev_iommu_get().
> 
> So when the vmd module gets loaded later, and creates more PCI devices,
> we end up in iommu_bus_notifier() -> iommu_probe_device()
> -> __iommu_probe_device() which does:
> 
> 	dev->iommu->iommu_dev = iommu_dev;
> 
> dev->iommu-> is a NULL dereference because dev_iommu_get() was never
> called for this new device.
> 
> Daniel
> 

I should have CCed you on this, but it should temporarily resolve that
issue:
https://lists.linuxfoundation.org/pipermail/iommu/2020-April/043253.html

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
