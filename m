Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7499E49FDF
	for <lists+linux-rockchip@lfdr.de>; Tue, 18 Jun 2019 13:55:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tiraKYxr1L2M48sFWEly87Xp5L1bDe/KdtBToh4D+co=; b=rYkZTXZSyg9y83
	7L0Sx+p3bcwLXqIgm208C79YV+7kHmKeP6ueh0pRhS7cVNpQdczPb455cBjT5TlV+49xtYxmXRsdX
	SWQSmbYXNr6hrmLmpOc2MW1VCdqNZL5yWTYrnM3yWHt3iyk/LR6FE8YKSmyNjrkHYU2feR2F9WQBq
	79xVAjrElGE/0c1E/YGNGlo+6j4t5HHVvtLl/I3nnj873cH6txgahTg3KRzLCDiSWGwmgQiHnQhMa
	aIX2IEDTsfceHeVLjPpMFMrS6T9cFZ66wZLHyarSbCucjOKwb3t1AP5Zwe2M4EfIeMINk1uQ+yfLm
	zPhl2FUPTK3eOc9v0FMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdCi0-0005Vk-Gh; Tue, 18 Jun 2019 11:55:28 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdChw-0005Us-AW
 for linux-rockchip@lists.infradead.org; Tue, 18 Jun 2019 11:55:26 +0000
Received: by mail-ua1-x941.google.com with SMTP id 34so5627893uar.8
 for <linux-rockchip@lists.infradead.org>; Tue, 18 Jun 2019 04:55:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HS+8xCKq4uw2GhsJ3oVP/nt/TWiHhJGr57yytdhzfdg=;
 b=F/hr0LvaAOOaRbMxl40AQxMNdwHvufZlwAPcY/xVitzN1xyA+aZzP7mdDYNSihuw8O
 02Ych+qmzmHRKKUmMvA3ApOBvoOU0+3DLghIZlsGRfUZ+UjYa4aeL8Bt3MMTBXXD9CLC
 y8VjvQIIUjPoyrb7p7A0hizQIC0CWC+mIK/SU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HS+8xCKq4uw2GhsJ3oVP/nt/TWiHhJGr57yytdhzfdg=;
 b=aa1qMKBfhbpWecJ+0XlYnwpFoi80uYfywIi5hsgwtOjYIclbFd3F+Dpvdop8q4+pH1
 iKitA+CHQsln56U27bo9Uouze8lVBJPQuPNdVNidkspJiOjv579fk+YwxaS76fGnA6fG
 0AgTSU5UyykxQ2CDoq1oTV+6yAf++R/8MOrKKnkrrTyvXUb+rzPcgAKTOIwfk8H7LNW0
 GvdpC3IwRJeulyWrbJ2zuQ31ekVphgBeOZuWEfbsk+pKwxPDv6KWvAk3ARdeoC1Dl2iS
 OUJZMn3t3bIYkpgvJfZr5hq2K3xj+cN5abV59q518xAplIlqwqhAMTvh/JVbGLRijODo
 88Mg==
X-Gm-Message-State: APjAAAUpGkUzRwkD0xWBZdDixCOeppcJpU+gxZQBqMs7XzsI0E+wyQjj
 YWe1na1mXcA72g0F52IvB5ie5buDgNPGEpxUs0KV+A==
X-Google-Smtp-Source: APXvYqwe5Z27gtbOCc9RvcW35C0wilJTzRUxw4+zno6X2P2NNyqz4N2YterqgHXRv1/EusBdESyTA/V0LEjHbRC1J7M=
X-Received: by 2002:a67:eb12:: with SMTP id a18mr12399541vso.119.1560858922979; 
 Tue, 18 Jun 2019 04:55:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190603043251.226549-1-cychiang@chromium.org>
 <20190603043251.226549-2-cychiang@chromium.org>
 <41e7052b-a58c-5a8c-5d94-37237e0c2070@xs4all.nl>
 <20190603080931.GG21222@phenom.ffwll.local>
 <CAFv8Nw+1sB8i1d87vLeKxRricZOi4gnXFSgOzW9k0sa_Tzybjg@mail.gmail.com>
 <20190604072411.GP21222@phenom.ffwll.local>
 <CAFv8NwKL9ZL=gNpDmdRV+R9eq22+Da_1kzuYBv8kMMyV3Hq14g@mail.gmail.com>
 <126de7f5-c92a-9e5c-cd36-5484f43f0f6b@xs4all.nl>
In-Reply-To: <126de7f5-c92a-9e5c-cd36-5484f43f0f6b@xs4all.nl>
From: Cheng-yi Chiang <cychiang@chromium.org>
Date: Tue, 18 Jun 2019 19:54:56 +0800
Message-ID: <CAFv8NwK3kLkWqeTdCaC9mOf7z3uv0qXOVjjfhDtogoVb3CN8dw@mail.gmail.com>
Subject: Re: [PATCH 1/7] video: add HDMI state notifier support
To: Hans Verkuil <hverkuil@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_045524_361169_6CCB20DF 
X-CRM114-Status: GOOD (  55.89  )
X-Spam-Score: -7.4 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "moderated list:SOUND - SOC LAYER / DYNAMIC AUDIO POWER MANAGEM..."
 <alsa-devel@alsa-project.org>, Heiko Stuebner <heiko@sntech.de>,
 Liam Girdwood <lgirdwood@gmail.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, Takashi Iwai <tiwai@suse.com>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 linux-rockchip@lists.infradead.org, Dylan Reid <dgreid@chromium.org>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org, tzungbi@chromium.org,
 Daniel Vetter <daniel@ffwll.ch>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Rob Herring <robh+dt@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Doug Anderson <dianders@chromium.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Mark Brown <broonie@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Dariusz Marcinkiewicz <darekm@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 9:11 PM Hans Verkuil <hverkuil@xs4all.nl> wrote:
>
> On 6/11/19 2:10 PM, Cheng-yi Chiang wrote:
> > On Tue, Jun 4, 2019 at 3:24 PM Daniel Vetter <daniel@ffwll.ch> wrote:
> >>
> >> On Tue, Jun 04, 2019 at 10:32:50AM +0800, Cheng-yi Chiang wrote:
> >>> On Mon, Jun 3, 2019 at 4:09 PM Daniel Vetter <daniel@ffwll.ch> wrote:
> >>>>
> >>>> On Mon, Jun 03, 2019 at 09:45:49AM +0200, Hans Verkuil wrote:
> >>>>> On 6/3/19 6:32 AM, Cheng-Yi Chiang wrote:
> >>>>>> From: Hans Verkuil <hans.verkuil@cisco.com>
> >>>>>>
> >>>>>> Add support for HDMI hotplug and EDID notifiers, which is used to convey
> >>>>>> information from HDMI drivers to their CEC and audio counterparts.
> >>>>>>
> >>>>>> Based on an earlier version from Russell King:
> >>>>>>
> >>>>>> https://patchwork.kernel.org/patch/9277043/
> >>>>>>
> >>>>>> The hdmi_notifier is a reference counted object containing the HDMI state
> >>>>>> of an HDMI device.
> >>>>>>
> >>>>>> When a new notifier is registered the current state will be reported to
> >>>>>> that notifier at registration time.
> >>>>>>
> >>>>>> Based on Hans Verkuil's patch:
> >>>>>>
> >>>>>> https://patchwork.kernel.org/patch/9472521/
> >>>>>
> >>>>> Erm, you are aware that this patch morphed into a CEC-specific notifier
> >>>>> found in drivers/media/cec/cec-notifier.c?
> >>>>>
> >>>>> I don't think it makes sense to have two notifier implementations in the kernel.
> >>>>> The original intention was to have the notifier deal with both CEC and ASoC
> >>>>> notifications, but there was not enough interest for the ASoC bits at the time
> >>>>> and it was dropped.
> >>>>>
> >>>>> I am planning changes to the cec-notifier API, I hope to work on that this
> >>>>> week. I'll CC you when I post those. Those might be a good starting point
> >>>>> to convert the cec-notifier to an hdmi-notifier as was originally intended.
> >>>>>
> >>>>> I've added your colleague Dariusz Marcinkiewicz to the CC list since he's been
> >>>>> working on some nice cec-notifier improvements as well.
> >>>>
> >>>> We also have some interfaces for drm/alsa interactions around hdmi
> >>>> already in drm/drm_audio_component.h, but it's not used by anything
> >>>> outside of i915. Imo we should extend that, not reinvent a new wheel.
> >>>>
> >>> Hi Daniel,
> >>> Thank you for the pointer. Looking at the ops, it seems that it is
> >>> specific to HDA.
> >>> I am not familiar with drm and HDA. I am not sure how applicable it
> >>> would be to report jack status to ASoC.
> >>> There is a use case in sound/soc/codecs/hdac_hdmi.c though so it
> >>> should be possible.
> >>
> >> Currently hda is the only user, but the idea was to make it more generic.
> >> Jack status in alsa is what drm calls connector status btw.
> >>
> >> So if we can take that as a baseline and extend it (probably needs some
> >> registration boilerplate and helpers to look up the right endpoint using
> >> of/dt for soc systems, we use component.c in i915/hda for this), that
> >> would be great I think.
> >>
> >>>> Another note: notifiers considered evil, imo. Gets the job done for one
> >>>> case, as soon as you have multiple devices and need to make sure you get
> >>>> the update for the right one it all comes crashing down. Please create an
> >>>> api which registers for updates from a specific device only, plus
> >>>> something that has real callbacks (like the drm_audio_component.h thing we
> >>>> started already).
> >>>
> >>> To clarify a bit, this hdmi-notifier indeed supports updating from a
> >>> specific device only.
> >>> hdmi_notifier_get takes a device and return the notifier.
> >>
> >> Hm I missed that, I thought it's global, so one of my usual notifier
> >> concerns addressed.
> >>
> >>> It seems that a major difference between drm_audio_components and
> >>> hdmi-notifier is that
> >>> drm_audio_components defines all supported ops in drm_audio_component_audio_ops.
> >>> On the other hand, hdmi-notifier passes different events using an enum
> >>> like HDMI_CONNECTED and let listener handle different events.
> >>> In this regard I agree with you that drm_audio_component is cleaner.
> >>> Anyway, I will look into it a bit more and see how it works.
> >>
> >> Yeah I think if we could combine the approach, i.e. notifier side for
> >> registration, some _ops structure for the actual notifications, then
> >> there's a solid interface. I just really don't like the opaque void *
> >> interface notifier provides, it encourages abuse way too much.
> >>
> >> Ofc the registration side would then no longer be based on the notifier
> >> datastructure, list_head (like cec-notifier.c) of registeres devices with
> >> their _ops structure should be enough.
> >> -Daniel
> >
> > Hi Daniel,
> > Yes, I agree the above statement that we should have a more solid interface.
> >
> > Hi Hans,
> > I am not sure if I missed the patch.
>
> You haven't :-)
>
> > Do you have a estimated timeline for new cec-notifier interface you
> > are working on?
>
> I've started work on this, but I to find at least one more full day
> to finish it.
>
> Current status is here:
>
> https://git.linuxtv.org/hverkuil/media_tree.git/log/?h=cec-conn
>
> What needs to be changed is that cec-notifier API is split into functions
> used by HDMI connectors to register/unregister themselves and functions
> used by CEC adapters (and possibly ALSA devices, if you decide to reuse
> this API) to do the same.
>
> Right now the same functions (notifier_get/put) are used by both, but that
> doesn't scale if we want to have multiple notifiers connected to the same
> HDMI drm_connector.
>
> Now, this is done, but the next step is on the CEC side where you need
> proper (un)register callbacks that are called when the HDMI connector is
> removed. That I still have to implement.
>
> I'd like to finish this some time next week, but I can't promise anything.
>
Hi Hans,
Sorry for the late reply. I have also spent some time digesting your
patch series.
I think your change makes sense for CEC.

> > It seems that your PoC patch needs Dariusz's patch to work.
> > I would like to seek your advice on whether I can proceed without your
> > patch and Dariusz's patch.
>
> If you want to reuse the cec-notifier framework for this as well, then you
> need to wait. It is currently not possible to have more than one notifier
> for an HDMI connector, and you'll need that.
>
> >
> > I looked through the patch from Dariusz
> >
> > https://lkml.org/lkml/2019/5/21/389
> >
> > , and saw that you were thinking whether we should use cec-notifier
> > for both HDMI and CEC.
> >
> > https://lkml.org/lkml/2019/5/24/298
> >
> > Could you please let me know your latest thought on whether we should
> > reuse cec-notifier?
>
> I don't know :-) I have no experience with ALSA, so I can't tell if generalizing
> the CEC notifier is the right approach, or if another approach would be better.
>
> The current design is not quite good enough for what you (or Dariusz, for that
> matter) want. What I am working towards is this:
>
> When a new HDMI connector appears, it calls cec_notifier_conn_register (and
> _unregister when it is removed).
>
> When a new CEC adapter appears, it calls cec_notifier_cec_adap_(un)register.
> The plan is that eventually there may be more than on CEC adapter registered
> to the same HDMI connector.
>
> The cec notifier framework will detect when HDMI connectors or CEC adapters
> appear/disappear and call the (un)register callbacks of the CEC adapter(s)
> accordingly.
>
> And what works for CEC adapters, should also work for ALSA devices.
>
> Obviously, if this framework is extended to ALSA devices, then it needs to
> be renamed.
>

Thank you for the explanation.
I can imagine how this path works.
But as I replied in the previous mail to Daniel, after some
investigation, I would like to try drm_audio_component approach and
see how that goes.
If that does not work out well, I will follow this approach.
Thanks again!

> > I agree with you that I should not proceed with hdmi-notifier. Reasons include:
> > 1. Method like cec_notifier_parse_hdmi_phandle can be reused. It is
> > error prone to memory leak if it is implemented by user, like the
> > patch in hdmi-codec.c in this series did not handle the ref count.
> > 2. cec-notifier has a simpler implementation of register / unregister
> > because there is no call chain. I am not aware of the need for
> > hdmi-notifier to support a chain of callbacks. So I think that call
> > chain support can be removed.
> >
> > If I go ahead and add a new interface to register ops to handle
> > connector status report from cec-notifer, based on current
> > cec-notifier, do you think that would work ?
>
> No. The cec-notifier doesn't support multiple notifiers connected to
> the same HDMI connector device. That's the main limitation that needs
> to be lifted first.
ACK
>
> > I think it might work if I add another cec_notifier object inside
> > dw-hdmi.c, but only for HDMI jack reporting, not for CEC related
> > reporting.
>
> That won't work.
>
> For testing you can reuse the current cec-notifier, but now for alsa.
> Disable the CEC support so it won't be used for CEC, then hook it up
> to the alsa device. That should be good enough to do a proof-of-concept.
>
ACK
> >
> > And after some investigation, I realize that my requirement is even
> > simpler. I don't need hdmi_event_new_edid and hdmi_event_new_eld in my
> > use case.
> > I just need to report the connector status from synopsys/dw-hdmi.c to
> > codecs/hdmi-codec.c for codec driver to update the jack status.
> > Do you think I can proceed in this direction ? Or do you prefer I wait
> > for a while and work on it based on your new patch.
>
> You can hack around as described above for testing the idea. If you
> really want to use it, then you'll have to wait.
>
> >
> > Thanks a lot!
>
> No problem.
>
> Regards,
>
>         Hans

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
