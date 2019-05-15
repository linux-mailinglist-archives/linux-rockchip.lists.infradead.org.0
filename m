Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A8D31FA2F
	for <lists+linux-rockchip@lfdr.de>; Wed, 15 May 2019 20:44:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LarsKQMubk34VpnIsUji/iUojGbdqB8FciPuSUYW6S4=; b=N9SVSGhbx7aAY5
	6AgbY9k/OARgC6uRp/92280EqsX13+R/dlNw8v459DwwR2Dl039nVF5/HTM7clJ4z0gVyjjvYrF1e
	140XQmriLxWHQh0koBE5UR7jnUNvZ7fCeGUinMNmgMue/c+phmlgFv3r34BdBASbJMN8eWSDEY/mz
	wZzH/lc/3/J5PFxTteR5MaeiCEH+yJT30N2Rh05ce0ZDF8BR+cLmYwMnCTI/0uOzh1gFdy6E4PoT4
	yBlmNg22OvvK9Ia7dnHnMrhkLzOByBsrAbCClfJxY5wtRgeOkEFGHpxImzLppUvYP94eFRQg3NHhA
	LKdEmC38dKzbnKcc9i5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQysj-0002jB-3v; Wed, 15 May 2019 18:44:01 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQysa-0002P3-Fr
 for linux-rockchip@lists.infradead.org; Wed, 15 May 2019 18:43:53 +0000
Received: by mail-vs1-xe44.google.com with SMTP id j184so578940vsd.11
 for <linux-rockchip@lists.infradead.org>; Wed, 15 May 2019 11:43:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vNECGk8CnSY+BUMqx/A6sNJnXy1K+tE5/+q6NrpNAeg=;
 b=BQ9VXLFElWFzf7izK1ym/zFCq1WxsSoI7IZR/etFVJ3c6xH3PwVo3az6lB+MkUP/Gj
 PxZMwkXe1rl5EjO3Kxfks/TZY3oYrwLodR/8iZJr/9CDD59tWt7jhU4zsZs0BYYwMRNN
 Iey0Dt7PXFPRad8sX/uvZhi1xQzvN9Br//u9s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vNECGk8CnSY+BUMqx/A6sNJnXy1K+tE5/+q6NrpNAeg=;
 b=WnGTAJ7XK0tBLpMSzL77pJKoJ2pLXZ+tSBoLdiBkfSTOws9t/2egB5KsfNbcpG8fLK
 QRqx2fXREqB4Ecm9K/H3a5b6OCl93z04ee3u3J3jKwpDoThNv4c/Cq6zoZcAxMVXtShj
 IPIH8eHUpwQnD+ostGxRUXzn1zGy2BXAxKl76+Mx8/MLuxr7aQT2W/lMr4I+D5dg1jms
 FNd4irTvc+DOPg/WVbx5UBijMGka1ExGGTSPeA5i0amk3SWuZM3If/+FKJZdeTyufZ6B
 2NjZJ/xliSqXeNT9B25X0MwdocKhKEws4H9MeGzOcBrsCTvnB55HRI3qTws5WNyB9Ldf
 jjMw==
X-Gm-Message-State: APjAAAURyOevka7zpRXPlFFlSmqcNhA9x0kZzbkGH52a5+FNFOaQY6tL
 VFQk5ho3YNO87PvLQ0bMsrjX5/srwCA=
X-Google-Smtp-Source: APXvYqxkzbi3guqqk5NE6SIj7/MH3JJPylgtJzm8yZz5NtcA520kto3S2RUHpkRsh0NDzLSTZFscdA==
X-Received: by 2002:a67:6801:: with SMTP id d1mr22216136vsc.209.1557945829026; 
 Wed, 15 May 2019 11:43:49 -0700 (PDT)
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com.
 [209.85.222.47])
 by smtp.gmail.com with ESMTPSA id t124sm768945vkf.49.2019.05.15.11.43.41
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 11:43:41 -0700 (PDT)
Received: by mail-ua1-f47.google.com with SMTP id 94so262394uam.3
 for <linux-rockchip@lists.infradead.org>; Wed, 15 May 2019 11:43:41 -0700 (PDT)
X-Received: by 2002:ab0:2692:: with SMTP id t18mr5386901uao.106.1557945821179; 
 Wed, 15 May 2019 11:43:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190424162827.5297-1-mka@chromium.org>
 <CAD=FV=W+QGLmhEaqGc-=wNFzmaCr_f4rb5e8KQ4ZmeRaNi_xCw@mail.gmail.com>
In-Reply-To: <CAD=FV=W+QGLmhEaqGc-=wNFzmaCr_f4rb5e8KQ4ZmeRaNi_xCw@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 15 May 2019 11:43:28 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WQ-yAeB_xU5UVHGWgsC=a9t_CtN9bHvZnoxkfuA9=zGw@mail.gmail.com>
Message-ID: <CAD=FV=WQ-yAeB_xU5UVHGWgsC=a9t_CtN9bHvZnoxkfuA9=zGw@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: rockchip: Add #cooling-cells entry for rk3288
 GPU
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_114352_561174_DC4CBE8E 
X-CRM114-Status: GOOD (  21.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Heiko Stuebner <heiko@sntech.de>, LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Wed, May 15, 2019 at 10:59 AM Doug Anderson <dianders@chromium.org> wrote:

> Hi,
>
> On Wed, Apr 24, 2019 at 9:28 AM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> > The Mali GPU of the rk3288 can be used as cooling device, add
> > a #cooling-cells entry for it.
> >
> > Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> > ---
> >  arch/arm/boot/dts/rk3288.dtsi | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
> > index ca7d52daa8fb..767e62908a6e 100644
> > --- a/arch/arm/boot/dts/rk3288.dtsi
> > +++ b/arch/arm/boot/dts/rk3288.dtsi
> > @@ -1275,6 +1275,7 @@
> >                 interrupt-names = "job", "mmu", "gpu";
> >                 clocks = <&cru ACLK_GPU>;
> >                 operating-points-v2 = <&gpu_opp_table>;
> > +               #cooling-cells = <2>; /* min followed by max */
> >                 power-domains = <&power RK3288_PD_GPU>;
> >                 status = "disabled";
> >         };
>
> Seems like a good idea to me.  Presumably we should also add this to
> the bindings?
>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>

I guess we could now also do a follow-up CL that starts using the GPU
as a cooling device.  Presumably it's still OK to specify this and it
will just be ignored if there's no GPU driver?  It's a little funny
because the upstream device tree uses the CPU to cool things down if
the GPU temperature sensor trips.  Downstream uses the GPU to cool
down the GPU.  ...though, of course, it's not really all that simple
since everything is packed in so tightly.

The other case that sticks as a sore thumb is the upstream
"rk3288-veyron-mickey" where all the comments still talk about the GPU
cooling but we have only the CPU cooling actually in the device tree.
:-)

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
