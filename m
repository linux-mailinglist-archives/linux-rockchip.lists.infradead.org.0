Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34FDF10CF9B
	for <lists+linux-rockchip@lfdr.de>; Thu, 28 Nov 2019 22:53:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rS1SuItTfR3KLfBXnnwg/uZrByz4XM5iyEl0UuiK4bU=; b=XzJ5NeZ9lXJMLL
	KmZ9X4CVbaN6/WHz70BItLjUTHKB7AASbb40m42SaGq7fsMz5vgMRJ5SPoihg8qGk4sBjLBQI0XrS
	789rQ5Hqk1Z3+h4A/yTmdbCD/+vDm/Ye9XloytBPeTk1j8JqiEEnC2lCpDOz3abtCkPcIn/f0M2DQ
	WI2ZvM/hIlmw9DC5mCO2j76roPA9VhunnPV2f1GjBuGjt6hiHUvUmP229qDZX1TVX32v/F9EmHffG
	9d3X6gyniIVF/nSkno8jIDbrgXWfZjpC42d9/W/yJ9bb/iOQDPdGbRR4PT/4t67Vt4+h7OgsfpQuT
	Ey75jBAtjWkrGbRFgeNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaRiq-0001XD-Pd; Thu, 28 Nov 2019 21:53:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaRio-0001Wd-4D; Thu, 28 Nov 2019 21:53:11 +0000
Received: from p5b127cfe.dip0.t-ipconnect.de ([91.18.124.254]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iaRii-0005Hu-IH; Thu, 28 Nov 2019 22:53:04 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Soeren Moch <smoch@web.de>
Subject: Re: [PATCH v2] arm64: dts: rockchip: split rk3399-rockpro64,
 for v2 and v2.1 boards
Date: Thu, 28 Nov 2019 22:53:03 +0100
Message-ID: <9133677.cKcSbgiQdr@phil>
In-Reply-To: <3fa2e3df-221b-99a8-796a-2e21f75cf706@web.de>
References: <3fa2e3df-221b-99a8-796a-2e21f75cf706@web.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_135310_319457_AC9A3CA7 
X-CRM114-Status: GOOD (  17.53  )
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
Cc: Katsuhiro Suzuki <katsuhiro@katsuster.net>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>, linux-rockchip@lists.infradead.org,
 Hugh Cole-Baker <sigmaris@gmail.com>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Donnerstag, 28. November 2019, 20:55:54 CET schrieb Soeren Moch:
> > On Thu, Nov 28, 2019 at 6:02 AM Katsuhiro Suzuki
> > <katsuhiro@katsuster.net> wrote:
> >> This patch splits rk3399-rockpro64 dts file to 2 files for v2 and
> >> v2.1 boards.
> >>
> >> Both v2 and v2.1 boards can use almost same settings but we find a
> >> difference in I2C address of audio CODEC ES8136.
> >>
> >> Reported-by: Vasily Khoruzhick <anarsoul@gmail.com>
> >> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
> >>
> >> ---

[...]

> >> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> >> new file mode 100644
> >> index 000000000000..183eda4ffb9c
> >> --- /dev/null
> If we add this as new file, should we sort handles and properties
> alphabetically, where it is not done yet?

I'm torn here ... on one side, doing missing sorting might be nice
on the other hand, there is the moving without functional changes
paradigm, which is generally nice to adhere to.

But I guess sorting would generally be ok.

> I'm not sure about all the exceptions that usually apply for rockchip
> devicetrees, status property at the end, also the pinctrl node?

In general I don't "enforce" the sorting, so don't reject patches but instead
just do sorting myself if necessary ;-).

The general rule-of-thumb for nodes we came up with during the rk3288-veyron
era is something like:

compatible
reg
interrupts
[alphabetical properties]
status

as this makes it somewhat easier to parse the core properties (compatible,
reg, ints, status] when scrolling through a devicetree :-) .

Pinctrl position is at the discretion of the dt author :-D .
Position at the end has just the advantage that a long pin-group list does
not get in the way so much.

> What about unused references, e.g. "fan"?

Don't change too much when moving stuff around :-)


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
