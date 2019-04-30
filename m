Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0E36FAD2
	for <lists+linux-rockchip@lfdr.de>; Tue, 30 Apr 2019 15:52:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3v1Ql64O/Dw3aP+CWECoxNMxp/V5qf1gRvDI8RQDLDM=; b=MRAKDp3ZUMK5T7
	5x5mrmCx/nDTQfmwkHuppkxq/CTb/Ri9Atko1Bn7QFwd4Hjuo6sDJX9WLzjYowLqrlOPY9AZmit20
	jtVu6HQ1utBn1TIEE865K8aWSvHwodsF7veEJbUT7619Ir4BOvbmt8RRP58NQF0Bhy6C3tGmPfRk2
	q2W9au1OXXGYTTFf+O7f8te0jbgyw1tXYCmbbYqZECI45sc9DaR73gvJLti6uyVi4f2yvwEExVBy2
	f5nZWirBchgdEZ3cLcuXjKA6yT61jRodZUS+x6coFFs2YZN6WJD1eiG1EioFcKmQUoEhW6WJcPKRe
	MK5Ry/2qJNdqz014ZBTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLTAu-0003T7-83; Tue, 30 Apr 2019 13:52:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLTAr-0003ST-12
 for linux-rockchip@lists.infradead.org; Tue, 30 Apr 2019 13:51:58 +0000
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
 [209.85.160.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5EDDE2173E
 for <linux-rockchip@lists.infradead.org>; Tue, 30 Apr 2019 13:51:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556632316;
 bh=FK7HvOl0jhVPsMklvQn4u+qk2YgkQYXDQ9T+ToRvAXA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=R3Eq5UQpEL1ulohhuEsrUMBN4yHKbGSE7eO2Aq5wIH53jMAkaDaUoTMiGUdGhJCfo
 WFhwmfPa6Mrtcx1/G4u31gKPjxJ6BYpGPQdVcYXQ1Q/02mGIz/C3dfMquL9S1tZz6S
 qK033DJlKnFFTeKQbT8FT5KXlVEifZYTDv2KtKUw=
Received: by mail-qt1-f169.google.com with SMTP id h16so10459048qtk.6
 for <linux-rockchip@lists.infradead.org>; Tue, 30 Apr 2019 06:51:56 -0700 (PDT)
X-Gm-Message-State: APjAAAWDCU89Syo3/A/HHJwWLsGCbbEAuPhiIo3HIoZlJ7JKjtAXmvZK
 nt8StfRvQWkgx+/JP6/8ZcS5aUZVH9Kww5INww==
X-Google-Smtp-Source: APXvYqysWBnERRiggEZsMb3Mmr6NNKePq261OyqR1iKPSacnJ82Idt1QSfZ2Dzyk1tH321Fn4H2E6up6IIy0+QNvHz4=
X-Received: by 2002:aed:3f6b:: with SMTP id q40mr14911616qtf.26.1556632315591; 
 Tue, 30 Apr 2019 06:51:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190416215351.242246-1-dianders@chromium.org>
 <20190416215351.242246-2-dianders@chromium.org> <20190430005357.GA13695@bogus>
 <CAD=FV=V3_NcBHdg5A8LvGMoVd_eLN0q=pXo_3f2GCdi5u2GP-Q@mail.gmail.com>
In-Reply-To: <CAD=FV=V3_NcBHdg5A8LvGMoVd_eLN0q=pXo_3f2GCdi5u2GP-Q@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 30 Apr 2019 08:51:43 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJGMBhqRw0D9ehsV=A7cQ4cPah=Ot335npraBdGm1Yhag@mail.gmail.com>
Message-ID: <CAL_JsqJGMBhqRw0D9ehsV=A7cQ4cPah=Ot335npraBdGm1Yhag@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: usb: dwc2: Document quirk to reset
 PHY upon wakeup
To: Doug Anderson <dianders@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_065157_100402_B2CFDB12 
X-CRM114-Status: GOOD (  24.51  )
X-Spam-Score: -5.3 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Randy Li <ayaka@soulik.info>, Heiko Stuebner <heiko@sntech.de>,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux USB List <linux-usb@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Ryan Case <ryandcase@chromium.org>,
 Elaine Zhang <zhangqing@rock-chips.com>,
 Minas Harutyunyan <hminas@synopsys.com>, Julius Werner <jwerner@chromium.org>,
 Alexandru M Stan <amstan@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 12:29 AM Doug Anderson <dianders@chromium.org> wrote:
>
> Hi,
>
> On Mon, Apr 29, 2019 at 5:54 PM Rob Herring <robh@kernel.org> wrote:
> >
> > On Tue, Apr 16, 2019 at 02:53:48PM -0700, Douglas Anderson wrote:
> > > On Rockchip rk3288 there's a hardware quirk where we need to assert
> > > the reset signal to the PHY when we get a remote wakeup on one of the
> > > two ports.  Document this quirk in the bindings.
> > >
> > > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > > Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> > > ---
> > >
> > > Changes in v2: None
> > >
> > >  Documentation/devicetree/bindings/usb/dwc2.txt | 2 ++
> > >  1 file changed, 2 insertions(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/usb/dwc2.txt b/Documentation/devicetree/bindings/usb/dwc2.txt
> > > index 6dc3c4a34483..f70f3aee4bfc 100644
> > > --- a/Documentation/devicetree/bindings/usb/dwc2.txt
> > > +++ b/Documentation/devicetree/bindings/usb/dwc2.txt
> > > @@ -37,6 +37,8 @@ Refer to phy/phy-bindings.txt for generic phy consumer properties
> > >  - g-rx-fifo-size: size of rx fifo size in gadget mode.
> > >  - g-np-tx-fifo-size: size of non-periodic tx fifo size in gadget mode.
> > >  - g-tx-fifo-size: size of periodic tx fifo per endpoint (except ep0) in gadget mode.
> > > +- snps,reset-phy-on-wake: If present indicates that we need to reset the PHY when
> > > +                          we detect a wakeup.  This is due to a hardware errata.
> >
> > Synopsys or Rockchip errata?
> >
> > Ideally, this should be implied by the controller or phy compatible.
>
> I have no idea.  The errata was described to me by Rockchip but I
> don't know if it's common to more than one board.
>
> You're right that we could do it on the controller compatible, but we
> have to be careful.  The two ports on rk3288 currently have the same
> compatible string but the errata only applies to one of them.  ...so
> I'd have to cue on not just the compatible string but also detect
> whether we're on the "OTG" port of the "host only" port.  That's not
> too hard, though since it is probe-able.
>
> I'm happy to spin this but I'll wait to hear from Felipe.  This is
> already in his testing tree, so presumably I should do a follow-up
> patch.  ...but if he wants me to re-post I can do that too.

Okay, I guess it is fine as-is.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
