Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1830130E4
	for <lists+linux-rockchip@lfdr.de>; Fri,  3 May 2019 17:07:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Qah/vxNPU+PAwS7N1aKgaSFbhBNHVeZaW9IpxEdW5A=; b=Yyfp4jmQY1p39R
	H5ofWXIAq/IC7pGz1Nt6QuJaBI+4aAous6gyS1C4r8lMF04X4/i9KzlVDeqJ22Hm60qY17vvXUn7i
	OEjpmzdqGqN0lIz2JktpPM6eg2V9bLTKDwrArLB9yAQGKl/jmDzIJtnPy/IWTa3+tGhABdd/fGn3T
	tWa2uQ8EgyTDrsirepIixzawfdoRxr9gWqbUb1GwgR9LGdEUPEFeDOgowx78uExOApeKUW6SnIsON
	Q9Im4Cl7j/lFA734mlKBIJm6Q2JzjDSfd3Z+87azMvsneP0JWfCQz5SRpxc50dTFTImmyYjx6PIDi
	s1zaBLXkwL/Y1xqevJ9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMZmy-0001Yu-UD; Fri, 03 May 2019 15:07:52 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMZmu-0001YM-Ol
 for linux-rockchip@lists.infradead.org; Fri, 03 May 2019 15:07:50 +0000
Received: by mail-vs1-xe42.google.com with SMTP id b23so3804916vso.1
 for <linux-rockchip@lists.infradead.org>; Fri, 03 May 2019 08:07:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=/7DMlLhZpYsWuofw8OIODIFO7gaAmV2hSfavk1PWNjw=;
 b=XUmZiwqwzLoqpAUVe8w0tkVHbFRykUE91OYgujzpgaBCx48baPDuGmg0M6jQyV4YII
 OWTb+7Zdpdig3RsJGJk/hfTgq68bJikh98t4m/Hra5MvlqkXrXqojZor8kcLrun7IcVq
 NOfXaNbyYGwDM79mwwB5iVPjXFMqHWmAq2c4c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=/7DMlLhZpYsWuofw8OIODIFO7gaAmV2hSfavk1PWNjw=;
 b=Z8X6vcEAnQPnlJZ6TuwbHjuKYuZjAuZ76nnboL2sW+tCQozMigFnO73DzRfts8+MAG
 wPx5UXaerYuH5dOs6Lf4EjHAbyg5iE2zlIZomI58DNaFrwO5N7C7N5cf0TKRrjXDeaQp
 sxEjqmoecphSBtlUsIR62IWGrbvZk47iZ/7JDQdrgvunzhtw/Z7NQ+wjUUxN6S4mH/ve
 zWhp5BWQW8OMxNwKgl/stHf7RPihAuM6Lam5ash4zX53wSt46bBcCy3FUb+PBKX0fC/1
 0ga8g83YnAB+uHu9r5UazL+rm+DTU8tu+CYNUG1e7uxQFMAtlRmCPBet0Rxl4l9FTyw5
 X6FQ==
X-Gm-Message-State: APjAAAWSComti3piJgISKm6buevoKdNbyUGCDvSTlcc826zkOAS+y7V/
 po4tlre6PnQHrHz1deZyFp4NEvYal54=
X-Google-Smtp-Source: APXvYqwXW2menU3PPZSJKHPNieURd1KzRPUeNRQod51un48pV4j12sO/wWMGWilWqaNlvDDIAyioew==
X-Received: by 2002:a67:ed11:: with SMTP id l17mr5887691vsp.154.1556896067345; 
 Fri, 03 May 2019 08:07:47 -0700 (PDT)
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com.
 [209.85.222.48])
 by smtp.gmail.com with ESMTPSA id j71sm1687323vsd.0.2019.05.03.08.07.44
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 08:07:45 -0700 (PDT)
Received: by mail-ua1-f48.google.com with SMTP id u34so2120671uau.7
 for <linux-rockchip@lists.infradead.org>; Fri, 03 May 2019 08:07:44 -0700 (PDT)
X-Received: by 2002:ab0:2709:: with SMTP id s9mr4499637uao.21.1556896064408;
 Fri, 03 May 2019 08:07:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190418001356.124334-1-dianders@chromium.org>
 <20190418001356.124334-2-dianders@chromium.org>
 <CAD=FV=UGjQz9Di=NL_r_g1Hofqv-FWBywfSm9Vu6gGr22wzPrA@mail.gmail.com>
 <SN1PR12MB243136608514210F3E3E536EA7350@SN1PR12MB2431.namprd12.prod.outlook.com>
In-Reply-To: <SN1PR12MB243136608514210F3E3E536EA7350@SN1PR12MB2431.namprd12.prod.outlook.com>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 3 May 2019 08:07:32 -0700
X-Gmail-Original-Message-ID: <CAD=FV=V97+_cQ1aD=w_a3SifGOG3M5DPvcnvxYVUJMkX_WLTFg@mail.gmail.com>
Message-ID: <CAD=FV=V97+_cQ1aD=w_a3SifGOG3M5DPvcnvxYVUJMkX_WLTFg@mail.gmail.com>
Subject: Re: [PATCH v2 1/5] usb: dwc2: bus suspend/resume for hosts with
 DWC2_POWER_DOWN_PARAM_NONE
To: Artur Petrosyan <Arthur.Petrosyan@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_080748_807995_1CBCFCCF 
X-CRM114-Status: GOOD (  25.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
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
 Alexandru M Stan <amstan@chromium.org>,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Chris <zyw@rock-chips.com>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>,
 LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Alan Stern <stern@rowland.harvard.edu>,
 Elaine Zhang <zhangqing@rock-chips.com>, Julius Werner <jwerner@chromium.org>,
 William Wu <william.wu@rock-chips.com>, Ryan Case <ryandcase@chromium.org>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Fri, May 3, 2019 at 1:25 AM Artur Petrosyan
<Arthur.Petrosyan@synopsys.com> wrote:
>
> On 5/2/2019 03:58, Doug Anderson wrote:
> > Hi,
> >
> >
> > On Wed, Apr 17, 2019 at 5:15 PM Douglas Anderson <dianders@chromium.org> wrote:
> >>
> >> This is an attempt to rehash commit 0cf884e819e0 ("usb: dwc2: add bus
> >> suspend/resume for dwc2") on ToT.  That commit was reverted in commit
> >> b0bb9bb6ce01 ("Revert "usb: dwc2: add bus suspend/resume for dwc2"")
> >> because apparently it broke the Altera SOCFPGA.
> >>
> >> With all the changes that have happened to dwc2 in the meantime, it's
> >> possible that the Altera SOCFPGA will just magically work with this
> >> change now.  ...and it would be good to get bus suspend/resume
> >> implemented.
> >>
> >> This change is a forward port of one that's been living in the Chrome
> >> OS 3.14 kernel tree.
> >>
> >> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> >> ---
> >> This patch was last posted at:
> >>
> >> https://urldefense.proofpoint.com/v2/url?u=https-3A__lkml.kernel.org_r_1446237173-2D15263-2D1-2Dgit-2Dsend-2Demail-2Ddianders-40chromium.org&d=DwIBaQ&c=DPL6_X_6JkXFx7AXWqB0tg&r=9hPBFKCJ_nBjJhGVrrlYOeOQjP_HlVzYqrC_D7niMJI&m=7rxT8EFX9mqUDtTL4P7iuzYNsYROe9rxHGCresSKPTg&s=lTaNUA2XIYPat417fkd1A4Zpvb5eyYtTc1H_NIfW8Vw&e=
> >>
> >> ...and appears to have died the death of silence.  Maybe it could get
> >> some bake time in linuxnext if we can't find any proactive testing?
> >>
> >> I will also freely admit that I don't know tons about the theory
> >> behind this patch.  I'm mostly just re-hashing the original commit
> >> from Kever that was reverted since:
> >> * Turning on partial power down on rk3288 doesn't "just work".  I
> >>    don't get hotplug events.  This is despite dwc2 auto-detecting that
> >>    we are power optimized.
> >> * If we don't do something like this commit we don't get into as low
> >>    of a power mode.
> >
> > OK, I spent the day digging more into this patch to confirm that it's
> > really the right thing to do.  ...and it still seems to be.
> >
> > First off: I'm pretty sure the above sentence "If we don't do
> > something like this commit we don't get into as low of a power mode."
> > is totally wrong.  Luckily it's "after the cut" and not part of the
> > commit message.  Specifically I did a bunch of power testing and I
> > couldn't find any instance saving power after this patch.
> >
> > ...but, then I looked more carefully at all the history of this
> > commit.  I ended up at:
> >
> > https://urldefense.proofpoint.com/v2/url?u=https-3A__chromium-2Dreview.googlesource.com_c_chromiumos_third-5Fparty_kernel_-2B_306265_&d=DwIBaQ&c=DPL6_X_6JkXFx7AXWqB0tg&r=9hPBFKCJ_nBjJhGVrrlYOeOQjP_HlVzYqrC_D7niMJI&m=7rxT8EFX9mqUDtTL4P7iuzYNsYROe9rxHGCresSKPTg&s=LiyyIyaCPmr88nJeI7TCGtoJBFLRWir_reikYtAHHDw&e=
> Looking at this code review I see that this patch fixes whatever issues
> you have on Chrome OS 3.14. But your patch has landed on the top of
> latest Kernel version. With the latest version I think you would not
> have the regression issue.
> So you are fixing Chrome OS 3.14.

I'm confused why you ignored the rest of my email where I said I also
ported it to 4.19 (which, from a dwc2 host point of view, is pretty
much mainline) and saw that the patch was still needed.

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
