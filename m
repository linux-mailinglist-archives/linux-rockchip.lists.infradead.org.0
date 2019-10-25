Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C89DE56A7
	for <lists+linux-rockchip@lfdr.de>; Sat, 26 Oct 2019 00:50:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HNGBsDGgvIJJIzmvBuRWgCCNUf3rUclYemCSCLZV8Sw=; b=tuZrjEuLSVRHJN
	68QpHjUI++5NGay+DtSL1yLyXhUs4FkpjLh2qStOLU+VTTGuUf/nTyBEVVb15vZWHvPH/H3lAG9nf
	9XgIiyiC/vYaqZ4U2tqXY0b+SdWJ8Qj3pDjOVSsNGyGIRK3ROZibDTMjjzMnvz8iiVwy+zTQXmO2g
	MubjzH7TJC4dX7ID6w7NPjhUHOA7Huka1WcP3kIKIaHwWPECpuP+XyiDfz9Zk32LjTE699sJpdmDz
	Eq+1vCh17sB2Ml8ldEqm1ykIZheT4h8o48u0s/WyqP8CuhCKuye3bDwy8BAu8SFcAYZJkh4aVeXa+
	o7MhdmtmOZuenSE2jZbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO8Pk-0005LY-RY; Fri, 25 Oct 2019 22:50:36 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO8Ph-0005KL-Ow
 for linux-rockchip@lists.infradead.org; Fri, 25 Oct 2019 22:50:35 +0000
Received: by mail-io1-xd42.google.com with SMTP id c16so4204488ioc.3
 for <linux-rockchip@lists.infradead.org>; Fri, 25 Oct 2019 15:50:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tKLlAY4Xw7xSeIaP4a35tzIajquRX72GBLi2rGXctCA=;
 b=NMVL0nKxTd83P4SmTdQ4y6M3dnl6xh2afGk90De61SMHV1pSozOqiNjC43vJR7j3Bp
 UoXkubWBdfT9AhAfBJcTwA2vdWaZqH2mHy9WbJahWI9acAnfjWQU3JTQQoD+Ib7VYXkl
 rWqfJx9yBDt8jEwMGmsJ9PSt962tlyDtUiXH4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tKLlAY4Xw7xSeIaP4a35tzIajquRX72GBLi2rGXctCA=;
 b=GJXC1IvmXS9ocqe0q6G0PE8MVE4lrxAwewcFLpCWg88nByqLxFTCwO1YH0C0Lxa998
 KzTizNC8AbmqWpZcxPigxajGNVA5XouXW1IKC+RMWss8Gxj+mCMx8bpVcPyxyfu3JWp+
 H6yzgc26oC91P24DVkZMHTXoEBz8xvLZkO/PPnjz/oGK6h6riNx6uPCj8LeF8ahlM/Gi
 Ir1Wo34Sgtz3DlchlWAVLLe68AOBCupgVhk47yc5FP6pPptcwffEZomz2qKE5Xtce3Ai
 7qM9gmYsYRSzspty4lwgg2PC6OTuCpO6474dpabQUbc01hR1p2vVTPDtngtf5NXSTzN7
 JVNg==
X-Gm-Message-State: APjAAAUChyj5Ws8PZUVmeg0xz1kJad3nsXgbUuFcGCtwzVKAUPh+XqfP
 5EZlE5iSKKHkggKIs+no0tz5H5ZyV/w=
X-Google-Smtp-Source: APXvYqy5pilWKw7Dj+o0QOvmWrH9WsXJ85XQRgHNBfW85D+fxbxThXXRplI99EY+jFIZ3MHasqKqvw==
X-Received: by 2002:a02:6c08:: with SMTP id w8mr6541758jab.110.1572043830975; 
 Fri, 25 Oct 2019 15:50:30 -0700 (PDT)
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com.
 [209.85.166.176])
 by smtp.gmail.com with ESMTPSA id c73sm426140ila.9.2019.10.25.15.50.29
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 25 Oct 2019 15:50:30 -0700 (PDT)
Received: by mail-il1-f176.google.com with SMTP id v2so3219676ilm.0
 for <linux-rockchip@lists.infradead.org>; Fri, 25 Oct 2019 15:50:29 -0700 (PDT)
X-Received: by 2002:a05:6e02:792:: with SMTP id
 q18mr6756233ils.58.1572043829241; 
 Fri, 25 Oct 2019 15:50:29 -0700 (PDT)
MIME-Version: 1.0
References: <20191025215428.31607-1-abhishekpandit@chromium.org>
 <20191025215428.31607-4-abhishekpandit@chromium.org>
In-Reply-To: <20191025215428.31607-4-abhishekpandit@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 25 Oct 2019 15:50:17 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Vf64F885me=PUpv34Lb6iZpm1ui30nLHww6T3rmRVJXA@mail.gmail.com>
Message-ID: <CAD=FV=Vf64F885me=PUpv34Lb6iZpm1ui30nLHww6T3rmRVJXA@mail.gmail.com>
Subject: Re: [PATCH 3/3] ARM: dts: rockchip: Add brcm bluetooth module on uart0
To: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_155033_836497_4F8BBFAB 
X-CRM114-Status: GOOD (  18.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Marcel Holtmann <marcel@holtmann.org>, LKML <linux-kernel@vger.kernel.org>,
 linux-bluetooth@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Johan Hedberg <johan.hedberg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Fri, Oct 25, 2019 at 2:55 PM Abhishek Pandit-Subedi
<abhishekpandit@chromium.org> wrote:
>
> This enables the Broadcom uart bluetooth driver on uart0 and gives it
> ownership of its gpios. In order to use this, you must enable the
> following kconfig options:
>   - CONFIG_BT_HCIUART_BCM
>   - CONFIG_SERIAL_DEV
>
> Signed-off-by: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
> ---
>
>  arch/arm/boot/dts/rk3288-veyron.dtsi | 31 +++++++---------------------
>  1 file changed, 7 insertions(+), 24 deletions(-)
>
> diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3288-veyron.dtsi
> index 7525e3dd1fc1..8c9f91ba6f57 100644
> --- a/arch/arm/boot/dts/rk3288-veyron.dtsi
> +++ b/arch/arm/boot/dts/rk3288-veyron.dtsi

You are changing this for _all_ veryon, not just those veyron devices
using Broadcom.  I don't think you want to change the marvell-based
boards.

...presumably you'll want to make you change only affect minnie,
speedy, and mickey.


> @@ -23,30 +23,6 @@
>                 reg = <0x0 0x0 0x0 0x80000000>;
>         };
>
> -       bt_activity: bt-activity {
> -               compatible = "gpio-keys";
> -               pinctrl-names = "default";
> -               pinctrl-0 = <&bt_host_wake>;
> -
> -               /*
> -                * HACK: until we have an LPM driver, we'll use an
> -                * ugly GPIO key to allow Bluetooth to wake from S3.
> -                * This is expected to only be used by BT modules that
> -                * use UART for comms.  For BT modules that talk over
> -                * SDIO we should use a wakeup mechanism related to SDIO.
> -                *
> -                * Use KEY_RESERVED here since that will work as a wakeup but
> -                * doesn't get reported to higher levels (so doesn't confuse
> -                * Chrome).
> -                */
> -               bt-wake {
> -                       label = "BT Wakeup";
> -                       gpios = <&gpio4 RK_PD7 GPIO_ACTIVE_HIGH>;
> -                       linux,code = <KEY_RESERVED>;
> -                       wakeup-source;
> -               };
> -
> -       };
>
>         power_button: power-button {
>                 compatible = "gpio-keys";
> @@ -434,6 +410,13 @@
>         /* Pins don't include flow control by default; add that in */
>         pinctrl-names = "default";
>         pinctrl-0 = <&uart0_xfer &uart0_cts &uart0_rts>;
> +
> +       bluetooth {
> +               compatible = "brcm,bcm43540-bt";

You probably need some pinctrl entries here to make sure that things
are properly configured, like:

pinctrl-names = "default";
pinctrl-0 = <&bt_host_wake>, <&bt_dev_wake>, <&bt_enable>;

This would require defining bt_dev_wake and bt_enable and removing the
hacky output-only versions they have now.


> +               host-wakeup-gpios       = <&gpio4 RK_PD7 GPIO_ACTIVE_HIGH>;
> +               shutdown-gpios          = <&gpio4 RK_PD5 GPIO_ACTIVE_LOW>;

Right now gpio4 RK_PD5 is controlled by the "sdio_pwrseq".  Should you
remove it from there?  Looks like it was a no-op for marvell which
makes it a little easier.


> +               device-wakeup-gpios     = <&gpio4 RK_PD2 GPIO_ACTIVE_HIGH>;

You probably need to stop driving this in the pinctrl hogs for
Broadcom boards...


-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
