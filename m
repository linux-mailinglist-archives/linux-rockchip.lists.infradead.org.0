Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC28B11E612
	for <lists+linux-rockchip@lfdr.de>; Fri, 13 Dec 2019 16:05:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dONHg5WTawElWH/owz0OAxg76btw5wTuFMj5Sqnry1k=; b=RsYfD6D5ZiUrlD
	wJfavqS2LbYbgpuhzMSlkD8tRT6u4jnKnEA0MY56dmij5SQY2qaYNtxGLvI2cqilC5tyQsZo6+DjU
	Xzz+MtQj/px4uRPAcXbgPEMZCp3AddRYzDf8o3+/K67h21Ubl/rkOumlVg2lVQUiyNsCtKQisvHSS
	nnkwbzDBAfHdwppbrifjvaOwcI0Jucyro3BlcmehqLvJ+rxoWQ2rBx4F2oVxXSFYZwIpdF3vAhMgI
	0JAZDtDnR7V5h7kx7fPDeqd2a7NA8KU48M2SZziVkUQngffV65GPftO6GCSFO6D8wF9XB+r2O6egj
	rTWOaXrunZ8Bnt1ZeG/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifmVs-0007iM-8o; Fri, 13 Dec 2019 15:05:52 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifmVH-0007Ch-9R
 for linux-rockchip@lists.infradead.org; Fri, 13 Dec 2019 15:05:17 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 36FEE2924C9;
 Fri, 13 Dec 2019 15:05:12 +0000 (GMT)
Date: Fri, 13 Dec 2019 16:05:08 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [PATCH v3 6/7] media: rkvdec: Add the rkvdec driver
Message-ID: <20191213160508.0b9c9019@collabora.com>
In-Reply-To: <036d3ecb-2307-4e8c-eaad-3c70c8cbda22@xs4all.nl>
References: <20191213125414.90725-1-boris.brezillon@collabora.com>
 <20191213125414.90725-7-boris.brezillon@collabora.com>
 <036d3ecb-2307-4e8c-eaad-3c70c8cbda22@xs4all.nl>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_070515_602355_808D5F3D 
X-CRM114-Status: GOOD (  15.01  )
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

On Fri, 13 Dec 2019 15:21:05 +0100
Hans Verkuil <hverkuil@xs4all.nl> wrote:

> 
> > +/*
> > + * dpb poc related registers table
> > + */  
> 
> Shouldn't the next two arrays be const?

Absolutely. I'll fix that in v4.

> 
> > +static u32 poc_reg_tbl_top_field[16] = {
> > +	RKVDEC_REG_H264_POC_REFER0(0),
> > +	RKVDEC_REG_H264_POC_REFER0(2),
> > +	RKVDEC_REG_H264_POC_REFER0(4),
> > +	RKVDEC_REG_H264_POC_REFER0(6),
> > +	RKVDEC_REG_H264_POC_REFER0(8),
> > +	RKVDEC_REG_H264_POC_REFER0(10),
> > +	RKVDEC_REG_H264_POC_REFER0(12),
> > +	RKVDEC_REG_H264_POC_REFER0(14),
> > +	RKVDEC_REG_H264_POC_REFER1(1),
> > +	RKVDEC_REG_H264_POC_REFER1(3),
> > +	RKVDEC_REG_H264_POC_REFER1(5),
> > +	RKVDEC_REG_H264_POC_REFER1(7),
> > +	RKVDEC_REG_H264_POC_REFER1(9),
> > +	RKVDEC_REG_H264_POC_REFER1(11),
> > +	RKVDEC_REG_H264_POC_REFER1(13),
> > +	RKVDEC_REG_H264_POC_REFER2(0)
> > +};
> > +
> > +static u32 poc_reg_tbl_bottom_field[16] = {
> > +	RKVDEC_REG_H264_POC_REFER0(1),
> > +	RKVDEC_REG_H264_POC_REFER0(3),
> > +	RKVDEC_REG_H264_POC_REFER0(5),
> > +	RKVDEC_REG_H264_POC_REFER0(7),
> > +	RKVDEC_REG_H264_POC_REFER0(9),
> > +	RKVDEC_REG_H264_POC_REFER0(11),
> > +	RKVDEC_REG_H264_POC_REFER0(13),
> > +	RKVDEC_REG_H264_POC_REFER1(0),
> > +	RKVDEC_REG_H264_POC_REFER1(2),
> > +	RKVDEC_REG_H264_POC_REFER1(4),
> > +	RKVDEC_REG_H264_POC_REFER1(6),
> > +	RKVDEC_REG_H264_POC_REFER1(8),
> > +	RKVDEC_REG_H264_POC_REFER1(10),
> > +	RKVDEC_REG_H264_POC_REFER1(12),
> > +	RKVDEC_REG_H264_POC_REFER1(14),
> > +	RKVDEC_REG_H264_POC_REFER2(1)
> > +};  

[...]

> > +static int rkvdec_queue_setup(struct vb2_queue *vq, unsigned int *num_buffers,
> > +			      unsigned int *num_planes, unsigned int sizes[],
> > +			      struct device *alloc_devs[])
> > +{
> > +	struct rkvdec_ctx *ctx = vb2_get_drv_priv(vq);
> > +	struct v4l2_pix_format_mplane *pixfmt;
> > +	struct v4l2_format *f;
> > +	unsigned int i;
> > +
> > +	if (V4L2_TYPE_IS_OUTPUT(vq->type))
> > +		f = &ctx->coded_fmt;
> > +	else
> > +		f = &ctx->decoded_fmt;
> > +
> > +	if (*num_planes) {
> > +		if (*num_planes != f->fmt.pix_mp.num_planes)
> > +			return -EINVAL;
> > +
> > +		for (i = 0; i < f->fmt.pix_mp.num_planes; i++) {
> > +			if (sizes[i] < f->fmt.pix_mp.plane_fmt[i].sizeimage)
> > +				return -EINVAL;
> > +		}  
> 
> Shouldn't there be a 'return 0' here? In the CREATE_BUFS case all you do is check
> if the given size is large enough, and if so then you are done.

I end up returning 0 anyway, it's just that size[0] is updated to
account for the extra MV size, is that a problem?

> 
> > +	} else {
> > +		*num_planes = f->fmt.pix_mp.num_planes;
> > +		for (i = 0; i < f->fmt.pix_mp.num_planes; i++)
> > +			sizes[i] = f->fmt.pix_mp.plane_fmt[i].sizeimage;
> > +	}
> > +
> > +	if (V4L2_TYPE_IS_OUTPUT(vq->type))
> > +		return 0;
> > +
> > +	pixfmt = &ctx->decoded_fmt.fmt.pix_mp;
> > +	sizes[0] += 128 * DIV_ROUND_UP(pixfmt->width, 16) *
> > +		    DIV_ROUND_UP(pixfmt->height, 16);

This makes me realize we decided to take the MV extra size into account
in our ->sizeimage calculation in the hantro driver, so I should
probably move this code to try_s_capture_fmt().


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
