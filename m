Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C62C89D62
	for <lists+linux-rockchip@lfdr.de>; Mon, 12 Aug 2019 13:57:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OHZ0/rmmkKU8q+eV/eb3l0XO8j8IS8PD0A3leSORTu8=; b=qX4eYDDPIduK+o
	mXLY9h4cjRDobKIDkuJv+Twor4UOvJeugNCVcAHsv727bWmZx4TYDeyx3CMJlWy7+2zBUc7RagNAP
	5Kozs3MljrQKSU5LQIz/iokosfg50otbtAN+a8+DV3SPnxpRDoA1FWrBrI7aJV3UynRI73QESrmrk
	cLiymWjg7/T74GD0WlNObZ28c5cGoEotH6Wgn7wg1F4LN5Z7i8PAC3AP5wji0BjZS0uDCDqORMqpC
	OzgsRRdv1c9H4UTOX8xZn+EiKAncj1gLWNNZ2ABaoNfhZjm6NkuAtFdNj5QPey0jkUrsEcXZKzcm4
	MUysUdxXYMA6uIjeC+7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx8wf-0002pq-Ps; Mon, 12 Aug 2019 11:57:01 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx8wa-0002p7-1U
 for linux-rockchip@lists.infradead.org; Mon, 12 Aug 2019 11:56:57 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 5DB3628AC52
Message-ID: <95b8f8f8d5d4f6394cfd5858a29d507b7e77be2f.camel@collabora.com>
Subject: Re: [PATCH v4 04/11] media: uapi: h264: Add the concept of start code
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Hans Verkuil <hverkuil@xs4all.nl>, linux-media@vger.kernel.org
Date: Mon, 12 Aug 2019 08:56:32 -0300
In-Reply-To: <a729d241-6550-c23a-4f75-f106ab1c7ff9@xs4all.nl>
References: <20190808103432.12062-1-ezequiel@collabora.com>
 <20190808103432.12062-5-ezequiel@collabora.com>
 <a729d241-6550-c23a-4f75-f106ab1c7ff9@xs4all.nl>
Organization: Collabora
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_045656_343274_B3C97A88 
X-CRM114-Status: GOOD (  23.48  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

On Mon, 2019-08-12 at 12:11 +0200, Hans Verkuil wrote:
> On 8/8/19 12:34 PM, Ezequiel Garcia wrote:
> > Stateless decoders have different expectations about the
> > start code that is prepended on H264 slices. Add a
> > menu control to express the supported start code types
> > (including no start code).
> > 
> > Drivers are allowed to support only one start code type,
> > but they can support both too.
> > 
> > Note that this is independent of the H264 decoding mode,
> > which specifies the granularity of the decoding operations.
> > Either in frame-based or slice-based mode, this new control
> > will allow to define the start code expected on H264 slices.
> > 
> > Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> > ---
> > Changes in v4:
> > * New patch.
> > ---
> >  .../media/uapi/v4l/ext-ctrls-codec.rst        | 31 +++++++++++++++++++
> >  drivers/media/v4l2-core/v4l2-ctrls.c          |  9 ++++++
> >  include/media/h264-ctrls.h                    |  6 ++++
> >  3 files changed, 46 insertions(+)
> > 
> > diff --git a/Documentation/media/uapi/v4l/ext-ctrls-codec.rst b/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
> > index ea0455957149..94fd3a9b8b9e 100644
> > --- a/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
> > +++ b/Documentation/media/uapi/v4l/ext-ctrls-codec.rst
> > @@ -2062,6 +2062,37 @@ enum v4l2_mpeg_video_h264_hierarchical_coding_type -
> >          The OUTPUT buffer should contain all slices needed to decode the
> >          frame/field.
> >  
> > +``V4L2_CID_MPEG_VIDEO_H264_STARTCODE (enum)``
> > +    Specifies the H264 slice start code expected for each slice.
> > +    This control shall e used to complement V4L2_PIX_FMT_H264_SLICE
> 
> e -> be
> 
> > +    pixel format. Drivers may expose a single or multiple
> > +    start codes, depending on what they can support.
> > +
> > +    .. note::
> > +
> > +       This menu control is not yet part of the public kernel API and
> > +       it is expected to change.
> > +
> > +.. c:type:: v4l2_mpeg_video_h264_startcode
> > +
> > +.. cssclass:: longtable
> > +
> > +.. flat-table::
> > +    :header-rows:  0
> > +    :stub-columns: 0
> > +    :widths:       1 1 2
> > +
> > +    * - ``V4L2_MPEG_VIDEO_H264_NO_STARTCODE``
> > +      - 0
> > +      - Selecting this value specifies that H264 slices are passed
> > +        to the driver without any start code.
> > +        Bla.
> 
> Bla?
> 

Well, despite how many times I reviewed this doc, it seems
this slipped through :-(

> > +    * - ``V4L2_MPEG_VIDEO_H264_ANNEX_B_STARTCODE``
> > +      - 1
> > +      - Selecting this value specifies that H264 slices are expected
> > +        to be prefixed by Annex B start codes. According to :ref:`h264`
> > +        valid start codes can be 3-bytes 0x000001, or 4-bytes 0x00000001.
> > +
> 
> I had the impression that it is more common to require startcodes. If that's
> indeed the case, shouldn't this have value 0 instead of 1?
> 1?
> 

I'm not sure this is indeed the case.

For instance, VA-API accelerators work on H264 slices that are not
prepended by the NALU start code.

I'm fine flipping the values, but at this point, with only cedrus and hantro,
there's doesn't seem to be a "natural" choice.

Thanks,
Ezequiel


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
