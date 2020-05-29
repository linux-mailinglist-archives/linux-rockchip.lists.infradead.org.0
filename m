Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A5851E7EA5
	for <lists+linux-rockchip@lfdr.de>; Fri, 29 May 2020 15:28:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l6kC8bLbiVswVIjY7LDUTSwNlT9tIfLogAuFUiNfaHI=; b=elgwmBiHx17rvi
	72m6FSoKxVyeY838u36kYtBvn8pSGzD56rOjNtaG/WQvM1vS63PSzRxGk3Lur4Uxy1TU7G4aaQjSe
	ZALUAkSZmhTpjRZjaEQC0S8rGn8TXFnhAgdqdvjlmftRC2QlCayGvqYKc+X74vKMGvtQjATd8tvjO
	SHQegtOVr6geEPS568LoztdP6zF4fnW/hfVWkGOc4o+zJyI2mtq6dRIHh625Ys6xyj8ILpr6Ki+ql
	kD2CLI4HOAyTxx9ZgilstNPSh0StGEsM7TMMzVYkffcS1PrNDv6yKvjwUxbL32qSoaTdPa3/MqZwJ
	u3nhvhhMolPaukJqZ1Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jef3V-0002aS-P7; Fri, 29 May 2020 13:28:13 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jef3S-0002a3-Fr
 for linux-rockchip@lists.infradead.org; Fri, 29 May 2020 13:28:12 +0000
Received: by mail-ej1-x644.google.com with SMTP id x1so2060403ejd.8
 for <linux-rockchip@lists.infradead.org>; Fri, 29 May 2020 06:28:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=x1LYVsAqNQ4JAOyO8daBn9HUI8khey1QngutDjiEIeE=;
 b=TYywXClz70EPvqi5111umHc+eThnDNmvy2FyhWYd5Fm57BDViStBsq3cdJZxym8fxO
 iN+nPNkKaN8O0JzTUMik1rtvclkhiyvuRzk0D0jaQBw4w5DVYf4IZaKAY/aYvdpxPtAO
 ZFT9C0YjiyB8FaJFlh0Kk1dEsV1giliNwZvIw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=x1LYVsAqNQ4JAOyO8daBn9HUI8khey1QngutDjiEIeE=;
 b=Ay8PkYua5t7nSqCTXGGs719oUSDYWb6FarifT5L5x0KwlTWb0lWB5nQnO/4s2M7L8P
 yml9YIGuFskbibr1nRO/c5ugHPciJyHivd5dRBhKA+tM4xwo7uc4N1GLw0xf97dwQeNQ
 +fcIYAu4sI0YTvflMDF9S3PQ2LJAI/vcHv2yQQMOzBPEtKDIJheB1xbf1uGlPns3yM/e
 A3b3qMJJ8bC0k6m7spBTN3T3VaPWDRhQ7mtQi3IUZuU2fSLMpJ6rzKlQ8ujgBw59FHNW
 W0RWNUVtrt74K0AiEzT94Bn9jpNP156Kgs0YRajJs3cSHicY9rTeHKVjveCrG6ATItsN
 8suA==
X-Gm-Message-State: AOAM532dZiTPuabhIthQbUOXYT0mrTxc0eSAcmmmEqTR4ivjoI6jWe2b
 zUzsEgxFrkL+fjQ7fEVr9HnfWGfqCRfyLA==
X-Google-Smtp-Source: ABdhPJwpFHJTGCEQFgUuUIS0QH/NBw5YaKa5+LAvD1W2cyxf/l6MPIVm69TbPU88WzCCDI3Y0t/PEA==
X-Received: by 2002:a17:906:415b:: with SMTP id
 l27mr7994824ejk.240.1590758888856; 
 Fri, 29 May 2020 06:28:08 -0700 (PDT)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com.
 [209.85.128.48])
 by smtp.gmail.com with ESMTPSA id u10sm7148566edb.65.2020.05.29.06.28.07
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 29 May 2020 06:28:08 -0700 (PDT)
Received: by mail-wm1-f48.google.com with SMTP id r9so3270342wmh.2
 for <linux-rockchip@lists.infradead.org>; Fri, 29 May 2020 06:28:07 -0700 (PDT)
X-Received: by 2002:a7b:c622:: with SMTP id p2mr8600143wmk.55.1590758887486;
 Fri, 29 May 2020 06:28:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200522075522.6190-1-dafna.hirschfeld@collabora.com>
 <1c8bd467-5a9c-7285-ec23-d0d864a5f938@collabora.com>
 <CAAFQd5BW9TF0iMRPCUwk3oZn-WrisMW794EuwfqZRTkmNqeKoA@mail.gmail.com>
 <20200526185754.GA25880@pendragon.ideasonboard.com>
 <50929a55-a071-aa09-eb1a-96776c61c147@collabora.com>
 <CAAFQd5ASEvyzHKQZjunpF-=du5AA0w6b9fGMi9xjTCbMrPhLVw@mail.gmail.com>
In-Reply-To: <CAAFQd5ASEvyzHKQZjunpF-=du5AA0w6b9fGMi9xjTCbMrPhLVw@mail.gmail.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Fri, 29 May 2020 15:27:56 +0200
X-Gmail-Original-Message-ID: <CAAFQd5Bcu+OP-2Uwkrq79C+0WAvFox-gxmcqYqkB6gpEPoABrw@mail.gmail.com>
Message-ID: <CAAFQd5Bcu+OP-2Uwkrq79C+0WAvFox-gxmcqYqkB6gpEPoABrw@mail.gmail.com>
Subject: Re: [PATCH v4 0/5] media: add v4l2_pipeline_stream_{enable,disable}
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_062810_534839_570FF4FA 
X-CRM114-Status: GOOD (  35.72  )
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
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Dafna Hirschfeld <dafna3@gmail.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Helen Koike <helen.koike@collabora.com>,
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

[Fixing Niklas's address.]

On Fri, May 29, 2020 at 3:26 PM Tomasz Figa <tfiga@chromium.org> wrote:
>
> On Thu, May 28, 2020 at 6:21 PM Dafna Hirschfeld
> <dafna.hirschfeld@collabora.com> wrote:
> >
> > Hi Tomasz, Helen, Laurent
> >
> > On 26.05.20 20:57, Laurent Pinchart wrote:
> > > Hi Tomasz,
> > >
> > > On Tue, May 26, 2020 at 06:11:00PM +0200, Tomasz Figa wrote:
> > >> On Fri, May 22, 2020 at 11:06 AM Helen Koike <helen.koike@collabora.com> wrote:
> > >>> On 5/22/20 4:55 AM, Dafna Hirschfeld wrote:
> > >>>> Hi,
> > >>>> This is v4 of the patchset that was sent by Helen Koike.
> > >>>>
> > >>>> Media drivers need to iterate through the pipeline and call .s_stream()
> > >>>> callbacks in the subdevices.
> > >>>>
> > >>>> Instead of repeating code, add helpers for this.
> > >>>>
> > >>>> These helpers will go walk through the pipeline only visiting entities
> > >>>> that participates in the stream, i.e. it follows links from sink to source
> > >>>> (and not the opposite).
> > >>>> For example, in a topology like this https://bit.ly/3b2MxjI
> > >>>> calling v4l2_pipeline_stream_enable() from rkisp1_mainpath won't call
> > >>>> .s_stream(true) for rkisp1_resizer_selfpath.
> > >>>>
> > >>>> stream_count variable was added in v4l2_subdevice to handle nested calls
> > >>>> to the helpers.
> > >>>> This is useful when the driver allows streaming from more then one
> > >>>> capture device sharing subdevices.
> > >>>
> > >>> If I understand correctly, this isn't  true anymore right? Nested calls aren't
> > >>> possible anymore since this version doesn't contain stream_count in struct v4l2_subdevice.
> > >>>
> > >>> Documentation of v4l2_pipeline_stream_*() should also be updated.
> > >>>
> > >>> Just to be clear, without the nested call, vimc will require to add its own
> > >>> counters, patch https://patchwork.kernel.org/patch/10948833/ will be
> > >>> required again to allow multi streaming.
> > >>>
> > >>> Also, patch "media: staging: rkisp1: cap: use v4l2_pipeline_stream_{enable,disable}"
> > >>> is cleaner in the previous version (with stream_count in struct v4l2_subdevice).
> > >>>
> > >>> All drivers that allows multi streaming will need to implement some special handling.
> > >>>
> > >>> Adding stream_count in struct v4l2_subdevice still seems cleaner to me. I'd like to hear
> > >>> what others think.
> > >>
> > >> I certainly would see this reference counting done in generic code,
> > >> because requiring every driver to do it simply adds to the endless
> >
> > It is required only for drivers that support multistreaming. I don't know much
> > about other driver except of the ones I am working on, is it a common case?
> >
>
> I'm not very familiar with the older camera I/F drivers, but multiple
> streams isn't anything unusual for camera hardware. I recall the old
> Samsung FIMC already having support for separate preview and capture
> outputs.
>
> Also adding the reference counting on framework level probably
> wouldn't really hurt drivers which only have 1 stream anyway.
>
> > >> amount of boiler plate that V4L2 currently requires from the drivers.
> > >> :(
> > >>
> > >> I wonder if it wouldn't be possible to redesign the framework so that
> > >> .s_stream() at the subdev level is only called when it's expected to
> > >> either start or stop this particular subdev and driver's
> > >> implementation can simply execute the requested action.
> >
> > You mean that a generic code similar to the helper functions in this patchset
> > will be used for all drivers, so that drivers don't call s_stream for subdevices
> > anymore?
> > Anyway, this patchset just adds helper functions, it does not redesign the code.
> > Maybe the stream_count can be updated in the v4l2_subdev_call macro ?
> > This why it can be used not just for the helper functions.
>
> Sorry, just thinking out loud. Generally if we look at other kAPIs,
> such as the drm_crtc_helper_funcs [1] or regulator_ops [2], the driver
> provided implementation doesn't have to care about duplicate
> enable/disable requests.
>
> [1] https://elixir.bootlin.com/linux/v5.7-rc7/source/include/drm/drm_modeset_helper_vtables.h#L61
> [2] https://elixir.bootlin.com/linux/v5.7-rc7/source/include/linux/regulator/driver.h#L144
>
> If we could prohibit calling v4l2_subdev_ops::s_stream() by the
> drivers directly and instead add something like
> v4l2_subdev_s_stream(), the latter could do reference counting on its
> own and then only call v4l2_subdev_ops::s_stream() when the reference
> count changes between 0 and 1.
>
> One problem I see with this series is that I'm not sure if it's always
> guaranteed that all the drivers in the pipeline would actually use the
> generic helpers. If there is a driver in the pipeline which just calls
> v4l2_subdev_ops::s_stream() on some other subdev on its own, it
> wouldn't be aware of the reference count and bad things could happen
> (e.g. the subdev stopped despite the count being > 0).
>
> However, I'm afraid this is more of the kAPI design issue and could be
> require quite a significant effort to be straightened out.
>
> Best regards,
> Tomasz
>
> >
> > Thanks,
> > Dafna
> >
> > >
> > > I'd very much like that. Note that I think a few drivers abuse the on
> > > parameter to the function to pass other values than 0 or 1. We'd have to
> > > fix those first (or maybe it has been done already, it's been a long
> > > time since I last checked).
> > >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
