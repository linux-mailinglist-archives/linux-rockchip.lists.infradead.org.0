Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BE14C318E
	for <lists+linux-rockchip@lfdr.de>; Tue,  1 Oct 2019 12:35:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X6XJAdL+5ZvKOxAdpjowFoUZdn/eYtJ5vld0B/l9Rto=; b=Gwf6bHZmiYQvXp
	+/IjhsWeAGxe0+gMHuLjhUrDtgzP1nL8itBEcXvz86ppSUHoRnsNaE2agQNe8ioR0vG8J3qgg9byy
	qEpYlhrPr4m9TPjeNqROAgYn4GnrK4986U3DE2retgWA6hGKB2MPRYyUSE2TAsjX0J/XuLgTY3gmj
	8S451PegbV4bo6xFGf5KVb40B6dILEyp6z32h6DInOy481KfXYAKoEHDEejjk0lusKgjVJ1XGb6tQ
	VTsm1wAIlzzjjyD4gFE1/dBmbaqHBJNcTraAf7BK0ITL623wZovf8CfU/4LZmq3mHZdcW2KFbS+ar
	0/+mY8ArXpINE1qfzqhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFFUw-0007p3-FT; Tue, 01 Oct 2019 10:35:14 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFFUe-0006x2-He
 for linux-rockchip@lists.infradead.org; Tue, 01 Oct 2019 10:34:58 +0000
Received: by mail-wr1-x444.google.com with SMTP id r3so14852930wrj.6
 for <linux-rockchip@lists.infradead.org>; Tue, 01 Oct 2019 03:34:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2nnlLMd0aBTJcx0TGQUJ/OOnhcmE3H5ErK+mVqFID/o=;
 b=Z66BKWUBz/7pM2VRxk3KnGYg20Csj7AdSD9P0w9lQJpvKT+CLAzweqGDltfQrgmCx1
 aXrKqiMH9VmljnfZ2/d7SJRxMtRnMWbIM1AfyT+Ef28nin11VRwfZ5K5DqZmZSp0PI0U
 U/aWeYK3Yz5Hov7A+DzLuUPuzjc++sXzjDrt0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2nnlLMd0aBTJcx0TGQUJ/OOnhcmE3H5ErK+mVqFID/o=;
 b=HkaDoL81IwNpLk+3wUEB66fw2sIP3sKkkaqB6EocMU1FzITz/Z4j8L/UDuqEhptxCj
 9XiSapsKfEegBPodV57djPqAI1yP8DydWc2YoWCUX6azuKaZuDQHHS05p/waghmzHFRm
 fGhqVhPZdwl+YclUcrV4I8169lgWqf+jgi9IW5TjzwymSdfVzJNe3LCBSVQ4dnFJHr7c
 wK/5BFUdZD8wRXmSEDpsT/8XjDFkcRzwid9OEIaXglzwKHRwZHm0MUqkhLVruf17RDYO
 yt0tZdXMDNlML4jXjPxD6xbmDT8gpaCH0nZxbhx/Qogr/jvyneMtOoZWtXDIjjsAkvHO
 qPIA==
X-Gm-Message-State: APjAAAXf1AV7o8Xq/vcQ4k61h7EIbR3kOnGCXyxZZ3bV8qR2oe5Hl4K2
 Cg0I2zeMP7STXU+Y9+etXgoYTZtu0YnWt1mmTSqxSg==
X-Google-Smtp-Source: APXvYqwvIetg8gzOczGiU42fCOntRO/negZdZdjjiCB49L1LeESZTdA7ERnkkCaV/E+aTgltRI3/vSfEgD0PqQEuxIQ=
X-Received: by 2002:adf:e909:: with SMTP id f9mr1653755wrm.129.1569926094373; 
 Tue, 01 Oct 2019 03:34:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190919052822.10403-1-jagan@amarulasolutions.com>
 <20190919052822.10403-2-jagan@amarulasolutions.com> <6797961.eJj5WIFbM9@phil>
 <CAMty3ZDKaywoPxCSD-5N2pLjtGmZ-dZ7ZgUOJqiB1V_9rfR26A@mail.gmail.com>
In-Reply-To: <CAMty3ZDKaywoPxCSD-5N2pLjtGmZ-dZ7ZgUOJqiB1V_9rfR26A@mail.gmail.com>
From: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Date: Tue, 1 Oct 2019 12:34:42 +0200
Message-ID: <CAOf5uwkXt7mD_OZFx+bmP6YVHQ6=yU4Lzz+u0hxy+6HUxiR1KQ@mail.gmail.com>
Subject: Re: [PATCH 1/6] arm64: dts: rockchip: Fix rk3399-roc-pc pwm2 pin
To: Jagan Teki <jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_033456_582632_ED2265CF 
X-CRM114-Status: GOOD (  22.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Da Xue <da@lessconfused.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Akash Gajjar <akash@openedev.com>,
 Levin Du <djw@t-chip.com.cn>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi

On Tue, Oct 1, 2019 at 12:26 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> Hi Heiko,
>
> On Mon, Sep 30, 2019 at 2:51 AM Heiko Stuebner <heiko@sntech.de> wrote:
> >
> > Hi Jagan,
> >
> > Am Donnerstag, 19. September 2019, 07:28:17 CEST schrieb Jagan Teki:
> > > ROC-PC is not able to boot linux console if PWM2_d is
> > > unattached to any pinctrl logic.
> > >
> > > To be precise the linux boot hang with last logs as,
> > > ...
> > > .....
> > > [    0.003367] Console: colour dummy device 80x25
> > > [    0.003788] printk: console [tty0] enabled
> > > [    0.004178] printk: bootconsole [uart8250] disabled
> > >

The only sense is that is connected with
vdd_log: vdd-log {
compatible = "pwm-regulator";
pwms = <&pwm2 0 25000 1>;
regulator-name = "vdd_log";
regulator-min-microvolt = <800000>;
regulator-max-microvolt = <1100000>;
regulator-always-on;
regulator-boot-on;

/* for rockchip boot on */
rockchip,pwm_id= <2>;
rockchip,pwm_voltage = <1000000>;
};

I don't know how this in mailine is mapped

Michael

> > > In ROC-PC the PWM2_d pin is connected to LOG_DVS_PWM of
> > > VDD_LOG. So, for normal working operations this needs to
> > > active and pull-down.
> > >
> > > This patch fix, by attaching pinctrl active and pull-down
> > > the pwm2.
> >
> > This looks highly dubious on first glance. The pwm subsystem nor
> > the Rockchip pwm driver do not do any pinctrl handling.
> >
> > So I don't really see where that "active" pinctrl state is supposed
> > to come from.
> >
> > Comparing with the pwm driver in the vendor tree I see that there
> > is such a state defined there. But that code there also looks strange
> > as that driver never again leaves this active state after entering it.
> >
> > Also for example all the Gru devices run with quite a number of pwm-
> > regulators without needing additional fiddling with the pwm itself, so
> > I don't really see why that should be different here.
>
> I deed, I was supposed to think the same. but the vendor kernel dts
> from firefly do follow the pwm2 pinctrl [1]. I wouldn't find any
> information other than this vensor information, ie one of the reason I
> have marked "Levin Du" who initially supported this board.
>
> One, think I have seen was this pinctrl active fixed the boot hang.
> any inputs from would be very helpful.
>
> Levin Du, any inputs?
>
> [1] https://github.com/FireflyTeam/kernel/blob/stable-4.4-rk3399-linux/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi#L1184
>
>


-- 
| Michael Nazzareno Trimarchi                     Amarula Solutions BV |
| COO  -  Founder                                      Cruquiuskade 47 |
| +31(0)851119172                                 Amsterdam 1018 AM NL |
|                  [`as] http://www.amarulasolutions.com               |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
