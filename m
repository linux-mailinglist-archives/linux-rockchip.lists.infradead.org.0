Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54EE019DADF
	for <lists+linux-rockchip@lfdr.de>; Fri,  3 Apr 2020 18:08:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fhFD4Um0mEyK1fB313Uodw5TNqbhxKiAbIEO1Gu9ryU=; b=S0ujiXsMQTqg4c
	Gw4vAhtrxxtQaNr8W3ugskZ4zgoZtc6uae9GZzp+wgWZCe2WQMoqwShFd1euxmCsGbG1ESrIy+qSb
	v3otGSG2woclTlwGuCSRj/wgHwCz+eJM5R85i2IhFvXuR/AYw04YU2G22h7IHRorXtjIkCyDD0wzj
	4IR4YdRqXVjDaY2emP5VDG+MHIOCzJUM6+KfpNTEWEuN8Thq4q+1rbR6uJRTkDwLK8hCjmrMVfM6h
	7P9gUDoUV1KFtKFpVK1DLEuxPEBp0EYr6TTp1dnObAUoN+BRaT5AmUclQeXwRY2vhdkcqPB3mmnZ4
	p3BvNUmr8HN1Kxa1r7jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKOrj-0000Rm-Nx; Fri, 03 Apr 2020 16:08:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKOrb-0000Jd-1i; Fri, 03 Apr 2020 16:08:13 +0000
Received: from p5b127fb0.dip0.t-ipconnect.de ([91.18.127.176]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jKOrV-0005vZ-5e; Fri, 03 Apr 2020 18:08:05 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v2 2/3] ARM: dts: rockchip: remove include for irq.h
Date: Fri, 03 Apr 2020 18:08:04 +0200
Message-ID: <2606579.xTHnjFkxbI@phil>
In-Reply-To: <20200403154329.11256-2-jbx6244@gmail.com>
References: <20200403154329.11256-1-jbx6244@gmail.com>
 <20200403154329.11256-2-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_090811_239397_28FCECC5 
X-CRM114-Status: GOOD (  14.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Am Freitag, 3. April 2020, 17:43:28 CEST schrieb Johan Jonker:
> The 'irq.h' file is already included through 'arm-gic.h',
> so remove them from all Rockchip dtsi files.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  arch/arm/boot/dts/rk3036.dtsi | 3 +--
>  arch/arm/boot/dts/rk322x.dtsi | 3 +--
>  arch/arm/boot/dts/rk3288.dtsi | 5 ++---
>  arch/arm/boot/dts/rk3xxx.dtsi | 1 -
>  arch/arm/boot/dts/rv1108.dtsi | 4 ++--
>  5 files changed, 6 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/rk3036.dtsi b/arch/arm/boot/dts/rk3036.dtsi
> index 781ac7583..55f3838b2 100644
> --- a/arch/arm/boot/dts/rk3036.dtsi
> +++ b/arch/arm/boot/dts/rk3036.dtsi
> @@ -1,10 +1,9 @@
>  // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>  
> +#include <dt-bindings/clock/rk3036-cru.h>
>  #include <dt-bindings/gpio/gpio.h>
> -#include <dt-bindings/interrupt-controller/irq.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>  #include <dt-bindings/pinctrl/rockchip.h>
> -#include <dt-bindings/clock/rk3036-cru.h>
>  #include <dt-bindings/soc/rockchip,boot-mode.h>

that movement of the *-cru.h files are unrelated changes,
as they're not described in the commit message.

If you really want to move these this should be a separate commit.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
