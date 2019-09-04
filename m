Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E04B7A8351
	for <lists+linux-rockchip@lfdr.de>; Wed,  4 Sep 2019 15:02:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EdgZmCDi1zqgW9IBfz9qzLG1pz3L+akwl+m6A5i1VCE=; b=RzwV4IqORtimO7
	2P4geLageQn4o8kHYoGBeUenV/PmjelQwkpjCy5v+WqoTaDWtgUqlTs0/8GeuKpN0MMkteexsXNOv
	uJbhdd7Fp9EGqej36hCTY8kOy4d5G6gYqpK9bNMJT0u5pc8khQhTUg3QXM5X6S3ULrQyGb1ZUJ4W+
	2rxMLjOUWvZBIGtTF3523nTU/JJ6DgK5Tlr6HZBDodLzKarJcw/T1yV3ys+qMxc5/aV6SYhO4vosI
	ETQ06zKAjGU5D0qtWi1nksNpO5gP+o3hxjrRqhRFRWHJ1WopNZYv7/S3x9GEBFkUl5OZ3B3eTai8Z
	h8TynyPztptdisBpKOhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5UvG-0002eH-Rm; Wed, 04 Sep 2019 13:02:06 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5UvD-0002dE-1d
 for linux-rockchip@lists.infradead.org; Wed, 04 Sep 2019 13:02:05 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 8FD28260B2D
Message-ID: <37bbd1b8ee7bb82c75aefb675e0c3ddd955dde0b.camel@collabora.com>
Subject: Re: [PATCH for 5.4] media: hantro: Fix s_fmt for dynamic resolution
 changes
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Philipp Zabel <p.zabel@pengutronix.de>, linux-media@vger.kernel.org
Date: Wed, 04 Sep 2019 10:01:50 -0300
In-Reply-To: <1567592011.3041.1.camel@pengutronix.de>
References: <20190903171256.25052-1-ezequiel@collabora.com>
 <1567592011.3041.1.camel@pengutronix.de>
Organization: Collabora
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_060203_356710_02C68899 
X-CRM114-Status: GOOD (  20.11  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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

On Wed, 2019-09-04 at 12:13 +0200, Philipp Zabel wrote:
> Hi Ezequiel,
> 
> On Tue, 2019-09-03 at 14:12 -0300, Ezequiel Garcia wrote:
> > Commit 953aaa1492c53 ("media: rockchip/vpu: Prepare things to support decoders")
> > changed the conditions under S_FMT was allowed for OUTPUT
> > CAPTURE buffers.
> > 
> > However, and according to the mem-to-mem stateless decoder specification,
> > in order to support dynamic resolution changes, S_FMT should be allowed
> > even if OUTPUT buffers have been allocated.
> > 
> > Relax decoder S_FMT restrictions on OUTPUT buffers, allowing a resolution
> > modification, provided the pixel format stays the same.
> > 
> > Tested on RK3288 platforms using ChromiumOS Video Decode/Encode Accelerator Unittests.
> > 
> > Fixes: 953aaa1492c53 ("media: rockchip/vpu: Prepare things to support decoders")
> > Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> > ---
> >  drivers/staging/media/hantro/hantro_v4l2.c | 22 ++++++++++++++++------
> >  1 file changed, 16 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/staging/media/hantro/hantro_v4l2.c b/drivers/staging/media/hantro/hantro_v4l2.c
> > index 3dae52abb96c..d48b548842cf 100644
> > --- a/drivers/staging/media/hantro/hantro_v4l2.c
> > +++ b/drivers/staging/media/hantro/hantro_v4l2.c
> > @@ -367,19 +367,22 @@ vidioc_s_fmt_out_mplane(struct file *file, void *priv, struct v4l2_format *f)
> >  {
> >  	struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
> >  	struct hantro_ctx *ctx = fh_to_ctx(priv);
> > +	struct vb2_queue *vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type);
> >  	const struct hantro_fmt *formats;
> >  	unsigned int num_fmts;
> > -	struct vb2_queue *vq;
> >  	int ret;
> >  
> > -	/* Change not allowed if queue is busy. */
> > -	vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type);
> > -	if (vb2_is_busy(vq))
> > -		return -EBUSY;
> > -
> >  	if (!hantro_is_encoder_ctx(ctx)) {
> >  		struct vb2_queue *peer_vq;
> >  
> > +		/*
> > +		 * In other to support dynamic resolution change,
> > +		 * the decoder admits a resolution change, as long
> > +		 * as the pixelformat remains. Can't be done if streaming.
> > +		 */
> > +		if (vb2_is_streaming(vq) || (vb2_is_busy(vq) &&
> > +		    pix_mp->pixelformat != ctx->src_fmt.pixelformat))
> 
> Before using contents of the v4l2_format f for comparison, we should run
> vidioc_try_fmt_out_mplane over it.

Right, good catch.

>  Also, besides pixelformat, sizeimage
> shouldn't change either, at least if this is a VB2_MMAP queue.
> 

This is the OUTPUT queue, so I don't see why the sizeimage
of the coded buffers should stay the same. Maybe I'm missing
something? 

> > +			return -EBUSY;
> >  		/*
> >  		 * Since format change on the OUTPUT queue will reset
> >  		 * the CAPTURE queue, we can't allow doing so
> > @@ -389,6 +392,13 @@ vidioc_s_fmt_out_mplane(struct file *file, void *priv, struct v4l2_format *f)
> >  					  V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE);
> >  		if (vb2_is_busy(peer_vq))
> >  			return -EBUSY;
> > +	} else {
> > +		/*
> > +		 * The encoder doesn't admit a format change if
> > +		 * there are OUTPUT buffers allocated.
> > +		 */
> > +		if (vb2_is_busy(vq))
> > +			return -EBUSY;
> >  	}
> >  
> >  	ret = vidioc_try_fmt_out_mplane(file, priv, f);
> 
> I think this needs to be moved up.
> 

Right.

Thanks,
Ezequiel


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
