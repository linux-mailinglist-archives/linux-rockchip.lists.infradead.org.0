Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 249FB121FF
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 May 2019 20:36:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xoLhVLgpalUmVoWWxEEN87RHzfVd0DSI4Ys0Z/qHwyg=; b=ardjJcvZsJ9Gmp
	KTaSuzapxZ/5hJRDXPa6xg3xPYsKEZgInnbYSRSU2heyVWt75BxItGyN0JFwe0781HFK93a5l91Hi
	9KlKpkGcD6idfjwykeHSnpXtIV56VJ/xjzBIRUhaE1sOzm5sbcUOpBNKTWBNaDmTGFI4LdfYm7WFz
	OKU9fWE8kImACEGe7LCSArB4kQT+O07qj8VlGkO6hmXIRWpr298CX8Uo2elSWBLArnkuAGKzum88E
	y8CWuSn9uutW7YLX+s0bR6SoAC0UYe05H1EsO7uKUc1svKbNtA3SeLmDf//YLfXLnqbl6CCt5BeCy
	3krBK9mq8Z8dY/nHK5IA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMGZF-00013c-Jl; Thu, 02 May 2019 18:36:25 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMGZC-000139-Nn
 for linux-rockchip@lists.infradead.org; Thu, 02 May 2019 18:36:24 +0000
Received: by mail-ua1-x943.google.com with SMTP id o33so1059284uae.12
 for <linux-rockchip@lists.infradead.org>; Thu, 02 May 2019 11:36:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rep+RFn3BdJQf0oo+RGjYfMB+zeAYnLgZKuY9nUKCQA=;
 b=k4niFnqgC6uT+WkOQ6wgsJcYaNgMLnTL7lVhPfpNfF/fWu3Z/FxIjhBpaj3wtHigDP
 oknx0uZtfuzo6ralUpJB0Vr5FJRCJ1w1O59dD+RG6do4ZDLCDZyWqsCtlvlAScWcCJFJ
 NlsBZybNdO639hEBLlKY4YqWfytlkksQKfBpM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rep+RFn3BdJQf0oo+RGjYfMB+zeAYnLgZKuY9nUKCQA=;
 b=GgXNuD8kk1MGzzAyV62yaR83S562V2MW45j/jUblN/0RcFACKD6flGlh6D2ftd3VLI
 +0+BozSozBRLEcjX+aTAcF0cuocy3JSoECE8ZJExgpSJ1zkKXd1JG3/vZXEqhnVeTZT7
 fmZCMbHWJ0F8T5nLDw/T56gav92WKoErG7OpNegRDy6mC5xNTKWmkR1vfOrY0RjZmRoM
 JJRtWiFcdIQtLGaTlHrUa5x+KyVDqqLXy5BVPG9lrmX1E8U9zvYJ9b/FDW5kC+8ZQPuu
 byLIrAQgJumItaJDe5zCoCp+oIAVPfW6Xc3mL9ZGzOPScaN/Hx/OL+zaRvdpzIqqGqq5
 NZIQ==
X-Gm-Message-State: APjAAAVve2JIPdxB16CTXFMezwry0V4ian+sB/tPKxW+L/Bu0IvcAvlA
 hxQxXl5GTHSPtEaQESEmpmm5NRxMb5A=
X-Google-Smtp-Source: APXvYqwjoQZd3ou4VMURwdF/4/JQJ+o6v18WqsC2xM5vGMokXEl8mDPCm1Mw7kuFr3zQ7qgPm7Xq9A==
X-Received: by 2002:ab0:2eb3:: with SMTP id y19mr2879043uay.45.1556822179470; 
 Thu, 02 May 2019 11:36:19 -0700 (PDT)
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com.
 [209.85.217.46])
 by smtp.gmail.com with ESMTPSA id d6sm10905569uad.10.2019.05.02.11.36.15
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 11:36:16 -0700 (PDT)
Received: by mail-vs1-f46.google.com with SMTP id b23so2009306vso.1
 for <linux-rockchip@lists.infradead.org>; Thu, 02 May 2019 11:36:15 -0700 (PDT)
X-Received: by 2002:a67:7cd1:: with SMTP id x200mr3103185vsc.144.1556822175074; 
 Thu, 02 May 2019 11:36:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190418001356.124334-1-dianders@chromium.org>
 <20190418001356.124334-4-dianders@chromium.org>
 <87pnpas1fx.fsf@linux.intel.com>
In-Reply-To: <87pnpas1fx.fsf@linux.intel.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 2 May 2019 11:36:01 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XTBgKnnswhfoQH3qWjpbp831e1L1+j+QCjxx2h=aQoog@mail.gmail.com>
Message-ID: <CAD=FV=XTBgKnnswhfoQH3qWjpbp831e1L1+j+QCjxx2h=aQoog@mail.gmail.com>
Subject: Re: [PATCH v2 3/5] Documentation: dt-bindings: Add
 snps,need-phy-for-wake for dwc2 USB
To: Felipe Balbi <felipe.balbi@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_113622_779114_A053B89E 
X-CRM114-Status: GOOD (  22.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
 Alexandru M Stan <amstan@chromium.org>, Randy Li <ayaka@soulik.info>,
 Rob Herring <robh+dt@kernel.org>, Minas Harutyunyan <hminas@synopsys.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, Ryan Case <ryandcase@chromium.org>,
 William Wu <william.wu@rock-chips.com>, Julius Werner <jwerner@chromium.org>,
 Dinh Nguyen <dinguyen@opensource.altera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Thu, Apr 25, 2019 at 5:40 AM Felipe Balbi
<felipe.balbi@linux.intel.com> wrote:
>
> Douglas Anderson <dianders@chromium.org> writes:
>
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
>
> checking file Documentation/devicetree/bindings/usb/dwc2.txt
> Hunk #1 FAILED at 37.
> Hunk #2 succeeded at 52 (offset -1 lines).
> 1 out of 2 hunks FAILED

Can you try applying this and the next two patches again?  ...or let
me know that you'd like me to repost?

Thanks!

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
