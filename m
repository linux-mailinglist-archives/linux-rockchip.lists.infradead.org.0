Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E75C103BF
	for <lists+linux-rockchip@lfdr.de>; Wed,  1 May 2019 03:51:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5kbw/fqjoUJaVgl3ITJq0/ppmMpHCvQbyf8hxRvGPDU=; b=k+Pr9p1SL0/KVX
	h5fGRO5ahx7jU9z/GoeN+2g3vGyZrnhcAmPXRav5O99f/fiyzPs/BQWEF8BnBNPjtKeKpzyaEK0gQ
	6Q8RLDj8f0UWDxbR8brR7s0LtifWrr0veHla69j0gCWyXykVj2W99siszEUqvNU6sGudWnJ2cEch2
	+B59hlaY3GOst968DWN2zkCQZP57yuGjqP8ypnXg0++lzCyhT30RVaj9kimXQIturZ2d+6212DC/P
	40ME3czFhSFREJMtuHD87xPz5UgRYHYFCvvsdXoSxFsxehlhG2RHmKG9CAUvOdXicE07LVizAWvd8
	D3oPjBrnXZ8XBVoi7+7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLePU-0000NA-FE; Wed, 01 May 2019 01:51:48 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLePR-0000MQ-7C
 for linux-rockchip@lists.infradead.org; Wed, 01 May 2019 01:51:47 +0000
Received: by mail-ua1-x944.google.com with SMTP id u34so3602156uau.7
 for <linux-rockchip@lists.infradead.org>; Tue, 30 Apr 2019 18:51:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=06LICDfjCeCtvVUkBORNi2vtZVpAhIUAW1k7qKawkC4=;
 b=j6fmWbqC7a7BBUo2lPeQez2tJf5Zgp111u3x/f4c4UZKQzbMQLEf3aF5oaD85bXQdb
 t/dAWXeGctu5hwKcP/L+ocQoEikwxwmjBJ2FdoWCGDFdd0/2zAMxOD6oV/7oR8l9OgYn
 zCJFYMTm8yPHu7NOGDd9qCKPnJuut694tNiyY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=06LICDfjCeCtvVUkBORNi2vtZVpAhIUAW1k7qKawkC4=;
 b=D8vUIDaMijSthTtreVFNi7VzWHzooBFO5aY0YhGDjhq+8WaZa/tuqpxZquY8ciARaZ
 ozuuo+kau5htDxrPe0aBg7pEHuiWZzXZqiBE09SJA3WoulD/O8akCmo0Yuq1gtbojZil
 lBM6As9qgt28d/bZavSn1GbGlp7HXOkoN2uEUkLvSttzDzDpm+sGiaQR4R4AEQcIpkNA
 iQEYr6szdtOZ7sTm31gXbvODEbz3n6KwxHQDLMthXtmf7+M/CPdYJFHoYRJVn8bjgFXj
 aYiXWSKPpssZb92JBuuMq0j+Wmce3WHQf4UxBZgMWkAgDOLvfHFciPZ5TOtzDPaOHiWM
 5vAg==
X-Gm-Message-State: APjAAAWMdyMjsfBrAVcdpKpiKBYE6X9VlTElLUDAFS8XXVVz7oES7WRW
 vfKNt0D8qambAt7akljNN2xeZdjMy2A=
X-Google-Smtp-Source: APXvYqw91fS0jeWqMCwmZn6CZcvgkWw7LoOnFTH/kPhIIO1O/cRCTATs9HVyzfs3WVlltW22KMFEuw==
X-Received: by 2002:ab0:ec:: with SMTP id 99mr13028305uaj.82.1556675501526;
 Tue, 30 Apr 2019 18:51:41 -0700 (PDT)
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com.
 [209.85.217.48])
 by smtp.gmail.com with ESMTPSA id s194sm15497967vkf.37.2019.04.30.18.51.36
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Apr 2019 18:51:37 -0700 (PDT)
Received: by mail-vs1-f48.google.com with SMTP id b23so1556404vso.1
 for <linux-rockchip@lists.infradead.org>; Tue, 30 Apr 2019 18:51:36 -0700 (PDT)
X-Received: by 2002:a67:7cd1:: with SMTP id x200mr7091738vsc.144.1556675496267; 
 Tue, 30 Apr 2019 18:51:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190418001356.124334-1-dianders@chromium.org>
 <20190418001356.124334-2-dianders@chromium.org>
 <SN1PR12MB243108D1EF3239EC4F730ACDA7390@SN1PR12MB2431.namprd12.prod.outlook.com>
 <CAD=FV=UOmfNeuZPrDcZRdwAkF4yRifCpBGUuZTsmmz0UVEZ+yA@mail.gmail.com>
 <SN1PR12MB24317F315C5A4DFE70F9CB0DA73A0@SN1PR12MB2431.namprd12.prod.outlook.com>
In-Reply-To: <SN1PR12MB24317F315C5A4DFE70F9CB0DA73A0@SN1PR12MB2431.namprd12.prod.outlook.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 30 Apr 2019 18:51:35 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UWGOWiCpy5qUY8oFHPyxdYJe7OsdWBDuCNcXBu5BJoGA@mail.gmail.com>
Message-ID: <CAD=FV=UWGOWiCpy5qUY8oFHPyxdYJe7OsdWBDuCNcXBu5BJoGA@mail.gmail.com>
Subject: Re: [PATCH v2 1/5] usb: dwc2: bus suspend/resume for hosts with
 DWC2_POWER_DOWN_PARAM_NONE
To: Artur Petrosyan <Arthur.Petrosyan@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_185145_290978_348C2269 
X-CRM114-Status: GOOD (  35.28  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

On Mon, Apr 29, 2019 at 11:06 PM Artur Petrosyan
<Arthur.Petrosyan@synopsys.com> wrote:
>
> Hi,
>
> On 4/29/2019 21:34, Doug Anderson wrote:
> > Hi,
> >
> > On Mon, Apr 29, 2019 at 1:43 AM Artur Petrosyan
> > <Arthur.Petrosyan@synopsys.com> wrote:
> >>
> >> Hi,
> >>
> >> On 4/18/2019 04:15, Douglas Anderson wrote:
> >>> This is an attempt to rehash commit 0cf884e819e0 ("usb: dwc2: add bus
> >>> suspend/resume for dwc2") on ToT.  That commit was reverted in commit
> >>> b0bb9bb6ce01 ("Revert "usb: dwc2: add bus suspend/resume for dwc2"")
> >>> because apparently it broke the Altera SOCFPGA.
> >>>
> >>> With all the changes that have happened to dwc2 in the meantime, it's
> >>> possible that the Altera SOCFPGA will just magically work with this
> >>> change now.  ...and it would be good to get bus suspend/resume
> >>> implemented.
> >>>
> >>> This change is a forward port of one that's been living in the Chrome
> >>> OS 3.14 kernel tree.
> >>>
> >>> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> >>> ---
> >>> This patch was last posted at:
> >>>
> >>> https://urldefense.proofpoint.com/v2/url?u=https-3A__lkml.kernel.org_r_1446237173-2D15263-2D1-2Dgit-2Dsend-2Demail-2Ddianders-40chromium.org&d=DwIDAg&c=DPL6_X_6JkXFx7AXWqB0tg&r=9hPBFKCJ_nBjJhGVrrlYOeOQjP_HlVzYqrC_D7niMJI&m=MMfe-4lZePyty6F5zfQ54kiYGuJWNulyRat944LkOsc&s=nExFpAPP_0plZfO5LMG1B-mqt1vyCvE35elVcyVgs8Y&e=
> >>>
> >>> ...and appears to have died the death of silence.  Maybe it could get
> >>> some bake time in linuxnext if we can't find any proactive testing?
> >>>
> >>> I will also freely admit that I don't know tons about the theory
> >>> behind this patch.  I'm mostly just re-hashing the original commit
> >>> from Kever that was reverted since:
> >>> * Turning on partial power down on rk3288 doesn't "just work".  I
> >>>     don't get hotplug events.  This is despite dwc2 auto-detecting that
> >>>     we are power optimized.
> >> What do you mean by doesn't "just work" ? It seem to me that even after
> >> adding this patch you don't get issues fixed.
> >> You mention that you don't get the hotplug events. Please provide dwc2
> >> debug logs and register dumps on this issue.
> >
> > I mean that partial power down in the currently upstream driver
> > doesn't work.  AKA: if I turn on partial power down in the upstream
> > driver then hotplug events break.  I can try to provide some logs.  On
> > what exact version of the code do you want logs?  Just your series?
> > Just my series?  Mainline?  Some attempt at combining both series?  As
> > I said things seem to sorta work with the combined series.  I can try
> > to clarify if that's the series you want me to test with.  ...or I can
> > wait for your next version?
> As I said this patch doesn't fix the issue with hotplug. With this patch
> or without the hotplug behaves as it was. I have tested it on our setup.
>
> Have you debugged your patch? Does it make any difference on your setup
> ? Does it fix the issue with hotplug?

I think we're still not taking on the same page.

My patch makes no attempt to make partial power down mode work.  My
patch attempts to make things work a little better when using
DWC2_POWER_DOWN_PARAM_NONE.  There is no use testing my patch with
partial power down as it shouldn't have any impact there.


> > I am by no means an expert on dwc2, but an assumption made in my patch
> > is that even cores that can't support partial power down can still
> > save some amount of power when hcd_suspend is called.
> Have you tried to debug dwc2 with power_down == DWC2_POWER_DOWN_PARAM_NONE ?
> >
> > Some evidence that this should be possible: looking at mainline Linux
> > and at dwc2_port_suspend(), I see:
> >
> > * It is currently called even when we have DWC2_POWER_DOWN_PARAM_NONE
> Currently (without your and my patches) (looking at mainline Linux) the
> function dwc2_port_suspend() is called anyway because its call is issued
> by the system. But it performs entering to suspend only in case of
> DWC2_POWER_DOWN_PARAM_PARTIAL.
>
> This is not an assumption. What I am pointing out is based on debugging
> and before making assumptions without debugging for me seems not ok.
>
> Currently without your patch and without my patches. In the
> dwc2_port_suspend() it will enter to suspend only in case that
> power_down == DWC2_POWER_DOWN_PARAM_PARTIAL. Because if you look at the
> code more carefully you will see
>
>         if (hsotg->params.power_down != DWC2_POWER_DOWN_PARAM_PARTIAL)
>                 goto skip_power_saving;
>
> This says if power_down is not DWC2_POWER_DOWN_PARAM_PARTIAL then skip
> power saving.
>
> So but after your patch. If power_down is DWC2_POWER_DOWN_PARAM_NONE it
> tries to suspend.

We must be looking at different code.  I'm looking at Linux's tree, AKA:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/usb/dwc2/hcd.c#n3488

I took a mainline kernel ("v5.1-rc7-5-g83a50840e72a") and added
printouts in dwc2_port_suspend() next to where it set HPRT0_SUSP and
PCGCTL_STOPPCLK in dwc2_port_suspend().

[  454.906364] dwc2 ff540000.usb: I'm setting HPRT0_SUSP
[  454.906367] dwc2 ff540000.usb: I'm setting PCGCTL_STOPPCLK

...and just to confirm:

# grep '^power' /sys/kernel/debug/*.usb/params
/sys/kernel/debug/ff540000.usb/params:power_down                    : 0
/sys/kernel/debug/ff580000.usb/params:power_down                    : 0

So I'm really quite convinced that on mainline Linux with
DWC2_POWER_DOWN_PARAM_NONE that dwc2_port_suspend() sets HPRT0_SUSP
and PCGCTL_STOPPCLK.


> > ...I believe that the net effect of my patch ends up doing both those
> > same two things in hcd_suspend.  That is: when power_down is
> > DWC2_POWER_DOWN_PARAM_NONE I believe my patch is really just doing the
> > same thing that dwc2_port_suspend() would do in the same case.  Is
> > that not OK?
> No if your patch is doing the same thing as it was doing before what is
> the purpose of the patch ?

The purpose is to make _dwc2_hcd_suspend() work more correctly in the
case where power_down is DWC2_POWER_DOWN_PARAM_NONE


> My testes show that your patch doesn't fix the issue related partial
> power down.

Right.  I have been trying to say that my patch doesn't do anything at
all for partial power down.  I am simply trying to make
DWC2_POWER_DOWN_PARAM_NONE work more correctly.

I haven't run all the power consumption tests in quite a long time and
I'll try to get it hooked up tomorrow to confirm that my patch really
truly is still needed to help with power consumption.  I did confirm
that at least there are cases where _dwc2_hcd_suspend() is called and
my patch is what sets the important bits.

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
