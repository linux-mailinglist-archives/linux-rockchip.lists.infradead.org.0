Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF4B1B7736
	for <lists+linux-rockchip@lfdr.de>; Fri, 24 Apr 2020 15:42:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IjuIo66dYxStX1hEwhHWrnSFVNoohG0E9zgGbJr1jEs=; b=YHHoEndVY5E/gD
	cPCGdwkothOttCRN6InuGLAwvyDRhLRoM8ug1Re2I5slMJry9piUDCJh1xa9gM9KKqzPFgfhZ165Q
	UYykEtk2hadKUqPXejwULGciso/zo3exlMfFGDg3Q2Ai6J6KSWDAOv+lYlOJ0MzMxOcSS7cQxesk0
	lUxSKH0MxdR/tAr5Yhoqxfu3rUo8pj51IYke/t6Q0ZtbaBU5/Zb7A2PTO+Yk9vfBTp8GsOpAqTzVu
	CSBTE/S2zjhVwbPtvwX8f1+AjsEaNJtl/FhNMy3KLggd5c/Jvkaao5sUMo6nCBpxLs9Ti7rUkBYGA
	kzLii2tRNC8SBuXDaxpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRybI-0003Qf-SN; Fri, 24 Apr 2020 13:42:40 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRybF-0003Q0-C2
 for linux-rockchip@lists.infradead.org; Fri, 24 Apr 2020 13:42:38 +0000
Received: by mail-lf1-x143.google.com with SMTP id l11so7718690lfc.5
 for <linux-rockchip@lists.infradead.org>; Fri, 24 Apr 2020 06:42:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ragnatech-se.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=9XPuItu2p5q0J1stXYL3FlizDb4b2Hp0W76okzjB3Yg=;
 b=1gBHdNVVVD55yBdxouLHVQIr2R2DG14UwgiuO1DRw+MsxOTtsLf6Qt4nCy2XNn0Wn9
 T+Z+OHefE+86FdQvoYKGav4kR+gpWcBZY448c0Rrexhv66wYCGuMFsInXNldtDi46o04
 rD/aRfmdPWZxY1H5gMK+k/OTThXFo7bm347H8dcPyg8MLpoIIf6WSa0BAjjnyqViV9+B
 S5z+aa2b6k6Nz4zPQs9Khf8Dpd8chZtC40Do54ozJSUPCxO21aQm9HkqYoTfskEWiOgT
 Ek5c9tTtMTnNqbEW4tTqdz7MbaEu3lx+zKesB59zZ6JnAYHCJZVOgPv7b3F7GuIt4WzF
 mUTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=9XPuItu2p5q0J1stXYL3FlizDb4b2Hp0W76okzjB3Yg=;
 b=Rh17Sp/X2rYfMKxcddG9lDmOdRsYLJSFLYsscdD0TQ6gnMRwKR8nkXqCZK2k0D9qi0
 XXogb37+JCh2TXkc7DQeCf+iAHrAT3zZgotO9sCXmV0n0arDoZXsVMCb4cd7wiHSQP7a
 CAf/UXdueDYPqUp3L7kmGoPWIm4XLxE5XZwvAPsQ4qmgZcL8i22RQCjwY7kkHDm5Loe4
 WWtkURchbA6SWqAE7WVjGmFi3mJ1rNiI94mCT9t4mvo6mpDl6mEbwZCfF5LgfrYcaVyt
 RfXkhoWfGgQdbwBQNgVfVc0C4NLoFDLlAtzpzize4Pa6fgBWyIQ/Sso8Kqur4ftyl2Ae
 b28Q==
X-Gm-Message-State: AGi0PuYbBtpsywSTGq7Ek2yB/LYflNHui4kcqFmmy0kpXoFCLadC6hUA
 kENcod15XjEzoUEgMsL0ovLVgg==
X-Google-Smtp-Source: APiQypJUCaE4jBrGyzJqhy/Wi6vjxKbAYz+/SclhtNuTdMQXmtFuj4rozg3LhSbteTaPt3IW2bzkZg==
X-Received: by 2002:a19:5217:: with SMTP id m23mr6595764lfb.202.1587735755707; 
 Fri, 24 Apr 2020 06:42:35 -0700 (PDT)
Received: from localhost (h-209-203.A463.priv.bahnhof.se. [155.4.209.203])
 by smtp.gmail.com with ESMTPSA id a13sm4259474ljm.25.2020.04.24.06.42.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Apr 2020 06:42:35 -0700 (PDT)
Date: Fri, 24 Apr 2020 15:42:34 +0200
From: Niklas =?iso-8859-1?Q?S=F6derlund?= <niklas.soderlund@ragnatech.se>
To: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v3 3/4] media: staging: rkisp1: use
 v4l2_pipeline_stream_{enable,disable} helpers
Message-ID: <20200424134234.GC4040416@oden.dyn.berto.se>
References: <20200415013044.1778572-1-helen.koike@collabora.com>
 <20200415013044.1778572-4-helen.koike@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200415013044.1778572-4-helen.koike@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_064237_409616_2BECBFDF 
X-CRM114-Status: GOOD (  18.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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

On 2020-04-14 22:30:43 -0300, Helen Koike wrote:
> Use v4l2_pipeline_stream_{enable,disable} to call .s_stream() subdevice
> callbacks through the pipeline.
> =

> Tested by streaming on Scarlet Chromebook.
> =

> Signed-off-by: Helen Koike <helen.koike@collabora.com>

Reviewed-by: Niklas S=F6derlund <niklas.soderlund+renesas@ragnatech.se>

> =

> ---
> =

> Changes in v3:
> - rebase on top of new helpers prototypes
> =

> Changes in v2:
> - rebase on top of new helpers prototypes
> =

>  drivers/staging/media/rkisp1/rkisp1-capture.c | 76 +------------------
>  1 file changed, 3 insertions(+), 73 deletions(-)
> =

> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/stag=
ing/media/rkisp1/rkisp1-capture.c
> index 24fe6a7888aa4..a18f1668e3563 100644
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
> +	v4l2_pipeline_stream_disable(&node->vdev, &cap->rkisp1->pipe);
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
> +	ret =3D v4l2_pipeline_stream_enable(&cap->vnode.vdev, &cap->rkisp1->pip=
e);
>  	if (ret)
>  		goto err_stop_stream;
>  =

> @@ -1019,7 +949,7 @@ rkisp1_vb2_start_streaming(struct vb2_queue *queue, =
unsigned int count)
>  	return 0;
>  =

>  err_pipe_disable:
> -	rkisp1_pipeline_sink_walk(entity, NULL, rkisp1_pipeline_disable_cb);
> +	v4l2_pipeline_stream_disable(&cap->vnode.vdev, &cap->rkisp1->pipe);
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
