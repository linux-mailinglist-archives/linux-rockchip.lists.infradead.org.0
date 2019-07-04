Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C1885F850
	for <lists+linux-rockchip@lfdr.de>; Thu,  4 Jul 2019 14:39:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kfazPauqPBT41KryPz3yR9Dt1aXaHZtckhCeDpi7LPU=; b=OitGrTi5rE93I9
	AR5Ylpufr6PGBU7qawn1At52tw4E5gPniXnjEoPF/0jDQlcmzivwNn18xKQ+w+um0wZLgV18eI7zm
	5Rl84wmI1sBth0D11DqmDN3aNM+2/L4qXEoz7dke/5UHipl/T37nZwosByYxrsRZXf9PQ5Tjq3MTL
	DqVUCvP9PrfaIRSzfPEAl87vRDtW5X5nbuqlOC1YYnseO71KyuP+a8f90JoTzIhhNPIEOLLIDLEZh
	odAozwtUJ4uQb1ecKOUpGt/XzALDghntneWJ2MAmlhpygH53tEH14DtYs5ZEMgyD496T8xGklbo7Y
	YCoetbKhW6ai2zksIjPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj11H-0000bD-Cu; Thu, 04 Jul 2019 12:39:23 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj11E-0000aV-CU
 for linux-rockchip@lists.infradead.org; Thu, 04 Jul 2019 12:39:21 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 3C0E028A758
Message-ID: <6b8d2c435335a81d362d18f23bc4229601b2f512.camel@collabora.com>
Subject: Re: [PATCH v2 1/2] media: uapi: Add VP8 stateless decoder API
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Philipp Zabel <p.zabel@pengutronix.de>, linux-media@vger.kernel.org, 
 Hans Verkuil <hans.verkuil@cisco.com>
Date: Thu, 04 Jul 2019 09:39:10 -0300
In-Reply-To: <1562164149.4604.9.camel@pengutronix.de>
References: <20190702170016.5210-1-ezequiel@collabora.com>
 <20190702170016.5210-2-ezequiel@collabora.com>
 <1562164149.4604.9.camel@pengutronix.de>
Organization: Collabora
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_053920_558119_ADC6B807 
X-CRM114-Status: GOOD (  15.99  )
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
 Boris Brezillon <boris.brezillon@collabora.com>, kernel@collabora.com,
 Pawel Osciak <posciak@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Philipp,

Thanks a lot for reviewing.

On Wed, 2019-07-03 at 16:29 +0200, Philipp Zabel wrote:
> On Tue, 2019-07-02 at 14:00 -0300, Ezequiel Garcia wrote:
> > From: Pawel Osciak <posciak@chromium.org>
> > 
> > Add the parsed VP8 frame pixel format and controls, to be used
> > with the new stateless decoder API for VP8 to provide parameters
> > for accelerator (aka stateless) codecs.
> > 
> > Signed-off-by: Pawel Osciak <posciak@chromium.org>
> > Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> > --
> > Changes from v1:
> > * Move 1-bit fields to flags in the respective structures.
> > * Add padding fields to make all structures 8-byte aligned.
> > * Reorder fields where needed to avoid padding as much as possible.
> > * Fix documentation as needed.
> > 
> > Changes from RFC:
> > * Make sure the uAPI has the same size on x86, x86_64, arm and arm64.
> > * Move entropy coder state fields to a struct.
> > * Move key_frame field to the flags.
> > * Remove unneeded first_part_offset field.
> > * Add documentation.
> > ---
> >  Documentation/media/uapi/v4l/biblio.rst       |  10 +
> >  .../media/uapi/v4l/ext-ctrls-codec.rst        | 323 ++++++++++++++++++
> >  .../media/uapi/v4l/pixfmt-compressed.rst      |  20 ++
> >  drivers/media/v4l2-core/v4l2-ctrls.c          |   8 +
> >  drivers/media/v4l2-core/v4l2-ioctl.c          |   1 +
> >  include/media/v4l2-ctrls.h                    |   3 +
> >  include/media/vp8-ctrls.h                     | 110 ++++++
> >  7 files changed, 475 insertions(+)
> >  create mode 100644 include/media/vp8-ctrls.h
> > 
[..]
> > +    * - __u8
> > +      - ``num_dct_parts``
> > +      - Number of DCT coefficients partitions.
> 
> I assume this must be no larger than 8. Is this mandated by the spec? If
> so, should it be documented here and checked by v4l2-core?
> 

Good catch.

Yes, it's mandated. The header [1] contains a two-bit field
called "log2_nbr_of_dct_partitions", so partition count must
be 1, 2, 4 or 8.
  
[1] https://www.rfc-editor.org/rfc/rfc6386.html#section-9.5

I'll add this to the documentation.

Also, I think this can be checked in std_validate().

Thanks,
Ezequiel


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
