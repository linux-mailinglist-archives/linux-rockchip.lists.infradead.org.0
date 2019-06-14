Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40AC046827
	for <lists+linux-rockchip@lfdr.de>; Fri, 14 Jun 2019 21:33:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OY3tbSEYA0JyvuVkCL5pa7bsou6DntGPBl0kQmNAhuo=; b=lDmc7J0T6J9T8H
	jytd+DQ0eBmZ7Ry1oUuXFjK6igmi8+qElM0Ij3lA/IDtCtWIEp32U/l/6ka46AptuyVeansZfWZ3V
	e5sSFe5aVMcafwU9WO09C8crG6dWrAoGzdUXTKrpP+1x7wVdv88UtLxupQWldD7UAOqCOnSKkONhs
	VSFPWK1ZV4qUa7To1pmdCsUTeKC7v9XCHddyq0pXSq6CMUUbKR+zAasglhe4R106pLg6I7TBZIebN
	A5x6+/6uf0l98er8fD3zQ0pdKmFELlp1KZeEk8LQWmDOv/J3QwDdsc4O10r+LFQiyLlXC9UX2Z1Ii
	RXHrO2MzryC0mPsdM6mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbrwy-0000Fv-R6; Fri, 14 Jun 2019 19:33:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbrwv-0000FI-JI; Fri, 14 Jun 2019 19:33:22 +0000
Received: from we0305.dip.tu-dresden.de ([141.76.177.49] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hbrwn-00078h-3Q; Fri, 14 Jun 2019 21:33:13 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Justin Swartz <justin.swartz@risingedge.co.za>
Subject: Re: [PATCH 3/4] ARM: dts: rockchip: add display nodes for rk322x
Date: Fri, 14 Jun 2019 21:33:12 +0200
Message-ID: <13456600.FWPkgmLa5g@phil>
In-Reply-To: <19cea8f7c279ef6efb12d1ec0822767d@risingedge.co.za>
References: <20190614165454.13743-1-heiko@sntech.de>
 <20190614174526.6F805217D6@mail.kernel.org>
 <19cea8f7c279ef6efb12d1ec0822767d@risingedge.co.za>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_123321_784552_B274B665 
X-CRM114-Status: GOOD (  18.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Stephen Boyd <sboyd@kernel.org>, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Freitag, 14. Juni 2019, 20:32:35 CEST schrieb Justin Swartz:
> On 2019-06-14 19:45, Stephen Boyd wrote:
> >> diff --git a/arch/arm/boot/dts/rk322x.dtsi 
> >> b/arch/arm/boot/dts/rk322x.dtsi
> >> index da102fff96a2..148f9b5157ea 100644
> >> --- a/arch/arm/boot/dts/rk322x.dtsi
> >> +++ b/arch/arm/boot/dts/rk322x.dtsi
> >> @@ -143,6 +143,11 @@
> >> #clock-cells = <0>;
> >> };
> >> 
> >> +       display_subsystem: display-subsystem {
> >> +               compatible = "rockchip,display-subsystem";
> >> +               ports = <&vop_out>;
> >> +       };
> >> +
> > 
> > What is this? It doesn't have a reg property so it looks like a virtual
> > device. Why is it in DT?
> 
> This is a virtual device.
> 
> I assumed it would be acceptable to it find in a device tree due to 
> binding documentation, 
> "Documentation/devicetree/bindings/display/rockchip/rockchip-drm.txt, 
> which states:
> 
> <quote>
> The Rockchip DRM master device is a virtual device needed to list all
> vop devices or other display interface nodes that comprise the
> graphics subsystem.
> </quote>
> 
> Without the "display_subsystem" device node, the HDMI PHY and 
> rockchipdrmfb frame buffer device are not initialized.
> 
> Perhaps I should have included this in my commit message? :)

As Justin said, that is very much common as the root of the components
that make up the drm device and pretty much common in a lot of devicetrees
for the last 5 years and longer ;-) .

Also gpio-keys also don't have a reg property ;-) .

Heiko 



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
