Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37FE2130D6
	for <lists+linux-rockchip@lfdr.de>; Fri,  3 May 2019 17:03:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pVV298Ry4N1qXxIZwA4COGAnhlJ/WNRgo5ApLoCvKCA=; b=YmT3kFu9mVYzDp
	m0MuzMFkSQgz8SQOZ/Hm2lAqaE2ia9/ELl6zlcsRNfhDzNW5PeduRS5dr0yvZddn7sHoS72Vvu2XR
	FrbUg3x88dcBCaf0L4NigPV6sMcQUGZO/47tek8z6Zi7OP41lCJGnnbovmr3ASe6WQnYF2PPG1sdI
	PSrzu4TydDRrIYP8sdWr67eKcJmd4TNHFE3Jk7YKKD+eAyIoEGDnIqeosRlPLwvWRzck7bUkC5HiE
	deWi/XgCjbBITNy3JpWFF1fueg9nf6rW/oF1Y+L+Q2BeDIhwFZjsDZHVJ0+TLPn+d/JGPixb4YfHa
	PWqlLH1I6IEmg6MRbQEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMZj2-0008To-11; Fri, 03 May 2019 15:03:48 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMZiy-0008TB-6o
 for linux-rockchip@lists.infradead.org; Fri, 03 May 2019 15:03:46 +0000
Received: by mail-ua1-x943.google.com with SMTP id p13so2098786uaa.11
 for <linux-rockchip@lists.infradead.org>; Fri, 03 May 2019 08:03:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=/2zB92Wp7OJKMoHTQAGZBoeHpTeZv+wAfkk5Wp8/82I=;
 b=Mx0fWWvVhpczsqJaUFU1eRmw+T3uPX1WqlKj2E7W8b/n99kkVbfP9JspiOpaZLUVky
 in5uLVHMBmxQRyX50+F0j6bFQTxfVZ/jJoVP2mwPVT0u36RZoq28wxcG52d6z1fhpbD4
 Ow0i4UBsPq0npH8UFycS+tjrjwkRFr5GtuViw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=/2zB92Wp7OJKMoHTQAGZBoeHpTeZv+wAfkk5Wp8/82I=;
 b=J1KAxa43uh4LRer4g9oa7WTkLnaEUrX/HuDjVok4y/OlBFNVmCXehcdnWJl4KGRP7m
 /PUFVFstJWxlxdxwB5Ch6wPM1fYRfawC0TegrftamY15xMFc0J/M8k/WtLacY2YPwAVS
 4WOyb+TAOSba7GzKvernNPrEogw4F0cDx8RzFMUowWDgXeh5sQ/HaJhnIzlNqyHpter+
 jPUIMiEe46TuKBHfeHP9IR2rbr6A41Y4G0MwkKWSE/Ein3YVAh7Kl1ZsaMZn+jWb7LLF
 1hj1T/tQHw48hkKqxIzWUOOEKP5MAJZ4xFy7LV9lDElMkb2BqYWnz47WATErlxpy1MaO
 uv5A==
X-Gm-Message-State: APjAAAVhqQAmn+L0rH4Om60RDTI02qtcipwtVX+Odo9tx/IUE6+7th5m
 L9Ipyffvr+BVj9Kq5mv/JZ3yXPLzAD4=
X-Google-Smtp-Source: APXvYqyXzopyb/LfrbeuIDQHa0mU0Hnw2dSsg2lgISfT/dzIn7eR7En/w0AJsrqCQngQo8A/oVLIUw==
X-Received: by 2002:ab0:6342:: with SMTP id f2mr4706365uap.17.1556895821699;
 Fri, 03 May 2019 08:03:41 -0700 (PDT)
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com.
 [209.85.217.46])
 by smtp.gmail.com with ESMTPSA id o126sm578517vke.55.2019.05.03.08.03.36
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 08:03:38 -0700 (PDT)
Received: by mail-vs1-f46.google.com with SMTP id z145so3797410vsc.0
 for <linux-rockchip@lists.infradead.org>; Fri, 03 May 2019 08:03:36 -0700 (PDT)
X-Received: by 2002:a67:d29e:: with SMTP id z30mr5820475vsi.111.1556895816252; 
 Fri, 03 May 2019 08:03:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190418001356.124334-1-dianders@chromium.org>
 <20190418001356.124334-2-dianders@chromium.org>
 <SN1PR12MB243108D1EF3239EC4F730ACDA7390@SN1PR12MB2431.namprd12.prod.outlook.com>
 <CAD=FV=UOmfNeuZPrDcZRdwAkF4yRifCpBGUuZTsmmz0UVEZ+yA@mail.gmail.com>
 <SN1PR12MB24317F315C5A4DFE70F9CB0DA73A0@SN1PR12MB2431.namprd12.prod.outlook.com>
 <CAD=FV=UWGOWiCpy5qUY8oFHPyxdYJe7OsdWBDuCNcXBu5BJoGA@mail.gmail.com>
 <SN1PR12MB243156982D5BD74F11680597A7350@SN1PR12MB2431.namprd12.prod.outlook.com>
In-Reply-To: <SN1PR12MB243156982D5BD74F11680597A7350@SN1PR12MB2431.namprd12.prod.outlook.com>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 3 May 2019 08:03:24 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XzsKe5n_ThcrByW79UznpkmHf0YNRNKH8G3eFtUSsYZQ@mail.gmail.com>
Message-ID: <CAD=FV=XzsKe5n_ThcrByW79UznpkmHf0YNRNKH8G3eFtUSsYZQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/5] usb: dwc2: bus suspend/resume for hosts with
 DWC2_POWER_DOWN_PARAM_NONE
To: Artur Petrosyan <Arthur.Petrosyan@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_080344_278835_B194D5FC 
X-CRM114-Status: GOOD (  33.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Amelie Delaunay <amelie.delaunay@st.com>, Randy Li <ayaka@soulik.info>,
 "amstan@chromium.org" <amstan@chromium.org>,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "zyw@rock-chips.com" <zyw@rock-chips.com>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "mka@chromium.org" <mka@chromium.org>, Alan Stern <stern@rowland.harvard.edu>,
 Elaine Zhang <zhangqing@rock-chips.com>,
 "jwerner@chromium.org" <jwerner@chromium.org>,
 William Wu <william.wu@rock-chips.com>,
 "ryandcase@chromium.org" <ryandcase@chromium.org>,
 "dinguyen@opensource.altera.com" <dinguyen@opensource.altera.com>,
 "heiko@sntech.de" <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Fri, May 3, 2019 at 1:20 AM Artur Petrosyan
<Arthur.Petrosyan@synopsys.com> wrote:
>
> On 5/1/2019 05:57, Doug Anderson wrote:
> > Hi,
> >
> > On Mon, Apr 29, 2019 at 11:06 PM Artur Petrosyan
> > <Arthur.Petrosyan@synopsys.com> wrote:
> >>
> >> Hi,
> >>
> >> On 4/29/2019 21:34, Doug Anderson wrote:
> >>> Hi,
> >>>
> >>> On Mon, Apr 29, 2019 at 1:43 AM Artur Petrosyan
> >>> <Arthur.Petrosyan@synopsys.com> wrote:
> >>>>
> >>>> Hi,
> >>>>
> >>>> On 4/18/2019 04:15, Douglas Anderson wrote:
> >>>>> This is an attempt to rehash commit 0cf884e819e0 ("usb: dwc2: add bus
> >>>>> suspend/resume for dwc2") on ToT.  That commit was reverted in commit
> >>>>> b0bb9bb6ce01 ("Revert "usb: dwc2: add bus suspend/resume for dwc2"")
> >>>>> because apparently it broke the Altera SOCFPGA.
> >>>>>
> >>>>> With all the changes that have happened to dwc2 in the meantime, it's
> >>>>> possible that the Altera SOCFPGA will just magically work with this
> >>>>> change now.  ...and it would be good to get bus suspend/resume
> >>>>> implemented.
> >>>>>
> >>>>> This change is a forward port of one that's been living in the Chrome
> >>>>> OS 3.14 kernel tree.
> >>>>>
> >>>>> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> >>>>> ---
> >>>>> This patch was last posted at:
> >>>>>
> >>>>> https://urldefense.proofpoint.com/v2/url?u=https-3A__lkml.kernel.org_r_1446237173-2D15263-2D1-2Dgit-2Dsend-2Demail-2Ddianders-40chromium.org&d=DwIDAg&c=DPL6_X_6JkXFx7AXWqB0tg&r=9hPBFKCJ_nBjJhGVrrlYOeOQjP_HlVzYqrC_D7niMJI&m=MMfe-4lZePyty6F5zfQ54kiYGuJWNulyRat944LkOsc&s=nExFpAPP_0plZfO5LMG1B-mqt1vyCvE35elVcyVgs8Y&e=
> >>>>>
> >>>>> ...and appears to have died the death of silence.  Maybe it could get
> >>>>> some bake time in linuxnext if we can't find any proactive testing?
> >>>>>
> >>>>> I will also freely admit that I don't know tons about the theory
> >>>>> behind this patch.  I'm mostly just re-hashing the original commit
> >>>>> from Kever that was reverted since:
> >>>>> * Turning on partial power down on rk3288 doesn't "just work".  I
> >>>>>      don't get hotplug events.  This is despite dwc2 auto-detecting that
> >>>>>      we are power optimized.
> >>>> What do you mean by doesn't "just work" ? It seem to me that even after
> >>>> adding this patch you don't get issues fixed.
> >>>> You mention that you don't get the hotplug events. Please provide dwc2
> >>>> debug logs and register dumps on this issue.
> >>>
> >>> I mean that partial power down in the currently upstream driver
> >>> doesn't work.  AKA: if I turn on partial power down in the upstream
> >>> driver then hotplug events break.  I can try to provide some logs.  On
> >>> what exact version of the code do you want logs?  Just your series?
> >>> Just my series?  Mainline?  Some attempt at combining both series?  As
> >>> I said things seem to sorta work with the combined series.  I can try
> >>> to clarify if that's the series you want me to test with.  ...or I can
> >>> wait for your next version?
> >> As I said this patch doesn't fix the issue with hotplug. With this patch
> >> or without the hotplug behaves as it was. I have tested it on our setup.
> >>
> >> Have you debugged your patch? Does it make any difference on your setup
> >> ? Does it fix the issue with hotplug?
> >
> > I think we're still not taking on the same page.
> >
> > My patch makes no attempt to make partial power down mode work.  My
> > patch attempts to make things work a little better when using
> > DWC2_POWER_DOWN_PARAM_NONE.  There is no use testing my patch with
> > partial power down as it shouldn't have any impact there.
> >
> >
> >>> I am by no means an expert on dwc2, but an assumption made in my patch
> >>> is that even cores that can't support partial power down can still
> >>> save some amount of power when hcd_suspend is called.
> >> Have you tried to debug dwc2 with power_down == DWC2_POWER_DOWN_PARAM_NONE ?
> >>>
> >>> Some evidence that this should be possible: looking at mainline Linux
> >>> and at dwc2_port_suspend(), I see:
> >>>
> >>> * It is currently called even when we have DWC2_POWER_DOWN_PARAM_NONE
> >> Currently (without your and my patches) (looking at mainline Linux) the
> >> function dwc2_port_suspend() is called anyway because its call is issued
> >> by the system. But it performs entering to suspend only in case of
> >> DWC2_POWER_DOWN_PARAM_PARTIAL.
> >>
> >> This is not an assumption. What I am pointing out is based on debugging
> >> and before making assumptions without debugging for me seems not ok.
> >>
> >> Currently without your patch and without my patches. In the
> >> dwc2_port_suspend() it will enter to suspend only in case that
> >> power_down == DWC2_POWER_DOWN_PARAM_PARTIAL. Because if you look at the
> >> code more carefully you will see
> >>
> >>          if (hsotg->params.power_down != DWC2_POWER_DOWN_PARAM_PARTIAL)
> >>                  goto skip_power_saving;
> >>
> >> This says if power_down is not DWC2_POWER_DOWN_PARAM_PARTIAL then skip
> >> power saving.
> >>
> >> So but after your patch. If power_down is DWC2_POWER_DOWN_PARAM_NONE it
> >> tries to suspend.
> >
> > We must be looking at different code.  I'm looking at Linux's tree, AKA:
> >
> > https://urldefense.proofpoint.com/v2/url?u=https-3A__git.kernel.org_pub_scm_linux_kernel_git_torvalds_linux.git_tree_drivers_usb_dwc2_hcd.c-23n3488&d=DwIFaQ&c=DPL6_X_6JkXFx7AXWqB0tg&r=9hPBFKCJ_nBjJhGVrrlYOeOQjP_HlVzYqrC_D7niMJI&m=IWkDOOGTr0q-H1piDv2KOZe_Hnrz18g6rXFx-DsTuv4&s=AHu2iOKkybliRGtIfN7cF5p070UdvUKTYJsyAKYojis&e=
> Here you are looking at the old code. After that there are several of
> changes related to suspend/resume functions.

In my email, see that I said I actually checked out mainline kernel
(and I gave you the exact version: "v5.1-rc7-5-g83a50840e72a") and
added printouts in dwc2_port_suspend() next to where it set HPRT0_SUSP
and PCGCTL_STOPPCLK in dwc2_port_suspend().

[  454.906364] dwc2 ff540000.usb: I'm setting HPRT0_SUSP
[  454.906367] dwc2 ff540000.usb: I'm setting PCGCTL_STOPPCLK

The version "v5.1-rc7-5-g83a50840e72a" is not old code.


> This is the link to the code with changes. Latest version of those
> functions.
>
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/usb/dwc2/hcd.c#n4489
>
> Your changes are sitting on that latest version of code. Not the old
> version of it.

You are pointing me at _dwc2_hcd_suspend() whereas I pointed at
dwc2_port_suspend().  Why?

I am saying that dwc2_port_suspend() _does_ set "HPRT0_SUSP" and
"PCGCTL_STOPPCLK" even with DWC2_POWER_DOWN_PARAM_NONE.  Do you
disagree?

I completely agree that on mainline _dwc2_hcd_suspend() _does not_ set
these bits with DWC2_POWER_DOWN_PARAM_NONE.  That is what my patch
fixes.


-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
