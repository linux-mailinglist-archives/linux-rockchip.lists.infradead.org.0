Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 027C71DCC8E
	for <lists+linux-rockchip@lfdr.de>; Thu, 21 May 2020 14:03:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xvivsIDrB7Hdkjxif83fIg8VsMH86hI3+638zK8Z4Vc=; b=F6WYVGInxRqq+SQ69rVDvzm4U
	FbxQZsX8lKypYrwLUoNvLwkJFc99TvEslzA+1u2VbBirmbijp2te3biEzxRuhfhQiGI1UPK34R3RM
	CEndDsq7vyBX3mJxwKpC95EWI37eWggn4LtTU/aoMVjVSLLAdv3fmj0hz9Ccir+H599gZmi27NdVP
	6b8ms0ZLnoFB+kyKNf/Cd8y12W78FaKOSwKEoAfTH1rlXMWiQpnI6c4U2XTq3Ysho5QBSnZ8KUmmg
	EA9RiIi1KmpWDTgCR4qKnDLz9mLU+hnmchb6PXRtlAWsqcNpi1V+ikptQOuTYXvAw3sH/QwAQReTF
	2cLQrPW0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbjvG-0003sZ-MT; Thu, 21 May 2020 12:03:38 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbjvC-0003qN-OX
 for linux-rockchip@lists.infradead.org; Thu, 21 May 2020 12:03:36 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 2E32D2A333F
Subject: Re: [PATCH v3 2/4] media: v4l2-common: add helper functions to call
 s_stream() callbacks
To: Helen Koike <helen.koike@collabora.com>, linux-media@vger.kernel.org
References: <20200415013044.1778572-1-helen.koike@collabora.com>
 <20200415013044.1778572-3-helen.koike@collabora.com>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <31557623-2b8c-6cfe-19f7-7854ed51bc86@collabora.com>
Date: Thu, 21 May 2020 14:03:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200415013044.1778572-3-helen.koike@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_050335_061332_AB2F7ECF 
X-CRM114-Status: GOOD (  31.22  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: mchehab@kernel.org, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>, linux-rockchip@lists.infradead.org,
 hans.verkuil@cisco.com, Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 skhan@linuxfoundation.org, niklas.soderlund@ragnatech.se, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi

On 15.04.20 03:30, Helen Koike wrote:
> Add v4l2_pipeline_stream_{enable,disable} helper functions to iterate
> through the subdevices in a given stream (i.e following links from sink
> to source) and call .s_stream() callback.
> 
> Add stream_count on the subdevice object for simultaneous streaming from
> different video devices which shares subdevices.
> 
> Prevent calling .s_stream(true) if it was already called previously by
> another stream.
> 
> Prevent calling .s_stream(false) from one stream when there are still
> others active.
> 
> If .s_stream(true) fails, call .s_stream(false) in the reverse order.
> 
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> ---
> 
> Changes in v3:
> - re-write helpers to use media walkers as in v1, but with
> v4l2_pipeline_subdevs_get() to reverse the order we call s_stream(true)
> in subdevices.
> - rename size to max_size (and update docs) in v4l2_pipeline_subdevs_get() to
> reflect the meaning of the argument.
> - add if defined(CONFIG_MEDIA_CONTROLLER) around helpers
> 
> Changes in v2:
> - re-write helpers to not use media walkers
> 
>   drivers/media/v4l2-core/v4l2-common.c | 125 ++++++++++++++++++++++++++
>   include/media/v4l2-common.h           |  43 +++++++++
>   include/media/v4l2-subdev.h           |   2 +
>   3 files changed, 170 insertions(+)
> 
> diff --git a/drivers/media/v4l2-core/v4l2-common.c b/drivers/media/v4l2-core/v4l2-common.c
> index 9e8eb45a5b03c..2f991a1a57d7c 100644
> --- a/drivers/media/v4l2-core/v4l2-common.c
> +++ b/drivers/media/v4l2-core/v4l2-common.c
> @@ -442,3 +442,128 @@ int v4l2_fill_pixfmt(struct v4l2_pix_format *pixfmt, u32 pixelformat,
>   	return 0;
>   }
>   EXPORT_SYMBOL_GPL(v4l2_fill_pixfmt);
> +
> +#if defined(CONFIG_MEDIA_CONTROLLER)
> +
> +/*
> + * v4l2_pipeline_subdevs_get - Assemble a list of subdevices in a pipeline
> + * @subdevs: the array to be filled.
> + * @max_size: max number of elements that can fit in subdevs array.
> + *
> + * Walk from a video node, following links from sink to source and fill the
> + * array with subdevices in the path.
> + * The walker performs a depth-first traversal, which means that, in a topology
> + * sd1->sd2->sd3->vdev, sd1 will be the first element placed in the array.
> + *
> + * Return the number of subdevices filled in the array.
> + */
> +static int v4l2_pipeline_subdevs_get(struct video_device *vdev,
> +				     struct media_pipeline *pipe,
> +				     struct v4l2_subdev **subdevs,
> +				     unsigned int max_size)
> +{
> +	struct media_entity *entity = &vdev->entity;
> +	struct media_device *mdev = entity->graph_obj.mdev;
> +	int idx = 0;
> +	int ret;
> +
> +	mutex_lock(&mdev->graph_mutex);
> +
> +	if (!pipe->streaming_count) {
> +		ret = media_graph_walk_init(&pipe->graph, mdev);
> +		if (ret) {
> +			mutex_unlock(&mdev->graph_mutex);
> +			return ret;
> +		}
> +	}
> +
> +	media_graph_walk_start(&pipe->graph, entity);
> +
> +	while ((entity = media_graph_walk_next_stream(&pipe->graph))) {
> +		if (!is_media_entity_v4l2_subdev(entity))
> +			continue;
> +		if (WARN_ON(idx >= max_size)) {
> +			mutex_unlock(&mdev->graph_mutex);
> +			return -EINVAL;
> +		}
> +		subdevs[idx++] = media_entity_to_v4l2_subdev(entity);
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
> +	struct media_device *mdev = vdev->entity.graph_obj.mdev;
> +	struct v4l2_subdev *subdevs[MEDIA_ENTITY_ENUM_MAX_DEPTH];
> +	struct v4l2_subdev *sd;
> +	int i, size, ret;
> +
> +	size = v4l2_pipeline_subdevs_get(vdev, pipe,
> +					 subdevs, ARRAY_SIZE(subdevs));
> +	if (size <= 0)
> +		return size;
> +
> +	/* Call s_stream() in reverse order to enable sensors last */
> +	for (i = size - 1; i >= 0; i--) {
> +		sd = subdevs[i];
> +		if (sd->stream_count++)
> +			continue;
> +		dev_dbg(mdev->dev,
> +			"enabling stream for '%s'\n", sd->entity.name);
> +		ret = v4l2_subdev_call(sd, video, s_stream, true);
> +		if (ret && ret != -ENOIOCTLCMD) {
> +			sd->stream_count = 0;
> +			goto err_stream_disable;
> +		}
> +	}
> +
> +	return 0;
> +
> +err_stream_disable:
> +	for (i++; i < size; i++) {
> +		sd = subdevs[i];
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
> +	struct media_device *mdev = vdev->entity.graph_obj.mdev;
> +	struct v4l2_subdev *subdevs[MEDIA_ENTITY_ENUM_MAX_DEPTH];
> +	unsigned int i;
> +	int size;
> +
> +	size = v4l2_pipeline_subdevs_get(vdev, pipe,
> +					 subdevs, ARRAY_SIZE(subdevs));
> +	if (WARN_ON(size < 0))
> +		return;
> +
> +	/* Call s_stream() in order to disable sensors first */
> +	for (i = 0; i < size; i++) {
> +		struct v4l2_subdev *sd = subdevs[i];
> +
> +		if (--sd->stream_count)
> +			continue;
> +		dev_dbg(mdev->dev,
> +			"disabling stream for '%s'\n", sd->entity.name);
> +		v4l2_subdev_call(sd, video, s_stream, false);
> +	}
> +}
> +EXPORT_SYMBOL_GPL(v4l2_pipeline_stream_disable);
> +
> +#endif /* CONFIG_MEDIA_CONTROLLER */
> diff --git a/include/media/v4l2-common.h b/include/media/v4l2-common.h
> index 150ee16ebd811..dc46812120cdc 100644
> --- a/include/media/v4l2-common.h
> +++ b/include/media/v4l2-common.h
> @@ -539,4 +539,47 @@ static inline void v4l2_buffer_set_timestamp(struct v4l2_buffer *buf,
>   	buf->timestamp.tv_usec = ts.tv_nsec / NSEC_PER_USEC;
>   }
>   
> +#if defined(CONFIG_MEDIA_CONTROLLER)
> +
> +/**
> + * v4l2_pipeline_stream_enable - Call .s_stream(true) callbacks in the stream
> + * @vdev: Starting video device.
> + * @pipe: Pipeline this entity belongs to.
> + *
> + * Call .s_stream(true) callback in all the subdevices participating in the
> + * stream, i.e. following links from sink to source.
> + *
> + * .s_stream(true) is also called from sink to source, i.e. in a topology
> + * sd1->sd2->sd3->vdev, .s_stream(true) of sd3 is called first.
> + *
> + * Calls to this function can be nested, in which case the same number of
> + * v4l2_pipeline_stream_disable() calls will be required to disable streaming
> + * through subdevices in the pipeline.
> + * The  pipeline pointer must be identical for all nested calls to
> + * v4l2_pipeline_stream_enable().
> + */
> +__must_check int v4l2_pipeline_stream_enable(struct video_device *vdev,
> +					     struct media_pipeline *pipe);
> +
> +/**
> + * v4l2_pipeline_stream_disable - Call .s_stream(false) callbacks in the stream
> + * @vdev: Starting video device.
> + * @pipe: Pipeline this entity belongs to.
> + *
> + * Call .s_stream(false) callback in all the subdevices participating in the
> + * stream, i.e. following links from sink to source.
> + *
> + * s_stream(false) is called in a reverse order from
> + * v4l2_pipeline_stream_enable(), i.e. in a topology sd1->sd2->sd3->vdev,
> + * .s_stream(false) of sd1 is called first.
> + *
> + * If multiple calls to v4l2_pipeline_stream_enable() have been made, the same
> + * number of calls to this function are required to disable streaming through
> + * subdevices in the pipeline.
> + */
> +void v4l2_pipeline_stream_disable(struct video_device *vdev,
> +				  struct media_pipeline *pipe);
> +
> +#endif /* CONFIG_MEDIA_CONTROLLER */
> +
>   #endif /* V4L2_COMMON_H_ */
> diff --git a/include/media/v4l2-subdev.h b/include/media/v4l2-subdev.h
> index a4848de598521..20f913a9f70c5 100644
> --- a/include/media/v4l2-subdev.h
> +++ b/include/media/v4l2-subdev.h
> @@ -838,6 +838,7 @@ struct v4l2_subdev_platform_data {
>    * @subdev_notifier: A sub-device notifier implicitly registered for the sub-
>    *		     device using v4l2_device_register_sensor_subdev().
>    * @pdata: common part of subdevice platform data
> + * @stream_count: Stream count for the subdevice.
>    *
>    * Each instance of a subdev driver should create this struct, either
>    * stand-alone or embedded in a larger struct.
> @@ -869,6 +870,7 @@ struct v4l2_subdev {
>   	struct v4l2_async_notifier *notifier;
>   	struct v4l2_async_notifier *subdev_notifier;
>   	struct v4l2_subdev_platform_data *pdata;
> +	unsigned int stream_count;
I wonder if it is worth it to add a new field to v4l2_subdev that is used only
for the specific case, it seems that except of rkisp1 and vimc, the other drivers you pointed to that
could use the helpers don't need this counter and they call s_stream without checking if it was already called.
This counter is updated only by the new introduced functions and not when s_stream is called from other places.
Maybe we can add a helper that just return the next subdevice connected to the current entity as a source, and drivers can
iterate it and can decide themselves if s_stream should be called or not

Thanks,
Dafna

>   };
>   
>   
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
