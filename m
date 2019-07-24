Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F52F74104
	for <lists+linux-rockchip@lfdr.de>; Wed, 24 Jul 2019 23:47:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y+dtpqvWVQNzVkLdn6VmjZLK9WGnCAb3tMjX9gOkHc8=; b=cw72o4yVk9xBvW
	TFOU0XwYQ+ZVcKWy2Ero0xU5fol2sXb+t7wcSRJAXWwnuWbUb/bnlrKmL8UKa8qRfyuHoQXSk3Tt2
	OE8aEMD8Aq5uPFm8aoAjpXlqIewzwx1P3vmiyhFC4tReEGbCD9oY6YB1sJl5Q8z/EcvUVNEqxdKrt
	/yxJqL6Y7WmqkXwQp3oxFFfMK3eQJPQN0Xi8CPPZKAsNVWS8+PluCu6WNI1/doxo5U9/WbEgbMdpZ
	uhOD6EHqNxsiNhjrpPw/ZzvGAIEeFeBekoqcRc6dPSjGt39dvBzN8K6A9XnM6fN1MIMpiUWlhrrrj
	rZ4neFIQ2Pjl4MyQeOPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqP6U-0000Od-QS; Wed, 24 Jul 2019 21:47:18 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqP5y-0000DC-C3
 for linux-rockchip@lists.infradead.org; Wed, 24 Jul 2019 21:46:47 +0000
Received: by mail-io1-xd44.google.com with SMTP id f4so92848412ioh.6
 for <linux-rockchip@lists.infradead.org>; Wed, 24 Jul 2019 14:46:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eOzpntW4jYuzCuRORz9nWSGQo3322zBOXDNxUCNWQVo=;
 b=N49uHsHU+zcaMFDqNV4M15/FPHDeWl0BFf+uvUz6Ah/f9VZ3iGgGU7udezJpszRZrl
 OuaZ+b0F8RqK82CQm9avLSxoSp0LcZU237Tk1WiIDqICFMob+o2PoxWNVNtFnmSMARna
 DzJTZ6PwcljRvItJBPksdvEKkg7zDpVhXGLzQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eOzpntW4jYuzCuRORz9nWSGQo3322zBOXDNxUCNWQVo=;
 b=bUEC4Wkwz+a20FdYNmQG4RGBsem7EM0CgUJrFErouHOkQQHmpEOldeKyNMAl2hHLgr
 z29DnxGp6Siaam5P8h9JKihXLMI4GCH7hVI3aViqI8f//ullDRZtjdG+aOkt/dnXcgew
 Gz2PfWE4K1COUwSSGHDC+P6znxU2BQ58BozzLmBLlp9yffWxp8Gh6SuARijLfB9tT75e
 r4cKcUZYfP316LZuw+hFNYlUm0AdC1llF+MnOJ+cEY4y15FP1/V6wPDWqZ/ybyEujM2T
 4WwHJrXdynOCLaQxoKHts6K0DdAt7Cj3B+o0MtGBqrG8aQO/GcTZhn8VPck+H0OvMriz
 FAPA==
X-Gm-Message-State: APjAAAWIvVXC4O5ebViixXiKkLjbKlxl+35LH9Z9ONQi6YDnfIADlOVB
 yV08pDK7/zxvcZaSpcPlWJKbFWdWA+E=
X-Google-Smtp-Source: APXvYqxFvZOQdhzUgBRAN7zx78JSJb2PQ8S93Q0Wa/zRDLdXTeIdix/n2VZ/fgYisxkO/Cfas/V3OQ==
X-Received: by 2002:a6b:3c0a:: with SMTP id k10mr2165882iob.271.1564004804483; 
 Wed, 24 Jul 2019 14:46:44 -0700 (PDT)
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com.
 [209.85.166.41])
 by smtp.gmail.com with ESMTPSA id 8sm38973537ion.26.2019.07.24.14.46.43
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 24 Jul 2019 14:46:44 -0700 (PDT)
Received: by mail-io1-f41.google.com with SMTP id f4so92848246ioh.6
 for <linux-rockchip@lists.infradead.org>; Wed, 24 Jul 2019 14:46:43 -0700 (PDT)
X-Received: by 2002:a6b:5103:: with SMTP id f3mr74359598iob.142.1564004803178; 
 Wed, 24 Jul 2019 14:46:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190711223455.12210-1-mka@chromium.org>
 <20190711223455.12210-2-mka@chromium.org>
In-Reply-To: <20190711223455.12210-2-mka@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 24 Jul 2019 14:46:30 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Wj4Fei6t-STjY_FJkDKQYys5PcVquBJcdRE3wUN=y3Yg@mail.gmail.com>
Message-ID: <CAD=FV=Wj4Fei6t-STjY_FJkDKQYys5PcVquBJcdRE3wUN=y3Yg@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] ARM: dts: rockchip: consolidate veyron panel and
 backlight settings
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_144646_410269_7E919FDD 
X-CRM114-Status: GOOD (  12.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Thu, Jul 11, 2019 at 3:35 PM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> diff --git a/arch/arm/boot/dts/rk3288-veyron-minnie.dts b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
> index 4cc7d3659484..2b0801a539c9 100644
> --- a/arch/arm/boot/dts/rk3288-veyron-minnie.dts
> +++ b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
> @@ -15,40 +15,6 @@
>                      "google,veyron-minnie-rev0", "google,veyron-minnie",
>                      "google,veyron", "rockchip,rk3288";
>
> -       backlight_regulator: backlight-regulator {
> -               compatible = "regulator-fixed";
> -               enable-active-high;
> -               gpio = <&gpio2 RK_PB4 GPIO_ACTIVE_HIGH>;
> -               pinctrl-names = "default";
> -               pinctrl-0 = <&bl_pwr_en>;
> -               regulator-name = "backlight_regulator";
> -               vin-supply = <&vcc33_sys>;
> -               startup-delay-us = <15000>;
> -       };
> -
> -       panel_regulator: panel-regulator {
> -               compatible = "regulator-fixed";
> -               enable-active-high;
> -               gpio = <&gpio7 RK_PB6 GPIO_ACTIVE_HIGH>;
> -               pinctrl-names = "default";
> -               pinctrl-0 = <&lcd_enable_h>;
> -               regulator-name = "panel_regulator";
> -               startup-delay-us = <100000>;
> -               vin-supply = <&vcc33_sys>;
> -       };
> -
> -       vcc18_lcd: vcc18-lcd {
> -               compatible = "regulator-fixed";
> -               enable-active-high;
> -               gpio = <&gpio2 RK_PB5 GPIO_ACTIVE_HIGH>;
> -               pinctrl-names = "default";
> -               pinctrl-0 = <&avdd_1v8_disp_en>;
> -               regulator-name = "vcc18_lcd";
> -               regulator-always-on;
> -               regulator-boot-on;
> -               vin-supply = <&vcc18_wl>;
> -       };
> -
>         volume_buttons: volume-buttons {
>                 compatible = "gpio-keys";
>                 pinctrl-names = "default";

You forgot to remove the line:

power-supply = <&backlight_regulator>;

...from minnie.


> diff --git a/arch/arm/boot/dts/rk3288-veyron-pinky.dts b/arch/arm/boot/dts/rk3288-veyron-pinky.dts
> index 9b6f4d9b03b6..06af58e37a4b 100644
> --- a/arch/arm/boot/dts/rk3288-veyron-pinky.dts
> +++ b/arch/arm/boot/dts/rk3288-veyron-pinky.dts
> @@ -14,7 +14,14 @@
>         compatible = "google,veyron-pinky-rev2", "google,veyron-pinky",
>                      "google,veyron", "rockchip,rk3288";
>
> +       /delete-node/backlight-regulator;
> +       /delete-node/panel-regulator;
>         /delete-node/emmc-pwrseq;
> +       /delete-node/vcc18-lcd;
> +};
> +
> +&backlight {
> +       /delete-property/power-supply;
>  };
>
>  &emmc {
> @@ -52,7 +59,17 @@
>         i2c-scl-rising-time-ns = <300>;
>  };
>
> +&panel {
> +       power-supply= <&vcc33_lcd>;

Might as well put a space before the "="?


>  &pinctrl {
> +       /delete-node/ lcd;
> +
> +       backlight {
> +               /delete-node/ bl_pwr_en;
> +       };

I general as the defender of "pinky", I'll let Heiko confirm he's OK
with the color of this bikeshed.  Sometimes a bit of repetition is
preferred over a bunch of confusing /delete-node/ statements since
those tend to make things harder to reason about in general.  In this
case I think things are cleaner after your patch but I won't say it's
100% clear cut.

Other than nits I have double-checked this patch, so feel free to add
my Reviewed-by after nits are fixed.

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
