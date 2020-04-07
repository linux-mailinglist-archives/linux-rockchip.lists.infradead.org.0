Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B06F1A160F
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 Apr 2020 21:36:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6+51fIuzz7nKgkJ6vKTVOJzC2g6eWB/HlBovJCyoQTM=; b=EC10CiB+gfJOJw
	ZPfS+GKAdSZpxAXxiB7CtcbH/84/MAOEXgDSS6g6HDmTmjgYRRa1AHAerGXAdsOybAhq+LHV3y8NP
	RaDnmK4ApRYM4Tmv3ONxtk9kxo4dADbUq23/fxEOQe3Jsqf+zuQ4AT44pCe3l5lE3FGc26SfIQOxg
	fbesCwEYwB34cM7xuoIo4BGQw+hcFsmTAXt8TI4SRu5Q5jpKcmufJchrh8ZKwwiXGq7DsRELp7jMH
	gPIF6S2DOn47AopYBuMEXcJ5862vXc6684rzR2L8ITmADUr24N/GguI9BjDlCKYIN2GQcNOrA37HV
	PkmyP8ktVpX1ekPUjmSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLu1F-0005b4-G4; Tue, 07 Apr 2020 19:36:21 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLu1C-0005aU-1J
 for linux-rockchip@lists.infradead.org; Tue, 07 Apr 2020 19:36:19 +0000
Received: by mail-lf1-x144.google.com with SMTP id m19so1291843lfq.13
 for <linux-rockchip@lists.infradead.org>; Tue, 07 Apr 2020 12:36:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ragnatech-se.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=zYmwLnSJ94Ak1KFQ2Lt4K/NwHQ1452knMRyiQWVA3M8=;
 b=uc8JaIBoePdZQYUsZFc2nPs8Ko9Dz2onCuSwcbV59VPMJCmgoNdFMbJCpw0aiIknZt
 Re41I6UNrzUrpklpcSzYlGTYDGJDLwByQhN4wdNx3JIKj+eaYPFoinaVAd5q3BwMj0l3
 Cxrt5e82wl9kH6B/slgjYgtqU/4+3U1LHwux7GxgdffJljupkwvCWf6alBds2zJNKV9X
 uC4d22I+0NA3a4deAToJSJejnFINFAtT/I727lzfdG3l4CY76U/MQmYCnqfqs+KM9aEy
 qIM2Neory0Dgfp9vrzhpKMuO8L9v9ZOfdVCyw9Arsj0jBdP/QrB1Z6EhaBi1+Versc0Q
 JmYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=zYmwLnSJ94Ak1KFQ2Lt4K/NwHQ1452knMRyiQWVA3M8=;
 b=AMzG9GoVwpEQeSbpwjeniz/0grjP3ClZFh1lyhJiQU9q0DpRvkHz0dk0GjzE3NXnfD
 T+a6/RXIHrEoKx3FYHE4p/5zaZWtlU7m3bYaciCgT6kr6um91mLYudLHwCHDmxE00UDy
 tzn47EVo+YBhJUKLjkjZqroG2iJjKD76/mhxJl2Usx3O1BzxrJj2cpmAAFBMxBS8FsFv
 dy6OlFkwi0dzVIFlqvzORCo5V2gCw1anD8SgkrZAFFsXAskPY3IRQW8rfjuXuzk5LB0j
 qgLFeiWxgn17t+Y8rqCNRPShycPZs25PjQEIq0myTG60o5TW8EEGBbO3HjdT96J43bkA
 WL2A==
X-Gm-Message-State: AGi0PuaRpQPKYDcVmNm+z600c80pYRTA9rcI6TAgi3v4EvqD8Yfr9xGo
 +81wR0aZLexjIzGxtkGsqGGDkw==
X-Google-Smtp-Source: APiQypLDRt4Lwe0RPpsuG1osUpGjx+Fpay7l4fosQ49a38aeoE/FR14zxknbcc1YZE8RZHUmwgI8NQ==
X-Received: by 2002:a19:3848:: with SMTP id d8mr2332310lfj.44.1586288176141;
 Tue, 07 Apr 2020 12:36:16 -0700 (PDT)
Received: from localhost (h-200-138.A463.priv.bahnhof.se. [176.10.200.138])
 by smtp.gmail.com with ESMTPSA id n26sm12248798ljg.93.2020.04.07.12.36.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 12:36:15 -0700 (PDT)
Date: Tue, 7 Apr 2020 21:36:15 +0200
From: Niklas =?iso-8859-1?Q?S=F6derlund?= <niklas.soderlund@ragnatech.se>
To: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v2 0/3] media: add v4l2_pipeline_stream_{enable,disable}
 helpers
Message-ID: <20200407193615.GG1716317@oden.dyn.berto.se>
References: <20200403213312.1863876-1-helen.koike@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403213312.1863876-1-helen.koike@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_123618_078301_CF417DD8 
X-CRM114-Status: GOOD (  19.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
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

On 2020-04-03 18:33:09 -0300, Helen Koike wrote:
> Hi,
> =

> Media drivers need to iterate through the pipeline and call .s_stream()
> callbacks in the subdevices.
> =

> Instead of repeating code, add helpers for this.
> =

> These helpers will go walk through the pipeline only visiting entities
> that participates in the stream, i.e. it follows links from sink to source
> (and not the opposite).
> =

> Which means that in a topology like this https://bit.ly/3b2MxjI
> calling v4l2_pipeline_stream_enable() from rkisp1_mainpath won't call
> .s_stream(true) for rkisp1_resizer_selfpath.
> =

> stream_count variable was added in v4l2_subdevice to handle nested calls
> to the helpers.
> This is useful when the driver allows streaming from more then one
> capture device sharing subdevices.
> =

> This patch came from the error I was facing when multistreaming from
> rkisp1 driver, where stoping one capture would call s_stream(false) in
> the pipeline, causing a stall in the second capture device.
> =

> Also, the vimc patch https://patchwork.kernel.org/patch/10948833/ won't
> be required with this patchset.
> =

> This patchset was tested on rkisp1 and vimc drivers.

I'm just curious, with this series applied can I stream simultaneously =

on multiple video devises using vimc?

> =

> Other cleanup might be possible (but I won't add in this patchset as I
> don't have the hw to test):
> 	https://git.linuxtv.org/media_tree.git/tree/drivers/media/platform/qcom/=
camss/camss-video.c#n430
> 	https://git.linuxtv.org/media_tree.git/tree/drivers/media/platform/omap3=
isp/isp.c#n697
> 	https://git.linuxtv.org/media_tree.git/tree/drivers/media/platform/stm32=
/stm32-dcmi.c#n680
> 	https://git.linuxtv.org/media_tree.git/tree/drivers/media/platform/xilin=
x/xilinx-dma.c#n97
> =

> Changes in V2:
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> The first version was calling the s_stream() callbacks from sensor to
> capture.
> =

> This was generating errors in the Scarlet Chromebook, when the sensor
> was being enabled before the ISP.
> =

> It make sense to enable subdevices from capture to sensor instead (which
> is what most drivers do already).
> =

> This v2 drops the changes from mc-entity.c, and re-implement helpers in
> v4l2-common.c
> =

> Overview of patches:
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> =

> Path 1/3 adds the helpers in v4l2-common.c, allowing nested calls by
> adding stream_count in the subdevice struct.
> =

> Patch 2/3 cleanup rkisp1 driver to use the helpers.
> =

> Patch 3/3 cleanup vimc driver to use the helpers.
> =

> Helen Koike (3):
>   media: v4l2-common: add helper functions to call s_stream() callbacks
>   media: staging: rkisp1: use v4l2_pipeline_stream_{enable,disable}
>     helpers
>   media: vimc: use v4l2_pipeline_stream_{enable,disable} helpers
> =

>  drivers/media/platform/vimc/vimc-capture.c    |  28 +++--
>  drivers/media/platform/vimc/vimc-streamer.c   |  49 +-------
>  drivers/media/v4l2-core/v4l2-common.c         | 117 ++++++++++++++++++
>  drivers/staging/media/rkisp1/rkisp1-capture.c |  76 +-----------
>  include/media/v4l2-common.h                   |  28 +++++
>  include/media/v4l2-subdev.h                   |   2 +
>  6 files changed, 173 insertions(+), 127 deletions(-)
> =

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
