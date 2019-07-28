Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE3837819D
	for <lists+linux-rockchip@lfdr.de>; Sun, 28 Jul 2019 22:56:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qWz2s7wS77bMAfJcMx2nlw0QxbduPiYJAIgOcr6oQBU=; b=Wz4GU//2pfFcnN
	H9nlI5Ab5LTDUinXoQs4ovRo884E7iqAPPvLku3dek1vcst6Nr0vLJ70UOWkHA3r0YM6dPPieMXWG
	p/K1xVW0VZnjrlrTSG3OF+T/ext8al9FBRHrgiSB3KyA3dIyFSeAZQso/8RsiBKhVZm5OVorCx4Yn
	V4MPOoOjgGQmwfbBF8GRj0QrZTSjDGNybZNi9rOrd5ZW9/L1kAkF1T2SRvsu3j1B6A71SU4aCAR8+
	4y09ARV6eFJB6YT2c0tt7PLLVrgoammaHco0KcpHs2f0vv9CPIL1giFJwHz6YzlO8HlYm6I9Dmyy5
	k9/orBpZPqOv8lvkROew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrqDH-0003iE-UA; Sun, 28 Jul 2019 20:56:15 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrqD3-0003W6-4r; Sun, 28 Jul 2019 20:56:02 +0000
Received: from ip4d16169c.dynamic.kabel-deutschland.de ([77.22.22.156]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hrqCz-0007WZ-0i; Sun, 28 Jul 2019 22:55:57 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH 2/2] ARM: dts: rockchip: Add missing unit address to
 memory node on rk3288-veyron
Date: Sun, 28 Jul 2019 22:55:56 +0200
Message-ID: <8373672.S8ITYX37Bm@phil>
In-Reply-To: <CAJKOXPcHB9969bqw+aqRh1HYHKDazhhpKy_+uKKcA=5Gkg6+EA@mail.gmail.com>
References: <20190727142736.23188-1-krzk@kernel.org> <86910491.m50tbimVMv@phil>
 <CAJKOXPcHB9969bqw+aqRh1HYHKDazhhpKy_+uKKcA=5Gkg6+EA@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_135601_339893_6EA9D90C 
X-CRM114-Status: GOOD (  10.00  )
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
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Sonntag, 28. Juli 2019, 13:38:43 CEST schrieb Krzysztof Kozlowski:
> On Sat, 27 Jul 2019 at 17:33, Heiko Stuebner <heiko@sntech.de> wrote:
> >
> > Hi Krzysztof,
> >
> > Am Samstag, 27. Juli 2019, 16:27:36 CEST schrieb Krzysztof Kozlowski:
> > > Fix DTC warning:
> > >
> > >     arch/arm/boot/dts/rk3288-veyron.dtsi:21.9-24.4:
> > >     Warning (unit_address_vs_reg): /memory: node has a reg or ranges property, but no unit name
> >
> > please see the comment directly above the memory node on why that needs
> > to stay that way. So no, we'll keep the veyron memory node as is.
> 
> Damn it, I missed it.

no worries :-)



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
