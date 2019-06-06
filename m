Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E57E381D8
	for <lists+linux-rockchip@lfdr.de>; Fri,  7 Jun 2019 01:33:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iE79RUV5/nsyURvbBHjRBe/zFhUf6wCmrYP1neRfBB8=; b=Xx1ayLUh+AwWgj
	StjGs8/gg9SK1akv4stI2UQLC+jXy0qAnr3xfKpMfswJVIhLOwysfC81dx1mpz13pdjdFSxtDsI0d
	ZB/c2J3jCFZ5nZEjg/DLILGwYhCA8Oa4kLU2uCGf9vdVe9odiRgULcgNVJfa1GMaX0ydwOdthbjtM
	6G3uNw9noi4aADz1GNGqHfErmF3VTCLbyI4rm3c5yfABiQwgqruj8cPP8R/PRHsqMy3OzPL3J0eQm
	9+1/T04MaVG/jyPhXbp6WkO3gEda3e3xG0HJ8cAv1H9zC6j7D6f2274ssQTEo9RfY0XCZh9RffJ0q
	aZruEHqx8Y3gZAf/Xrnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZ1sp-0000h6-8H; Thu, 06 Jun 2019 23:33:23 +0000
Received: from mail-it1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ1sR-0007rC-Od
 for linux-rockchip@lists.infradead.org; Thu, 06 Jun 2019 23:33:01 +0000
Received: by mail-it1-x142.google.com with SMTP id m187so81277ite.3
 for <linux-rockchip@lists.infradead.org>; Thu, 06 Jun 2019 16:32:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=k0A3A4PZm4/qsXsHFur2v9UHOlrbEBQyk4vcKPIBFw0=;
 b=fkbxgUrEv8PfhTy3wvjiFFp1EImbq7M90vH3PXzj1KqC9QVgYow75jLTgKOq3FfxOL
 ZUcYMofKM9SzoTgEA4dphTznhi2DKKtXgfDNcaq0CjU9oVG3wuL1B/toPbhiZNpICNSa
 po1KErA7hXKSYO31giKbUpqEV3GmbqFoGEnmE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=k0A3A4PZm4/qsXsHFur2v9UHOlrbEBQyk4vcKPIBFw0=;
 b=n2wtjZy3F0IeF/po9LJoFHsSPO+VrOC9JMsl7XImojXFbgV2PQNVIkQ9sGs7ebsKMP
 nzF3tIw6qRM0j2GM1cE6oL1vgM1v2Kr32wcVn3C0emlIluFMqsLp3frZsIYKooZPYpAG
 Zi+vlzwPhKJ6cL8c4hs/850ifIBPK1mqmaK8gFI4BrzqgW/jt/eVaDkOvMnyvukIrwh9
 hl4uajf912qlyS3HY0O+SupcvwaVmwKzdcyGHM8rJU5ddCQyZHs+UBFjMidlsRXh4Ev2
 jCTXaXAlCq/pbDsKLB6EuJOjieuEbmMfR2WXFv999tVcuvUAzjHg7fbnjCiOBldJJU43
 GL3g==
X-Gm-Message-State: APjAAAWe5n6rQyfE23ecCFkG1pbMvi6LdcqguCSxE8wJKwji+lxiNOfP
 ZOXn8E0/g3sku4e1mrR01saZHt62VgM=
X-Google-Smtp-Source: APXvYqxY57ToUlymzLgkwF8kDHQ6mQunoL6pLCLBcoHF7+MdjGQpz8yAbPZm+ptxkYT1F2w47KN/YA==
X-Received: by 2002:a24:ed1:: with SMTP id 200mr2111070ite.134.1559863978279; 
 Thu, 06 Jun 2019 16:32:58 -0700 (PDT)
Received: from mail-it1-f170.google.com (mail-it1-f170.google.com.
 [209.85.166.170])
 by smtp.gmail.com with ESMTPSA id h185sm122347itb.16.2019.06.06.16.32.55
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 Jun 2019 16:32:57 -0700 (PDT)
Received: by mail-it1-f170.google.com with SMTP id h20so74541itk.4
 for <linux-rockchip@lists.infradead.org>; Thu, 06 Jun 2019 16:32:55 -0700 (PDT)
X-Received: by 2002:a02:9143:: with SMTP id b3mr9665780jag.12.1559863975142;
 Thu, 06 Jun 2019 16:32:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190605204320.22343-1-mka@chromium.org>
 <20190605204320.22343-2-mka@chromium.org>
In-Reply-To: <20190605204320.22343-2-mka@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 6 Jun 2019 16:32:41 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VnjRPokOp+DH5H04Ej=TSxKDeDWhbbJt46b6cVFnOosQ@mail.gmail.com>
Message-ID: <CAD=FV=VnjRPokOp+DH5H04Ej=TSxKDeDWhbbJt46b6cVFnOosQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: rockchip: Configure BT_HOST_WAKE as wake-up
 signal on veyron
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_163259_808135_374B14D6 
X-CRM114-Status: GOOD (  18.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
 Heiko Stuebner <heiko@sntech.de>, Brian Norris <briannorris@chromium.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Wed, Jun 5, 2019 at 1:43 PM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> This enables wake up on Bluetooth activity when the device is
> suspended. The BT_HOST_WAKE signal is only connected on devices
> with BT module that are connected through UART.
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
>  arch/arm/boot/dts/rk3288-veyron.dtsi | 29 ++++++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
>
> diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3288-veyron.dtsi
> index cc4c3595f145..145cac7c0847 100644
> --- a/arch/arm/boot/dts/rk3288-veyron.dtsi
> +++ b/arch/arm/boot/dts/rk3288-veyron.dtsi
> @@ -23,6 +23,31 @@
>                 reg = <0x0 0x0 0x0 0x80000000>;
>         };
>
> +       bt_activity: bt-activity {
> +               compatible = "gpio-keys";
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&bt_host_wake>;
> +
> +               /*
> +                * HACK: until we have an LPM driver, we'll use an
> +                * ugly GPIO key to allow Bluetooth to wake from S3.
> +                * This is expected to only be used by BT modules that
> +                * use UART for comms.  For BT modules that talk over
> +                * SDIO we should use a wakeup mechanism related to SDIO.
> +                *
> +                * Use KEY_RESERVED here since that will work as a wakeup but
> +                * doesn't get reported to higher levels (so doesn't confuse
> +                * Chrome).
> +                */
> +               bt-wake {
> +                       label = "BT Wakeup";
> +                       gpios = <&gpio4 RK_PD7 GPIO_ACTIVE_HIGH>;
> +                       linux,code = <KEY_RESERVED>;
> +                       wakeup-source;
> +               };
> +
> +       };
> +
>         power_button: power-button {
>                 compatible = "gpio-keys";
>                 pinctrl-names = "default";
> @@ -555,6 +580,10 @@
>                         rockchip,pins = <4 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
>                 };
>
> +               bt_host_wake: bt-host-wake {
> +                       rockchip,pins = <4 31 RK_FUNC_GPIO &pcfg_pull_down>;

nit: s/31/RK_PD7

Other than that, feel free to add my Reviewed-by assuming that this
isn't too hacky for mainline to accept while we wait for someone to
come up with a better solution.

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
