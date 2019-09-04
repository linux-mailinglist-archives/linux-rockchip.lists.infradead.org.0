Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B0C0A8025
	for <lists+linux-rockchip@lfdr.de>; Wed,  4 Sep 2019 12:13:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wdT8MjEpKsO+y6LsbXW9qcZ46lIbRS66gBJSCNw1qhI=; b=uEunm5bO1p/PJi
	D/UoJFZe9EOtKjmPplbG7BqPWYlYKiSUorhk7VaA4WijI8F8Y9Ht3ISXUvmv5NIh/XFYFjj9WM5jt
	SKDte1dGpvcgydn0KzXSSoT3e0aEtMsEYsxheC+zYYNyMBVTOzPAtHgznXVB45F2WtHWtXp0P8CrF
	DpT3n+3ZTjX0c38hWgj7galMEhCDtzvXcyrBtb5z4Ipa7UYvN+BcwgXxwHLEBGnmn33+Cxck85Vfu
	b3gFje2dAMGMjzusJPop2bJGRppSe4k5YjsTXPVXdct1JylvBNnDsdp2PCExU/74cKAOZNIuZaYAa
	hgwl3JAKV85ft4LYaP7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5SIH-0004vU-3G; Wed, 04 Sep 2019 10:13:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5SID-0004ui-HS
 for linux-rockchip@lists.infradead.org; Wed, 04 Sep 2019 10:13:39 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1i5SIA-0000GT-8m; Wed, 04 Sep 2019 12:13:34 +0200
Message-ID: <1567592011.3041.1.camel@pengutronix.de>
Subject: Re: [PATCH for 5.4] media: hantro: Fix s_fmt for dynamic resolution
 changes
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Date: Wed, 04 Sep 2019 12:13:31 +0200
In-Reply-To: <20190903171256.25052-1-ezequiel@collabora.com>
References: <20190903171256.25052-1-ezequiel@collabora.com>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_031337_575436_F2E00B04 
X-CRM114-Status: GOOD (  17.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: fbuergisser@chromium.org, Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>, linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Ezequiel,

On Tue, 2019-09-03 at 14:12 -0300, Ezequiel Garcia wrote:
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
> ---
>  drivers/staging/media/hantro/hantro_v4l2.c | 22 ++++++++++++++++------
>  1 file changed, 16 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/media/hantro/hantro_v4l2.c b/drivers/staging/media/hantro/hantro_v4l2.c
> index 3dae52abb96c..d48b548842cf 100644
> --- a/drivers/staging/media/hantro/hantro_v4l2.c
> +++ b/drivers/staging/media/hantro/hantro_v4l2.c
> @@ -367,19 +367,22 @@ vidioc_s_fmt_out_mplane(struct file *file, void *priv, struct v4l2_format *f)
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
> -
>  	if (!hantro_is_encoder_ctx(ctx)) {
>  		struct vb2_queue *peer_vq;
>  
> +		/*
> +		 * In other to support dynamic resolution change,
> +		 * the decoder admits a resolution change, as long
> +		 * as the pixelformat remains. Can't be done if streaming.
> +		 */
> +		if (vb2_is_streaming(vq) || (vb2_is_busy(vq) &&
> +		    pix_mp->pixelformat != ctx->src_fmt.pixelformat))

Before using contents of the v4l2_format f for comparison, we should run
vidioc_try_fmt_out_mplane over it. Also, besides pixelformat, sizeimage
shouldn't change either, at least if this is a VB2_MMAP queue.

> +			return -EBUSY;
>  		/*
>  		 * Since format change on the OUTPUT queue will reset
>  		 * the CAPTURE queue, we can't allow doing so
> @@ -389,6 +392,13 @@ vidioc_s_fmt_out_mplane(struct file *file, void *priv, struct v4l2_format *f)
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
>  	ret = vidioc_try_fmt_out_mplane(file, priv, f);

I think this needs to be moved up.

regards
Philipp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
