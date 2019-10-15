Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15440D73B5
	for <lists+linux-rockchip@lfdr.de>; Tue, 15 Oct 2019 12:46:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZXMgY0qU5LuvWFCH4TW7hymvC8Dg8Swp9sA7VfJ1cn0=; b=hcN2bjl8FO9Oln
	IywcIrN/AXuQJUo6Mv4Humy/QkS+lIhffSN7wPJZ7PUGt4nqw63w+KFW8XxAWjcV48yxHXDdMRWXH
	WiXmsaIg6o3KdN4hilHDnTL88IX9IlMUem9jLLLHIAUf+07XpkmUwKWu22eYv/n5S8O3GKYUSQV/E
	JfytY2I4wF0iVnKPZ7O4hsLVEBzYTXT+WXBbzoO13P19GWQ9VJnU6/Jp54wpHKUuCVyBHPm+DEIVg
	InRyBcf3agWoBNUDLD9SpUFX3ZcIAgU4pPi2uZavpaJqgBZpJvKN43YMHm6HNxEWwPEJKTN8ORGwN
	r75OCGEyd68bLSrdjRCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKKLM-0004ZB-Le; Tue, 15 Oct 2019 10:46:20 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKKL3-0004LP-4l; Tue, 15 Oct 2019 10:46:02 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 3E5212D9; Tue, 15 Oct 2019 12:45:48 +0200 (CEST)
Date: Tue, 15 Oct 2019 12:45:46 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] iommu/rockchip: don't use platform_get_irq to implicitly
 count irqs
Message-ID: <20191015104546.GD14518@8bytes.org>
References: <20190925184346.14121-1-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190925184346.14121-1-heiko@sntech.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_034601_334683_A613694E 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [81.169.241.247 listed in list.dnswl.org]
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
Cc: linux-rockchip@lists.infradead.org, iommu@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, Sep 25, 2019 at 08:43:46PM +0200, Heiko Stuebner wrote:
> Till now the Rockchip iommu driver walked through the irq list via
> platform_get_irq() until it encountered an ENXIO error. With the
> recent change to add a central error message, this always results
> in such an error for each iommu on probe and shutdown.
> 
> To not confuse people, switch to platform_count_irqs() to get the
> actual number of interrupts before walking through them.
> 
> Fixes: 7723f4c5ecdb ("driver core: platform: Add an error message to platform_get_irq*()")
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  drivers/iommu/rockchip-iommu.c | 19 ++++++++++++++-----
>  1 file changed, 14 insertions(+), 5 deletions(-)

Applied for v5.4, thanks.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
