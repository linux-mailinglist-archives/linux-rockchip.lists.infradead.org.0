Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57AEC1AC5E0
	for <lists+linux-rockchip@lfdr.de>; Thu, 16 Apr 2020 16:30:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PslZq4sxSrMC+rC/6JkEriucmj0+T0h5ksuiyRJwGlU=; b=GSV3TX/SzdIGXx
	/D4h/8QZ6bQ+fxvjFhOmEhWHbSD86Wz72LUpvwWHstFga0wCL6ZIVBIFRrQZWDae5sh4uZOtLRMVf
	pNhIclmQa5Y6UND7HclbbjaWGHlgYLK8KGBwTsfZczCDJb7XT93MJvfZOqadwkHK4Nym51XL4YysN
	FisKufGYL8Ho66Z+dZxGB0zgzjbERlNO7SaFzY9PqzYte+UT0zL+3TeGtE5H5VKNeGl2NOJKld4T+
	zdv59ed85716aUb1TJ+ZQkdLEKJ9Oh9YW6auJAmDd1cqiiDOmUbKpDJp1URXYcklWBLcqHK0zMrTM
	+60Z02Q24KnKdJa+wq6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP5XP-0004u7-PH; Thu, 16 Apr 2020 14:30:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP5X0-0004Tg-EW; Thu, 16 Apr 2020 14:30:20 +0000
Received: from p508fd440.dip0.t-ipconnect.de ([80.143.212.64]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jP5Ws-0006nR-Ft; Thu, 16 Apr 2020 16:30:10 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH 2/4] arm64: dts: rockchip: Add RGA support to the PX30
Date: Thu, 16 Apr 2020 16:30:09 +0200
Message-ID: <5650280.YqRd2a6hF0@phil>
In-Reply-To: <20200416135519.GJ125838@aptenodytes>
References: <20200416115047.233720-1-paul.kocialkowski@bootlin.com>
 <f4ad8ea4-7904-1458-e564-2d20c87ed417@gmail.com>
 <20200416135519.GJ125838@aptenodytes>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_073018_513621_6C1A5C36 
X-CRM114-Status: GOOD (  27.22  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Hans Verkuil <hansverk@cisco.com>, linux-rockchip@lists.infradead.org,
 Jacob Chen <jacob-chen@iotwrt.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Johan Jonker <jbx6244@gmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Donnerstag, 16. April 2020, 15:55:19 CEST schrieb Paul Kocialkowski:
> Hi,
> 
> On Thu 16 Apr 20, 15:44, Johan Jonker wrote:
> > On 4/16/20 3:24 PM, Paul Kocialkowski wrote:
> > > Hi,
> > > 
> > > On Thu 16 Apr 20, 15:02, Johan Jonker wrote:
> > >> Hi Paul,
> > >>
> > >> The conversion of rockchip-rga.txt to rockchip-rga.yaml by myself just
> > >> has been approved by robh.
> > > 
> > > Huh, I looked around for ongoing related work but missed it.
> > > I'll definitely rebase on top of your series and use the yaml description
> > > instead. Thanks!
> > > 
> > >> Maybe place dts patches at the end of a patch serie.
> > >> Could you include a &rga patch if your device is supported in mainline,
> > >> so we can test with:
> > >> make ARCH=arm64 dtbs_check
> > >> DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-rga.yaml
> > > 
> > > I tested with the PX30 EVB so I can surely add a node there if that turns
> > > out necessary (see below).
> > > 
> > >> Johan
> > >>
> > >> On 4/16/20 1:50 PM, Paul Kocialkowski wrote:
> > >>> The PX30 features a RGA block: add the necessary node to support it.
> > >>>
> > >>> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > >>> ---
> > >>>  arch/arm64/boot/dts/rockchip/px30.dtsi | 11 +++++++++++
> > >>>  1 file changed, 11 insertions(+)
> > >>>
> > >>> diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
> > >>> index 75908c587511..4bfbee9d4123 100644
> > >>> --- a/arch/arm64/boot/dts/rockchip/px30.dtsi
> > >>> +++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
> > >>> @@ -1104,6 +1104,17 @@ vopl_mmu: iommu@ff470f00 {
> > >>>  		status = "disabled";
> > >>>  	};
> > >>>  
> > >>> +	rga: rga@ff480000 {
> > >>> +		compatible = "rockchip,px30-rga";
> > >>> +		reg = <0x0 0xff480000 0x0 0x10000>;
> > >>> +		interrupts = <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH 0>;
> > >>> +		clocks = <&cru ACLK_RGA>, <&cru HCLK_RGA>, <&cru SCLK_RGA_CORE>;
> > >>> +		clock-names = "aclk", "hclk", "sclk";
> > >>> +		resets = <&cru SRST_RGA>, <&cru SRST_RGA_A>, <&cru SRST_RGA_H>;
> > >>> +		reset-names = "core", "axi", "ahb";
> > >>> +		power-domains = <&power PX30_PD_VO>;
> > >>
> > >> 		status = "disabled";
> > > 
> > > As of 5.6, the rk3399 has the node enabled by default. Did that change?
> > 
> > 'status' disappeared during review for rk3399 between v2 and v3, but
> > doesn't mention the reason. If someone can give more info here?
> > 
> > https://lore.kernel.org/lkml/1500101920-24039-5-git-send-email-jacob-chen@iotwrt.com/
> > 
> > https://lore.kernel.org/lkml/1501470460-12014-5-git-send-email-jacob-chen@iotwrt.com/
> > 
> > > 
> > > Since it's a standalone block that has no I/O dependency, I don't really see
> > > the point of disabling it by default.
> > 
> > Vop, hdmi and other video devices are also disabled.
> > Follow the rest I think...
> 
> Well, these blocks do have related I/O ports so it makes sense not to enable
> them by default because of pinmux, or because there might be no connector
> populated/routed.
> 
> For a memory to memory internal block, I don't see any reason why.
> It's definitely not board-specific and having to add these nodes for every board
> that has them is kind of a pain and might be overlooked. This will easily result
> in the feature not being available for end users without having to change the
> dt.
> 
> Also, the vpu node is always enabled on rockchip (and sunxi) platforms.
> I think these are better examples to follow.

just to add my me too ... what Paul, Ezequiel and Robin said - so no status
for soc internal components without any board-specifics


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
