Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B9A12CFC0
	for <lists+linux-rockchip@lfdr.de>; Mon, 30 Dec 2019 12:51:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SaywvaGjxR4BmOK746fmyN4VhqqCoR3fBSamYq3dFKI=; b=Y4mad2xRD/N8jN
	z05tmZ5eT9mr9aRypG7Zch2NTjqFMjeuCVOPMIp5tsYGO6fteFVfVXv1OnFYGXRZ6q6R5Rz/hHiHW
	zIy2qqa//Muz7IFfOe7tt+bEaRSdCb6PylzDzHGFn5Ik7nB7P3YiN+HMh0/QzEwm0LOzqTwN1QePW
	Yr3WgtxI9g/uv9nkjUAoJn5OqP1UL5okG+nKixGDdE8INiVtUec/eHWM7lNwf9rZvva28SuFRRsbC
	fxBClvHeOAyO8T/p2axX7PjqcM8AmE4rzQkhQT4wMeZWgpeFh9IXEGVKC+YuWviOI6M+F3TlNgKaw
	MjPk3IDYGsTt0mWc5L/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iltaH-0002Vp-V1; Mon, 30 Dec 2019 11:51:41 +0000
Received: from mail.blih.net ([212.83.177.182])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iltaF-0002VJ-1c
 for linux-rockchip@lists.infradead.org; Mon, 30 Dec 2019 11:51:40 +0000
Received: from mail.blih.net (mail.blih.net [212.83.177.182])
 by mail.blih.net (OpenSMTPD) with ESMTP id 045c5596;
 Mon, 30 Dec 2019 12:51:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=bidouilliste.com; h=date
 :from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-type:content-transfer-encoding; s=mail;
 bh=vWqMAAPNxqWbIqMuo3XJ6EI3G90=; b=qIxsOJ+/WjFs+/jKsQScE8Kv4R4V
 LiPZ3UVPfhNu5WkhDDGtTpkPfWyPI5w/aRrwB6ViT3DT6Jqeojp/p3Xp87VXeqMU
 qIg/sJeCvoMi02DxK4Eb2nBZv/IvQmciUQM9bYchiJOVoZl2j9K7CHjdxmnKO1tl
 Efg4OcezlIkNzt4=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=bidouilliste.com; h=date
 :from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-type:content-transfer-encoding; q=dns; s=
 mail; b=bDqQB+j0JrCbo+M2Q4koZIG/q7Z7OCemhTqf2kWcWsov4EuV0Ck5YJz5
 eKv7bsfyByvASwenPkuwvpa4Z5f4wAuR6WG3Z8rpo24h72fobzipeW641He0FEzw
 wPEC/qSpwxYNPgxzcLW9tn0lsMFG+ANeKDPw6wMVdedIy/6ANUg=
Received: from sonic.home.blih.net (ip-9.net-89-3-105.rev.numericable.fr
 [89.3.105.9]) by mail.blih.net (OpenSMTPD) with ESMTPSA id 5da987f4
 TLS version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO;
 Mon, 30 Dec 2019 12:51:35 +0100 (CET)
Date: Mon, 30 Dec 2019 12:51:34 +0100
From: Emmanuel Vadot <manu@bidouilliste.com>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH 10/11] rockpro-rk3399: Enable SPI Flash
Message-Id: <20191230125134.189ba860e7fc99b4ad2f1def@bidouilliste.com>
In-Reply-To: <20191221075440.6944-11-jagan@amarulasolutions.com>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-11-jagan@amarulasolutions.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; amd64-portbld-freebsd13.0)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_035139_497390_073AAD48 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rockchip@lists.infradead.org, Simon Glass <sjg@chromium.org>,
 Kever Yang <kever.yang@rock-chips.com>, u-boot@lists.denx.de,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


 Hi Jagan,

On Sat, 21 Dec 2019 13:24:39 +0530
Jagan Teki <jagan@amarulasolutions.com> wrote:

> Enable winbond SPI flash for ROC-PC-RK3399 board.

 s/ROC-PC-RK3399/RockPro64/

> 
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>  arch/arm/dts/rk3399-rockpro64-u-boot.dtsi | 4 ++++
>  configs/rockpro64-rk3399_defconfig        | 2 ++
>  2 files changed, 6 insertions(+)
> 
> diff --git a/arch/arm/dts/rk3399-rockpro64-u-boot.dtsi b/arch/arm/dts/rk3399-rockpro64-u-boot.dtsi
> index 4648513ea9..deaa3efd39 100644
> --- a/arch/arm/dts/rk3399-rockpro64-u-boot.dtsi
> +++ b/arch/arm/dts/rk3399-rockpro64-u-boot.dtsi
> @@ -6,6 +6,10 @@
>  #include "rk3399-u-boot.dtsi"
>  #include "rk3399-sdram-lpddr4-100.dtsi"
>  / {
> +	aliases {
> +		spi0 = &spi1;

 That looks weird ... what's the point of this alias exactly ?

> +	};
> +
>  	chosen {
>  		u-boot,spl-boot-order = "same-as-spl", &sdmmc, &sdhci;
>  	};
> diff --git a/configs/rockpro64-rk3399_defconfig b/configs/rockpro64-rk3399_defconfig
> index 49e27c91cb..6a50ec7dbc 100644
> --- a/configs/rockpro64-rk3399_defconfig
> +++ b/configs/rockpro64-rk3399_defconfig
> @@ -46,6 +46,8 @@ CONFIG_RAM_RK3399_LPDDR4=y
>  CONFIG_BAUDRATE=1500000
>  CONFIG_DEBUG_UART_SHIFT=2
>  CONFIG_SYSRESET=y
> +CONFIG_SPI_FLASH_GIGADEVICE=y
> +CONFIG_ROCKCHIP_SPI=y
>  CONFIG_USB=y
>  CONFIG_USB_XHCI_HCD=y
>  CONFIG_USB_XHCI_DWC3=y
> -- 
> 2.18.0.321.gffc6fa0e3


-- 
Emmanuel Vadot <manu@bidouilliste.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
