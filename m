Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C70174A63
	for <lists+linux-rockchip@lfdr.de>; Sun,  1 Mar 2020 01:14:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ThS+rvE3flno2MLBDaz5UdOixFbZtx8uWTn4Q8E99eA=; b=Q/UPCRoYbWodgN
	KrQgk6hEeLCtlf94O+geYuP7G3SsO/9WpuoFVgm0QFrI8r3A4JYPcvYNUi/zC4vkS7kyPX03C5GYp
	c8Mw5UOTNxxDDhP77Lq0pUGXnmAt+mxg8XOfTW5qIE4Na7k/qtcpl5c3GUi/GQELs+Dmc9/+bXfLx
	7gcqk1UODOYx0Cr4FlivkIHcm1CRKKLDF7eOOAKPTVYqSKTtTubKmVA1M9h4Oedblt8ov50REBoYs
	rXp31BUHpvTcmoeCgnqLU808AjjvnqO5dtHawPIVJI/OmWbc08UEzv61btVmQOC2O9CRQ7d9Bb62q
	2ijJkCwL82sdo/Qb5nsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8CFZ-0008IR-1N; Sun, 01 Mar 2020 00:14:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8CFU-0008I6-Ui
 for linux-rockchip@lists.infradead.org; Sun, 01 Mar 2020 00:14:26 +0000
Received: from p508fcd9d.dip0.t-ipconnect.de ([80.143.205.157]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1j8CFP-0004wQ-83; Sun, 01 Mar 2020 01:14:19 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH v6 6/6] arm64: dts: rockchip: rk3399: Define the rockchip
 Video Decoder node
Date: Sun, 01 Mar 2020 01:14:18 +0100
Message-ID: <5203620.inz0EcJmRN@phil>
In-Reply-To: <8b63465c795bb0c8243eb377106138c83e0dfffe.camel@collabora.com>
References: <20200220163016.21708-7-ezequiel@collabora.com>
 <3584403.hvncmGE4DP@phil>
 <8b63465c795bb0c8243eb377106138c83e0dfffe.camel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_161425_139124_7EEC5651 
X-CRM114-Status: GOOD (  23.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, tfiga@chromium.org, jonas@kwiboo.se,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, nicolas@ndufresne.ca,
 hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 boris.brezillon@collabora.com, sakari.ailus@iki.fi,
 laurent.pinchart@ideasonboard.com, Johan Jonker <jbx6244@gmail.com>,
 kernel@collabora.com, paul.kocialkowski@bootlin.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Mittwoch, 26. Februar 2020, 18:22:11 CET schrieb Ezequiel Garcia:
> Hi Heiko, Johan,
> 
> Thanks for pointing this out.
> 
> On Wed, 2020-02-26 at 14:21 +0100, Heiko Stuebner wrote:
> > Am Mittwoch, 26. Februar 2020, 13:24:53 CET schrieb Johan Jonker:
> > > Hi Boris,
> > > 
> > > Dtsi nodes are sort on address.
> > > The vdec node is now inserted between:
> > > 
> > > vdec_mmu: iommu       @ff660480
> > > vdec    : video-codec @ff660000
> > > iep_mmu : iommu       @ff670800
> > > 
> > > This should be:
> > > 
> > > vpu_mmu : iommu       @ff650800
> > > vdec    : video-codec @ff660000
> > > vdec_mmu: iommu       @ff660480
> > > 
> > 
> > Simple things like this I can (and do) fix when applying.
> > 
> > The interesting question would be, did patches 1-5 get applied yet?
> > As I only remember seing Hans' mail from v5, but didn't get any
> > applied mail for v6 so far.
> > 
> 
> Hans sent a pull request to include rkvdec driver in v5.7:
> 
> https://lore.kernel.org/linux-media/d4cc12b2-3d24-95db-102b-e5091c067e76@xs4all.nl/T/#t
> 
> It doesn't include the devicetree changes though,
> which I just noticed.
> 
> Would you be so kind to pick this patch and sort the node?

so far that pull you linked hasn't gone through it seems

And I also cannot see the driver patches in [0] yet, so I'll give this
some more days before applying.

Heiko

[0] https://git.linuxtv.org/media_tree.git/log/

> > > > From: Boris Brezillon <boris.brezillon at collabora.com>
> > > > 
> > > > RK3399 has a Video decoder, define the node in the dtsi. We also add
> > > > the missing power-domain in mmu node and enable the block.
> > > > 
> > > > Signed-off-by: Boris Brezillon <boris.brezillon at collabora.com>
> > > > Signed-off-by: Ezequiel Garcia <ezequiel at collabora.com>
> > > > ---
> > > >  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 14 +++++++++++++-
> > > >  1 file changed, 13 insertions(+), 1 deletion(-)
> > > > 
> > > > diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> > > > index 33cc21fcf4c1..a07f857df12f 100644
> > > > --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> > > > +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> > > > @@ -1285,8 +1285,20 @@ vdec_mmu: iommu at ff660480 {
> > > >  		interrupt-names = "vdec_mmu";
> > > >  		clocks = <&cru ACLK_VDU>, <&cru HCLK_VDU>;
> > > >  		clock-names = "aclk", "iface";
> > > > +		power-domains = <&power RK3399_PD_VDU>;
> > > >  		#iommu-cells = <0>;
> > > > -		status = "disabled";
> > > > +	};
> > > > +
> > > > +	vdec: video-codec at ff660000 {
> > > > +		compatible = "rockchip,rk3399-vdec";
> > > > +		reg = <0x0 0xff660000 0x0 0x400>;
> > > > +		interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH 0>;
> > > > +		interrupt-names = "vdpu";
> > > > +		clocks = <&cru ACLK_VDU>, <&cru HCLK_VDU>,
> > > > +			 <&cru SCLK_VDU_CA>, <&cru SCLK_VDU_CORE>;
> > > > +		clock-names = "axi", "ahb", "cabac", "core";
> > > > +		power-domains = <&power RK3399_PD_VDU>;
> > > > +		iommus = <&vdec_mmu>;
> > > >  	};
> > > >  
> > > >  	iep_mmu: iommu at ff670800 {
> > > 
> > > 
> > > 
> > 
> > 
> > 
> 
> 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
