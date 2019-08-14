Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E738CDBA
	for <lists+linux-rockchip@lfdr.de>; Wed, 14 Aug 2019 10:11:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6uI/G24OhbHbC7e3iDfUt+Z5MUZ5svb+RaAEnPkydqE=; b=HcOMGHhpHVFLfE
	l+N0QwTYIlYoMKp2d/TEzCuGb8xexHJSfKwm3v7WG/9ucIVea2t5Sf+FdJhp/FlmpiuAgq19201qu
	CQuDWQ2M+YAoJjjcH7sP4m7WaXwnfUbCetN4HydVs/m4n/vuf6YvUNSZmFGb11cdwfc4eNq+0b5TN
	nfqDbx0bzT6cB9wozLypV0R84k7OOO5bNralcSbvH7Yzb8XRRz8M2RxUAe5rm9jKHJeJsDaJlb3bx
	gD6ptvAe5WblZxikO54n0Uliv9Irx2b2qsnxhbxS19S6AmB2b0syDHcLPuZPiLQ1Cbp+gdmhKLjuL
	wgP5SIh5m1dTJVGycQHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxoNu-0005gY-Q8; Wed, 14 Aug 2019 08:11:54 +0000
Received: from lb3-smtp-cloud8.xs4all.net ([194.109.24.29])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxoNp-0005fD-2C
 for linux-rockchip@lists.infradead.org; Wed, 14 Aug 2019 08:11:51 +0000
Received: from [IPv6:2001:420:44c1:2579:6c2e:a3d:2bd:ee96]
 ([IPv6:2001:420:44c1:2579:6c2e:a3d:2bd:ee96])
 by smtp-cloud8.xs4all.net with ESMTPA
 id xoN6hRmGlqTdhxoNAhCccS; Wed, 14 Aug 2019 10:11:37 +0200
Subject: Re: [PATCH v5 04/11] media: uapi: h264: Add the concept of start code
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
References: <20190812193522.10911-1-ezequiel@collabora.com>
 <20190812193522.10911-5-ezequiel@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <f88d144f-e0fe-6974-efe5-77b5ed5c6e09@xs4all.nl>
Date: Wed, 14 Aug 2019 10:11:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <20190812193522.10911-5-ezequiel@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfG8Jzg4iwcPYhjaE3e0D1MzS/fTJ/eDl4AEQI2qX+XOCPw8tnWB5Y+HXAymMpC8EyabKscl/GIMDy/RJARU23MJZNq76ZSSM/xEECsPalo31ZWSBNCQe
 OiVJ1xF4NFcmHOVZa9JLq/xylYBGiJZLhwKx6OEJ29QQLrY5H3YWgXdHMLYd+L+bjMVzzdMXXmUevf0w2cwmjB+eAmLcrkxPsXJ4Zh2V0WYULRIMVzE1a0Ze
 ta8b89PWo00P5NlPW/aeg2BDTGaJzXFuUnjWrhu37Pf+NtrYt917QYI1HD2LIpUwOhVzCX2FTyYBakPMz/jcIJbJ+4c4RVQQdmuO3923M7tS1kWNzTu2leBn
 HoC6MDyCFUrT9aLlVhta7saGxI5nJnqYGKNJkDmavufWEhoRp4eUV9lwf682O5YerUzuScE++kne0/gOuD7fLY4CH6ZrAsZwPS317wIUhJ/HIUAx8MZjCfIo
 SeucqXmdwOPDQ6eNUBpXsyvfKrwQRk4zXrCRlmTXRA58Xb94D+bbRvixzBtwlSrbeSbp8jlluguU6CIfKnq+TXRarsR+mKMvzP+tueYbunp00BqTpR1Gua7w
 479IGDcBjLac8AOsAMZVJ0zODF6y4kODYqZxBS/pFCcPiUJIBoYpiM5PSzIGlz6LXkoedT5fx4Pc9u15HRjD7j0EP0wu0bBXm5rqUfiNpwreDvPdIFEHjhhJ
 CixfdwKkLAt+KwA5kr3da35dbZPC/sATPI2z5zMIrsnmDN34sRdJoA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_011149_272922_5061097F 
X-CRM114-Status: GOOD (  16.18  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.29 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On 8/12/19 9:35 PM, Ezequiel Garcia wrote:
> Stateless decoders have different expectations about the
> start code that is prepended on H264 slices. Add a
> menu control to express the supported start code types
> (including no start code).
> 
> Drivers are allowed to support only one start code type,
> but they can support both too.
> 
> Note that this is independent of the H264 decoding mode,
> which specifies the granularity of the decoding operations.
> Either in frame-based or slice-based mode, this new control
> will allow to define the start code expected on H264 slices.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> Tested-by: Philipp Zabel <p.zabel@pengutronix.de>
> ---
> Changes in v5:
> * Improve specification as suggested by Hans.
> Changes in v4:
> * New patch.
> ---
>  .../media/uapi/v4l/ext-ctrls-codec.rst        | 33 +++++++++++++++++++
>  .../media/uapi/v4l/pixfmt-compressed.rst      |  3 +-
>  drivers/media/v4l2-core/v4l2-ctrls.c          |  9 +++++
>  include/media/h264-ctrls.h                    |  6 ++++
>  4 files changed, 50 insertions(+), 1 deletion(-)
> 

<snip>

> diff --git a/include/media/h264-ctrls.h b/include/media/h264-ctrls.h
> index e6c510877f67..31555c99f64a 100644
> --- a/include/media/h264-ctrls.h
> +++ b/include/media/h264-ctrls.h
> @@ -27,6 +27,7 @@
>  #define V4L2_CID_MPEG_VIDEO_H264_SLICE_PARAMS	(V4L2_CID_MPEG_BASE+1003)
>  #define V4L2_CID_MPEG_VIDEO_H264_DECODE_PARAMS	(V4L2_CID_MPEG_BASE+1004)
>  #define V4L2_CID_MPEG_VIDEO_H264_DECODING_MODE	(V4L2_CID_MPEG_BASE+1005)
> +#define V4L2_CID_MPEG_VIDEO_H264_STARTCODE	(V4L2_CID_MPEG_BASE+1006)

I almost forgot: can you change this to _START_CODE? Since it is two words?

Thanks!

	Hans

>  
>  /* enum v4l2_ctrl_type type values */
>  #define V4L2_CTRL_TYPE_H264_SPS			0x0110
> @@ -41,6 +42,11 @@ enum v4l2_mpeg_video_h264_decoding_mode {
>  	V4L2_MPEG_VIDEO_H264_FRAME_BASED_DECODING,
>  };
>  
> +enum v4l2_mpeg_video_h264_start_code {
> +	V4L2_MPEG_VIDEO_H264_NO_STARTCODE,
> +	V4L2_MPEG_VIDEO_H264_ANNEX_B_STARTCODE,
> +};
> +
>  #define V4L2_H264_SPS_CONSTRAINT_SET0_FLAG			0x01
>  #define V4L2_H264_SPS_CONSTRAINT_SET1_FLAG			0x02
>  #define V4L2_H264_SPS_CONSTRAINT_SET2_FLAG			0x04
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
