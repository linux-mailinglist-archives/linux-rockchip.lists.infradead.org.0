Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3DAEF8B3E
	for <lists+linux-rockchip@lfdr.de>; Tue, 12 Nov 2019 10:00:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g/PG7rXyzBxcI/Z6ls8XJPHveQt5O2rVmkkeKZVczZA=; b=JVa47Qv1mdhfkI
	4Jzi4az78CVDEdat87kQGtmIQuswjD3ATVf/yXqIEdFoHyeZuYejliExj+egmt8xym/UENOLWcRsw
	/COPjewoiqVODix1ddTktqei2yAalu12zX2qlQFh4/F5hbygzPNGjt4Zb6t6b2+sNquHvqCp1xLQ3
	HZZltTaclJ8InweMdXg/xeX/lykWjL+OmyaQ9FRaeZdevboXtckHy7YlKeN+VKArRj53V7pRXnBlH
	nttYxUEOLSvrmKB4CPy7p6WYzKz/lyvA7+sA3LbHfhygadBcRKEhJxVNFmaloVQVl0FLtu2O9sMxY
	f4Z4FarD+ZW+/gi5iaFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUS2I-0008I9-K7; Tue, 12 Nov 2019 09:00:30 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUS20-0007U6-60
 for linux-rockchip@lists.infradead.org; Tue, 12 Nov 2019 09:00:15 +0000
Received: by mail-ua1-x942.google.com with SMTP id j4so1204140uak.12
 for <linux-rockchip@lists.infradead.org>; Tue, 12 Nov 2019 01:00:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1mTS09YV5sLbGRhR8eLBR8az5kI+VEtyXkMiASWLN98=;
 b=YOUp0Sb06dRuaudxR7t7caTwSTstbvIIdATOS4cpPVNBtB8mbaIJyxZAurEvSsKwhu
 j6KD9pvfJYz2QJr9Wg8Lkuyx0LEC4wAwEfKx/Oti0eD8qvVCV0JQ6KoTRYOGcEDL6Qp6
 GECThp5a8BbccT0sBfHGbUfvnicncyqsspf6ISAwZ7HYOxZ1EzbF6I5mchGssao0Hv60
 GEltbF2Jfx1T1ZMhrqJwIHFXhSEVlYR9nWi9gL/l/q+lY7n3nZGptVdTOUwpA9LDRqBs
 zcn8s15pCOUOXG2SlncwUP0j8Ql61wdbe1m5siOyJ50PUmu+FxdXenD9CYpRSxaO3bI8
 rV+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1mTS09YV5sLbGRhR8eLBR8az5kI+VEtyXkMiASWLN98=;
 b=b1nMGH1LnwQZNCPyhCQMAsrzUSglPGPuew9Jol9jw9J+UuIBrGasy7XAWDBxF9qB/X
 9P0TLW47s/VMhduyJjmhOWYB+0Zj44Rt772uOE2ThFIuI3LRjkHZX0Bxu0d7yLStOrdv
 x+FbtAj9KCOsMXvxUiaF076f2FYTtQRfbPSZLSnKu6R1Vf9T0DAoGmcDL7Xi/hj7sh3Z
 EZFB3Oy8NlynxIkrXZW8MXxBZPnoP5UGp8wrK30q1TPcNKTuG9jiVTNq7kRfl0hsZ454
 mVKPdCp+qJaozxroGiOF2FMshBjy7cynCNlYnlpYLk5RZe4ka+rfCiga4vTy3xPweERA
 eA8g==
X-Gm-Message-State: APjAAAVfG+bQpjUfRO9716jO3eXgzC3ySV6mMhoAM6LPnbsBadIYI3Qu
 aFb1tCGjqcXiaCoVKmK5n0InMst9WfF4CncNsVOKqQ==
X-Google-Smtp-Source: APXvYqxabd40sALVZ8OQ7ToAPJNZ/uS9Scd5B48SraEZjMFQA9vGEPI0Qj3t3JkXgO0wuY66RFrxxze3Ex9ZHJlQsok=
X-Received: by 2002:ab0:24ce:: with SMTP id k14mr19253276uan.15.1573549208426; 
 Tue, 12 Nov 2019 01:00:08 -0800 (PST)
MIME-Version: 1.0
References: <25466090-3b24-2695-10fb-88c59be3f149@fivetechno.de>
In-Reply-To: <25466090-3b24-2695-10fb-88c59be3f149@fivetechno.de>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 12 Nov 2019 09:59:32 +0100
Message-ID: <CAPDyKFqo76wi0-7LQqSXuH3YOUSdTTLySzsxEGkEvZayAPuj6g@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add SDR104 mode to SD-card I/F
 on rk3399-roc-pc
To: Markus Reichl <m.reichl@fivetechno.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_010012_273800_F6A00F79 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, 12 Nov 2019 at 09:45, Markus Reichl <m.reichl@fivetechno.de> wrote:
>
> Add SDR104 capability and regulators to SD card node.
> While at it, fix a typo in lcd pinctrl and remove two
> undocumented bindings from pmic.
>
> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>

FWIW:

Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>

Kind regards
Uffe

> ---
> v2: Remove always-on from vcc3v0_sd
> ---
>  .../boot/dts/rockchip/rk3399-roc-pc.dtsi      | 30 +++++++++++++++----
>  1 file changed, 24 insertions(+), 6 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> index d1eb55c855b3..a31099f7620b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> @@ -135,6 +135,19 @@
>                 vin-supply = <&vcc_1v8>;
>         };
>
> +       vcc3v0_sd: vcc3v0-sd {
> +               compatible = "regulator-fixed";
> +               enable-active-high;
> +               gpio = <&gpio4 RK_PD6 GPIO_ACTIVE_HIGH>;
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&vcc3v0_sd_en>;
> +               regulator-name = "vcc3v0_sd";
> +               regulator-boot-on;
> +               regulator-min-microvolt = <3000000>;
> +               regulator-max-microvolt = <3000000>;
> +               vin-supply = <&vcc3v3_sys>;
> +       };
> +
>         vcc3v3_sys: vcc3v3-sys {
>                 compatible = "regulator-fixed";
>                 regulator-name = "vcc3v3_sys";
> @@ -293,8 +306,6 @@
>                 vcc10-supply = <&vcc3v3_sys>;
>                 vcc11-supply = <&vcc3v3_sys>;
>                 vcc12-supply = <&vcc3v3_sys>;
> -               vcc13-supply = <&vcc3v3_sys>;
> -               vcc14-supply = <&vcc3v3_sys>;
>                 vddio-supply = <&vcc_3v0>;
>
>                 regulators {
> @@ -576,7 +587,7 @@
>
>         lcd-panel {
>                 lcd_panel_reset: lcd-panel-reset {
> -                       rockchip,pins = <4 RK_PD6 RK_FUNC_GPIO &pcfg_pull_up>;
> +                       rockchip,pins = <4 RK_PD5 RK_FUNC_GPIO &pcfg_pull_up>;
>                 };
>         };
>
> @@ -602,6 +613,10 @@
>                 vsel2_gpio: vsel2-gpio {
>                         rockchip,pins = <1 RK_PB6 RK_FUNC_GPIO &pcfg_pull_down>;
>                 };
> +
> +               pmic_int_l: pmic-int-l {
> +                       rockchip,pins = <1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
> +               };
>         };
>
>         sdio-pwrseq {
> @@ -610,9 +625,9 @@
>                 };
>         };
>
> -       pmic {
> -               pmic_int_l: pmic-int-l {
> -                       rockchip,pins = <1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
> +       sdmmc {
> +               vcc3v0_sd_en: vcc3v0-sd-en {
> +                       rockchip,pins = <4 RK_PD6 RK_FUNC_GPIO &pcfg_pull_none>;
>                 };
>         };
>
> @@ -667,6 +682,9 @@
>         cd-gpios = <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;
>         disable-wp;
>         max-frequency = <150000000>;
> +       sd-uhs-sdr104;
> +       vmmc-supply = <&vcc3v0_sd>;
> +       vqmmc-supply = <&vcc_sdio>;
>         pinctrl-names = "default";
>         pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_bus4>;
>         status = "okay";
> --
> 2.20.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
