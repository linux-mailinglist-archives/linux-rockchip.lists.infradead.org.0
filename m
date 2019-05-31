Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96ECE30852
	for <lists+linux-rockchip@lfdr.de>; Fri, 31 May 2019 08:09:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DNo+75bHs8jqJr7J2537awsMgTFLA5eQ9nTrDex34UI=; b=nubvFjUDPwWzXW
	JEvyBUDa7NZAdau0vC/L68mXUzutuLRhLNAmR4WJQc61w4pUV0CqtiK5jWJihfDHJ8NRwVSpNYvOm
	ptdmDb8HlOiQH6XaTNUuIUft9oawCnKZXklBf3u9NK3xe2HU/WE2hgz8A2bvBq3inHqoZQMj8fRmY
	/PbNpO9wRh35gLrStnM8R6tMtKKwNTNOICQ3xNxaw1oRINyXAPX0G6oUeG1e+nQPUiWSOzecfrIne
	E1ivMrqHxR4yURQ7Vbmd8PPNsV+IymEPLZn+/i90K22GuP+hHkzD5KGKphXY5Xr3+ZGflg1Tr4XVU
	fgf01pY8VD7M0ywjApAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWaik-0008Jx-Fn; Fri, 31 May 2019 06:08:54 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWaia-0008Bn-5d
 for linux-rockchip@lists.infradead.org; Fri, 31 May 2019 06:08:45 +0000
Received: by mail-pl1-x643.google.com with SMTP id e7so3081324pln.4
 for <linux-rockchip@lists.infradead.org>; Thu, 30 May 2019 23:08:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=XwfqNiumqbGzIIC/RNtiSYns0HQ4qYSUZptMwlc/kUo=;
 b=bY1OiOlZBhPceUCRbkGtku9P7C5GJFH3r7S5acpROqVkrL05YeRY2a4qN5z6EKQJM8
 HBr9g7zmWxowRUXVStXMxAg7dVUlRxYdxmpE3sq/QqbaeswrsfMCUXyBpRLNp/ujYKBB
 5EPPuzwHc4Hbp+qHmZ8J3FbgxJ6JE+JGCoE86hVtf0xv8uoeM7UaskO0HZPG3P4kn+lb
 NjdnZUF0HuHXT3b5htg14CKa8jsYNHWJ9ZyIjpEe5+s+WFsg8xPObN4EIvF5jWb+9Tcd
 f3l/CMowGFQt1LUp0RHBs4IxDNYz7EF1K4+2NUKO41PdKjF90Abagopk8qQLg6a+VcmE
 PjvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XwfqNiumqbGzIIC/RNtiSYns0HQ4qYSUZptMwlc/kUo=;
 b=ca/stPDY6WDEJmc3fGzMDCYKrrcjUV1QSRk7JvHAgEOp2dutQ+uYlDHRGFxp76XC0Q
 cEphkiJq2opONo5OBIRyVEjDmUikOnskLjNMiwd6kMGewo2aoxTqjVs1BNEYBNTIWzjj
 1qsJy9kEs97m2EiG3BrFBB6/uVdwKlcd5aD/cUUiP+oUYs96H+1nleVXLJAwYPEuBet4
 e7qaL5oqMk7CatiWu2N7q/45Dw/gblLghdXJlK+283elV2xaRbczWoQmS/V7N8E7WFVY
 hqMOHBrvPwFigJ/i35eDi114TtFUsT3cVDDBdoNLionmnG7SslmCSy0OsGzStOfBQFWU
 qIvg==
X-Gm-Message-State: APjAAAVKHgR6FbBLzHIin79hZotlbM3HijspJLXWkwEKxqOdY1SjokEp
 JsRvoUBjXksSfIXmO+ONApCZ
X-Google-Smtp-Source: APXvYqzrAfkfqti29DEdzisOmgSYSBFSIKUocZpAqFeqT3IHD3Tat99veY4H0d3/uwy4LsUUxMGAYA==
X-Received: by 2002:a17:902:e00a:: with SMTP id
 ca10mr7527559plb.18.1559282923093; 
 Thu, 30 May 2019 23:08:43 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2405:204:72cb:ebf2:a51d:3877:feab:5634])
 by smtp.gmail.com with ESMTPSA id j64sm11527264pfb.126.2019.05.30.23.08.36
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 30 May 2019 23:08:42 -0700 (PDT)
Date: Fri, 31 May 2019 11:38:34 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Anand Moon <linux.amoon@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add missing PCIe pwr amd rst
 configuration
Message-ID: <20190531060834.GA23771@Mani-XPS-13-9360>
References: <20190530125837.730-1-linux.amoon@gmail.com>
 <20190531040222.GB9641@Mani-XPS-13-9360>
 <CANAwSgQ13PizDuNEVF5JMM=byt-HELCmZFhLAa3RS6kvxmXuhw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANAwSgQ13PizDuNEVF5JMM=byt-HELCmZFhLAa3RS6kvxmXuhw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_230844_276498_ECE21CED 
X-CRM114-Status: GOOD (  21.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, May 31, 2019 at 10:27:22AM +0530, Anand Moon wrote:
> Hi Manivannan,
> 
> On Fri, 31 May 2019 at 09:32, Manivannan Sadhasivam
> <manivannan.sadhasivam@linaro.org> wrote:
> >
> > Hi,
> >
> > On Thu, May 30, 2019 at 12:58:37PM +0000, Anand Moon wrote:
> > > This patch add missing PCIe gpio and pinctrl for power (#PCIE_PWR)
> > > also add PCIe gpio and pinctrl for reset (#PCIE_PERST_L).
> > >
> > > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> > > ---
> > > Tested on Rock960 Model A
> > > ---
> > >  arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi | 16 ++++++++++++++--
> > >  1 file changed, 14 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> > > index c7d48d41e184..f5bef6b0fe89 100644
> > > --- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> > > +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> > > @@ -55,9 +55,10 @@
> > >
> > >       vcc3v3_pcie: vcc3v3-pcie-regulator {
> > >               compatible = "regulator-fixed";
> > > +             gpio = <&gpio2 RK_PA2 GPIO_ACTIVE_HIGH>;
> > >               enable-active-high;
> > >               pinctrl-names = "default";
> > > -             pinctrl-0 = <&pcie_drv>;
> > > +             pinctrl-0 = <&pcie_drv &pcie_pwr>;
> > >               regulator-boot-on;
> > >               regulator-name = "vcc3v3_pcie";
> > >               regulator-min-microvolt = <3300000>;
> > > @@ -381,9 +382,10 @@
> > >  };
> > >
> > >  &pcie0 {
> > > +     ep-gpio = <&gpio2 RK_PD4 GPIO_ACTIVE_HIGH>;
> > >       num-lanes = <4>;
> > >       pinctrl-names = "default";
> > > -     pinctrl-0 = <&pcie_clkreqn_cpm>;
> > > +     pinctrl-0 = <&pcie_clkreqn_cpm &pcie_perst_l>;
> > >       vpcie3v3-supply = <&vcc3v3_pcie>;
> > >       status = "okay";
> > >  };
> > > @@ -408,6 +410,16 @@
> > >               };
> > >       };
> > >
> > > +     pcie {
> > > +             pcie_pwr: pcie-pwr {
> > > +                     rockchip,pins = <2 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
> > > +             };
> > > +
> > > +             pcie_perst_l:pcie-perst-l {
> > > +                     rockchip,pins = <2 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
> > > +             };
> >
> > Which schematics did you refer? According to Rock960 v2.1 schematics [1], below
> > is the pin mapping for PCI-E PWR and PERST:
> >
> > PCIE_PERST - GPIO2_A2
> > PCIE_PWR - GPIO2_A5
> >
> 
> Opps, I have referred the wrong schematics *RK3399_Rock960_V1.0.pdf*
> may be old version.
> Thanks for pointing out the correct schematics.
> 
> > Above mapping holds true for Rock960 version 1.1, 1.2 and 1.3. Also,
> > rk3399-rock960.dtsi is common for both Rock960 and Ficus boards, so the board
> > specific parts should go to rk3399-rock960.dts and rk3399-ficus.dts.
> >
> > Thanks,
> > Mani
> 
> I have ROCK960-V 1.2 (Model A) for testing so. I will be sending patch
> v2 the relevant
> node update in rk3399-rock960.dts and rk3399-ficus.dts if below common
> for both the boards.

Both boards are different in terms of pin mapping!

-Mani

> 
> PCIE_PERST - GPIO2_A2
> PCIE_PWR - GPIO2_A5
> 
> >
> > [1] https://dl.vamrs.com/products/rock960/docs/hw/rock960_sch_v12_20180314.pdf
> 
> Best Regards
> -Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
