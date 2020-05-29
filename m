Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCB0A1E80CC
	for <lists+linux-rockchip@lfdr.de>; Fri, 29 May 2020 16:48:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b/8EZOsBlLBB7y5rya5HesY19CuguLu1dFlOXw3lTBs=; b=IQOow1LTAOxL1Y
	1wXn9gPtVk5ZZDIy7voXBIthUecCbmEeg/Wat8jcngnH5Xb2RtoLAYaf3WESt25+KE7efg3igWCVb
	Cm1t68aeZRylqR7bMiG5TOXR9wxpYttewYDBMeSUe6nKmPmdAyB+N13/OWnvsS2VaadhdvLixEY9c
	XVoxGcucAJ9LeZRIw8s8fddRP6H73CuHCXQ+PFjDgF7Ty1jZJwLUSIbX2kMHM/80tAXehM2OW/Ajz
	X7BAkd+qrKeJtcon3HOJtKTFN4O4DSIzJzqbvn9iLpe+6FgCkENVQvfLAkaQDkwGaR9pfzt3FiSVH
	ZDWh8bsgN0ono4GZhRPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jegJ6-0001no-CW; Fri, 29 May 2020 14:48:24 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jegJ2-0001n5-2s
 for linux-rockchip@lists.infradead.org; Fri, 29 May 2020 14:48:22 +0000
Received: by mail-ed1-x542.google.com with SMTP id g9so1918369edw.10
 for <linux-rockchip@lists.infradead.org>; Fri, 29 May 2020 07:48:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yH74hBrtbJY5vHD0jKPwuMd1t5poCuuQc7105L1sJYY=;
 b=jXJ8OpMo9x5Abv71nAHQQ5Cmhd4VsXMhgal/QEx+n9fXmLCyeQP/2cFhV3fBx403Li
 vGdVGkJSXKZZWh8IUMwdz8uJ0OiF91JFGihb53VWsRncRuTQbSrUqW4dqP1vBTssUYzX
 V/xK6Pc0PKm/eWv3cFmGTG4LSGPQvnsjXBYP8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yH74hBrtbJY5vHD0jKPwuMd1t5poCuuQc7105L1sJYY=;
 b=ionrQRh6W2CS+HCmvwP/+AXzPweGiTDm1Nk1mKt3CUu7wC30WgyNQQDMvq6VQ46WAN
 wjRwOcRTkbxU8fL2YtZsnGkDe/jma15Rsk1/4+HPwrV7djpfIj6g1bTdXPc5XkzKP6FH
 GIupaEK/Hq8HUCktZ5Npl6jofnsDPoBl5CTsp9S8pwMqpkXUs7zTmfUhNE0pZ3pYXOis
 MywyBRfp2MlC2NO0mwAKQQo254tx5H+DccZVaR2t58YvZbArU3urt7S6I32tYEXI0BMc
 2bWoSIubEcIjaem1ujO7W4UTmiYP0FTo4+FIUhe3OJO8a8lRPqpFwmUDxYbp8g3qKKbg
 1Gjw==
X-Gm-Message-State: AOAM532limnAnkDFZt/4Jftb7bV3fXBeWCBUEb3IqG7/Nx5Qlz/P3Dpg
 0jOsyhyumPk6Wk2i02phga8M0Ri76FMh9A==
X-Google-Smtp-Source: ABdhPJzaMp1seI6UiXWTNyXDj1ExJc5LIOezGmmcMiZCHls2JKWf99nyREwVcUdiwRFAxpXoiBOCdw==
X-Received: by 2002:aa7:c617:: with SMTP id h23mr8934595edq.305.1590763697541; 
 Fri, 29 May 2020 07:48:17 -0700 (PDT)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com.
 [209.85.221.51])
 by smtp.gmail.com with ESMTPSA id fi9sm7612510ejb.5.2020.05.29.07.48.15
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 29 May 2020 07:48:16 -0700 (PDT)
Received: by mail-wr1-f51.google.com with SMTP id l10so3907884wrr.10
 for <linux-rockchip@lists.infradead.org>; Fri, 29 May 2020 07:48:15 -0700 (PDT)
X-Received: by 2002:a05:6000:ce:: with SMTP id
 q14mr9832353wrx.105.1590763695380; 
 Fri, 29 May 2020 07:48:15 -0700 (PDT)
MIME-Version: 1.0
References: <20200522075522.6190-1-dafna.hirschfeld@collabora.com>
 <1c8bd467-5a9c-7285-ec23-d0d864a5f938@collabora.com>
 <CAAFQd5BW9TF0iMRPCUwk3oZn-WrisMW794EuwfqZRTkmNqeKoA@mail.gmail.com>
 <20200526185754.GA25880@pendragon.ideasonboard.com>
 <50929a55-a071-aa09-eb1a-96776c61c147@collabora.com>
 <CAAFQd5ASEvyzHKQZjunpF-=du5AA0w6b9fGMi9xjTCbMrPhLVw@mail.gmail.com>
 <CAAFQd5Bcu+OP-2Uwkrq79C+0WAvFox-gxmcqYqkB6gpEPoABrw@mail.gmail.com>
 <7ce3e2cb-60ab-bf0f-6d0a-7bcf0c73d6b8@collabora.com>
In-Reply-To: <7ce3e2cb-60ab-bf0f-6d0a-7bcf0c73d6b8@collabora.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Fri, 29 May 2020 16:48:04 +0200
X-Gmail-Original-Message-ID: <CAAFQd5BwAZPKSELm29vdfPEn838vy6Mu02WjJp5f1B=ZzLU_5Q@mail.gmail.com>
Message-ID: <CAAFQd5BwAZPKSELm29vdfPEn838vy6Mu02WjJp5f1B=ZzLU_5Q@mail.gmail.com>
Subject: Re: [PATCH v4 0/5] media: add v4l2_pipeline_stream_{enable,disable}
To: Helen Koike <helen.koike@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_074820_147772_A0BD0C81 
X-CRM114-Status: GOOD (  41.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
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
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Dafna Hirschfeld <dafna3@gmail.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Shuah Khan <skhan@linuxfoundation.org>,
 =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, May 29, 2020 at 3:49 PM Helen Koike <helen.koike@collabora.com> wrote:
>
> Hi,
>
> On 5/29/20 10:27 AM, Tomasz Figa wrote:
> > [Fixing Niklas's address.]
> >
> > On Fri, May 29, 2020 at 3:26 PM Tomasz Figa <tfiga@chromium.org> wrote:
> >>
> >> On Thu, May 28, 2020 at 6:21 PM Dafna Hirschfeld
> >> <dafna.hirschfeld@collabora.com> wrote:
> >>>
> >>> Hi Tomasz, Helen, Laurent
> >>>
> >>> On 26.05.20 20:57, Laurent Pinchart wrote:
> >>>> Hi Tomasz,
> >>>>
> >>>> On Tue, May 26, 2020 at 06:11:00PM +0200, Tomasz Figa wrote:
> >>>>> On Fri, May 22, 2020 at 11:06 AM Helen Koike <helen.koike@collabora.com> wrote:
> >>>>>> On 5/22/20 4:55 AM, Dafna Hirschfeld wrote:
> >>>>>>> Hi,
> >>>>>>> This is v4 of the patchset that was sent by Helen Koike.
> >>>>>>>
> >>>>>>> Media drivers need to iterate through the pipeline and call .s_stream()
> >>>>>>> callbacks in the subdevices.
> >>>>>>>
> >>>>>>> Instead of repeating code, add helpers for this.
> >>>>>>>
> >>>>>>> These helpers will go walk through the pipeline only visiting entities
> >>>>>>> that participates in the stream, i.e. it follows links from sink to source
> >>>>>>> (and not the opposite).
> >>>>>>> For example, in a topology like this https://bit.ly/3b2MxjI
> >>>>>>> calling v4l2_pipeline_stream_enable() from rkisp1_mainpath won't call
> >>>>>>> .s_stream(true) for rkisp1_resizer_selfpath.
> >>>>>>>
> >>>>>>> stream_count variable was added in v4l2_subdevice to handle nested calls
> >>>>>>> to the helpers.
> >>>>>>> This is useful when the driver allows streaming from more then one
> >>>>>>> capture device sharing subdevices.
> >>>>>>
> >>>>>> If I understand correctly, this isn't  true anymore right? Nested calls aren't
> >>>>>> possible anymore since this version doesn't contain stream_count in struct v4l2_subdevice.
> >>>>>>
> >>>>>> Documentation of v4l2_pipeline_stream_*() should also be updated.
> >>>>>>
> >>>>>> Just to be clear, without the nested call, vimc will require to add its own
> >>>>>> counters, patch https://patchwork.kernel.org/patch/10948833/ will be
> >>>>>> required again to allow multi streaming.
> >>>>>>
> >>>>>> Also, patch "media: staging: rkisp1: cap: use v4l2_pipeline_stream_{enable,disable}"
> >>>>>> is cleaner in the previous version (with stream_count in struct v4l2_subdevice).
> >>>>>>
> >>>>>> All drivers that allows multi streaming will need to implement some special handling.
> >>>>>>
> >>>>>> Adding stream_count in struct v4l2_subdevice still seems cleaner to me. I'd like to hear
> >>>>>> what others think.
> >>>>>
> >>>>> I certainly would see this reference counting done in generic code,
> >>>>> because requiring every driver to do it simply adds to the endless
> >>>
> >>> It is required only for drivers that support multistreaming. I don't know much
> >>> about other driver except of the ones I am working on, is it a common case?
> >>>
> >>
> >> I'm not very familiar with the older camera I/F drivers, but multiple
> >> streams isn't anything unusual for camera hardware. I recall the old
> >> Samsung FIMC already having support for separate preview and capture
> >> outputs.
> >>
> >> Also adding the reference counting on framework level probably
> >> wouldn't really hurt drivers which only have 1 stream anyway.
> >>
> >>>>> amount of boiler plate that V4L2 currently requires from the drivers.
> >>>>> :(
> >>>>>
> >>>>> I wonder if it wouldn't be possible to redesign the framework so that
> >>>>> .s_stream() at the subdev level is only called when it's expected to
> >>>>> either start or stop this particular subdev and driver's
> >>>>> implementation can simply execute the requested action.
> >>>
> >>> You mean that a generic code similar to the helper functions in this patchset
> >>> will be used for all drivers, so that drivers don't call s_stream for subdevices
> >>> anymore?
> >>> Anyway, this patchset just adds helper functions, it does not redesign the code.
> >>> Maybe the stream_count can be updated in the v4l2_subdev_call macro ?
> >>> This why it can be used not just for the helper functions.
> >>
> >> Sorry, just thinking out loud. Generally if we look at other kAPIs,
> >> such as the drm_crtc_helper_funcs [1] or regulator_ops [2], the driver
> >> provided implementation doesn't have to care about duplicate
> >> enable/disable requests.
>
> Thanks for this pointer.
>
> >>
> >> [1] https://elixir.bootlin.com/linux/v5.7-rc7/source/include/drm/drm_modeset_helper_vtables.h#L61
> >> [2] https://elixir.bootlin.com/linux/v5.7-rc7/source/include/linux/regulator/driver.h#L144
> >>
> >> If we could prohibit calling v4l2_subdev_ops::s_stream() by the
> >> drivers directly and instead add something like
> >> v4l2_subdev_s_stream(), the latter could do reference counting on its
> >> own and then only call v4l2_subdev_ops::s_stream() when the reference
> >> count changes between 0 and 1.
>
> This is basically how v3 was implemented https://patchwork.kernel.org/patch/11489583/

Not exactly. There are 2 separate problems being addressed here:
1) Iterating over the pipeline and starting streaming on all the entities,
2) Preventing duplicate calls to s_stream().

v3 attempted to address problem 2) by the way of addressing problem
1). However problem 2) can also occur on its own, outside of the
pipeline start/stop, because s_stream is a standalone subdev
operation, exposed both to the userspace via UAPI and to the drivers
via the pseudo-kAPI (v4l2_subdev_call()). If 2) was solved on the
level of the kAPI, i.e. removing v4l2_subdev_call() and replacing it
with dedicated functions for operations like s_stream, refcounting
could be implemented inside of such functions, without the need to do
it in the pipeline iteration helpers.

>
> And the main concern (from what I understood) was to add a stream_count
> under struct v4l2_subdev, that is only touched by the helpers, so this
> stream_count field would be useless for drivers not using the helpers.
> which, imho, it is not a big problem.

I believe that's exactly because the two problems I mentioned above
are actually separate problems and a solution for 1) can't solve 2)
fully.

>
> I think we gain more with a common implementation.
>
> >>
> >> One problem I see with this series is that I'm not sure if it's always
> >> guaranteed that all the drivers in the pipeline would actually use the
> >> generic helpers.
>
> I'm not sure we should always guarantee usage of generic helpers, since
> drivers may want to initialize subdevices in a specific order.
>

If we treat the 2 problems separately, the helpers for 1) could be
still optional, but the new calls for 2) would be mandatory.

> >> If there is a driver in the pipeline which just calls
> >> v4l2_subdev_ops::s_stream() on some other subdev on its own, it
> >> wouldn't be aware of the reference count and bad things could happen
> >> (e.g. the subdev stopped despite the count being > 0).
>
> I don't think this is a problem, since v4l2_subdev_ops::s_stream() are
> usually triggered by a STREAM_ON on a video node. So or the video node driver
> uses the helpers, or it calls v4l2_subdev_ops::s_stream() on subdevices directly.
>

That's not a kAPI guarantee. Any driver is free to call
v4l2_subdev_call(..., s_stream) whenever it wants.

> Unless if, we could have a case where we have multiple video nodes in the
> same topology that is implemented by different drivers, which seems odd
> to me.

That's not the only case. There are some devices, such as the adv748x
CSI-2 transmitter which manage the rest of the pipeline on their own,
e.g.

https://elixir.bootlin.com/linux/v5.7-rc7/source/drivers/media/i2c/adv748x/adv748x-csi2.c#L116

In this case, the generic helpers invoked by the ISP driver would
compete with the explicit configuration done by the driver. However,
if we solve the problem 2) at the kAPI level, that wouldn't be an
issue anymore, because the generic helpers and explicit calls would
simply grab additional reference counts.

Best regards,
Tomasz

>
> Regards,
> Helen
>
> >>
> >> However, I'm afraid this is more of the kAPI design issue and could be
> >> require quite a significant effort to be straightened out.
> >>
> >> Best regards,
> >> Tomasz
> >>
> >>>
> >>> Thanks,
> >>> Dafna
> >>>
> >>>>
> >>>> I'd very much like that. Note that I think a few drivers abuse the on
> >>>> parameter to the function to pass other values than 0 or 1. We'd have to
> >>>> fix those first (or maybe it has been done already, it's been a long
> >>>> time since I last checked).
> >>>>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
