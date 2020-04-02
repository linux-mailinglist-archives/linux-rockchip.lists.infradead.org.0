Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E10E819C433
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 16:31:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QMb0jtpTZehcef14G/agHMCwwKlbu7v+kYGI/ngC1/w=; b=DLiy/RuCqgrG0u
	ieRjuN3DMdcXB23N+yY1HxpwB74f8q7mtMl7Y39uhyT+TJZ/V0UrSEgcpIK9Ix8UUBVUitdDJ8glt
	MioabV7mgYWVr4mz30l5DNRXFoiOvnlxuz7cbfQdobcgxKhA/RbRsnFML7OfTk1svaoO0iohsqaeG
	ut0GSFGPAm/sTc4E1zA98Ffa0wlvggoVaz9gopkWQQudvEixL1rnfghi6uoWKe95bxUOdoU40WLCj
	6dAvGSZQ5E9MdOD1/7LNDWLY/TWEhiGZFNv/2SmI0u37jEch0/i+skEVg3eFwmQv897nq6YYmWTVO
	BSSdgs0uu7p0rOI4q7sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK0sM-0000Db-RC; Thu, 02 Apr 2020 14:31:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK0sJ-0000Ck-Oz
 for linux-rockchip@lists.infradead.org; Thu, 02 Apr 2020 14:31:21 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jK0sC-00087G-L4; Thu, 02 Apr 2020 16:31:12 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: add rx0 mipi-phy for rk3399
Date: Thu, 02 Apr 2020 16:31:11 +0200
Message-ID: <105956984.FXDh2DO4ZE@diego>
In-Reply-To: <970b9e48-e38f-7e7a-3472-7dc5a4737e58@gmail.com>
References: <20200402000234.226466-4-helen.koike@collabora.com>
 <970b9e48-e38f-7e7a-3472-7dc5a4737e58@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_073119_959075_7A089C92 
X-CRM114-Status: GOOD (  10.04  )
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 dafna.hirschfeld@collabora.com, karthik.poduval@gmail.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, robh+dt@kernel.org, hverkuil-cisco@xs4all.nl,
 mark.rutland@arm.com, kernel@collabora.com, ezequiel@collabora.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Donnerstag, 2. April 2020, 15:48:02 CEST schrieb Johan Jonker:
> Hi Helen,
> 
> > From: Helen Koike <helen.koike@collabora.com>
> 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> > index 33cc21fcf4c10..fc0295d2a65a1 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> > @@ -1394,6 +1394,17 @@ io_domains: io-domains {
> >  			status = "disabled";
> >  		};
> >  
> 
> > +		mipi_dphy_rx0: mipi-dphy-rx0 {
> 
> For Heiko sort syscon@ff770000 subnodes alphabetical or reg value first?

Similar to main nodes ... so things without reg alphabetical,
the rest by reg address


> 
> > +			compatible = "rockchip,rk3399-mipi-dphy-rx0";
> > +			clocks = <&cru SCLK_MIPIDPHY_REF>,
> 
> > +				<&cru SCLK_DPHY_RX0_CFG>,
> > +				<&cru PCLK_VIO_GRF>;
> 
> Align                            ^
> 
> > +			clock-names = "dphy-ref", "dphy-cfg", "grf";
> > +			power-domains = <&power RK3399_PD_VIO>;
> > +			#phy-cells = <0>;
> > +			status = "disabled";
> > +		};
> > +
> >  		u2phy0: usb2-phy@e450 {
> >  			compatible = "rockchip,rk3399-usb2phy";
> >  			reg = <0xe450 0x10>;
> 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
