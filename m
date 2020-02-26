Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 386221705F5
	for <lists+linux-rockchip@lfdr.de>; Wed, 26 Feb 2020 18:22:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E1g3d0cCZ0bNQfVGKy/QrArMRDXNt1UaDD72P2sG7AY=; b=rxYhh1hK/kQCyV
	h754Pglim1qOQUlZtydHIPz1Ly60T6En0cU2mzwzDTL7pXk64VzRMrduYq5JlPiAHVx2xG+F1E3OJ
	u+RdeayYu90aPK2t2nTsiA3JYlSvg5+5/H7f28wDkHhC+ANLIxxAiaxE7NHSo2xww5pqNrsqiH4qq
	rO/C2Mu8XMy64CT0dcAZYI4SniReRTmVOel7bT6yeG6qklwG2TDVLYT/HJQEhAip+Vd6FtNDzkoTu
	AQUz9713sirSIsYTjle0O64aigWrgS4jIU6iEPMFn/MpzYD93PKJbvd9LFysweXxe78qmKnkLs+AY
	6+OoAYWGp0CsYHb/3ttg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j70OE-0006OA-Rd; Wed, 26 Feb 2020 17:22:30 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j70OB-0006Mw-3Q
 for linux-rockchip@lists.infradead.org; Wed, 26 Feb 2020 17:22:28 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id CB83A295797
Message-ID: <8b63465c795bb0c8243eb377106138c83e0dfffe.camel@collabora.com>
Subject: Re: [PATCH v6 6/6] arm64: dts: rockchip: rk3399: Define the
 rockchip Video Decoder node
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>, Johan Jonker <jbx6244@gmail.com>
Date: Wed, 26 Feb 2020 14:22:11 -0300
In-Reply-To: <3584403.hvncmGE4DP@phil>
References: <20200220163016.21708-7-ezequiel@collabora.com>
 <817821e3-bc51-8037-b9b9-e429c5eeb280@gmail.com> <3584403.hvncmGE4DP@phil>
Organization: Collabora
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_092227_274427_305D72EB 
X-CRM114-Status: GOOD (  17.43  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 paul.kocialkowski@bootlin.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Heiko, Johan,

Thanks for pointing this out.

On Wed, 2020-02-26 at 14:21 +0100, Heiko Stuebner wrote:
> Am Mittwoch, 26. Februar 2020, 13:24:53 CET schrieb Johan Jonker:
> > Hi Boris,
> > 
> > Dtsi nodes are sort on address.
> > The vdec node is now inserted between:
> > 
> > vdec_mmu: iommu       @ff660480
> > vdec    : video-codec @ff660000
> > iep_mmu : iommu       @ff670800
> > 
> > This should be:
> > 
> > vpu_mmu : iommu       @ff650800
> > vdec    : video-codec @ff660000
> > vdec_mmu: iommu       @ff660480
> > 
> 
> Simple things like this I can (and do) fix when applying.
> 
> The interesting question would be, did patches 1-5 get applied yet?
> As I only remember seing Hans' mail from v5, but didn't get any
> applied mail for v6 so far.
> 

Hans sent a pull request to include rkvdec driver in v5.7:

https://lore.kernel.org/linux-media/d4cc12b2-3d24-95db-102b-e5091c067e76@xs4all.nl/T/#t

It doesn't include the devicetree changes though,
which I just noticed.

Would you be so kind to pick this patch and sort the node?

Thanks!
Ezequiel

> 
> Heiko
> 
> > > From: Boris Brezillon <boris.brezillon at collabora.com>
> > > 
> > > RK3399 has a Video decoder, define the node in the dtsi. We also add
> > > the missing power-domain in mmu node and enable the block.
> > > 
> > > Signed-off-by: Boris Brezillon <boris.brezillon at collabora.com>
> > > Signed-off-by: Ezequiel Garcia <ezequiel at collabora.com>
> > > ---
> > >  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 14 +++++++++++++-
> > >  1 file changed, 13 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> > > index 33cc21fcf4c1..a07f857df12f 100644
> > > --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> > > +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> > > @@ -1285,8 +1285,20 @@ vdec_mmu: iommu at ff660480 {
> > >  		interrupt-names = "vdec_mmu";
> > >  		clocks = <&cru ACLK_VDU>, <&cru HCLK_VDU>;
> > >  		clock-names = "aclk", "iface";
> > > +		power-domains = <&power RK3399_PD_VDU>;
> > >  		#iommu-cells = <0>;
> > > -		status = "disabled";
> > > +	};
> > > +
> > > +	vdec: video-codec at ff660000 {
> > > +		compatible = "rockchip,rk3399-vdec";
> > > +		reg = <0x0 0xff660000 0x0 0x400>;
> > > +		interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH 0>;
> > > +		interrupt-names = "vdpu";
> > > +		clocks = <&cru ACLK_VDU>, <&cru HCLK_VDU>,
> > > +			 <&cru SCLK_VDU_CA>, <&cru SCLK_VDU_CORE>;
> > > +		clock-names = "axi", "ahb", "cabac", "core";
> > > +		power-domains = <&power RK3399_PD_VDU>;
> > > +		iommus = <&vdec_mmu>;
> > >  	};
> > >  
> > >  	iep_mmu: iommu at ff670800 {
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
