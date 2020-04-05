Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A13C19ED53
	for <lists+linux-rockchip@lfdr.de>; Sun,  5 Apr 2020 20:16:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mz20+HaBcSopKonmPukb7C4L7k2tGFSqaTWqob8SP9g=; b=OXTFcx8UQ/5qAd
	qZDG/7D27kZ2JG0805WeyFDfkZm1PJr1YMTuk26YoOq/PGoZBghj7dbysdD2RtiLKIekwlIyyqfjw
	9XbsXKD/RLKkry3fMf0LX/cdwdGfN7aAlLnyEf6J2UT8zEMiXRJsqPQ+wG4VIHYL/TLw+fZKCKVsM
	SQn0jvSzUVAf0POQjOQYF5Rn1Hwc/9fyE9Tl4ChOXxdCOV+2JcWiH47UJ5PoNVQpoD5JT2I7Xz7Ev
	yqrEmTPqn7NGEEX0Z/8wEkt2g5TdFBG5XMruyrTI7tcq9nt95WGvnLhydFfUxveu8+5P80fKmqMsr
	H4oPUX7Ot4wGHDsfKKWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL9oz-0006LX-Om; Sun, 05 Apr 2020 18:16:37 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL9ow-0006KP-6F
 for linux-rockchip@lists.infradead.org; Sun, 05 Apr 2020 18:16:35 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 90736312;
 Sun,  5 Apr 2020 20:16:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1586110592;
 bh=6I2KujTbCZll3Yyt2ypPUSXE5uM18DZss0se4L4MeJo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XSVo29Ai+DigFoYHI7nfEyYeNrFVHAmfXXIIB7JPbAnIFaBRp9qtQf+0S8PHz/Nxf
 az4tp+PTjRVyx57MKWfNAz7qI9238Lzrm0jEmBS2xP5a9m/E1AOWuTl13NRj04W6+k
 Wk60nGHqBamJOv/pE6XGwGir1vGMXQ7hmQNx+FH8=
Date: Sun, 5 Apr 2020 21:16:23 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH v2 4/5] media: staging: rkisp1: cap: support uv swapped
 plane formats
Message-ID: <20200405181623.GQ5846@pendragon.ideasonboard.com>
References: <20200402190419.15155-1-dafna.hirschfeld@collabora.com>
 <20200402190419.15155-5-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200402190419.15155-5-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_111634_385062_5B0A32D4 
X-CRM114-Status: GOOD (  14.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dafna3@gmail.com, hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, kernel@collabora.com, ezequiel@collabora.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Dafna,

Thank you for the patch.

On Thu, Apr 02, 2020 at 09:04:18PM +0200, Dafna Hirschfeld wrote:
> Plane formats with the u and v planes swapped can be
> supported by changing the address of the cb and cr in
> the buffer.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> Acked-by: Helen Koike <helen.koike@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-capture.c | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
> index fa2849209433..2d274e8f565b 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
> @@ -41,6 +41,10 @@
>  	(((write_format) == RKISP1_MI_CTRL_MP_WRITE_YUV_SPLA) ||	\
>  	 ((write_format) == RKISP1_MI_CTRL_SP_WRITE_SPLA))
>  
> +#define RKISP1_IS_PLANAR(write_format)					\
> +	(((write_format) == RKISP1_MI_CTRL_SP_WRITE_PLA) ||		\
> +	 ((write_format) == RKISP1_MI_CTRL_MP_WRITE_YUV_PLA_OR_RAW8))
> +
>  enum rkisp1_plane {
>  	RKISP1_PLANE_Y	= 0,
>  	RKISP1_PLANE_CB	= 1,
> @@ -788,6 +792,19 @@ static void rkisp1_vb2_buf_queue(struct vb2_buffer *vb)
>  			rkisp1_pixfmt_comp_size(pixm, RKISP1_PLANE_CB);
>  	}
>  
> +	/*
> +	 * uv swap can be supported for plane formats by switching
> +	 * the address of cb and cr
> +	 */
> +	if (RKISP1_IS_PLANAR(cap->pix.cfg->write_format) &&

As commented on patch 3/5, could this be checked from the data in
v4l2_format_info ?

> +	    cap->pix.cfg->uv_swap) {
> +		ispbuf->buff_addr[RKISP1_PLANE_CR] =
> +			ispbuf->buff_addr[RKISP1_PLANE_CB];
> +		ispbuf->buff_addr[RKISP1_PLANE_CB] =
> +			ispbuf->buff_addr[RKISP1_PLANE_CR] +
> +			rkisp1_pixfmt_comp_size(pixm, RKISP1_PLANE_CR);

How about

		swap(ispbuf->buff_addr[RKISP1_PLANE_CR],
		     ispbuf->buff_addr[RKISP1_PLANE_CB]);

?

> +	}
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
