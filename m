Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A76DB1E7E9C
	for <lists+linux-rockchip@lfdr.de>; Fri, 29 May 2020 15:26:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wuLQ21adT1BrVaShMyYRfuYxLZYxWYqrvWprUY/YdTc=; b=ua/0uVCyXeXBRD
	jTYhkxbLhc9x/AL0xOcEP85ApnMTGN6QmHYJYIvcpZX5AWCFyHiskcJxOx/ejpC9Jwl0Tv5W0IEb9
	3xEhOHmLXI08fZbLYNnmYi4pMoMRHHiSdIq+25vSD61PHsiATYmo64pmZ1rZ7h/4Jkn/rgD3/oENu
	RXr7wK+5kiyBAZypOWLxLCZyBK3kqKidqyxyU/aTaQ2HltDU25EMwzHY0GuvgFzvk+rR4DZab4dwj
	evjcsYFfVevkxANVpaJ3Hr7aZ0mFNUz6OPrV74uv2koaZK3g6TU+YsFrBdpTwZuQ4hDaat37IfpP/
	chzkVQa0+A/LJtJ3zBQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jef1l-00029T-Fv; Fri, 29 May 2020 13:26:25 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jef1h-00028X-PB
 for linux-rockchip@lists.infradead.org; Fri, 29 May 2020 13:26:23 +0000
Received: by mail-ej1-x644.google.com with SMTP id a2so2043091ejb.10
 for <linux-rockchip@lists.infradead.org>; Fri, 29 May 2020 06:26:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Gi9iotEheNrErGUPE+UigZKZabukKvsITJoe+P1qNnQ=;
 b=Mej4p5gFJfoNHev4iJYxIEIDFtBVC/TUvhysKpMZVL1k4XUm5lcEo//lLPzGFsemuB
 hZKm8oDIdI6i12LK2hkI1/61Ubp5qe3KTxlMFGFnnlfk6gTLsjvQTCxd1z4wD47g7sTV
 opSCLsHlAMQeKM2lIcFHt/sTcQxag6pq7UHgo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Gi9iotEheNrErGUPE+UigZKZabukKvsITJoe+P1qNnQ=;
 b=JbXN3MOmtj1bLhn1ye/yBmZqV1H3iBwPnTlxwFENZA3Y2ncOTJI3JLfWtnrWQPaOw1
 A5c6c+XOSW3RGyFgve8SU7h9OvOSxV5vOuzgiCRVFCsV/Zen5Jnym81phUByQuT7EHIT
 jMWYAfu3tlIp6sRrnGHuGtE+C4maTxVt2caqppBAwTxEq3SigRA9UvRxU2ryqsLqT+R+
 /3h4BePusxWj+1aBlapMqWTg+E66hCMgfBqo6XTwslG4+NPvaaiYQahBaQKyThp7WswD
 6q4JrYXHr03iCFKwFd3FsbFD6Q7CjTTzs07x8ysEQ8V8c15rCBxwxXS4tAmt28t4BTne
 DUwA==
X-Gm-Message-State: AOAM5336KcS5hgWEtBhdHQz7jLVJCxryek1FQvNCA7rXmJfM54zmRnwR
 +z8QKnrnx6uBc+DrFH+hfsK5XOoZHmwncw==
X-Google-Smtp-Source: ABdhPJyMDP9hvZrbE6W+rqB37S8MhRj7DBxIz+CNVWJcXxr8o/+G6cv5Pj7oDidIikoIuiFcJa9jXA==
X-Received: by 2002:a17:907:40f1:: with SMTP id
 no1mr7541456ejb.178.1590758780032; 
 Fri, 29 May 2020 06:26:20 -0700 (PDT)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com.
 [209.85.128.50])
 by smtp.gmail.com with ESMTPSA id y19sm6501076edq.54.2020.05.29.06.26.18
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 29 May 2020 06:26:18 -0700 (PDT)
Received: by mail-wm1-f50.google.com with SMTP id n5so3552246wmd.0
 for <linux-rockchip@lists.infradead.org>; Fri, 29 May 2020 06:26:18 -0700 (PDT)
X-Received: by 2002:a1c:56c1:: with SMTP id k184mr8160474wmb.183.1590758777988; 
 Fri, 29 May 2020 06:26:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200522075522.6190-1-dafna.hirschfeld@collabora.com>
 <1c8bd467-5a9c-7285-ec23-d0d864a5f938@collabora.com>
 <CAAFQd5BW9TF0iMRPCUwk3oZn-WrisMW794EuwfqZRTkmNqeKoA@mail.gmail.com>
 <20200526185754.GA25880@pendragon.ideasonboard.com>
 <50929a55-a071-aa09-eb1a-96776c61c147@collabora.com>
In-Reply-To: <50929a55-a071-aa09-eb1a-96776c61c147@collabora.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Fri, 29 May 2020 15:26:07 +0200
X-Gmail-Original-Message-ID: <CAAFQd5ASEvyzHKQZjunpF-=du5AA0w6b9fGMi9xjTCbMrPhLVw@mail.gmail.com>
Message-ID: <CAAFQd5ASEvyzHKQZjunpF-=du5AA0w6b9fGMi9xjTCbMrPhLVw@mail.gmail.com>
Subject: Re: [PATCH v4 0/5] media: add v4l2_pipeline_stream_{enable,disable}
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_062621_835144_10BFB787 
X-CRM114-Status: GOOD (  32.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: niklas.soderlund@ragnatech.se--annotate,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Dafna Hirschfeld <dafna3@gmail.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Shuah Khan <skhan@linuxfoundation.org>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, May 28, 2020 at 6:21 PM Dafna Hirschfeld
<dafna.hirschfeld@collabora.com> wrote:
>
> Hi Tomasz, Helen, Laurent
>
> On 26.05.20 20:57, Laurent Pinchart wrote:
> > Hi Tomasz,
> >
> > On Tue, May 26, 2020 at 06:11:00PM +0200, Tomasz Figa wrote:
> >> On Fri, May 22, 2020 at 11:06 AM Helen Koike <helen.koike@collabora.com> wrote:
> >>> On 5/22/20 4:55 AM, Dafna Hirschfeld wrote:
> >>>> Hi,
> >>>> This is v4 of the patchset that was sent by Helen Koike.
> >>>>
> >>>> Media drivers need to iterate through the pipeline and call .s_stream()
> >>>> callbacks in the subdevices.
> >>>>
> >>>> Instead of repeating code, add helpers for this.
> >>>>
> >>>> These helpers will go walk through the pipeline only visiting entities
> >>>> that participates in the stream, i.e. it follows links from sink to source
> >>>> (and not the opposite).
> >>>> For example, in a topology like this https://bit.ly/3b2MxjI
> >>>> calling v4l2_pipeline_stream_enable() from rkisp1_mainpath won't call
> >>>> .s_stream(true) for rkisp1_resizer_selfpath.
> >>>>
> >>>> stream_count variable was added in v4l2_subdevice to handle nested calls
> >>>> to the helpers.
> >>>> This is useful when the driver allows streaming from more then one
> >>>> capture device sharing subdevices.
> >>>
> >>> If I understand correctly, this isn't  true anymore right? Nested calls aren't
> >>> possible anymore since this version doesn't contain stream_count in struct v4l2_subdevice.
> >>>
> >>> Documentation of v4l2_pipeline_stream_*() should also be updated.
> >>>
> >>> Just to be clear, without the nested call, vimc will require to add its own
> >>> counters, patch https://patchwork.kernel.org/patch/10948833/ will be
> >>> required again to allow multi streaming.
> >>>
> >>> Also, patch "media: staging: rkisp1: cap: use v4l2_pipeline_stream_{enable,disable}"
> >>> is cleaner in the previous version (with stream_count in struct v4l2_subdevice).
> >>>
> >>> All drivers that allows multi streaming will need to implement some special handling.
> >>>
> >>> Adding stream_count in struct v4l2_subdevice still seems cleaner to me. I'd like to hear
> >>> what others think.
> >>
> >> I certainly would see this reference counting done in generic code,
> >> because requiring every driver to do it simply adds to the endless
>
> It is required only for drivers that support multistreaming. I don't know much
> about other driver except of the ones I am working on, is it a common case?
>

I'm not very familiar with the older camera I/F drivers, but multiple
streams isn't anything unusual for camera hardware. I recall the old
Samsung FIMC already having support for separate preview and capture
outputs.

Also adding the reference counting on framework level probably
wouldn't really hurt drivers which only have 1 stream anyway.

> >> amount of boiler plate that V4L2 currently requires from the drivers.
> >> :(
> >>
> >> I wonder if it wouldn't be possible to redesign the framework so that
> >> .s_stream() at the subdev level is only called when it's expected to
> >> either start or stop this particular subdev and driver's
> >> implementation can simply execute the requested action.
>
> You mean that a generic code similar to the helper functions in this patchset
> will be used for all drivers, so that drivers don't call s_stream for subdevices
> anymore?
> Anyway, this patchset just adds helper functions, it does not redesign the code.
> Maybe the stream_count can be updated in the v4l2_subdev_call macro ?
> This why it can be used not just for the helper functions.

Sorry, just thinking out loud. Generally if we look at other kAPIs,
such as the drm_crtc_helper_funcs [1] or regulator_ops [2], the driver
provided implementation doesn't have to care about duplicate
enable/disable requests.

[1] https://elixir.bootlin.com/linux/v5.7-rc7/source/include/drm/drm_modeset_helper_vtables.h#L61
[2] https://elixir.bootlin.com/linux/v5.7-rc7/source/include/linux/regulator/driver.h#L144

If we could prohibit calling v4l2_subdev_ops::s_stream() by the
drivers directly and instead add something like
v4l2_subdev_s_stream(), the latter could do reference counting on its
own and then only call v4l2_subdev_ops::s_stream() when the reference
count changes between 0 and 1.

One problem I see with this series is that I'm not sure if it's always
guaranteed that all the drivers in the pipeline would actually use the
generic helpers. If there is a driver in the pipeline which just calls
v4l2_subdev_ops::s_stream() on some other subdev on its own, it
wouldn't be aware of the reference count and bad things could happen
(e.g. the subdev stopped despite the count being > 0).

However, I'm afraid this is more of the kAPI design issue and could be
require quite a significant effort to be straightened out.

Best regards,
Tomasz

>
> Thanks,
> Dafna
>
> >
> > I'd very much like that. Note that I think a few drivers abuse the on
> > parameter to the function to pass other values than 0 or 1. We'd have to
> > fix those first (or maybe it has been done already, it's been a long
> > time since I last checked).
> >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
