Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF3C4C5EB
	for <lists+linux-rockchip@lfdr.de>; Thu, 20 Jun 2019 05:47:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T3IcvbwjfKJOWR9TimnivKNmwIw0xudaT/nTqGATpck=; b=Bv3okcFt8/jdS2
	ItJX29xWq2Pv9x/lFoKKyHs2curx7iygR/PbDx/Vrb3YbV3p0lJF/5cezQkqrxzDpeSuHgSfGr/u4
	5StEpoSTNAS5KyrJJ6FCgJV6SfpeVFdASJLAAYkpJOwcxoY7uAV+nJSC4ltPL3JnP440G6eKRFNIr
	kiBtqKEaXKrdcv/McAZEfZwuPUyAUWilQRCb1R9nLgQuE33YUCDh4NRswLsTlTm5OUCTaehV5yCF3
	Cqw1ycveEqAEeQv0f+0CKOoqR8lZGHSIzD3Co7/mp3CpuInA5RoH9vD8n9Llrm0ykblWoqu/ffAw1
	PXtM/4ROTzDbLyGjCCkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdo2Y-00085g-QS; Thu, 20 Jun 2019 03:47:10 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdo2V-00085G-2U
 for linux-rockchip@lists.infradead.org; Thu, 20 Jun 2019 03:47:09 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 5693C260E5C
Message-ID: <8ed2e1c55445b5d2ee1f99d773a1314c964bb636.camel@collabora.com>
Subject: Re: [PATCH 1/2] media: uapi: Add VP8 stateless decoder API
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Date: Thu, 20 Jun 2019 00:46:54 -0300
In-Reply-To: <20190617152310.299d60e8@collabora.com>
References: <20190613151040.8971-1-ezequiel@collabora.com>
 <20190613151040.8971-2-ezequiel@collabora.com>
 <20190617152310.299d60e8@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_204707_381121_76F0C04F 
X-CRM114-Status: GOOD (  28.96  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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

Hi Boris,

Thanks for the review.

On Mon, 2019-06-17 at 15:23 +0200, Boris Brezillon wrote:
> On Thu, 13 Jun 2019 12:10:39 -0300
> Ezequiel Garcia <ezequiel@collabora.com> wrote:
> 
> > From: Pawel Osciak <posciak@chromium.org>
> > 
> > Add the parsed VP8 frame pixel format and controls, to be used
> > with the new stateless decoder API for VP8 to provide parameters
> > for accelerator (aka stateless) codecs.
> > 
> > Signed-off-by: Pawel Osciak <posciak@chromium.org>
> > Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> > --
> > Changes from RFC:
> > * Make sure the uAPI has the same size on x86, x86_64, arm and arm64.
> > * Move entropy coder state fields to a struct.
> > * Move key_frame field to the flags.
> > * Remove unneeded first_part_offset field.
> > * Add documentation.
> > ---
> >  Documentation/media/uapi/v4l/biblio.rst       |  10 +
> >  .../media/uapi/v4l/ext-ctrls-codec.rst        | 311 ++++++++++++++++++
> >  .../media/uapi/v4l/pixfmt-compressed.rst      |  20 ++
> >  drivers/media/v4l2-core/v4l2-ctrls.c          |   8 +
> >  drivers/media/v4l2-core/v4l2-ioctl.c          |   1 +
> >  include/media/v4l2-ctrls.h                    |   3 +
> >  include/media/vp8-ctrls.h                     | 110 +++++++
> >  7 files changed, 463 insertions(+)
> >  create mode 100644 include/media/vp8-ctrls.h
> > 
> > diff --git a/Documentation/media/uapi/v4l/biblio.rst b/Documentation/media/uapi/v4l/biblio.rst
> > index 8f4eb8823d82..ad2ff258afa8 100644
> > --- a/Documentation/media/uapi/v4l/biblio.rst
> > +++ b/Documentation/media/uapi/v4l/biblio.rst
> > @@ -395,3 +395,13 @@ colimg
> >  :title:     Color Imaging: Fundamentals and Applications
> >  
> >  :author:    Erik Reinhard et al.
> > +
> > +.. _vp8:
> > +
> > +VP8
> > +===
> > +
> > +
> > +:title:     RFC 6386: "VP8 Data Format and Decoding Guide"
> > +
> > +:author:    J. Bankoski et al.
> > diff --git a/Documentation/media/uapi/v4l/ext-ctrls-codec.rst b/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
> > index d6ea2ffd65c5..7a1947f5be96 100644
> > --- a/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
> > +++ b/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
> > @@ -2234,6 +2234,317 @@ enum v4l2_mpeg_video_h264_hierarchical_coding_type -
> >      Quantization parameter for a P frame for FWHT. Valid range: from 1
> >      to 31.
> >  
> > +.. _v4l2-mpeg-vp8:
> > +
> > +``V4L2_CID_MPEG_VIDEO_VP8_FRAME_HDR (struct)``
> > +    Specifies the frame parameters for the associated VP8 parsed frame data.
> > +    This includes the necessary parameters for
> > +    configuring a stateless hardware decoding pipeline for VP8.
> > +    The bitstream parameters are defined according to :ref:`vp8`.
> > +
> > +    .. note::
> > +
> > +       This compound control is not yet part of the public kernel API and
> > +       it is expected to change.
> > +
> > +.. c:type:: v4l2_ctrl_vp8_frame_header
> > +
> > +.. cssclass:: longtable
> > +
> > +.. tabularcolumns:: |p{5.8cm}|p{4.8cm}|p{6.6cm}|
> > +
> > +.. flat-table:: struct v4l2_ctrl_vp8_frame_header
> > +    :header-rows:  0
> > +    :stub-columns: 0
> > +    :widths:       1 1 2
> > +
> > +    * - __u8
> > +      - ``version``
> > +      - Bitstream version.
> > +    * - __u16
> > +      - ``width``
> > +      - The width of the frame
> 
> Nit: sometimes you finish your description with a final dot sometimes
> not. It's probably better to make that consistent.
> 
> 

Yes, this is an overlook on my side. I'll fix this.

> [...]
> 
> > diff --git a/include/media/vp8-ctrls.h b/include/media/vp8-ctrls.h
> > new file mode 100644
> > index 000000000000..3b0dcc125e25
> > --- /dev/null
> > +++ b/include/media/vp8-ctrls.h
> > @@ -0,0 +1,110 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/*
> > + * These are the VP8 state controls for use with stateless VP8
> > + * codec drivers.
> > + *
> > + * It turns out that these structs are not stable yet and will undergo
> > + * more changes. So keep them private until they are stable and ready to
> > + * become part of the official public API.
> > + */
> > +
> > +#ifndef _VP8_CTRLS_H_
> > +#define _VP8_CTRLS_H_
> > +
> > +#include <linux/v4l2-controls.h>
> > +
> > +#define V4L2_PIX_FMT_VP8_FRAME v4l2_fourcc('V', 'P', '8', 'F') /* VP8 parsed frames */
> > +
> > +#define V4L2_CID_MPEG_VIDEO_VP8_FRAME_HDR (V4L2_CID_MPEG_BASE + 2000)
> > +#define V4L2_CTRL_TYPE_VP8_FRAME_HDR 0x301
> > +
> > +#define V4L2_VP8_SEGMNT_HDR_FLAG_ENABLED              0x01
> > +#define V4L2_VP8_SEGMNT_HDR_FLAG_UPDATE_MAP           0x02
> > +#define V4L2_VP8_SEGMNT_HDR_FLAG_UPDATE_FEATURE_DATA  0x04
> > +
> > +struct v4l2_vp8_segment_header {
> > +	__u8 segment_feature_mode;
> > +	__s8 quant_update[4];
> > +	__s8 lf_update[4];
> > +	__u8 segment_probs[3];
> > +	__u32 flags;
> > +};
> > +
> > +#define V4L2_VP8_LF_HDR_ADJ_ENABLE	0x01
> > +#define V4L2_VP8_LF_HDR_DELTA_UPDATE	0x02
> > +struct v4l2_vp8_loopfilter_header {
> > +	__u16 type;
> > +	__u8 level;
> > +	__u8 sharpness_level;
> > +	__s8 ref_frm_delta_magnitude[4];
> > +	__s8 mb_mode_delta_magnitude[4];
> > +	__u16 flags;
> > +};
> > +
> > +struct v4l2_vp8_quantization_header {
> > +	__u8 y_ac_qi;
> > +	__s8 y_dc_delta;
> > +	__s8 y2_dc_delta;
> > +	__s8 y2_ac_delta;
> > +	__s8 uv_dc_delta;
> > +	__s8 uv_ac_delta;
> 
> Don't know what the policy in V4L, but it's usually a good thing to
> have structs used to exchange data with userspace aligned on 64-bits.
> Maybe you can add 2 padding bytes here. Note that the compiler might
> anyway add padding to align struct fields to their natural alignment in
> v4l2_ctrl_vp8_frame_header, so it's probably better to have these
> padding bytes explicitly defined and mandate that they be set to 0 so
> we can check them and complain when they're not 0.
> 

AFAIK, there is no such requirement. There is however the requirement
of making sure the structs layout is the same on 32 and 64 architectures [1].

This is confirmed by these [2] tests which are based in Maxime's work.

[1] http://lkml.iu.edu/hypermail/linux/kernel/1806.1/05059.html
[2] https://gitlab.collabora.com/ezequiel/v4l2-ctrl-abi-check

> > 
> > +	__u16 dequant_factors[4][3][2];
> > +};
> > +
> > +struct v4l2_vp8_entropy_header {
> > +	__u8 coeff_probs[4][8][3][11];
> > +	__u8 y_mode_probs[4];
> > +	__u8 uv_mode_probs[3];
> > +	__u8 mv_probs[2][19];
> 
> Same here
> 
> > +};
> > +
> > +struct v4l2_vp8_entropy_coder_state {
> > +	__u8 range;
> > +	__u8 value;
> > +	__u8 bit_count;
> 
> and here.
> 
> > +};
> > +
> > +#define V4L2_VP8_FRAME_HDR_FLAG_KEY_FRAME		0x01
> > +#define V4L2_VP8_FRAME_HDR_FLAG_EXPERIMENTAL		0x02
> > +#define V4L2_VP8_FRAME_HDR_FLAG_SHOW_FRAME		0x04
> > +#define V4L2_VP8_FRAME_HDR_FLAG_MB_NO_SKIP_COEFF	0x08
> > +
> > +#define VP8_FRAME_IS_KEY_FRAME(hdr) (!!(hdr->flags & V4L2_VP8_FRAME_HDR_FLAG_KEY_FRAME))
> > +
> > +struct v4l2_ctrl_vp8_frame_header {
> > +	__u8 version;
> > +
> 
> Maybe we should try to pack things so that the compiler does not
> implicitly add extra padding bytes. That implies trying to group u8
> fields by 2, 4 or 8 depending on what the next field natural alignment
> is.
> 

Yes, I guess it makes sense to avoid implicit padding if possible.

> > +	/* Populated also if not a key frame */

Note to self, this comment should be dropped and moved to the documentation.

> > +	__u16 width;
> > +	__u16 height;
> > +	__u8 horizontal_scale;
> > +	__u8 vertical_scale;
> > +
> > +	struct v4l2_vp8_segment_header segment_header;
> > +	struct v4l2_vp8_loopfilter_header lf_header;
> > +	struct v4l2_vp8_quantization_header quant_header;
> > +	struct v4l2_vp8_entropy_header entropy_header;
> > +
> > +	__u16 sign_bias_golden;
> > +	__u16 sign_bias_alternate;
> > +
> > +	__u8 prob_skip_false;
> > +	__u8 prob_intra;
> > +	__u8 prob_last;
> > +	__u8 prob_gf;
> > +
> > +	__u32 first_part_size;
> > +	__u32 macroblock_bit_offset;
> > +	__u32 dct_part_sizes[8];
> > +	__u8 num_dct_parts;
> > +
> > +	struct v4l2_vp8_entropy_coder_state coder_state;
> > +
> > +	__u64 last_frame_ts;
> > +	__u64 golden_frame_ts;
> > +	__u64 alt_frame_ts;
> > +
> > +	__u64 flags;
> > +};
> > +
> > +#endif

Thanks,
Ezequiel


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
