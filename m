Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A589D162E8
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 May 2019 13:35:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lQBK7Npl0wrdE0JMdPBbFwMxvapqRyHNLF8g6YY3J2I=; b=MfjDbLABi7j8pD
	XaomZFJh5+eYAfQhqWBmeDMxC6pPHyCkOKAEA7IiQ0blWsK2SslRW91au9fSb2//a+2r6O1oYJjKp
	K2vQJN1h9qtAAaMW3W7BOeGeqjK65gwvGDaInj6CfjudbbMYtL27/jkeLkB+bmB64g7HMseKxZkFt
	d+4XFADBCFxch/cqnhjHVnV2d7QfGHuu8nItMelisAi9xqvTdHYyfVUBYbeiwGtRcFURdPK5lcRXm
	6T0W32fgIoNDne5tlUGv/azIXIe/72mXdKBKJCwVpFinK408FPNoBGmHhFKBVdD5JzhpeY2G9TiMu
	srBia4/PvE2oU6PWm+Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNyNN-0003jX-Nm; Tue, 07 May 2019 11:35:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNyNB-0002PE-Np; Tue, 07 May 2019 11:35:03 +0000
Received: from we0048.dip.tu-dresden.de ([141.76.176.48] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hNyN9-0008Ad-Kx; Tue, 07 May 2019 13:34:59 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: Enable SPI0 and SPI4 on Rock960
Date: Tue, 07 May 2019 13:34:58 +0200
Message-ID: <1748905.kIquBUqR0b@phil>
In-Reply-To: <20190507113339.GA309@Mani-XPS-13-9360>
References: <20190506120458.25842-1-manivannan.sadhasivam@linaro.org>
 <3484838.jBNMtg6mRV@phil> <20190507113339.GA309@Mani-XPS-13-9360>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_043501_932727_3A115330 
X-CRM114-Status: GOOD (  18.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: tom@vamrs.com, linux-kernel@vger.kernel.org, dev@vamrs.com,
 linux-rockchip@lists.infradead.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Dienstag, 7. Mai 2019, 13:33:39 CEST schrieb Manivannan Sadhasivam:
> Hi Heiko,
> 
> On Tue, May 07, 2019 at 01:17:10PM +0200, Heiko Stuebner wrote:
> > Am Montag, 6. Mai 2019, 14:04:57 CEST schrieb Manivannan Sadhasivam:
> > > Enable SPI0 and SPI4 exposed on the Low and High speed expansion
> > > connectors of Rock960.
> > > 
> > > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > > ---
> > >  arch/arm64/boot/dts/rockchip/rk3399-rock960.dts | 12 ++++++++++++
> > >  1 file changed, 12 insertions(+)
> > > 
> > > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
> > > index 12285c51cceb..7498344d4a73 100644
> > > --- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
> > > +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
> > > @@ -114,6 +114,18 @@
> > >  	};
> > >  };
> > >  
> > > +&spi0 {
> > > +	/* On Low speed expansion */
> > > +	label = "LS-SPI0";
> > 
> > where does the label property come from and what does it do?
> > It's not part of the rockchip-spi / general-spi binding.
> > 
> 
> It is not part of the binding but I thought it will provide the users
> the information of the SPI bus as per the specification when they
> look into devicetree.
> 
> If it doesn't makes sense, I can remove that!

please do :-) ... dt-bindings are supposed to be verifyable at some
point, so we shouldn't add undocumented properties.

Heiko

> 
> Thanks,
> Mani
> 
> > 
> > Heiko
> > 
> > > +	status = "okay";
> > > +};
> > > +
> > > +&spi4 {
> > > +	/* On High speed expansion */
> > > +	label = "HS-SPI1";
> > > +	status = "okay";
> > > +};
> > > +
> > >  &usbdrd_dwc3_0 {
> > >  	dr_mode = "otg";
> > >  };
> > > 
> > 
> > 
> > 
> > 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
