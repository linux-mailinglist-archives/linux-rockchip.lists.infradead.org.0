Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BE5617B9AD
	for <lists+linux-rockchip@lfdr.de>; Fri,  6 Mar 2020 10:57:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gLlP8qPZHUKJAl0JKlJaGj7TMt6Vu8jbMPD8QOQWb+M=; b=LUyzGXH4i5iczS
	aHeHu1da7Sf5VDmkIuozcNouqSuTXg+AMeaJCdrevyOkck/6OREgGKYm959EuDTHvgXP+Yr+JHTWy
	CvD7OGjkdSKeGH80YSU2ef4SpY56lebOkrQbyjp7Xhy2cBU2ciDb6opcna5YuUAPm76LoE2gHsiG1
	MpHr/CjD2qFthy9Rx8zVd+n2dXO8PuHjudVtfQUOghVIfnDV7KeopSvkg1hVa6u62Yv5uRppq87tw
	cOafQc1o9WmdxraQVuCFmOThKOeFMBxy2lgyJkw5AZGy82tMm8464fZ4LRxY2sgVdxfMTeGw/qjrf
	/htFHi43Z8ocPmM8t9mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA9jD-0007vl-Kn; Fri, 06 Mar 2020 09:57:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA9jA-0007vK-S7
 for linux-rockchip@lists.infradead.org; Fri, 06 Mar 2020 09:57:10 +0000
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jA9j9-0000WK-EV; Fri, 06 Mar 2020 10:57:07 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 4/4] arm64: dts: rockchip: Enable eDP display on rk3399 evb
Date: Fri, 06 Mar 2020 10:57:06 +0100
Message-ID: <9485978.lUYvBEQYsF@diego>
In-Reply-To: <88f23464-1868-464f-7e0b-c9cd1c12c9d5@gmail.com>
References: <3739122.I207nbqjcC@phil>
 <88f23464-1868-464f-7e0b-c9cd1c12c9d5@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_015709_055302_87625A2C 
X-CRM114-Status: GOOD (  12.91  )
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
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Andy Yan <andy.yan@rock-chips.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Johan,

Am Freitag, 6. M=E4rz 2020, 08:39:13 CET schrieb Johan Jonker:
> Hi,
> =

> Missing #address-cells, #size-cells
> Can you still fix that?
> Also include all email addresses that are produced by:
> =

> ./scripts/get_maintainer.pl --nogit-fallback --nogit
> =

> > =

> > Am Donnerstag, 5. M=E4rz 2020, 12:39:12 CET schrieb Andy Yan:
> >> Add eDP panle and enable relative dt node like vop/iommu
> >> to enable eDP display on rk3399 evb.
> >> =

> >> Signed-off-by: Andy Yan <andy.yan at rock-chips.com>
> > =

> > applied for 5.7 - after removing the added blank line at the end
> > of the file
> > =

> > Thanks
> > Heiko
> =

> =

> =

> > +&edp {
> > +	status =3D "okay";
> > +	force-hpd;
> > +
> > +	ports {
> =

> #address-cells =3D <1>;
> #size-cells =3D <0>;
> =

> Don't forget that extra empty line here.

same comment as on the Pinebook pro, the #address-cells
under the ports node get inherited from the main edp node
in rk3399.dtsi

Heiko

> =

> > +		edp_out: port at 1 {
> > +			reg =3D <1>;
> > +			#address-cells =3D <1>;
> > +			#size-cells =3D <0>;
> > +
> > +			edp_out_panel: endpoint at 0 {
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
