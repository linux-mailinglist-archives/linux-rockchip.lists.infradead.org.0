Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96FBC17B938
	for <lists+linux-rockchip@lfdr.de>; Fri,  6 Mar 2020 10:28:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OLdxln4G7mENsJY/gad5Y2s83gUsQptL5MEqkMqaogo=; b=bzbOB0dvXZdDIL
	g6ombnhGMIYOfPoTONKm2DM3xWXGtgk7VVPZdA91LfUhKhxwpTtkzceO42dS93ZwfYVqfd6uCURf+
	WpefXyieO6pIeKO/WATthmkrN4+ENURLXzzIbjiB2IhwpJvfl16fQYimxkPGRMrsAxcwllg3HKMoz
	BWOIk9KJpIwfW8SiD523nXnbmJH3szuQXi3XkE5Z8j4t23S/KuU2NC5q29S1M+CRLEfcboGcNp1Xo
	I8+USq2P2nY51LrQRUGEMjdKryApDKPcXlQ8t17bcg5Wz3nMY5A0wvGlTp2LXeNG7+REOWPJkozfN
	rcc8vpd3B3Ut/bwhBgtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA9H9-00040x-Ed; Fri, 06 Mar 2020 09:28:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA9H0-0003th-9F; Fri, 06 Mar 2020 09:28:03 +0000
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jA9Gj-0000Pu-CY; Fri, 06 Mar 2020 10:27:45 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v4 2/2] arm64: dts: rockchip: Add initial support for
 Pinebook Pro
Date: Fri, 06 Mar 2020 10:27:44 +0100
Message-ID: <4053849.MTJ45Pz6JY@diego>
In-Reply-To: <7a799284-92ab-ea04-285e-37d655064118@gmail.com>
References: <20200304213023.689983-2-t.schramm@manjaro.org>
 <6168222.Wuk326WHQK@phil> <7a799284-92ab-ea04-285e-37d655064118@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_012802_476316_9F09A733 
X-CRM114-Status: GOOD (  13.69  )
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
 Emmanuel Vadot <manu@freebsd.org>, Alexis Ballier <aballier@gentoo.org>,
 Tobias Schramm <t.schramm@manjaro.org>,
 Katsuhiro Suzuki <katsuhiro@katsuster.net>, linux-kernel@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>,
 Kever Yang <kever.yang@rock-chips.com>, Markus Reichl <m.reichl@fivetechno.de>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>, Nick Xie <nick@khadas.com>,
 Andy Yan <andy.yan@rock-chips.com>, Vasily Khoruzhick <anarsoul@gmail.com>,
 Matthias Kaehlcke <mka@chromium.org>, Vivek Unune <npcomplete13@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Johan,

Am Freitag, 6. M=E4rz 2020, 08:22:00 CET schrieb Johan Jonker:
> Hi,
> =

> Missing #address-cells, #size-cells
> Can you still fix that?
> =

> On 3/6/20 1:23 AM, Heiko Stuebner wrote:
> > Am Mittwoch, 4. M=E4rz 2020, 22:30:23 CET schrieb Tobias Schramm:
> >> This commit adds initial dt support for the rk3399 based Pinebook Pro.
> >>
> >> Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>
> > =

> > applied for 5.7
> > =

> > Thanks
> > Heiko
> > =

> > =

> =

> > +&edp {
> > +	force-hpd;
> > +	pinctrl-names =3D "default";
> > +	pinctrl-0 =3D <&edp_hpd>;
> > +	status =3D "okay";
> > +
> > +	ports {
> =

> #address-cells =3D <1>;
> #size-cells =3D <0>;
> =

> Don't forget that extra empty line here.

The edp ports node does get its address+size cells already from the main
node in rk3399.dtsi, so isn't needed here.


Heiko

> =

> =

> > +		edp_out: port@1 {
> > +			reg =3D <1>;
> > +			#address-cells =3D <1>;
> > +			#size-cells =3D <0>;
> > +
> > +			edp_out_panel: endpoint@0 {
> > +				reg =3D <0>;
> > +				remote-endpoint =3D <&panel_in_edp>;
> > +			};
> > +		};
> > +	};
> > +};
> =

> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
