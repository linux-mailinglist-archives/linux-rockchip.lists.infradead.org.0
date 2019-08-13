Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D2738B019
	for <lists+linux-rockchip@lfdr.de>; Tue, 13 Aug 2019 08:47:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lx4FKgDTjL2EDluaJux7YKFy7zP278YjO7liaCDTcsQ=; b=N/YcrJgOQfnUr+
	7LNzT8Sk9zaOJ9+cYR9LBfmpfcthTLLOxDW6b0bTpt9IjAjNGPC2o6QVTMFRll5lNR4DVxqDqveC8
	0IFpUzNa93MCS0KrIREytmsdtzBkVmK+qPaAOwel1gk/Sowu7jNq7F52DcGeYqoVbiZ3m2UBJdEWa
	RRLPJfN8ji6lZ+148hWJ1QSEO9z9PUhUjQbg5kThzV0Z61tejSPQZA2M0B+7/zbyFTevpqB9x2ezS
	8Fdi99xPIpaBAVI2xS72Tj8LbRjq97DLg68pJg8hx0bDYLxzjqrypp5IQgb6s+cq+fi/7eFKrNi0v
	4I+8rKBYAuSsiDlZnDPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxQaC-00022p-Pd; Tue, 13 Aug 2019 06:47:00 +0000
Received: from lb1-smtp-cloud8.xs4all.net ([194.109.24.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxQa7-00022D-8G
 for linux-rockchip@lists.infradead.org; Tue, 13 Aug 2019 06:46:57 +0000
Received: from [192.168.2.10] ([46.9.232.237])
 by smtp-cloud8.xs4all.net with ESMTPA
 id xQZQhIKF9qTdhxQZVh721v; Tue, 13 Aug 2019 08:46:48 +0200
Subject: Re: [PATCH v5 03/11] media: uapi: h264: Add the concept of decoding
 mode
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
References: <20190812193522.10911-1-ezequiel@collabora.com>
 <20190812193522.10911-4-ezequiel@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <104276b0-0e9c-c25d-b25c-344ad475045a@xs4all.nl>
Date: Tue, 13 Aug 2019 08:46:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190812193522.10911-4-ezequiel@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfCq/gnt8eMqH/nZZsZtpu8Svnbv/kn7oLAWevwiqYp7be3K21KrO5WzpdiGb/8aBIOthcT3WWmRf/pwNq8NYQ1zKgW11o3k5D47X3DDZdFywT1kYYue2
 ymFO2LYbKWjujH4UQHTH3LXDJvvDQ05ef72iAxHgqv50osI/N+si5bT0TpxpMt8OCckKPQJZeegJqlvvgvlojjyG2dThnqmCnKncphRK8IwgAdpLkBEMfJFw
 u2KbaN9nV0vKeTDJbtmNHKYSPq6TqWrxVe5/tYoAB1WqVbajc3A1JA9m/WVkt4+xnOpUoXcnvZoYPvkjpqNzTpOGQC/74MydvqdEsOQBKACf1K+wHyTvG6lm
 o1g6DIk068lEMUwkXJ6qOoWxN3u7JW7+PaNEIdwFOl7WcCACrTVjXG7sp5mIKWmU76mUViDOBWHXQi47vL7sHQ7E6MSXg9qxjdEKImFLL2Jy5rkDL18p+Vo0
 Y888/3MoeiXVg3waGivuQdMNqhVoS3ODyN36d5PuL/l4v/3fVdfYJXaGJuVz2hyGx4iO4I0nvbAteZTq7W0S2KMx0Fra7b8OvB05olZvXjKPRq9LUoeJqi5J
 WZnkZ2Pb/n3cMzYh3qw7yVUxGjihk4nmRHogMfwUJLZJp+nln09AQV2jeye/b3un6Fc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_234655_460072_072DCCA4 
X-CRM114-Status: GOOD (  29.66  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.21 listed in list.dnswl.org]
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

On 8/12/19 9:35 PM, Ezequiel Garcia wrote:
> From: Boris Brezillon <boris.brezillon@collabora.com>
> 
> Some stateless decoders don't support per-slice decoding granularity
> (or at least not in a way that would make them efficient or easy to use).
> 
> Expose a menu to control the supported decoding modes. Drivers are
> allowed to support only one decoding but they can support both too.
> 
> Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> Reviewed-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> Tested-by: Philipp Zabel <p.zabel@pengutronix.de>
> ---
> Changes in v5:
> * Improve specification as suggested by Hans.
> Changes in v4:
> * Typos/rewording fixes
> Changes in v3:
> * s/per-{slice,frame} decoding/{slice,frame}-based decoding/
> * Add Paul's R-b
> Changes in v2:
> * Allow decoding multiple slices in per-slice decoding mode
> * Minor doc improvement/fixes
> ---
>  .../media/uapi/v4l/ext-ctrls-codec.rst        | 47 ++++++++++++++++++-
>  .../media/uapi/v4l/pixfmt-compressed.rst      |  3 +-
>  drivers/media/v4l2-core/v4l2-ctrls.c          |  9 ++++
>  include/media/h264-ctrls.h                    | 11 +++++
>  4 files changed, 68 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/media/uapi/v4l/ext-ctrls-codec.rst b/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
> index c5f39dd50043..568390273fde 100644
> --- a/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
> +++ b/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
> @@ -1747,6 +1747,11 @@ enum v4l2_mpeg_video_h264_hierarchical_coding_type -
>      * - __u32
>        - ``size``
>        -
> +    * - __u32
> +      - ``start_byte_offset``
> +      - Where the slice payload starts in the output buffer. Useful when the
> +        OUTPUT buffer contains more than one slice (some codecs need to know
> +        where each slice starts in this buffer).
>      * - __u32
>        - ``header_bit_size``
>        -
> @@ -1930,7 +1935,10 @@ enum v4l2_mpeg_video_h264_hierarchical_coding_type -
>        -
>      * - __u16
>        - ``num_slices``
> -      - Number of slices needed to decode the current frame
> +      - Number of slices needed to decode the current frame/field. When
> +        operating in slice-based decoding mode (see
> +        :c:type:`v4l2_mpeg_video_h264_decoding_mode`), this field
> +        should always be set to one.
>      * - __u16
>        - ``nal_ref_idc``
>        - NAL reference ID value coming from the NAL Unit header
> @@ -2021,6 +2029,43 @@ enum v4l2_mpeg_video_h264_hierarchical_coding_type -
>        - 0x00000004
>        - The DPB entry is a long term reference frame
>  
> +``V4L2_CID_MPEG_VIDEO_H264_DECODING_MODE (enum)``
> +    Specifies the decoding mode to use. Currently exposes slice-based and
> +    frame-based decoding but new modes might be added later on.
> +    This control is used to complement V4L2_PIX_FMT_H264_SLICE
> +    pixel format. Applications that support V4L2_PIX_FMT_H264_SLICE
> +    are required to set this control in order to specify the decoding mode
> +    that is expected for the buffer.
> +    Drivers may expose a single or multiple decoding modes, depending
> +    on what they can support.
> +
> +    .. note::
> +
> +       This menu control is not yet part of the public kernel API and
> +       it is expected to change.
> +
> +.. c:type:: v4l2_mpeg_video_h264_decoding_mode
> +
> +.. cssclass:: longtable
> +
> +.. flat-table::
> +    :header-rows:  0
> +    :stub-columns: 0
> +    :widths:       1 1 2
> +
> +    * - ``V4L2_MPEG_VIDEO_H264_SLICE_BASED_DECODING``
> +      - 0
> +      - The decoding is done at the slice granularity.
> +        v4l2_ctrl_h264_decode_params->num_slices should be set to 1.
> +        The OUTPUT buffer must contain a single slice.
> +    * - ``V4L2_MPEG_VIDEO_H264_FRAME_BASED_DECODING``
> +      - 1
> +      - The decoding is done at the frame granularity.
> +        v4l2_ctrl_h264_decode_params->num_slices should be set to the number of
> +        slices forming a frame.
> +        The OUTPUT buffer must contain all slices needed to decode the
> +        frame. The OUTPUT buffer must also contain both fields.
> +
>  .. _v4l2-mpeg-mpeg2:
>  
>  ``V4L2_CID_MPEG_VIDEO_MPEG2_SLICE_PARAMS (struct)``
> diff --git a/Documentation/media/uapi/v4l/pixfmt-compressed.rst b/Documentation/media/uapi/v4l/pixfmt-compressed.rst
> index 9b65473a2288..50557c85d99d 100644
> --- a/Documentation/media/uapi/v4l/pixfmt-compressed.rst
> +++ b/Documentation/media/uapi/v4l/pixfmt-compressed.rst
> @@ -61,7 +61,8 @@ Compressed Formats
>  	stateless video decoders that implement an H264 pipeline
>  	(using the :ref:`mem2mem` and :ref:`media-request-api`).
>  	Metadata associated with the frame to decode are required to
> -	be passed through the ``V4L2_CID_MPEG_VIDEO_H264_SPS``,
> +	be passed through the ``V4L2_CID_MPEG_VIDEO_H264_DECODING_MODE``,

No, that's not right. H264_DECODING_MODE isn't metadata that has to be
passed via a request. It's a pixelformat modifier and has to be set only
once to describe the format that's going to be passed to the HW.

That should be made clear here. Same goes for the next patch.

Regards,

	Hans

> +        ``V4L2_CID_MPEG_VIDEO_H264_SPS``,
>  	``V4L2_CID_MPEG_VIDEO_H264_PPS``,
>  	``V4L2_CID_MPEG_VIDEO_H264_SCALING_MATRIX``,
>  	``V4L2_CID_MPEG_VIDEO_H264_SLICE_PARAMS`` and
> diff --git a/drivers/media/v4l2-core/v4l2-ctrls.c b/drivers/media/v4l2-core/v4l2-ctrls.c
> index cd1ae016706f..c3194299bfac 100644
> --- a/drivers/media/v4l2-core/v4l2-ctrls.c
> +++ b/drivers/media/v4l2-core/v4l2-ctrls.c
> @@ -402,6 +402,11 @@ const char * const *v4l2_ctrl_get_menu(u32 id)
>  		"Explicit",
>  		NULL,
>  	};
> +	static const char * const h264_decoding_mode[] = {
> +		"Slice-Based",
> +		"Frame-Based",
> +		NULL,
> +	};
>  	static const char * const mpeg_mpeg2_level[] = {
>  		"Low",
>  		"Main",
> @@ -633,6 +638,8 @@ const char * const *v4l2_ctrl_get_menu(u32 id)
>  		return h264_fp_arrangement_type;
>  	case V4L2_CID_MPEG_VIDEO_H264_FMO_MAP_TYPE:
>  		return h264_fmo_map_type;
> +	case V4L2_CID_MPEG_VIDEO_H264_DECODING_MODE:
> +		return h264_decoding_mode;
>  	case V4L2_CID_MPEG_VIDEO_MPEG2_LEVEL:
>  		return mpeg_mpeg2_level;
>  	case V4L2_CID_MPEG_VIDEO_MPEG2_PROFILE:
> @@ -852,6 +859,7 @@ const char *v4l2_ctrl_get_name(u32 id)
>  	case V4L2_CID_MPEG_VIDEO_H264_SCALING_MATRIX:		return "H264 Scaling Matrix";
>  	case V4L2_CID_MPEG_VIDEO_H264_SLICE_PARAMS:		return "H264 Slice Parameters";
>  	case V4L2_CID_MPEG_VIDEO_H264_DECODE_PARAMS:		return "H264 Decode Parameters";
> +	case V4L2_CID_MPEG_VIDEO_H264_DECODING_MODE:		return "H264 Decoding Mode";
>  	case V4L2_CID_MPEG_VIDEO_MPEG2_LEVEL:			return "MPEG2 Level";
>  	case V4L2_CID_MPEG_VIDEO_MPEG2_PROFILE:			return "MPEG2 Profile";
>  	case V4L2_CID_MPEG_VIDEO_MPEG4_I_FRAME_QP:		return "MPEG4 I-Frame QP Value";
> @@ -1220,6 +1228,7 @@ void v4l2_ctrl_fill(u32 id, const char **name, enum v4l2_ctrl_type *type,
>  	case V4L2_CID_MPEG_VIDEO_H264_VUI_SAR_IDC:
>  	case V4L2_CID_MPEG_VIDEO_H264_SEI_FP_ARRANGEMENT_TYPE:
>  	case V4L2_CID_MPEG_VIDEO_H264_FMO_MAP_TYPE:
> +	case V4L2_CID_MPEG_VIDEO_H264_DECODING_MODE:
>  	case V4L2_CID_MPEG_VIDEO_MPEG2_LEVEL:
>  	case V4L2_CID_MPEG_VIDEO_MPEG2_PROFILE:
>  	case V4L2_CID_MPEG_VIDEO_MPEG4_LEVEL:
> diff --git a/include/media/h264-ctrls.h b/include/media/h264-ctrls.h
> index 6160a69c0143..e6c510877f67 100644
> --- a/include/media/h264-ctrls.h
> +++ b/include/media/h264-ctrls.h
> @@ -26,6 +26,7 @@
>  #define V4L2_CID_MPEG_VIDEO_H264_SCALING_MATRIX	(V4L2_CID_MPEG_BASE+1002)
>  #define V4L2_CID_MPEG_VIDEO_H264_SLICE_PARAMS	(V4L2_CID_MPEG_BASE+1003)
>  #define V4L2_CID_MPEG_VIDEO_H264_DECODE_PARAMS	(V4L2_CID_MPEG_BASE+1004)
> +#define V4L2_CID_MPEG_VIDEO_H264_DECODING_MODE	(V4L2_CID_MPEG_BASE+1005)
>  
>  /* enum v4l2_ctrl_type type values */
>  #define V4L2_CTRL_TYPE_H264_SPS			0x0110
> @@ -33,6 +34,12 @@
>  #define V4L2_CTRL_TYPE_H264_SCALING_MATRIX	0x0112
>  #define V4L2_CTRL_TYPE_H264_SLICE_PARAMS	0x0113
>  #define V4L2_CTRL_TYPE_H264_DECODE_PARAMS	0x0114
> +#define V4L2_CTRL_TYPE_H264_DECODING_MODE	0x0115
> +
> +enum v4l2_mpeg_video_h264_decoding_mode {
> +	V4L2_MPEG_VIDEO_H264_SLICE_BASED_DECODING,
> +	V4L2_MPEG_VIDEO_H264_FRAME_BASED_DECODING,
> +};
>  
>  #define V4L2_H264_SPS_CONSTRAINT_SET0_FLAG			0x01
>  #define V4L2_H264_SPS_CONSTRAINT_SET1_FLAG			0x02
> @@ -125,6 +132,10 @@ struct v4l2_h264_pred_weight_table {
>  struct v4l2_ctrl_h264_slice_params {
>  	/* Size in bytes, including header */
>  	__u32 size;
> +
> +	/* Offset in bytes to the start of slice in the OUTPUT buffer. */
> +	__u32 start_byte_offset;
> +
>  	/* Offset in bits to slice_data() from the beginning of this slice. */
>  	__u32 header_bit_size;
>  
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
