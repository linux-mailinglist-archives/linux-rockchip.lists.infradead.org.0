Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC6E195298
	for <lists+linux-rockchip@lfdr.de>; Fri, 27 Mar 2020 09:09:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VfwmMuGgEYKat5rcIi5PJyT1HBarQHHKDOVLYzY3nlk=; b=rVRpUXSpG0Lzxd
	L7+J2A1Qbb6PWLiAY7ul28wQ94nl/+hEKV2Yuh93p2QndKfU354fXxjf1yJEsMJjzxLaI5E8o6TJe
	SlxzXwmN/iVHbqKtAVKGq5GeaOutK+BIo66jGenoar7SNKCiZJbn57uQA6RtvZDV4ML9z9m2hGI+J
	LYvzJqn7NSAPuJKJpsLjI9xwQoYuG9mxv1mpRxfMlVQOUP/3ThibuQ+Whq8QrCkBDOGMtZ6R38CUQ
	P5pMZ0eF3krjpOYegWbK0vixsUwOyTLm7PA7uBIwGz2hW1GuwjLoAXk3Q4KHKLfuf23ZhEZcwzGMP
	kbKY3AgMeZMMHuKMY5Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHk3F-0006dY-2q; Fri, 27 Mar 2020 08:09:13 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHk3C-0006cy-HH
 for linux-rockchip@lists.infradead.org; Fri, 27 Mar 2020 08:09:11 +0000
IronPort-SDR: WXR8p9DSMY0Zrg92tmYKxYOunzu/8GkgvVOtxHQ/ArQm4ifJ2G36VytaZk3HSZd0LM1Vsqr6tu
 LK7DIK6A9VgQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2020 01:09:09 -0700
IronPort-SDR: 5J/RwyflbWm32w71GF4z5lmYGOl2kbe497SSuaCuBRRLLps1quezNfpbggSyq9bGdKLmHglGB0
 ujwe7da4WDxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,311,1580803200"; d="scan'208";a="236561315"
Received: from jmikkola-mobl1.ger.corp.intel.com (HELO kekkonen.fi.intel.com)
 ([10.252.32.179])
 by orsmga007.jf.intel.com with ESMTP; 27 Mar 2020 01:09:05 -0700
Received: by kekkonen.fi.intel.com (Postfix, from userid 1000)
 id DB1CE21F8C; Fri, 27 Mar 2020 10:08:58 +0200 (EET)
Date: Fri, 27 Mar 2020 10:08:58 +0200
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Dafna Hirschfeld <dafna3@gmail.com>
Subject: Re: [PATCH 1/2] media: media.h: Add a pad flag MEDIA_PAD_FL_METADATA
Message-ID: <20200327080858.GB23713@kekkonen.localdomain>
References: <20200325212704.29862-1-dafna.hirschfeld@collabora.com>
 <20200325212704.29862-2-dafna.hirschfeld@collabora.com>
 <20200325222621.GX19171@pendragon.ideasonboard.com>
 <CAJ1myNS5jdqCXAtueA_j+ULkiioDxhegfCLQWFXrvL6_AYPwFg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJ1myNS5jdqCXAtueA_j+ULkiioDxhegfCLQWFXrvL6_AYPwFg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_010910_622141_06A7AB70 
X-CRM114-Status: GOOD (  26.11  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mchehab@kernel.org, Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, linux-rockchip@lists.infradead.org,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Dafna, Laurent,

On Thu, Mar 26, 2020 at 08:59:04AM +0100, Dafna Hirschfeld wrote:
> On Wed, Mar 25, 2020 at 11:26 PM Laurent Pinchart
> <laurent.pinchart@ideasonboard.com> wrote:
> >
> > Hi Dafna,
> >
> > Thank you for the patch.
> >
> > On Wed, Mar 25, 2020 at 10:27:03PM +0100, Dafna Hirschfeld wrote:
> > > Add a flag to the flags field of 'struct media_pad_desc'
> > > that indicates that the data transmitted by the pad is
> > > metadata.
> > >
> > > Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> > > ---
> > >  Documentation/media/uapi/mediactl/media-types.rst | 4 ++++
> > >  include/uapi/linux/media.h                        | 1 +
> > >  2 files changed, 5 insertions(+)
> > >
> > > diff --git a/Documentation/media/uapi/mediactl/media-types.rst b/Documentation/media/uapi/mediactl/media-types.rst
> > > index 3af6a414b501..4ca902478971 100644
> > > --- a/Documentation/media/uapi/mediactl/media-types.rst
> > > +++ b/Documentation/media/uapi/mediactl/media-types.rst
> > > @@ -361,6 +361,7 @@ Types and flags used to represent the media graph elements
> > >  .. _MEDIA-PAD-FL-SINK:
> > >  .. _MEDIA-PAD-FL-SOURCE:
> > >  .. _MEDIA-PAD-FL-MUST-CONNECT:
> > > +.. _MEDIA-PAD-FL-METADATA:
> > >
> > >  .. flat-table:: Media pad flags
> > >      :header-rows:  0
> > > @@ -381,6 +382,9 @@ Types and flags used to represent the media graph elements
> > >         configuration dependent) for the pad to need enabled links even
> > >         when this flag isn't set; the absence of the flag doesn't imply
> > >         there is none.
> > > +    *  -  ``MEDIA_PAD_FL_METADATA``
> > > +       -  This flag indicates that the data transmitted by the pad is of
> > > +          type metadata.
> > >
> > >
> > >  One and only one of ``MEDIA_PAD_FL_SINK`` and ``MEDIA_PAD_FL_SOURCE``
> > > diff --git a/include/uapi/linux/media.h b/include/uapi/linux/media.h
> > > index 383ac7b7d8f0..ae37226eb5c9 100644
> > > --- a/include/uapi/linux/media.h
> > > +++ b/include/uapi/linux/media.h
> > > @@ -210,6 +210,7 @@ struct media_entity_desc {
> > >  #define MEDIA_PAD_FL_SINK                    (1 << 0)
> > >  #define MEDIA_PAD_FL_SOURCE                  (1 << 1)
> > >  #define MEDIA_PAD_FL_MUST_CONNECT            (1 << 2)
> > > +#define MEDIA_PAD_FL_METADATA                        (1 << 3)
> >
> > I think we need to reserve a few bits here. We'll have more than
> > metadata. Audio comes to mind, there will likely be more. Having
> > independent flags would not only waste a bit of space in the bitfield
> > (not that we're about to run out of bits, but still), but would make it
> > possible to specify invalid configurations such as MEDIA_PAD_FL_METADATA
> > | MEDIA_PAD_FL_AUDIO. And now that I've written this, I realize that
> > audio metadata could be a thing, so maybe a metadata flag is actually
> > the best option :-)
> hehe, ok, but drivers that set the METADATA flag should also set the media
> bus code to MEDIA_BUS_FMT_FIXED ? If yes then setting
> the METADATA flag with a different media bus is also an invalid configuration.

That may be currently the case, but not all non-image data (metadata in
practice) will be using MEDIA_BUS_FMT_FIXED, for instance sensor embedded
data when we support that in upstream.

Note that whether metadata flows over a pad is dynamic configuration. I
wonder if it is useful to tell this to the user, as the user, in many
cases, will be making the configuration affecting this. There definitely
are devices where this configuration would be static, but many of those
cases (ISPs in particular) have DMAs (i.e. video nodes) directly connected
over a link, where you'll find this information on the video node.

-- 
Regards,

Sakari Ailus

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
