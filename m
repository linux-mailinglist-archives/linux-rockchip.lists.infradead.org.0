Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7633F187442
	for <lists+linux-rockchip@lfdr.de>; Mon, 16 Mar 2020 21:50:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZLTcIGh22YkGmn5llhW3skl0X47H3OGsFPGoqKm1yzs=; b=tvkoNzJ/dkP6Ts
	7taIjFAJwtjLkM2kOCghU6OsyFA+2pIuG+Lb4zxxieEQCofJlPp6hqLH5gEB7cLQ83qaR8ECADJmX
	z1nA+ACq7iY3+kvbkxV0kb2TyFo61Z/P8+u267PkouqBU8oxo7FJSuKyAt1jmtu6JtvKqD/lsYGC+
	JTtFxKsoRSvQ2XJhGf6m6WggjHKgtyjuNdVy5tFg3nXBy8bqG8VYCv0J/Aa3gNBusVlei8/zXshHG
	mGR9njSgeyoTDo9zIF0vtsAP62I12NVopuAZcnbLeuVPo4KqYZCfmKXJfyQ9REJvefH1Kg5fc3Zu/
	UIm12iETlR3dApfhKDcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDwgj-0007sk-8V; Mon, 16 Mar 2020 20:50:17 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDwgf-0007jo-6M
 for linux-rockchip@lists.infradead.org; Mon, 16 Mar 2020 20:50:15 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id D0D31294208
Subject: Re: [PATCH 2/4] media: v4l2-common: add helper functions to call
 s_stream() callbacks
To: linux-media@vger.kernel.org
References: <20200316193305.428378-1-helen.koike@collabora.com>
 <20200316193305.428378-3-helen.koike@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <b7041eb2-adfc-abf4-336e-93a2b1154482@collabora.com>
Date: Mon, 16 Mar 2020 17:50:02 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200316193305.428378-3-helen.koike@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_135013_499281_197AE26C 
X-CRM114-Status: GOOD (  21.42  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kernel@collabora.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, hans.verkuil@cisco.com,
 niklas.soderlund@ragnatech.se, mchehab@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org



On 3/16/20 4:33 PM, Helen Koike wrote:
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
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> ---
> 
>  drivers/media/v4l2-core/v4l2-common.c | 99 +++++++++++++++++++++++++++
>  include/media/v4l2-common.h           | 30 ++++++++
>  include/media/v4l2-subdev.h           |  2 +
>  3 files changed, 131 insertions(+)
> 
> diff --git a/drivers/media/v4l2-core/v4l2-common.c b/drivers/media/v4l2-core/v4l2-common.c
> index d0e5ebc736f9..6a5a3d2c282e 100644
> --- a/drivers/media/v4l2-core/v4l2-common.c
> +++ b/drivers/media/v4l2-core/v4l2-common.c
> @@ -441,3 +441,102 @@ int v4l2_fill_pixfmt(struct v4l2_pix_format *pixfmt, u32 pixelformat,
>  	return 0;
>  }
>  EXPORT_SYMBOL_GPL(v4l2_fill_pixfmt);
> +
> +int v4l2_pipeline_stream_disable(struct media_entity *entity,
> +				 struct media_pipeline *pipe)
> +{
> +	struct media_device *mdev = entity->graph_obj.mdev;
> +	int ret = 0;
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
> +		struct v4l2_subdev *sd;
> +
> +		if (!is_media_entity_v4l2_subdev(entity))
> +			continue;
> +
> +		sd = media_entity_to_v4l2_subdev(entity);
> +		if (!sd->stream_count || --sd->stream_count)
> +			continue;
> +
> +		ret = v4l2_subdev_call(sd, video, s_stream, false);
> +		if (ret && ret != -ENOIOCTLCMD)

argh..., there is a missing open curly braces here (skipped when I added the check
for -ENOIOCTLCMD), sorry about that (/me embarrassed).

Fixed version can be found here https://gitlab.collabora.com/koike/linux/tree/v4l2/s_stream

I'll submit v2 after having your comments.

> +			dev_dbg(mdev->dev,
> +				"couldn't disable stream for subdevice '%s'\n",
> +				entity->name);
> +			break;
> +		}
> +
> +		dev_dbg(mdev->dev,
> +			"stream disabled for subdevice '%s'\n", entity->name);
> +	}
> +
> +	if (!pipe->streaming_count)
> +		media_graph_walk_cleanup(&pipe->graph);
> +
> +	mutex_unlock(&mdev->graph_mutex);
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(v4l2_pipeline_stream_disable);
> +
> +__must_check int v4l2_pipeline_stream_enable(struct media_entity *entity,
> +					     struct media_pipeline *pipe)
> +{
> +	struct media_device *mdev = entity->graph_obj.mdev;
> +	int ret = 0;
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
> +		struct v4l2_subdev *sd;
> +
> +		if (!is_media_entity_v4l2_subdev(entity))
> +			continue;
> +
> +		sd = media_entity_to_v4l2_subdev(entity);
> +		if (sd->stream_count++)
> +			continue;
> +
> +		ret = v4l2_subdev_call(sd, video, s_stream, true);
> +		if (ret && ret != -ENOIOCTLCMD)

Same here

Thanks,
Helen

> +			dev_dbg(mdev->dev,
> +				"couldn't enable stream for subdevice '%s'\n",
> +				entity->name);
> +			v4l2_pipeline_stream_disable(entity, pipe);
> +			break;
> +		}
> +
> +		dev_dbg(mdev->dev,
> +			"stream enabled for subdevice '%s'\n", entity->name);
> +	}
> +
> +	if (!pipe->streaming_count)
> +		media_graph_walk_cleanup(&pipe->graph);
> +
> +	mutex_unlock(&mdev->graph_mutex);
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(v4l2_pipeline_stream_enable);
> diff --git a/include/media/v4l2-common.h b/include/media/v4l2-common.h
> index 150ee16ebd81..46c0857d07c4 100644
> --- a/include/media/v4l2-common.h
> +++ b/include/media/v4l2-common.h
> @@ -519,6 +519,36 @@ int v4l2_fill_pixfmt(struct v4l2_pix_format *pixfmt, u32 pixelformat,
>  int v4l2_fill_pixfmt_mp(struct v4l2_pix_format_mplane *pixfmt, u32 pixelformat,
>  			u32 width, u32 height);
>  
> +/**
> + * media_pipeline_stop - Mark a pipeline as not streaming
> + * @entity: Starting entity
> + * @pipe: Media pipeline to iterate through the topology
> + *
> + * Call .s_stream(false) callback in all the subdevices participating in the
> + * stream, i.e. following links from sink to source.
> + *
> + * If multiple calls to v4l2_pipeline_stream_enable() have been made, the
> + * same number of calls to this function are required.
> + */
> +int v4l2_pipeline_stream_disable(struct media_entity *entity,
> +				 struct media_pipeline *pipe);
> +
> +/**
> + * v4l2_pipeline_stream_enable - Call .s_stream(true) callbacks in the stream
> + * @entity: Starting entity
> + * @pipe: Media pipeline to iterate through the topology
> + *
> + * Call .s_stream(true) callback in all the subdevices participating in the
> + * stream, i.e. following links from sink to source.
> + *
> + * Calls to this function can be nested, in which case the same number of
> + * v4l2_pipeline_stream_disable() calls will be required to stop streaming.
> + * The  pipeline pointer must be identical for all nested calls to
> + * v4l2_pipeline_stream_enable().
> + */
> +__must_check int v4l2_pipeline_stream_enable(struct media_entity *entity,
> +					     struct media_pipeline *pipe);
> +
>  static inline u64 v4l2_buffer_get_timestamp(const struct v4l2_buffer *buf)
>  {
>  	/*
> diff --git a/include/media/v4l2-subdev.h b/include/media/v4l2-subdev.h
> index a4848de59852..20f913a9f70c 100644
> --- a/include/media/v4l2-subdev.h
> +++ b/include/media/v4l2-subdev.h
> @@ -838,6 +838,7 @@ struct v4l2_subdev_platform_data {
>   * @subdev_notifier: A sub-device notifier implicitly registered for the sub-
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
>  
>  
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
