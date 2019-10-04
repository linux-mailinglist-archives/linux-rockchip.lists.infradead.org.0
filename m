Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57E53CC523
	for <lists+linux-rockchip@lfdr.de>; Fri,  4 Oct 2019 23:45:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fFrz4H6hbJfC6WRV0qw1EGumVJtowutNtjMrMsemiek=; b=PRC2LjGZlKkE4o
	PIf8PCFiu9i6O0WY4hMhLOAA0oC6aBRxlQhGoOGxuQR7QO7qR3DhzPYWc7LTohIUc+IL4lKG91zPj
	tRD85Ca2+mpAUmPTuz0I971dG7hkuGwncjam++RAO7Hu9aKfXvNa1OAhg3kko8YY07jHQDSH9jiD0
	ITwSRvmfvhYIUiI99Hcf4cD2oKuMIfYtnSUcN4JpQ8oZKH4PaZd2/fJ2eu4xiFotRgbTdkCOxk+fB
	U0KQcCnDw2L/l8yoT/KuOXD0NyJyWXMlrpYWSgwzbFYhIrUj2X2FnpKeOsAC4ZshKEhitQw7map1u
	H5vYutSXjXXDvDxPSNZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGVOC-0002dM-NQ; Fri, 04 Oct 2019 21:45:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGVO4-0002WJ-1G; Fri, 04 Oct 2019 21:45:21 +0000
Received: from 94.112.246.102.static.b2b.upcbusiness.cz ([94.112.246.102]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iGVNt-0006sD-N6; Fri, 04 Oct 2019 23:45:09 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Vivek Unune <npcomplete13@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix usb-c on Hugsun X99 TV Box
Date: Fri, 04 Oct 2019 23:45:08 +0200
Message-ID: <2223294.9I8gkMH88G@phil>
In-Reply-To: <20190929234615.GA5355@vivek-desktop>
References: <20190929032230.24628-1-npcomplete13@gmail.com>
 <54c67ca8-8428-48ee-9a96-e1216ba02839@gmail.com>
 <20190929234615.GA5355@vivek-desktop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_144520_227318_0B78DA69 
X-CRM114-Status: GOOD (  19.11  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Felipe Balbi <felipe.balbi@linux.intel.com>, Felipe Balbi <balbi@kernel.org>,
 linux-kernel@vger.kernel.org, Vicente Bergas <vicencb@gmail.com>,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, akash@openedev.com,
 ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Vivek,

Am Montag, 30. September 2019, 01:46:15 CEST schrieb Vivek Unune:
> On Sun, Sep 29, 2019 at 01:22:17PM +0200, Vicente Bergas wrote:
> > On Sunday, September 29, 2019 5:22:30 AM CEST, Vivek Unune wrote:
> > > Fix usb-c on X99 TV Box. Tested with armbian w/ kernel 5.3
> > > =

> > > Signed-off-by: Vivek Unune <npcomplete13@gmail.com>
> > > ---
> > >  arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > > =

> > > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
> > > b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
> > > index 0d1f5f9a0de9..c133e8d64b2a 100644
> > > --- a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
> > > +++ b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
> > > @@ -644,7 +644,7 @@
> > >  	status =3D "okay";
> > >  	u2phy0_host: host-port {
> > > -		phy-supply =3D <&vcc5v0_host>;
> > > +		phy-supply =3D <&vcc5v0_typec>;
> > >  		status =3D "okay";
> > >  	};
> > > @@ -712,7 +712,7 @@
> > >  &usbdrd_dwc3_0 {
> > >  	status =3D "okay";
> > > -	dr_mode =3D "otg";
> > > +	dr_mode =3D "host";
> > >  };
> > >  &usbdrd3_1 {
> > =

> > Hi Vivek,
> > =

> > which is the relationship of your patch and this commit:
> > =

> > e1d9149e8389f1690cdd4e4056766dd26488a0fe
> > arm64: dts: rockchip: Fix USB3 Type-C on rk3399-sapphire
> > =

> > with respect to this other commit:
> > =

> > c09b73cfac2a9317f1104169045c519c6021aa1d
> > usb: dwc3: don't set gadget->is_otg flag
> > =

> > ?
> > =

> > I did not test reverting e1d9149e since c09b73cf was applied.
> > =

> > Regards,
> >  Vicen=E7.
> > =

> =

> Hi Vicen=E7,
> =

> Indeed, I was motivated by e1d9149e ("arm64: dts: rockchip: Fix USB3 =

> Type-C on rk3399-sapphire"). X99 TV box showed exact same symptoms
> with usb-c port. After applying the fix, it worked.
> =

> I was not aware of c09b73cf ("usb: dwc3: don't set gadget->is_otg
>  flag") and it will be interesting to test it. This might render
> my fix unecessary.

So I'll let this patch sit here for now.
Once you've done the testing, can you please respond with the
result (both positive and negative results please).

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
