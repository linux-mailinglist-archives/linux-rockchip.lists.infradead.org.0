Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02405197C21
	for <lists+linux-rockchip@lfdr.de>; Mon, 30 Mar 2020 14:43:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ISi378v78gqxr5t4/084T5BvA00nqp/wU3g7gsLdK0=; b=c8ccnJqzUhjcTS
	Y+fQRL1pI5kKIvSehdRw2QTbC6L+kHD6DgSZr6/wf3yclCVT5pywXCW8PmzzeZznKTovv9D8JChFY
	51yjSy7UlI7VWAg9+3BYobGff4Wo2vz0nmKo0I7fSpz+IfM7u253vsJWIbN3zl9gg7cd9OC4A6bhL
	hEFt9NTuXJE8TxYXA5/TzYPTF5pZQrfw6crP9DjqDx2B7PE0PDvFxwL6RAKTGZw0aPzgskxMJkT+1
	+F0iUUd8g3mL+lSCo2lJcGbm45A/VrhjRRSystTjNGoT1w73DH5utsuZ+E9MQw+GMSxvvtvFRvzJH
	cF51x9+j9DS5JkogmR0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jItkp-0008Po-7K; Mon, 30 Mar 2020 12:42:59 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jItkm-0008P6-8C
 for linux-rockchip@lists.infradead.org; Mon, 30 Mar 2020 12:42:57 +0000
Received: by mail-ua1-x942.google.com with SMTP id f9so6206763uaq.8
 for <linux-rockchip@lists.infradead.org>; Mon, 30 Mar 2020 05:42:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=P3f4QjzoEWzmPU05IvrxEoxBeA07POXomzrQs7ckUag=;
 b=qQiSZlqtGJ+OAaLNVbDwPrvmGxTADLHjhq1QYUlzJju4zAaUV58ZMjk5h3nS7Yqbij
 GgkJ4RTDf3uqyu1E7d66PIM1OaVY08dxlJnyoZ+8nJ123L9ILH4z/FbdIFriO4/thubV
 Pqipl11ocX3Cv1QL69rxRRr4B5q6n7NSnpAJEzJ1w8z+T6rsnGHhxDwAQT9eT9BGJHib
 /IUQ/v3Dus7D2i1vB3B1V3JZFnkNOLAub7ze/fFPbYtFkwB6XgsBT1nN/eeIP5cCKSm7
 zHjI9AmfVIKw0dhNUr5zDrN+iGB0T7Ej8hRbvWBxSzaseGo5IOj/5Hqdh3VoIiVNNDH1
 iPGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=P3f4QjzoEWzmPU05IvrxEoxBeA07POXomzrQs7ckUag=;
 b=tOUvk3BYsOR3nx7ZOJr8zl6i0vaDZna4umYZihGqdbOzwElRRQM3/Z4t997X/3UfqB
 8ApSAsIcdDfgTGM6uFPH10EoD+/gzGIqswJfiQknNXk8X+opYMF7XPllsvU9GVE5zEMc
 SMS3vU6tLFOE6RuHBMEOoW9KQf2pejnOLGUnH6zXdpfIyw1u8trsVb4TkJbX3rpWkJIC
 4JzAuhp/drY7f4JaB9jyJjF6dxNzj3lm6TjP6iUrwWfmglfCBLNhxfg3eb47WcrM+oPq
 FUADSmp82NQvjyVlxaQe6P7ofu6BC15VZLxZNha2TPwrETRfvBfRGgd1wlJqNPWqwuLC
 UGsg==
X-Gm-Message-State: AGi0PuY3pRfXD4HAvPMfgRg21ftQojsoPQwmrb9TZTMPhp5JN2A+2x/2
 uR48fCEhnojBBX1U9s3MCdMCKh1IAwTsEuzMDA0=
X-Google-Smtp-Source: APiQypIW7gw0WKHdd0Vi7T7ZBRFpFLq8eGa1tFtQDMXmL2dpB7wRKz3+sDskCORE9TPjj1DN9S+CfVLOt1G5Z/3RwIM=
X-Received: by 2002:a9f:300a:: with SMTP id h10mr7430092uab.91.1585572174156; 
 Mon, 30 Mar 2020 05:42:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200325212704.29862-1-dafna.hirschfeld@collabora.com>
 <20200325212704.29862-2-dafna.hirschfeld@collabora.com>
 <20200325222621.GX19171@pendragon.ideasonboard.com>
 <CAJ1myNS5jdqCXAtueA_j+ULkiioDxhegfCLQWFXrvL6_AYPwFg@mail.gmail.com>
 <20200327080858.GB23713@kekkonen.localdomain>
In-Reply-To: <20200327080858.GB23713@kekkonen.localdomain>
From: Dafna Hirschfeld <dafna3@gmail.com>
Date: Mon, 30 Mar 2020 14:42:37 +0200
Message-ID: <CAJ1myNTT8NGNpSU10pwjd6wTES22g28dNFLwRPjrYkNsXd_D5w@mail.gmail.com>
Subject: Re: [PATCH 1/2] media: media.h: Add a pad flag MEDIA_PAD_FL_METADATA
To: Sakari Ailus <sakari.ailus@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_054256_328306_21109420 
X-CRM114-Status: GOOD (  26.85  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dafna3[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [dafna3[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Fri, Mar 27, 2020 at 9:09 AM Sakari Ailus
<sakari.ailus@linux.intel.com> wrote:
>
> Dafna, Laurent,
>
> On Thu, Mar 26, 2020 at 08:59:04AM +0100, Dafna Hirschfeld wrote:
> > On Wed, Mar 25, 2020 at 11:26 PM Laurent Pinchart
> > <laurent.pinchart@ideasonboard.com> wrote:
> > >
> > > Hi Dafna,
> > >
> > > Thank you for the patch.
> > >
> > > On Wed, Mar 25, 2020 at 10:27:03PM +0100, Dafna Hirschfeld wrote:
> > > > Add a flag to the flags field of 'struct media_pad_desc'
> > > > that indicates that the data transmitted by the pad is
> > > > metadata.
> > > >
> > > > Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> > > > ---
> > > >  Documentation/media/uapi/mediactl/media-types.rst | 4 ++++
> > > >  include/uapi/linux/media.h                        | 1 +
> > > >  2 files changed, 5 insertions(+)
> > > >
> > > > diff --git a/Documentation/media/uapi/mediactl/media-types.rst b/Documentation/media/uapi/mediactl/media-types.rst
> > > > index 3af6a414b501..4ca902478971 100644
> > > > --- a/Documentation/media/uapi/mediactl/media-types.rst
> > > > +++ b/Documentation/media/uapi/mediactl/media-types.rst
> > > > @@ -361,6 +361,7 @@ Types and flags used to represent the media graph elements
> > > >  .. _MEDIA-PAD-FL-SINK:
> > > >  .. _MEDIA-PAD-FL-SOURCE:
> > > >  .. _MEDIA-PAD-FL-MUST-CONNECT:
> > > > +.. _MEDIA-PAD-FL-METADATA:
> > > >
> > > >  .. flat-table:: Media pad flags
> > > >      :header-rows:  0
> > > > @@ -381,6 +382,9 @@ Types and flags used to represent the media graph elements
> > > >         configuration dependent) for the pad to need enabled links even
> > > >         when this flag isn't set; the absence of the flag doesn't imply
> > > >         there is none.
> > > > +    *  -  ``MEDIA_PAD_FL_METADATA``
> > > > +       -  This flag indicates that the data transmitted by the pad is of
> > > > +          type metadata.
> > > >
> > > >
> > > >  One and only one of ``MEDIA_PAD_FL_SINK`` and ``MEDIA_PAD_FL_SOURCE``
> > > > diff --git a/include/uapi/linux/media.h b/include/uapi/linux/media.h
> > > > index 383ac7b7d8f0..ae37226eb5c9 100644
> > > > --- a/include/uapi/linux/media.h
> > > > +++ b/include/uapi/linux/media.h
> > > > @@ -210,6 +210,7 @@ struct media_entity_desc {
> > > >  #define MEDIA_PAD_FL_SINK                    (1 << 0)
> > > >  #define MEDIA_PAD_FL_SOURCE                  (1 << 1)
> > > >  #define MEDIA_PAD_FL_MUST_CONNECT            (1 << 2)
> > > > +#define MEDIA_PAD_FL_METADATA                        (1 << 3)
> > >
> > > I think we need to reserve a few bits here. We'll have more than
> > > metadata. Audio comes to mind, there will likely be more. Having
> > > independent flags would not only waste a bit of space in the bitfield
> > > (not that we're about to run out of bits, but still), but would make it
> > > possible to specify invalid configurations such as MEDIA_PAD_FL_METADATA
> > > | MEDIA_PAD_FL_AUDIO. And now that I've written this, I realize that
> > > audio metadata could be a thing, so maybe a metadata flag is actually
> > > the best option :-)
> > hehe, ok, but drivers that set the METADATA flag should also set the media
> > bus code to MEDIA_BUS_FMT_FIXED ? If yes then setting
> > the METADATA flag with a different media bus is also an invalid configuration.
>
> That may be currently the case, but not all non-image data (metadata in
> practice) will be using MEDIA_BUS_FMT_FIXED, for instance sensor embedded
> data when we support that in upstream.
>
> Note that whether metadata flows over a pad is dynamic configuration. I
> wonder if it is useful to tell this to the user, as the user, in many
> cases, will be making the configuration affecting this. There definitely

Hi, you mean that there might be pads that can either support metadata
or non-metadata?
Currently there is no media bus for METDATA so with the flag userspace
knows it is metadata.

> are devices where this configuration would be static, but many of those
> cases (ISPs in particular) have DMAs (i.e. video nodes) directly connected
> over a link, where you'll find this information on the video node.

>
> --
> Regards,
>
> Sakari Ailus

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
