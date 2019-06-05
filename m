Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32FE83565E
	for <lists+linux-rockchip@lfdr.de>; Wed,  5 Jun 2019 07:50:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2sENn10Yx22l8tv5rWe7/uQ1XRIUavdR1/XWHZGJ6WU=; b=Ab4WoAp+n9KWW7
	hfb5UD4gQdiKmCdf78b1baWsQmp9Z3Lf7luRXIm2PUKdPxxAKIJ/nMUoK5pmpL1aEYzc00d4/YHmP
	Rk/A5YkF7Lwz/1aFL1toleOpCDKZ32E8ozmapGXxJxeDp8lQVDJ2KXqNeYG3XxAaZ6d1zp+XoysZb
	qZCP3b3siOxBeKs8+hCAu6KBmzpTdws89IcPWLUf/gisbp874Mo2eTDuUd1NtRVz74YZHqDJpFyG9
	TRZeNGUDD3/KaZpqyXfpMyauwkbitc5YQ1zuW7HpftY+x42jIQJJk/Znoq3dLT9e8YeuzSDnUO68U
	feAC8SUSE3X2c9tr2JMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYOob-0005B3-EW; Wed, 05 Jun 2019 05:50:25 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.90_1 #2 (Red
 Hat Linux)) id 1hYOoX-0005Al-PR; Wed, 05 Jun 2019 05:50:21 +0000
Date: Tue, 4 Jun 2019 22:50:21 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Tom Murphy <tmurphy@arista.com>
Subject: Re: [PATCH v3 1/4] iommu: Add gfp parameter to iommu_ops::map
Message-ID: <20190605055021.GA15036@infradead.org>
References: <20190506185207.31069-1-tmurphy@arista.com>
 <20190506185207.31069-2-tmurphy@arista.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190506185207.31069-2-tmurphy@arista.com>
User-Agent: Mutt/1.9.2 (2017-12-15)
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
 Thierry Reding <thierry.reding@gmail.com>, linux-s390@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-rockchip@lists.infradead.org,
 Kukjin Kim <kgene@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Andy Gross <andy.gross@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-tegra@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, David Woodhouse <dwmw2@infradead.org>,
 linux-kernel@vger.kernel.org, murphyt7@tcd.ie,
 iommu@lists.linux-foundation.org, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gTW9uLCBNYXkgMDYsIDIwMTkgYXQgMDc6NTI6MDNQTSArMDEwMCwgVG9tIE11cnBoeSB2aWEg
aW9tbXUgd3JvdGU6Cj4gV2UgY2FuIHJlbW92ZSB0aGUgbXV0ZXggbG9jayBmcm9tIGFtZF9pb21t
dV9tYXAgYW5kIGFtZF9pb21tdV91bm1hcC4KPiBpb21tdV9tYXAgZG9lc27igJl0IGxvY2sgd2hp
bGUgbWFwcGluZyBhbmQgc28gbm8gdHdvIGNhbGxzIHNob3VsZCB0b3VjaAo+IHRoZSBzYW1lIGlv
dmEgcmFuZ2UuIFRoZSBBTUQgZHJpdmVyIGFscmVhZHkgaGFuZGxlcyB0aGUgcGFnZSB0YWJsZSBw
YWdlCj4gYWxsb2NhdGlvbnMgd2l0aG91dCBsb2NrcyBzbyB3ZSBjYW4gc2FmZWx5IHJlbW92ZSB0
aGUgbG9ja3MuCgpCdHcsIHRoaXMgcmVhbGx5IHNob3VsZCBiZSBhIHNlcGFyYXRlIHBhdGNoLgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
