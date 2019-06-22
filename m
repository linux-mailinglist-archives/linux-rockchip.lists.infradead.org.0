Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D244F609
	for <lists+linux-rockchip@lfdr.de>; Sat, 22 Jun 2019 15:48:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TkdNJQ+uPinB4pHhbE6cSCk/p+JlTIcgFWxYGTsnNr8=; b=U5AxGbSQ7UvBkD
	e/mhz46oYuJEmeAbYSsB5a378v9+CqVn4/mt0toEf8ReAnMryRAwtYqPImdMPYijnRVqqOM9SgJRY
	KZ/ioU3F6vFOIxrha+8zV1jkdzjJ22p1i8fz/f82qAEyBYrBkLshYyyxIkpwp5V/9GstB6AmqzjCK
	+NARuce4g2rDefykvy1x31iuM85hJhlu9JWBN9ju5zzKjwgv+5dNIbg18gOcm9uf4XV3ZmtMYIFQI
	gTFhXSkU0iCnhMPnngzZ3ymsb0UWXgl6HfpNCTLfmEYKdTrUaf2LQsvzhGQ01M+zX9Ygm9kTXEGK5
	CKp4o/JUQ+IgwTySFG2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hegNs-0006IW-Hg; Sat, 22 Jun 2019 13:48:48 +0000
Received: from regular1.263xmail.com ([211.150.70.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hegNp-0006Ho-3n
 for linux-rockchip@lists.infradead.org; Sat, 22 Jun 2019 13:48:46 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.76])
 by regular1.263xmail.com (Postfix) with ESMTP id DA7075E2;
 Sat, 22 Jun 2019 21:48:40 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [192.168.1.3] (unknown [110.125.168.244])
 by smtp.263.net (postfix) whith ESMTP id
 P25849T140647078147840S1561211319515759_; 
 Sat, 22 Jun 2019 21:48:40 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <5ec143b90ab2d896a7fc2027fbd93be1>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 110.125.168.244
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v2 4/8] rockchip: rk3399: Move u-boot, dm-pre-reloc of
 uart0, uart2
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, u-boot@lists.denx.de
References: <20190620185506.11449-1-jagan@amarulasolutions.com>
 <20190620185506.11449-5-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <48840179-1609-2580-24e7-1ebe14b05884@rock-chips.com>
Date: Sat, 22 Jun 2019 21:48:39 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20190620185506.11449-5-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_064845_307230_9E2A6B35 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.197 listed in list.dnswl.org]
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
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Jagan,


On 06/21/2019 02:55 AM, Jagan Teki wrote:
> u-boot,dm-pre-reloc for uart0, uart2 indeed u-boot specific
> properties. Move them into rk3399-u-boot.dtsi so the boards
> which enabled these node will available during SPL.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>  arch/arm/dts/rk3399-gru.dtsi    | 1 -
>  arch/arm/dts/rk3399-puma.dtsi   | 1 -
>  arch/arm/dts/rk3399-u-boot.dtsi | 8 ++++++++
>  3 files changed, 8 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm/dts/rk3399-gru.dtsi b/arch/arm/dts/rk3399-gru.dtsi
> index ca0fc391b2..0e2e047180 100644
> --- a/arch/arm/dts/rk3399-gru.dtsi
> +++ b/arch/arm/dts/rk3399-gru.dtsi
> @@ -629,7 +629,6 @@ ap_i2c_audio: &i2c8 {
>  
>  &uart2 {
>  	status = "okay";
> -	u-boot,dm-pre-reloc;
>  };
>  
>  &usb_host0_ohci {
> diff --git a/arch/arm/dts/rk3399-puma.dtsi b/arch/arm/dts/rk3399-puma.dtsi
> index 897e0bda85..74368da550 100644
> --- a/arch/arm/dts/rk3399-puma.dtsi
> +++ b/arch/arm/dts/rk3399-puma.dtsi
> @@ -639,7 +639,6 @@
>  };
>  
>  &uart0 {
> -	u-boot,dm-pre-reloc;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&uart0_xfer &uart0_cts>;
>  	status = "okay";
> diff --git a/arch/arm/dts/rk3399-u-boot.dtsi b/arch/arm/dts/rk3399-u-boot.dtsi
> index 0786c1193a..fcfce9ae02 100644
> --- a/arch/arm/dts/rk3399-u-boot.dtsi
> +++ b/arch/arm/dts/rk3399-u-boot.dtsi
> @@ -10,3 +10,11 @@
>  &spi1 {
>  	u-boot,dm-pre-reloc;
>  };
> +
> +&uart0 {
> +	u-boot,dm-pre-reloc;
> +};
> +
> +&uart2 {
> +	u-boot,dm-pre-reloc;
> +};




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
