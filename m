Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 769D92DF30
	for <lists+linux-rockchip@lfdr.de>; Wed, 29 May 2019 16:06:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jSYbj+z/j464Js54Rt/fQnXbB8XM39V9ynt73T3wXuQ=; b=MOxx49F3OkaDR+
	HuYOpKibva3vzRQJai9MLmYUmi/EnGBcCsJJ8g4txCHCKm5gn2Fj6xVmmItyRYvH76yjRfusVpcHA
	iHwPz6H61wrUXf+T+Ul70bzGyErx1QXRnB3xX6ZWRA8nPidHmA8Wp0zCVP/fCSy8Z9V3LsNwz44Z1
	gzwG0qnm6FANukWQAKE9CL6b2KWkYLKpFKzK9GIcYeuDcoyy6AZxCKqxow5h2zymZ/uszpdHjxtCz
	+sL4dpHkBfD1D9UEl2btjbFN0exoCFv3eyAj64dhhkscbI0Zu6QU6YCgAaQkHl34DVIw1yPGfAv0S
	W02A0J82VlhMslLutTnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVzDi-00041H-M1; Wed, 29 May 2019 14:06:22 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVzDf-00040K-4P
 for linux-rockchip@lists.infradead.org; Wed, 29 May 2019 14:06:20 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id BC8A4260A4C;
 Wed, 29 May 2019 15:06:13 +0100 (BST)
Date: Wed, 29 May 2019 16:06:10 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH v6 03/16] media: v4l2-common: Support custom imagesize
 in fill_pixfmt()
Message-ID: <20190529160610.169c6e00@collabora.com>
In-Reply-To: <04cb574b530c987a04b098962c93940c49e944d8.camel@collabora.com>
References: <20190528170232.2091-1-ezequiel@collabora.com>
 <20190528170232.2091-4-ezequiel@collabora.com>
 <20190529082809.0b9f3553@coco.lan>
 <cc51be76-81c3-1c54-2005-1b99d00a8ac1@xs4all.nl>
 <20190529085854.6c689f8d@coco.lan>
 <20190529141633.19c5079b@collabora.com>
 <223a757d-f008-398c-64ce-18b0aaf390c5@xs4all.nl>
 <04cb574b530c987a04b098962c93940c49e944d8.camel@collabora.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_070619_435037_D330471B 
X-CRM114-Status: GOOD (  34.62  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 Tomasz Figa <tfiga@chromium.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 linux-rockchip@lists.infradead.org, Hans Verkuil <hans.verkuil@cisco.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, kernel@collabora.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, 29 May 2019 11:04:35 -0300
Ezequiel Garcia <ezequiel@collabora.com> wrote:

> On Wed, 2019-05-29 at 14:31 +0200, Hans Verkuil wrote:
> > On 5/29/19 2:16 PM, Boris Brezillon wrote:  
> > > On Wed, 29 May 2019 08:58:54 -0300
> > > Mauro Carvalho Chehab <mchehab+samsung@kernel.org> wrote:
> > >   
> > > > Em Wed, 29 May 2019 13:43:20 +0200
> > > > Hans Verkuil <hverkuil@xs4all.nl> escreveu:
> > > >   
> > > > > On 5/29/19 1:28 PM, Mauro Carvalho Chehab wrote:    
> > > > > > Em Tue, 28 May 2019 14:02:19 -0300
> > > > > > Ezequiel Garcia <ezequiel@collabora.com> escreveu:
> > > > > >       
> > > > > > > From: Boris Brezillon <boris.brezillon@collabora.com>
> > > > > > > 
> > > > > > > Users can define custom sizeimage as long as they're big enough to
> > > > > > > store the amount of pixels required for a specific width/height under a
> > > > > > > specific format. Avoid overriding those fields in this case.
> > > > > > > 
> > > > > > > We could possibly do the same for bytesperline, but it gets tricky when
> > > > > > > dealing with !MPLANE definitions, so this case is omitted for now and      
> > > > > > > ->bytesperline is always overwritten with the value calculated in      
> > > > > > > fill_pixfmt().
> > > > > > > 
> > > > > > > Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> > > > > > > ---
> > > > > > > Changes from v5:
> > > > > > > * Overwrite bytesperline with the value calculated in fill_pixfmt()
> > > > > > > 
> > > > > > > Changes from v4:
> > > > > > > * New patch
> > > > > > > 
> > > > > > >  drivers/media/v4l2-core/v4l2-common.c | 58 ++++++++++++++++++++-------
> > > > > > >  1 file changed, 43 insertions(+), 15 deletions(-)
> > > > > > > 
> > > > > > > diff --git a/drivers/media/v4l2-core/v4l2-common.c b/drivers/media/v4l2-core/v4l2-common.c
> > > > > > > index b2d1e55d9561..fd286f6e17d7 100644
> > > > > > > --- a/drivers/media/v4l2-core/v4l2-common.c
> > > > > > > +++ b/drivers/media/v4l2-core/v4l2-common.c
> > > > > > > @@ -585,9 +585,9 @@ int v4l2_fill_pixfmt_mp(struct v4l2_pix_format_mplane *pixfmt,
> > > > > > >  	pixfmt->num_planes = info->mem_planes;
> > > > > > >  
> > > > > > >  	if (info->mem_planes == 1) {
> > > > > > > +		u32 sizeimage = 0;
> > > > > > > +
> > > > > > >  		plane = &pixfmt->plane_fmt[0];
> > > > > > > -		plane->bytesperline = ALIGN(width, v4l2_format_block_width(info, 0)) * info->bpp[0];
> > > > > > > -		plane->sizeimage = 0;
> > > > > > >  
> > > > > > >  		for (i = 0; i < info->comp_planes; i++) {
> > > > > > >  			unsigned int hdiv = (i == 0) ? 1 : info->hdiv;
> > > > > > > @@ -598,10 +598,21 @@ int v4l2_fill_pixfmt_mp(struct v4l2_pix_format_mplane *pixfmt,
> > > > > > >  			aligned_width = ALIGN(width, v4l2_format_block_width(info, i));
> > > > > > >  			aligned_height = ALIGN(height, v4l2_format_block_height(info, i));
> > > > > > >  
> > > > > > > -			plane->sizeimage += info->bpp[i] *
> > > > > > > -				DIV_ROUND_UP(aligned_width, hdiv) *
> > > > > > > -				DIV_ROUND_UP(aligned_height, vdiv);
> > > > > > > +			sizeimage += info->bpp[i] *
> > > > > > > +				     DIV_ROUND_UP(aligned_width, hdiv) *
> > > > > > > +				     DIV_ROUND_UP(aligned_height, vdiv);
> > > > > > >  		}
> > > > > > > +
> > > > > > > +		/* Custom bytesperline value is not supported yet. */
> > > > > > > +		plane->bytesperline = ALIGN(width,
> > > > > > > +					    v4l2_format_block_width(info, 0)) *
> > > > > > > +				      info->bpp[0];
> > > > > > > +
> > > > > > > +		/*
> > > > > > > +		 * The user might have specified a custom sizeimage, only
> > > > > > > +		 * override it if it's not big enough.
> > > > > > > +		 */
> > > > > > > +		plane->sizeimage = max(sizeimage, plane->sizeimage);      
> > > > > > 
> > > > > > No upper limit? That doesn't sound a good idea to me, specially since some
> > > > > > (broken) app might not be memset the format to zero before filling the ioctl
> > > > > > structure.
> > > > > > 
> > > > > > Perhaps we could do something like:
> > > > > > 
> > > > > > 		sizeimage = min (sizeimage, 2 * plane->sizeimage)
> > > > > > 
> > > > > > or something similar that would be reasonable.      
> > > > > 
> > > > > I've no idea what's sane.
> > > > > 
> > > > > Buffers can be really large. The largest video resolution defined by CTA-861-G
> > > > > is 10240x4320, so at 4 bytes per pixel that's 0x0a8c0000. So perhaps we can
> > > > > use min(sizeimage, 0x10000000)? Although we should probably use the clamp function
> > > > > instead of min/max.    
> > > > 
> > > > Well, the max is driver-specific. 
> > > > 
> > > > For example, for a camera with a max resolution of 640x480 with 2 bytes
> > > > per pixel as the max format can only be
> > > > 
> > > > 	max_size = 640*480*2 (plus some alignment value if pertinent)
> > > > 
> > > > It sounds to me that the best would be to have a callback function
> > > > or value filled by the drivers that would support custom sizeimage.
> > > > 
> > > > The core could actually calculate during init (by asking the driver
> > > > to a very big resolution and getting the returned value), but
> > > > it sounds better to let the drivers to explicitly calculate it.  
> > > 
> > > If we want max_sizeimage to be driver specific I can add it as an extra
> > > arg to the fill_pixfmt() funcs.  
> > 
> > Looking more closely, only compressed formats can accept a user-specified
> > sizeimage value, and this function is only called for uncompressed formats.
> > 
> > So doesn't that mean that this sizeimage override code can be dropped?
> >   
> 
> I think this is a good idea, which means just picking all patches except this one
> (and the RK3328 one).
> 
> So it would be patches: 1,2 and 4 to 15.
> 
> Boris, Hans: are you OK with this?

I doesn't work => the prototype of the fill_pixfmt() changed.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
