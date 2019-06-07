Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 607C938CEE
	for <lists+linux-rockchip@lfdr.de>; Fri,  7 Jun 2019 16:26:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vOBnLFymDICpSwT1XGqwpZ8ts3hZ6XOD2EM1BdlmoI4=; b=RAti6os5fg6BZA
	K9fyVfP58kl+5NXizlpW5X6iMiA6Q2sY/NHaYZHEWfcPmP/GGfnvwRhh99tje2jBb/oX0iuOgjsZc
	4acjt9BpeEAdHs48KiKC+BbTYpMstgXxBjofrPdfX4566VooWMO5/juAMJT/cAVByc1aetRv+FO3U
	Tiugd+kN3Vg33Joax1RiW/v65HzDMAf4mnpHJZBAe/kDebeIh5KsyE76gA0T68DDEKVYceYxOWZHG
	JuuKkunxR0qjPY3Yl2OO0W0kk/iRmFCqNOOPslD4pMMNxDQnIy2vTOm9GN7QFzFqMcM1APWiQ/rLF
	yibxx1TGnBGia7peekfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZFp7-0007NR-Dn; Fri, 07 Jun 2019 14:26:29 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZFp4-0007Mc-IA
 for linux-rockchip@lists.infradead.org; Fri, 07 Jun 2019 14:26:27 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 671CA2852B4;
 Fri,  7 Jun 2019 15:26:23 +0100 (BST)
Date: Fri, 7 Jun 2019 16:26:19 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] media: rockchip/vpu: remove an unnecessary NULL check
Message-ID: <20190607162619.06a3186d@collabora.com>
In-Reply-To: <20190607135609.GA16718@mwanda>
References: <20190607135609.GA16718@mwanda>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_072626_731869_8E44BD48 
X-CRM114-Status: GOOD (  14.22  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, kernel-janitors@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, 7 Jun 2019 16:56:09 +0300
Dan Carpenter <dan.carpenter@oracle.com> wrote:

> Thus the address of "&ctx->dev->variant->codec_ops[codec_mode]"
> can't possibly be NULL.
> 
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> ---
>  drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.c b/drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.c
> index 1b80a45df8fe..42f4eb0abc8a 100644
> --- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.c
> +++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_v4l2.c
> @@ -619,7 +619,7 @@ static int rockchip_vpu_start_streaming(struct vb2_queue *q,
>  
>  		vpu_debug(4, "Codec mode = %d\n", codec_mode);
>  		ctx->codec_ops = &ctx->dev->variant->codec_ops[codec_mode];
> -		if (ctx->codec_ops && ctx->codec_ops->init)
> +		if (ctx->codec_ops->init)
>  			ret = ctx->codec_ops->init(ctx);
>  	}
>  


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
