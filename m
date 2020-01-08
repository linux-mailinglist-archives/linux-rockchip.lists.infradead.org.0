Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3BF5134364
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 Jan 2020 14:07:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JmVGS/G0Xs4cZDuSUOqq4g4DhQVOdFBsKEWjBAn2leQ=; b=C3mNRIHwp1Iklj
	HkmN9hOUeyEJonsIFTf+Bjd6PdfRjKBVzefyImK3i49/wqBcUhhjk5CkWNqs0l5wzzfVkxg43AfQo
	vB2mG6sQ89rYcEszjcHmL+FvcjDLCILYo89zQAbI921wfZrZgE52NyNSFxlI0FmpmZSci6IQ/eYSc
	/aQxeMysq/lFwJUaDfobu7BZqWKFnbhdTDGHgS3wJVvYcBLnt5BLM2xZo6fxKi7pnn0/tYO3LTnse
	0oKGdkbZ8vMx3oGcoMvQ6ba9oTlzYBD8+6QgyZOzHJj9l0Dzb4yHJkcxYiUfHSptErvU6FLAZ0rq+
	z3udMkCH0a7Dl9Gdtsdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipB38-00061Q-QS; Wed, 08 Jan 2020 13:07:02 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipAvh-0005dL-NB
 for linux-rockchip@lists.infradead.org; Wed, 08 Jan 2020 12:59:24 +0000
Received: by mail-io1-xd44.google.com with SMTP id h8so3104593iob.2
 for <linux-rockchip@lists.infradead.org>; Wed, 08 Jan 2020 04:59:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oXLJuk6Ljv9MUgn7rnXyTz5fLHDWIgN+JrCATJrpHfk=;
 b=JWaQqcO4WH7GgBPNaCR5+frY0QNXqZwrgMa/E2qC1Nm8QS4i0m1mKIEofTkdhxyc94
 s2azXfphTczHB1vyK883H9eBLBEbwK17/JpKWuyalmH9/+kGbGW24hHOXSkGpQUD/NKk
 AjbeHlnx3folngOQc4ZyW26038F7UNzl06ulo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oXLJuk6Ljv9MUgn7rnXyTz5fLHDWIgN+JrCATJrpHfk=;
 b=Jdq6ihXGkad4qM3vNOrmDMIjK9yf6Optzx4PbVs6D+VcABkwf4Y78iYc5Z81ahkiNi
 hEUtVf+FHsD7key1qiGj0cDT2aym9UVlwMAMLq/tZ4JeupzBUp+yov00VEAiOWrOXZkt
 N1pBxogfKl2YjvLkm7pQQVg0s6x7PO3V8Zx10xpNNWBLlCEKWKIZkrAQDCAvVZNYzt5c
 qsg1LZgiH7BAduGyUkZ7ggRvOTZViPsII+s44FDw2vjG2UbWnfBTp71zsKCPWnPCktZd
 sFXMACyQb7A45mDJPRplP6WxTq+/RPDEDpt4OVuNGj3C8WTnZpHTC/w4AFMC0w6aLWl0
 41Gw==
X-Gm-Message-State: APjAAAUcD+7ot+9jIgfimF8N7ABeHqa+a9OCzZ6yvW91KLaB9O/aJJcO
 jCgiYAB2n7grRvCWXA66Sek7RSmBxcNaQzMR9Jbd1w==
X-Google-Smtp-Source: APXvYqwkIieL8pmn8cRfdxEw8THdXkDQZ2ce1QPzyAYn5Uz0TVYPqNUveRrGMH74WgCOyX5IzCzRvhNBJZIPnEFQm+A=
X-Received: by 2002:a02:b893:: with SMTP id p19mr3832359jam.103.1578488358424; 
 Wed, 08 Jan 2020 04:59:18 -0800 (PST)
MIME-Version: 1.0
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-11-jagan@amarulasolutions.com>
 <20191230125134.189ba860e7fc99b4ad2f1def@bidouilliste.com>
In-Reply-To: <20191230125134.189ba860e7fc99b4ad2f1def@bidouilliste.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Wed, 8 Jan 2020 18:29:07 +0530
Message-ID: <CAMty3ZDQfV5XXAiBynNwBw7-6rWMU-Zf34EQ1AjRf8r9+crrZw@mail.gmail.com>
Subject: Re: [PATCH 10/11] rockpro-rk3399: Enable SPI Flash
To: Emmanuel Vadot <manu@bidouilliste.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_045922_048640_FF2A76F2 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Simon Glass <sjg@chromium.org>, Kever Yang <kever.yang@rock-chips.com>,
 U-Boot-Denx <u-boot@lists.denx.de>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, Dec 30, 2019 at 5:21 PM Emmanuel Vadot <manu@bidouilliste.com> wrote:
>
>
>  Hi Jagan,
>
> On Sat, 21 Dec 2019 13:24:39 +0530
> Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> > Enable winbond SPI flash for ROC-PC-RK3399 board.
>
>  s/ROC-PC-RK3399/RockPro64/
>
> >
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> >  arch/arm/dts/rk3399-rockpro64-u-boot.dtsi | 4 ++++
> >  configs/rockpro64-rk3399_defconfig        | 2 ++
> >  2 files changed, 6 insertions(+)
> >
> > diff --git a/arch/arm/dts/rk3399-rockpro64-u-boot.dtsi b/arch/arm/dts/rk3399-rockpro64-u-boot.dtsi
> > index 4648513ea9..deaa3efd39 100644
> > --- a/arch/arm/dts/rk3399-rockpro64-u-boot.dtsi
> > +++ b/arch/arm/dts/rk3399-rockpro64-u-boot.dtsi
> > @@ -6,6 +6,10 @@
> >  #include "rk3399-u-boot.dtsi"
> >  #include "rk3399-sdram-lpddr4-100.dtsi"
> >  / {
> > +     aliases {
> > +             spi0 = &spi1;
>
>  That looks weird ... what's the point of this alias exactly ?

spi uclass would require alias number to bind the driver, no way to
escape as of now.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
