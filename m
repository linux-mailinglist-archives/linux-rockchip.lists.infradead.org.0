Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 271F91A4A6E
	for <lists+linux-rockchip@lfdr.de>; Fri, 10 Apr 2020 21:29:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u8o1WUoN9BeSE9Az/bnQD05PgqVQHao/YdmgFdV0Cd8=; b=qiHXShs+biJu7x
	PMTZtMlfOOfDBWuqqJEgQ1WdHa9luJfmbcUs+PHHOurVTAeZuofxhHN3PrN6JE2vUqAxRrAEKq58P
	Wb3GXzhLusl7dVbMxIzFA7Dt0Y5YoUIyoabBG8CUNwFej0QG8Kzpa6ZJq1Da84d1gqwwgZAdK0sPV
	76rkvGkhjPEYFPL1jCs/ItxOYnusRaRo82X0NkNmKvIaKhcQp72m15Af904DrS1gfS0J90WHjwkdi
	a4YV+dtPYcZhEk/AmvUv1R4Pw6G3OWrnldXR9G8X0P0bgphgvaaSOUf/RLaCPxx9jfTSGJdccIXdy
	cneggby/TcR8NsBs/c8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMzLJ-0008RC-E8; Fri, 10 Apr 2020 19:29:33 +0000
Received: from static-213-198-238-194.adsl.eunet.rs ([213.198.238.194]
 helo=fx.arvanta.net)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMzLF-0008O5-3g
 for linux-rockchip@lists.infradead.org; Fri, 10 Apr 2020 19:29:31 +0000
Received: from arya.arvanta.net (arya.arvanta.net [10.5.1.6])
 by fx.arvanta.net (Postfix) with ESMTP id 39980478C;
 Fri, 10 Apr 2020 21:29:26 +0200 (CEST)
Date: Fri, 10 Apr 2020 21:29:26 +0200
From: Milan =?utf-8?Q?P=2E_Stani=C4=87?= <mps@arvanta.net>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: PROBLEM: [drm:analogix_dp_bridge_atomic_enable [analogix_dp]]
 *ERROR* Failed to disable psr -110
Message-ID: <20200410192926.GA24668@arya.arvanta.net>
References: <20200329203349.GA15121@arya.arvanta.net>
 <20200410095719.GA914@arya.arvanta.net>
 <CAFqH_53TsmtSFnUoWixsa4v6GvOi0Korv3p8BJfROhtW0Afw-Q@mail.gmail.com>
 <CAD=FV=WWx2KH+qKvGa5yQW7fZHQ_azd69Eza_Gvs18eQPvfHGg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD=FV=WWx2KH+qKvGa5yQW7fZHQ_azd69Eza_Gvs18eQPvfHGg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_122929_359165_822B4F74 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Enric Balletbo Serra <eballetbo@gmail.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Fri, 2020-04-10 at 08:28, Doug Anderson wrote:
> Hi,
> 
> On Fri, Apr 10, 2020 at 5:56 AM Enric Balletbo Serra
> <eballetbo@gmail.com> wrote:
> >
> > Hi Milan,
> >
> > Right, this is an annoying issue but also known, unfortunately, I
> > personally didn't have time to look at. but it is in my TODO.
> 
> Random shot in the dark, but any chance somehow your PHY clock and
> PCLK for the eDP don't match?  If they don't then (IIRC) you'll get
> random failures to access eDP registers.
> 
> Some history in <https://crrev.com/c/433393>.  It looks like the
> changes in that patch are upstream but if something else happened to
> make your PHY and PCLK mismatch it could cause similar symptoms.
> 
> ...of course it's always possible (probable) that it's something
> different, but since that was such a weird and hard-to-track-down
> problem I figured I'd at least make sure it wasn't that.

Not sure I understood (I'm not graphic hardware programmer) but I
changed arch/arm64/boot/dts/rockchip/rk3399.dtsi file around line
1367 (current mainline kernel), this:
    assigned-clocks =
      <&cru PLL_GPLL>, <&cru PLL_CPLL>,
      <&cru PLL_NPLL>,
      <&cru ACLK_PERIHP>, <&cru HCLK_PERIHP>,
      <&cru PCLK_PERIHP>,
      <&cru ACLK_PERILP0>, <&cru HCLK_PERILP0>,
      <&cru PCLK_PERILP0>, <&cru ACLK_CCI>,
      <&cru HCLK_PERILP1>, <&cru PCLK_PERILP1>,
      <&cru ACLK_VIO>, <&cru ACLK_HDCP>,
      <&cru ACLK_GIC_PRE>,
      <&cru PCLK_DDR>;
    assigned-clock-rates =
       <594000000>,  <800000000>,
      <1000000000>,
       <150000000>,   <75000000>,
        <37500000>,
       <100000000>,  <100000000>,
        <50000000>, <600000000>,
       <100000000>,   <50000000>,
       <400000000>, <400000000>,
       <200000000>,
       <200000000>;

and changed  <594000000> to  <600000000>
build kernel and it boots but display is blank after boot.

TIA
> -Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
