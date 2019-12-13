Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C415411E576
	for <lists+linux-rockchip@lfdr.de>; Fri, 13 Dec 2019 15:21:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JjaIU1BZfoxnu+wYUxUZn2lmAKMHNKXfz8xogPwBEwk=; b=POc+S7Jr8TN5yg
	l8KE3BTdiBIFz67hlvcFvPD/QrH4ZeTK4yQn8xI2pQnbk5Jnnn+3tuNH5It0pSVTBJeL+lr6aFrG3
	09X8G8Qn3Yum6nVwPvN5wTY78MvWkRgu1Y+MzEpvlLxy9VezxYFRFORnBH0TX72S9FCpphT+HhJtd
	0ffVZsTLWwIdV8pNZYXOw/srGrgN2NMA8UvpbeOOo6mpfDhP38AH03BQV+lMmcDLXmbZJOJliNhYD
	E4RJ2sxM2MDUWOlJWdN/Fp8LkWojRcFmDSbw8gML541+5xWOVVhB3Y76qFCmiBa4L7owQc9Najcj+
	MOrnsxz4BfgDzYiv4YOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iflog-0004ol-T9; Fri, 13 Dec 2019 14:21:14 +0000
Received: from lb3-smtp-cloud9.xs4all.net ([194.109.24.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iflod-0004o9-0W
 for linux-rockchip@lists.infradead.org; Fri, 13 Dec 2019 14:21:13 +0000
Received: from [IPv6:2001:983:e9a7:1:c93c:45bd:1710:e478]
 ([IPv6:2001:983:e9a7:1:c93c:45bd:1710:e478])
 by smtp-cloud9.xs4all.net with ESMTPA
 id floXiiAUNGyJwfloZi1Qyu; Fri, 13 Dec 2019 15:21:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1576246868; bh=EVs39wM1SwWqHyQP+lYgjYWUHJlRDdSAOaHxxT//L8A=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=CIrxn26H0loiThE1yt7dbDn4i72GENeo8RIsif2X1PfAFJEbKLiauLUyJye5kEw5G
 9AnCLDwePcQM+az04XhwwJSLCJcOWxowEyBzuZgFGuNS91Il+PKPSP9sDaRLue1IOj
 R2rpi//Eq1qzdZM6Vf0yg3w+jBrJ3lrTXxL+IIjMIfp6zIDr3ZfRg3YnCTTuGmhDhM
 BVMAD+s5IXaRhP1CR963pR5xXjoV6bbhHxiyZdlSVsbfK6VnhB0I4XvUTxGU/Ulw6r
 jgOOuLaZxEbCMP8z50Mb2xuT29ziMc0dpPjY8lBFV0B46ROeTX/tIcKkmaQo+saX3K
 IiP4L1HutrJDQ==
Subject: Re: [PATCH v3 6/7] media: rkvdec: Add the rkvdec driver
To: Boris Brezillon <boris.brezillon@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@iki.fi>, linux-media@vger.kernel.org
References: <20191213125414.90725-1-boris.brezillon@collabora.com>
 <20191213125414.90725-7-boris.brezillon@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <036d3ecb-2307-4e8c-eaad-3c70c8cbda22@xs4all.nl>
Date: Fri, 13 Dec 2019 15:21:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191213125414.90725-7-boris.brezillon@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfNNDQz/4AyS67jgm+85BN/fuNAN4iC7sM/1YLh40BBLBYzRZt5j0NxbH/OFEYSAVp1XE9YFzzjwMyc0k8W7qAuN3yMATA2ew6dcFIoQVZMcggh2IUzMW
 N2zm+5S0EEQF8njxUnE/2xY7dMiXc936HQ2i29C2NnuR0muZQkW7TqG1tesE3MHGIrZ2wV4pOzN5PbtTplZ4USBavZzSWxws3O8q6rNfp1eEJXSGpa+uSaNK
 1+3iRbFWmiRWV8dkWqd1bRCdSn6wz+epA+S1xRvdKkvPUsIQXdPbRGVaVTC1rbLFHBgDbYnrJEHaDz230kybJLgKJI73pVZ9OppbgODCjNpb099zTcSuHg4s
 lWPv6xdDmG7ytipehZlEXmj8JGeFFHlgqyaKkv41cnNqwfBB1t3cbpl9nf9bxAaFDoPQDchv0qtOoC96+ZsMxR1yU+P6Mxf7VaFJBdHIqf+DqzppEGf0NzFX
 mzqolGYjUZwNOd9DvFKLVsTausOnizB8TxWg8ceX1MKizhXzbzq278/wV9eN6q5thi4v/9sic57E1dHhDYRbZa7Errr0Yyp3UftLsGFXdWDQwZkrSDERakFS
 Ua7filIWcn2z4QQbSRBJqGv31W93k3TBhlVjnNMLKyhxC1SMndA1cuAbpcVNMMgRE/Szf6UenGZYdaTlI1E11BW/ssjU4sLZ4O3QxetDqkSzoxSWuZZ26b8p
 Kq/fCMhCSOYzEWUTGIWUH1IGUY5RbfaadbAVK1GtFBrwyjt6/ZCfORQHqC8dmy6GAcuPAWxFmC7YePO/Fcy68JiKqhAz/JgaS3dy3zrbyLhugQ/BkJJPBqT1
 QrfaSmUt1ML6HTJY5Kw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_062111_212224_6B1970D3 
X-CRM114-Status: GOOD (  21.06  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.30 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Tomasz Figa <tfiga@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Nicolas Dufresne <nicolas@ndufresne.ca>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Boris,

A few small comments:

On 12/13/19 1:54 PM, Boris Brezillon wrote:
> The rockchip vdec block is a stateless decoder that's able to decode
> H264, HEVC and VP9 content. This commit adds the core infrastructure
> and the H264 backend. Support for VP9 and HEVS will be added later on.
> 
> Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> ---
> Changes in v3:
> * Move the driver to drivers/staging/media/rkvdec/
> * Fix copy&paste error in the Kconfig desc
> * Use REC709 color space when resetting the capture format
> * Prepare things to support VP9
> * Move H264 priv-table field definition out of rkvdec-regs.h
> * Clarify the provenance of the CABAC table
> * Ease RPS,PPS_FIELD() definition/manipulation
> * Take DPB field flags into account
> * Use the generic H264 helpers to build the reflists
> ---
>  drivers/staging/media/Kconfig              |    2 +
>  drivers/staging/media/Makefile             |    1 +
>  drivers/staging/media/rkvdec/Kconfig       |   15 +
>  drivers/staging/media/rkvdec/Makefile      |    3 +
>  drivers/staging/media/rkvdec/rkvdec-h264.c | 1154 ++++++++++++++++++++
>  drivers/staging/media/rkvdec/rkvdec-regs.h |  239 ++++
>  drivers/staging/media/rkvdec/rkvdec.c      | 1130 +++++++++++++++++++
>  drivers/staging/media/rkvdec/rkvdec.h      |  124 +++
>  8 files changed, 2668 insertions(+)
>  create mode 100644 drivers/staging/media/rkvdec/Kconfig
>  create mode 100644 drivers/staging/media/rkvdec/Makefile
>  create mode 100644 drivers/staging/media/rkvdec/rkvdec-h264.c
>  create mode 100644 drivers/staging/media/rkvdec/rkvdec-regs.h
>  create mode 100644 drivers/staging/media/rkvdec/rkvdec.c
>  create mode 100644 drivers/staging/media/rkvdec/rkvdec.h
> 

<snip>

> diff --git a/drivers/staging/media/rkvdec/rkvdec-h264.c b/drivers/staging/media/rkvdec/rkvdec-h264.c
> new file mode 100644
> index 000000000000..6de4bd39f286
> --- /dev/null
> +++ b/drivers/staging/media/rkvdec/rkvdec-h264.c

<snip>

> +/*
> + * dpb poc related registers table
> + */

Shouldn't the next two arrays be const?

> +static u32 poc_reg_tbl_top_field[16] = {
> +	RKVDEC_REG_H264_POC_REFER0(0),
> +	RKVDEC_REG_H264_POC_REFER0(2),
> +	RKVDEC_REG_H264_POC_REFER0(4),
> +	RKVDEC_REG_H264_POC_REFER0(6),
> +	RKVDEC_REG_H264_POC_REFER0(8),
> +	RKVDEC_REG_H264_POC_REFER0(10),
> +	RKVDEC_REG_H264_POC_REFER0(12),
> +	RKVDEC_REG_H264_POC_REFER0(14),
> +	RKVDEC_REG_H264_POC_REFER1(1),
> +	RKVDEC_REG_H264_POC_REFER1(3),
> +	RKVDEC_REG_H264_POC_REFER1(5),
> +	RKVDEC_REG_H264_POC_REFER1(7),
> +	RKVDEC_REG_H264_POC_REFER1(9),
> +	RKVDEC_REG_H264_POC_REFER1(11),
> +	RKVDEC_REG_H264_POC_REFER1(13),
> +	RKVDEC_REG_H264_POC_REFER2(0)
> +};
> +
> +static u32 poc_reg_tbl_bottom_field[16] = {
> +	RKVDEC_REG_H264_POC_REFER0(1),
> +	RKVDEC_REG_H264_POC_REFER0(3),
> +	RKVDEC_REG_H264_POC_REFER0(5),
> +	RKVDEC_REG_H264_POC_REFER0(7),
> +	RKVDEC_REG_H264_POC_REFER0(9),
> +	RKVDEC_REG_H264_POC_REFER0(11),
> +	RKVDEC_REG_H264_POC_REFER0(13),
> +	RKVDEC_REG_H264_POC_REFER1(0),
> +	RKVDEC_REG_H264_POC_REFER1(2),
> +	RKVDEC_REG_H264_POC_REFER1(4),
> +	RKVDEC_REG_H264_POC_REFER1(6),
> +	RKVDEC_REG_H264_POC_REFER1(8),
> +	RKVDEC_REG_H264_POC_REFER1(10),
> +	RKVDEC_REG_H264_POC_REFER1(12),
> +	RKVDEC_REG_H264_POC_REFER1(14),
> +	RKVDEC_REG_H264_POC_REFER2(1)
> +};

<snip>


> diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
> new file mode 100644
> index 000000000000..97698be9072e
> --- /dev/null
> +++ b/drivers/staging/media/rkvdec/rkvdec.c
> @@ -0,0 +1,1130 @@

<snip>

> +static int rkvdec_queue_setup(struct vb2_queue *vq, unsigned int *num_buffers,
> +			      unsigned int *num_planes, unsigned int sizes[],
> +			      struct device *alloc_devs[])
> +{
> +	struct rkvdec_ctx *ctx = vb2_get_drv_priv(vq);
> +	struct v4l2_pix_format_mplane *pixfmt;
> +	struct v4l2_format *f;
> +	unsigned int i;
> +
> +	if (V4L2_TYPE_IS_OUTPUT(vq->type))
> +		f = &ctx->coded_fmt;
> +	else
> +		f = &ctx->decoded_fmt;
> +
> +	if (*num_planes) {
> +		if (*num_planes != f->fmt.pix_mp.num_planes)
> +			return -EINVAL;
> +
> +		for (i = 0; i < f->fmt.pix_mp.num_planes; i++) {
> +			if (sizes[i] < f->fmt.pix_mp.plane_fmt[i].sizeimage)
> +				return -EINVAL;
> +		}

Shouldn't there be a 'return 0' here? In the CREATE_BUFS case all you do is check
if the given size is large enough, and if so then you are done.

> +	} else {
> +		*num_planes = f->fmt.pix_mp.num_planes;
> +		for (i = 0; i < f->fmt.pix_mp.num_planes; i++)
> +			sizes[i] = f->fmt.pix_mp.plane_fmt[i].sizeimage;
> +	}
> +
> +	if (V4L2_TYPE_IS_OUTPUT(vq->type))
> +		return 0;
> +
> +	pixfmt = &ctx->decoded_fmt.fmt.pix_mp;
> +	sizes[0] += 128 * DIV_ROUND_UP(pixfmt->width, 16) *
> +		    DIV_ROUND_UP(pixfmt->height, 16);
> +	return 0;
> +}

<snip>

Regards,

	Hans

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
