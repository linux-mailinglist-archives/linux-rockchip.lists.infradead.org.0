Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3688045922
	for <lists+linux-rockchip@lfdr.de>; Fri, 14 Jun 2019 11:47:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WajfsbWrypm2EM7emlW4USkUtIBpegiZTA1SIY1sd00=; b=clcHkXyY6utkdX
	vBZIYoo3SSu7FrJPLqMek0upWIdFu6idGwjVNHBob+wubOklfrnCKsb99oSREojci0m7Y4AaDjssQ
	YV1Gd7wmEZ2JHUOpJq+MuvvQjstfReXYBE4fqYpaEzHr6hMC1Xj825jzqB7FTkr52/CycIyWd+xQi
	UA05IJXX98KFynDkzR6ilS7o4YLtCzdgA/SLvdAjbRfcx5XpJxCRG9GBYW73qsw2iF6l8QeORYpcl
	JJnsCjUObAjDsjrGpa5ks+f+bACZIiL+d23OSG0YGdrWLmTgGv+DzQugLUS8QIHH9ij/xN8vXJ1J8
	bnlfTltRldB2cwQInVSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbinv-0005yS-30; Fri, 14 Jun 2019 09:47:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbinr-0005qk-RH
 for linux-rockchip@lists.infradead.org; Fri, 14 Jun 2019 09:47:25 +0000
Received: from we0305.dip.tu-dresden.de ([141.76.177.49] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hbinq-0004EW-1H; Fri, 14 Jun 2019 11:47:22 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Vicente Bergas <vicencb@gmail.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: Re: [PATCH] arm64: rockchip: dts: sapphire: Fix USB3 Type-C.
Date: Fri, 14 Jun 2019 11:47:21 +0200
Message-ID: <12195113.EL5Iorepzr@phil>
In-Reply-To: <20190522150717.1748-1-vicencb@gmail.com>
References: <574f2bae-0121-4cc7-ad9a-5ba32315d71b@gmail.com>
 <20190522150717.1748-1-vicencb@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_024724_040917_50C980BA 
X-CRM114-Status: GOOD (  18.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: William wu <wulf@rock-chips.com>, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Vicente,

Am Mittwoch, 22. Mai 2019, 17:07:17 CEST schrieb Vicente Bergas:
> Before this patch, the Type-C port on the Sapphire board is dead.
> 
> Applying only the power supply part of this patch, makes the port work
> for about 4 seconds at start-up. This is a sample trace with a memory
> stick plugged in:
> 1.- The memory stick LED lights on and kernel reports:
> [    4.782999] scsi 0:0:0:0: Direct-Access USB DISK PMAP PQ: 0 ANSI: 4
> [    5.904580] sd 0:0:0:0: [sdb] 3913344 512-byte logical blocks: (2.00 GB/1.87 GiB)
> [    5.906860] sd 0:0:0:0: [sdb] Write Protect is off
> [    5.908973] sd 0:0:0:0: [sdb] Mode Sense: 23 00 00 00
> [    5.909122] sd 0:0:0:0: [sdb] No Caching mode page found
> [    5.911214] sd 0:0:0:0: [sdb] Assuming drive cache: write through
> [    5.951585]  sdb: sdb1
> [    5.954816] sd 0:0:0:0: [sdb] Attached SCSI removable disk
> 2.- 4 seconds later the memory stick LED lights off and kernel reports:
> [    9.082822] phy phy-ff770000.syscon:usb2-phy@e450.2: charger = USB_DCP_CHARGER
> 3.- After a minute the kernel reports:
> [   71.666761] usb 5-1: USB disconnect, device number 2
> It has been checked that, although the LED is off, VBUS is present.
> 
> Applying the full patch makes it work.
> It has only been tested in host mode.
> 
> Signed-off-by: Vicente Bergas <vicencb@gmail.com>

having to set the regulator to always-on indicates more an issue
with the phy? Because in theory the phy-driver should just enable the
supplying regulator on power-on.

Like would it work to just add the regulator to the host-port of the
phy without enabling it all the time?

Thanks
Heiko

> ---
>  arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
> index 04623e52ac5d..72000a7b666f 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
> @@ -112,6 +112,7 @@
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&vcc5v0_typec0_en>;
>  		regulator-name = "vcc5v0_typec0";
> +		regulator-always-on;
>  		vin-supply = <&vcc_sys>;
>  	};
>  
> @@ -565,12 +566,11 @@
>  	status = "okay";
>  
>  	u2phy0_otg: otg-port {
> -		phy-supply = <&vcc5v0_typec0>;
>  		status = "okay";
>  	};
>  
>  	u2phy0_host: host-port {
> -		phy-supply = <&vcc5v0_host>;
> +		phy-supply = <&vcc5v0_typec0>;
>  		status = "okay";
>  	};
>  };
> @@ -620,7 +620,7 @@
>  
>  &usbdrd_dwc3_0 {
>  	status = "okay";
> -	dr_mode = "otg";
> +	dr_mode = "host";
>  };
>  
>  &usbdrd3_1 {
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
