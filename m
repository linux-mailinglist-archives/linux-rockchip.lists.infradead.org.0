Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87F571558D4
	for <lists+linux-rockchip@lfdr.de>; Fri,  7 Feb 2020 14:56:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jcfpPGHwnrc1HpLEBm6VW+VNFoxNehT+MS6DWPD/EAE=; b=G/GxRsGnSYpw0a
	3eE2oz3G/QqL5ofzAq2JuX/ND9qszHOZiKIVb6l9m3Ux2t8983uABho3716QCvjZXUSqVGCiesIky
	KCN1oSb3u93ejgpmf/1LZ6db1XLA7BLnX2+j3CJN8yLC2Zpkw1n03O7jOqjtHf/pHToNdYIkJh8uB
	pHtStUIU9U/eruOohx2KGLrTNZ8wE7NJL38mSEGt4SucWmyI2+pxy8kwYjvn/jAe44HeiZJ8BLBcF
	HvUejS83SPA48acxJxACYMiSf2/ZP2RhJr/8Ipw/w4abPCj0/SuMxAMtamjoGRSedomwoLlMbs/G7
	s5d2l0Yj48B/mFNsyUJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j047F-0002Zw-Ly; Fri, 07 Feb 2020 13:56:17 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j047B-0002Z6-Ud
 for linux-rockchip@lists.infradead.org; Fri, 07 Feb 2020 13:56:15 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 56DD9290D82
Subject: Re: [PATCH 4/4] media: staging: rkisp1: add serialization to the
 resizer subdev ops
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org
References: <20200207085951.5226-1-dafna.hirschfeld@collabora.com>
 <20200207085951.5226-5-dafna.hirschfeld@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <0bc0b4d9-9b68-4535-2a97-eaa99dc2d597@collabora.com>
Date: Fri, 7 Feb 2020 10:56:05 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200207085951.5226-5-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_055614_253752_B75F363E 
X-CRM114-Status: GOOD (  16.83  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: mchehab@kernel.org, dafna3@gmail.com, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, sakari.ailus@linux.intel.com,
 kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org



On 2/7/20 6:59 AM, Dafna Hirschfeld wrote:
> For subdevices drivers, the drivers themself are responsible
> for serializing their operations.
> This patch adds serialization to the resizer subdevice.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>


Acked-by: Helen Koike <helen.koike@collabora.com>

Sakari, if you could take a look at this too it would be great.

Dafna, could you also send a patch removing the item in the TODO list
regarding ioctls serialization?

Thanks,
Helen

> ---
>  drivers/staging/media/rkisp1/rkisp1-common.h  |  1 +
>  drivers/staging/media/rkisp1/rkisp1-resizer.c | 16 ++++++++++++++--
>  2 files changed, 15 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
> index 7c668ac4bdd5..18507f5b6f3c 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-common.h
> +++ b/drivers/staging/media/rkisp1/rkisp1-common.h
> @@ -226,6 +226,7 @@ struct rkisp1_resizer {
>  	struct v4l2_subdev_pad_config pad_cfg[RKISP1_ISP_PAD_MAX];
>  	const struct rkisp1_rsz_config *config;
>  	enum rkisp1_fmt_pix_type fmt_type;
> +	struct mutex ops_lock;
>  };
>  
>  struct rkisp1_debug {
> diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> index 9de6744f0900..87799fbf0363 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> @@ -562,7 +562,9 @@ static int rkisp1_rsz_get_fmt(struct v4l2_subdev *sd,
>  	struct rkisp1_resizer *rsz =
>  		container_of(sd, struct rkisp1_resizer, sd);
>  
> +	mutex_lock(&rsz->ops_lock);
>  	fmt->format = *rkisp1_rsz_get_pad_fmt(rsz, cfg, fmt->pad, fmt->which);
> +	mutex_unlock(&rsz->ops_lock);
>  	return 0;
>  }
>  
> @@ -573,11 +575,13 @@ static int rkisp1_rsz_set_fmt(struct v4l2_subdev *sd,
>  	struct rkisp1_resizer *rsz =
>  		container_of(sd, struct rkisp1_resizer, sd);
>  
> +	mutex_lock(&rsz->ops_lock);
>  	if (fmt->pad == RKISP1_RSZ_PAD_SINK)
>  		rkisp1_rsz_set_sink_fmt(rsz, cfg, &fmt->format, fmt->which);
>  	else
>  		rkisp1_rsz_set_src_fmt(rsz, cfg, &fmt->format, fmt->which);
>  
> +	mutex_unlock(&rsz->ops_lock);
>  	return 0;
>  }
>  
> @@ -588,10 +592,12 @@ static int rkisp1_rsz_get_selection(struct v4l2_subdev *sd,
>  	struct rkisp1_resizer *rsz =
>  		container_of(sd, struct rkisp1_resizer, sd);
>  	struct v4l2_mbus_framefmt *mf_sink;
> +	int ret = 0;
>  
>  	if (sel->pad == RKISP1_RSZ_PAD_SRC)
>  		return -EINVAL;
>  
> +	mutex_lock(&rsz->ops_lock);
>  	switch (sel->target) {
>  	case V4L2_SEL_TGT_CROP_BOUNDS:
>  		mf_sink = rkisp1_rsz_get_pad_fmt(rsz, cfg, RKISP1_RSZ_PAD_SINK,
> @@ -606,10 +612,11 @@ static int rkisp1_rsz_get_selection(struct v4l2_subdev *sd,
>  						  sel->which);
>  		break;
>  	default:
> -		return -EINVAL;
> +		ret = -EINVAL;
>  	}
>  
> -	return 0;
> +	mutex_unlock(&rsz->ops_lock);
> +	return ret;
>  }
>  
>  static int rkisp1_rsz_set_selection(struct v4l2_subdev *sd,
> @@ -625,7 +632,9 @@ static int rkisp1_rsz_set_selection(struct v4l2_subdev *sd,
>  	dev_dbg(sd->dev, "%s: pad: %d sel(%d,%d)/%dx%d\n", __func__,
>  		sel->pad, sel->r.left, sel->r.top, sel->r.width, sel->r.height);
>  
> +	mutex_lock(&rsz->ops_lock);
>  	rkisp1_rsz_set_sink_crop(rsz, cfg, &sel->r, sel->which);
> +	mutex_unlock(&rsz->ops_lock);
>  
>  	return 0;
>  }
> @@ -665,9 +674,11 @@ static int rkisp1_rsz_s_stream(struct v4l2_subdev *sd, int enable)
>  	if (other->is_streaming)
>  		when = RKISP1_SHADOW_REGS_ASYNC;
>  
> +	mutex_lock(&rsz->ops_lock);
>  	rkisp1_rsz_config(rsz, when);
>  	rkisp1_dcrop_config(rsz);
>  
> +	mutex_unlock(&rsz->ops_lock);
>  	return 0;
>  }
>  
> @@ -713,6 +724,7 @@ static int rkisp1_rsz_register(struct rkisp1_resizer *rsz)
>  
>  	rsz->fmt_type = RKISP1_DEF_FMT_TYPE;
>  
> +	mutex_init(&rsz->ops_lock);
>  	ret = media_entity_pads_init(&sd->entity, 2, pads);
>  	if (ret)
>  		return ret;
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
