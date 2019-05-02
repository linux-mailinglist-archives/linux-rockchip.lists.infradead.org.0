Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95F1111471
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 May 2019 09:44:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FtjXgLvxnfabb91DBRfpMv4LxAc8yHVMWogi1LPUAKg=; b=Wa3ZsTyxRaN0Wl
	nklCZigULkV+WqqZ2b65RvZGI5gcP+Oo4KcNWyFPWU18Z7wiitLYjwVDh9JLWLQviHTqIoI9P9g6c
	foJYaAq2LcNQsFPkeGTYFHNNE98CARRlMJKzWbL/lOCxDXLRn0WEsJ6jc9OMGcKAiLpKkSAfwMAnD
	9tPYJORrfHiT0sEArcQ10Yt/7QB+ELnYEQj07BGO9nt2Bukm5BcGZ61boL1CXK72Al6GZjhglulLP
	RHqecD2F/eUpvy1KFBxXV0YEpQFiZqWF4TUn7hhBQDrZs9MUXKehzEjZfjesAKAGwL11JG3KUsbbw
	WBs4IKuaAnXdwhWEVxGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM6O8-00067p-IZ; Thu, 02 May 2019 07:44:16 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM6O5-00062t-IM
 for linux-rockchip@lists.infradead.org; Thu, 02 May 2019 07:44:15 +0000
X-Originating-IP: 90.88.149.145
Received: from aptenodytes (aaubervilliers-681-1-29-145.w90-88.abo.wanadoo.fr
 [90.88.149.145])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 25ED91BF207;
 Thu,  2 May 2019 07:43:57 +0000 (UTC)
Message-ID: <b3dbf0578c96cf74ab5119e46f3dec5bcf406726.camel@bootlin.com>
Subject: Re: [PATCH v6 0/3] arm64: rockchip: dts: Add rk3399 -u-boot.dtsi files
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, Kever Yang
 <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>, Tom Rini
 <trini@konsulko.com>, Manivannan Sadhasivam
 <manivannan.sadhasivam@linaro.org>
Date: Thu, 02 May 2019 09:43:57 +0200
In-Reply-To: <20190427114202.7358-1-jagan@amarulasolutions.com>
References: <20190427114202.7358-1-jagan@amarulasolutions.com>
Organization: Bootlin
User-Agent: Evolution 3.32.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_004413_769313_91EF33C9 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 u-boot@lists.denx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Sat, 2019-04-27 at 17:11 +0530, Jagan Teki wrote:
> This series is a rework of v5 patch that send it in separate series[1]
> 
> All these changes are creating an initial rk3399-u-boot.dtsi and rk3399
> board -u-boot.dtsi files and u-boot specific dts changes like
> - sdram dtsi
> - sdmmc, u-boot,dm-pre-reloc
> - spi1, u-boot,dm-pre-reloc

For the whole series:
Reviewed-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

Cheers,

Paul

> Changes for v6:
> - spilt the existing patch[1] into multiple patches
>   and send as a separate series.
> 
> [1] https://patchwork.ozlabs.org/patch/1091720/
> 
> Any inputs?
> Jagan.
> 
> Jagan Teki (3):
>   arm64: rockchip: dts: rk3399: Add board -u-boot.dtsi files
>   arm64: rockchip: dts: Add initial rk3399-u-boot.dtsi file
>   arm64: rockchip: dts: rk3399: Use rk3399-u-boot.dtsi
> 
>  arch/arm/dts/rk3399-evb-u-boot.dtsi     |  7 +++++++
>  arch/arm/dts/rk3399-evb.dts             |  2 --
>  arch/arm/dts/rk3399-ficus-u-boot.dtsi   |  6 ++++++
>  arch/arm/dts/rk3399-ficus.dts           |  1 -
>  arch/arm/dts/rk3399-firefly-u-boot.dtsi |  7 +++++++
>  arch/arm/dts/rk3399-firefly.dts         |  2 --
>  arch/arm/dts/rk3399-gru-bob-u-boot.dtsi |  7 +++++++
>  arch/arm/dts/rk3399-gru-bob.dts         |  1 -
>  arch/arm/dts/rk3399-gru-u-boot.dtsi     |  6 ++++++
>  arch/arm/dts/rk3399-gru.dtsi            |  1 -
>  arch/arm/dts/rk3399-puma-ddr1600.dts    |  1 +
>  arch/arm/dts/rk3399-puma.dtsi           |  3 ---
>  arch/arm/dts/rk3399-rock960-u-boot.dtsi |  6 ++++++
>  arch/arm/dts/rk3399-rock960.dts         |  1 -
>  arch/arm/dts/rk3399-u-boot.dtsi         | 12 ++++++++++++
>  15 files changed, 52 insertions(+), 11 deletions(-)
>  create mode 100644 arch/arm/dts/rk3399-evb-u-boot.dtsi
>  create mode 100644 arch/arm/dts/rk3399-ficus-u-boot.dtsi
>  create mode 100644 arch/arm/dts/rk3399-firefly-u-boot.dtsi
>  create mode 100644 arch/arm/dts/rk3399-gru-bob-u-boot.dtsi
>  create mode 100644 arch/arm/dts/rk3399-gru-u-boot.dtsi
>  create mode 100644 arch/arm/dts/rk3399-rock960-u-boot.dtsi
>  create mode 100644 arch/arm/dts/rk3399-u-boot.dtsi
> 
-- 
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
