Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E880EFC2E8
	for <lists+linux-rockchip@lfdr.de>; Thu, 14 Nov 2019 10:46:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PGFnJ2VCcrmTg3O53Zdru6e8QPSoDHzZvbULCiEmtCA=; b=n1QLMDhMatLWYC
	ZzAzTN5GXphoSQ5Rx3YMJj0IrIvsF1yWiyddwFKgmhDMiXTnMjAsQbFOwtt5bwvnrwVBIgmQws/h0
	NU2MPyoMH/cilZx7fvNiKWc7TptL5a2PhV/DrkBmXQ8dvmGXmkfn42ngWWK7t3IMSPSLUM4mALIlq
	j5uLVZqgPGOBdvH/iqBUpp0s727h3eVYG/1lnVVMT0hGdxKwoqaP53lz1HIK0g7jR/ahDRj3IPWxM
	KKAVz898nkvb8sXZMKYVtmUrg4836IwjTSZwe7vGHO2CIFiMpSmToXHXR/tE6IQK41l8o+T6uiTpd
	SeudQX2Xoy9jFDAeXZIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVBhX-0003Xv-T2; Thu, 14 Nov 2019 09:46:07 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVBhV-0003XV-84
 for linux-rockchip@lists.infradead.org; Thu, 14 Nov 2019 09:46:06 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 7504B28DADD;
 Thu, 14 Nov 2019 09:46:03 +0000 (GMT)
Date: Thu, 14 Nov 2019 10:46:00 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH v3 2/3] media: hantro: Support color conversion via
 post-processing
Message-ID: <20191114104600.5c6c3e26@collabora.com>
In-Reply-To: <20191113175603.24742-3-ezequiel@collabora.com>
References: <20191113175603.24742-1-ezequiel@collabora.com>
 <20191113175603.24742-3-ezequiel@collabora.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_014605_414149_A5E198C5 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 linux-rockchip@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 kernel@collabora.com, Chris Healy <cphealy@gmail.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Ezequiel,

On Wed, 13 Nov 2019 14:56:02 -0300
Ezequiel Garcia <ezequiel@collabora.com> wrote:

> +
> +int hantro_postproc_alloc(struct hantro_ctx *ctx)
> +{
> +	struct hantro_dev *vpu = ctx->dev;
> +	unsigned int i, buf_size;
> +
> +	buf_size = ctx->dst_fmt.plane_fmt[0].sizeimage;
> +
> +	for (i = 0; i < VB2_MAX_FRAME; ++i) {

Don't we know at that point how big the queue is (vq->num_buffers)?
Sounds a bit expensive to always allocate VB2_MAX_FRAME aux buffers.

> +		struct hantro_aux_buf *priv = &ctx->postproc.dec_q[i];
> +
> +		/*
> +		 * The buffers on this queue are meant as intermediate
> +		 * buffers for the decoder, so no mapping is needed.
> +		 */
> +		priv->attrs = DMA_ATTR_NO_KERNEL_MAPPING;
> +		priv->cpu = dma_alloc_attrs(vpu->dev, buf_size, &priv->dma,
> +					    GFP_KERNEL, priv->attrs);
> +		if (!priv->cpu)
> +			return -ENOMEM;
> +		priv->size = buf_size;
> +	}
> +	return 0;
> +}

Other than that, the post-proc extension looks pretty good. Thought it
would be much more invasive than that.

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
