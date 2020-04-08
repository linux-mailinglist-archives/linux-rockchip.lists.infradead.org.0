Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18BD01A2171
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 Apr 2020 14:11:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Ba2MGPtJpAlGbWdnc9u+qIDHX6QmQYwvSEWiTocor4=; b=SLCxxLgNVZDO1r
	rIyv84Rt9UwvZeBabya6IBaI37wuOy4WfWOY7H0MrlwEaum6gFaiC+STkPQJYaoXIhn9GUC7AKwER
	VDHlmNkBC0B898bJCTAB/ilbWBMceipJpFNt+H0XX52XcUMOXij4yYcukrI+Y16H1j7UqM5pIZ/tk
	t9BaqB0cBP8vlTRkESYrmowy0SrLdWgzBPmrAPn7r3qLcQksVvbaU1aMvytJY66WTD9NmqskU6kKE
	VESvA9QJ76caxrKSuXX9cGtbphMi1BNxGS/v6JcDT24gDQNb++dFxMZgxTbZk08KBguuvUSyV84aG
	VsrZ6YhysyUNFFx1VWjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM9Yh-0001H6-8B; Wed, 08 Apr 2020 12:11:55 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM9Ye-0001GW-9S
 for linux-rockchip@lists.infradead.org; Wed, 08 Apr 2020 12:11:53 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id C1631522;
 Wed,  8 Apr 2020 14:11:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1586347911;
 bh=fNEHkv4xWj5my99Zm2nOYGlrKzbKQK6rzkcnqArw/pE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Le1xWe346japdrekjXGwc3WU9B8DnCFkULxYUXAE2JxZv+vKXcglsE3x22+nk97MT
 QlYhC/ZjWGSFkbSkiPEH1LLMLQOXYHFmyQK4BP7OcF7Y4iQbMpHbHBhg7ebJnCgZqK
 dd4HyG6pNwkoIZdkm1REfd/67kMPiOKsAZbQC6Xg=
Date: Wed, 8 Apr 2020 15:11:41 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH v3 5/6] media: staging: rkisp1: cap: support uv swapped
 plane formats
Message-ID: <20200408121141.GG4881@pendragon.ideasonboard.com>
References: <20200408114822.27360-1-dafna.hirschfeld@collabora.com>
 <20200408114822.27360-6-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200408114822.27360-6-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_051152_479573_1177154F 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mchehab@kernel.org, dafna3@gmail.com, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, Apr 08, 2020 at 01:48:21PM +0200, Dafna Hirschfeld wrote:
> Plane formats with the u and v planes swapped can be

s/Plane/Planar/

> supported by swapping the address of the cb and cr buffers.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-capture.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
> index 257799a7d865..9f0a3c407286 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
> @@ -743,6 +743,14 @@ static void rkisp1_vb2_buf_queue(struct vb2_buffer *vb)
>  			rkisp1_pixfmt_comp_size(pixm, RKISP1_PLANE_CB);
>  	}
>  
> +	/*
> +	 * uv swap can be supported for plane formats by switching

s/plane/planar/

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> +	 * the address of cb and cr
> +	 */
> +	if (cap->pix.info->comp_planes == 3 && cap->pix.cfg->uv_swap)
> +		swap(ispbuf->buff_addr[RKISP1_PLANE_CR],
> +		     ispbuf->buff_addr[RKISP1_PLANE_CB]);
> +
>  	spin_lock_irqsave(&cap->buf.lock, flags);
>  
>  	/*

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
