Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E218FC95
	for <lists+linux-rockchip@lfdr.de>; Fri, 16 Aug 2019 09:41:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hbF0OpYaKmnCcI+PUvqKecZSh5uNbUEGNNrYxzEEc6Q=; b=NGM5BgVs9wDBJB
	gSr5cPZ5vtTiXLbVAy2MlV1cF+fjNKGO3IhBoDAH5naXwRPC90/1AfdivXlLpBa+Zc01mHl8GOclm
	UEvRickQHxjQRblL7CfDwmn/fQu0FXkXmEscMBsnx3NFfRIasLv1vxdYXRdf25YNnJP8YBWWDnQQE
	wpwPloGPlpflue6GB/U4vEJCw3+BgaYQEYYmJ9ukhY6lHR3nrimfKprNyFX/99p+mWW/97gjwsDEe
	YWqtFDhlEGW7OFpd0chaZD4jEhNuzbRrvgNrUjm0QA8MzF6i+vQ33jwk6R8NwAzJXNhPIYW8AOdpZ
	eIGiCoh4hGSMWJuJk/Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyWra-0002Ok-O3; Fri, 16 Aug 2019 07:41:30 +0000
Received: from lb2-smtp-cloud9.xs4all.net ([194.109.24.26])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyWrV-0002O0-Ns
 for linux-rockchip@lists.infradead.org; Fri, 16 Aug 2019 07:41:27 +0000
Received: from [192.168.2.10] ([46.9.232.237])
 by smtp-cloud9.xs4all.net with ESMTPA
 id yWrOh0p75zaKOyWrRhlECJ; Fri, 16 Aug 2019 09:41:23 +0200
Subject: Re: [PATCH v6 09/11] media: hantro: Add core bits to support H264
 decoding
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
References: <20190814195931.6587-1-ezequiel@collabora.com>
 <20190814195931.6587-10-ezequiel@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <b103be14-a89c-2ff2-670c-eb80a2afd618@xs4all.nl>
Date: Fri, 16 Aug 2019 09:41:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190814195931.6587-10-ezequiel@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfNTxybzSwXIFbdJ4ae3/J+IgLJsXDEqtGqFMat87Q/2ZQw/TxvIFnrObBs+ra0JVzSV5RmjZewtSjSitmB3GXCboQijXKmZxcgRYoS85Xsx1HCpT9q5V
 M0CNQ0MPQPYlh7PmfNfR4JRVRLBYR8XL+gPWN0202MqhLKojH/KSjTevLgYU9iHSGFGFE2i4R3kxNHjBLiMj4YhrmFw42NspG/ALbW9U+QrnYaN8lRJIiZp1
 HCoJphb5DfASeHGKdd0+i00eSR887NzK7FOm2lQ9Ie6qD7PvmtQBw+SU1vHxF5aFEEo7cDeBWqMbRlSw6/X3dROeiDHTn+v3ZgTGttybF4odUTq+Ee1dsJmP
 INHZhvz/0rI5twctKB71Vw95pmFVTBunqRGT17DHMOi6lchYaY/9b5swoCFjOWSO1RTwBF+nPriytpzkAYcQKRyabphimn7OSGsp0NevtgHbxXTmNeU56dTD
 OTZDwDmVClECHv+/Oo6qUkwFphgOPr7ctFtO+x7bDwRUXKglA3exsqvv6wUxBIqIxECHn1X7hvf2Xby2yztLOEoXsg1N7iUxaxYBQt2U8BUAm1hYQm2LQms+
 /Z296qIhOEdmiYotGGKuOznwQnMtJ3L/OkKndjIUKUNzq75odUE+gaboxhpxcGKI/o9gDOhG5STW10pymsOYSt9uvOoDWXRDw8LMU5lUzZUyNA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_004125_938175_C7DD131B 
X-CRM114-Status: GOOD (  20.61  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.26 listed in list.dnswl.org]
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
 Philipp Zabel <p.zabel@pengutronix.de>, Hertz Wong <hertz.wong@rock-chips.com>,
 kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 8/14/19 9:59 PM, Ezequiel Garcia wrote:
> From: Hertz Wong <hertz.wong@rock-chips.com>
> 
> Add helpers and patch hantro_{drv,v4l2}.c to prepare addition of H264
> decoding support.
> 
> Signed-off-by: Hertz Wong <hertz.wong@rock-chips.com>
> Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> Tested-by: Philipp Zabel <p.zabel@pengutronix.de>
> ---
> Changes in v6:
> * Fixed duplicated CABAC table memcpy.
> * Adjust to renamed controls.
> Changes in v5:
> * None.
> Changes in v4:
> * Rework extra_size0, exposing the size via TRY_FMT/S_FMT
>   to allow buffer importation, as suggested by Tomasz.
> * Drop max slice limit.
> * Use a ternary operator instead of substracting POCs,
>   to avoid an overflow as pointed out by Rasmus.
> * Specify annex B slice start code.
> * Add missing extra_size0 to sizeimage
> * Swap the first 2 entries of list B1 when B0 and B1 match (mandated by
>   the spec)
> * Move the update_dpb() call before the prepare_table() one to make the
>   POCs stored in the private table match the content of the new DPB
> ---
>  drivers/staging/media/hantro/Makefile      |   1 +
>  drivers/staging/media/hantro/hantro.h      |   9 +-
>  drivers/staging/media/hantro/hantro_drv.c  |  42 ++
>  drivers/staging/media/hantro/hantro_h264.c | 641 +++++++++++++++++++++
>  drivers/staging/media/hantro/hantro_hw.h   |  55 ++
>  drivers/staging/media/hantro/hantro_v4l2.c |  10 +
>  6 files changed, 757 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/staging/media/hantro/hantro_h264.c
> 
> diff --git a/drivers/staging/media/hantro/Makefile b/drivers/staging/media/hantro/Makefile
> index f5ec597d9e08..0f0d3afb1cca 100644
> --- a/drivers/staging/media/hantro/Makefile
> +++ b/drivers/staging/media/hantro/Makefile
> @@ -10,6 +10,7 @@ hantro-vpu-y += \
>  		rk3399_vpu_hw_mpeg2_dec.o \
>  		rk3399_vpu_hw_vp8_dec.o \
>  		hantro_jpeg.o \
> +		hantro_h264.o \
>  		hantro_mpeg2.o \
>  		hantro_vp8.o
>  
> diff --git a/drivers/staging/media/hantro/hantro.h b/drivers/staging/media/hantro/hantro.h
> index c4c86c32ea2d..f670bbde4159 100644
> --- a/drivers/staging/media/hantro/hantro.h
> +++ b/drivers/staging/media/hantro/hantro.h
> @@ -30,6 +30,10 @@
>  #define VP8_MB_WIDTH(w)			DIV_ROUND_UP(w, VP8_MB_DIM)
>  #define VP8_MB_HEIGHT(h)		DIV_ROUND_UP(h, VP8_MB_DIM)
>  
> +#define H264_MB_DIM			16
> +#define H264_MB_WIDTH(w)		DIV_ROUND_UP(w, H264_MB_DIM)
> +#define H264_MB_HEIGHT(h)		DIV_ROUND_UP(h, H264_MB_DIM)
> +
>  #define MPEG2_MB_DIM			16
>  #define MPEG2_MB_WIDTH(w)		DIV_ROUND_UP(w, MPEG2_MB_DIM)
>  #define MPEG2_MB_HEIGHT(h)		DIV_ROUND_UP(h, MPEG2_MB_DIM)
> @@ -43,9 +47,9 @@ struct hantro_codec_ops;
>  
>  #define HANTRO_JPEG_ENCODER	BIT(0)
>  #define HANTRO_ENCODERS		0x0000ffff
> -
>  #define HANTRO_MPEG2_DECODER	BIT(16)
>  #define HANTRO_VP8_DECODER	BIT(17)
> +#define HANTRO_H264_DECODER	BIT(18)
>  #define HANTRO_DECODERS		0xffff0000
>  
>  /**
> @@ -102,12 +106,14 @@ struct hantro_variant {
>   * enum hantro_codec_mode - codec operating mode.
>   * @HANTRO_MODE_NONE:  No operating mode. Used for RAW video formats.
>   * @HANTRO_MODE_JPEG_ENC: JPEG encoder.
> + * @HANTRO_MODE_H264_DEC: H264 decoder.
>   * @HANTRO_MODE_MPEG2_DEC: MPEG-2 decoder.
>   * @HANTRO_MODE_VP8_DEC: VP8 decoder.
>   */
>  enum hantro_codec_mode {
>  	HANTRO_MODE_NONE = -1,
>  	HANTRO_MODE_JPEG_ENC,
> +	HANTRO_MODE_H264_DEC,
>  	HANTRO_MODE_MPEG2_DEC,
>  	HANTRO_MODE_VP8_DEC,
>  };
> @@ -246,6 +252,7 @@ struct hantro_ctx {
>  
>  	/* Specific for particular codec modes. */
>  	union {
> +		struct hantro_h264_dec_hw_ctx h264_dec;
>  		struct hantro_jpeg_enc_hw_ctx jpeg_enc;
>  		struct hantro_mpeg2_dec_hw_ctx mpeg2_dec;
>  		struct hantro_vp8_dec_hw_ctx vp8_dec;
> diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
> index 6e2351e46750..f4cea216c926 100644
> --- a/drivers/staging/media/hantro/hantro_drv.c
> +++ b/drivers/staging/media/hantro/hantro_drv.c
> @@ -314,6 +314,48 @@ static const struct hantro_ctrl controls[] = {
>  		.cfg = {
>  			.id = V4L2_CID_MPEG_VIDEO_VP8_FRAME_HEADER,
>  		},
> +	}, {
> +		.codec = HANTRO_H264_DECODER,
> +		.cfg = {
> +			.id = V4L2_CID_MPEG_VIDEO_H264_DECODE_PARAMS,
> +		},
> +	}, {
> +		.codec = HANTRO_H264_DECODER,
> +		.cfg = {
> +			.id = V4L2_CID_MPEG_VIDEO_H264_SLICE_PARAMS,
> +		},
> +	}, {
> +		.codec = HANTRO_H264_DECODER,
> +		.cfg = {
> +			.id = V4L2_CID_MPEG_VIDEO_H264_SPS,
> +		},
> +	}, {
> +		.codec = HANTRO_H264_DECODER,
> +		.cfg = {
> +			.id = V4L2_CID_MPEG_VIDEO_H264_PPS,
> +		},
> +	}, {
> +		.codec = HANTRO_H264_DECODER,
> +		.cfg = {
> +			.id = V4L2_CID_MPEG_VIDEO_H264_SCALING_MATRIX,
> +		},
> +	}, {
> +		.codec = HANTRO_H264_DECODER,
> +		.cfg = {
> +			.id = V4L2_CID_MPEG_VIDEO_H264_DECODE_MODE,
> +			.max = V4L2_MPEG_VIDEO_H264_DECODE_MODE_FRAME_BASED,
> +			.def = V4L2_MPEG_VIDEO_H264_DECODE_MODE_FRAME_BASED,
> +			.menu_skip_mask = BIT(V4L2_MPEG_VIDEO_H264_DECODE_MODE_SLICE_BASED),
> +		},
> +	}, {
> +		.codec = HANTRO_H264_DECODER,
> +		.cfg = {
> +			.id = V4L2_CID_MPEG_VIDEO_H264_START_CODE,
> +			.max = V4L2_MPEG_VIDEO_H264_START_CODE_ANNEX_B,
> +			.def = V4L2_MPEG_VIDEO_H264_START_CODE_ANNEX_B,
> +			.menu_skip_mask = BIT(V4L2_MPEG_VIDEO_H264_START_CODE_NONE),
> +		},
> +	}, {
>  	},
>  };
>  
> diff --git a/drivers/staging/media/hantro/hantro_h264.c b/drivers/staging/media/hantro/hantro_h264.c
> new file mode 100644
> index 000000000000..05e210a2cdbe
> --- /dev/null
> +++ b/drivers/staging/media/hantro/hantro_h264.c
> @@ -0,0 +1,641 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Rockchip RK3288 VPU codec driver
> + *
> + * Copyright (c) 2014 Rockchip Electronics Co., Ltd.
> + *	Hertz Wong <hertz.wong@rock-chips.com>
> + *	Herman Chen <herman.chen@rock-chips.com>
> + *
> + * Copyright (C) 2014 Google, Inc.
> + *	Tomasz Figa <tfiga@chromium.org>
> + */
> +
> +#include <linux/types.h>
> +#include <linux/sort.h>
> +#include <media/v4l2-mem2mem.h>
> +
> +#include "hantro.h"
> +#include "hantro_hw.h"
> +
> +/* Size with u32 units. */
> +#define CABAC_INIT_BUFFER_SIZE		(460 * 2)
> +#define POC_BUFFER_SIZE			34
> +#define SCALING_LIST_SIZE		(6 * 16 + 6 * 64)
> +
> +#define POC_CMP(p0, p1) ((p0) < (p1) ? -1 : 1)
> +
> +/* Data structure describing auxiliary buffer format. */
> +struct hantro_h264_dec_priv_tbl {
> +	u32 cabac_table[CABAC_INIT_BUFFER_SIZE];
> +	u32 poc[POC_BUFFER_SIZE];
> +	u8 scaling_list[SCALING_LIST_SIZE];
> +};
> +
> +/* Constant CABAC table. */

Can you add a comment explaining where this table comes from?

> +static const u32 h264_cabac_table[] = {
> +	0x14f10236, 0x034a14f1, 0x0236034a, 0xe47fe968, 0xfa35ff36, 0x07330000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
> +	0x0029003f, 0x003f003f, 0xf7530456, 0x0061f948, 0x0d29033e, 0x000b0137,

Regards,

	Hans

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
