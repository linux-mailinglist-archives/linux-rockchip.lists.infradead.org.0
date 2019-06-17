Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C952483D2
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 15:23:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tiJiICV7Qlx6ibfCmKor30RrtDXq/Jdt0hKnK/cACE0=; b=isJTV5nXVD2o11
	LPMfvU+lmreA9Gxe8ANydGZFQsqB1HgvQbs33WdF59LnZAvoIiDYCbzrF9j7HsspmTvz5FG1Xlvik
	gKqAFq+XzjwE0IYfkDKc4vEtfx9Lt2fgZJISiC9+EiATPZs4rMpvDzaUFcEevAqCfqr0epuXAqa7B
	xx3MItkwwtFtyZw2L5hB27SyEjiYp++nTKWkHnfhfpZu5brUTyN2igCV21wm6AAxiMHo86IKSUe+q
	eskqXlf58ztbYgnwUWL4xsgtpAdt0VYEvEnrUF2xWgJhA0S3f4O9a6Ko/5PAyBAq36uWEVKw90y1P
	MV8EbYH/kHhgkmy092EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcrbh-0005dj-Bf; Mon, 17 Jun 2019 13:23:33 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcrbX-0005JI-IK
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 13:23:26 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id E9FA82639EE;
 Mon, 17 Jun 2019 14:23:19 +0100 (BST)
Date: Mon, 17 Jun 2019 15:23:17 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH 1/2] media: uapi: Add VP8 stateless decoder API
Message-ID: <20190617152310.299d60e8@collabora.com>
In-Reply-To: <20190613151040.8971-2-ezequiel@collabora.com>
References: <20190613151040.8971-1-ezequiel@collabora.com>
 <20190613151040.8971-2-ezequiel@collabora.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_062323_933854_08A56620 
X-CRM114-Status: GOOD (  25.47  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: kernel@collabora.com, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Tomasz Figa <tfiga@chromium.org>,
 linux-rockchip@lists.infradead.org, Hans Verkuil <hans.verkuil@cisco.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Pawel Osciak <posciak@chromium.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, 13 Jun 2019 12:10:39 -0300
Ezequiel Garcia <ezequiel@collabora.com> wrote:

> From: Pawel Osciak <posciak@chromium.org>
> 
> Add the parsed VP8 frame pixel format and controls, to be used
> with the new stateless decoder API for VP8 to provide parameters
> for accelerator (aka stateless) codecs.
> 
> Signed-off-by: Pawel Osciak <posciak@chromium.org>
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> --
> Changes from RFC:
> * Make sure the uAPI has the same size on x86, x86_64, arm and arm64.
> * Move entropy coder state fields to a struct.
> * Move key_frame field to the flags.
> * Remove unneeded first_part_offset field.
> * Add documentation.
> ---
>  Documentation/media/uapi/v4l/biblio.rst       |  10 +
>  .../media/uapi/v4l/ext-ctrls-codec.rst        | 311 ++++++++++++++++++
>  .../media/uapi/v4l/pixfmt-compressed.rst      |  20 ++
>  drivers/media/v4l2-core/v4l2-ctrls.c          |   8 +
>  drivers/media/v4l2-core/v4l2-ioctl.c          |   1 +
>  include/media/v4l2-ctrls.h                    |   3 +
>  include/media/vp8-ctrls.h                     | 110 +++++++
>  7 files changed, 463 insertions(+)
>  create mode 100644 include/media/vp8-ctrls.h
> 
> diff --git a/Documentation/media/uapi/v4l/biblio.rst b/Documentation/media/uapi/v4l/biblio.rst
> index 8f4eb8823d82..ad2ff258afa8 100644
> --- a/Documentation/media/uapi/v4l/biblio.rst
> +++ b/Documentation/media/uapi/v4l/biblio.rst
> @@ -395,3 +395,13 @@ colimg
>  :title:     Color Imaging: Fundamentals and Applications
>  
>  :author:    Erik Reinhard et al.
> +
> +.. _vp8:
> +
> +VP8
> +===
> +
> +
> +:title:     RFC 6386: "VP8 Data Format and Decoding Guide"
> +
> +:author:    J. Bankoski et al.
> diff --git a/Documentation/media/uapi/v4l/ext-ctrls-codec.rst b/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
> index d6ea2ffd65c5..7a1947f5be96 100644
> --- a/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
> +++ b/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
> @@ -2234,6 +2234,317 @@ enum v4l2_mpeg_video_h264_hierarchical_coding_type -
>      Quantization parameter for a P frame for FWHT. Valid range: from 1
>      to 31.
>  
> +.. _v4l2-mpeg-vp8:
> +
> +``V4L2_CID_MPEG_VIDEO_VP8_FRAME_HDR (struct)``
> +    Specifies the frame parameters for the associated VP8 parsed frame data.
> +    This includes the necessary parameters for
> +    configuring a stateless hardware decoding pipeline for VP8.
> +    The bitstream parameters are defined according to :ref:`vp8`.
> +
> +    .. note::
> +
> +       This compound control is not yet part of the public kernel API and
> +       it is expected to change.
> +
> +.. c:type:: v4l2_ctrl_vp8_frame_header
> +
> +.. cssclass:: longtable
> +
> +.. tabularcolumns:: |p{5.8cm}|p{4.8cm}|p{6.6cm}|
> +
> +.. flat-table:: struct v4l2_ctrl_vp8_frame_header
> +    :header-rows:  0
> +    :stub-columns: 0
> +    :widths:       1 1 2
> +
> +    * - __u8
> +      - ``version``
> +      - Bitstream version.
> +    * - __u16
> +      - ``width``
> +      - The width of the frame

Nit: sometimes you finish your description with a final dot sometimes
not. It's probably better to make that consistent.


[...]

> diff --git a/include/media/vp8-ctrls.h b/include/media/vp8-ctrls.h
> new file mode 100644
> index 000000000000..3b0dcc125e25
> --- /dev/null
> +++ b/include/media/vp8-ctrls.h
> @@ -0,0 +1,110 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * These are the VP8 state controls for use with stateless VP8
> + * codec drivers.
> + *
> + * It turns out that these structs are not stable yet and will undergo
> + * more changes. So keep them private until they are stable and ready to
> + * become part of the official public API.
> + */
> +
> +#ifndef _VP8_CTRLS_H_
> +#define _VP8_CTRLS_H_
> +
> +#include <linux/v4l2-controls.h>
> +
> +#define V4L2_PIX_FMT_VP8_FRAME v4l2_fourcc('V', 'P', '8', 'F') /* VP8 parsed frames */
> +
> +#define V4L2_CID_MPEG_VIDEO_VP8_FRAME_HDR (V4L2_CID_MPEG_BASE + 2000)
> +#define V4L2_CTRL_TYPE_VP8_FRAME_HDR 0x301
> +
> +#define V4L2_VP8_SEGMNT_HDR_FLAG_ENABLED              0x01
> +#define V4L2_VP8_SEGMNT_HDR_FLAG_UPDATE_MAP           0x02
> +#define V4L2_VP8_SEGMNT_HDR_FLAG_UPDATE_FEATURE_DATA  0x04
> +
> +struct v4l2_vp8_segment_header {
> +	__u8 segment_feature_mode;
> +	__s8 quant_update[4];
> +	__s8 lf_update[4];
> +	__u8 segment_probs[3];
> +	__u32 flags;
> +};
> +
> +#define V4L2_VP8_LF_HDR_ADJ_ENABLE	0x01
> +#define V4L2_VP8_LF_HDR_DELTA_UPDATE	0x02
> +struct v4l2_vp8_loopfilter_header {
> +	__u16 type;
> +	__u8 level;
> +	__u8 sharpness_level;
> +	__s8 ref_frm_delta_magnitude[4];
> +	__s8 mb_mode_delta_magnitude[4];
> +	__u16 flags;
> +};
> +
> +struct v4l2_vp8_quantization_header {
> +	__u8 y_ac_qi;
> +	__s8 y_dc_delta;
> +	__s8 y2_dc_delta;
> +	__s8 y2_ac_delta;
> +	__s8 uv_dc_delta;
> +	__s8 uv_ac_delta;

Don't know what the policy in V4L, but it's usually a good thing to
have structs used to exchange data with userspace aligned on 64-bits.
Maybe you can add 2 padding bytes here. Note that the compiler might
anyway add padding to align struct fields to their natural alignment in
v4l2_ctrl_vp8_frame_header, so it's probably better to have these
padding bytes explicitly defined and mandate that they be set to 0 so
we can check them and complain when they're not 0.

> +	__u16 dequant_factors[4][3][2];
> +};
> +
> +struct v4l2_vp8_entropy_header {
> +	__u8 coeff_probs[4][8][3][11];
> +	__u8 y_mode_probs[4];
> +	__u8 uv_mode_probs[3];
> +	__u8 mv_probs[2][19];

Same here

> +};
> +
> +struct v4l2_vp8_entropy_coder_state {
> +	__u8 range;
> +	__u8 value;
> +	__u8 bit_count;

and here.

> +};
> +
> +#define V4L2_VP8_FRAME_HDR_FLAG_KEY_FRAME		0x01
> +#define V4L2_VP8_FRAME_HDR_FLAG_EXPERIMENTAL		0x02
> +#define V4L2_VP8_FRAME_HDR_FLAG_SHOW_FRAME		0x04
> +#define V4L2_VP8_FRAME_HDR_FLAG_MB_NO_SKIP_COEFF	0x08
> +
> +#define VP8_FRAME_IS_KEY_FRAME(hdr) (!!(hdr->flags & V4L2_VP8_FRAME_HDR_FLAG_KEY_FRAME))
> +
> +struct v4l2_ctrl_vp8_frame_header {
> +	__u8 version;
> +

Maybe we should try to pack things so that the compiler does not
implicitly add extra padding bytes. That implies trying to group u8
fields by 2, 4 or 8 depending on what the next field natural alignment
is.

> +	/* Populated also if not a key frame */
> +	__u16 width;
> +	__u16 height;
> +	__u8 horizontal_scale;
> +	__u8 vertical_scale;
> +
> +	struct v4l2_vp8_segment_header segment_header;
> +	struct v4l2_vp8_loopfilter_header lf_header;
> +	struct v4l2_vp8_quantization_header quant_header;
> +	struct v4l2_vp8_entropy_header entropy_header;
> +
> +	__u16 sign_bias_golden;
> +	__u16 sign_bias_alternate;
> +
> +	__u8 prob_skip_false;
> +	__u8 prob_intra;
> +	__u8 prob_last;
> +	__u8 prob_gf;
> +
> +	__u32 first_part_size;
> +	__u32 macroblock_bit_offset;
> +	__u32 dct_part_sizes[8];
> +	__u8 num_dct_parts;
> +
> +	struct v4l2_vp8_entropy_coder_state coder_state;
> +
> +	__u64 last_frame_ts;
> +	__u64 golden_frame_ts;
> +	__u64 alt_frame_ts;
> +
> +	__u64 flags;
> +};
> +
> +#endif


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
