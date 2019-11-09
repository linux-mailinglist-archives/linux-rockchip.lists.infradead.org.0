Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B459BF6117
	for <lists+linux-rockchip@lfdr.de>; Sat,  9 Nov 2019 20:13:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dLtb9tvJ6DS9ruTOPTFst5MSMDg2EvMokLZNCNE9B10=; b=SLOkWtBhM3VqkY
	C2vQcrLLGh3nXjSG4R7TrsjdBcjSVo6WJHFyKuxHc1cuQUNBLpkEdTZFMeX8Y4mql/ztdOFmpmoaC
	6JBdtTtRxYN9Rx9MkdDCtwPhpcokapw3XAbLe3y5s9o9jZMpyw547AHN/b+OdjgOMvXP+3syGFNSH
	lfkZl22dGH2KOITmWVbam1+doX8TAfV/qPT/NbapJojWUumHi5Rugiy/G+j/zahklt38taTxbM6z4
	JYDpICoO7IWiHDEgjjAmVO0K4FcFRJZetVqix51kJJb46RmvnLTYrAMUxuMDNRhjWLH0BVPlwCLJh
	7yCUmFS26m4hoNCLA5Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTWB4-0003Ux-RK; Sat, 09 Nov 2019 19:13:42 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTWB1-0003UD-VM
 for linux-rockchip@lists.infradead.org; Sat, 09 Nov 2019 19:13:41 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id BD13D28E979;
 Sat,  9 Nov 2019 19:13:35 +0000 (GMT)
Date: Sat, 9 Nov 2019 20:13:33 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [PATCH v2 for 5.4 1/4] media: hantro: Fix s_fmt for dynamic
 resolution changes
Message-ID: <20191109201333.4dc63e0e@collabora.com>
In-Reply-To: <92cba217-4f14-a397-2ae5-8797cc931703@xs4all.nl>
References: <20191007174505.10681-1-ezequiel@collabora.com>
 <20191007174505.10681-2-ezequiel@collabora.com>
 <20191108111950.717db5ce@collabora.com>
 <92cba217-4f14-a397-2ae5-8797cc931703@xs4all.nl>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_111340_274455_AB286AFD 
X-CRM114-Status: GOOD (  26.64  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: Douglas Anderson <dianders@chromium.org>, fbuergisser@chromium.org,
 kernel@collabora.com, Heiko Stuebner <heiko@sntech.de>,
 Alexandre Courbot <acourbot@chromium.org>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 linux-rockchip@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Sat, 9 Nov 2019 13:25:18 +0100
Hans Verkuil <hverkuil@xs4all.nl> wrote:

> On 11/8/19 11:19 AM, Boris Brezillon wrote:
> > On Mon,  7 Oct 2019 14:45:02 -0300
> > Ezequiel Garcia <ezequiel@collabora.com> wrote:
> >   
> >> Commit 953aaa1492c53 ("media: rockchip/vpu: Prepare things to support decoders")
> >> changed the conditions under S_FMT was allowed for OUTPUT
> >> CAPTURE buffers.
> >>
> >> However, and according to the mem-to-mem stateless decoder specification,
> >> in order to support dynamic resolution changes, S_FMT should be allowed
> >> even if OUTPUT buffers have been allocated.
> >>
> >> Relax decoder S_FMT restrictions on OUTPUT buffers, allowing a resolution
> >> modification, provided the pixel format stays the same.
> >>
> >> Tested on RK3288 platforms using ChromiumOS Video Decode/Encode Accelerator Unittests.
> >>
> >> Fixes: 953aaa1492c53 ("media: rockchip/vpu: Prepare things to support decoders")
> >> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> >> --
> >> v2:
> >> * Call try_fmt_out before using the format,
> >>   pointed out by Philipp.
> >>
> >>  drivers/staging/media/hantro/hantro_v4l2.c | 28 +++++++++++++++-------
> >>  1 file changed, 19 insertions(+), 9 deletions(-)
> >>
> >> diff --git a/drivers/staging/media/hantro/hantro_v4l2.c b/drivers/staging/media/hantro/hantro_v4l2.c
> >> index 3dae52abb96c..586d243cc3cc 100644
> >> --- a/drivers/staging/media/hantro/hantro_v4l2.c
> >> +++ b/drivers/staging/media/hantro/hantro_v4l2.c
> >> @@ -367,19 +367,26 @@ vidioc_s_fmt_out_mplane(struct file *file, void *priv, struct v4l2_format *f)
> >>  {
> >>  	struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
> >>  	struct hantro_ctx *ctx = fh_to_ctx(priv);
> >> +	struct vb2_queue *vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type);
> >>  	const struct hantro_fmt *formats;
> >>  	unsigned int num_fmts;
> >> -	struct vb2_queue *vq;
> >>  	int ret;
> >>  
> >> -	/* Change not allowed if queue is busy. */
> >> -	vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type);
> >> -	if (vb2_is_busy(vq))
> >> -		return -EBUSY;
> >> +	ret = vidioc_try_fmt_out_mplane(file, priv, f);
> >> +	if (ret)
> >> +		return ret;
> >>  
> >>  	if (!hantro_is_encoder_ctx(ctx)) {
> >>  		struct vb2_queue *peer_vq;
> >>  
> >> +		/*
> >> +		 * In other to support dynamic resolution change,  
> > 
> > 		      ^ order
> >   
> >> +		 * the decoder admits a resolution change, as long
> >> +		 * as the pixelformat remains. Can't be done if streaming.
> >> +		 */
> >> +		if (vb2_is_streaming(vq) || (vb2_is_busy(vq) &&
> >> +		    pix_mp->pixelformat != ctx->src_fmt.pixelformat))
> >> +			return -EBUSY;  
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

Sure, go ahead, here's my

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

in case you haven't applied the patch already.

Oh, BTW, it wasn't clear in my previous reply, but I didn't intend to
block this patch with my VP9 concerns. My only motivation was to start
a discussion on how to solve my specific issue ;-).

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
