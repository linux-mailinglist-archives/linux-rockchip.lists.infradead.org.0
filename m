Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89E0D1E0B4D
	for <lists+linux-rockchip@lfdr.de>; Mon, 25 May 2020 12:03:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uP7eFBqRJdPpHjbjrQPtiv366pCg1ox9+Qjitcwb6Dg=; b=DcHogsSXGki3SL
	/Fx976Buj5AVVqoLlKNkHtcE1SWHtx0RXE8SmkDwdeznKibYUseDTjy06j056fEHrHGOEH0aOj57x
	MyRM6Ik7H8DOu85bgBv2U/ZET2kVDNE2s/oMXX92xzXPTq5NdhVHPMxxzjSNObflHejjPpphRKL96
	2sthXZBFPIlUnWCGnOv/pUsexpJePUM08Vnye61AsvWobGC3h0io5EoW77bV/ZjJysrUYwNYKW47y
	DBEhbmM4KoQc7MXiigfObb8DZXpzoAVdo7gc1S7FnXfuO1oS1UT5958/A+QPO/ziJYF/x6nbFm47V
	IetWOVKsdI/uyG40aE6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd9xL-0000Ab-Qg; Mon, 25 May 2020 10:03:39 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd9xI-00009g-DF
 for linux-rockchip@lists.infradead.org; Mon, 25 May 2020 10:03:38 +0000
IronPort-SDR: UiKQilXtI99N6fO0qBA3Kj0N6x1kP1203NTcssNhKpGaMptybh/g3rBnD5I+hvdlxHXUj/yAzb
 Qki410XH7MXA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2020 03:03:35 -0700
IronPort-SDR: SSJdnwPffjflaO1kQ84AUo9RAzCywsWobcRhnGIVisT7EYFRdHy8WbfM/StdpNXGu+Z9h1nup1
 /aMKJ5EZ4g3Q==
X-IronPort-AV: E=Sophos;i="5.73,433,1583222400"; d="scan'208";a="441683075"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2020 03:03:32 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 3537D20953; Mon, 25 May 2020 13:03:30 +0300 (EEST)
Date: Mon, 25 May 2020 13:03:30 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH v4 2/5] media: v4l2-common: add helper functions to call
 s_stream() callbacks
Message-ID: <20200525100330.GE7618@paasikivi.fi.intel.com>
References: <20200522075522.6190-1-dafna.hirschfeld@collabora.com>
 <20200522075522.6190-3-dafna.hirschfeld@collabora.com>
 <20200525092347.GD7618@paasikivi.fi.intel.com>
 <3c465861-2dd3-b1d4-5492-ae6161bd63ba@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3c465861-2dd3-b1d4-5492-ae6161bd63ba@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_030336_463569_3006B88A 
X-CRM114-Status: GOOD (  32.65  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: niklas.soderlund@ragnatech.se--annotate, mchehab@kernel.org,
 dafna3@gmail.com, tfiga@chromium.org, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 laurent.pinchart@ideasonboard.com, skhan@linuxfoundation.org,
 kernel@collabora.com, ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Dafna,

On Mon, May 25, 2020 at 11:42:37AM +0200, Dafna Hirschfeld wrote:
> 
> 
> On 25.05.20 11:23, Sakari Ailus wrote:
> > Hi Dafna,
> > 
> > My apologies for not reviewing this earlier.
> No problem :)
> 
> > 
> > On Fri, May 22, 2020 at 09:55:19AM +0200, Dafna Hirschfeld wrote:
> > > From: Helen Koike <helen.koike@collabora.com>
> > > 
> > > Add v4l2_pipeline_stream_{enable,disable} helper functions to iterate
> > > through the subdevices in a given stream (i.e following links from sink
> > > to source) and call .s_stream() callback.
> > > 
> > > If .s_stream(true) fails, call .s_stream(false) in the reverse order.
> > > 
> > > Signed-off-by: Helen Koike <helen.koike@collabora.com>
> > > Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> > > ---
> > >   drivers/media/v4l2-core/v4l2-common.c | 99 +++++++++++++++++++++++++++
> > >   include/media/v4l2-common.h           | 39 +++++++++++
> > >   2 files changed, 138 insertions(+)
> > > 
> > > diff --git a/drivers/media/v4l2-core/v4l2-common.c b/drivers/media/v4l2-core/v4l2-common.c
> > > index 9e8eb45a5b03..734db2bf5ca9 100644
> > > --- a/drivers/media/v4l2-core/v4l2-common.c
> > > +++ b/drivers/media/v4l2-core/v4l2-common.c
> > > @@ -442,3 +442,102 @@ int v4l2_fill_pixfmt(struct v4l2_pix_format *pixfmt, u32 pixelformat,
> > >   	return 0;
> > >   }
> > >   EXPORT_SYMBOL_GPL(v4l2_fill_pixfmt);
> > > +
> > > +#if defined(CONFIG_MEDIA_CONTROLLER)
> > > +
> > > +/*
> > > + * v4l2_pipeline_subdevs_get - Assemble a list of subdevices in a pipeline
> > > + * @subdevs: the array to be filled.
> > > + * @max_size: max number of elements that can fit in subdevs array.
> > > + *
> > > + * Walk from a video node, following links from sink to source and fill the
> > > + * array with subdevices in the path.
> > > + * The walker performs a depth-first traversal, which means that, in a topology
> > > + * sd1->sd2->sd3->vdev, sd1 will be the first element placed in the array.
> > > + *
> > > + * Return the number of subdevices filled in the array.
> > > + */
> > > +static int v4l2_pipeline_subdevs_get(struct video_device *vdev,
> > > +				     struct v4l2_subdev **subdevs,
> > > +				     unsigned int max_size)
> > > +{
> > > +	struct media_entity *entity = &vdev->entity;
> > > +	struct media_device *mdev = entity->graph_obj.mdev;
> > > +	struct media_graph graph;
> > > +	int idx = 0;
> > > +	int ret;
> > > +
> > > +	ret = media_graph_walk_init(&graph, mdev);
> > > +	if (ret)
> > > +		return ret;
> > > +
> > > +	media_graph_walk_start(&graph, entity);
> > > +
> > > +	while ((entity = media_graph_walk_next_stream(&graph))) {
> > > +		if (!is_media_entity_v4l2_subdev(entity))
> > > +			continue;
> > > +		if (WARN_ON(idx >= max_size))
> > > +			return -EINVAL;
> > > +		subdevs[idx++] = media_entity_to_v4l2_subdev(entity);
> > > +	}
> > > +
> > > +	media_graph_walk_cleanup(&graph);
> > > +
> > > +	return idx;
> > > +}
> > > +
> > > +static void v4l2_subdevs_stream_disable(struct v4l2_subdev **subdevs, int size)
> > > +{
> > > +	int i;
> > > +
> > > +	for (i = 0; i < size; i++) {
> > > +		struct v4l2_subdev *sd = subdevs[i];
> > > +
> > > +		dev_dbg(sd->dev,
> > > +			"disabling stream for '%s'\n", sd->entity.name);
> > > +		v4l2_subdev_call(sd, video, s_stream, false);
> > > +	}
> > > +}
> > > +
> > > +__must_check int v4l2_pipeline_stream_enable(struct video_device *vdev)
> > > +{
> > > +	struct media_device *mdev = vdev->entity.graph_obj.mdev;
> > > +	struct v4l2_subdev *subdevs[MEDIA_ENTITY_ENUM_MAX_DEPTH];
> > > +	struct v4l2_subdev *sd;
> > > +	int i, size, ret;
> > > +
> > > +	size = v4l2_pipeline_subdevs_get(vdev, subdevs, ARRAY_SIZE(subdevs));
> > > +	if (size <= 0)
> > > +		return size;
> > > +
> > > +	/* Call s_stream() in reverse order to enable sensors last */
> > > +	for (i = size - 1; i >= 0; i--) {
> > > +		sd = subdevs[i];
> > > +		dev_dbg(mdev->dev,
> > > +			"enabling stream for '%s'\n", sd->entity.name);
> > > +		ret = v4l2_subdev_call(sd, video, s_stream, true);
> > 
> > The s_stream callback is only called on the very next sub-device upstream
> > in the pipeline, not on any further sub-devices. This is because a driver
> > for the device knows best in which order things need to be set up.
> > 
> This is only a helper function, drivers can choose not to use it.
> In many cases the same driver implements many subdevices so the driver
> knows what should be done also for subdevices deeper in the stream.

Can it be used on devices that do not operate from memory to memory? I.e.
how do you ensure the s_stream is not called on further sub-devices than
those that are adjacent to what this driver controls?

One option could be to check sd->dev and skip devices that are further away
but for that you'd also need to know how these sub-devices have been
reached. The graph walk does not currently provide this information.

It's true that many drivers implement similar functionality for streaming.
It's non-trivial but often makes use of some device specific knowledge, for
instance in which order things take place (such as whether the upstream
sub-device is started before the downstream one). These implementations
also do not use graph walk for the above reasons.

> In the cover letter of the patch there is a list of links to code parts
> that can be replaced by this helper functions.
> The cover letter: https://patchwork.kernel.org/cover/11564901/
> 
> Thanks,
> Dafna
> 
> > This could include, for instance, telling a sensor to place its CSI-2
> > transmitter to LP-11 state.
> > 
> > > +		if (ret && ret != -ENOIOCTLCMD) {
> > > +			v4l2_subdevs_stream_disable(subdevs + i + 1,
> > > +						    size - i - 1);
> > > +			return ret;
> > > +		}
> > > +	}
> > > +	return 0;
> > > +}
> > > +EXPORT_SYMBOL_GPL(v4l2_pipeline_stream_enable);
> > > +
> > > +int v4l2_pipeline_stream_disable(struct video_device *vdev)
> > > +{
> > > +	struct v4l2_subdev *subdevs[MEDIA_ENTITY_ENUM_MAX_DEPTH];
> > > +	int size;
> > > +
> > > +	size = v4l2_pipeline_subdevs_get(vdev, subdevs, ARRAY_SIZE(subdevs));
> > > +	if (size < 0)
> > > +		return size;
> > > +
> > > +	v4l2_subdevs_stream_disable(subdevs, size);
> > > +	return 0;
> > > +}
> > > +EXPORT_SYMBOL_GPL(v4l2_pipeline_stream_disable);
> > > +
> > > +#endif /* CONFIG_MEDIA_CONTROLLER */
> > > diff --git a/include/media/v4l2-common.h b/include/media/v4l2-common.h
> > > index 150ee16ebd81..a278bcf3c5bc 100644
> > > --- a/include/media/v4l2-common.h
> > > +++ b/include/media/v4l2-common.h
> > > @@ -539,4 +539,43 @@ static inline void v4l2_buffer_set_timestamp(struct v4l2_buffer *buf,
> > >   	buf->timestamp.tv_usec = ts.tv_nsec / NSEC_PER_USEC;
> > >   }
> > > +#if defined(CONFIG_MEDIA_CONTROLLER)
> > > +
> > > +/**
> > > + * v4l2_pipeline_stream_enable - Call .s_stream(true) callbacks in the stream
> > > + * @vdev: Starting video device.
> > > + *
> > > + * Call .s_stream(true) callback in all the subdevices participating in the
> > > + * stream, i.e. following links from sink to source.
> > > + *
> > > + * .s_stream(true) is also called from sink to source, i.e. in a topology
> > > + * sd1->sd2->sd3->vdev, .s_stream(true) of sd3 is called first.
> > > + *
> > > + * Calls to this function can be nested, in which case the same number of
> > > + * v4l2_pipeline_stream_disable() calls will be required to disable streaming
> > > + * through subdevices in the pipeline.
> > > + * The  pipeline pointer must be identical for all nested calls to
> > > + * v4l2_pipeline_stream_enable().
> > > + */
> > > +__must_check int v4l2_pipeline_stream_enable(struct video_device *vdev);
> > > +
> > > +/**
> > > + * v4l2_pipeline_stream_disable - Call .s_stream(false) callbacks in the stream
> > > + * @vdev: Starting video device.
> > > + *
> > > + * Call .s_stream(false) callback in all the subdevices participating in the
> > > + * stream, i.e. following links from sink to source.
> > > + *
> > > + * s_stream(false) is called in a reverse order from
> > > + * v4l2_pipeline_stream_enable(), i.e. in a topology sd1->sd2->sd3->vdev,
> > > + * .s_stream(false) of sd1 is called first.
> > > + *
> > > + * If multiple calls to v4l2_pipeline_stream_enable() have been made, the same
> > > + * number of calls to this function are required to disable streaming through
> > > + * subdevices in the pipeline.
> > > + */
> > > +int v4l2_pipeline_stream_disable(struct video_device *vdev);
> > > +
> > > +#endif /* CONFIG_MEDIA_CONTROLLER */
> > > +
> > >   #endif /* V4L2_COMMON_H_ */
> > 

-- 
Sakari Ailus

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
