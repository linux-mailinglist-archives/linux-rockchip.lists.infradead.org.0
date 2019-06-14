Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 639C145579
	for <lists+linux-rockchip@lfdr.de>; Fri, 14 Jun 2019 09:13:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wkk/DM3YTF79saH9Znm7CIyK0E6Yn5zqnAZIsAlgZww=; b=COX7LbYpZERWO6
	+IQ/UmM2pgDSjbRtC4Tk0MDzekeIopabqX8Uecou+pPRYCjE+9JW0dhaHdqAI7MjvuhwhMrgU1RDE
	pR6aIWOUUfsNwjBDJJPti2IREI0Y8wNWnfOOv2i6KNINL3Pn9oyVnRMUQkR2ZAa+9lGssoHp14nx+
	24mu7UXt8qNsPoLcU/eRWtWjQTSrT25yA86i5QurogIGyfimmZE+EtgBj3k239nHWSZSazpcFa66D
	3qc/V1RJAYqE+RNBjaeO/kzmg3RX0nEqsPtTouZKM6iuSOUVicyKVL97K1UJhAB09u58DOEYDR2Lv
	LlPPV69zKI5OOk/P+OLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbgOJ-0000yo-Uv; Fri, 14 Jun 2019 07:12:52 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hbgOE-0000yO-1z; Fri, 14 Jun 2019 07:12:46 +0000
Date: Fri, 14 Jun 2019 00:12:46 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [PATCH 01/10] iommu/exynos: convert to SPDX license tags
Message-ID: <20190614071245.GA2950@infradead.org>
References: <20190613162703.986-1-tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613162703.986-1-tiny.windzz@gmail.com>
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
Cc: linux-samsung-soc@vger.kernel.org, heiko@sntech.de,
 linux-rockchip@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 joro@8bytes.org, will.deacon@arm.com, agross@kernel.org, krzk@kernel.org,
 jonathanh@nvidia.com, david.brown@linaro.org, robdclark@gmail.com,
 kgene@kernel.org, thierry.reding@gmail.com,
 linux-arm-kernel@lists.infradead.org, iommu@lists.linux-foundation.org,
 linux-tegra@vger.kernel.org, robin.murphy@arm.com,
 linux-kernel@vger.kernel.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Thomas Gleixner is doing automated SPDX conversion that directly
got to Linux at the moment.  I'd avoid doing more manual ones for
now as it will just create conflicts.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
