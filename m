Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4755174A43
	for <lists+linux-rockchip@lfdr.de>; Sun,  1 Mar 2020 00:49:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=su7gKXKvGxf6hF5XTDKZGPo2SrJUo7bX8erMKEvQ49Q=; b=qSyiJ0Nmsx6nxj
	ggTjLxyTzsrzzk9SWc6IqsyxkUhfFEuQRTZhNYNfQPyrgraSWRwtyh9pFGGSnim8rV7GbIhwDFh46
	/kntZZBZdUApWf2xpJHkA67detvR13tN3VfTy50n8hoG2+wEgeGkYjJEt808yiI2HAQ9LFNVo3sG3
	vVSgKODe58ySzzmzGZfMYiIGWP4frzt9fajo0Qu6R5Hk62qs9+OVSXGo/JogpmxdmNa6FFCAqWICJ
	WS7fTIV8m9K6yJBQHukocHiP77GnZ2Jwy6tHlBeMxpAIrb+8bp0xX757MKQ8DJ+RyUqWXT7bWZ6EH
	gX83ie160nDEcUVekKCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8Brg-0007wK-M5; Sat, 29 Feb 2020 23:49:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8BrU-0007mN-8G; Sat, 29 Feb 2020 23:49:37 +0000
Received: from p508fcd9d.dip0.t-ipconnect.de ([80.143.205.157]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1j8BrS-0004qv-K1; Sun, 01 Mar 2020 00:49:34 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 1/3] ARM: dts: rockchip: add sram to bus_intmem nodename
 for rv1108
Date: Sun, 01 Mar 2020 00:49:34 +0100
Message-ID: <2000313.0TYPBYeV91@phil>
In-Reply-To: <20200228155354.27206-1-jbx6244@gmail.com>
References: <20200228155354.27206-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_154936_443435_56C4FBDD 
X-CRM114-Status: GOOD (  10.92  )
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Freitag, 28. Februar 2020, 16:53:52 CET schrieb Johan Jonker:
> A test with the command below gives these errors:
> 
> arch/arm/boot/dts/rv1108-elgin-r1.dt.yaml:
> bus_intmem@10080000: $nodename:0: 'bus_intmem@10080000'
> does not match '^sram(@.*)?'
> arch/arm/boot/dts/rv1108-evb.dt.yaml:
> bus_intmem@10080000: $nodename:0: 'bus_intmem@10080000'
> does not match '^sram(@.*)?'
> 
> Fix this error by adding sram to the bus_intmem nodename
> in rv1108.dtsi.
> 
> make ARCH=arm dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/sram/sram.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

applied all 3 patches for 5.7

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
