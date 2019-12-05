Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD171142EE
	for <lists+linux-rockchip@lfdr.de>; Thu,  5 Dec 2019 15:46:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yBE9SYF6zg5RWkDpN9w4wnAAHRwyf7tY81WVB0e0DWs=; b=aIri6wmffSXdWc
	Bmv5B/Utr9ofJnYozquTZm5FPI6kctlS2cJRrwFmxmAzRvG6lqPtxImaAS6YZBQcqmCSsX22uPA3C
	YIH6p84yBOBDaxM3nJS2gNY53a6X1UwSIRDI0eG9jI4ITUYSbqA/oRNPeFUbnMZn1mXeKpdHbR9Vq
	9LisoqbKvjiXIrx6/I70/84iCWt3n8vG83oFjXWcg2cYmxsVy9H71pcIa21rCrOagJzKYVYhscyiR
	Gy7Aon7xrOWbQLnA/4Bwuo/2ZQod5WvMcgpm+Ku59yptnHC1yM3j6F9pX5ebDi1ktgsh3jSGfAcnH
	h6LUhyNA2StbQXcFVk+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icsOs-0003ko-Sz; Thu, 05 Dec 2019 14:46:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icsOp-0003jz-Cf
 for linux-rockchip@lists.infradead.org; Thu, 05 Dec 2019 14:46:36 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1icsOj-0001W5-2x; Thu, 05 Dec 2019 15:46:29 +0100
Message-ID: <2d2524129c6287c13e9d83d1d885046483e75117.camel@pengutronix.de>
Subject: Re: [PATCH v3 2/3] media: hantro: Support color conversion via
 post-processing
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Date: Thu, 05 Dec 2019 15:46:26 +0100
In-Reply-To: <88a48cb78843458b55896eeb3af2f46488d42744.camel@collabora.com>
References: <20191113175603.24742-1-ezequiel@collabora.com>
 <20191113175603.24742-3-ezequiel@collabora.com>
 <1e1c7a0e3d25187723ccac1a8360b5aae9aed8cd.camel@pengutronix.de>
 <dc637b43a4ef4609f9200f3fc91ee76fef75f64a.camel@collabora.com>
 <88a48cb78843458b55896eeb3af2f46488d42744.camel@collabora.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_064635_431103_3A5E8AAC 
X-CRM114-Status: GOOD (  24.57  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>, kernel@collabora.com,
 Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, 2019-12-05 at 11:33 -0300, Ezequiel Garcia wrote:
> Hello Philipp,
> 
> On Fri, 2019-11-15 at 12:44 -0300, Ezequiel Garcia wrote:
> > Hello Philipp,
> > 
> > Thanks for reviewing.
> > 
> > On Thu, 2019-11-14 at 10:48 +0100, Philipp Zabel wrote:
> > > Hi Ezequiel,
> > > 
> > > On Wed, 2019-11-13 at 14:56 -0300, Ezequiel Garcia wrote:
> > > > The Hantro G1 decoder is able to enable a post-processor
> > > > on the decoding pipeline, which can be used to perform
> > > > scaling and color conversion.
> > > > 
> > > > The post-processor is integrated to the decoder, and it's
> > > > possible to use it in a way that is completely transparent
> > > > to the user.
> > > > 
> > > > This commit enables color conversion via post-processing,
> > > > which means the driver now exposes YUV packed, in addition to NV12.
> > > > 
> > > > Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> > > > ---
> > > >  drivers/staging/media/hantro/Makefile         |   1 +
> > > >  drivers/staging/media/hantro/hantro.h         |  64 +++++++-
> > > >  drivers/staging/media/hantro/hantro_drv.c     |   8 +-
> > > >  .../staging/media/hantro/hantro_g1_h264_dec.c |   2 +-
> > > >  .../media/hantro/hantro_g1_mpeg2_dec.c        |   2 +-
> > > >  drivers/staging/media/hantro/hantro_g1_regs.h |  53 +++++++
> > > >  .../staging/media/hantro/hantro_g1_vp8_dec.c  |   2 +-
> > > >  drivers/staging/media/hantro/hantro_h264.c    |   6 +-
> > > >  drivers/staging/media/hantro/hantro_hw.h      |  13 ++
> > > >  .../staging/media/hantro/hantro_postproc.c    | 141 ++++++++++++++++++
> > > >  drivers/staging/media/hantro/hantro_v4l2.c    |  52 ++++++-
> > > >  drivers/staging/media/hantro/rk3288_vpu_hw.c  |  10 ++
> > > >  12 files changed, 343 insertions(+), 11 deletions(-)
> > > >  create mode 100644 drivers/staging/media/hantro/hantro_postproc.c
> > > > 
> > > > 
> [..]
> > > >  			pix_mp->plane_fmt[0].sizeimage +=
> > > >  				128 * DIV_ROUND_UP(pix_mp->width, 16) *
> > > >  				      DIV_ROUND_UP(pix_mp->height, 16);
> > > > @@ -611,10 +643,23 @@ static int hantro_start_streaming(struct vb2_queue *q, unsigned int count)
> > > >  
> > > >  		vpu_debug(4, "Codec mode = %d\n", codec_mode);
> > > >  		ctx->codec_ops = &ctx->dev->variant->codec_ops[codec_mode];
> > > > -		if (ctx->codec_ops->init)
> > > > +		if (ctx->codec_ops->init) {
> > > >  			ret = ctx->codec_ops->init(ctx);
> > > > +			if (ret)
> > > > +				return ret;
> > > > +		}
> > > > +
> > > > +		if (hantro_needs_postproc(ctx)) {
> > > > +			ret = hantro_postproc_alloc(ctx);
> > > 
> > > Why is this done in start_streaming? Wouldn't capture side REQBUFS be a
> > > better place for this?
> > > 
> > 
> > Yes, makes sense as well.
> > 
> 
> This didn't work so well, so I have decided to leave it as-is in the
> just submitted v4 series.
> 
> The vb2 framework provides two mechanism for drivers to allocate
> buffers, REQBUFS and CREATEBUFS, so the bounce buffer allocation
> has to be hooked on both of them.

That is a good point, now that we don't allocate VB2_MAX_FRAME bounce
buffers at start_streaming time anymore, what happens if additional
capture buffers are created with CREATEBUFS while streaming?

> Also, REQBUFS and CREATEBUFS can be called multiple times
> to grow/shrink the vb2_queue, so the driver has to check
> if the bounce buffers were already created or not.
> 
> Not a big deal, but I felt the implementation ended up being
> too nasty for my taste.
> 
> If fragmentation turns out to be an issue and we want to avoid
> allocating and destroying in start and stop (STREAMOFF, STREAMON),
> we can revisit this.

regards
Philipp


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
