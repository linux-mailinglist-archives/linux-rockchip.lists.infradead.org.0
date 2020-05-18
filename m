Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1BD31D8AF9
	for <lists+linux-rockchip@lfdr.de>; Tue, 19 May 2020 00:31:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NxvVOslWe/ZIwtOObdufmZg8uzvNRH83AU5cuq4KiWY=; b=dG2YYy934BgWV2
	pSB9a8tfF3FzBjWXWLBk8oK4MkMv+FbDEJ3ApGIVMVduAKe6GjtpRSPEIb0o3lS+7T5M6Z0RmOg4B
	h+B5jN9ZM0BrQeWDoaAfJEq789zfA/0PEUi+1xpfGpFhF4/39c9urtgt2ANisQsTh6psqSvq4VB5v
	CjJZKK4Lkzbw3x2fYU9Q2xgskCh4TkdzJl5FpCGCPG4l/uNaDR/G523/m55m5ftT5gQzaDQOIV3iK
	LXxBJ367XhGz2FHyAYTSsYFRwgVCyLwkmiPH5JLAGmFtH/2EyAZ1NjzmtQ9BQaRrK+/xdXZDWeTef
	idJQc16r+ScrtSLCBMQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaoHr-00053x-Vc; Mon, 18 May 2020 22:31:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaoG2-0000vg-3D; Mon, 18 May 2020 22:29:16 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jaoG0-000081-Ec; Tue, 19 May 2020 00:29:12 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v3 3/4] arm64: dts: rockchip: remove include for irq.h
Date: Tue, 19 May 2020 00:29:11 +0200
Message-ID: <2542759.BOPbJzt3gv@diego>
In-Reply-To: <20200403180159.13387-3-jbx6244@gmail.com>
References: <20200403180159.13387-1-jbx6244@gmail.com>
 <20200403180159.13387-3-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_152914_380805_A89E5311 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Johan,

Am Freitag, 3. April 2020, 20:01:58 CEST schrieb Johan Jonker:
> The 'irq.h' file is already included through 'arm-gic.h',
> so remove them from all Rockchip dtsi files.

I disagree here ... we do use properties from both arm-gic.h and
the main irq.h an therefore should not rely on the arm-gic.h
"accidentially" including irq.h


Heiko


> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/px30.dtsi   | 1 -
>  arch/arm64/boot/dts/rockchip/rk3308.dtsi | 1 -
>  arch/arm64/boot/dts/rockchip/rk3328.dtsi | 1 -
>  arch/arm64/boot/dts/rockchip/rk3368.dtsi | 1 -
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 1 -
>  5 files changed, 5 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
> index 6f7171290..4820edc7f 100644
> --- a/arch/arm64/boot/dts/rockchip/px30.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
> @@ -6,7 +6,6 @@
>  #include <dt-bindings/clock/px30-cru.h>
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
> -#include <dt-bindings/interrupt-controller/irq.h>
>  #include <dt-bindings/pinctrl/rockchip.h>
>  #include <dt-bindings/power/px30-power.h>
>  #include <dt-bindings/soc/rockchip,boot-mode.h>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> index ac43bc3f7..a9b98555d 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> @@ -7,7 +7,6 @@
>  #include <dt-bindings/clock/rk3308-cru.h>
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
> -#include <dt-bindings/interrupt-controller/irq.h>
>  #include <dt-bindings/pinctrl/rockchip.h>
>  #include <dt-bindings/soc/rockchip,boot-mode.h>
>  #include <dt-bindings/thermal/thermal.h>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> index 470783a48..175060695 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> @@ -6,7 +6,6 @@
>  #include <dt-bindings/clock/rk3328-cru.h>
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
> -#include <dt-bindings/interrupt-controller/irq.h>
>  #include <dt-bindings/pinctrl/rockchip.h>
>  #include <dt-bindings/power/rk3328-power.h>
>  #include <dt-bindings/soc/rockchip,boot-mode.h>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
> index 1ebb0eef4..f22475016 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
> @@ -5,7 +5,6 @@
>  
>  #include <dt-bindings/clock/rk3368-cru.h>
>  #include <dt-bindings/gpio/gpio.h>
> -#include <dt-bindings/interrupt-controller/irq.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>  #include <dt-bindings/pinctrl/rockchip.h>
>  #include <dt-bindings/soc/rockchip,boot-mode.h>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index 0d895cff5..123b7402a 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -6,7 +6,6 @@
>  #include <dt-bindings/clock/rk3399-cru.h>
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
> -#include <dt-bindings/interrupt-controller/irq.h>
>  #include <dt-bindings/pinctrl/rockchip.h>
>  #include <dt-bindings/power/rk3399-power.h>
>  #include <dt-bindings/thermal/thermal.h>
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
