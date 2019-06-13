Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5613D44BC7
	for <lists+linux-rockchip@lfdr.de>; Thu, 13 Jun 2019 21:10:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qfol6v3JXWKi1nIpB41zy3XMoNgjD9hsyrh8CExwoZ8=; b=U7ks0oej3+GS+M
	AgmmuHgD2RuVuZy5dJiISyrKcFXXTM68FlaERLkzZhFRXecj6JhbdSc+mz09hV2pEueH3Bo9x0WkU
	ug3DLa/xGvy5TcKyPPaZb6vq/5j1ScQyNnWYdcmltyTwnDTZuWksJ6rfh0dLQuodBhZgkrmcrTWcn
	pN5Fw68b2CvUjeFmmsaRn7Gk+NatF5FsWfl9TPs86wbr+SU9L4g7zRXDj7k1r8pU3Qsf2r84x6+R5
	Kwv+WngJjYewRy9Klv8Lpvh6YNu0W0+8+9AvOnV2Mge05VvQw9kL5v3KYp7ZLagUVCCBjO92+GWXB
	abekYGDBpyIu+p4DAuvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbV71-0000nJ-Ad; Thu, 13 Jun 2019 19:10:15 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbV6h-0007pv-Vo; Thu, 13 Jun 2019 19:09:57 +0000
Received: from ip5f5a6320.dynamic.kabel-deutschland.de ([95.90.99.32]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hbV6T-0000Sd-2L; Thu, 13 Jun 2019 21:09:41 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [PATCH 09/10] iommu/rockchip: convert to SPDX license tags
Date: Thu, 13 Jun 2019 21:09:39 +0200
Message-ID: <1921640.M456AIj05J@diego>
In-Reply-To: <20190613162703.986-9-tiny.windzz@gmail.com>
References: <20190613162703.986-1-tiny.windzz@gmail.com>
 <20190613162703.986-9-tiny.windzz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_120956_172347_AA8E3321 
X-CRM114-Status: UNSURE (   5.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-samsung-soc@vger.kernel.org, iommu@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, joro@8bytes.org, will.deacon@arm.com,
 agross@kernel.org, krzk@kernel.org, jonathanh@nvidia.com,
 david.brown@linaro.org, robdclark@gmail.com, kgene@kernel.org,
 thierry.reding@gmail.com, linux-arm-msm@vger.kernel.org,
 linux-tegra@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Donnerstag, 13. Juni 2019, 18:27:02 CEST schrieb Yangtao Li:
> Updates license to use SPDX-License-Identifier.
> 
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>

Acked-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
