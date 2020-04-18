Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B551AEC96
	for <lists+linux-rockchip@lfdr.de>; Sat, 18 Apr 2020 14:45:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f6isDjqcXGlMdu/VYcGZvSFsB2/8DlwLrqCI55DQ2ik=; b=UHUrbQTsu2JvDW
	likvuvqFrSnfoW7riFwl7demiRS/TVOgm+lWKiIw5Km8TRwB49hWz2dG8zVa6dJnDqIGBjZl7s5T0
	/64ahnja1y0nyaspKzLyM1yHtpISOnHQdHQlltS1DK56Y+dayhGC1Uoc9rn8nUjKgItSYYS3DXPRQ
	1GbK8MV/Zl9Ptcwo68cG/iJ5urF35t/iVbTuka3BuQs8F+9MZrZ9NJnCHsdyQP6dnr9bTX1TXgTT3
	NhIKlNO+4c26m5BLUsPBb8yAMD9fVLowr65myqswIEnvYLdagY3Bt/prTrS04xJzy43jilZwOe8x4
	/WkY6c2HjmJ2h6OOJyQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPmqC-0005IG-JJ; Sat, 18 Apr 2020 12:45:00 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPmq8-0005Ga-P8; Sat, 18 Apr 2020 12:44:58 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 7275A48C; Sat, 18 Apr 2020 14:44:54 +0200 (CEST)
Date: Sat, 18 Apr 2020 14:44:53 +0200
From: "joro@8bytes.org" <joro@8bytes.org>
To: "Derrick, Jonathan" <jonathan.derrick@intel.com>
Subject: Re: [PATCH v2 00/33] iommu: Move iommu_group setup to IOMMU core code
Message-ID: <20200418124452.GE6113@8bytes.org>
References: <20200414131542.25608-1-joro@8bytes.org>
 <20200417010335.31739-1-drake@endlessm.com>
 <aafed865c0254934986528b3ce9c4d34ff2fccad.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aafed865c0254934986528b3ce9c4d34ff2fccad.camel@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_054456_966704_B52F5F7C 
X-CRM114-Status: UNSURE (   6.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [81.169.241.247 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 "drake@endlessm.com" <drake@endlessm.com>, "will@kernel.org" <will@kernel.org>,
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
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 "dwmw2@infradead.org" <dwmw2@infradead.org>,
 "baolu.lu@linux.intel.com" <baolu.lu@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Jonathan, Hi Daniel,

On Fri, Apr 17, 2020 at 01:14:30AM +0000, Derrick, Jonathan wrote:
> Hi Daniel> I should have CCed you on this, but it should temporarily resolve that
> issue:
> https://lists.linuxfoundation.org/pipermail/iommu/2020-April/043253.html

Yes, this is an issue in the hotplug handling path which I already fixed
in my branch. With next post of this series it should work.

Regards,

	Joerg

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
