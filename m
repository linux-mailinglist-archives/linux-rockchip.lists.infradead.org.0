Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13DFC17C5F5
	for <lists+linux-rockchip@lfdr.de>; Fri,  6 Mar 2020 20:09:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qp+dyM4d3xqJLg1ETAkYRmMew2CSJswY8E+ejrjdjP4=; b=H+6/Rpe5D3tRCz
	KsKP0XXI4z72aAWalkZLHhWmyZo4nPU8U0xq+zoBZylstHWRnSHSGO2itJeBVQWyRWHn2c1rUV2X8
	k9s52U5Ru1LWuoR7BtM95HnptMB8CD+P5HImh4r2ONldz2S//vLv0gDg13yPUX/caJuNKJd91tVQI
	1NXy74lqtu2PDSX0D8R2x6hC/pKwmSe2Ekiy9YcYM5XTg2RNuM6u+6hgjgPGD9VSaHdrnh17B0O9h
	cQlYl7Fz8AdnbEXE0HaYU1AvmHM31fv3R7mtZl2xZEijs5sfa8j+PCaUj75wtJIJA3WiAYoct86JR
	mZsGE1cHxtg+Akp8ceAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAILt-00009U-39; Fri, 06 Mar 2020 19:09:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAILp-00008y-Ax; Fri, 06 Mar 2020 19:09:38 +0000
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jAILK-0002nL-U7; Fri, 06 Mar 2020 20:09:06 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Tobias Schramm <t.schramm@manjaro.org>
Subject: Re: [PATCH v4 2/2] arm64: dts: rockchip: Add initial support for
 Pinebook Pro
Date: Fri, 06 Mar 2020 20:09:05 +0100
Message-ID: <1783248.GgDFSgCcj8@diego>
In-Reply-To: <b30fef29-6667-9200-178b-4d0e9fc63c12@manjaro.org>
References: <20200304213023.689983-2-t.schramm@manjaro.org>
 <6168222.Wuk326WHQK@phil> <b30fef29-6667-9200-178b-4d0e9fc63c12@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_110937_522867_9C990B56 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Markus Reichl <m.reichl@fivetechno.de>, Alexis Ballier <aballier@gentoo.org>,
 Katsuhiro Suzuki <katsuhiro@katsuster.net>, linux-kernel@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>, Emmanuel Vadot <manu@freebsd.org>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Kever Yang <kever.yang@rock-chips.com>,
 Jagan Teki <jagan@amarulasolutions.com>, Nick Xie <nick@khadas.com>,
 Andy Yan <andy.yan@rock-chips.com>, Johan Jonker <jbx6244@gmail.com>,
 Matthias Kaehlcke <mka@chromium.org>, Vivek Unune <npcomplete13@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Tobias,

Am Freitag, 6. M=E4rz 2020, 19:58:45 CET schrieb Tobias Schramm:
> Hi Heiko,
> =

> >> This commit adds initial dt support for the rk3399 based Pinebook Pro.
> >>
> >> Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>
> >
> > applied for 5.7
> >
> =

> any chance you can squeeze in another small fix? Somewhere in the
> process the vmcc and vqmmc supplies of the sdmmc controller were removed
> in error. Those should be added to the sdmmc controller like this:
> =

>  &sdmmc {
>         pinctrl-names =3D "default";
>         pinctrl-0 =3D <&sdmmc_clk &sdmmc_cmd &sdmmc_bus4>;
>         sd-uhs-sdr104;
> +       vmmc-supply =3D <&vcc3v0_sd>;
> +       vqmmc-supply =3D <&vcc_sdio>;
>         status =3D "okay";
>  };

I've amended the commit with these two properties.

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
