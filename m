Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 661A492722
	for <lists+linux-rockchip@lfdr.de>; Mon, 19 Aug 2019 16:39:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WWTmZyl1zMyuKnu4DFGUeCFwJxC6alaTAELMo9gv9EE=; b=Mcj4jAlogfXRwa
	r5fzek2JwNtrkufLDQzX1ne2NJKvPHPt+VKxa8QzfxTDVFcejnSGpTW8XyxFrRVne15n5Y0JXq//H
	gjwv73suFeOvJvqqlu5zwnZtswBMP8s25Y42vqUvGCagowDHqE/Qypi2/VlLjdhjnCbJk4coiWIJT
	TSexclSCaT3QMb7vGXFpGRc/Mr2hfRq/LkeLsR08QSgaLWTpXsGOz3eULwFI4zl3K8uPhWW4wMeYW
	+onuMC9uQ41OeD8l4d3qZu+V4qwnMEwYsW/uQ04IwwVGOtvkmn8KFhwRdjBv8Uz64kOda98/pg0gs
	59n2vX49wZScAgd/ONag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzioP-0004y7-8G; Mon, 19 Aug 2019 14:39:09 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzioL-0004x0-D7
 for linux-rockchip@lists.infradead.org; Mon, 19 Aug 2019 14:39:06 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 92748283C05
Message-ID: <a0b1f5806a0a5e5a58f1702485e36ec669c32f81.camel@collabora.com>
Subject: Re: [PATCH v7 02/11] media: uapi: h264: Rename pixel format
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Date: Mon, 19 Aug 2019 11:38:51 -0300
In-Reply-To: <20190819124110.GB32182@aptenodytes>
References: <20190816160132.7352-1-ezequiel@collabora.com>
 <20190816160132.7352-3-ezequiel@collabora.com>
 <20190819124110.GB32182@aptenodytes>
Organization: Collabora
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_073905_572007_83910529 
X-CRM114-Status: GOOD (  17.24  )
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

On Mon, 2019-08-19 at 14:41 +0200, Paul Kocialkowski wrote:
> Hi,
> 
> On Fri 16 Aug 19, 13:01, Ezequiel Garcia wrote:
> > The V4L2_PIX_FMT_H264_SLICE_RAW name was originally suggested
> > because the pixel format would represent H264 slices without any
> > start code.
> > 
> > However, as we will now introduce a start code menu control,
> > give the pixel format a more meaningful name, while it's
> > still early enough to do so.
> 
> I definitely agree that SLICE_RAW is not the suffix we are looking for, but I'm
> not sure that _SLICE is self-describing given that we can operate either
> per-frame or per-slice, and _SLICE sort of implies the latter.

This is not entirely so, per-frame or per-slice mode refer to the granularity
of the stateless API, the pixel format is still composed of H264 NALU slices.

As per the documentation, the decode_mode and the start_code are modifiers
of the pixel format. As long as this is properly speced, the
V4L2_PIX_FMT_H264_SLICE looks pretty OK to me.

>  Also, VP8 uses
> _FRAME to clearly indicate that it operates per-frame.
> 

This is because VP8 doesn't have any concept of slices, the encoded unit
is a video frame.

> In addition, the _SLICE suffix is used by MPEG-2 in the stable API. Since we
> certainly want MPEG-2 to allow per-slice and per-frame decoding as well as
> H.264 and that the _SLICE format is specified to be the broken "concatenated
> slices" that cedrus expects, we probably want to use another suffix. This way,
> we could deprecated MPEG2_SLICE and introduce a new format for MPEG-2 that would
> have consistent naming with the other mpeg formats.
> 
> One suggestion I had was to call it H264_PARSED (and apply this to MPEG-2 and
> HEVC when similar controls to H.264 are set in place for them). I think Hans had
> another suggestion for the name but I don't recall what it was at this point.
> 
> Either way, if this has to be some debate, we could perhaps take it off your
> series and stay with SLICE_RAW for now, as long as we do rename it before making
> the API stable.
> 
> What do you think?
> 

With the new pixel format modifiers (decode_mode and start_code), the _RAW suffix
now has no meaning. Now, we could name it _PARSED or _SLICE. As long as this is
properly documented (as it is now), that'd be fine.

Now, to be completely honest, this discussion sounds like
bikeshedding to me.

Thanks,
Eze


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
