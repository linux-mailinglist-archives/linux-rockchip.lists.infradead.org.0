Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18B5217009B
	for <lists+linux-rockchip@lfdr.de>; Wed, 26 Feb 2020 14:59:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pRUhnzaNcr6fNEn8GurrjsCZIVUiyd4MiaUq3q4D+fQ=; b=RNtFHOeC7GbbMJ
	lGhs+2IKUhTRQW/L6UDon28oPSSCRDyQ/EnBdT5u4LyEU49ZrJB4MOjbJcz9jWYYkMqSoyJS7yHbA
	Nu77+Kp/X3pgrIc2GqtMa9zA2UWK6l3uRNnoi6eg2Vmq5izEgk1lNrmamlEmBsSN6itZB9kfeKmM7
	lWYytT4bniGDcrYOAwGdCIJc3/qAQtrglOQCUPhrHeFDN951aogV0gzoh2DLTgOJFo4frknZfla6G
	zpjD4VYhlo2Bq3x44pL5NOlZt+hofNFp/vUMNaKnHqKwfBClX6VW8cyEaxyehYRWtTGciG+rKc16P
	7Lzp6dwhCCH+Av9ji+Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6xDF-0007Ib-F5; Wed, 26 Feb 2020 13:58:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6xD8-0007HU-Rr
 for linux-rockchip@lists.infradead.org; Wed, 26 Feb 2020 13:58:54 +0000
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1j6xCz-0003gM-FU; Wed, 26 Feb 2020 14:58:41 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v6 6/6] arm64: dts: rockchip: rk3399: Define the rockchip
 Video Decoder node
Date: Wed, 26 Feb 2020 14:21:55 +0100
Message-ID: <3584403.hvncmGE4DP@phil>
In-Reply-To: <817821e3-bc51-8037-b9b9-e429c5eeb280@gmail.com>
References: <20200220163016.21708-7-ezequiel@collabora.com>
 <817821e3-bc51-8037-b9b9-e429c5eeb280@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_055851_055643_D77970D9 
X-CRM114-Status: GOOD (  18.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, tfiga@chromium.org, jonas@kwiboo.se,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, nicolas@ndufresne.ca,
 hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 boris.brezillon@collabora.com, sakari.ailus@iki.fi,
 laurent.pinchart@ideasonboard.com, kernel@collabora.com,
 ezequiel@collabora.com, paul.kocialkowski@bootlin.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Mittwoch, 26. Februar 2020, 13:24:53 CET schrieb Johan Jonker:
> Hi Boris,
> 
> Dtsi nodes are sort on address.
> The vdec node is now inserted between:
> 
> vdec_mmu: iommu       @ff660480
> vdec    : video-codec @ff660000
> iep_mmu : iommu       @ff670800
> 
> This should be:
> 
> vpu_mmu : iommu       @ff650800
> vdec    : video-codec @ff660000
> vdec_mmu: iommu       @ff660480
> 

Simple things like this I can (and do) fix when applying.

The interesting question would be, did patches 1-5 get applied yet?
As I only remember seing Hans' mail from v5, but didn't get any
applied mail for v6 so far.


Heiko

> > From: Boris Brezillon <boris.brezillon at collabora.com>
> > 
> > RK3399 has a Video decoder, define the node in the dtsi. We also add
> > the missing power-domain in mmu node and enable the block.
> > 
> > Signed-off-by: Boris Brezillon <boris.brezillon at collabora.com>
> > Signed-off-by: Ezequiel Garcia <ezequiel at collabora.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 14 +++++++++++++-
> >  1 file changed, 13 insertions(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> > index 33cc21fcf4c1..a07f857df12f 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> > @@ -1285,8 +1285,20 @@ vdec_mmu: iommu at ff660480 {
> >  		interrupt-names = "vdec_mmu";
> >  		clocks = <&cru ACLK_VDU>, <&cru HCLK_VDU>;
> >  		clock-names = "aclk", "iface";
> > +		power-domains = <&power RK3399_PD_VDU>;
> >  		#iommu-cells = <0>;
> > -		status = "disabled";
> > +	};
> > +
> > +	vdec: video-codec at ff660000 {
> > +		compatible = "rockchip,rk3399-vdec";
> > +		reg = <0x0 0xff660000 0x0 0x400>;
> > +		interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH 0>;
> > +		interrupt-names = "vdpu";
> > +		clocks = <&cru ACLK_VDU>, <&cru HCLK_VDU>,
> > +			 <&cru SCLK_VDU_CA>, <&cru SCLK_VDU_CORE>;
> > +		clock-names = "axi", "ahb", "cabac", "core";
> > +		power-domains = <&power RK3399_PD_VDU>;
> > +		iommus = <&vdec_mmu>;
> >  	};
> >  
> >  	iep_mmu: iommu at ff670800 {
> 
> 
> 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
