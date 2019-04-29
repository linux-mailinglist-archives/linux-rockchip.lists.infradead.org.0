Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9703E962
	for <lists+linux-rockchip@lfdr.de>; Mon, 29 Apr 2019 19:41:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jW7BUsG5UBmQEDl9OucnjldGOiBu6b5kwUMrdBVn5Lc=; b=Kgi1Qy86F4w1Kt
	c0OBgaYys9onNleu+6jbafXiuy4aYZvo2jZ63MOPRWlYYjKzwOOrTtSddY/eYJGSnJQmvj+5TpeEd
	8XEX+mCepNJJFzOHkRxJtFEvB1qBvjnpHQL76fQt9WovayPHn3oCFtVnvsy68mugA4ETyFMEruyG0
	8oH5e6VkxgF9WX8kpcbP9nCTBw6brsQ3WnPg/Zs5SNHoUrzJsxTHVUJztpXwjsz7b7pCptn6rH4kv
	D7mAZplVgx9fSfUg7XvA7p3FkI81TN6Ads0jWhgJb92nvB8dCitoptPyT5cHlP5179tRlc0QRSdUh
	vmN83SSt+9ataEfjGE+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLAHP-0007uP-GJ; Mon, 29 Apr 2019 17:41:27 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLAHI-0007mk-1m
 for linux-rockchip@lists.infradead.org; Mon, 29 Apr 2019 17:41:22 +0000
Received: by mail-ua1-x941.google.com with SMTP id l17so3802029uar.4
 for <linux-rockchip@lists.infradead.org>; Mon, 29 Apr 2019 10:41:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=oRI/yWgrQc4mohswqM3B8q6VlrbjFTkbV3C0nqXm/N8=;
 b=SqTTfZ8xJPeqYmNsfZX4+7c7BOKZ+w14+xT/g9LA4jEOJ/AvzuukBOxc/w4W9/ar0o
 u8eRsIF7UgmNV6PzwCkEO/jDyOCF7AdfB53c0wLmmIMl3EBzBwHOvZCTQZZzvDgy3SjA
 fS3NhoZs4IM+X4Jzf5r4xVFETZvFgAFmXfZfg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=oRI/yWgrQc4mohswqM3B8q6VlrbjFTkbV3C0nqXm/N8=;
 b=l0hONe7cRJg4n5dSCIhwZC1ZsAFrRa7koMsYuQ+IDO7VBwkzNLfdRTN/oKprAWP6dj
 7UVkO0F6j/edJNbdUzPkDes5ML6zsJPstUCmUVKwuVu/KqdjjP2Q1SqeyIUc40u0mzxK
 pYRkVDX0HX31CL1g4vU/ReZq9IO+S1va+zf1AvqlEap8VRwolrZ+KlkMvrQDdaIl5Zlr
 f3SrhBiARu4ph7IU/4+1+Zsh33Jcfy10WQFpSZ52BGvbPZwoevEbC+jrT261HdCevrX3
 qoGucmQT72sjVQUfAGFGFO/AoaIMmZ8nveNmQQGI70VF7doX8opmgPgQUiKAb5jctSib
 k80A==
X-Gm-Message-State: APjAAAU3T5gzmgbbxrzoAJEQaP2p43k6sNsQ1bCem8ji44Q9GlAhPpx+
 SOvrBTtw/MOBDjTLFQmI5BaDD8fjKpQ=
X-Google-Smtp-Source: APXvYqzahNp/QB++Xzt/33T/pNqqf/QhDz5lja8kKK5P3/o8ybd8XsVKlEbIizM0rx2v69IWTwGftA==
X-Received: by 2002:a9f:3273:: with SMTP id y48mr14813946uad.38.1556559677685; 
 Mon, 29 Apr 2019 10:41:17 -0700 (PDT)
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com.
 [209.85.217.51])
 by smtp.gmail.com with ESMTPSA id b9sm8327788vkb.23.2019.04.29.10.41.17
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Apr 2019 10:41:17 -0700 (PDT)
Received: by mail-vs1-f51.google.com with SMTP id w13so6405758vsc.4
 for <linux-rockchip@lists.infradead.org>; Mon, 29 Apr 2019 10:41:17 -0700 (PDT)
X-Received: by 2002:a67:bc01:: with SMTP id t1mr33891102vsn.149.1556559239606; 
 Mon, 29 Apr 2019 10:33:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190418001356.124334-1-dianders@chromium.org>
 <20190418001356.124334-2-dianders@chromium.org>
 <SN1PR12MB243108D1EF3239EC4F730ACDA7390@SN1PR12MB2431.namprd12.prod.outlook.com>
In-Reply-To: <SN1PR12MB243108D1EF3239EC4F730ACDA7390@SN1PR12MB2431.namprd12.prod.outlook.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 29 Apr 2019 10:33:48 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UOmfNeuZPrDcZRdwAkF4yRifCpBGUuZTsmmz0UVEZ+yA@mail.gmail.com>
Message-ID: <CAD=FV=UOmfNeuZPrDcZRdwAkF4yRifCpBGUuZTsmmz0UVEZ+yA@mail.gmail.com>
Subject: Re: [PATCH v2 1/5] usb: dwc2: bus suspend/resume for hosts with
 DWC2_POWER_DOWN_PARAM_NONE
To: Artur Petrosyan <Arthur.Petrosyan@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_104120_091376_C65811BF 
X-CRM114-Status: GOOD (  29.83  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Mon, Apr 29, 2019 at 1:43 AM Artur Petrosyan
<Arthur.Petrosyan@synopsys.com> wrote:
>
> Hi,
>
> On 4/18/2019 04:15, Douglas Anderson wrote:
> > This is an attempt to rehash commit 0cf884e819e0 ("usb: dwc2: add bus
> > suspend/resume for dwc2") on ToT.  That commit was reverted in commit
> > b0bb9bb6ce01 ("Revert "usb: dwc2: add bus suspend/resume for dwc2"")
> > because apparently it broke the Altera SOCFPGA.
> >
> > With all the changes that have happened to dwc2 in the meantime, it's
> > possible that the Altera SOCFPGA will just magically work with this
> > change now.  ...and it would be good to get bus suspend/resume
> > implemented.
> >
> > This change is a forward port of one that's been living in the Chrome
> > OS 3.14 kernel tree.
> >
> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > ---
> > This patch was last posted at:
> >
> > https://urldefense.proofpoint.com/v2/url?u=https-3A__lkml.kernel.org_r_1446237173-2D15263-2D1-2Dgit-2Dsend-2Demail-2Ddianders-40chromium.org&d=DwIDAg&c=DPL6_X_6JkXFx7AXWqB0tg&r=9hPBFKCJ_nBjJhGVrrlYOeOQjP_HlVzYqrC_D7niMJI&m=MMfe-4lZePyty6F5zfQ54kiYGuJWNulyRat944LkOsc&s=nExFpAPP_0plZfO5LMG1B-mqt1vyCvE35elVcyVgs8Y&e=
> >
> > ...and appears to have died the death of silence.  Maybe it could get
> > some bake time in linuxnext if we can't find any proactive testing?
> >
> > I will also freely admit that I don't know tons about the theory
> > behind this patch.  I'm mostly just re-hashing the original commit
> > from Kever that was reverted since:
> > * Turning on partial power down on rk3288 doesn't "just work".  I
> >    don't get hotplug events.  This is despite dwc2 auto-detecting that
> >    we are power optimized.
> What do you mean by doesn't "just work" ? It seem to me that even after
> adding this patch you don't get issues fixed.
> You mention that you don't get the hotplug events. Please provide dwc2
> debug logs and register dumps on this issue.

I mean that partial power down in the currently upstream driver
doesn't work.  AKA: if I turn on partial power down in the upstream
driver then hotplug events break.  I can try to provide some logs.  On
what exact version of the code do you want logs?  Just your series?
Just my series?  Mainline?  Some attempt at combining both series?  As
I said things seem to sorta work with the combined series.  I can try
to clarify if that's the series you want me to test with.  ...or I can
wait for your next version?


> > @@ -4506,21 +4507,35 @@ static int _dwc2_hcd_suspend(struct usb_hcd *hcd)
> >        */
> >       if (!hsotg->bus_suspended) {
> >               hprt0 = dwc2_read_hprt0(hsotg);
> > -             hprt0 |= HPRT0_SUSP;
> > -             hprt0 &= ~HPRT0_PWR;
> > -             dwc2_writel(hsotg, hprt0, HPRT0);
> > -             spin_unlock_irqrestore(&hsotg->lock, flags);
> > -             dwc2_vbus_supply_exit(hsotg);
> > -             spin_lock_irqsave(&hsotg->lock, flags);
> > +             if (hprt0 & HPRT0_CONNSTS) { > +                        hprt0 |= HPRT0_SUSP;
> Here you set "HPRT0_SUSP" bit but what if core doesn't support both
> hibernation and Partial Power down assuming that
> hsotg->params.power_down" value us equal to "DWC2_POWER_DOWN_PARAM_NONE"
> which is 0.

I am by no means an expert on dwc2, but an assumption made in my patch
is that even cores that can't support partial power down can still
save some amount of power when hcd_suspend is called.

Some evidence that this should be possible: looking at mainline Linux
and at dwc2_port_suspend(), I see:

* It is currently called even when we have DWC2_POWER_DOWN_PARAM_NONE

* It currently sets HPRT0_SUSP

* It currently sets PCGCTL_STOPPCLK specifically in the case where
power down is DWC2_POWER_DOWN_PARAM_NONE.

...I believe that the net effect of my patch ends up doing both those
same two things in hcd_suspend.  That is: when power_down is
DWC2_POWER_DOWN_PARAM_NONE I believe my patch is really just doing the
same thing that dwc2_port_suspend() would do in the same case.  Is
that not OK?



> > +                     if (hsotg->params.power_down == DWC2_POWER_DOWN_PARAM_PARTIAL)
> You make one checking of hsotg->params.power_down mode here.
> > +                             hprt0 &= ~HPRT0_PWR;
> > +                     dwc2_writel(hsotg, hprt0, HPRT0);
> > +             }
> > +             if (hsotg->params.power_down == DWC2_POWER_DOWN_PARAM_PARTIAL) {
> another checking of power_down mode here.

Yeah, we can debate about how to best share/split code.  I'm not in
love with the current structure either.  When I rebased your patches
atop mine I changed this to more fully split them and I agree that was
better.


> > @@ -4592,10 +4612,12 @@ static int _dwc2_hcd_resume(struct usb_hcd *hcd)
> >               spin_unlock_irqrestore(&hsotg->lock, flags);
> >               dwc2_port_resume(hsotg);
> >       } else {
> > -             dwc2_vbus_supply_init(hsotg);
> > +             if (hsotg->params.power_down == DWC2_POWER_DOWN_PARAM_PARTIAL) {
> > +                     dwc2_vbus_supply_init(hsotg);
> >
> > -             /* Wait for controller to correctly update D+/D- level */
> > -             usleep_range(3000, 5000);
> > +                     /* Wait for controller to correctly update D+/D- level */
> > +                     usleep_range(3000, 5000);
> > +             }
> >
> >               /*
> >                * Clear Port Enable and Port Status changes.
> >
>
> I have tested the patch on HAPS-DX. With this patch or without it when I
> have a device connected core  enters to partial power down and doesn't
> exit from it. So I cannot use the device.

Can you explain what HAPS-DX is?


-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
