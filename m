Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFEDF1F1676
	for <lists+linux-rockchip@lfdr.de>; Mon,  8 Jun 2020 12:10:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/2/7NKmEzWemTX4903Eiy0Mq9H4F3ZatH/KviDxa5wk=; b=JdPW/zN/e2sqL/
	PObytLl8zGRAxg/5xPXNcKg901ZuYwQKZ43TKI9dhRmQF4KGZh88asafhiXR/BIa+9w6Y2ujGk7e0
	8C6Eoa1LswF5BU9oe6O3bgPIFZ8LSZzwEzHedo0qLEqF8+9lwwklJabPNYSFuipo5uWHe+mqDyhg4
	2qNJ7B7VbVDJ9ONoYkybE9JReV5AHKWh5O+0Fy2jKCH9qhfEOeX8iBPVcs8nHWWhHqGDL5CVP/DMe
	zqGKvCwIiyDSdl5qTp3YUHKqv8I8LS/iw37T7L+IXGS/X28hj2fSaWHshQ9h5DPWi/M1rKi2sfW2C
	fHSDObfPk3OUoYyZs4vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiEk4-0005Tc-OI; Mon, 08 Jun 2020 10:10:56 +0000
Received: from lb3-smtp-cloud9.xs4all.net ([194.109.24.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiEk0-0005T8-IW
 for linux-rockchip@lists.infradead.org; Mon, 08 Jun 2020 10:10:54 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud9.xs4all.net with ESMTPA
 id iEjujQ5qhCKzeiEjyjlXn2; Mon, 08 Jun 2020 12:10:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1591611050; bh=l2JNPRkMsdK0bRWYS/0Eu9dzGdf9ruIBhJhrGpi+Zbg=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=Uy73MmMTDIySAvl+MkU2XZKF8ApPfZXW9D8xMRPB3gqXpoNbXeTvdqKb52dAEF88O
 8dwMuYwavoQ1adgxQaNjrPi4b3kSwkQKeHkWKzR6NsHNvPTZCc0A5dhS22X42WQPiJ
 4cdKttuHt7P6uPRZOus4xEdJtj7bS78+MiJUlHDnMabD5mEDQYdDDhwj49Ao7IUqfn
 mLeSK1HWs9lXG67hQR4mfyiGxXawu0PqahhBT3cVZHtatoXKx7oInM0LpB1TmAbGm2
 NS1/jFvbKr4LQNszTW8Ppxl+ZmYFUAa4T+7i6n+6g750D7nSt8CvTAzq6khS/FYu0X
 KtoMZE93GIe6g==
Subject: Re: [RFC v4 7/8] media: vivid: Add support to the CSC API
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
References: <20200605172625.19777-1-dafna.hirschfeld@collabora.com>
 <20200605172625.19777-8-dafna.hirschfeld@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <faedc5f3-d872-ef5c-b503-26de899be09e@xs4all.nl>
Date: Mon, 8 Jun 2020 12:10:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200605172625.19777-8-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfKZb5RBQVxz0cHpn6dgXj5/q8xn8Tmqri3oFZOXKi1XEfiP8EHDcyp3pd34ImizrpKn/8kVq3raE2aO8ct+ItoZlm//EKvLFSXodiZc+kL9Snhzvr7yF
 SUBvaYNA8DTQPfrREH/mT8MU2hWdPbRUzxiXDsjVKC2fS10CF3oArbCag0HaSklcqRu/sbI5TR4EWwvPZS6fphccPVqHSU1oytO0lwF7V5DVUBbZXhld7MNr
 1b2mn0z0UcBiG2uoCyy2diqFEaYzSDOZ8OMZs2h2FLtw4A1gMHLxEFkNGliU/fnT00TUKsd9aARoTtz8A/5J9hDBqQvWmuwmDPLAggcgI1FqJjwHO1Ie0qXA
 Hk+nOs+bLVqwi+Kk3jffRQmTWDc/z1XpoTcGe7PacZDSBYP6HBg1LKdXkZ1CnzPbAuDS0xO/a8Yst1IffIMu7F2ROX28vVahTtr3+PSMM6wzTzf2aeSdCQW2
 ym6K5NhQ5exWv2+dpH56UyqytOUGu0h7aGwWKYWXFNM6Ab9LtkGetP8tlOgS/G5xAKHVyDsoTTAKmMq9uOV6qAC8mEj7nr5VA5raFYKuDOwbPqBDKoGIRPCJ
 MTUW9aYlmyhJT76zO7qRuCvHMunOBZDailUbCWoB8gPOIA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_031052_754735_B3CA46DD 
X-CRM114-Status: GOOD (  20.51  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.30 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [194.109.24.30 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mchehab@kernel.org, p.zabel@pengutronix.de, dafna3@gmail.com,
 tfiga@chromium.org, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, sakari.ailus@linux.intel.com,
 skhan@linuxfoundation.org, kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 05/06/2020 19:26, Dafna Hirschfeld wrote:
> The CSC API (Colorspace conversion) allows userspace to try
> to configure the ycbcr/hsv_enc function and the quantization
> for capture devices. This patch adds support to the CSC API
> in vivid.
> Using the CSC API, userspace is allowed to do the following:
> 
> 1. Set the ycbcr_enc function for YUV formats.
> 2. Set the hsv_enc function for HSV formats
> 3. Set the quantization for YUV and RGB formats.

I just realized something. We excluded colorspace and xfer_func from the CSC API
for now since there are no drivers that support those conversions. But actually,
that's not true since vivid *does* support this unless it is in loopback mode
(then no CSC conversion is supported).

So if dev->loop_video is true, then disable CSC conversion in vivid.

Otherwise CSC can be fully enabled for all four colorimetry fields.

So I think we should add flags to signal this for colorspace and xfer_func as well
and implement this in vivid.

Sorry about this, I should have realized this (much) earlier.

Regards,

	Hans

> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  .../media/test-drivers/vivid/vivid-vid-cap.c  | 49 +++++++++++++++++--
>  .../test-drivers/vivid/vivid-vid-common.c     | 20 ++++++++
>  2 files changed, 65 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/media/test-drivers/vivid/vivid-vid-cap.c b/drivers/media/test-drivers/vivid/vivid-vid-cap.c
> index e94beef008c8..8a43d7ebe53f 100644
> --- a/drivers/media/test-drivers/vivid/vivid-vid-cap.c
> +++ b/drivers/media/test-drivers/vivid/vivid-vid-cap.c
> @@ -549,6 +549,29 @@ int vivid_g_fmt_vid_cap(struct file *file, void *priv,
>  	return 0;
>  }
>  
> +static bool vivid_is_hsv_enc_valid(__u8 hsv_enc)
> +{
> +	if (hsv_enc == V4L2_HSV_ENC_180 || hsv_enc == V4L2_HSV_ENC_256)
> +		return true;
> +	return false;
> +}
> +
> +static bool vivid_is_ycbcr_enc_valid(__u8 ycbcr_enc)
> +{
> +	/* V4L2_YCBCR_ENC_SMPTE240M is the last ycbcr_enc enum */
> +	if (ycbcr_enc && ycbcr_enc <= V4L2_YCBCR_ENC_SMPTE240M)
> +		return true;
> +	return false;
> +}
> +
> +static bool vivid_is_quant_valid(__u8 quantization)
> +{
> +	if (quantization == V4L2_QUANTIZATION_FULL_RANGE ||
> +	    quantization == V4L2_QUANTIZATION_LIM_RANGE)
> +		return true;
> +	return false;
> +}
> +
>  int vivid_try_fmt_vid_cap(struct file *file, void *priv,
>  			struct v4l2_format *f)
>  {
> @@ -560,6 +583,7 @@ int vivid_try_fmt_vid_cap(struct file *file, void *priv,
>  	unsigned factor = 1;
>  	unsigned w, h;
>  	unsigned p;
> +	bool user_set_csc = !!(mp->flags & V4L2_PIX_FMT_FLAG_SET_CSC);
>  
>  	fmt = vivid_get_format(dev, mp->pixelformat);
>  	if (!fmt) {
> @@ -634,12 +658,23 @@ int vivid_try_fmt_vid_cap(struct file *file, void *priv,
>  			(fmt->bit_depth[0] / fmt->vdownsampling[0]);
>  
>  	mp->colorspace = vivid_colorspace_cap(dev);
> -	if (fmt->color_enc == TGP_COLOR_ENC_HSV)
> -		mp->hsv_enc = vivid_hsv_enc_cap(dev);
> -	else
> +	if (fmt->color_enc == TGP_COLOR_ENC_HSV) {
> +		if (!user_set_csc || !vivid_is_hsv_enc_valid(mp->hsv_enc))
> +			mp->hsv_enc = vivid_hsv_enc_cap(dev);
> +	} else if (fmt->color_enc == TGP_COLOR_ENC_YCBCR) {
> +		if (!user_set_csc || !vivid_is_ycbcr_enc_valid(mp->ycbcr_enc))
> +			mp->ycbcr_enc = vivid_ycbcr_enc_cap(dev);
> +	} else {
>  		mp->ycbcr_enc = vivid_ycbcr_enc_cap(dev);
> +	}
>  	mp->xfer_func = vivid_xfer_func_cap(dev);
> -	mp->quantization = vivid_quantization_cap(dev);
> +	if (fmt->color_enc == TGP_COLOR_ENC_YCBCR ||
> +	    fmt->color_enc == TGP_COLOR_ENC_RGB) {
> +		if (!user_set_csc || !vivid_is_quant_valid(mp->quantization))
> +			mp->quantization = vivid_quantization_cap(dev);
> +	} else {
> +		mp->quantization = vivid_quantization_cap(dev);
> +	}
>  	memset(mp->reserved, 0, sizeof(mp->reserved));
>  	return 0;
>  }
> @@ -769,6 +804,12 @@ int vivid_s_fmt_vid_cap(struct file *file, void *priv,
>  	if (vivid_is_sdtv_cap(dev))
>  		dev->tv_field_cap = mp->field;
>  	tpg_update_mv_step(&dev->tpg);
> +	dev->tpg.quantization = mp->quantization;
> +	if (dev->fmt_cap->color_enc == TGP_COLOR_ENC_YCBCR)
> +		dev->tpg.ycbcr_enc = mp->ycbcr_enc;
> +	else
> +		dev->tpg.hsv_enc = mp->hsv_enc;
> +
>  	return 0;
>  }
>  
> diff --git a/drivers/media/test-drivers/vivid/vivid-vid-common.c b/drivers/media/test-drivers/vivid/vivid-vid-common.c
> index 76b0be670ebb..19aacb180e67 100644
> --- a/drivers/media/test-drivers/vivid/vivid-vid-common.c
> +++ b/drivers/media/test-drivers/vivid/vivid-vid-common.c
> @@ -920,6 +920,26 @@ int vivid_enum_fmt_vid(struct file *file, void  *priv,
>  	fmt = &vivid_formats[f->index];
>  
>  	f->pixelformat = fmt->fourcc;
> +
> +	if (f->type != V4L2_BUF_TYPE_VIDEO_CAPTURE &&
> +	    f->type != V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE)
> +		return 0;
> +	/*
> +	 * For capture devices, we support the CSC API.
> +	 * We allow userspace to:
> +	 * 1. set the ycbcr_enc on yuv format
> +	 * 2. set the hsv_enc on hsv format
> +	 * 3. set the quantization on yuv and rgb formats
> +	 */
> +	if (fmt->color_enc == TGP_COLOR_ENC_YCBCR) {
> +		f->flags |= V4L2_FMT_FLAG_CSC_YCBCR_ENC;
> +		f->flags |= V4L2_FMT_FLAG_CSC_QUANTIZATION;
> +	} else if (fmt->color_enc == TGP_COLOR_ENC_HSV) {
> +		f->flags |= V4L2_FMT_FLAG_CSC_HSV_ENC;
> +	} else if (fmt->color_enc == TGP_COLOR_ENC_RGB) {
> +		f->flags |= V4L2_FMT_FLAG_CSC_QUANTIZATION;
> +	}
> +
>  	return 0;
>  }
>  
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
