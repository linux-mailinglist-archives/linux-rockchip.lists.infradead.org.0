Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45E91996F0
	for <lists+linux-rockchip@lfdr.de>; Thu, 22 Aug 2019 16:39:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7zitN42fLMbdAU+ExW9HE1DeLc/SIn1BOZ0WrFVmjAY=; b=a7ZrJcjB9B79lY
	QtcaLUvxL6kol8aqAwOL2CixYi3zqdPqhEB8D6oGTR7TDbcM8QhSRbUJyIe5uTMb0gWsWndPPn1Hh
	u411RjDkonW41YjOFMhzckrkviz+keXibdHmHg6aiMVgcxDtyUQIuaIwNHLeKPSwDaDk0mYfC0hFQ
	NxDAeq/qsl5uVvnIVjQ1V1Cuc0M5FuB0K25omiNWsXGQTY23F6OCM4L/Kn0bLSwF6KP2hhWAtW1Tc
	9mX6Y4Jw7IP0ZfXRXEdeccpJM+4A38rDsHypZfkvWu2e1cpDpgnWG1VS5C4CfJwiy9EhTsPEonJfA
	eXu+vov3Xv3wIbjX1rSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0oEs-0001oz-3M; Thu, 22 Aug 2019 14:38:58 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0oEp-0001oB-9m
 for linux-rockchip@lists.infradead.org; Thu, 22 Aug 2019 14:38:57 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 8DB5828D11B
Message-ID: <5ad0899e81ef8f22545bcb6b01833c493ce2bdc9.camel@collabora.com>
Subject: Re: [PATCH v7 02/11] media: uapi: h264: Rename pixel format
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Hans Verkuil <hverkuil@xs4all.nl>, Paul Kocialkowski
 <paul.kocialkowski@bootlin.com>
Date: Thu, 22 Aug 2019 11:38:42 -0300
In-Reply-To: <5a6432ce-6d90-9efa-9ae8-400b5ca1d653@xs4all.nl>
References: <20190816160132.7352-1-ezequiel@collabora.com>
 <20190816160132.7352-3-ezequiel@collabora.com>
 <20190819124110.GB32182@aptenodytes>
 <e618bf01-3f82-ff06-1842-9d21a379d7ee@xs4all.nl>
 <20190822115453.GA1627@aptenodytes>
 <5a6432ce-6d90-9efa-9ae8-400b5ca1d653@xs4all.nl>
Organization: Collabora
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_073855_593395_B0E98A21 
X-CRM114-Status: GOOD (  24.20  )
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

On Thu, 2019-08-22 at 15:47 +0200, Hans Verkuil wrote:
> On 8/22/19 1:54 PM, Paul Kocialkowski wrote:
> > Hi,
> > 
> > On Mon 19 Aug 19, 17:53, Hans Verkuil wrote:
> > > On 8/19/19 2:41 PM, Paul Kocialkowski wrote:
> > > > Hi,
> > > > 
> > > > On Fri 16 Aug 19, 13:01, Ezequiel Garcia wrote:
> > > > > The V4L2_PIX_FMT_H264_SLICE_RAW name was originally suggested
> > > > > because the pixel format would represent H264 slices without any
> > > > > start code.
> > > > > 
> > > > > However, as we will now introduce a start code menu control,
> > > > > give the pixel format a more meaningful name, while it's
> > > > > still early enough to do so.
> > > > 
> > > > I definitely agree that SLICE_RAW is not the suffix we are looking for, but I'm
> > > > not sure that _SLICE is self-describing given that we can operate either
> > > > per-frame or per-slice, and _SLICE sort of implies the latter. Also, VP8 uses
> > > > _FRAME to clearly indicate that it operates per-frame.
> > > 
> > > Well, VP8 doesn't support slices at all.
> > > 
> > > > In addition, the _SLICE suffix is used by MPEG-2 in the stable API. Since we
> > > 
> > > Regarding MPEG-2: while it has a concept of slices, it is my understanding
> > > that you never process slices separately, but only full pictures. I may be
> > > wrong here.
> > 
> > I don't think that is the case since ffmpeg clearly implements decoding on a
> > per-slice basis (mpeg_decode_slice).
> > 
> > Information is also passed on a per-slice basis to VAAPI 
> > (vaapi_mpeg2_decode_slice) with a distinct data buffer and slice parameter
> > buffer for each slice. Among other things, it contains the vertical and
> > horizontal positions for the slice, which we can set in the hardware.
> > 
> > > > certainly want MPEG-2 to allow per-slice and per-frame decoding as well as
> > > > H.264 and that the _SLICE format is specified to be the broken "concatenated
> > > > slices" that cedrus expects, we probably want to use another suffix. This way,
> > > > we could deprecated MPEG2_SLICE and introduce a new format for MPEG-2 that would
> > > > have consistent naming with the other mpeg formats.
> > > 
> > > I actually think that H264_SLICE is a decent name.
> > > 
> > > I'm less sure about MPEG2_SLICE since I am not sure if it means the same as
> > > a H264 slice.
> > 
> > The main problem I see is that we have already specified MPEG2_SLICE in a way
> > that is incompatible with the future improvments we want to bring to the API:
> > " The output buffer must contain the appropriate number of macroblocks to
> > decode a full corresponding frame to the matching capture buffer."
> > 
> > So I only see two possibilities: either we decide to change the specification
> > of the pixel format and we can keep using the _SLICE suffix, either we need to
> > introduce a new pixel format with another suffix, which should also be reflected
> > on other MPEG formats for consistency. Then we can deprecate MPEG2_SLICE and
> > have drivers stop using it.
> > 
> > What do you think?
> 
> I'd change the specification of the pixel format. So MPEG2_SLICE now supports
> multiple slices if the hardware supports it as well.
> 
> We would need an MPEG2_DECODING_MODE control as well, that currently would
> read FRAME based only.
> 

That's exactly what I was about to suggest.

Regards,
Ezequiel


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
