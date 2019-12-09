Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDDEA117B37
	for <lists+linux-rockchip@lfdr.de>; Tue, 10 Dec 2019 00:09:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XWIKiA5LuJoP0W4CevPynAUkYt5QkRk8SEvLTmBTS3c=; b=sx8qtZMhGnpJcP
	UdhbONdTr4OnsVRYtv00Fp3TxalbqQ3b18psMgRZPaUadfPnrxBsWJ5gBCyDip7+ytqliXrLYB6/z
	60TEzwWRDbyjfjfftC/okLW4w0WpQFAl4/6tnVwmk4m9RafeU8hgB9IBRcvR4Ese7D+wSO3l9o4K7
	WJOyTL4F9kfclSgOJxktqs76rrHxlkJ5qrrks6H7lCdnG6cNloAVwhGDY5cd2MQdGd8nmxX5Rkc6c
	XA2TOaOtYnZfM8FxGazUwKz0Pk4xFuyOG+TyoDnuadxUrAW2KgVgbFYFR12xNw5NFBiiQnUb2ycjX
	yCdZ5R3k03WvDRywHR5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieS9B-0003yC-00; Mon, 09 Dec 2019 23:08:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieS92-0003rQ-RQ; Mon, 09 Dec 2019 23:08:50 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1ieS8r-0003WX-Uy; Tue, 10 Dec 2019 00:08:37 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Soeren Moch <smoch@web.de>
Subject: Re: [PATCH 8/8] arm64: dts: rockchip: RockPro64: enable wifi module
 at sdio0
Date: Tue, 10 Dec 2019 00:08:37 +0100
Message-ID: <2668270.pdtvSLGib8@diego>
In-Reply-To: <20191209223822.27236-8-smoch@web.de>
References: <20191209223822.27236-1-smoch@web.de>
 <20191209223822.27236-8-smoch@web.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_150849_036684_E23CE22F 
X-CRM114-Status: GOOD (  19.15  )
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
Cc: brcm80211-dev-list.pdl@broadcom.com, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Kalle Valo <kvalo@codeaurora.org>,
 brcm80211-dev-list@cypress.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Soeren,

Am Montag, 9. Dezember 2019, 23:38:22 CET schrieb Soeren Moch:
> RockPro64 supports an Ampak AP6359SA based wifi/bt combo module.
> The BCM4359/9 wifi controller in this module is connected to sdio0,
> enable this interface.
> 
> Signed-off-by: Soeren Moch <smoch@web.de>
> ---
> Not sure where to place exactly the sdio0 node in the dts because
> existing sd nodes are not sorted alphabetically.
> 
> This last patch in this brcmfmac patch series probably should be picked
> up by Heiko independently of the rest of this series. It was sent together
> to show how this brcmfmac extension for 4359-sdio support with RSDB is
> used and tested.

node placement looks good so I can apply it, just a general questions
I only got patch 8/8 are patches 1-7 relevant for this one and what are they?

Thanks
Heiko


> 
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: Kalle Valo <kvalo@codeaurora.org>
> Cc: linux-wireless@vger.kernel.org
> Cc: brcm80211-dev-list.pdl@broadcom.com
> Cc: brcm80211-dev-list@cypress.com
> Cc: netdev@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-rockchip@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> ---
>  .../boot/dts/rockchip/rk3399-rockpro64.dts    | 21 ++++++++++++-------
>  1 file changed, 14 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> index 7f4b2eba31d4..9fa92790d6e0 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> @@ -71,13 +71,6 @@
>  		clock-names = "ext_clock";
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&wifi_enable_h>;
> -
> -		/*
> -		 * On the module itself this is one of these (depending
> -		 * on the actual card populated):
> -		 * - SDIO_RESET_L_WL_REG_ON
> -		 * - PDN (power down when low)
> -		 */
>  		reset-gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
>  	};
> 
> @@ -650,6 +643,20 @@
>  	status = "okay";
>  };
> 
> +&sdio0 {
> +	bus-width = <4>;
> +	cap-sd-highspeed;
> +	cap-sdio-irq;
> +	disable-wp;
> +	keep-power-in-suspend;
> +	mmc-pwrseq = <&sdio_pwrseq>;
> +	non-removable;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
> +	sd-uhs-sdr104;
> +	status = "okay";
> +};
> +
>  &sdmmc {
>  	bus-width = <4>;
>  	cap-sd-highspeed;
> --
> 2.17.1
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
