Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE868193A0B
	for <lists+linux-rockchip@lfdr.de>; Thu, 26 Mar 2020 08:59:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xRl2o4rpwnHf9rbpVnjwLHW1hHUfkV60hjGV8/m0GDs=; b=Nvlox3HW/2AE3Q
	j4ATLeFIKdoeORPDrhbb9+tF2CxAl6h5iEm+OQPXHOU1lhG+moZuaoeP3xWSLj0eTxbxAhsYemMUt
	MQw0ECRzKg7q1rwT8eRtJtcu8XD3J0kM0ZBPmeyTcqQESP7JJpEI0mA8DzFy4O8jW/kCbFGPIForq
	9c1SKo7hDId0jKRUYQqzvLFMNzMmhga5aB11wY3HJEvNUJTw2UtqR60g1yZcuhC6x+JaHeVvV5VQh
	QXrhWB32xAzG9QjqobgBGpx1iqIXxazSd8WLx1kUiSfjwJAL8u0O6Z3AAp17Dd9Ui3ks/4wG+lm+f
	dplkcLc+TM1oou3YCUtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHNQF-0004LB-IB; Thu, 26 Mar 2020 07:59:27 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHNQB-0004FE-GI
 for linux-rockchip@lists.infradead.org; Thu, 26 Mar 2020 07:59:25 +0000
Received: by mail-vs1-xe43.google.com with SMTP id u11so3296134vsg.2
 for <linux-rockchip@lists.infradead.org>; Thu, 26 Mar 2020 00:59:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vAZVBkLRGJv2oi7jAEMUOJOw1QJGaYnHQ3j5Oreu2eQ=;
 b=HIBSzf0kp1JOCdIHwbzrxJIp0gczavqFHolfxguS51Vchs+kq69J+0W5f1aZMEQBHO
 NY+6LWD9XAQlVhK3LcG5TwDSoKVlUpyV489LMU8SDyAkECnM+PP78uEATInZ6c2TnaqU
 0zw/OTx7zDJWQPZz9ApysvJeTYe62MwzrL872Qht+YfliPdS7U3julxjT9PXUba3wgUt
 j0pWCG4u1M97aa7iaUL79sGFLWduK24EXo0SXEiM6pAA1PUs6I13wWkrubu7s9yG0GXn
 hFvPnUdTicQ0fcaVtjwoLdfBshHAslg1xx6cp2+URy8ECGly24YHbfqWaG9rTC8/16A1
 zJUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vAZVBkLRGJv2oi7jAEMUOJOw1QJGaYnHQ3j5Oreu2eQ=;
 b=NP+fe1lJDmo2PBi/rp+sHjp8u6P5V7Ce7VrPCXIV7Zg/Ce9tBaQPyCg4zQuW/0asNs
 sZI0xd5kyfn9dUG8iFGh+D6ZzKujkHSCLrYpGMFQRHNKlQtF0heCxAYSmRK2Kuy43wnq
 wYfeww5HIbw11WL+46SPHcvdSygYw2ByojoNqM5tXPurGZz5ygosYT8l1PWwJpdpi4y/
 yKiARA/c1UNAtgFT41+jg3tFkiQTtPdMsk8tbw1SgsTQHVC5M0nBKp0ZG6p+/Sk4i8dJ
 IZHKJZ7+/M8Qrf3TTj/dDv6txUsIlaP6mVa6yRHdKm+M69+cIuJL/kx2b0wVBKB3hl1y
 t58A==
X-Gm-Message-State: ANhLgQ2MBbcWOqHqIysyivIeIoSmP/l0qJS4/7JDIOTh6UESPR4R/LDX
 RefOb/IyLL13S/hiQxCkv79sUWP98E+kAl20nP8=
X-Google-Smtp-Source: ADFU+vv/iFVGhwlsjW0K//ZMHGngT1zNGabMUSLzJvS065QB3oQR4Nu5hcEEObb2LGivsMgaPCf3lXNcGM0O7mkZq5U=
X-Received: by 2002:a67:fad8:: with SMTP id g24mr5490268vsq.136.1585209560880; 
 Thu, 26 Mar 2020 00:59:20 -0700 (PDT)
MIME-Version: 1.0
References: <20200325212704.29862-1-dafna.hirschfeld@collabora.com>
 <20200325212704.29862-2-dafna.hirschfeld@collabora.com>
 <20200325222621.GX19171@pendragon.ideasonboard.com>
In-Reply-To: <20200325222621.GX19171@pendragon.ideasonboard.com>
From: Dafna Hirschfeld <dafna3@gmail.com>
Date: Thu, 26 Mar 2020 08:59:04 +0100
Message-ID: <CAJ1myNS5jdqCXAtueA_j+ULkiioDxhegfCLQWFXrvL6_AYPwFg@mail.gmail.com>
Subject: Re: [PATCH 1/2] media: media.h: Add a pad flag MEDIA_PAD_FL_METADATA
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_005923_551550_40354B72 
X-CRM114-Status: GOOD (  22.35  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dafna3[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [dafna3[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Helen Koike <helen.koike@collabora.com>, sakari.ailus@linux.intel.com,
 kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, Mar 25, 2020 at 11:26 PM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Dafna,
>
> Thank you for the patch.
>
> On Wed, Mar 25, 2020 at 10:27:03PM +0100, Dafna Hirschfeld wrote:
> > Add a flag to the flags field of 'struct media_pad_desc'
> > that indicates that the data transmitted by the pad is
> > metadata.
> >
> > Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> > ---
> >  Documentation/media/uapi/mediactl/media-types.rst | 4 ++++
> >  include/uapi/linux/media.h                        | 1 +
> >  2 files changed, 5 insertions(+)
> >
> > diff --git a/Documentation/media/uapi/mediactl/media-types.rst b/Documentation/media/uapi/mediactl/media-types.rst
> > index 3af6a414b501..4ca902478971 100644
> > --- a/Documentation/media/uapi/mediactl/media-types.rst
> > +++ b/Documentation/media/uapi/mediactl/media-types.rst
> > @@ -361,6 +361,7 @@ Types and flags used to represent the media graph elements
> >  .. _MEDIA-PAD-FL-SINK:
> >  .. _MEDIA-PAD-FL-SOURCE:
> >  .. _MEDIA-PAD-FL-MUST-CONNECT:
> > +.. _MEDIA-PAD-FL-METADATA:
> >
> >  .. flat-table:: Media pad flags
> >      :header-rows:  0
> > @@ -381,6 +382,9 @@ Types and flags used to represent the media graph elements
> >         configuration dependent) for the pad to need enabled links even
> >         when this flag isn't set; the absence of the flag doesn't imply
> >         there is none.
> > +    *  -  ``MEDIA_PAD_FL_METADATA``
> > +       -  This flag indicates that the data transmitted by the pad is of
> > +          type metadata.
> >
> >
> >  One and only one of ``MEDIA_PAD_FL_SINK`` and ``MEDIA_PAD_FL_SOURCE``
> > diff --git a/include/uapi/linux/media.h b/include/uapi/linux/media.h
> > index 383ac7b7d8f0..ae37226eb5c9 100644
> > --- a/include/uapi/linux/media.h
> > +++ b/include/uapi/linux/media.h
> > @@ -210,6 +210,7 @@ struct media_entity_desc {
> >  #define MEDIA_PAD_FL_SINK                    (1 << 0)
> >  #define MEDIA_PAD_FL_SOURCE                  (1 << 1)
> >  #define MEDIA_PAD_FL_MUST_CONNECT            (1 << 2)
> > +#define MEDIA_PAD_FL_METADATA                        (1 << 3)
>
> I think we need to reserve a few bits here. We'll have more than
> metadata. Audio comes to mind, there will likely be more. Having
> independent flags would not only waste a bit of space in the bitfield
> (not that we're about to run out of bits, but still), but would make it
> possible to specify invalid configurations such as MEDIA_PAD_FL_METADATA
> | MEDIA_PAD_FL_AUDIO. And now that I've written this, I realize that
> audio metadata could be a thing, so maybe a metadata flag is actually
> the best option :-)
hehe, ok, but drivers that set the METADATA flag should also set the media
bus code to MEDIA_BUS_FMT_FIXED ? If yes then setting
the METADATA flag with a different media bus is also an invalid configuration.

>
> There are pros and cons for both options, so I won't recommend one.
>
> >  struct media_pad_desc {
> >       __u32 entity;           /* entity ID */
>
> --
> Regards,
>
> Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
