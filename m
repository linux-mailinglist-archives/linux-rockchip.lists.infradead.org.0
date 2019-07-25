Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03126752FD
	for <lists+linux-rockchip@lfdr.de>; Thu, 25 Jul 2019 17:40:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wgn0yCAa2VRAHNJcgrHref/0RtgQbcVpXkcKVnllAb4=; b=Cqi2cierHgOEHI
	CaxKJXUbE6axHfHuTEHZkpoZqd8O789R6rxGBe0WPsOiKU4S1hkhe20fWFk1Mfa4mQdt2BZXVEui0
	VVUqn4KhlWhhWvWIp2edhW8unUZpbEE3tFAh7Oq0WuiV5TKitExVFrIptRj9lWmDZJn5DbCO2iT2y
	C1/pKFsXIuSmYfe3NeC/tDTKAeroCjZ6FMFSvTXR/ZXqzde3Z2MSGh/PAPgOLhcTD7ZZWbTfiRlX/
	zcih5PvGSk15TrvEsyQRETD9GXVjHUh723d6sYLrlg/O345BKqf7ViXURICCeAgvgHFfxNo2DBmjs
	Hl8e1KBdAmtY1QS9cQFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqfqV-00082F-8R; Thu, 25 Jul 2019 15:39:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqfnY-00051o-OM
 for linux-rockchip@lists.infradead.org; Thu, 25 Jul 2019 15:36:58 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1hqfnQ-0001bw-8U; Thu, 25 Jul 2019 17:36:44 +0200
Message-ID: <1564069001.3006.1.camel@pengutronix.de>
Subject: Re: [PATCH v2 1/7] media: hantro: Set DMA max segment size
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org, 
 Hans Verkuil <hans.verkuil@cisco.com>
Date: Thu, 25 Jul 2019 17:36:41 +0200
In-Reply-To: <20190725141756.2518-2-ezequiel@collabora.com>
References: <20190725141756.2518-1-ezequiel@collabora.com>
 <20190725141756.2518-2-ezequiel@collabora.com>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_083652_876775_F9A44538 
X-CRM114-Status: GOOD (  14.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: fbuergisser@chromium.org, Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, 2019-07-25 at 11:17 -0300, Ezequiel Garcia wrote:
> From: Francois Buergisser <fbuergisser@chromium.org>
> 
> The Hantro codec is typically used in platforms with an IOMMU,
> so we need to set a proper DMA segment size.

... to make sure the DMA-mapping subsystem produces contiguous mappings?

> Devices without an
> IOMMU will still fallback to default 64KiB segments.

I don't understand this comment. The default max_seg_size may be 64 KiB,
but if we are always setting it to DMA_BUT_MASK(32), there is no falling
back.

> Cc: stable@vger.kernel.org
> Fixes: 775fec69008d3 ("media: add Rockchip VPU JPEG encoder driver")
> Signed-off-by: Francois Buergisser <fbuergisser@chromium.org>
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>  drivers/staging/media/hantro/hantro_drv.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
> index b71a06e9159e..4eae1dbb1ac8 100644
> --- a/drivers/staging/media/hantro/hantro_drv.c
> +++ b/drivers/staging/media/hantro/hantro_drv.c
> @@ -731,6 +731,7 @@ static int hantro_probe(struct platform_device *pdev)
>  		dev_err(vpu->dev, "Could not set DMA coherent mask.\n");
>  		return ret;
>  	}
> +	vb2_dma_contig_set_max_seg_size(&pdev->dev, DMA_BIT_MASK(32));

This should be complemented by a call to
vb2_dma_contig_clear_max_seg_size() in _remove,
to avoid leaking dev->dma_parms.

>  
>  	for (i = 0; i < vpu->variant->num_irqs; i++) {
>  		const char *irq_name = vpu->variant->irqs[i].name;

regards
Philipp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
