Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D70B457B6F
	for <lists+linux-rockchip@lfdr.de>; Thu, 27 Jun 2019 07:29:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TWHf8Y1g0bVZJH1I50BRb7ysUaXB+F+MVzNAu26vKII=; b=Xb3YmdPr0YO0BG
	aX0ovmujIVHv7CRcy+h+owc+Wi3Lm0p0P48XpUbMvzB/4t9WKcGJ42V1JJgf3wvNN4ZBzmCj44+Qt
	1D7iUPZIXFdog4x+BlruPh2rj3LZeU4Mm/+E5dXxl+YQbLn4aV48ocf3V/bgNsBiTk3Ssv+pAZJiG
	LCQhCTf+urBzQia8uCK75qGB+clZ7lOLqkVeSDDdSviVjC/xcJIyr8ytKgR00YIVC6AJdlSfnZswZ
	OuRYY3DIZ9ZsL3cRw8bFPwV4dFJwT7jASbwnd4wwixMQJpekEG3aWYc3BXSJgLyXMMkmtOEFQDhko
	2TkLDNHDfgW8hwicTibg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgMyf-0000cT-Sc; Thu, 27 Jun 2019 05:29:45 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgMsn-00033C-6f; Thu, 27 Jun 2019 05:23:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=P/IuSyAbQhXoB6N8MgUtFItwFW363oZJoVXKBRyzROs=; b=Dxqj0ciavKjOw1A7BFxt2ChdbN
 g6iKuYEjcOuzoy0NB4TU4b7ah5cjKtaNpUlb18Pce/cFhFdiXh96buGbrBiL6Zi24wQsr6MK0Mita
 53NUCNROdxw7EJHVVGC9+e3dM9rohJk3W9dmBtnwlKjidbcV0K8jqj57LhaPev3/HOPmBuOpBFuhh
 YM+R8ezG/DaabPwZsqcP0oOcqQ0Y5R+ZqJevwDcYFcZbfp+kde+QaYRTGsFj2qzYNUX0jNNFKTxbN
 HYewGz11KDUh0GvCqMm6oRE4+sNvIx7uRGgsFqs9WeAoD+GhmzIgS906GswDxWI9Q+ryXGo26e+0c
 U25eXMWA==;
Received: from gloria.sntech.de ([185.11.138.130])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgGNl-0006xn-L5; Wed, 26 Jun 2019 22:27:15 +0000
Received: from ip5f5a6320.dynamic.kabel-deutschland.de ([95.90.99.32]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hgGNY-0004SG-E9; Thu, 27 Jun 2019 00:27:00 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: Fix multiple thermal zones
 conflict in rk3399.dtsi
Date: Thu, 27 Jun 2019 00:26:59 +0200
Message-ID: <3137613.utG1qvTnjZ@phil>
In-Reply-To: <20190604165802.7338-1-daniel.lezcano@linaro.org>
References: <20190604165802.7338-1-daniel.lezcano@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_232713_768493_9D3BD0B0 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.0 points, 5.0 required)
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Emil Renner Berthing <kernel@esmil.dk>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 Tony Xie <tony.xie@rock-chips.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Randy Li <ayaka@soulik.info>, linux-kernel@vger.kernel.org,
 Vicente Bergas <vicencb@gmail.com>, edubezval@gmail.com,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Rob Herring <robh+dt@kernel.org>,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 manivannan.sadhasivam@linaro.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 Christoph Muellner <christoph.muellner@theobroma-systems.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Dienstag, 4. Juni 2019, 18:57:57 CEST schrieb Daniel Lezcano:
> Currently the common thermal zones definitions for the rk3399 assumes
> multiple thermal zones are supported by the governors. This is not the
> case and each thermal zone has its own governor instance acting
> individually without collaboration with other governors.
> 
> As the cooling device for the CPU and the GPU thermal zones is the
> same, each governors take different decisions for the same cooling
> device leading to conflicting instructions and an erratic behavior.
> 
> As the cooling-maps is about to become an optional property, let's
> remove the cpu cooling device map from the GPU thermal zone.
> 
> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>

applied both patches for 5.3

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
