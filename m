Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FFFA8FC80
	for <lists+linux-rockchip@lfdr.de>; Fri, 16 Aug 2019 09:38:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bIBtEXFWRGw9uKgas6MyiqDreYAc00mcZIvNDZylzog=; b=Pj6LFdn7jOEmPv
	8buDXfjS/rksXyRcd8YipUOqfw24EbhxVKxzy2TXuBB+qaw6WGB8BHmT6pCEX8v/mizNKA6BzaE4x
	/liR/KCiiMKMdV/LWsCigccm4wpvyN2XJn69T3ZbLY4OQyWXf7ty2g0HOl8h9C9wnUWO3qyhtj9yT
	Uv2F0rVjtX+gv96zkC+/MZOkBJDlfpfk2bDEVuSUKBQ1V1yN+kVavCMGsAwHSq/CVAZVJCbSYJF5d
	HYo1MPg58dEh3DkbKRCmxmqKvXdKgiGAQtkeOKEeJoORdbm1pmfhq0F2bW0fEsGmnNCnKpEw8fJKk
	VKxIX1szn6nXtaYQbKKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyWog-0000fh-CF; Fri, 16 Aug 2019 07:38:30 +0000
Received: from lb3-smtp-cloud9.xs4all.net ([194.109.24.30])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyWod-0000fC-3U
 for linux-rockchip@lists.infradead.org; Fri, 16 Aug 2019 07:38:28 +0000
Received: from [192.168.2.10] ([46.9.232.237])
 by smtp-cloud9.xs4all.net with ESMTPA
 id yWoWh0oGSzaKOyWoZhlDmM; Fri, 16 Aug 2019 09:38:24 +0200
Subject: Re: [PATCH v6 07/11] media: cedrus: Specify H264 startcode and
 decoding mode
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
References: <20190814195931.6587-1-ezequiel@collabora.com>
 <20190814195931.6587-8-ezequiel@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <a7dab464-5be0-ff9d-7547-735a83e87e14@xs4all.nl>
Date: Fri, 16 Aug 2019 09:38:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190814195931.6587-8-ezequiel@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfJSvcLnjP+g63vpsjfpfVM+XMWprF9PTKdzv1Ti/D/eurB2I6cyWrBsc2LNpV9VytsmtO9ZG3cs012z/LDDUzI9FyDwb5z6Q0DeXWYrcPV1D7cDTWugg
 IkbeQgOVeJMIGGW6zg91Hr7WqJfP1jVcsxeGcg3vWPaOE2IY/RZhgQrmSfLLuZD7DbaCO+w9hRwPzdJTalZZla7qgGBUhZHoMpnjbrDgrj0LfliodDyNL4bh
 8UGvMx9BCQzOvZtBj4h76kMZkGOrq/p0sPNxbwlSrj8YUPaViTEAXQegPzHpk0L4eyY+3qPrhzZqCOGOtTIYMWA0BQPhnbijGKpHMyanZrJDIDZkozuytMDr
 qJxqP+dAHT/h3rW9Rh8tgICrfVejzmn8Pnncr446sHtjYxeutcQaMBF9fq0b/24jWc/MFpcwkbzQGSYGdHhxdaOmEpz1cb4C3zg1sY1cqh6uMD+A6IXDLar/
 huD9QGzNMEmYYYAQGqEQ+Eh/dHnXXZcEX/tW4JsXhbmgXSB22M79daQcmlE7VqX9V6Mz8f7FJaYTH39llcApaPWWWCPsDEN3PLQGtRIoU2i9VQ8dTAoIihyD
 4E8zTCq4oNMvQlFPFnHFHz/tG6AVmGe/TUaEMvSIzGveZeUWxeCjWR/QqlvG5YFYhZ4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_003827_307279_F0E87EEC 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.30 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: fbuergisser@chromium.org, Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 8/14/19 9:59 PM, Ezequiel Garcia wrote:
> The cedrus VPU is slice-based and expects V4L2_PIX_FMT_H264_SLICE
> buffers to contain H264 slices with no start code.
> 
> Expose this to userspace with the newly added menu control.
> 
> These two controls are specified as mandatory for applications,
> but we mark them as non-required on the driver side for
> backwards compatibility.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
> Changes in v6:
> * Adjust to control renames.
> Changes in v5:
> * Clarify commit log.
> Changes in v4:
> * New patch.
> ---
>  drivers/staging/media/sunxi/cedrus/cedrus.c | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.c b/drivers/staging/media/sunxi/cedrus/cedrus.c
> index 7bdc413bf727..69a836aa11ef 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus.c
> @@ -77,6 +77,26 @@ static const struct cedrus_control cedrus_controls[] = {
>  		.codec		= CEDRUS_CODEC_H264,
>  		.required	= true,
>  	},
> +	{
> +		.cfg = {
> +			.id	= V4L2_CID_MPEG_VIDEO_H264_DECODE_MODE,
> +			.max	= V4L2_MPEG_VIDEO_H264_DECODE_MODE_SLICE_BASED,
> +			.def	= V4L2_MPEG_VIDEO_H264_DECODE_MODE_SLICE_BASED,
> +			.menu_skip_mask = BIT(V4L2_MPEG_VIDEO_H264_DECODE_MODE_FRAME_BASED),

You don't need this: DECODE_MODE_FRAME_BASED > DECODE_MODE_SLICE_BASED (the max
value). So no need to set the skip_mask since it is out of range.

> +		},
> +		.codec		= CEDRUS_CODEC_H264,
> +		.required	= false,
> +	},
> +	{
> +		.cfg = {
> +			.id	= V4L2_CID_MPEG_VIDEO_H264_START_CODE,
> +			.max	= V4L2_MPEG_VIDEO_H264_START_CODE_NONE,
> +			.def	= V4L2_MPEG_VIDEO_H264_START_CODE_NONE,
> +			.menu_skip_mask = BIT(V4L2_MPEG_VIDEO_H264_START_CODE_ANNEX_B),

Ditto.

Regards,

	Hans

> +		},
> +		.codec		= CEDRUS_CODEC_H264,
> +		.required	= false,
> +	},
>  };
>  
>  #define CEDRUS_CONTROLS_COUNT	ARRAY_SIZE(cedrus_controls)
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
