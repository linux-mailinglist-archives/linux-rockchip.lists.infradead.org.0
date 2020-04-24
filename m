Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 661BC1B772F
	for <lists+linux-rockchip@lfdr.de>; Fri, 24 Apr 2020 15:42:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=75RYBQ0bqL+fAuQX+EEl0xvXcFpc4+eQDWW4uo7exYE=; b=Ta2NRF352QFyxU
	H8u5hcQhBrzqG8RepmmPnObToKyHVmg8xM7kgbcRlHISKFoS/Q59eW8QNWlPgNaVNvhU8trgv+IEa
	+p1C4uYWiEZ47ccAKG8tHt7gAIKzhgdZMnYJt5AS9h6tPzJ8xTh6PLrXS6oRnieMXEhabEg6bm7+I
	LC6/vQXMT12Fn6Rs/MG3UHn4YfKFc70KOaDwBla/fwLhxRsezCmw14ZL1wiGKentzMjTiZPoxx3qW
	XNOW9bn2wfdkgg4kWGnuUBz7Z5Aq7Uum1k8ZJJzeBFM1iqIonbTVBgAQRT5cMOcMvAiSB1KajAMeV
	kE5WJlW+FPVm+iG7+iMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRyaf-0003Hb-2i; Fri, 24 Apr 2020 13:42:01 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRyaa-0003GG-8k
 for linux-rockchip@lists.infradead.org; Fri, 24 Apr 2020 13:41:58 +0000
Received: by mail-lj1-x243.google.com with SMTP id b2so9966610ljp.4
 for <linux-rockchip@lists.infradead.org>; Fri, 24 Apr 2020 06:41:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ragnatech-se.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=6bzGPbBR5INYjAbEOgGMPYc9YHJ427hb01U+XkmIM2w=;
 b=sWsdKnmuOFjeeA/Ws/vlAHRXawQreqqdgcW35iCwHM2+/VBbptLWTFraQ6HONd1a3V
 IR3yJ+iHTro8gT4ssMoXJRpemdXoNLT7bUFUcVHtn6dKkJ4ITuunwv/NtOW2AiwHjVUJ
 ISLvu+vGmSkp1xl5MjLviloIH2Rq/giA/lhnJ7Ga4BoyasPHUYnCn9iXlEheBNHSsSTl
 XOdrzz94Oi8G0oCz/WEd5EIL5XuyFsIHI6sSgUkC1IVuuVh/E1juTqWSdFXw/VWXO9x5
 p8jFxyUcC4HNdXJEhailJmxyixlkwEyIsY+HK08/mE0OAenvQO2IOyo2APMSRejYip4r
 CP9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=6bzGPbBR5INYjAbEOgGMPYc9YHJ427hb01U+XkmIM2w=;
 b=D+Hz+ohaXYZHbdwS2iNGgLNVCawtx2WIz4M74QEugDimGVE6wIM2W+xKhuUA1q1z8C
 Zv9sPLMmuppRFz2TTGsAWucOChpa5Ty1+nhjqUYuXKZCFYWKJ3S4UyYKYVg1OTGt5Wdx
 id9pMxmpdA5t7FIqF3doNUpQP9KOktR3OyXtRZPY6h/LK5jBhJscV0rM2lK2eOEpR7Lo
 8wj3oZQViEjyDkNjnZrdAq17F/tsplLlxy7t2AlIt7Y4hIPaPYz/8Ur5LkcOWlHRVey8
 15LIJggrBQ/6thw5ChsPncN4PBfcC1lFtA5Z7diMusOk4uP2Z6G57SZvEV517c27NcWY
 SMZg==
X-Gm-Message-State: AGi0PuYrycEuFCj0O/2XL7nFKP3w0fqNOY4p4rh+qy9U2+fcMxRh9ruR
 hFmTxcbuchNJe9gMWRvrmOa4+Q==
X-Google-Smtp-Source: APiQypL/VlhXwxqOq9ECI0n/FIOd5FmswFdEgd7vBzijnzBicL2YNZE3/DNH4hsy3VJD22u1LWTf5Q==
X-Received: by 2002:a2e:9a82:: with SMTP id p2mr6021525lji.279.1587735713510; 
 Fri, 24 Apr 2020 06:41:53 -0700 (PDT)
Received: from localhost (h-209-203.A463.priv.bahnhof.se. [155.4.209.203])
 by smtp.gmail.com with ESMTPSA id z21sm4248693ljh.42.2020.04.24.06.41.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Apr 2020 06:41:52 -0700 (PDT)
Date: Fri, 24 Apr 2020 15:41:52 +0200
From: Niklas =?iso-8859-1?Q?S=F6derlund?= <niklas.soderlund@ragnatech.se>
To: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v3 2/4] media: v4l2-common: add helper functions to call
 s_stream() callbacks
Message-ID: <20200424134152.GB4040416@oden.dyn.berto.se>
References: <20200415013044.1778572-1-helen.koike@collabora.com>
 <20200415013044.1778572-3-helen.koike@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200415013044.1778572-3-helen.koike@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_064156_376042_AC47D059 
X-CRM114-Status: GOOD (  28.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On 2020-04-14 22:30:42 -0300, Helen Koike wrote:
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
> ---
> =

> Changes in v3:
> - re-write helpers to use media walkers as in v1, but with
> v4l2_pipeline_subdevs_get() to reverse the order we call s_stream(true)
> in subdevices.
> - rename size to max_size (and update docs) in v4l2_pipeline_subdevs_get(=
) to
> reflect the meaning of the argument.
> - add if defined(CONFIG_MEDIA_CONTROLLER) around helpers
> =

> Changes in v2:
> - re-write helpers to not use media walkers
> =

>  drivers/media/v4l2-core/v4l2-common.c | 125 ++++++++++++++++++++++++++
>  include/media/v4l2-common.h           |  43 +++++++++
>  include/media/v4l2-subdev.h           |   2 +
>  3 files changed, 170 insertions(+)
> =

> diff --git a/drivers/media/v4l2-core/v4l2-common.c b/drivers/media/v4l2-c=
ore/v4l2-common.c
> index 9e8eb45a5b03c..2f991a1a57d7c 100644
> --- a/drivers/media/v4l2-core/v4l2-common.c
> +++ b/drivers/media/v4l2-core/v4l2-common.c
> @@ -442,3 +442,128 @@ int v4l2_fill_pixfmt(struct v4l2_pix_format *pixfmt=
, u32 pixelformat,
>  	return 0;
>  }
>  EXPORT_SYMBOL_GPL(v4l2_fill_pixfmt);
> +
> +#if defined(CONFIG_MEDIA_CONTROLLER)
> +
> +/*
> + * v4l2_pipeline_subdevs_get - Assemble a list of subdevices in a pipeli=
ne
> + * @subdevs: the array to be filled.
> + * @max_size: max number of elements that can fit in subdevs array.
> + *
> + * Walk from a video node, following links from sink to source and fill =
the
> + * array with subdevices in the path.
> + * The walker performs a depth-first traversal, which means that, in a t=
opology
> + * sd1->sd2->sd3->vdev, sd1 will be the first element placed in the arra=
y.
> + *
> + * Return the number of subdevices filled in the array.
> + */
> +static int v4l2_pipeline_subdevs_get(struct video_device *vdev,
> +				     struct media_pipeline *pipe,
> +				     struct v4l2_subdev **subdevs,
> +				     unsigned int max_size)
> +{
> +	struct media_entity *entity =3D &vdev->entity;
> +	struct media_device *mdev =3D entity->graph_obj.mdev;
> +	int idx =3D 0;
> +	int ret;
> +
> +	mutex_lock(&mdev->graph_mutex);
> +
> +	if (!pipe->streaming_count) {
> +		ret =3D media_graph_walk_init(&pipe->graph, mdev);
> +		if (ret) {
> +			mutex_unlock(&mdev->graph_mutex);
> +			return ret;
> +		}
> +	}

This confuses me a bit. Why is this conditional on streaming_count ?  =

Looking how it's used in mc-entity.c the count is also =

increased/decreased with this pattern.

Would it make sens to create a local 'struct media_graph graph' here and =

always init and clean it up ?

> +
> +	media_graph_walk_start(&pipe->graph, entity);
> +
> +	while ((entity =3D media_graph_walk_next_stream(&pipe->graph))) {
> +		if (!is_media_entity_v4l2_subdev(entity))
> +			continue;
> +		if (WARN_ON(idx >=3D max_size)) {
> +			mutex_unlock(&mdev->graph_mutex);
> +			return -EINVAL;
> +		}
> +		subdevs[idx++] =3D media_entity_to_v4l2_subdev(entity);
> +	}
> +
> +	if (!pipe->streaming_count)
> +		media_graph_walk_cleanup(&pipe->graph);
> +
> +	mutex_unlock(&mdev->graph_mutex);
> +
> +	return idx;
> +}
> +
> +__must_check int v4l2_pipeline_stream_enable(struct video_device *vdev,
> +					     struct media_pipeline *pipe)
> +{
> +	struct media_device *mdev =3D vdev->entity.graph_obj.mdev;
> +	struct v4l2_subdev *subdevs[MEDIA_ENTITY_ENUM_MAX_DEPTH];
> +	struct v4l2_subdev *sd;
> +	int i, size, ret;
> +
> +	size =3D v4l2_pipeline_subdevs_get(vdev, pipe,
> +					 subdevs, ARRAY_SIZE(subdevs));
> +	if (size <=3D 0)
> +		return size;
> +
> +	/* Call s_stream() in reverse order to enable sensors last */
> +	for (i =3D size - 1; i >=3D 0; i--) {
> +		sd =3D subdevs[i];
 +		if (sd->stream_count++)
> +			continue;
> +		dev_dbg(mdev->dev,
> +			"enabling stream for '%s'\n", sd->entity.name);
> +		ret =3D v4l2_subdev_call(sd, video, s_stream, true);
> +		if (ret && ret !=3D -ENOIOCTLCMD) {
> +			sd->stream_count =3D 0;
> +			goto err_stream_disable;
> +		}
> +	}
> +
> +	return 0;
> +
> +err_stream_disable:
> +	for (i++; i < size; i++) {
> +		sd =3D subdevs[i];
> +		if (--sd->stream_count)
> +			continue;
> +		dev_dbg(mdev->dev,
> +			"disabling stream for '%s'\n", sd->entity.name);
> +		v4l2_subdev_call(sd, video, s_stream, false);
> +	};
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(v4l2_pipeline_stream_enable);
> +
> +void v4l2_pipeline_stream_disable(struct video_device *vdev,
> +				  struct media_pipeline *pipe)
> +{
> +	struct media_device *mdev =3D vdev->entity.graph_obj.mdev;
> +	struct v4l2_subdev *subdevs[MEDIA_ENTITY_ENUM_MAX_DEPTH];
> +	unsigned int i;
> +	int size;
> +
> +	size =3D v4l2_pipeline_subdevs_get(vdev, pipe,
> +					 subdevs, ARRAY_SIZE(subdevs));
> +	if (WARN_ON(size < 0))
> +		return;
> +
> +	/* Call s_stream() in order to disable sensors first */
> +	for (i =3D 0; i < size; i++) {
> +		struct v4l2_subdev *sd =3D subdevs[i];
> +
> +		if (--sd->stream_count)
> +			continue;
> +		dev_dbg(mdev->dev,
> +			"disabling stream for '%s'\n", sd->entity.name);
> +		v4l2_subdev_call(sd, video, s_stream, false);

small nit, maybe this can be extracted to a helper as the code is =

duplicated here and in the error path v4l2_pipeline_stream_enable ?

> +	}
> +}
> +EXPORT_SYMBOL_GPL(v4l2_pipeline_stream_disable);
> +
> +#endif /* CONFIG_MEDIA_CONTROLLER */
> diff --git a/include/media/v4l2-common.h b/include/media/v4l2-common.h
> index 150ee16ebd811..dc46812120cdc 100644
> --- a/include/media/v4l2-common.h
> +++ b/include/media/v4l2-common.h
> @@ -539,4 +539,47 @@ static inline void v4l2_buffer_set_timestamp(struct =
v4l2_buffer *buf,
>  	buf->timestamp.tv_usec =3D ts.tv_nsec / NSEC_PER_USEC;
>  }
>  =

> +#if defined(CONFIG_MEDIA_CONTROLLER)
> +
> +/**
> + * v4l2_pipeline_stream_enable - Call .s_stream(true) callbacks in the s=
tream
> + * @vdev: Starting video device.
> + * @pipe: Pipeline this entity belongs to.
> + *
> + * Call .s_stream(true) callback in all the subdevices participating in =
the
> + * stream, i.e. following links from sink to source.
> + *
> + * .s_stream(true) is also called from sink to source, i.e. in a topology
> + * sd1->sd2->sd3->vdev, .s_stream(true) of sd3 is called first.
> + *
> + * Calls to this function can be nested, in which case the same number of
> + * v4l2_pipeline_stream_disable() calls will be required to disable stre=
aming
> + * through subdevices in the pipeline.
> + * The  pipeline pointer must be identical for all nested calls to
> + * v4l2_pipeline_stream_enable().
> + */
> +__must_check int v4l2_pipeline_stream_enable(struct video_device *vdev,
> +					     struct media_pipeline *pipe);
> +
> +/**
> + * v4l2_pipeline_stream_disable - Call .s_stream(false) callbacks in the=
 stream
> + * @vdev: Starting video device.
> + * @pipe: Pipeline this entity belongs to.
> + *
> + * Call .s_stream(false) callback in all the subdevices participating in=
 the
> + * stream, i.e. following links from sink to source.
> + *
> + * s_stream(false) is called in a reverse order from
> + * v4l2_pipeline_stream_enable(), i.e. in a topology sd1->sd2->sd3->vdev,
> + * .s_stream(false) of sd1 is called first.
> + *
> + * If multiple calls to v4l2_pipeline_stream_enable() have been made, th=
e same
> + * number of calls to this function are required to disable streaming th=
rough
> + * subdevices in the pipeline.
> + */
> +void v4l2_pipeline_stream_disable(struct video_device *vdev,
> +				  struct media_pipeline *pipe);
> +
> +#endif /* CONFIG_MEDIA_CONTROLLER */
> +
>  #endif /* V4L2_COMMON_H_ */
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
