Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76CD1151CFF
	for <lists+linux-rockchip@lfdr.de>; Tue,  4 Feb 2020 16:16:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jzrIwxO9s5PQjkreBXTkJJUKh8vpolTfMMDvHiEwZd0=; b=IrqTIkQQosEwhs
	AwSTbPDUwE+m9Sys52/p5f23P63dHs2MjG6hbcDK/QSCkmAeqmYFa1yrErF77vd9us1awfgrbpv0n
	AZTgvufHMLEvvTnbmRFxU0Q8Rj81As0yUzp5RUmYyLRnLB1JGM0Jr//XCWFySAO7RLjQnulScgbZ1
	TQB8dDLM8hNHFa0TxBG2DkErbefg3HeETTGb+LnBgJivml0H9ZKXEZ6NbyH/ndGGl59DWTtNrh/ik
	cjtyDxpgzBPXWQmXEiqE9c5embvrK2CfTX2/Yf1TY+nvnUqnjptgoL6wlIRNhf6QN5vAFUne+ZRe5
	yJm7qh+KO6IvOJnBfKoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyzvp-0007xC-3p; Tue, 04 Feb 2020 15:16:05 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyzvg-0007rE-O8; Tue, 04 Feb 2020 15:15:58 +0000
Received: by mail-qv1-xf41.google.com with SMTP id z3so8726234qvn.0;
 Tue, 04 Feb 2020 07:15:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OyV3NHun4fyF2WyCU9PlP42pQ4qwPCjE86ECS2+ecyM=;
 b=W2cZaSt78cNdNtsGxzKjbgijor4FjlJ/Zk2Q0151jlmWGbhffHjOgvUi1Jbsy5WOxY
 AU7TH4Q3GKB00PjO7kVBAbGDkKFpQZQgJsg9deBi3SOaFc2nKHdGXqF5fvhxmrKdia9W
 TcGuQDwVkYlYQa2ooKLy4NMJO7Vov1xJ/3guuk2yfkXEcfraz+kIm3AcrIASBItgaA8I
 GeuahnrbkH/OZN5Cee3Np1s8N8o2MBJmSY8+M4TaElt4Do2p7bYJ7fiOtAOGN4SMoYyC
 JPTQ4wz75AjB/UupytGsKByikwnmnp4DRxsHvDD/ZSuwhrxTchTy9DgBHScQuLmYNaE2
 RiTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OyV3NHun4fyF2WyCU9PlP42pQ4qwPCjE86ECS2+ecyM=;
 b=ZZwI5wQOIKMaNcabpHDKLkKcA+o3lr0mvLfHyY1nV/vX5dRc74LZCKb0YN6IYRYag0
 iUv+15koau2YEoD20QSCbSAykQyNGPRkpGFaP03VbrdF+jkHwwoKjUD7E6XXlWTugZ94
 36vmCo97dNwwtNHlpVeIwns1K1fb/CBMLObwf52YNpFE4hAtjsZOsOCsLsSQ5I5L9FtK
 UVE4deW+hawEIvE8s/8/rTBj8IN5RxA5/sa/fdJQNwmplDuGrLE7kmajMaLq7R8Fa45R
 o3fOTxMA7ksPwt/qML5sDX8ANuAMYaQoe4DUdePY6Rh5pvWyDif1tkSBUKll+yEVQDiU
 zukg==
X-Gm-Message-State: APjAAAXvfj2yb1dMOMngoR8htthK8LYc564VVbbbaGeihP14BoPaeoZ/
 xwVPhEMDY7W2ntPxORqC8uXRajsaEEs20jWqhgM=
X-Google-Smtp-Source: APXvYqxJebTOLSPLvxd8MTX68mik2Y3//RwCEY5IHkO6LxLH+hECT5yAvYbr5QAJl7RXYORTE+12Q6WYPcja+YsWU5Y=
X-Received: by 2002:a05:6214:1874:: with SMTP id
 eh20mr28606239qvb.122.1580829354844; 
 Tue, 04 Feb 2020 07:15:54 -0800 (PST)
MIME-Version: 1.0
References: <87imkryz5t.fsf@vany.ca>
 <7b9829b3-e2d2-95b1-03cb-1af7a3c6acad@arm.com>
 <4a6a9d81-c831-4167-7fbf-64805940fb6f@vany.ca>
 <d8a8b696-268b-1ea8-7b5e-406a651011ff@arm.com>
 <510d310b-30af-7b24-d472-907bc6b2ef46@vany.ca>
In-Reply-To: <510d310b-30af-7b24-d472-907bc6b2ef46@vany.ca>
From: Peter Geis <pgwipeout@gmail.com>
Date: Tue, 4 Feb 2020 10:15:40 -0500
Message-ID: <CAMdYzYo5V2rHE6Axx9p67n3FcCFpQ5TA+m7kqaE3Uqn6d0QUhw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix rk3328-roc-cc sdmmcio-regulator
To: Adam Van Ymeren <adam@vany.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_071556_812854_DE73DA1D 
X-CRM114-Status: GOOD (  25.54  )
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 URIBL_DBL_ABUSE_MALW   Contains an abused malware URL listed in
 the Spamhaus DBL blocklist [URIs: infradead.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pgwipeout[at]gmail.com]
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Robin Murphy <robin.murphy@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Sat, Feb 1, 2020 at 5:10 PM Adam Van Ymeren <adam@vany.ca> wrote:
>
>
> On 2020-02-01 12:46 p.m., Robin Murphy wrote:
> > On 2020-02-01 3:41 pm, Adam Van Ymeren wrote:
> >>
> >> On 2020-02-01 5:51 a.m., Robin Murphy wrote:
> >>> Hi Adam,
> >>>
> >>> On 2020-01-31 11:38 pm, Adam Van Ymeren wrote:
> >>>> With this change the kernel successfully finds the SD Card and can
> >>>> load
> >>>> a rootfs from it.  Tested on hardware.
> >>>>
> >>>> Signed-off-by: Adam Van Ymeren <adam@vany.ca>
> >>>>
> >>>> diff -uprN -X linux-5.5/Documentation/dontdiff
> >>>> linux-5.5-orig/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
> >>>> linux-5.5/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
> >>>> --- linux-5.5-orig/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
> >>>> 2020-01-26 19:23:03.000000000 -0500
> >>>> +++ linux-5.5/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
> >>>> 2020-01-31 16:26:35.377075419 -0500
> >>>> @@ -44,7 +44,7 @@
> >>>>          vcc_sdio: sdmmcio-regulator {
> >>>>            compatible = "regulator-gpio";
> >>>> -        gpios = <&grf_gpio 0 GPIO_ACTIVE_HIGH>;
> >>>> +        gpios = <&gpio0 RK_PD1 GPIO_ACTIVE_HIGH>;
> >>>
> >>> Given that the RK3328 datasheet has no mention of GPIO0_D1 existing at
> >>> all, how sure are you that this is correct - have you tested cards in
> >>> both 3.3V and 1.8V (UHS-1) signalling modes?
> >>>
> >>> The ROC-RK3328-CC schematics show GPIO_MUTE being used to bias the
> >>> feedback pin of an adjustable regulator supplying the SDMMC0 I/O
> >>> domain, so it seems more likely that the pin is correct but the states
> >>> (or the polarity) are backwards.
> >>
> >>
> >> Hmm yeah after reading the schematics this doesn't make sense.  I took
> >> it from the vendors source tree[1], and it definitely allowed my system
> >> to boot when it wouldn't before, but I only tried a 3.3V card.  I'll try
> >> just changing the polarity.  I'll also find a UHS-1 card and test that,
> >> any advice on how to verify that it's running in the 1.8V mode?
> >
> > My preferred method is to stick a meter on either the uSD socket pins
> > or the regulator itself and wiggle the GPIO from userspace, but
> > preferably only if the board can run without a card inserted.
> >
> > That said, I just suddenly remembered about regulator GPIOs being
> > quirky for legacy ABI reasons - I'm now 99% sure that you should
> > simply need to add the "enable-active-high" property to make it
> > actually work as expected.
> >
>
> Whelp I did a whole bunch of tracing and debugging only to realize that
> I didn't have CONFIG_GPIO_SYSCON enabled, so big suprise the gpio-syscon
> driver needed for grf-gpio never came online.  After turning that on I get
>
> [    1.277115] mmc_host mmc1: Bus speed (slot 0) = 400000Hz (slot req
> 400000Hz, actual 400000HZ div = 0)
>
> in my dmesg, which is more than I used to get.  However it fails to
> detect the SDCard.  I tried with and without enable-active-high; on the
> sdmmcio-regulator entry, neither seemed to make a difference.  I'll do
> some more debugging in a bit, its always possible I did something stupid
> like use the wrong .dtb file (or build without CONFIG_GPIO_SYSCON).

I'm interested in this, since I've encountered some oddities with the
sdcard on this board.
With the recent addition of support for ddr4 tpl init in u-boot I
started playing with it again.
I couldn't get the sdcard to detect leaving tpl into spl, causing a
boot failure.
The exact same image works when flashed to the emmc though.

Once we are in the kernel the sdcard detects fine.

I noticed u-boot doesn't have a grf-gpio driver, so the 3.3v/1.8v
regulator is unavailable.

root@firefly:/sys/kernel/debug/mmc1# cat ios
clock:          150000000 Hz
actual clock:   150000000 Hz
vdd:            21 (3.3 ~ 3.4 V)
bus mode:       2 (push-pull)
chip select:    0 (don't care)
power mode:     2 (on)
bus width:      2 (4 bits)
timing spec:    6 (sd uhs SDR104)
signal voltage: 1 (1.80 V)
driver type:    0 (driver type B)

root@firefly:/sys/kernel/debug# cat gpio
gpiochip0: GPIOs 0-31, parent: platform/pinctrl, gpio0:
 gpio-0   (                    |vcc-host-5v-regulato) out hi
 gpio-30  (                    |sdmmc-regulator     ) out lo ACTIVE LOW

gpiochip1: GPIOs 32-63, parent: platform/pinctrl, gpio1:
 gpio-50  (                    |snps,reset          ) out hi ACTIVE LOW
 gpio-58  (                    |vcc-host1-5v-regulat) out hi

gpiochip2: GPIOs 64-95, parent: platform/pinctrl, gpio2:

gpiochip3: GPIOs 96-127, parent: platform/pinctrl, gpio3:

gpiochip5: GPIOs 509-510, parent: platform/rk805-pinctrl, rk805-gpio, can sleep:
 gpio-509 (                    |?                   ) out hi ACTIVE LOW
 gpio-510 (                    |?                   ) out hi ACTIVE LOW

gpiochip4: GPIOs 511-511, parent: platform/ff100000.syscon:grf-gpio,
ff100000.syscon:grf-gpio:
 gpio-511 (                    |vcc_sdio            ) out hi

>
>
> Thanks again!
>
> -Adam
>
> |
>
> |
>
> ||
>
> |
>
> |
>
> |
>
> |||
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
