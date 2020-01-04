Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DECF130498
	for <lists+linux-rockchip@lfdr.de>; Sat,  4 Jan 2020 22:20:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z06kMwnVHb4CdNEJqtEBU+Af4S841kLkh7E6oqKXq9w=; b=hqnwFYTGYl3dkt
	32lMZBGDYZyO6xNC1GRtGGUgY9YsA/NHHPnpFjEbrKxWC8mayyn5VEL9yrtrAXoC8pCNtP9Tc/a2S
	C9YH7ZP9WOw+WtYqm0zg51pk57h8+s/wPiu7US4t//NZB2UOEE5OKytXrlBsrTf1G1v8qFdzsfbvg
	YbgquucyzgRlZd8InHHla182vtKN0bDt78xgfU4+N1Wxc2BgVucY/3kmziXPnAbsLVtTM7yIPSWk8
	syZgnd66OpvEfTKR1kct3GmlIgCYgfMlFpIGP/dejPGcFLA/tv8VvA2n/u+3tXgxB6+VSbJYCYpRv
	L0RzdQfccnIadLU+yCTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inqpt-0000Y6-RW; Sat, 04 Jan 2020 21:19:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inqpp-0000WV-SU; Sat, 04 Jan 2020 21:19:51 +0000
Received: from p508fd2bb.dip0.t-ipconnect.de ([80.143.210.187]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1inqpb-00046u-FL; Sat, 04 Jan 2020 22:19:35 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Markus Reichl <m.reichl@fivetechno.de>
Subject: Re: [PATCH 0/5] regulator: mp8859: add driver for DC/DC converter
 used on rk3399-roc-pc board
Date: Sat, 04 Jan 2020 22:19:34 +0100
Message-ID: <9349117.str0dnau1D@phil>
In-Reply-To: <20200104153321.6584-1-m.reichl@fivetechno.de>
References: <20200104153321.6584-1-m.reichl@fivetechno.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_131950_070090_D63FD95D 
X-CRM114-Status: GOOD (  12.61  )
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
Cc: devicetree@vger.kernel.org, Stephan Gerhold <stephan@gerhold.net>,
 Rob Herring <robh@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, linux-rockchip@lists.infradead.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Markus,

I've only gotten patches 3+5 of this series (vendor-prefix+dts patch), so
maybe you could teach your git-send-email to include all patches to all
recipients.

Am Samstag, 4. Januar 2020, 16:32:44 CET schrieb Markus Reichl:
> On rk3399-roc-pc board a voltage regulator MP8859 from Monolithic Power Systems
> is used to supply the 12V power line. This delivers 5V as a default value after
> boot. The voltage is controllable via I2C.
> Add a basic driver to set and get the voltage of the MP8859 and add a matching
> node with fixed 12V in the DT of the board. 
> 
> Markus Reichl (5):
>   regulator: mp8859: add driver
>   regulator: mp8859: add config option and build entry

I think these two should only need one patch together.

Heiko

>   dt-bindings: add vendor Monolithic Power Systems
>   dt-bindings: regulator: add MPS mp8859 voltage regulator
>   arm64: dts: rockchip: Enable mp8859 regulator on rk3399-roc-pc
> 
>  .../devicetree/bindings/regulator/mp8859.txt  |  22 +++
>  .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
>  .../boot/dts/rockchip/rk3399-roc-pc.dtsi      |  32 ++--
>  drivers/regulator/Kconfig                     |  11 ++
>  drivers/regulator/Makefile                    |   1 +
>  drivers/regulator/mp8859.c                    | 156 ++++++++++++++++++
>  6 files changed, 210 insertions(+), 14 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/regulator/mp8859.txt
>  create mode 100644 drivers/regulator/mp8859.c
> 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
