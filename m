Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B3CF1142BE
	for <lists+linux-rockchip@lfdr.de>; Thu,  5 Dec 2019 15:33:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hrl5p1ysBUd1A/uA5ZP3bldKLSKZxR513/fOZCgl/no=; b=CWwdIndvbpmLfZ
	Swa+vN9eH88KtW6It510jFpC/sdU8QYpZD8SFfPSo4X2Q/qHBa7Mcg4XFFGdT0aBmzRfuFby2Rj1T
	mhpTnenbB+sP1BjAwfbqP+JTtjPppkUc4O4E+lJl9o9951jtXftNzOjMMatQeyMWCA1tvJTMKrVp9
	v9r6gtmerRg2lxpRdjelm9H7Fz4qD516yeq/ODNQUvG/ic5bOTZmIvS/prkSUgyP8DYwg+Va579h2
	ZzjTyrs00fv1EBKF6GrG4JW5L1OMwblQYLYqLTkrEZBfUImIrzETyDJI7Y6mCK1hsffu94uw77rHe
	70Bu9QRf3eM36zJLSPng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icsC5-0006k2-Di; Thu, 05 Dec 2019 14:33:25 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icsC2-0006jN-6s
 for linux-rockchip@lists.infradead.org; Thu, 05 Dec 2019 14:33:23 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 62EBD29227C
Message-ID: <88a48cb78843458b55896eeb3af2f46488d42744.camel@collabora.com>
Subject: Re: [PATCH v3 2/3] media: hantro: Support color conversion via
 post-processing
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Philipp Zabel <p.zabel@pengutronix.de>, linux-media@vger.kernel.org
Date: Thu, 05 Dec 2019 11:33:13 -0300
In-Reply-To: <dc637b43a4ef4609f9200f3fc91ee76fef75f64a.camel@collabora.com>
References: <20191113175603.24742-1-ezequiel@collabora.com>
 <20191113175603.24742-3-ezequiel@collabora.com>
 <1e1c7a0e3d25187723ccac1a8360b5aae9aed8cd.camel@pengutronix.de>
 <dc637b43a4ef4609f9200f3fc91ee76fef75f64a.camel@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_063322_506829_8C253494 
X-CRM114-Status: GOOD (  21.80  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>, kernel@collabora.com,
 Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hello Philipp,

On Fri, 2019-11-15 at 12:44 -0300, Ezequiel Garcia wrote:
> Hello Philipp,
> 
> Thanks for reviewing.
> 
> On Thu, 2019-11-14 at 10:48 +0100, Philipp Zabel wrote:
> > Hi Ezequiel,
> > 
> > On Wed, 2019-11-13 at 14:56 -0300, Ezequiel Garcia wrote:
> > > The Hantro G1 decoder is able to enable a post-processor
> > > on the decoding pipeline, which can be used to perform
> > > scaling and color conversion.
> > > 
> > > The post-processor is integrated to the decoder, and it's
> > > possible to use it in a way that is completely transparent
> > > to the user.
> > > 
> > > This commit enables color conversion via post-processing,
> > > which means the driver now exposes YUV packed, in addition to NV12.
> > > 
> > > Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> > > ---
> > >  drivers/staging/media/hantro/Makefile         |   1 +
> > >  drivers/staging/media/hantro/hantro.h         |  64 +++++++-
> > >  drivers/staging/media/hantro/hantro_drv.c     |   8 +-
> > >  .../staging/media/hantro/hantro_g1_h264_dec.c |   2 +-
> > >  .../media/hantro/hantro_g1_mpeg2_dec.c        |   2 +-
> > >  drivers/staging/media/hantro/hantro_g1_regs.h |  53 +++++++
> > >  .../staging/media/hantro/hantro_g1_vp8_dec.c  |   2 +-
> > >  drivers/staging/media/hantro/hantro_h264.c    |   6 +-
> > >  drivers/staging/media/hantro/hantro_hw.h      |  13 ++
> > >  .../staging/media/hantro/hantro_postproc.c    | 141 ++++++++++++++++++
> > >  drivers/staging/media/hantro/hantro_v4l2.c    |  52 ++++++-
> > >  drivers/staging/media/hantro/rk3288_vpu_hw.c  |  10 ++
> > >  12 files changed, 343 insertions(+), 11 deletions(-)
> > >  create mode 100644 drivers/staging/media/hantro/hantro_postproc.c
> > > 
> > > 
[..]
> 
> > >  			pix_mp->plane_fmt[0].sizeimage +=
> > >  				128 * DIV_ROUND_UP(pix_mp->width, 16) *
> > >  				      DIV_ROUND_UP(pix_mp->height, 16);
> > > @@ -611,10 +643,23 @@ static int hantro_start_streaming(struct vb2_queue *q, unsigned int count)
> > >  
> > >  		vpu_debug(4, "Codec mode = %d\n", codec_mode);
> > >  		ctx->codec_ops = &ctx->dev->variant->codec_ops[codec_mode];
> > > -		if (ctx->codec_ops->init)
> > > +		if (ctx->codec_ops->init) {
> > >  			ret = ctx->codec_ops->init(ctx);
> > > +			if (ret)
> > > +				return ret;
> > > +		}
> > > +
> > > +		if (hantro_needs_postproc(ctx)) {
> > > +			ret = hantro_postproc_alloc(ctx);
> > 
> > Why is this done in start_streaming? Wouldn't capture side REQBUFS be a
> > better place for this?
> > 
> 
> Yes, makes sense as well.
> 

This didn't work so well, so I have decided to leave it as-is in the
just submitted v4 series.

The vb2 framework provides two mechanism for drivers to allocate
buffers, REQBUFS and CREATEBUFS, so the bounce buffer allocation
has to be hooked on both of them.

Also, REQBUFS and CREATEBUFS can be called multiple times
to grow/shrink the vb2_queue, so the driver has to check
if the bounce buffers were already created or not.

Not a big deal, but I felt the implementation ended up being
too nasty for my taste.

If fragmentation turns out to be an issue and we want to avoid
allocating and destroying in start and stop (STREAMOFF, STREAMON),
we can revisit this.

Thanks,
Ezequiel


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
