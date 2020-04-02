Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD9FF19C2FE
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 15:48:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:Subject:References:To:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XeW55BzCzoHIldNT4gnsQN6Kol3M5De+lFZjV6AkFNE=; b=SazIh8Jxo8YLZD
	XI8RsvyexQNqxdUng/HwYx4B8QQu5v+36HBuj6dytRak0OuVzHXNhzvwc+58+ASFlp/BAcQ+kJt6/
	NcZ9O3jehMW8jIDEoPHnkyxZIoH0LBt3Xyn3Rx+24AQr084vIwq/7B+3ElsqjBiqgLoNJJMnIM3Ze
	Vm4QBmdRkwBG+WQdYszOPBZoWusx20Q82r6ViI2z4SkMcAnUA75UndOG+Yr+XjRoiPEREKnk2UhMa
	p1olTjj9gOC6eI+sNdHJfWQsZ5mEwVcO3idquXM3oVwGmRhiU0aFHl9H9gl2QpypxfLDPmQrg/8zN
	gh7B6veXwDxDmyRFqEVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK0Ca-0003gq-9S; Thu, 02 Apr 2020 13:48:12 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK0CX-0003gB-QS
 for linux-rockchip@lists.infradead.org; Thu, 02 Apr 2020 13:48:11 +0000
Received: by mail-wm1-x341.google.com with SMTP id r16so3448535wmg.5
 for <linux-rockchip@lists.infradead.org>; Thu, 02 Apr 2020 06:48:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:references:subject:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=JdEZdR8yjtlVoMZNQrbxmUtK0B2+Djm4LLppLoO//ag=;
 b=UTJlCycdxWzo8SkwC++itw0GwatKMfwLvoM8hEz5hz0itKOrDAtfARRjd08KAo/YlH
 iYT7miwWVvjXGIMOVY3OjO3n0Mn8Ksa9rY5az4HK5BUJ68HWuftxPfKhAEhGYA4Yn2Dx
 La5wev2ZBzXN90dpwna9UbVHyMHP4wB2LvKgVYRbqg7U00y7LfYpOp1n+6KQfV2sld/l
 yav91x+sISP54xu2tPy0MbVaptxe9HBydeIqtNP10Zc2zcyTUnXn/ANeO5KMYsdqlk66
 bfclrPNbmCjER1axdhz0RvwvbhQm2h+TcIw1ChSyayEzTqXtXCokTwUd8+MfFtI9EATW
 Qkyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:references:subject:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=JdEZdR8yjtlVoMZNQrbxmUtK0B2+Djm4LLppLoO//ag=;
 b=GnOwANYTGsF9SdH7ver3uPhxpvDljxSEUf0BUiVWiil92Raf4dzIcFXwEcIAZlXilx
 DrLo2AjLuWOABkykCnzPdY3ShZUD1vN7orqGzIbuZa3rsVKhZY6hpCMWUFf0+FNg+LNW
 onpd/LQWsp+peHQfR6jZ0FwErQXcV3/XUFDIfa9T7i+5ikfIRcTlA3+3CvSVdAfWiDlL
 1Z2YxXeri5wwUHnu+KbM11nwWWlKnTAWGKtKsITph0fBw54CeeE4aB21FUvr4HHrCFxc
 CjjfxfqqISNoYMvFQfb35MbXDulkvd58gTlupr30bUOA51EmvoRj7O/qrsn/0luKl3R4
 4Eyg==
X-Gm-Message-State: AGi0PubV3vGnGBEady/GieTCx6gR/BsEbo+gzABD3IwN7LoAuYg1LCeG
 bpRcElOG3pID0Iyru2Zgn7I=
X-Google-Smtp-Source: APiQypKpdlsAkbdIzYdLmLeSVwA00to9hBXvBdZjAZl5uSzVZ+jldunwGUNL5wE1hbN9a3RTQzrH8g==
X-Received: by 2002:a7b:c185:: with SMTP id y5mr3723403wmi.90.1585835285227;
 Thu, 02 Apr 2020 06:48:05 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id u13sm7008313wmm.32.2020.04.02.06.48.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 02 Apr 2020 06:48:04 -0700 (PDT)
To: helen.koike@collabora.com
References: <20200402000234.226466-4-helen.koike@collabora.com>
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: add rx0 mipi-phy for rk3399
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <970b9e48-e38f-7e7a-3472-7dc5a4737e58@gmail.com>
Date: Thu, 2 Apr 2020 15:48:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200402000234.226466-4-helen.koike@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_064809_850299_91DDBC4C 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 dafna.hirschfeld@collabora.com, heiko@sntech.de, karthik.poduval@gmail.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, hverkuil-cisco@xs4all.nl, mark.rutland@arm.com,
 kernel@collabora.com, ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Helen,

> From: Helen Koike <helen.koike@collabora.com>

> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index 33cc21fcf4c10..fc0295d2a65a1 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -1394,6 +1394,17 @@ io_domains: io-domains {
>  			status = "disabled";
>  		};
>  

> +		mipi_dphy_rx0: mipi-dphy-rx0 {

For Heiko sort syscon@ff770000 subnodes alphabetical or reg value first?

> +			compatible = "rockchip,rk3399-mipi-dphy-rx0";
> +			clocks = <&cru SCLK_MIPIDPHY_REF>,

> +				<&cru SCLK_DPHY_RX0_CFG>,
> +				<&cru PCLK_VIO_GRF>;

Align                            ^

> +			clock-names = "dphy-ref", "dphy-cfg", "grf";
> +			power-domains = <&power RK3399_PD_VIO>;
> +			#phy-cells = <0>;
> +			status = "disabled";
> +		};
> +
>  		u2phy0: usb2-phy@e450 {
>  			compatible = "rockchip,rk3399-usb2phy";
>  			reg = <0xe450 0x10>;
> -- 
> 2.26.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
