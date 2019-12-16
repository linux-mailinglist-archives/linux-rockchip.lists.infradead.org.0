Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 155F212135D
	for <lists+linux-rockchip@lfdr.de>; Mon, 16 Dec 2019 19:02:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qW3yrE0IJIk2FAw1DcMoM7PjedZP2/aWvNNaHIwfPKc=; b=kPjwOHVwgQ+YeT
	HW9dXLDj7ZfDf3Gu8GbatITdo7WNmqMDTFD2rBrjUdedaDVokYWHNAn9birq9DJTbwvMeVMCAMBnm
	31I3F3GgJvoG8R9eP1zSbr44iEFADZl5/8tvr2gVZJMR80mP6YlP+Ss/1Ro8UxCTov7RIkdsCk1iE
	RFxd5yrGgxE0IY73lHHgtRKOWMJ0Uq1VwgnPZ6f3XMxzGFaRsA0wLzq0kHeuH4Usx+xPKJZ/cgUZ4
	BpBan91JybTspfMrrsZCY9osAQzXkwgSZpdlV9noJ+M82nP3XOBnnX/LJUIdU0lXcP0VXpQQbvHr3
	lTSgprFNKCLnOXtaGwRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iguh4-0003w5-KJ; Mon, 16 Dec 2019 18:02:06 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igugt-0003mD-Rl; Mon, 16 Dec 2019 18:01:57 +0000
Received: from ip5f5a5f74.dynamic.kabel-deutschland.de ([95.90.95.116]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1igugj-0001nY-Bk; Mon, 16 Dec 2019 19:01:45 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH RESEND 1/2] dt-bindings: phy: drop #clock-cells from
 rockchip, px30-dsi-dphy
Date: Mon, 16 Dec 2019 19:01:44 +0100
Message-ID: <12525836.FhlgEYrHGb@diego>
In-Reply-To: <20191216175615.GA23392@bogus>
References: <20191216122448.27867-1-heiko@sntech.de>
 <20191216175615.GA23392@bogus>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_100156_048905_8EB52972 
X-CRM114-Status: GOOD (  15.67  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 linux-kernel@vger.kernel.org, kishon@ti.com,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Rob,

Am Montag, 16. Dezember 2019, 18:56:15 CET schrieb Rob Herring:
> On Mon, 16 Dec 2019 13:24:47 +0100, Heiko Stuebner wrote:
> > From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> > 
> > Further review of the dsi components for the px30 revealed that the
> > phy shouldn't expose the pll as clock but instead handle settings
> > via phy parameters.
> > 
> > As the phy binding is new and not used anywhere yet, just drop them
> > so they don't get used.
> > 
> > Fixes: 3817c7961179 ("dt-bindings: phy: add yaml binding for rockchip,px30-dsi-dphy")
> > Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> > ---
> > Hi Kishon,
> > 
> > maybe suitable as a fix for 5.5-rc?
> > 
> > Thanks
> > Heiko
> > 
> >  .../devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml      | 5 -----
> >  1 file changed, 5 deletions(-)
> > 
> 
> Please add Acked-by/Reviewed-by tags when posting new versions. However,
> there's no need to repost patches *only* to add the tags. The upstream
> maintainer will do that for acks received on the version they apply.
> 
> If a tag was not added on purpose, please state why and what changed.

sorry about that. The original response somehow did not thread correctly
in my mail client, probably some fault on my side, so I've only found your
mail just now by digging hard.

@Kishon, the original mail already got an

Acked-by: Rob Herring <robh@kernel.org>





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
