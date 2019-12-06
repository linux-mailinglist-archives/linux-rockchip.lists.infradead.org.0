Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D73B4115959
	for <lists+linux-rockchip@lfdr.de>; Fri,  6 Dec 2019 23:32:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oIJ/rhLnZ2sTtGAmtUIVdxHtfVdrv3HjuUGOfTEAObY=; b=Bxqj4LE1pSoVSJ
	O77VSxbipaJ6QSFqE657SgeKtawVdS3C5rqNVUwzo7+cVtpnjkE59GL28ZzGyAi2rhFhZxHOCVVbS
	VRXxk0gByptIXzfsNU2nZDDMGOhY+mo2kphPPrUPDsZOOBb4tTUQM7D2+90EKmmF1fCfS5ENED83Z
	wthLN5VeyHRe9NgJGdZ3DtqydPti28dxoWWmT8nTWNFA3KsCfYIMn/jU9LRf6Qaa9OJWu42ECXoJh
	FKOch8iiFrvB7a6IjrWUJrdPX+KAPoTiOoQZ/cHkXcwtGcpFvNRL9UupGstOmdwCy8VvAktzLkXkt
	YGQuQA3AL8y+rH2k4ZGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idM9H-0000RG-3Z; Fri, 06 Dec 2019 22:32:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idM96-0000HR-QN; Fri, 06 Dec 2019 22:32:22 +0000
Received: from p57b772b2.dip0.t-ipconnect.de ([87.183.114.178]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1idM90-0004jn-SN; Fri, 06 Dec 2019 23:32:14 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Anand Moon <linux.amoon@gmail.com>
Subject: Re: [RFCv1 0/8] RK3399 clean shutdown issue
Date: Fri, 06 Dec 2019 23:32:14 +0100
Message-ID: <1765889.rfqrfT1PbY@phil>
In-Reply-To: <20191206184536.2507-1-linux.amoon@gmail.com>
References: <20191206184536.2507-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_143221_004310_CE7B7D76 
X-CRM114-Status: GOOD (  14.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Daniel Schultz <d.schultz@phytec.de>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Anand,

Am Freitag, 6. Dezember 2019, 19:45:28 CET schrieb Anand Moon:
> Most of the RK3399 SBC boards do not perform clean
> shutdown and clean reboot.
> 
> These patches try to help resolve the issue with proper
> shutdown by turning off the PMIC.
> 
> For reference 
> RK805 PMCI data sheet:
> [0] http://rockchip.fr/RK805%20datasheet%20V1.3.pdf
> RK808 PMIC data sheet:
> [1] http://rockchip.fr/RK808%20datasheet%20V1.4.pdf
> RK817 PMIC data sheet:
> [2] http://rockchip.fr/RK817%20datasheet%20V1.01.pdf 
> RK818 PMIC data sheet:
> [3] http://rockchip.fr/RK818%20datasheet%20V1.0.pdf
> 
> Reboot issue:
> My guess is that we need to some proper sequence of
> setting to PMCI to perform clean.
> 
> If you have any input please share them.

The rk8xx pmics may not on all devices be responsible for powering down
the device. That is what the system-power-controller dt-property is for.

So that property is there for a reason - to indicate that the pmic is
responsible for power-off-handling.

Heiko

> Tested on SBC
> Rock960 Model A
> Odroid N1
> Rock64
> 
> -Anand Moon
> 
> Anand Moon (8):
>   mfd: rk808: Refactor shutdown functions
>   mfd: rk808: use syscore for RK805 PMIC shutdown
>   mfd: rk808: use syscore for RK808 PMIC shutdown
>   mfd: rk808: use syscore for RK818 PMIC shutdown
>   mfd: rk808: cleanup unused function pointer
>   mfd: rk808: use common syscore for all PMCI for clean shutdown
>   arm64: rockchip: drop unused field from rk8xx i2c node
>   arm: rockchip: drop unused field from rk8xx i2c node
> 
>  arch/arm/boot/dts/rk3036-kylin.dts            |   1 -
>  arch/arm/boot/dts/rk3188-px3-evb.dts          |   1 -
>  arch/arm/boot/dts/rk3288-evb-rk808.dts        |   1 -
>  arch/arm/boot/dts/rk3288-phycore-som.dtsi     |   1 -
>  arch/arm/boot/dts/rk3288-popmetal.dts         |   1 -
>  arch/arm/boot/dts/rk3288-tinker.dtsi          |   1 -
>  arch/arm/boot/dts/rk3288-veyron.dtsi          |   1 -
>  arch/arm/boot/dts/rk3288-vyasa.dts            |   1 -
>  arch/arm/boot/dts/rv1108-elgin-r1.dts         |   1 -
>  arch/arm/boot/dts/rv1108-evb.dts              |   1 -
>  arch/arm64/boot/dts/rockchip/px30-evb.dts     |   1 -
>  arch/arm64/boot/dts/rockchip/rk3328-a1.dts    |   1 -
>  arch/arm64/boot/dts/rockchip/rk3328-evb.dts   |   1 -
>  .../arm64/boot/dts/rockchip/rk3328-roc-cc.dts |   1 -
>  .../arm64/boot/dts/rockchip/rk3328-rock64.dts |   1 -
>  .../boot/dts/rockchip/rk3368-geekbox.dts      |   1 -
>  arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi |   1 -
>  .../boot/dts/rockchip/rk3368-px5-evb.dts      |   1 -
>  .../boot/dts/rockchip/rk3399-firefly.dts      |   1 -
>  .../boot/dts/rockchip/rk3399-hugsun-x99.dts   |   1 -
>  .../boot/dts/rockchip/rk3399-khadas-edge.dtsi |   1 -
>  .../boot/dts/rockchip/rk3399-leez-p710.dts    |   1 -
>  .../boot/dts/rockchip/rk3399-nanopi4.dtsi     |   1 -
>  .../boot/dts/rockchip/rk3399-orangepi.dts     |   1 -
>  arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi |   1 -
>  .../boot/dts/rockchip/rk3399-roc-pc.dtsi      |   1 -
>  .../boot/dts/rockchip/rk3399-rock-pi-4.dts    |   1 -
>  .../boot/dts/rockchip/rk3399-rock960.dtsi     |   1 -
>  .../boot/dts/rockchip/rk3399-rockpro64.dts    |   1 -
>  .../boot/dts/rockchip/rk3399-sapphire.dtsi    |   1 -
>  drivers/mfd/rk808.c                           | 144 +++++-------------
>  include/linux/mfd/rk808.h                     |   2 -
>  32 files changed, 42 insertions(+), 134 deletions(-)
> 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
