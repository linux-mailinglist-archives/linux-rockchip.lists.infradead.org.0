Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9209A1AEB81
	for <lists+linux-rockchip@lfdr.de>; Sat, 18 Apr 2020 11:50:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jDYm9kFP2HyxnCcPViEsCqH6ad/4YNJjsPVWeyImvqU=; b=ZQ0Sfr8xxamuRg
	MbZyhHg34jHGrJV3oczyvqFyyx+xZxGHYxvN7K+07hU50AsogXEMyO0b+YQO+SATzc6KTtdKYcjZn
	7cwHZa1hlbSyGzokWe/Fo2wwieRIzyEc8RKOR7hcOWLyfeMBto72MkzasWZjUS+XeBaVKXrw0vZ9A
	/5TJgmO3PLr2ENlieAJwTALvvaIgGB5cVipLK4eCn7//1TXJAi+cyIg8Z3xJsCQHc7aIiSu5FExAo
	whuUQzhDNn2rN9EWx2MFXO2JswUHCfreHVr4KVGi3udtMYL2st250iRmP1F2NLwPgFbsJ7idxqdxw
	PQIumKDsPlmC3JCSJnTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPk76-0000vr-Ul; Sat, 18 Apr 2020 09:50:16 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPk6g-0000lp-0M; Sat, 18 Apr 2020 09:49:51 +0000
Received: from p57b77241.dip0.t-ipconnect.de ([87.183.114.65]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jPk6X-0000lO-Su; Sat, 18 Apr 2020 11:49:41 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v4 2/3] ARM: dts: rockchip: add rga node for rk322x
Date: Sat, 18 Apr 2020 11:49:41 +0200
Message-ID: <3593382.iQIKm1rSL1@phil>
In-Reply-To: <bf3a2b97-4a24-e9f0-599b-4731cc94a067@gmail.com>
References: <be4f2c802a64562cbab629abc82dd7d228a1a747.1580768038.git.justin.swartz@risingedge.co.za>
 <bf3a2b97-4a24-e9f0-599b-4731cc94a067@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_024950_048947_2FBB2A8F 
X-CRM114-Status: GOOD (  16.15  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 justin.swartz@risingedge.co.za, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Samstag, 18. April 2020, 11:15:27 CEST schrieb Johan Jonker:
> Hi Justin, Heiko,
> 
> In the discussion about "rockchip,px30-rga" it was mentioned that:
> "no status for soc internal components without any board-specifics".
> The binding is in mainline, but the dts node is missing I think.
> Should this also be changed?

yep, drop the status disabled from the dtsi and that then results
in not needing the board-level enablement

(background: rga is a simple mem2mem device without any
board-specific hooks)

> 
> Johan
> 
> +&rga {
> +	status = "okay";
> +};
> +
> 
> > Add a node to define the presence of RGA, a 2D raster
> > graphic acceleration unit.
> > 
> > Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>
> > ---
> >  arch/arm/boot/dts/rk322x.dtsi | 11 +++++++++++
> >  1 file changed, 11 insertions(+)
> > 
> > diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
> > index 340ed6ccb..29d50bebc 100644
> > --- a/arch/arm/boot/dts/rk322x.dtsi
> > +++ b/arch/arm/boot/dts/rk322x.dtsi
> > @@ -621,6 +621,17 @@
> >  		status = "disabled";
> >  	};
> >  
> > +	rga: rga@20060000 {
> > +		compatible = "rockchip,rk3228-rga", "rockchip,rk3288-rga";
> > +		reg = <0x20060000 0x1000>;
> > +		interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
> > +		clocks = <&cru ACLK_RGA>, <&cru HCLK_RGA>, <&cru SCLK_RGA>;
> > +		clock-names = "aclk", "hclk", "sclk";
> > +		resets = <&cru SRST_RGA>, <&cru SRST_RGA_A>, <&cru SRST_RGA_H>;
> > +		reset-names = "core", "axi", "ahb";
> 
> > +		status = "disabled";
> 
> remove?
> 
> > +	};
> > +
> >  	iep_mmu: iommu@20070800 {
> >  		compatible = "rockchip,iommu";
> >  		reg = <0x20070800 0x100>;
> 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
