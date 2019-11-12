Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9704BF9526
	for <lists+linux-rockchip@lfdr.de>; Tue, 12 Nov 2019 17:08:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LhysbFj76qymmf3P67Akohj9NjI5gI8Ffb5Rq7ASBRw=; b=TjODO70eHX7hzg
	HjHqmn+0aX6hdjaHa+Mh1TVcJ6apayBXgDmckO/lCwk1/xsIv7mVeWvQUalAO94fiNkifzXKrGDtO
	0K6VBPEp6+zit8zK5iNheRdDPNaKbHzlL6H4RTv65vA1AxJflJLWrjSPub9KeSEJifQ537vIHxl6m
	tOFAj9xm30yMJZ7ikUK6qoi69OfHlN4TstFWW9oB71DnUmDLQVta0CnpPW+iqjWisHTvncAb+O9Cn
	mVo/Zd88wp8wRHlE50HzbHACc07GpgdGcuUYGF7g/uuIePxDnAhD041lXHwrpQcWB9RefkNAufnWC
	5O5/aEBYM37lswAWgGhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUYiU-0002i5-HV; Tue, 12 Nov 2019 16:08:30 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUYiL-0002Zr-Pk; Tue, 12 Nov 2019 16:08:23 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id E60A52E2; Tue, 12 Nov 2019 17:08:11 +0100 (CET)
Date: Tue, 12 Nov 2019 17:08:10 +0100
From: Joerg Roedel <joro@8bytes.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] iommu/rockchip: Don't provoke WARN for harmless IRQs
Message-ID: <20191112160810.GB3884@8bytes.org>
References: <82cba203551939399d219e4cb6c602315fd0c410.1573498518.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <82cba203551939399d219e4cb6c602315fd0c410.1573498518.git.robin.murphy@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_080821_987690_81EC0082 
X-CRM114-Status: GOOD (  11.98  )
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
Cc: heiko@sntech.de, maz@kernel.org, Vasily Khoruzhick <anarsoul@gmail.com>,
 linux-rockchip@lists.infradead.org, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, Nov 11, 2019 at 06:55:18PM +0000, Robin Murphy wrote:
> Although we don't generally expect IRQs to fire for a suspended IOMMU,
> there are certain situations (particularly with debug options) where
> we might legitimately end up with the pm_runtime_get_if_in_use() call
> from rk_iommu_irq() returning 0. Since this doesn't represent an actual
> error, follow the other parts of the driver and save the WARN_ON()
> condition for a genuine negative value. Even if we do have spurious
> IRQs due to a wedged VOP asserting the shared line, it's not this
> driver's job to try to second-guess the IRQ core to warn about that.
> 
> Reported-by: Vasily Khoruzhick <anarsoul@gmail.com>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  drivers/iommu/rockchip-iommu.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
