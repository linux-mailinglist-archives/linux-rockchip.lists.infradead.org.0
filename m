Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 597F319C10B
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 14:30:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Flez+GAUVhVATYg1LAfmJUirztHelSxeXt1szF8bKs=; b=GO328KEk0rijmL
	KWOuFrVQgE3jxBDVfSTxu2zLpCwwAN5eQYefHiuJAJv4VB46DhSBT/8EPXpSDVL7s+XSxD6mzfF4d
	oKJKjHhXnSYnAwZse++i2HxFJSE30BLspIDAiU7gf7s5xW/wg/84b9y4DSuMG8RE6+7rOKROVwzqN
	hocO7svJaWo/+KxoOxqxIvWejkz6maL5dr95MlsTHW23QWtHhOPXic3Mg+k1+t7UkJ2n6H01lw4XW
	1+OI7Gj0tzWltgaVxPSEG8LjRhNp529fzXEcIZb/9b2GFt6bnbw27mnSlCEquqrffgHZUCa8BxnYe
	IbqObRnChdYYSRU6dUog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJyyu-0006T3-Mt; Thu, 02 Apr 2020 12:30:00 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJyyq-0006SS-HP
 for linux-rockchip@lists.infradead.org; Thu, 02 Apr 2020 12:29:59 +0000
Received: by mail-wr1-x42c.google.com with SMTP id s8so1818865wrt.7
 for <linux-rockchip@lists.infradead.org>; Thu, 02 Apr 2020 05:29:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Nf4kIYjo7z/S89U6VPJks9GW8Wv6fEIkoqFgdr3YgFc=;
 b=BX25xOUbzMNW7UJSEqmbmlXFXGKmCls/FVQhGoOyoFajqLFmkBcpNIsdyXi/TLu5qp
 sfIC0Z4ETHV8ukI6i9M9do2qevj1/Zs3hvq82VLw8OGwSvLRXohzDx7TkvNTdQtVkLvZ
 zU2mGxFUC7I4g+V8qBibt6jBGdadRcYgIuqjY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Nf4kIYjo7z/S89U6VPJks9GW8Wv6fEIkoqFgdr3YgFc=;
 b=ep1ILZwoXWD7jTc39lp3xTFYuhxSbKrwrpKTWA0WYaVvi4PSmDHHJ1MRTEiHxEiBPB
 KL1qaL1wg/IEQicTgMFp9FEE2cqqS1kRwFCi6rErWn8ZRF/Uif8PypPZIjK6R0vPe7w+
 OxGVt9xejARg16P2O7/2ICqJ4hIFaydQ712RZseg4hbORJq2/r3tIwH7Y6bA8AMLrqNz
 Tb+0UFBpqoU6ShTtn+wpznaMfPuptEK4/6jw0yJvlviAnFRgHRQKxldabaR9FaMFC6pf
 yvz55d9HZeaVh3jeznB/KoeE9ZKlcnadsM42rPvKg+Ucn+VVNH7AM+1pXTcVEG2owHeX
 9vOQ==
X-Gm-Message-State: AGi0PuZFCUMr/L94MZ7Xn4Feo40pWUazt3Xb+2oGHOdDloTqu/FIc9tb
 6Kob574UJqfWEgrXNzMU5nfPJvunKozXdhF5/f/VibG30Mw=
X-Google-Smtp-Source: APiQypKEPS1sOiC9smhpc3Kl+B4f5V+OOygD3wUcupxtyHZNHFpxXDxoAe5bre9nOLI6ViScM8z3gTktUP4SH5Cv3d0=
X-Received: by 2002:adf:feca:: with SMTP id q10mr3270691wrs.199.1585830593854; 
 Thu, 02 Apr 2020 05:29:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAM+7aWuR-2EYSDQLj+Sep9cu_cAsL5QD=wRrar-9vLSd_7KPyg@mail.gmail.com>
 <c3f77864-ab66-e31c-e9a6-5a3c8e10b6ea@fivetechno.de>
 <CAM+7aWshiM3YAc9B+GADqKry7bAPapdTJAym-9Wzadtdr3cJHg@mail.gmail.com>
 <af59b7f4-7fb9-4370-9cf5-de4bfedf9e43@fivetechno.de>
In-Reply-To: <af59b7f4-7fb9-4370-9cf5-de4bfedf9e43@fivetechno.de>
From: Suniel Mahesh <sunil@amarulasolutions.com>
Date: Thu, 2 Apr 2020 17:59:41 +0530
Message-ID: <CAM+7aWsKkNhxtnompweSCaiOc+B+HNGGar-bRT5Hww0HmV7P=A@mail.gmail.com>
Subject: Re: Power Key/button on rk3399-roc-pc
To: Markus Reichl <m.reichl@fivetechno.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_052957_430986_E4D54A5B 
X-CRM114-Status: GOOD (  19.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42c listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kever Yang <kever.yang@rock-chips.com>, linux-rockchip@lists.infradead.org,
 djw@t-chip.com.cn, Heiko Stuebner <heiko@sntech.de>,
 Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, Apr 2, 2020 at 12:57 PM Markus Reichl <m.reichl@fivetechno.de> wrote:
>
> Hi Suniel,
>
> Am 02.04.20 um 06:39 schrieb Suniel Mahesh:
> > On Wed, Apr 1, 2020 at 3:40 PM Markus Reichl <m.reichl@fivetechno.de> wrote:
> >>
> >> Hi Suniel,
> >>
> >> Am 01.04.20 um 06:53 schrieb Suniel Mahesh:
> >> > Hi Markus, Levin and all,
> >> >
> >> > Can you guys please suggest me on my requirement.
> >> >
> >> > rk3399-roc-pc board has a Power Key/button. As per the schematics this
> >> > Power Key/button
> >> > is connected to GPIO0_A5.
> >>
> >> And to PWRON of RK808.
> >>
> >> >
> >> > My requirement is can I use this button for board powerup (especially
> >> > in linux when we issue
> >> > "poweroff" command, the board shuts down and it should power back on
> >> > after I press the Power Key/button).
> >> >
> >> > For the above to happen, I think this Power Key/button be connected to
> >> > PMIC RK808-D IC, am i correct ?
> >>
> >> Yes, see P.16 of ROC-3399-PC-V10-A-20180804 schematic.
> >> >
> >> > In the schematics, it is not very clear as if such arrangement is
> >> > there (though it says it can be an option in
> >> > RK3399_BOX_REF_V13_20180821.pdf). I am attaching the document.
> >> >
> >> > Please suggest/comment on my requirement.
> >>
> >> Should work, everything is in place, just press long enough ;-).
> >
> > Thanks Markus for your help. its working.
> >
> >>
> >> Btw. could you just revert your recent U-Boot commit
> >> checking GPIO0_A5 that prevents unattended booting?
> >
> > we have sent a patch series(5 patches) which takes care of the above
> > issue. attaching patchwork links:
> > https://patchwork.ozlabs.org/patch/1258093/
>
> I looked at your
> [v2,2/5] roc-rk3399-pc: Set low power leds, power key only if POR [1]
> and it seems to prevent unattended boot after a power interruption
> (brown out), which is a problem for a device with a built in board
> and no access to power key or operator.
> I really would prefer straight boot without human intervention in
> all cases.
>
reverted the patch, except diy-led(RED LED) is kept as it is.
This indicates the board is in full power mode.

Thanks
> Thanks,
> --
> Markus
>
> [1] https://patchwork.ozlabs.org/patch/1258094/
>
> >
> > Suniel
> >>
> >> Thanks,
> >> --
> >> Markus
> >>
> >> >
> >> > Thanks and regards
> >> > Suniel
> >> >
> >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
