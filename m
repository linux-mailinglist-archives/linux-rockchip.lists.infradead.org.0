Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD4DEFEB
	for <lists+linux-rockchip@lfdr.de>; Tue, 30 Apr 2019 07:30:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W7XXCPsAojuUgumHPG5KDV1qvsq+2p/mTYu/0TDMr2M=; b=IwWvA0s87eKep+
	xCdlk8ICE771MVUgW5DS5L0N2tTClAA/Vwbl/LXOIORlBu2VtsvKL0+4lkAF1vIyF4ZxMzAAg7tkx
	vnxQ6At4hZBUFGdoN5f/pQ13QK1P6I0SfiSCYKLLlB68LSuxi1mgJzNx008J2RwfUGvUZ0J0fGc/I
	vrsLrBC66pcq5fNSuXdlOz9sgeEKQevhIsKFygn0D8O4K78tQ9/ym5HzDkYeExtbA+2sWfK/nOlUK
	8ZDAxMgVV0/5KT8VoWGL002qQfSYqpb8ncYqOyGF351DvZ4/yfBjWfC/DZgd/9uSJwD76I4iq8FQ9
	xKbqvh1Tgvc+aIGxvmYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLLL1-0003pt-Qi; Tue, 30 Apr 2019 05:29:55 +0000
Received: from mail-vk1-xa42.google.com ([2607:f8b0:4864:20::a42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLLKy-0003pU-FG
 for linux-rockchip@lists.infradead.org; Tue, 30 Apr 2019 05:29:53 +0000
Received: by mail-vk1-xa42.google.com with SMTP id x194so2840289vke.0
 for <linux-rockchip@lists.infradead.org>; Mon, 29 Apr 2019 22:29:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oI6/mbFrFRIlv6U0u6swyj6hDvHAkiQ0dv4jYaZhLCk=;
 b=ck+wpiOtoHFncK/l3p2502NKVY3mfQ215NIogmFrEWBa6w1fEQdMgG1MU88zbsZqih
 m9bKZLCFITPnSS3fJ0EsRU0OIV7/QON22ZmROKou6SXtgBzULdEg5LGSeko8kTvukeI3
 p+qusiDWOsdxykgPSZpQiwM5hGHYA5olAXU30=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oI6/mbFrFRIlv6U0u6swyj6hDvHAkiQ0dv4jYaZhLCk=;
 b=lA3Rtg7mJ2FTe1W18X/xVM5YgjFCpeVq5IwX9e2Vl1D/kNwhNU1Lg+0JfEvDQiLg6N
 NfKKvLfN4iQsRPZMHInSRGP7zrT8HskO+9ps7rpAtnJWTBBh3MTsNqb6AwOMcRYoOjUl
 ZKq10BkwQ9nCaC/RuaAbufEue0taskieT1UWoO9sSdlPRbfsS6voVz/1r0YlaCJE0vS6
 ZC+eUu/n8CK4yj3VhWfSe5PHKWI1k3d0ufcIFGstkP/Ip6MZEqIJcol7kLedjhv6MjkJ
 tG6g1XtiV+hPgG2nChKgmxWjHOg6c+SzbaFQ8EkZe7ZqK16d+76hvoYj6N8up/n5E2Rb
 FOfg==
X-Gm-Message-State: APjAAAXd0x6ZzaWYL2d8ax7T6wW9T9jZeDbA3lKj/L8aWU/WI3uyiVxi
 gFvKCuP4cvtEm5j10jbD4Cmx16GME8I=
X-Google-Smtp-Source: APXvYqwbmFcQD2qsYMLbls+GHDF0aSbeKPRASS8FAZPe4aD0uPncKiWoiLleyBHqZnriahKnzwoE5w==
X-Received: by 2002:a1f:ca86:: with SMTP id a128mr22277375vkg.22.1556602191074; 
 Mon, 29 Apr 2019 22:29:51 -0700 (PDT)
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com.
 [209.85.222.51])
 by smtp.gmail.com with ESMTPSA id m7sm1645821vsm.33.2019.04.29.22.29.48
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Apr 2019 22:29:48 -0700 (PDT)
Received: by mail-ua1-f51.google.com with SMTP id t15so4338022uao.5
 for <linux-rockchip@lists.infradead.org>; Mon, 29 Apr 2019 22:29:48 -0700 (PDT)
X-Received: by 2002:ab0:2692:: with SMTP id t18mr1729807uao.106.1556602187963; 
 Mon, 29 Apr 2019 22:29:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190416215351.242246-1-dianders@chromium.org>
 <20190416215351.242246-2-dianders@chromium.org> <20190430005357.GA13695@bogus>
In-Reply-To: <20190430005357.GA13695@bogus>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 29 Apr 2019 22:29:44 -0700
X-Gmail-Original-Message-ID: <CAD=FV=V3_NcBHdg5A8LvGMoVd_eLN0q=pXo_3f2GCdi5u2GP-Q@mail.gmail.com>
Message-ID: <CAD=FV=V3_NcBHdg5A8LvGMoVd_eLN0q=pXo_3f2GCdi5u2GP-Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: usb: dwc2: Document quirk to reset
 PHY upon wakeup
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_222952_511172_7908ABB4 
X-CRM114-Status: GOOD (  19.75  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
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

Hi,

On Mon, Apr 29, 2019 at 5:54 PM Rob Herring <robh@kernel.org> wrote:
>
> On Tue, Apr 16, 2019 at 02:53:48PM -0700, Douglas Anderson wrote:
> > On Rockchip rk3288 there's a hardware quirk where we need to assert
> > the reset signal to the PHY when we get a remote wakeup on one of the
> > two ports.  Document this quirk in the bindings.
> >
> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> > ---
> >
> > Changes in v2: None
> >
> >  Documentation/devicetree/bindings/usb/dwc2.txt | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/usb/dwc2.txt b/Documentation/devicetree/bindings/usb/dwc2.txt
> > index 6dc3c4a34483..f70f3aee4bfc 100644
> > --- a/Documentation/devicetree/bindings/usb/dwc2.txt
> > +++ b/Documentation/devicetree/bindings/usb/dwc2.txt
> > @@ -37,6 +37,8 @@ Refer to phy/phy-bindings.txt for generic phy consumer properties
> >  - g-rx-fifo-size: size of rx fifo size in gadget mode.
> >  - g-np-tx-fifo-size: size of non-periodic tx fifo size in gadget mode.
> >  - g-tx-fifo-size: size of periodic tx fifo per endpoint (except ep0) in gadget mode.
> > +- snps,reset-phy-on-wake: If present indicates that we need to reset the PHY when
> > +                          we detect a wakeup.  This is due to a hardware errata.
>
> Synopsys or Rockchip errata?
>
> Ideally, this should be implied by the controller or phy compatible.

I have no idea.  The errata was described to me by Rockchip but I
don't know if it's common to more than one board.

You're right that we could do it on the controller compatible, but we
have to be careful.  The two ports on rk3288 currently have the same
compatible string but the errata only applies to one of them.  ...so
I'd have to cue on not just the compatible string but also detect
whether we're on the "OTG" port of the "host only" port.  That's not
too hard, though since it is probe-able.

I'm happy to spin this but I'll wait to hear from Felipe.  This is
already in his testing tree, so presumably I should do a follow-up
patch.  ...but if he wants me to re-post I can do that too.


-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
