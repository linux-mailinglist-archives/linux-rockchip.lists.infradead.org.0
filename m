Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A19090196
	for <lists+linux-rockchip@lfdr.de>; Fri, 16 Aug 2019 14:30:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/dGjwsbYLIzVceo0PfwrZYljeRDgVMqYrLAdSb/eQOs=; b=btD+2hTzzQUrWf
	ftpQD+wNMRtLBKwYLoyQoaUNp/65t9HiV8zIma7V47sotXWx4QmMlpV5kF5LLU0WspaBc3x0lrAc/
	7DR93zm4Np7DDhpGeaj9fdCLPIzIbsR9QbQGvG2qkxqES69yEdjl/kL8GdqOIzeurH56X4tfNjKhp
	6fyvcKpCukUVjVphR+6lso4sFppYRvXI715/cZ7hU+DTDEFPg0UxOqzLSpGHqcY7mXm9Lyugv27/3
	gBLFOiNjX8PWgscY+Fz1TDTNydlXkUEgahIOQ7UKuMzPz7AH0RhY/OA9bpQLosfQ0ubrip58xzl+f
	eIacT+MroCW9IS6XkUAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hybNb-0003mT-Tw; Fri, 16 Aug 2019 12:30:52 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hybMG-0001OU-TO
 for linux-rockchip@lists.infradead.org; Fri, 16 Aug 2019 12:29:31 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 3C8FC26127B
Message-ID: <3c7d72f3ae3a4235cd818a051ee0265ac123bdc1.camel@collabora.com>
Subject: Re: [PATCH v6 03/11] media: uapi: h264: Add the concept of decoding
 mode
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Hans Verkuil <hverkuil@xs4all.nl>, linux-media@vger.kernel.org
Date: Fri, 16 Aug 2019 09:29:13 -0300
In-Reply-To: <38911c55-3ca7-4fd8-d10e-34f48a5a2851@xs4all.nl>
References: <20190814195931.6587-1-ezequiel@collabora.com>
 <20190814195931.6587-4-ezequiel@collabora.com>
 <38911c55-3ca7-4fd8-d10e-34f48a5a2851@xs4all.nl>
Organization: Collabora
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_052929_322750_C347B78E 
X-CRM114-Status: GOOD (  25.91  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

On Fri, 2019-08-16 at 09:34 +0200, Hans Verkuil wrote:
> On 8/14/19 9:59 PM, Ezequiel Garcia wrote:
> > From: Boris Brezillon <boris.brezillon@collabora.com>
> > 
> > Some stateless decoders don't support per-slice decoding granularity
> > (or at least not in a way that would make them efficient or easy to use).
> > 
> > Expose a menu to control the supported decoding modes. Drivers are
> > allowed to support only one decoding but they can support both too.
> 
> The commit message doesn't say anything about the start_byte_offset
> addition and the num_slices documentation improvement. It probably
> should.
> 

Yes, of course.

> See more comments below:
> 
> > Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> > Reviewed-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > Tested-by: Philipp Zabel <p.zabel@pengutronix.de>
> > ---
> > Changes in v6:
> > * Fix spec, specifiying the decode-mode pixelformat modifier
> >   needs to be set once, as suggested by Hans.
> > * Rename, as suggested by Paul.
> > Changes in v5:
> > * Improve specification as suggested by Hans.
> > Changes in v4:
> > * Typos/rewording fixes
> > Changes in v3:
> > * s/per-{slice,frame} decoding/{slice,frame}-based decoding/
> > * Add Paul's R-b
> > Changes in v2:
> > * Allow decoding multiple slices in per-slice decoding mode
> > * Minor doc improvement/fixes
> > ---
> >  .../media/uapi/v4l/ext-ctrls-codec.rst        | 47 ++++++++++++++++++-
> >  .../media/uapi/v4l/pixfmt-compressed.rst      |  6 ++-
> >  drivers/media/v4l2-core/v4l2-ctrls.c          |  9 ++++
> >  include/media/h264-ctrls.h                    | 10 ++++
> >  4 files changed, 69 insertions(+), 3 deletions(-)
> > 
> > diff --git a/Documentation/media/uapi/v4l/ext-ctrls-codec.rst b/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
> > index c5f39dd50043..623b34f61b32 100644
> > --- a/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
> > +++ b/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
> > @@ -1747,6 +1747,11 @@ enum v4l2_mpeg_video_h264_hierarchical_coding_type -
> >      * - __u32
> >        - ``size``
> >        -
> > +    * - __u32
> > +      - ``start_byte_offset``
> > +        Offset (in bytes) from the beginning of the OUTPUT buffer to the start
> > +        of the slice. If the slice starts with a start code, then this is the
> > +        offset to such start code.
> 
> This should mention that it should be set to 0 for SLICE_BASED decoding mode.
> 

Right.

> >      * - __u32
> >        - ``header_bit_size``
> >        -
> > @@ -1930,7 +1935,10 @@ enum v4l2_mpeg_video_h264_hierarchical_coding_type -
> >        -
> >      * - __u16
> >        - ``num_slices``
> > -      - Number of slices needed to decode the current frame
> > +      - Number of slices needed to decode the current frame/field. When
> > +        operating in slice-based decoding mode (see
> > +        :c:type:`v4l2_mpeg_video_h264_decode_mode`), this field
> > +        should always be set to one.
> >      * - __u16
> >        - ``nal_ref_idc``
> >        - NAL reference ID value coming from the NAL Unit header
> > @@ -2021,6 +2029,43 @@ enum v4l2_mpeg_video_h264_hierarchical_coding_type -
> >        - 0x00000004
> >        - The DPB entry is a long term reference frame
> >  
> > +``V4L2_CID_MPEG_VIDEO_H264_DECODE_MODE (enum)``
> > +    Specifies the decoding mode to use. Currently exposes slice-based and
> > +    frame-based decoding but new modes might be added later on.
> > +    This control is used as a modifier for V4L2_PIX_FMT_H264_SLICE
> > +    pixel format. Applications that support V4L2_PIX_FMT_H264_SLICE
> > +    are required to set this control in order to specify the decoding mode
> > +    that is expected for the buffer.
> > +    Drivers may expose a single or multiple decoding modes, depending
> > +    on what they can support.
> > +
> > +    .. note::
> > +
> > +       This menu control is not yet part of the public kernel API and
> > +       it is expected to change.
> > +
> > +.. c:type:: v4l2_mpeg_video_h264_decode_mode
> > +
> > +.. cssclass:: longtable
> > +
> > +.. flat-table::
> > +    :header-rows:  0
> > +    :stub-columns: 0
> > +    :widths:       1 1 2
> > +
> > +    * - ``V4L2_MPEG_VIDEO_H264_DECODE_MODE_SLICE_BASED``
> > +      - 0
> > +      - Decoding is done at the slice granularity.
> > +        v4l2_ctrl_h264_decode_params->num_slices should be set to 1.
> 
> And start_byte_offset should be set to 0.
> 

OK.

> > +        The OUTPUT buffer must contain a single slice.
> > +    * - ``V4L2_MPEG_VIDEO_H264_DECODE_MODE_FRAME_BASED``
> > +      - 1
> > +      - Decoding is done at the frame granularity.
> > +        v4l2_ctrl_h264_decode_params->num_slices should be set to the number of
> > +        slices forming a frame.
> 
> And start_byte_offset should be filled in accordingly for each slice.
> 

OK.

Thanks,
Ezequiel


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
