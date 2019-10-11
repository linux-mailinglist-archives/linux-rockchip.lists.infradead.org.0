Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3063D3E0F
	for <lists+linux-rockchip@lfdr.de>; Fri, 11 Oct 2019 13:15:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nfezXwJ7O7qApInylyh/MXz0QX7rL02NdHVxuspsRo4=; b=KZA1hBxhylscC8
	TJe43ndT6J3YP+KQcgt5wOuGrTac7koM7+cUtsz01Prf0HZWp+bMcHBEq1jWGls7dbVa6X/yHpjDF
	iVZefaFgBgVMXjWuGp0bknYrLlYxMhh7bsVHqNKsc3i+1sFcBE99GWamBF6vXhD6CVshcHqIabNKm
	MyQxs5mizHwMpX9MGyqBwhrx311Xv7bj07rUp0COhIRtIoz8Fqlxx32+jv8V9vIAgI1yVYpf6lc05
	geGwiEq0GxdsereMdPZr9mM7GEl7QHuE6UCpw6DfrKcy+lxTES7nON5jFkVTwT1C1zyTtQutU9sEu
	XV/N1b8j7OpbbfIWTJmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIstj-0004wL-4T; Fri, 11 Oct 2019 11:15:51 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIstf-0004v7-F4
 for linux-rockchip@lists.infradead.org; Fri, 11 Oct 2019 11:15:49 +0000
Received: from dhcp-172-31-174-146.wireless.concordia.ca (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 0621728D208;
 Fri, 11 Oct 2019 12:15:44 +0100 (BST)
Date: Fri, 11 Oct 2019 13:15:40 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [RESEND PATCH v2 3/4] media: rockchip: Add the rkvdec driver
Message-ID: <20191011131540.002a61a9@dhcp-172-31-174-146.wireless.concordia.ca>
In-Reply-To: <8d3abbd9-f27d-f17f-8298-b0cc7c63ab3e@xs4all.nl>
References: <20191011093342.3471-1-boris.brezillon@collabora.com>
 <20191011093342.3471-4-boris.brezillon@collabora.com>
 <8d3abbd9-f27d-f17f-8298-b0cc7c63ab3e@xs4all.nl>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_041547_766095_F16B19F0 
X-CRM114-Status: GOOD (  29.45  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 kernel@collabora.com, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Sakari Ailus <sakari.ailus@iki.fi>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Nicolas Dufresne <nicolas@ndufresne.ca>, Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Hans,

On Fri, 11 Oct 2019 12:06:35 +0200
Hans Verkuil <hverkuil@xs4all.nl> wrote:

> > diff --git a/drivers/staging/media/rockchip/Kconfig b/drivers/staging/media/rockchip/Kconfig
> > new file mode 100644
> > index 000000000000..8c617ae2c84f
> > --- /dev/null
> > +++ b/drivers/staging/media/rockchip/Kconfig
> > @@ -0,0 +1,16 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +config VIDEO_ROCKCHIP
> > +	bool "Rockchip Video Devices"
> > +	depends on ARCH_ROCKCHIP || COMPILE_TEST
> > +	help
> > +	  If you have a Rockchip SoC based embedding a video codec.
> > +
> > +	  Note that this option doesn't include new drivers in the
> > +	  kernel: saying N will just cause Kconfig to skip all the
> > +	  questions about Allwinner media devices.
> > +
> > +if VIDEO_ROCKCHIP
> > +
> > +source "drivers/staging/media/rockchip/vdec/Kconfig"
> > +
> > +endif  
> 
> Is this really necessary? I think the 'source' line can just be added to
> drivers/staging/media/Kconfig. This config option here is rather vague.

I based it on the Allwinner/Cedrus model (even left an 'Allwinner' in
the description :)), but I can definitely move the source line in
drivers/staging/media/Kconfig or even get rid of the rockchip dir if
you prefer.

> 
> > diff --git a/drivers/staging/media/rockchip/Makefile b/drivers/staging/media/rockchip/Makefile
> > new file mode 100644
> > index 000000000000..b3705b51f1b9
> > --- /dev/null
> > +++ b/drivers/staging/media/rockchip/Makefile
> > @@ -0,0 +1,2 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +obj-$(CONFIG_VIDEO_ROCKCHIP_VDEC) += vdec/
> > diff --git a/drivers/staging/media/rockchip/vdec/Kconfig b/drivers/staging/media/rockchip/vdec/Kconfig
> > new file mode 100644
> > index 000000000000..329b4a813c47
> > --- /dev/null
> > +++ b/drivers/staging/media/rockchip/vdec/Kconfig
> > @@ -0,0 +1,14 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +config VIDEO_ROCKCHIP_VDEC
> > +	tristate "Rockchip Video Decoder driver"
> > +	depends on ARCH_ROCKCHIP || COMPILE_TEST
> > +	depends on VIDEO_DEV && VIDEO_V4L2 && MEDIA_CONTROLLER
> > +	depends on MEDIA_CONTROLLER_REQUEST_API
> > +	select VIDEOBUF2_DMA_CONTIG
> > +	select VIDEOBUF2_VMALLOC
> > +	select V4L2_MEM2MEM_DEV
> > +	help
> > +	  Support for the Rockchip Video Decoder IP present on Rockchip SoC,
> > +	  which accelerates video decoding.
> > +	  To compile this driver as a module, choose M here: the module
> > +	  will be called hantro-vpu.  
> 
> hantro-vpu? Not rkvdec?

Should be rkvdec, indeed. That's what happens when you copy things from
an existing driver :-).


> > +
> > +/* Constant CABAC table. */
> > +static const u32 rkvdec_h264_cabac_table[] = {  
> 
> Where does this table come from? It needs some provenance.

Chromeos kernels [1] and MPP code base [2]. I'll add a comment pointing
to those trees.

[...]

> > +
> > +struct rkvdec_h264_reflist_builder {
> > +	const struct v4l2_h264_dpb_entry *dpb;
> > +	s32 pocs[RKVDEC_H264_DPB_SIZE];
> > +	u8 unordered_reflist[RKVDEC_H264_DPB_SIZE];
> > +	int frame_nums[RKVDEC_H264_DPB_SIZE];
> > +	s32 curpoc;
> > +	u8 num_valid;
> > +};  
> 
> What's a 'poc'? Perhaps this can use some comments.

Picture Order Count. I'll add comment.

> 
> It looks like code is copied from hantro_h264.c. Is there anything that
> can be reasonably shared between the two drivers?

I was planning on exporting those helpers at some point, but I'd like
the reflist creation logic to settle before doing (we still need to fix
things for interlaced streams, which is what Jonas is working on).



> > +
> > +static int p_ref_list_cmp(const void *ptra, const void *ptrb, const void *data)
> > +{
> > +	const struct rkvdec_h264_reflist_builder *builder = data;
> > +	const struct v4l2_h264_dpb_entry *a, *b;
> > +	u8 idxa, idxb;
> > +
> > +	idxa = *((u8 *)ptra);
> > +	idxb = *((u8 *)ptrb);
> > +	a = &builder->dpb[idxa];
> > +	b = &builder->dpb[idxb];
> > +
> > +	if ((a->flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM) !=
> > +	    (b->flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM)) {
> > +		/* Short term pics firt. */  
> 
> firt -> first

Will fix the typo.

> 
> > +		if (!(a->flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM))
> > +			return -1;
> > +		else
> > +			return 1;
> > +	}
> > +
> > +	/*
> > +	 * Short term pics in descending pic num order, long term ones in
> > +	 * ascending order.
> > +	 */
> > +	if (!(a->flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM)) {
> > +		int frame_num_a, frame_num_b;
> > +
> > +		frame_num_a = builder->frame_nums[idxa];
> > +		frame_num_b = builder->frame_nums[idxb];
> > +		return frame_num_b > frame_num_a ? 1 : -1;
> > +	}
> > +
> > +	return a->pic_num > b->pic_num ? 1 : -1;
> > +}
> > +
> > +static int b0_ref_list_cmp(const void *ptra, const void *ptrb, const void *data)
> > +{
> > +	const struct rkvdec_h264_reflist_builder *builder = data;
> > +	const struct v4l2_h264_dpb_entry *a, *b;
> > +	s32 poca, pocb;
> > +	u8 idxa, idxb;
> > +
> > +	idxa = *((u8 *)ptra);
> > +	idxb = *((u8 *)ptrb);
> > +	a = &builder->dpb[idxa];
> > +	b = &builder->dpb[idxb];
> > +
> > +	if ((a->flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM) !=
> > +	    (b->flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM)) {
> > +		/* Short term pics firt. */  
> 
> Ditto. Check the code for this typo. It's in the hantro code as well.

Will do.

> 
> > +		if (!(a->flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM))
> > +			return -1;
> > +		else
> > +			return 1;
> > +	}
> > +
> > +	/* Long term pics in ascending pic num order. */
> > +	if (a->flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM)
> > +		return a->pic_num > b->pic_num ? 1 : -1;
> > +
> > +	poca = builder->pocs[idxa];
> > +	pocb = builder->pocs[idxb];
> > +
> > +	/*
> > +	 * Short term pics with POC < cur POC first in POC descending order
> > +	 * followed by short term pics with POC > cur POC in POC ascending
> > +	 * order.
> > +	 */
> > +	if ((poca < builder->curpoc) != (pocb < builder->curpoc))
> > +		return poca > pocb ? 1 : -1;
> > +	else if (poca < builder->curpoc)
> > +		return pocb > poca ? 1 : -1;
> > +
> > +	return poca > pocb ? 1 : -1;
> > +}

> > +static void rkvdec_reset_fmt(struct rkvdec_ctx *ctx, struct v4l2_format *f,
> > +			     u32 fourcc)
> > +{
> > +	memset(f, 0, sizeof(*f));
> > +	f->fmt.pix_mp.pixelformat = fourcc;
> > +	f->fmt.pix_mp.field = V4L2_FIELD_NONE;
> > +	f->fmt.pix_mp.colorspace = V4L2_COLORSPACE_JPEG,  
> 
> Don't use this colorspace. I see it is also used in the hantro driver, that should
> be corrected as well.
> 
> The colorimetry comes from the stream metadata, and for a stateless driver I
> assume that it is userspace that parses that.
> 
> V4L2_COLORSPACE_JPEG should only be used by (M)JPEG codecs. And even there is it
> dubious. See section 2.17.10 in the spec for more info.

What should I use when the formats are reset then?

Thanks for the prompt review!

Boris

[1]https://chromium.googlesource.com/chromiumos/third_party/kernel/+/refs/heads/chromeos-4.4/drivers/media/platform/rockchip-vpu/rk3399_vdec_hw_h264d.c#45
[2]https://github.com/rockchip-linux/mpp/blob/release/mpp/hal/rkdec/h264d/hal_h264d_rkv_reg.c#L67

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
