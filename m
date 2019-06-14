Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D10B45FF2
	for <lists+linux-rockchip@lfdr.de>; Fri, 14 Jun 2019 16:03:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zDItNQMTokt68EzoqYNPIX4nyo1c0I+DotVGcYdvUOs=; b=Qa4nQJTS9Q1nA3
	etO5AMVClRk3JCe8Li3yhu82gaaWj0GG0v0xFFSFjWWpCALTdXJut/aMuaJXu8aDqcPxc+/uCsUdo
	5EKrgcUWi+eeUBu2n/L0VzBJw3igb7ogCvquVoE60Z6XvT8qPFcFQvg8vDNomzUwgB9hUwnFFrK+T
	f8TWzVAMFg9HHIjf478tdMkI5FjXoAE6gnewUm1Ic1+gD+6LDE4tGGFBclHU94JQdRa5qparncN3l
	ySQcxok1LAMsuVHzPqYDvFJ+Qnkuu0Tr50g45ShqeGkKImMaVbQelX/ODqCvREDedYiSPFPZs0uTk
	E+OFa+4WWWUwvTTlO7RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbmno-00009E-E4; Fri, 14 Jun 2019 14:03:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbmnl-00008Y-DI
 for linux-rockchip@lists.infradead.org; Fri, 14 Jun 2019 14:03:34 +0000
Received: from ip5f5a6320.dynamic.kabel-deutschland.de ([95.90.99.32]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hbmnh-0005bS-8g; Fri, 14 Jun 2019 16:03:29 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [RFC/WIP] drm/rockchip: Support CRTC gamma LUT
Date: Fri, 14 Jun 2019 16:03:28 +0200
Message-ID: <4034618.A4UzVy7svI@diego>
In-Reply-To: <20190614155320.348d42af@collabora.com>
References: <20190613192244.5447-1-ezequiel@collabora.com>
 <20190614155320.348d42af@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_070333_594801_88DCA7CA 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org,
 Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 Sean Paul <seanpaul@chromium.org>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Boris,

Am Freitag, 14. Juni 2019, 15:53:20 CEST schrieb Boris Brezillon:
> On Thu, 13 Jun 2019 16:22:44 -0300
> Ezequiel Garcia <ezequiel@collabora.com> wrote:
> 
> 
> > +static int vop_gamma_lut_request(struct device *dev,
> > +				 struct resource *res, struct vop *vop)
> > +{
> > +	resource_size_t offset = vop->data->gamma_lut_addr_off;
> > +	resource_size_t size = VOP_GAMMA_LUT_SIZE * 4;
> > +
> > +	/*
> > +	 * Some SoCs (e.g. RK3288) have the gamma LUT address after
> > +	 * the MMU registers, which means we can't request and ioremap
> > +	 * the entire register set. Other (e.g. RK3399) have gamma LUT
> > +	 * address before MMU.
> > +	 *
> > +	 * Therefore, we need to request and ioremap those that haven't
> > +	 * been already.
> > +	 */
> > +	if (vop->len >= (offset + size)) {
> > +		vop->lut_regs = vop->regs + offset;
> > +		return 0;
> > +	}
> > +
> > +	if (!devm_request_mem_region(dev, res->start + offset,
> > +				     size, dev_name(dev))) {
> > +		dev_warn(dev, "can't request gamma lut region\n");
> > +		return -EBUSY;
> > +	}
> > +
> > +	vop->lut_regs = devm_ioremap(dev, res->start + offset, size);
> > +	if (!vop->lut_regs) {
> > +		dev_err(dev, "can't ioremap gamma lut address\n");
> > +		devm_release_mem_region(dev, res->start + offset, size);
> > +		return -ENOMEM;
> > +	}
> 
> Can't we patch the resource just after calling plaform_get_resource()
> (and before calling devm_ioremap_resource()) so we don't have to add
> these devm_request_mem_region()+devm_ioremap() calls here?

The issue is that on the older rk3288 socs the vops memory map has
the mmu registers (which get mapped separately) in between the core
and lut registers.




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
