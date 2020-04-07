Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B3A1A160A
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 Apr 2020 21:35:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WlCOJEDBtaUOu9YRMPTC0j8dX9iRmeETnVPa1wQVujY=; b=AeBErB0MQpHdUp
	EmFMfSm7ImRWXUZpQPq2c8mHeo8fFjmlImBfppEcmEyBW4/ilah+TggXeGdEurq6KK7/ZeiJ/CTAl
	kKShbbyad0Zqgfe0dzLBFpuiwki/fw4yTBu+QzqqkjYZJsWA/NrSlcKsh7L5pCRpAdM95DGFR7FG2
	tAB8TLhV2HloTBOLC4PqYLbiAa1c3JFZqS/steHDQCghgr/gWZXRvylqD0uPUODA53ZHBRrBDyxGT
	SSKrmlmPg0ij0vzKHoL08wQipikOQ83csMKFA/EImHZpW6WcAabXlsKBjddZ9Z0XD8IJtXAxgOD6C
	xxSrBeQlTJjjyaHRXEfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLtzz-000325-9u; Tue, 07 Apr 2020 19:35:03 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLtzu-00031O-5F
 for linux-rockchip@lists.infradead.org; Tue, 07 Apr 2020 19:34:59 +0000
Received: by mail-lj1-x242.google.com with SMTP id r24so5092601ljd.4
 for <linux-rockchip@lists.infradead.org>; Tue, 07 Apr 2020 12:34:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ragnatech-se.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=oTjVCuFZKsHR8rmYdP/22TGJxJAP4oGFR0k0Wc3dyYI=;
 b=lrRSGAFzEbPXA07o375bOTdLd/YSixu9Cg0DCC119qB+A0gJMrSmfWoh6tIaNBaCBh
 FM63P7UQcATYjdDP9dFzQdXXw553/fZs6dj1mQH5HiZ0h02TpeO9AQg5/kKu8zdGRg+u
 bg0wa4M5+EqIDi/Z5Y5o+wmsNXz0bhaB1DTDOvfSNAzK3OgbOcC+HtdSMnXWAwn8jIhf
 RsJKWIJNBj4dpA+Ga7Jt80PlWiDH97iTAJtqyM0Siv0BHwjTpIsIoh43ffACr7aEXoD9
 FRQy8+0b2vNEGq6jH6eZNeYpspW5IGmZ++F0vvC0Ile+1WkITvhK7rvm0mBp0Ukl/YBZ
 ogPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=oTjVCuFZKsHR8rmYdP/22TGJxJAP4oGFR0k0Wc3dyYI=;
 b=Cr9Mv9Gwy1cO9wFJxKAhic3PwSMM8PikpquHCzr8xNuz/vNTw8AJDLaF35qH8J11IO
 U8RgD1B+QGIlyswn9sL9Oq89OZ6APoA8GB4XF8geOScAWI2nH8Cbr5T2m7AjZfVkNEvd
 HO3XuU0nSMb9bdnNWIeQrq6zOakcZrEEqp1aicH4jleb8sffA1xcSxmLqxbYBejjUH8n
 +R7DRRWNkRo2ADAsDGWeqs8PkWIKF60ExtGZCX9FaP5zdi1KnSyl/eeO/ELkNOAbq64w
 V8cb9SJ//EylOCX8xOmIiuLjZXcDo9I9p0gPL8tm3BCya9iNeDrlZkbrsHFxglQi4eAN
 Yc3g==
X-Gm-Message-State: AGi0PuZ4Acn/Js6icc3uQjKR18YVS1TsHRy5+C0Ob8WcRbhHE+p+sruX
 ESRvH31QfeMo+F7VgVEjngdWeg==
X-Google-Smtp-Source: APiQypK2WA/n6jRO1CDXfuB25Me8MW/u2D6IwvVc8Ic6ePlBFao53EmemdW8U8NK2YQnPSBPI6hZBg==
X-Received: by 2002:a2e:87cc:: with SMTP id v12mr2704317ljj.127.1586288095696; 
 Tue, 07 Apr 2020 12:34:55 -0700 (PDT)
Received: from localhost (h-200-138.A463.priv.bahnhof.se. [176.10.200.138])
 by smtp.gmail.com with ESMTPSA id y20sm12437520ljy.100.2020.04.07.12.34.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 12:34:55 -0700 (PDT)
Date: Tue, 7 Apr 2020 21:34:53 +0200
From: Niklas =?iso-8859-1?Q?S=F6derlund?= <niklas.soderlund@ragnatech.se>
To: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v2 2/3] media: staging: rkisp1: use
 v4l2_pipeline_stream_{enable,disable} helpers
Message-ID: <20200407193453.GF1716317@oden.dyn.berto.se>
References: <20200403213312.1863876-1-helen.koike@collabora.com>
 <20200403213312.1863876-3-helen.koike@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403213312.1863876-3-helen.koike@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_123458_202130_89055EC0 
X-CRM114-Status: GOOD (  20.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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

On 2020-04-03 18:33:11 -0300, Helen Koike wrote:
> Use v4l2_pipeline_stream_{enable,disable} to call .s_stream() subdevice
> callbacks through the pipeline.
> =

> Tested by streaming on RockPi4 with imx219 and on Scarlet Chromebook.
> =

> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> =

> ---
> =

> Changes in v2:
> - rebase on top of new helpers prototypes
> =

>  drivers/staging/media/rkisp1/rkisp1-capture.c | 76 +------------------
>  1 file changed, 3 insertions(+), 73 deletions(-)
> =

> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/stag=
ing/media/rkisp1/rkisp1-capture.c
> index 24fe6a7888aa4..0c2a357c4a12a 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
> @@ -838,71 +838,6 @@ static void rkisp1_return_all_buffers(struct rkisp1_=
capture *cap,
>  	spin_unlock_irqrestore(&cap->buf.lock, flags);
>  }
>  =

> -/*
> - * rkisp1_pipeline_sink_walk - Walk through the pipeline and call cb
> - * @from: entity at which to start pipeline walk
> - * @until: entity at which to stop pipeline walk
> - *
> - * Walk the entities chain starting at the pipeline video node and stop
> - * all subdevices in the chain.
> - *
> - * If the until argument isn't NULL, stop the pipeline walk when reachin=
g the
> - * until entity. This is used to disable a partially started pipeline du=
e to a
> - * subdev start error.
> - */
> -static int rkisp1_pipeline_sink_walk(struct media_entity *from,
> -				     struct media_entity *until,
> -				     int (*cb)(struct media_entity *from,
> -					       struct media_entity *curr))
> -{
> -	struct media_entity *entity =3D from;
> -	struct media_pad *pad;
> -	unsigned int i;
> -	int ret;
> -
> -	while (1) {
> -		pad =3D NULL;
> -		/* Find remote source pad */
> -		for (i =3D 0; i < entity->num_pads; i++) {
> -			struct media_pad *spad =3D &entity->pads[i];
> -
> -			if (!(spad->flags & MEDIA_PAD_FL_SINK))
> -				continue;
> -			pad =3D media_entity_remote_pad(spad);
> -			if (pad && is_media_entity_v4l2_subdev(pad->entity))
> -				break;
> -		}
> -		if (!pad || !is_media_entity_v4l2_subdev(pad->entity))
> -			break;
> -
> -		entity =3D pad->entity;
> -		if (entity =3D=3D until)
> -			break;
> -
> -		ret =3D cb(from, entity);
> -		if (ret)
> -			return ret;
> -	}
> -
> -	return 0;
> -}
> -
> -static int rkisp1_pipeline_disable_cb(struct media_entity *from,
> -				      struct media_entity *curr)
> -{
> -	struct v4l2_subdev *sd =3D media_entity_to_v4l2_subdev(curr);
> -
> -	return v4l2_subdev_call(sd, video, s_stream, false);
> -}
> -
> -static int rkisp1_pipeline_enable_cb(struct media_entity *from,
> -				     struct media_entity *curr)
> -{
> -	struct v4l2_subdev *sd =3D media_entity_to_v4l2_subdev(curr);
> -
> -	return v4l2_subdev_call(sd, video, s_stream, true);
> -}
> -
>  static void rkisp1_stream_stop(struct rkisp1_capture *cap)
>  {
>  	int ret;
> @@ -929,11 +864,7 @@ static void rkisp1_vb2_stop_streaming(struct vb2_que=
ue *queue)
>  =

>  	rkisp1_stream_stop(cap);
>  	media_pipeline_stop(&node->vdev.entity);
> -	ret =3D rkisp1_pipeline_sink_walk(&node->vdev.entity, NULL,
> -					rkisp1_pipeline_disable_cb);
> -	if (ret)
> -		dev_err(rkisp1->dev,
> -			"pipeline stream-off failed error:%d\n", ret);
> +	v4l2_pipeline_stream_disable(&node->vdev);
>  =

>  	rkisp1_return_all_buffers(cap, VB2_BUF_STATE_ERROR);
>  =

> @@ -1005,8 +936,7 @@ rkisp1_vb2_start_streaming(struct vb2_queue *queue, =
unsigned int count)
>  	rkisp1_stream_start(cap);
>  =

>  	/* start sub-devices */
> -	ret =3D rkisp1_pipeline_sink_walk(entity, NULL,
> -					rkisp1_pipeline_enable_cb);
> +	ret =3D v4l2_pipeline_stream_enable(&cap->vnode.vdev);
>  	if (ret)
>  		goto err_stop_stream;
>  =

> @@ -1019,7 +949,7 @@ rkisp1_vb2_start_streaming(struct vb2_queue *queue, =
unsigned int count)
>  	return 0;
>  =

>  err_pipe_disable:
> -	rkisp1_pipeline_sink_walk(entity, NULL, rkisp1_pipeline_disable_cb);
> +	v4l2_pipeline_stream_disable(entity, &cap->rkisp1->pipe);

This does not match the prototype for v4l2_pipeline_stream_disable() or =

am I missing something ?

>  err_stop_stream:
>  	rkisp1_stream_stop(cap);
>  	v4l2_pipeline_pm_put(entity);
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
