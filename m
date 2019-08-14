Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 926BF8D5B3
	for <lists+linux-rockchip@lfdr.de>; Wed, 14 Aug 2019 16:12:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IE9n5p9a38Vy0xwzYmk5+VuTkO+sTWebvsUgW8Zthbg=; b=Y0YoWngI9ywsml
	pFarRUcIXR0qlBEA4P//4XoFpA6bvaU4pRkth/Nv/qqhpuwt+k6CK27aPkNoeh7KHhXfn0acOz9bk
	zRzPq6QGgFDdNvTKr73NTDjKUbyMzo38M+xv7px0radsTLWqresOiRxFgJu09OyHVl6dSPSlZmcUc
	SDoSCAgcoT0CWqzQDjIjdD47/TaRhyJW5CoP+9fHfXBbikGhsb3OTRm/y5VEE07fVrjx5bKOkoqCL
	T/o5VZypcl7Z8pjwHALXbygaq+49J2LuL15HtlrPScWlLIPSITFjAuJwBv6qGGiHfgU9bXTejRx+W
	nkhz9UKDTsKxbQdSw2Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxu0v-0004Xz-Jy; Wed, 14 Aug 2019 14:12:33 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxu0p-0004XE-Lu
 for linux-rockchip@lists.infradead.org; Wed, 14 Aug 2019 14:12:31 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 78E88286289
Message-ID: <c490068a4d1ea550f330e8127826014bec0e12f2.camel@collabora.com>
Subject: Re: [PATCH v5 04/11] media: uapi: h264: Add the concept of start code
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Hans Verkuil
 <hverkuil@xs4all.nl>
Date: Wed, 14 Aug 2019 11:12:16 -0300
In-Reply-To: <20190814114928.GB4687@aptenodytes>
References: <20190812193522.10911-1-ezequiel@collabora.com>
 <20190812193522.10911-5-ezequiel@collabora.com>
 <f88d144f-e0fe-6974-efe5-77b5ed5c6e09@xs4all.nl>
 <20190814114928.GB4687@aptenodytes>
Organization: Collabora
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_071227_977099_4A34A727 
X-CRM114-Status: GOOD (  21.05  )
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
Cc: fbuergisser@chromium.org, kernel@collabora.com,
 Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>, linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, 2019-08-14 at 13:49 +0200, Paul Kocialkowski wrote:
> Hi,
> 
> On Wed 14 Aug 19, 10:11, Hans Verkuil wrote:
> > On 8/12/19 9:35 PM, Ezequiel Garcia wrote:
> > > Stateless decoders have different expectations about the
> > > start code that is prepended on H264 slices. Add a
> > > menu control to express the supported start code types
> > > (including no start code).
> > > 
> > > Drivers are allowed to support only one start code type,
> > > but they can support both too.
> > > 
> > > Note that this is independent of the H264 decoding mode,
> > > which specifies the granularity of the decoding operations.
> > > Either in frame-based or slice-based mode, this new control
> > > will allow to define the start code expected on H264 slices.
> > > 
> > > Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> > > Tested-by: Philipp Zabel <p.zabel@pengutronix.de>
> > > ---
> > > Changes in v5:
> > > * Improve specification as suggested by Hans.
> > > Changes in v4:
> > > * New patch.
> > > ---
> > >  .../media/uapi/v4l/ext-ctrls-codec.rst        | 33 +++++++++++++++++++
> > >  .../media/uapi/v4l/pixfmt-compressed.rst      |  3 +-
> > >  drivers/media/v4l2-core/v4l2-ctrls.c          |  9 +++++
> > >  include/media/h264-ctrls.h                    |  6 ++++
> > >  4 files changed, 50 insertions(+), 1 deletion(-)
> > > 
> > 
> > <snip>
> > 
> > > diff --git a/include/media/h264-ctrls.h b/include/media/h264-ctrls.h
> > > index e6c510877f67..31555c99f64a 100644
> > > --- a/include/media/h264-ctrls.h
> > > +++ b/include/media/h264-ctrls.h
> > > @@ -27,6 +27,7 @@
> > >  #define V4L2_CID_MPEG_VIDEO_H264_SLICE_PARAMS	(V4L2_CID_MPEG_BASE+1003)
> > >  #define V4L2_CID_MPEG_VIDEO_H264_DECODE_PARAMS	(V4L2_CID_MPEG_BASE+1004)
> > >  #define V4L2_CID_MPEG_VIDEO_H264_DECODING_MODE	(V4L2_CID_MPEG_BASE+1005)
> > > +#define V4L2_CID_MPEG_VIDEO_H264_STARTCODE	(V4L2_CID_MPEG_BASE+1006)
> > 
> > I almost forgot: can you change this to _START_CODE? Since it is two words?
> 
> Agreed, I like it better this way too.
> 

The reason to have STARTCODE instead of START_CODE was to have some
consistency with other controls (namely, V4L2_CID_MPEG_VIDEO_HEVC_WITHOUT_STARTCODE).

Consistency is really important in a API,
but at the same time, I agree START_CODE looks better.

> > Thanks!
> > 
> > 	Hans
> > 
> > >  
> > >  /* enum v4l2_ctrl_type type values */
> > >  #define V4L2_CTRL_TYPE_H264_SPS			0x0110
> > > @@ -41,6 +42,11 @@ enum v4l2_mpeg_video_h264_decoding_mode {
> > >  	V4L2_MPEG_VIDEO_H264_FRAME_BASED_DECODING,
> > >  };
> > >  
> > > +enum v4l2_mpeg_video_h264_start_code {
> > > +	V4L2_MPEG_VIDEO_H264_NO_STARTCODE,
> > > +	V4L2_MPEG_VIDEO_H264_ANNEX_B_STARTCODE,
> 
> Could we apply the same START_CODE renaming here too?
> 
> I was also thinking that it would be slightly more readable put like this,
> with START_CODE as a prefix since it's common to both options and the name of
> the enum:
> 
> - V4L2_MPEG_VIDEO_H264_START_CODE_NONE
> - V4L2_MPEG_VIDEO_H264_START_CODE_ANNEX_B
> 

Yes, that looks much better.

Thanks,
Ezequiel


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
