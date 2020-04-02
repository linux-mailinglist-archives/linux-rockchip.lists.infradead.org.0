Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FCA119C4AF
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 16:49:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ARbEmOWLfkNPckG+zQNttqhsZjvOgiRRZ+cY/N8ZeKI=; b=bnd6/gZycl4lJ6
	CugmX6h417UFpYTEdQmbFfzr6oIVBOZGjWZsxl818PZbLbtB0yHU96DqGiyUC/Rp/Is37a74h7tn3
	IL64IPMGGOKc5pwJ35eMlUt4ZkX/dH2ZmVvUsv98C/ul12lx/3z0Stx8lhSJanCf/Ry1R1FkuxEYU
	GfRAqa5S+6hbGab6d/jKOqQC8HZdvA9ALiZmJj4VDApoz1qGp/EF637EtzFtQeQFSzqEKPDHTiXK2
	w3GJ19EPkHn74T355WOmCC36GdxVci5KJMtF4e7tobWpSOKdo4NqTKvf5+Yxzi5vhlekSHlAhdpO/
	QUAwvy0XVUU3XrfzbBDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK19r-0002wu-O2; Thu, 02 Apr 2020 14:49:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK19o-0002wX-Iq
 for linux-rockchip@lists.infradead.org; Thu, 02 Apr 2020 14:49:25 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jK19j-0008Cn-0m; Thu, 02 Apr 2020 16:49:19 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: add rx0 mipi-phy for rk3399
Date: Thu, 02 Apr 2020 16:49:18 +0200
Message-ID: <3198644.TY9RtKZRLE@diego>
In-Reply-To: <76211530-73ff-5f36-8915-8bdc036d4369@gmail.com>
References: <20200402000234.226466-4-helen.koike@collabora.com>
 <105956984.FXDh2DO4ZE@diego> <76211530-73ff-5f36-8915-8bdc036d4369@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_074924_774784_23AACC6C 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 dafna.hirschfeld@collabora.com, karthik.poduval@gmail.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, robh+dt@kernel.org, hverkuil-cisco@xs4all.nl,
 mark.rutland@arm.com, kernel@collabora.com, ezequiel@collabora.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Donnerstag, 2. April 2020, 16:37:52 CEST schrieb Johan Jonker:
> On 4/2/20 4:31 PM, Heiko St=FCbner wrote:
> > Am Donnerstag, 2. April 2020, 15:48:02 CEST schrieb Johan Jonker:
> >> Hi Helen,
> >>
> >>> From: Helen Koike <helen.koike@collabora.com>
> >>
> >>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/bo=
ot/dts/rockchip/rk3399.dtsi
> >>> index 33cc21fcf4c10..fc0295d2a65a1 100644
> >>> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> >>> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> >>> @@ -1394,6 +1394,17 @@ io_domains: io-domains {
> >>>  			status =3D "disabled";
> >>>  		};
> >>>  =

> >>
> >>> +		mipi_dphy_rx0: mipi-dphy-rx0 {
> >>
> >> For Heiko sort syscon@ff770000 subnodes alphabetical or reg value firs=
t?
> > =

> > Similar to main nodes ... so things without reg alphabetical,
> > the rest by reg address
> > =

> alphabetical first:
> =

> io-domains
> mipi-dphy-rx0
> usb2-phy@e450

like this ... aka similar to what we do in the core nodes.

For the record, pinctrl at the bottom of a soc.dtsi is ok.


Heiko

> .@..
> =

> or
> =

> with reg values first:
> =

> .@..
> emmc_phy: phy@f780
> mipi-dphy-rx0
> pcie-phy
> =

> > =

> >>
> >>> +			compatible =3D "rockchip,rk3399-mipi-dphy-rx0";
> >>> +			clocks =3D <&cru SCLK_MIPIDPHY_REF>,
> >>
> >>> +				<&cru SCLK_DPHY_RX0_CFG>,
> >>> +				<&cru PCLK_VIO_GRF>;
> >>
> >> Align                            ^
> >>
> >>> +			clock-names =3D "dphy-ref", "dphy-cfg", "grf";
> >>> +			power-domains =3D <&power RK3399_PD_VIO>;
> >>> +			#phy-cells =3D <0>;
> >>> +			status =3D "disabled";
> >>> +		};
> >>> +
> >>>  		u2phy0: usb2-phy@e450 {
> >>>  			compatible =3D "rockchip,rk3399-usb2phy";
> >>>  			reg =3D <0xe450 0x10>;
> >>
> >>
> > =

> > =

> > =

> > =

> =

> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
