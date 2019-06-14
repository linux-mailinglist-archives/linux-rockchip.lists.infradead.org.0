Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D38E45F9F
	for <lists+linux-rockchip@lfdr.de>; Fri, 14 Jun 2019 15:53:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=njYSqHAs+OYfC9LFA9TIgWnWz0T6whpMEXdf7aF5hFE=; b=kUbErUAmBxKEQB
	4TfxN9deE7twgkTyqIuSUqoWYbe9bzUtpkU+mtk/P8c/wbfcyrN8VefoijZT/I8RoWxVGcx+eDh2f
	F/W7TYvfE5u0JoAzbtgbeqhAb5Kqj2mLxslFSNTAkZuliF/aLJiYovPlBoi7+KtAfdZkIVtsrcq/+
	U7kjBNvhVyTkCwPVGqwAZmI2NvCeCal1bsp1ACjc95LkWA9u8N7WzrGrmUE5FxGlr6XEcgpSgkoes
	6jF+P1BHOBG9+TLaPF2Uqf4mIXs7J4PRbwOxQaAJpiY62I30T+fBL1WPRGpAmFvYFDo5Ev1MZW0x3
	AnZhLe54QiTUW3XJ4xJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbmeE-0006Vb-DE; Fri, 14 Jun 2019 13:53:42 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbmdz-00066R-EF
 for linux-rockchip@lists.infradead.org; Fri, 14 Jun 2019 13:53:32 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id C2A73260EF1;
 Fri, 14 Jun 2019 14:53:23 +0100 (BST)
Date: Fri, 14 Jun 2019 15:53:20 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [RFC/WIP] drm/rockchip: Support CRTC gamma LUT
Message-ID: <20190614155320.348d42af@collabora.com>
In-Reply-To: <20190613192244.5447-1-ezequiel@collabora.com>
References: <20190613192244.5447-1-ezequiel@collabora.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_065327_655864_40B16404 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>,
 Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org,
 Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 Sean Paul <seanpaul@chromium.org>, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, 13 Jun 2019 16:22:44 -0300
Ezequiel Garcia <ezequiel@collabora.com> wrote:


> +static int vop_gamma_lut_request(struct device *dev,
> +				 struct resource *res, struct vop *vop)
> +{
> +	resource_size_t offset = vop->data->gamma_lut_addr_off;
> +	resource_size_t size = VOP_GAMMA_LUT_SIZE * 4;
> +
> +	/*
> +	 * Some SoCs (e.g. RK3288) have the gamma LUT address after
> +	 * the MMU registers, which means we can't request and ioremap
> +	 * the entire register set. Other (e.g. RK3399) have gamma LUT
> +	 * address before MMU.
> +	 *
> +	 * Therefore, we need to request and ioremap those that haven't
> +	 * been already.
> +	 */
> +	if (vop->len >= (offset + size)) {
> +		vop->lut_regs = vop->regs + offset;
> +		return 0;
> +	}
> +
> +	if (!devm_request_mem_region(dev, res->start + offset,
> +				     size, dev_name(dev))) {
> +		dev_warn(dev, "can't request gamma lut region\n");
> +		return -EBUSY;
> +	}
> +
> +	vop->lut_regs = devm_ioremap(dev, res->start + offset, size);
> +	if (!vop->lut_regs) {
> +		dev_err(dev, "can't ioremap gamma lut address\n");
> +		devm_release_mem_region(dev, res->start + offset, size);
> +		return -ENOMEM;
> +	}

Can't we patch the resource just after calling plaform_get_resource()
(and before calling devm_ioremap_resource()) so we don't have to add
these devm_request_mem_region()+devm_ioremap() calls here?

> +	return 0;
> +}

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
