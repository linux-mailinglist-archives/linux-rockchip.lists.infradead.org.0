Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A204F445A
	for <lists+linux-rockchip@lfdr.de>; Fri,  8 Nov 2019 11:20:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PHqnd2yLHNNei+MkHOty+BLu6amkDAOEYnCkvSRZwp8=; b=Tbswu1PpFPNpHp
	pv199lrUNWNgnDcgYCgvt7MRly3L3uE0ajlZc0IWQIEmjSlnIz8hJlhqI97LFhGkpwPT0wUESqUM2
	U3n2enshltOEkIfUr/t4UQcNVtyFtcMYHTKJepO1nRLNxfMftcxeRM/vgjk0hxdZmzLkClGOvX93o
	hj0wnfso+zbUiqdIIcHRBPnq1dHU856sP5eiWYhubvEKMYR1Kee/s81/v0EY24jvwpnSetHHseQTj
	yg5steSR3SUno8IqEhr8Dm635lzYKFbOEZOuVuaJveRz/DlqwK+9OpiN+AGwl21ATHUcf4zzsRzgH
	omqg6ccJsWhYUVj61BVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT1N9-0005x6-QY; Fri, 08 Nov 2019 10:20:07 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT1N5-0004x4-OA
 for linux-rockchip@lists.infradead.org; Fri, 08 Nov 2019 10:20:05 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id D8B0828EE5A;
 Fri,  8 Nov 2019 10:19:55 +0000 (GMT)
Date: Fri, 8 Nov 2019 11:19:50 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Ezequiel Garcia <ezequiel@collabora.com>, Tomasz Figa
 <tfiga@chromium.org>, Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [PATCH v2 for 5.4 1/4] media: hantro: Fix s_fmt for dynamic
 resolution changes
Message-ID: <20191108111950.717db5ce@collabora.com>
In-Reply-To: <20191007174505.10681-2-ezequiel@collabora.com>
References: <20191007174505.10681-1-ezequiel@collabora.com>
 <20191007174505.10681-2-ezequiel@collabora.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_022004_052237_3948BFBC 
X-CRM114-Status: GOOD (  22.68  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: fbuergisser@chromium.org, kernel@collabora.com,
 Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon,  7 Oct 2019 14:45:02 -0300
Ezequiel Garcia <ezequiel@collabora.com> wrote:

> Commit 953aaa1492c53 ("media: rockchip/vpu: Prepare things to support decoders")
> changed the conditions under S_FMT was allowed for OUTPUT
> CAPTURE buffers.
> 
> However, and according to the mem-to-mem stateless decoder specification,
> in order to support dynamic resolution changes, S_FMT should be allowed
> even if OUTPUT buffers have been allocated.
> 
> Relax decoder S_FMT restrictions on OUTPUT buffers, allowing a resolution
> modification, provided the pixel format stays the same.
> 
> Tested on RK3288 platforms using ChromiumOS Video Decode/Encode Accelerator Unittests.
> 
> Fixes: 953aaa1492c53 ("media: rockchip/vpu: Prepare things to support decoders")
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> --
> v2:
> * Call try_fmt_out before using the format,
>   pointed out by Philipp.
> 
>  drivers/staging/media/hantro/hantro_v4l2.c | 28 +++++++++++++++-------
>  1 file changed, 19 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/staging/media/hantro/hantro_v4l2.c b/drivers/staging/media/hantro/hantro_v4l2.c
> index 3dae52abb96c..586d243cc3cc 100644
> --- a/drivers/staging/media/hantro/hantro_v4l2.c
> +++ b/drivers/staging/media/hantro/hantro_v4l2.c
> @@ -367,19 +367,26 @@ vidioc_s_fmt_out_mplane(struct file *file, void *priv, struct v4l2_format *f)
>  {
>  	struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
>  	struct hantro_ctx *ctx = fh_to_ctx(priv);
> +	struct vb2_queue *vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type);
>  	const struct hantro_fmt *formats;
>  	unsigned int num_fmts;
> -	struct vb2_queue *vq;
>  	int ret;
>  
> -	/* Change not allowed if queue is busy. */
> -	vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type);
> -	if (vb2_is_busy(vq))
> -		return -EBUSY;
> +	ret = vidioc_try_fmt_out_mplane(file, priv, f);
> +	if (ret)
> +		return ret;
>  
>  	if (!hantro_is_encoder_ctx(ctx)) {
>  		struct vb2_queue *peer_vq;
>  
> +		/*
> +		 * In other to support dynamic resolution change,

		      ^ order

> +		 * the decoder admits a resolution change, as long
> +		 * as the pixelformat remains. Can't be done if streaming.
> +		 */
> +		if (vb2_is_streaming(vq) || (vb2_is_busy(vq) &&
> +		    pix_mp->pixelformat != ctx->src_fmt.pixelformat))
> +			return -EBUSY;

Sorry to chime in only now, but I'm currently looking at the VP9 spec
and it seems the resolution is allowed to change dynamically [1] (I
guess the same applies to VP8). IIU the spec correctly, coded frames
using the new resolution can reference decoded frames using the old
one (can be higher or lower res BTW). If we force a streamoff to change
the resolution (as seems to be the case here), we'll lose those ref
frames (see the hantro_return_bufs() in stop streaming), right?
Hans, Tomasz, any idea how this dynamic resolution change could/should
be supported?

>  		/*
>  		 * Since format change on the OUTPUT queue will reset
>  		 * the CAPTURE queue, we can't allow doing so
> @@ -389,12 +396,15 @@ vidioc_s_fmt_out_mplane(struct file *file, void *priv, struct v4l2_format *f)
>  					  V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE);
>  		if (vb2_is_busy(peer_vq))
>  			return -EBUSY;
> +	} else {
> +		/*
> +		 * The encoder doesn't admit a format change if
> +		 * there are OUTPUT buffers allocated.
> +		 */
> +		if (vb2_is_busy(vq))
> +			return -EBUSY;
>  	}
>  
> -	ret = vidioc_try_fmt_out_mplane(file, priv, f);
> -	if (ret)
> -		return ret;
> -
>  	formats = hantro_get_formats(ctx, &num_fmts);
>  	ctx->vpu_src_fmt = hantro_find_format(formats, num_fmts,
>  					      pix_mp->pixelformat);

[1] Section "5.16 Reference frame scaling" of
    https://storage.googleapis.com/downloads.webmproject.org/docs/vp9/vp9-bitstream-specification-v0.6-20160331-draft.pdf

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
