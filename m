Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DE6F7416B
	for <lists+linux-rockchip@lfdr.de>; Thu, 25 Jul 2019 00:29:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B3xl0IDHb5Hs342yql5H1ZjsRcsxHKm/o/irE0AvRDI=; b=VQmEUEAiZFovev
	auAY2A48poii/LulTSLj7VkOQ3kF+mcWZv45RshfsKzxQuNhVblwYblyh9sAZH+Ak08c0pq1oMyXn
	ru6OW5h/valVSutM1RDV5SlJfHOiRSwFETNKPjYbG6fAPdJDSWzxzD7DfpU4QsFtCIaoBacVtZsl/
	arZWhySLNsXwVd3XWRNfVe5Po7WgPT3Aqh8TteBZmj2ALT717vXK4snPzA5L/3NOQyvzU/TDDYoGa
	KDIGiHKm9SF+Cea29g3OCWrvmAXtCGjbGoyC5oHMZp2bOd1mLc13xR//n5i2eh4vqO5LfBcvOvyuH
	mmak54YKAGZH4oorlFag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqPlB-0003Qe-Rq; Wed, 24 Jul 2019 22:29:21 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqPks-0003Dz-OW
 for linux-rockchip@lists.infradead.org; Wed, 24 Jul 2019 22:29:04 +0000
Received: by mail-pg1-x541.google.com with SMTP id f5so13087621pgu.5
 for <linux-rockchip@lists.infradead.org>; Wed, 24 Jul 2019 15:29:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Fn+jt6MVuRg1+Q1VoeC7kF7YB1DWtgkKK5poDsavIDw=;
 b=fvrhMepM3MI9TPoODmOW5LyNT+V+Zv6zKDACGbQdZMFfJMEBeN532dTMY29v2KYnvK
 gv3SVwK1HLq9kXurmmQp5hZod9hm+25kRxxWLYwj5JHpfgjVhnJHigshI0hHcip0+RB3
 lwlIhZtlmEPh8a42feTA1c0HjjPpF6gs9us4A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Fn+jt6MVuRg1+Q1VoeC7kF7YB1DWtgkKK5poDsavIDw=;
 b=ijJPnHrdpiV1ZSfsEdnw4IxTnRR43+4UKnJrVsl8oUeigspJYTRx5vVJQPujLkr1fR
 gjGKSBEoFBxS1rNLAFMA8Dqr5bAo93gvr0U3JaAd0g0f1QvUtFEp9qiN1AlDRqvcehSp
 aRQ4AUuB3xc5NYXvr9qJjhYSk9fkCHMOZwUSZK7ea42lnSaeL6XqNr39ODAl1lHdf5EK
 vIIBLytyTopkwTGddvqIFXT7Vy1pDpf/dbYDhMF5PYTNl7M/JPA6/rnMQVHVovzUOcDz
 jxqyGUV+8BLB9Vh4dSQhjXwkcqXywpAiZbbYBBRRKunmEAJQxxb5ajGKN5nQow5tBi9R
 8zpA==
X-Gm-Message-State: APjAAAVOvwI/agB+lEW2t2dmnhwmxCQKvEZ9P5YbU1tPh0dkGMlvbVZC
 HVuFgHjeaOfo0ya8Vn0dKCRpDBOBw0s=
X-Google-Smtp-Source: APXvYqzJBNwoxjGzEN0XCKA/1hPnVeLk77TVQGr5Y2y9U+x1Ijy7VePf7vVAxC1GAayFqg6x2k1L5A==
X-Received: by 2002:aa7:8383:: with SMTP id u3mr13506735pfm.175.1564007340007; 
 Wed, 24 Jul 2019 15:29:00 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id z24sm83683358pfr.51.2019.07.24.15.28.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 24 Jul 2019 15:28:57 -0700 (PDT)
Date: Wed, 24 Jul 2019 15:28:53 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2 1/2] ARM: dts: rockchip: move rk3288-veryon display
 settings into a separate file
Message-ID: <20190724222853.GB250418@google.com>
References: <20190711223455.12210-1-mka@chromium.org>
 <CAD=FV=U5Z4QqyjzJpERwhvJFPATS+khVWBCStnaJKZR0hHBWNQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD=FV=U5Z4QqyjzJpERwhvJFPATS+khVWBCStnaJKZR0hHBWNQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_152902_830679_B79872F8 
X-CRM114-Status: GOOD (  14.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, Jul 24, 2019 at 02:19:35PM -0700, Doug Anderson wrote:
> Hi,
> 
> On Thu, Jul 11, 2019 at 3:35 PM Matthias Kaehlcke <mka@chromium.org> wrote:
> >
> > diff --git a/arch/arm/boot/dts/rk3288-veyron-edp.dtsi b/arch/arm/boot/dts/rk3288-veyron-edp.dtsi
> > new file mode 100644
> > index 000000000000..5d812e9e78aa
> > --- /dev/null
> > +++ b/arch/arm/boot/dts/rk3288-veyron-edp.dtsi
> > @@ -0,0 +1,124 @@
> > +// SPDX-License-Identifier: GPL-2.0
> 
> Please allow MIT license:
> 
> // SPDX-License-Identifier: (GPL-2.0+ OR MIT)

ok

> > +&pinctrl {
> > +       backlight {
> > +               bl_en: bl-en {
> > +                       rockchip,pins = <7 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
> > +               };
> > +       };
> > +};
> 
> nit: convention on Rockchip device tree files is that all pinctrl
> stuff is at the bottom.  Downstream I think I added comments about
> this but those didn't make it upstream.

I'll move it to the bottom

> Also: why did you move "bl_en" here but not "edp_hpd"?

'bl_en' is defined in rk3288-veyron-chromebook.dtsi, 'edp_hdp' in
rk3288.dtsi of the SoC.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
