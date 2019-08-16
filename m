Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA269019E
	for <lists+linux-rockchip@lfdr.de>; Fri, 16 Aug 2019 14:32:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HAsHjtTqc5plutaxyC0Ifd3PaG63fHV1KkK0ta1zC/k=; b=cuKCupXYDJOyGK
	avSJf1U2/1DXnAdioveo30mkIK6SJoWIF3+Ot0nJWri+s90ynerAroZuQ1LKq+NE1HL4pQv6c5UQd
	7koaEiPFnCo/uPBRulAtg08dBkOrQXsxYSX2i/7X3aVO79z9P6mRnvRaZoFqZMXbrP2f4CRS7SW+7
	E6oF3Ja8zb0IwjiK9TJ/jPaHnPeHD8AJA28m3BNV/8p4qABlk+ZU2Vn+qwTJcaVx8C5oJiinJ5FiF
	1n3qs1PYoFE0rKGHkTlX/lXQ00vrUnJ8gjv+5MKTAHGbzg5dJQtNEbgu0yZZRVEuAT5JkMnFTOzze
	8scTTWfYPH1WGhTF9GKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hybP4-0004J3-H4; Fri, 16 Aug 2019 12:32:22 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hybP0-0004II-UG
 for linux-rockchip@lists.infradead.org; Fri, 16 Aug 2019 12:32:20 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id BFCDE28D1AD
Message-ID: <4708223638fb8aa6214a58cb9a05c525625020cf.camel@collabora.com>
Subject: Re: [PATCH v6 07/11] media: cedrus: Specify H264 startcode and
 decoding mode
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Hans Verkuil <hverkuil@xs4all.nl>, linux-media@vger.kernel.org
Date: Fri, 16 Aug 2019 09:32:07 -0300
In-Reply-To: <a7dab464-5be0-ff9d-7547-735a83e87e14@xs4all.nl>
References: <20190814195931.6587-1-ezequiel@collabora.com>
 <20190814195931.6587-8-ezequiel@collabora.com>
 <a7dab464-5be0-ff9d-7547-735a83e87e14@xs4all.nl>
Organization: Collabora
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_053219_102760_E64F88FD 
X-CRM114-Status: GOOD (  15.13  )
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

On Fri, 2019-08-16 at 09:38 +0200, Hans Verkuil wrote:
> On 8/14/19 9:59 PM, Ezequiel Garcia wrote:
> > The cedrus VPU is slice-based and expects V4L2_PIX_FMT_H264_SLICE
> > buffers to contain H264 slices with no start code.
> > 
> > Expose this to userspace with the newly added menu control.
> > 
> > These two controls are specified as mandatory for applications,
> > but we mark them as non-required on the driver side for
> > backwards compatibility.
> > 
> > Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> > ---
> > Changes in v6:
> > * Adjust to control renames.
> > Changes in v5:
> > * Clarify commit log.
> > Changes in v4:
> > * New patch.
> > ---
> >  drivers/staging/media/sunxi/cedrus/cedrus.c | 20 ++++++++++++++++++++
> >  1 file changed, 20 insertions(+)
> > 
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.c b/drivers/staging/media/sunxi/cedrus/cedrus.c
> > index 7bdc413bf727..69a836aa11ef 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus.c
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus.c
> > @@ -77,6 +77,26 @@ static const struct cedrus_control cedrus_controls[] = {
> >  		.codec		= CEDRUS_CODEC_H264,
> >  		.required	= true,
> >  	},
> > +	{
> > +		.cfg = {
> > +			.id	= V4L2_CID_MPEG_VIDEO_H264_DECODE_MODE,
> > +			.max	= V4L2_MPEG_VIDEO_H264_DECODE_MODE_SLICE_BASED,
> > +			.def	= V4L2_MPEG_VIDEO_H264_DECODE_MODE_SLICE_BASED,
> > +			.menu_skip_mask = BIT(V4L2_MPEG_VIDEO_H264_DECODE_MODE_FRAME_BASED),
> 
> You don't need this: DECODE_MODE_FRAME_BASED > DECODE_MODE_SLICE_BASED (the max
> value). So no need to set the skip_mask since it is out of range.
> 
> > +		},
> > +		.codec		= CEDRUS_CODEC_H264,
> > +		.required	= false,
> > +	},
> > +	{
> > +		.cfg = {
> > +			.id	= V4L2_CID_MPEG_VIDEO_H264_START_CODE,
> > +			.max	= V4L2_MPEG_VIDEO_H264_START_CODE_NONE,
> > +			.def	= V4L2_MPEG_VIDEO_H264_START_CODE_NONE,
> > +			.menu_skip_mask = BIT(V4L2_MPEG_VIDEO_H264_START_CODE_ANNEX_B),
> 
> Ditto.
> 

I see.

I'll fix this.

> Regards,
> 
> 	Hans
> 
> > +		},
> > +		.codec		= CEDRUS_CODEC_H264,
> > +		.required	= false,
> > +	},
> >  };
> >  
> >  #define CEDRUS_CONTROLS_COUNT	ARRAY_SIZE(cedrus_controls)
> > 



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
