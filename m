Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA73D5E6A7
	for <lists+linux-rockchip@lfdr.de>; Wed,  3 Jul 2019 16:29:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K/KBHGbc6zO1dOGi4budBQUcY+WC2xyzhkVj/ouZfA0=; b=S8HEX1c4FCNnnf
	fj0I9aZB+LGbkeUtN054Kvu2gKzbIGrMzxgF8pInSo3FW9M6SLlX2YgLN3D7PaPiVNsW8gYohloLD
	MfAFhZ0gcRSqXPzVhepSQvdBkz5G6tzpgLb8LjWFDO0T8VAtdc+7HThnWdIdC+23+t+3oS5UxSUAx
	uZAnJ9pewLpbPQa/y60y2KosHVQhwwNAG1uk5WmpQDwSVBvavP2rN0uEJWIxa18m3M6SGqMI/+qQV
	6wNQkduwnDmTXX5+sPj68ELc7ZpXh/0DZisfkNYEmC4TpbCeGi/4Jv/VghdIKms6/lIX2aSwehpIu
	XrlT+Ihz+c0kvQNVO3sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1higG5-0001g1-97; Wed, 03 Jul 2019 14:29:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1higG1-0001fF-Qi
 for linux-rockchip@lists.infradead.org; Wed, 03 Jul 2019 14:29:15 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1higFx-0003B7-Qx; Wed, 03 Jul 2019 16:29:09 +0200
Message-ID: <1562164149.4604.9.camel@pengutronix.de>
Subject: Re: [PATCH v2 1/2] media: uapi: Add VP8 stateless decoder API
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org, 
 Hans Verkuil <hans.verkuil@cisco.com>
Date: Wed, 03 Jul 2019 16:29:09 +0200
In-Reply-To: <20190702170016.5210-2-ezequiel@collabora.com>
References: <20190702170016.5210-1-ezequiel@collabora.com>
 <20190702170016.5210-2-ezequiel@collabora.com>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_072913_862611_4BE798B6 
X-CRM114-Status: GOOD (  20.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 Boris Brezillon <boris.brezillon@collabora.com>, kernel@collabora.com,
 Pawel Osciak <posciak@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, 2019-07-02 at 14:00 -0300, Ezequiel Garcia wrote:
> From: Pawel Osciak <posciak@chromium.org>
> 
> Add the parsed VP8 frame pixel format and controls, to be used
> with the new stateless decoder API for VP8 to provide parameters
> for accelerator (aka stateless) codecs.
> 
> Signed-off-by: Pawel Osciak <posciak@chromium.org>
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> --
> Changes from v1:
> * Move 1-bit fields to flags in the respective structures.
> * Add padding fields to make all structures 8-byte aligned.
> * Reorder fields where needed to avoid padding as much as possible.
> * Fix documentation as needed.
> 
> Changes from RFC:
> * Make sure the uAPI has the same size on x86, x86_64, arm and arm64.
> * Move entropy coder state fields to a struct.
> * Move key_frame field to the flags.
> * Remove unneeded first_part_offset field.
> * Add documentation.
> ---
>  Documentation/media/uapi/v4l/biblio.rst       |  10 +
>  .../media/uapi/v4l/ext-ctrls-codec.rst        | 323 ++++++++++++++++++
>  .../media/uapi/v4l/pixfmt-compressed.rst      |  20 ++
>  drivers/media/v4l2-core/v4l2-ctrls.c          |   8 +
>  drivers/media/v4l2-core/v4l2-ioctl.c          |   1 +
>  include/media/v4l2-ctrls.h                    |   3 +
>  include/media/vp8-ctrls.h                     | 110 ++++++
>  7 files changed, 475 insertions(+)
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
> index d6ea2ffd65c5..aef335f175cd 100644
> --- a/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
> +++ b/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
> @@ -2234,6 +2234,329 @@ enum v4l2_mpeg_video_h264_hierarchical_coding_type -
>      Quantization parameter for a P frame for FWHT. Valid range: from 1
>      to 31.
>  
> +.. _v4l2-mpeg-vp8:
> +
> +``V4L2_CID_MPEG_VIDEO_VP8_FRAME_HEADER (struct)``
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
> +    * - struct :c:type:`v4l2_vp8_segment_header`
> +      - ``segment_header``
> +      - Structure with segment-based adjustments metadata.
> +    * - struct :c:type:`v4l2_vp8_loopfilter_header`
> +      - ``loopfilter_header``
> +      - Structure with loop filter level adjustments metadata.
> +    * - struct :c:type:`v4l2_vp8_quantization_header`
> +      - ``quant_header``
> +      - Structure with VP8 dequantization indices metadata.
> +    * - struct :c:type:`v4l2_vp8_entropy_header`
> +      - ``entropy_header``
> +      - Structure with VP8 entropy coder probabilities metadata.
> +    * - struct :c:type:`v4l2_vp8_entropy_coder_state`
> +      - ``coder_state``
> +      - Structure with VP8 entropy coder state.
> +    * - __u16
> +      - ``width``
> +      - The width of the frame. Must be set for all frames.
> +    * - __u16
> +      - ``height``
> +      - The height of the frame. Must be set for all frames.
> +    * - __u8
> +      - ``horizontal_scale``
> +      - Horizontal scaling factor.
> +    * - __u8
> +      - ``vertical_scaling factor``
> +      - Vertical scale.
> +    * - __u8
> +      - ``version``
> +      - Bitstream version.
> +    * - __u8
> +      - ``prob_skip_false``
> +      - Indicates the probability that the macroblock is not skipped.
> +    * - __u8
> +      - ``prob_intra``
> +      - Indicates the probability that a macroblock is intra-predicted.
> +    * - __u8
> +      - ``prob_last``
> +      - Indicates the probability that the last reference frame is used
> +        for inter-prediction
> +    * - __u8
> +      - ``prob_gf``
> +      - Indicates the probability that the golden reference frame is used
> +        for inter-prediction
> +    * - __u8
> +      - ``num_dct_parts``
> +      - Number of DCT coefficients partitions.

I assume this must be no larger than 8. Is this mandated by the spec? If
so, should it be documented here and checked by v4l2-core?

regards
Philipp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
