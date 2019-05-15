Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93AAE1FA00
	for <lists+linux-rockchip@lfdr.de>; Wed, 15 May 2019 20:31:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sC0xPb2SiX73SPkBtLjbt98VJ4VA4TJasqu0pGveRRY=; b=W+hhLZpNTqXFrV
	V5iXaAUwhqBRsD/eortKW4kiKX07HDBNHRTNX68cfZuUKKSG09RjV6VHMznE+8Vc5qvj3d8AivXrC
	DZ5SgMYHHRC3zZIMazl/3cATq7nlVF/dOzmm2S7qFR4aZuN4aoQDSToaeBvT2NnoJIa8CuFUcWhug
	4aEpi59NPpzhxrfnqCOuWBM2KioCzGKMyIgHYZSXXN6+GJJev4wDvaDtRde9BfEKuBoHNMT/Skj/u
	DTjJI3VrNkfjlNx2HjiUSlCBvq98XfYAr80KiGoDykC0kc55Z88fWzC3cHlCA1+WU6kqv/VQcVpqA
	CcXRcFNiWxwT+Wo+MQtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQyg3-0004Bu-DJ; Wed, 15 May 2019 18:30:55 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQyfp-0003tF-CY
 for linux-rockchip@lists.infradead.org; Wed, 15 May 2019 18:30:43 +0000
Received: by mail-vs1-xe43.google.com with SMTP id c24so574005vsp.7
 for <linux-rockchip@lists.infradead.org>; Wed, 15 May 2019 11:30:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kcBF6F4zgNomYlPRQZzOJ2t4+wjtmmM8eaNQl5KRjbc=;
 b=nzi7Tz62FN/3PrAYjwJ++Zv1PALOdoOBPyJ4XX1U8AIyDcFe0i1fEKvD9H1x6Ag/2X
 1EoWcOkUtrM1ICXH7Oz33wBHzE8UdR+QGwDdXu69dg9MCw2GhPZ2xNfQlrmMzR4nd29d
 oT7q4wYBWTdMI2IrNv/Gsm55qOGS3VsmSNlco=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kcBF6F4zgNomYlPRQZzOJ2t4+wjtmmM8eaNQl5KRjbc=;
 b=PSThm0oUAGQkNXv8EFCSTqw2p535wHT9wlVNnb1X8M4mGqTVk+KhfRG+m00rKYhGd9
 gTWZV7H89BiU4ioZcu3FiFzdfXC6wfYoNs9+8SFw73SDgFFOGjtbAGW+Anl+w94GxL+P
 ouCSqcMkcniSQRoxM1FNor6WEwDATzc7ZuITw7TSYh2TN08Hw9T2Gx17yDYezXbph3/l
 P88EGz/xztXHtwXs26A/5U6I6x9ghBPSp/uvARqxPrx7Kj63JCftZGsKpuyeM+g42lOH
 F+81YIf71KyQ4SaNE1bdd/puuSbpj/lGdPL90+GwVG9d9u38XOFyX+MtcZf8m0qF8zg5
 DqjA==
X-Gm-Message-State: APjAAAVClRQXjNDXte8xyRwCAGrdWBDojFEKhO2mEuD9iLYuly34Yo6z
 DPzlfFpQchxYk8HqtO+zenRrP2XpR8U=
X-Google-Smtp-Source: APXvYqwwsTNB/62yxMtWGNtg6+0tf15hLNKv0AoLOUCGN4hzOxiWSdMzRFn0hVn9L/ZP9jQeqzhmvQ==
X-Received: by 2002:a67:f688:: with SMTP id n8mr21620834vso.174.1557945039672; 
 Wed, 15 May 2019 11:30:39 -0700 (PDT)
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com.
 [209.85.217.47])
 by smtp.gmail.com with ESMTPSA id q63sm1057470vke.2.2019.05.15.11.30.37
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 11:30:37 -0700 (PDT)
Received: by mail-vs1-f47.google.com with SMTP id q64so600424vsd.1
 for <linux-rockchip@lists.infradead.org>; Wed, 15 May 2019 11:30:37 -0700 (PDT)
X-Received: by 2002:a67:b348:: with SMTP id b8mr13692401vsm.144.1557945037046; 
 Wed, 15 May 2019 11:30:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190515153127.24626-1-mka@chromium.org>
In-Reply-To: <20190515153127.24626-1-mka@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 15 May 2019 11:30:24 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U19uAGkwTqg-N6_m5WYQ7yMwjQir3TYUsb3SWWOihTOg@mail.gmail.com>
Message-ID: <CAD=FV=U19uAGkwTqg-N6_m5WYQ7yMwjQir3TYUsb3SWWOihTOg@mail.gmail.com>
Subject: Re: [PATCH 1/2] dts: rockchip: raise GPU trip point temperature for
 veyron to 72.5 degC
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_113041_440166_F3ADF71A 
X-CRM114-Status: GOOD (  15.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Wed, May 15, 2019 at 8:31 AM Matthias Kaehlcke <mka@chromium.org> wrote:

> This value matches what is used by the downstream Chrome OS 3.14
> kernel, the 'official' kernel for veyron devices.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
>  arch/arm/boot/dts/rk3288-veyron.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3288-veyron.dtsi
> index 1252522392c7..169da06e1c09 100644
> --- a/arch/arm/boot/dts/rk3288-veyron.dtsi
> +++ b/arch/arm/boot/dts/rk3288-veyron.dtsi
> @@ -446,6 +446,14 @@
>         status = "okay";
>  };
>
> +&gpu_thermal {
> +       trips {
> +               gpu_alert0: gpu_alert0 {
> +                       temperature = <72500>; /* millicelsius */
> +               };
> +       };
> +};
> +

This should be sorted alphabetically.  Thus this should sort right
after this in rk3288-veyron.dtsi

&gpu {
  mali-supply = <&vdd_gpu>;
  status = "okay";
};

Also you don't need to replicate the whole structure?  I think the
above should just be:

&gpu_alert0 {
  temperature = <72500>; /* millicelsius */
};

NOTE also that that gpu and cpu critical is 100 C downstream.  Should
we do that too?  Ah, but before we do that I guess we'd need to also
override the "rockchip,hw-tshut-temp" to 125000 to match downstream.
I guess that could be a separate series?

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
