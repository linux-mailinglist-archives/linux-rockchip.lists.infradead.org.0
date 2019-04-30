Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AE1AEFE7
	for <lists+linux-rockchip@lfdr.de>; Tue, 30 Apr 2019 07:26:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZOLV9Ia9872CA+Dgb/n54ib28Qc2ZnX1hgKWbYlx58k=; b=rlg1wwyZXj82R6
	6q/kOO1W87uwZOfsWGwYBYfOcrsOuQuEhZ5ai2xEXnAQini9IC+BU5j2oECdc0cyu7sF3rCYoHHwD
	zhRhAbWujCSOecxeVG+aPD/IIo3dbqfr0iqhyqNv2JjKenDU6tiLot4/OFgjn/8AQWIcI3QcO9UR0
	Vp77GdpnCtg5qS1qCKzqEJqVbgcUsJMol+xDdk0TN4yYfC52/YNuPatE3V+qajBd8ot1vz3aO3UBA
	3kH/JWMzoZx7SaNBNONDwYTZBPcrxUiDMyy8o/l85zqZLNDvZDcRnODt5CzI1lKUUEYshu/eGUHGv
	Jir3/OJZewpAas59x41w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLLHH-0003LA-Is; Tue, 30 Apr 2019 05:26:03 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLLHE-0003KT-QI
 for linux-rockchip@lists.infradead.org; Tue, 30 Apr 2019 05:26:02 +0000
Received: by mail-vs1-xe43.google.com with SMTP id g127so7290058vsd.6
 for <linux-rockchip@lists.infradead.org>; Mon, 29 Apr 2019 22:25:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dAZB9m78vyMqVnCUT5sxg+zHI1l8qWvxtWApzbGtN1A=;
 b=iRmEmm4IrU6e+wZHgKHwQwIr0tcTTb9ixCcFFUV+Q+c6fi2SKUyMCAt/qUlgKI5Zjz
 JohZhhouXMXuxCAlnL7+6YHVlqjsv5zhMjn+o41T14oN8A6DN+HAOIRuUdSHnW9rAwE2
 LY5Jyu7Yvsvk8uDEVZrh9r7avMXSXUJJPl1cs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dAZB9m78vyMqVnCUT5sxg+zHI1l8qWvxtWApzbGtN1A=;
 b=jRQWpSBujLSykL9T10Gd1D+bOIwCVcBYM4ioikPn3C+qVs7DTehxN81iUMo2sAIMqL
 CJ2L7Q5glHh0FzidsZ0GP5Vnw3ZypvX98OZ1HRnG+zaKDyxCGS56sxJMJwCQBDX/TXix
 RDhtbz3Phu+e2DC7w365EdC5yxTJKBb9ErjwotJ9ViltvefvQZj6dv5GhWT0YSWguCfc
 AJfS9XayK6O9nqyeCIuAAkypgdgzYEZnUtY94jHlxjuASopROkC14nqgIKO+DZWNO4By
 z71TXQnSIoX2KfnzicH8V3Y/nR2v/hCJdvYFs9+0aUDDSKiS4DPK28OTofYywYCnuPfj
 Scmw==
X-Gm-Message-State: APjAAAWuC7DX2CgSzvlLhqqi9eoCyVRgBfWb+KzDetvW3jzXpcOPz2y7
 He6jwryIG2O9nEseBZB723ksITA9sKo=
X-Google-Smtp-Source: APXvYqy++nF8/S9D3JypweS+6JJup/YQiPfQj8+I4Sq22GQEo70XtT2MMKlGX3Ee0IWVjpbwBBugiw==
X-Received: by 2002:a67:ec8c:: with SMTP id h12mr18498965vsp.28.1556601958546; 
 Mon, 29 Apr 2019 22:25:58 -0700 (PDT)
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com.
 [209.85.217.48])
 by smtp.gmail.com with ESMTPSA id b197sm36993914vkd.9.2019.04.29.22.25.55
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Apr 2019 22:25:56 -0700 (PDT)
Received: by mail-vs1-f48.google.com with SMTP id e207so3005369vsd.7
 for <linux-rockchip@lists.infradead.org>; Mon, 29 Apr 2019 22:25:55 -0700 (PDT)
X-Received: by 2002:a67:e88c:: with SMTP id x12mr9502003vsn.87.1556601955497; 
 Mon, 29 Apr 2019 22:25:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190418001356.124334-1-dianders@chromium.org>
 <20190418001356.124334-4-dianders@chromium.org> <20190430012328.GA25660@bogus>
In-Reply-To: <20190430012328.GA25660@bogus>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 29 Apr 2019 22:25:52 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UdtgAZBxuwjrrXtKT1sMfaELF8V193BF=UHg9fvM+yRw@mail.gmail.com>
Message-ID: <CAD=FV=UdtgAZBxuwjrrXtKT1sMfaELF8V193BF=UHg9fvM+yRw@mail.gmail.com>
Subject: Re: [PATCH v2 3/5] Documentation: dt-bindings: Add
 snps,need-phy-for-wake for dwc2 USB
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_222600_880722_B3F483F6 
X-CRM114-Status: GOOD (  23.75  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Amelie Delaunay <amelie.delaunay@st.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, devicetree@vger.kernel.org,
 Chris <zyw@rock-chips.com>, Stefan Wahren <stefan.wahren@i2se.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Alan Stern <stern@rowland.harvard.edu>,
 Artur Petrosyan <Arthur.Petrosyan@synopsys.com>,
 Elaine Zhang <zhangqing@rock-chips.com>,
 Alexandru M Stan <amstan@chromium.org>,
 Felipe Balbi <felipe.balbi@linux.intel.com>, Randy Li <ayaka@soulik.info>,
 Minas Harutyunyan <hminas@synopsys.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, Ryan Case <ryandcase@chromium.org>,
 William Wu <william.wu@rock-chips.com>, Julius Werner <jwerner@chromium.org>,
 Dinh Nguyen <dinguyen@opensource.altera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Mon, Apr 29, 2019 at 6:23 PM Rob Herring <robh@kernel.org> wrote:
>
> On Wed, Apr 17, 2019 at 05:13:54PM -0700, Douglas Anderson wrote:
> > Some SoCs with a dwc2 USB controller may need to keep the PHY on to
> > support remote wakeup.  Allow specifying this as a device tree
> > property.
> >
> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > ---
> > For relevant prior discussion on this patch, see:
> >
> > https://lkml.kernel.org/r/1435017144-2971-3-git-send-email-dianders@chromium.org
> >
> > I didn't make any changes from the prior version since I never found
> > out what Rob thought of my previous arguments.  If folks want a
> > change, perhaps they could choose from these options:
> >
> > 1. Assume that all dwc2 hosts would like to keep their PHY on for
> >    suspend if there's a USB wakeup enabled, thus we totally drop this
> >    binding.  This doesn't seem super great to me since I'd bet that
> >    many devices that use dwc2 weren't designed for USB wakeup (they
> >    may not keep enough clocks or rails on) so we might be wasting
> >    power for nothing.
>
> 1b. Use SoC specific compatible strings to enable/disable remote
> wake-up. We can debate what the default is I guess.

Unfortunately it's more than just SoC.  While you need the SoC to be
able to support this type of wakeup, you also need the board design,
firmware design, regulator design, etc.  ...so I don't think we can
just use the SoC specific compatible string.

In fact, while testing this I found that USB wakeup was totally broken
unless I enabled "deep suspend" mode on my system.  Something about
the clocks / wakeup sources in the shallow suspend totally blocked it
and I couldn't figure out what.

...so I believe it really needs to be something where someone has
said: I tested it out on this board and everything is setup properly
to support USB wakeup.


> > 2. Rename this property to "snps,wakeup-from-suspend-with-phy" to make
> >    it more obvious that this property is intended both to document
> >    that wakeup from suspend is possible and that we need the PHY for
> >    said wakeup.
> > 3. Rename this property to "snps,can-wakeup-from-suspend" and assume
> >    it's implicit that if we can wakeup from suspend that we need to
> >    keep the PHY on.  If/when someone shows that a device exists using
> >    dwc2 where we can wakeup from suspend without the PHY they can add
> >    a new property.
> >
> > Changes in v2: None
> >
> >  Documentation/devicetree/bindings/usb/dwc2.txt | 3 +++
> >  1 file changed, 3 insertions(+)

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
