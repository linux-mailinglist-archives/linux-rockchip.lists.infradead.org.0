Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B5DF602E
	for <lists+linux-rockchip@lfdr.de>; Sat,  9 Nov 2019 17:02:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bE0n0kGPdyFtnhBELk8iq9rskXpPlcM9OtKS/K36BwY=; b=nqry+AHw+/VCFw
	IIvh5zUi4joPDH03rq35ay3CnIr/9Q08z8a4QWrnf9uCR1GUivtgkEGHz2wHUX8FIBZnZ/VvePFUz
	ob85tNAk2DVF9w9P71EE4CO6xHIT+x2HvKiUicf9Fd8u8tdSmVysva3eD+CxLM7NdKHV6bxTEjA0i
	SIkCE87lhsImB1uLbUa9+htMH3gJi8StmRb9Qm25YJbqjl36DgEvMSQBUUidcmm5tBFRDEr3yaA04
	tApY87uXpjPAMsx7scI6MpW/0CLXbmh0kNNzKdjgZ0v0iMW/XRhgKEVD9K1T9IeCJUUbfZpThARQz
	qtmqBon8FNzGzf1cLKDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTTBY-0006AY-Pd; Sat, 09 Nov 2019 16:02:00 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTTBV-00069z-EI
 for linux-rockchip@lists.infradead.org; Sat, 09 Nov 2019 16:01:59 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 19504290C12
Message-ID: <6f51f8a8422f7ed073fae246ef8d617e439cc814.camel@collabora.com>
Subject: Re: [PATCH v2 for 5.4 1/4] media: hantro: Fix s_fmt for dynamic
 resolution changes
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Hans Verkuil <hverkuil@xs4all.nl>, Boris Brezillon
 <boris.brezillon@collabora.com>, Tomasz Figa <tfiga@chromium.org>
Date: Sat, 09 Nov 2019 13:01:43 -0300
In-Reply-To: <92cba217-4f14-a397-2ae5-8797cc931703@xs4all.nl>
References: <20191007174505.10681-1-ezequiel@collabora.com>
 <20191007174505.10681-2-ezequiel@collabora.com>
 <20191108111950.717db5ce@collabora.com>
 <92cba217-4f14-a397-2ae5-8797cc931703@xs4all.nl>
Organization: Collabora
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_080157_744000_813F4F8C 
X-CRM114-Status: GOOD (  26.50  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Hi Hans,

On Sat, 2019-11-09 at 13:25 +0100, Hans Verkuil wrote:
> On 11/8/19 11:19 AM, Boris Brezillon wrote:
> > On Mon,  7 Oct 2019 14:45:02 -0300
> > Ezequiel Garcia <ezequiel@collabora.com> wrote:
> > 
> > > Commit 953aaa1492c53 ("media: rockchip/vpu: Prepare things to support decoders")
> > > changed the conditions under S_FMT was allowed for OUTPUT
> > > CAPTURE buffers.
> > > 
> > > However, and according to the mem-to-mem stateless decoder specification,
> > > in order to support dynamic resolution changes, S_FMT should be allowed
> > > even if OUTPUT buffers have been allocated.
> > > 
> > > Relax decoder S_FMT restrictions on OUTPUT buffers, allowing a resolution
> > > modification, provided the pixel format stays the same.
> > > 
> > > Tested on RK3288 platforms using ChromiumOS Video Decode/Encode Accelerator Unittests.
> > > 
> > > Fixes: 953aaa1492c53 ("media: rockchip/vpu: Prepare things to support decoders")
> > > Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> > > --
> > > v2:
> > > * Call try_fmt_out before using the format,
> > >   pointed out by Philipp.
> > > 
> > >  drivers/staging/media/hantro/hantro_v4l2.c | 28 +++++++++++++++-------
> > >  1 file changed, 19 insertions(+), 9 deletions(-)
> > > 
> > > diff --git a/drivers/staging/media/hantro/hantro_v4l2.c b/drivers/staging/media/hantro/hantro_v4l2.c
> > > index 3dae52abb96c..586d243cc3cc 100644
> > > --- a/drivers/staging/media/hantro/hantro_v4l2.c
> > > +++ b/drivers/staging/media/hantro/hantro_v4l2.c
> > > @@ -367,19 +367,26 @@ vidioc_s_fmt_out_mplane(struct file *file, void *priv, struct v4l2_format *f)
> > >  {
> > >  	struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
> > >  	struct hantro_ctx *ctx = fh_to_ctx(priv);
> > > +	struct vb2_queue *vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type);
> > >  	const struct hantro_fmt *formats;
> > >  	unsigned int num_fmts;
> > > -	struct vb2_queue *vq;
> > >  	int ret;
> > >  
> > > -	/* Change not allowed if queue is busy. */
> > > -	vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type);
> > > -	if (vb2_is_busy(vq))
> > > -		return -EBUSY;
> > > +	ret = vidioc_try_fmt_out_mplane(file, priv, f);
> > > +	if (ret)
> > > +		return ret;
> > >  
> > >  	if (!hantro_is_encoder_ctx(ctx)) {
> > >  		struct vb2_queue *peer_vq;
> > >  
> > > +		/*
> > > +		 * In other to support dynamic resolution change,
> > 
> > 		      ^ order
> > 
> > > +		 * the decoder admits a resolution change, as long
> > > +		 * as the pixelformat remains. Can't be done if streaming.
> > > +		 */
> > > +		if (vb2_is_streaming(vq) || (vb2_is_busy(vq) &&
> > > +		    pix_mp->pixelformat != ctx->src_fmt.pixelformat))
> > > +			return -EBUSY;
> > 
> > Sorry to chime in only now, but I'm currently looking at the VP9 spec
> > and it seems the resolution is allowed to change dynamically [1] (I
> > guess the same applies to VP8). IIU the spec correctly, coded frames
> > using the new resolution can reference decoded frames using the old
> > one (can be higher or lower res BTW). If we force a streamoff to change
> > the resolution (as seems to be the case here), we'll lose those ref
> > frames (see the hantro_return_bufs() in stop streaming), right?
> > Hans, Tomasz, any idea how this dynamic resolution change could/should
> > be supported?
> 
> As Tomasz also mentioned, supporting this is much more work, and probably
> requires new streaming ioctls.
> 
> In the meantime I think this patch is fine (with the typo fixed, I can do
> that), so is it OK if I merge this?
> 

Yes, please.

I originally posted this as a v5.4 fix, so it would be nice
if we can mark this as stable material.

Thanks,
Ezequiel


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
