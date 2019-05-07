Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC8091644B
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 May 2019 15:10:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fNXHC2Y08JFd3wx/v0d8pkDpAFWvKB+heXG0btQTXQg=; b=gtLEjvWgv2eLpW
	WPghKAehU08WmAuCDZEmgl5R/6NMi1HrCFH6JQknTdHhl5cg7o+OsltbkR9T2U+4ZNW/nWSXyjyT4
	98HfT0ozSrnFywnFO768BU+JfXDxNvFoN7eP+TYd0O+ta8DcCa+PDfhuaO2xFJRIPRFhhpJirjMWk
	WeXR7FxqbXNntBxJP4xlRt327umb0hPwsZrfUe53lwqiBX0aCyO5JmHxtG6YVYzgh9YqzCC4n6Ipy
	hfSfLrEaPHrQ/QH7tO86tyUdBzMB5gUdG0vw2g9xRkGHbExQnAZc/h6U5oqTHGOY2DeHBSDsEaVU/
	zjeQNUEv8u/H5X+ZlHrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNzrw-0002jf-F3; Tue, 07 May 2019 13:10:52 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNzrt-0002ic-3l
 for linux-rockchip@lists.infradead.org; Tue, 07 May 2019 13:10:50 +0000
Received: by mail-ot1-x342.google.com with SMTP id i8so5095232oth.10
 for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2019 06:10:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pAgdAjAQ41e+k9RIOAaf7UwVPbjN19zPzB9CqtCyi8o=;
 b=S8yvcDyHGUuySevVVbPrSHU3t8AKRaaUF6KGBJy+P2dAJmiCw3ZklE01rjGliEZPW4
 C2yMlpkmHc1FHLb2I0w5+p1/BEmwSl2dl/i+CsulO4YWdZcu/KtbaktRVu7wpNNzIGXI
 zbFYwyoJyeynlp/9dqdvyIh1uQnz4KrRNOPaI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pAgdAjAQ41e+k9RIOAaf7UwVPbjN19zPzB9CqtCyi8o=;
 b=Eg/OY21b6mS67zPjpdf6twW7enhDMIslshC01zrEIcNrEgAevhplb930pdIGOpkkMH
 E9jrzBJ7K9NVsOfhYaXO9edIXuyMVF05H8XHAWVdYVA9oLXgJCncZF4GMEsfJEmwPA3p
 /EH2nZcQd1PGjUdSNdIVCW+QcLVLa6S+Pg5kgilEgCGA1TrPCB2ZrxIm/Z1BVNPjmxQr
 Cz248klAXHhb3UfWhCsJHO9poFR4e8KHsSPkJH10fLvge4T0MksfTUeLJxse7VtBzlyr
 xVGt5KqvmLLUgRm+QciEAhFYNsuigLf5Jw5KYwnyNXB+lCbTShvtepesUPMUW7IKIkD3
 o22Q==
X-Gm-Message-State: APjAAAUoTAeog3mBNw/7wLxYOSwBuPa0e/c7bOkI8/hWF2PZWBMCRfuJ
 CZOuvDiXoFQFn4WHlJrHhkO4Ot46sMtVv9Fad9DGLA==
X-Google-Smtp-Source: APXvYqyq6Oa3R9ujCSp5aX2pGJv5ioCCjL3fBgrFeYLXZnoYKeISsxqO4YXczAuWqNLSXAJntbNAN0ExsIJit4gfVno=
X-Received: by 2002:a05:6830:111:: with SMTP id
 i17mr4016302otp.322.1557234647846; 
 Tue, 07 May 2019 06:10:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190501121448.3812-1-jagan@amarulasolutions.com>
 <20190501193429.GA9075@ravnborg.org>
 <CAMty3ZAfwVyvmAmenhrQHJcy3eq-Yb61a4WLop_8jS-7vM940A@mail.gmail.com>
 <CAL_Jsq+mYy1JF_cM7sD82aLuUSnZnwsSD6-Q-W1uTp+_oSdRmg@mail.gmail.com>
In-Reply-To: <CAL_Jsq+mYy1JF_cM7sD82aLuUSnZnwsSD6-Q-W1uTp+_oSdRmg@mail.gmail.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Tue, 7 May 2019 18:40:36 +0530
Message-ID: <CAMty3ZBpRABe4u26ZN91JRB+vVF4Z96k-LDoe37d6EdVDkfJsg@mail.gmail.com>
Subject: Re: [PATCH 1/2] drm/panel: simple: Add FriendlyELEC HD702E 800x1280
 LCD panel
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_061049_157462_B00C91D5 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 devicetree <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Thierry Reding <thierry.reding@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sam Ravnborg <sam@ravnborg.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, May 6, 2019 at 8:34 PM Rob Herring <robh+dt@kernel.org> wrote:
>
> On Mon, May 6, 2019 at 4:56 AM Jagan Teki <jagan@amarulasolutions.com> wrote:
> >
> > Hi Sam,
> >
> > On Thu, May 2, 2019 at 1:04 AM Sam Ravnborg <sam@ravnborg.org> wrote:
> > >
> > > Hi Jagan
> > >
> > > On Wed, May 01, 2019 at 05:44:47PM +0530, Jagan Teki wrote:
> > > > HD702E lcd is FriendlyELEC developed eDP LCD panel with 800x1280
> > > > resolution. It has built in Goodix, GT9271 captive touchscreen
> > > > with backlight adjustable via PWM.
> > > >
> > > > Add support for it.
> > > >
> > > > Cc: Thierry Reding <thierry.reding@gmail.com>
> > > > Cc: Sam Ravnborg <sam@ravnborg.org>
> > > > Cc: David Airlie <airlied@linux.ie>
> > > > Cc: Daniel Vetter <daniel@ffwll.ch>
> > > > Cc: dri-devel@lists.freedesktop.org
> > > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > >
> > > Please submit the binding in a separate patch as per
> > > Documentation/devicetree/bindings/submitting-patches.txt
> >
> > Hmm.. prepared like this initially but few of my patches were combined
> > earlier even-though I sent it separately. anyway let me separate it
> > again.
>
> For what subsystem? All the maintainers that I was aware of doing that
> have stopped.

May be it was recent, Dmitry combined by previous dt and driver changes.

https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=ae97fb589648cd5558f1ceea317404a639307501
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=a5f50c501321249d67611353dde6d68d48c5b959

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
