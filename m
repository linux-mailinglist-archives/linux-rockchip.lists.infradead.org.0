Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA21A1A15EE
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 Apr 2020 21:24:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lh4zsRiy7dcc51YwK3X1fhNsf/OWu8F5AvKq3UfqfHE=; b=n/iUehjre5FIbK
	dujn6tBFSfUQ/m609ErASA4j9xonpiIs8AE5k4ZQ3UJ5yrlAoZDOcBZcYQjMCIevk4NiCduc1iv2C
	pxr2df8+HsZ2WdRz2yTJgSRGMM5dEPSPDLkjrI5B+OTRH/HP4JHn30C91NQhxqi4bhHKGxCLf0FQe
	rRJMgQq1a4K8mJvIif11XMgl2U0Rvw62FjT1AcqCeAlJjWrZDinJQEHYrtQDsFdtyicTy3emfpe6i
	2GU/OKQ8k2gqWwehMK6+0ZF9kWGME3tfxKkWFcHjFfjsQKC+9GpH9E+pDAScXVhImQlQhwhoOhwxh
	PNgSGfpMrcuZUC3/xDQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLtq4-0005an-Mz; Tue, 07 Apr 2020 19:24:48 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLtq1-0005aD-AW
 for linux-rockchip@lists.infradead.org; Tue, 07 Apr 2020 19:24:47 +0000
Received: by mail-lf1-x142.google.com with SMTP id w145so3304924lff.3
 for <linux-rockchip@lists.infradead.org>; Tue, 07 Apr 2020 12:24:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ragnatech-se.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=1eDwHIuq864sfvk+gP24RdI6jUztDsucRBJ8sfkpCII=;
 b=ktzGasxQeSW/PHxPnigEXF3npmaDvApLOzOHzdjFsmue07lh1FmJYORNhcEh3TEzDz
 jnXIz44sRKL3DcYX9HXHLHcEOmJ2UzBrpYvTbDldu7QQV9XSs+YEXrepKjrUt3TaAaNw
 5+kBU6KMaUelJSubRfOlEQ+75yD2IbP6lKXxA2aZmHLYx45dCd6C7lC88kGNzADqS2jC
 0QLX5EneKwWIvX9BzL5F+AaDhTi77jL43abjFp/9sP6a9TSx4m0PUC2/IdGkKGL/BYXG
 +c/uOcJs5iS9LRbjzy/YMiBCHE425cl5gkGWXnq5nT48wxcp8TvRqm4y97fsCaUGzM75
 v9qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=1eDwHIuq864sfvk+gP24RdI6jUztDsucRBJ8sfkpCII=;
 b=JIhFXiW5P5WjyUEkL4gPFC+czQgg5kPDdBb3ObWqwfMTV2+4m762YnTYXWSBzGOdGh
 E2H26Jferx7XWXebfEA6OSOc9U8Jc4Q1jL27lA01275at16WjCG5kExueP8XZm7uwNr9
 x7C9X/x4LtOGwpYL1EIaXEBiCTP7NAKIMzdFe2u/7VZrKrmWq60+i3xDwcuAQH1Xoze2
 e956Rno5WpypJ/2pDYEhmRYvEaJ5KRx8DekkqQLPtdIGnjSuow5CLX71Wmr3gEf9NB3f
 EUG5RQdeDtu0x27FzhV97GSSVGYON4Mdolu/7M8agbgqQmeYRL0tFAot/OB4dJKC6IWR
 PIQA==
X-Gm-Message-State: AGi0PuahSyXlYiVn9YPthGU5+WNP2ZMeqmDOq/YH3pjS2b/xNTFlaU82
 LHsH5K+2LrMLcngXwkszoTZqMg==
X-Google-Smtp-Source: APiQypKGo8qvUpgS5S2IV9L70zANZNOeHFLm2uYoQAsWK1C+HW3ZSuQxX4mY70Nru0p74FO+8kdiPw==
X-Received: by 2002:ac2:4295:: with SMTP id m21mr2453258lfh.132.1586287482458; 
 Tue, 07 Apr 2020 12:24:42 -0700 (PDT)
Received: from localhost (h-200-138.A463.priv.bahnhof.se. [176.10.200.138])
 by smtp.gmail.com with ESMTPSA id w24sm12145002ljh.57.2020.04.07.12.24.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 12:24:41 -0700 (PDT)
Date: Tue, 7 Apr 2020 21:24:41 +0200
From: Niklas =?iso-8859-1?Q?S=F6derlund?= <niklas.soderlund@ragnatech.se>
To: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v2 1/3] media: v4l2-common: add helper functions to call
 s_stream() callbacks
Message-ID: <20200407192441.GE1716317@oden.dyn.berto.se>
References: <20200403213312.1863876-1-helen.koike@collabora.com>
 <20200403213312.1863876-2-helen.koike@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403213312.1863876-2-helen.koike@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_122445_433762_19C6DE83 
X-CRM114-Status: GOOD (  28.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mchehab@kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, hans.verkuil@cisco.com,
 skhan@linuxfoundation.org, kernel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Helen,

Thanks for your work.

On 2020-04-03 18:33:10 -0300, Helen Koike wrote:
> Add v4l2_pipeline_stream_{enable,disable} helper functions to iterate
> through the subdevices in a given stream (i.e following links from sink
> to source) and call .s_stream() callback.
> =

> Add stream_count on the subdevice object for simultaneous streaming from
> different video devices which shares subdevices.
> =

> Prevent calling .s_stream(true) if it was already called previously by
> another stream.
> =

> Prevent calling .s_stream(false) from one stream when there are still
> others active.
> =

> If .s_stream(true) fails, call .s_stream(false) in the reverse order.
> =

> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> =

> ---
> =

> Changes in v2:
> - re-write helpers to not use media walkers
> =

>  drivers/media/v4l2-core/v4l2-common.c | 117 ++++++++++++++++++++++++++
>  include/media/v4l2-common.h           |  28 ++++++
>  include/media/v4l2-subdev.h           |   2 +
>  3 files changed, 147 insertions(+)
> =

> diff --git a/drivers/media/v4l2-core/v4l2-common.c b/drivers/media/v4l2-c=
ore/v4l2-common.c
> index d0e5ebc736f9f..379d4bf4f8128 100644
> --- a/drivers/media/v4l2-core/v4l2-common.c
> +++ b/drivers/media/v4l2-core/v4l2-common.c
> @@ -441,3 +441,120 @@ int v4l2_fill_pixfmt(struct v4l2_pix_format *pixfmt=
, u32 pixelformat,
>  	return 0;
>  }
>  EXPORT_SYMBOL_GPL(v4l2_fill_pixfmt);
> +
> +/*
> + * v4l2_pipeline_subdevs_get - Assemble a list of subdevices in a pipeli=
ne
> + * @subdevs: the array to be filled
> + * @size: the array size

Should this be documented as the maximum number of elements that can fit =

in the subdevs array?

> + *
> + * Walk from a video node, following link from sink to source and fill t=
he
> + * array with subdevices in the path.
> + *
> + * Note: this function follows the first enabled link in a sink pad foun=
d in a
> + * given entity. Thus it won't work if there are entities with multiple =
enabled
> + * links to its sink pads in the topology.

I wonder if it would be more useful to make this function return all =

subdevs in the pipeline that have an enabled link going from sink to =

source while walking from the video device?

When reading the commit messages I thought this could be useful for the =

rcar-vin driver. By not finding all subdevices in the pipeline this =

would not be possible as there on some platforms are a CSI-2 bus where =

the CSI-2 transmitter have 4 sink pads and one source pads so the whole =

pipeline would not be started.

> + *
> + * Return the number of subdevices filled in the array.
> + */
> +static unsigned int v4l2_pipeline_subdevs_get(struct video_device *vdev,
> +					      struct v4l2_subdev **subdevs,
> +					      unsigned int size)
> +{
> +	struct media_entity *entity =3D &vdev->entity;
> +	unsigned int idx =3D 0;
> +
> +	while (1) {
> +		struct media_pad *src_pad =3D NULL;
> +		unsigned int i;
> +
> +		/* Find remote source pad */
> +		for (i =3D 0; i < entity->num_pads; i++) {
> +			struct media_pad *sink_pad =3D &entity->pads[i];
> +
> +			if (!(sink_pad->flags & MEDIA_PAD_FL_SINK))
> +				continue;
> +
> +			src_pad =3D media_entity_remote_pad(sink_pad);
> +			if (src_pad &&
> +			    is_media_entity_v4l2_subdev(src_pad->entity))
> +				break;
> +		}
> +		if (i =3D=3D entity->num_pads)
> +			break;
> +
> +		if (idx >=3D size) {
> +			WARN_ON(1);
> +			return 0;

Would it make sens to have this function return int and a negative error =

code here? Is this now how other areas of V4L2 deal with when a provided =

array is too small ? I'm thinking about if this function could be =

exported for use by drivers in the future.

> +		}
> +
> +		entity =3D src_pad->entity;
> +		subdevs[idx++] =3D media_entity_to_v4l2_subdev(entity);
> +	}
> +
> +	return idx;
> +}
> +
> +__must_check int v4l2_pipeline_stream_enable(struct video_device *vdev)
> +{
> +	struct media_device *mdev =3D vdev->entity.graph_obj.mdev;
> +	struct v4l2_subdev *subdevs[MEDIA_ENTITY_ENUM_MAX_DEPTH];
> +	struct v4l2_subdev *sd;
> +	unsigned int i, size;
> +	int ret;
> +
> +	mutex_lock(&mdev->graph_mutex);
> +
> +	size =3D v4l2_pipeline_subdevs_get(vdev, subdevs, ARRAY_SIZE(subdevs));
> +
> +	for (i =3D 0; i < size; i++) {
> +		sd =3D subdevs[i];
> +		if (sd->stream_count++)
> +			continue;
> +		dev_dbg(mdev->dev,
> +			"enabling stream for '%s'\n", sd->entity.name);

Small nit, would it make sens to print the sd->stream_count also in this =

debug statement (and the similar ones bellow) ?

> +		ret =3D v4l2_subdev_call(sd, video, s_stream, true);
> +		if (ret && ret !=3D -ENOIOCTLCMD)
> +			goto err_stream_disable;
> +	}
> +
> +	mutex_unlock(&mdev->graph_mutex);
> +	return 0;
> +
> +err_stream_disable:
> +	do {
> +		sd =3D subdevs[i];
> +		if (--sd->stream_count)
> +			continue;
> +		dev_dbg(mdev->dev,
> +			"disabling stream for '%s'\n", sd->entity.name);
> +		v4l2_subdev_call(sd, video, s_stream, false);
> +	} while (i--);
> +
> +	mutex_unlock(&mdev->graph_mutex);
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(v4l2_pipeline_stream_enable);
> +
> +void v4l2_pipeline_stream_disable(struct video_device *vdev)
> +{
> +	struct media_device *mdev =3D vdev->entity.graph_obj.mdev;
> +	struct v4l2_subdev *subdevs[MEDIA_ENTITY_ENUM_MAX_DEPTH];
> +	unsigned int size;
> +
> +	mutex_lock(&mdev->graph_mutex);
> +
> +	size =3D v4l2_pipeline_subdevs_get(vdev, subdevs, ARRAY_SIZE(subdevs));
> +
> +	while (size--) {
> +		struct v4l2_subdev *sd =3D subdevs[size];
> +
> +		if (--sd->stream_count)
> +			continue;
> +		dev_dbg(mdev->dev,
> +			"disabling stream for '%s'\n", sd->entity.name);
> +		v4l2_subdev_call(sd, video, s_stream, false);
> +	}
> +
> +	mutex_unlock(&mdev->graph_mutex);
> +}
> +EXPORT_SYMBOL_GPL(v4l2_pipeline_stream_disable);
> diff --git a/include/media/v4l2-common.h b/include/media/v4l2-common.h
> index 150ee16ebd811..e833610b0f66d 100644
> --- a/include/media/v4l2-common.h
> +++ b/include/media/v4l2-common.h
> @@ -519,6 +519,34 @@ int v4l2_fill_pixfmt(struct v4l2_pix_format *pixfmt,=
 u32 pixelformat,
>  int v4l2_fill_pixfmt_mp(struct v4l2_pix_format_mplane *pixfmt, u32 pixel=
format,
>  			u32 width, u32 height);
>  =

> +/**
> + * v4l2_pipeline_stream_enable - Call .s_stream(true) callbacks in the s=
tream
> + * @vdev: Starting video device
> + *
> + * Call .s_stream(true) callback in all the subdevices participating in =
the
> + * stream, i.e. following links from sink to source.
> + *
> + * Calls to this function can be nested, in which case the same number of
> + * v4l2_pipeline_stream_disable() calls will be required to stop streami=
ng.
> + * The  pipeline pointer must be identical for all nested calls to
> + * v4l2_pipeline_stream_enable().
> + */
> +__must_check int v4l2_pipeline_stream_enable(struct video_device *vdev);
> +
> +/**
> + * v4l2_pipeline_stream_disable - Call .s_stream(false) callbacks in the=
 stream
> + * @vdev: Starting video device
> + *
> + * Call .s_stream(true) callback in all the subdevices participating in =
the
> + * stream, i.e. following links from sink to source.
> + *
> + * Calls to this function can be nested, in which case the same number of
> + * v4l2_pipeline_stream_disable() calls will be required to stop streami=
ng.
> + * The  pipeline pointer must be identical for all nested calls to
> + * v4l2_pipeline_stream_enable().
> + */
> +void v4l2_pipeline_stream_disable(struct video_device *vdev);
> +
>  static inline u64 v4l2_buffer_get_timestamp(const struct v4l2_buffer *bu=
f)
>  {
>  	/*
> diff --git a/include/media/v4l2-subdev.h b/include/media/v4l2-subdev.h
> index a4848de598521..20f913a9f70c5 100644
> --- a/include/media/v4l2-subdev.h
> +++ b/include/media/v4l2-subdev.h
> @@ -838,6 +838,7 @@ struct v4l2_subdev_platform_data {
>   * @subdev_notifier: A sub-device notifier implicitly registered for the=
 sub-
>   *		     device using v4l2_device_register_sensor_subdev().
>   * @pdata: common part of subdevice platform data
> + * @stream_count: Stream count for the subdevice.
>   *
>   * Each instance of a subdev driver should create this struct, either
>   * stand-alone or embedded in a larger struct.
> @@ -869,6 +870,7 @@ struct v4l2_subdev {
>  	struct v4l2_async_notifier *notifier;
>  	struct v4l2_async_notifier *subdev_notifier;
>  	struct v4l2_subdev_platform_data *pdata;
> +	unsigned int stream_count;
>  };
>  =

>  =

> -- =

> 2.26.0
> =


-- =

Regards,
Niklas S=F6derlund

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
