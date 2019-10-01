Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E87C314E
	for <lists+linux-rockchip@lfdr.de>; Tue,  1 Oct 2019 12:26:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kz96xOio/0S6p65ct/5iTN1fYr6RLIv7xGwz0u3HK2s=; b=BqIlbv6BUaV1H/
	EnNiAVba03yBN1J4PcQKM66cLylQ8Qq3zi2kSlGsx1FfnPoJS/zBw1WPk18rcPgjhjLxGzHOFnmCH
	ll9DI/vZd+G2tLB6gqAuJB13T97lHZwVYaScr6ppJw9AAxXWm5qI6UhiSUPIViNAqElhFYW6gxpOO
	bi35UX2utALDr4MekDGJS9K3tKN24TO3A6NtyqcjlOizNR8YoOa4OFn1es7IlPFqX5pcJq7GX+uGK
	qKPn0Zy4bA2GL7sxeWVZs9vdgKtYaAlaUEuHtvZZnKln4BrQ03KbWTGWKpggXhBz0Gq6hPDT4fcHy
	xl+1oHmEyl94Jn4gJ6UA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFFMV-0004WG-2j; Tue, 01 Oct 2019 10:26:31 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFFMR-0004VE-5i
 for linux-rockchip@lists.infradead.org; Tue, 01 Oct 2019 10:26:29 +0000
Received: by mail-io1-xd42.google.com with SMTP id c25so46424095iot.12
 for <linux-rockchip@lists.infradead.org>; Tue, 01 Oct 2019 03:26:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7dJvQt2XADSP58gshAp3mouDAHa/fpvN+3lt4rGrgN0=;
 b=MW/6KBStB07v5dXk4ZigslPFPugYyqpQ/ScdkbBrgCiKH3o4AbFDQ1qwAd32i3L1Ut
 qcFaTGc/lhLrM65+N2L6mT4GH2quV73dZ3OW0f6J3hfFwX4x/zkGKr+2BK03MWo28DBy
 KNoWV2aGvRV8NEKSqzFK7sgsmnnNqr38yDafY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7dJvQt2XADSP58gshAp3mouDAHa/fpvN+3lt4rGrgN0=;
 b=BJVQFHNrAeDSIW7hAQIb1/CgGTk3UoRvxB9uogkj2ieFnWF/pVhKgxU6O1QiPPCLU2
 KKIl2ZlBec6Dji/+IqZqOGAXxXRZwcmwz8dSgAeglkuGhXAoxUSJEe429wfFgh9guItv
 BXHE8rPwV/kCDb5GanuGyQIF4UM8nAq9lagkOWr1fF1KWeacVp9nLeK9X8hAp/3zrk5H
 aTxXF9tcMtghVVJjR1P/y6fm97kJjO/+3P/7K1ziy7qToPxn8a2zFSfhr5hZTUym6sUW
 inPKR6pvmmTKMv1nJjo0SMLKNwzwHeZY6pmDzQMPFW5VBaSNiKP9VzV+B8/gSaUc4h/E
 enGQ==
X-Gm-Message-State: APjAAAVfJc3dGeSRUoBXgsrAy1kT9LQU//lFaHr0HgtkoXhI+2LjiDPu
 Ds/bVaadtfaxGjpUSaahhD9X7lW+7O/ykwdTrOHpyA==
X-Google-Smtp-Source: APXvYqyE36IiztYNTVOMhjmeAHCFxs73KTI2V5Ei5/NiBQ6XuIFOw+4jhZSV1acSSHmC1qFffPrmWbSyxu+uPa3yx0A=
X-Received: by 2002:a5d:89da:: with SMTP id a26mr23534629iot.61.1569925585423; 
 Tue, 01 Oct 2019 03:26:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190919052822.10403-1-jagan@amarulasolutions.com>
 <20190919052822.10403-2-jagan@amarulasolutions.com> <6797961.eJj5WIFbM9@phil>
In-Reply-To: <6797961.eJj5WIFbM9@phil>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Tue, 1 Oct 2019 15:56:14 +0530
Message-ID: <CAMty3ZDKaywoPxCSD-5N2pLjtGmZ-dZ7ZgUOJqiB1V_9rfR26A@mail.gmail.com>
Subject: Re: [PATCH 1/6] arm64: dts: rockchip: Fix rk3399-roc-pc pwm2 pin
To: Heiko Stuebner <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_032627_494812_8ECE98D2 
X-CRM114-Status: GOOD (  17.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
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
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Akash Gajjar <akash@openedev.com>,
 Levin Du <djw@t-chip.com.cn>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Heiko,

On Mon, Sep 30, 2019 at 2:51 AM Heiko Stuebner <heiko@sntech.de> wrote:
>
> Hi Jagan,
>
> Am Donnerstag, 19. September 2019, 07:28:17 CEST schrieb Jagan Teki:
> > ROC-PC is not able to boot linux console if PWM2_d is
> > unattached to any pinctrl logic.
> >
> > To be precise the linux boot hang with last logs as,
> > ...
> > .....
> > [    0.003367] Console: colour dummy device 80x25
> > [    0.003788] printk: console [tty0] enabled
> > [    0.004178] printk: bootconsole [uart8250] disabled
> >
> > In ROC-PC the PWM2_d pin is connected to LOG_DVS_PWM of
> > VDD_LOG. So, for normal working operations this needs to
> > active and pull-down.
> >
> > This patch fix, by attaching pinctrl active and pull-down
> > the pwm2.
>
> This looks highly dubious on first glance. The pwm subsystem nor
> the Rockchip pwm driver do not do any pinctrl handling.
>
> So I don't really see where that "active" pinctrl state is supposed
> to come from.
>
> Comparing with the pwm driver in the vendor tree I see that there
> is such a state defined there. But that code there also looks strange
> as that driver never again leaves this active state after entering it.
>
> Also for example all the Gru devices run with quite a number of pwm-
> regulators without needing additional fiddling with the pwm itself, so
> I don't really see why that should be different here.

I deed, I was supposed to think the same. but the vendor kernel dts
from firefly do follow the pwm2 pinctrl [1]. I wouldn't find any
information other than this vensor information, ie one of the reason I
have marked "Levin Du" who initially supported this board.

One, think I have seen was this pinctrl active fixed the boot hang.
any inputs from would be very helpful.

Levin Du, any inputs?

[1] https://github.com/FireflyTeam/kernel/blob/stable-4.4-rk3399-linux/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi#L1184

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
