Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C481B11F000
	for <lists+linux-rockchip@lfdr.de>; Sat, 14 Dec 2019 03:32:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=avYSgr4jnhqR4VSzxi+tZkP1PAkA7vwe/mAjTriG/sA=; b=P62CnWxqyLbBa+
	47ZvNm7CbhopImfTnfslRBGJ5tcgwIct16XX58ITK8RiUIX11WvrkzU+Za60xGZ3mVZAkcpPoJnQW
	RnyL9ryhIXoeNeMNbxzz7rWNoXtEJcoLyoYE0kMQ8hCfVXIyHltN4QX1b7yc7EBlqIxzIWUV5j+Sw
	QxwhR3DDDTIV72rJNoa+S9YFphVZ3MCPBA3x1fZaPgL6mHgGyU8Rx6hN0CxoITmguFGZ3UWwjnTq5
	QsIQVw0sBI3OS3kwphpFYYBCCdVlAGbnD9eOcv1dzQIX+eypRlVK6gvFqp++wJlkX/pxZhkKTl7La
	CpHll6Q5QhyhJ+728CtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifxEI-0004aR-JF; Sat, 14 Dec 2019 02:32:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifxEF-0004a0-RE
 for linux-rockchip@lists.infradead.org; Sat, 14 Dec 2019 02:32:25 +0000
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
 [209.85.221.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CA50D2077B
 for <linux-rockchip@lists.infradead.org>; Sat, 14 Dec 2019 02:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576290743;
 bh=Eqc89Omw2jaNSyVCeKQpbJEzJvaQOE+Lhw+SBNFW1as=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=jZkbjakqLdjtzYgUNB/HYiBz3IBx4bt7kPaHKKN2tdiyTsc/jpOHeRDwVOQnR+K6Q
 su3Hi4gSfXWdv4OJ7ZXcgYPwxPVXUMKtoBZHIGiQEZLm+cCpc8+qFZUjagsB56r0Gw
 XQYDJVWfe4jc6/Tz2U9yjeSzMr2sPxMdZ4YluL8Q=
Received: by mail-wr1-f41.google.com with SMTP id y17so789625wrh.5
 for <linux-rockchip@lists.infradead.org>; Fri, 13 Dec 2019 18:32:22 -0800 (PST)
X-Gm-Message-State: APjAAAVC3g5MDdygtFm6+rK27lAnxHjuAovs1NupBTVAClrs2t4Sf5FN
 WsgACuoVcIbWy+bSP+b8rMzjNP5qb5/FmKLSvcg=
X-Google-Smtp-Source: APXvYqydbgYkBfEkSoHYnoVFyJ9oQyanZL22yafvKiwGMvhkX5QHDVviEUybs0JIej2bMIEu5E4NYaiS2pFxFoLorOM=
X-Received: by 2002:adf:81e3:: with SMTP id 90mr15946921wra.23.1576290741171; 
 Fri, 13 Dec 2019 18:32:21 -0800 (PST)
MIME-Version: 1.0
References: <20191213125414.90725-1-boris.brezillon@collabora.com>
 <20191213125414.90725-6-boris.brezillon@collabora.com>
 <20191213152332.GF4860@pendragon.ideasonboard.com>
 <20191213162550.59730f89@collabora.com>
In-Reply-To: <20191213162550.59730f89@collabora.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Sat, 14 Dec 2019 10:32:12 +0800
X-Gmail-Original-Message-ID: <CAGb2v64u34+ukyvGuDWDMyC2L3TE8-sPPx1SOP5RVAPF+ssooA@mail.gmail.com>
Message-ID: <CAGb2v64u34+ukyvGuDWDMyC2L3TE8-sPPx1SOP5RVAPF+ssooA@mail.gmail.com>
Subject: Re: [PATCH v3 5/7] media: dt-bindings: rockchip: Document RK3399
 Video Decoder bindings
To: Boris Brezillon <boris.brezillon@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_183223_928508_23E5276B 
X-CRM114-Status: GOOD (  20.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, kernel@collabora.com,
 Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Sakari Ailus <sakari.ailus@iki.fi>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Nicolas Dufresne <nicolas@ndufresne.ca>, Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Sat, Dec 14, 2019 at 4:38 AM Boris Brezillon
<boris.brezillon@collabora.com> wrote:
>
> On Fri, 13 Dec 2019 17:23:32 +0200
> Laurent Pinchart <laurent.pinchart@ideasonboard.com> wrote:
>
> > Hi Boris,
> >
> > Thank you for the patch.
> >
> > On Fri, Dec 13, 2019 at 01:54:12PM +0100, Boris Brezillon wrote:
> > > Document the Rockchip RK3399 Video Decoder bindings.
> > >
> > > Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> > > ---
> > > Changes in v3:
> > > * Fix dtbs_check failures
> > > ---
> > >  .../bindings/media/rockchip,vdec.yaml         | 71 +++++++++++++++++++
> > >  1 file changed, 71 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> > > new file mode 100644
> > > index 000000000000..7167c3d6a389
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> > > @@ -0,0 +1,71 @@
> > > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/media/rockchip,vdec.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Rockchip Video Decoder (VDec) Device Tree Bindings
> > > +
> > > +maintainers:
> > > +  - Heiko Stuebner <heiko@sntech.de>
> > > +
> > > +description: |-
> > > +  The Rockchip rk3399 has a stateless Video Decoder that can decodes H.264,
> > > +  HEVC an VP9 streams.
> > > +
> > > +properties:
> > > +  compatible:
> > > +    const: rockchip,rk3399-vdec
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  interrupts:
> > > +    maxItems: 1
> > > +
> > > +  clocks:
> > > +    items:
> > > +      - description: The Video Decoder AXI interface clock
> > > +      - description: The Video Decoder AHB interface clock
> > > +      - description: The Video Decoded CABAC clock
> > > +      - description: The Video Decoder core clock
> > > +
> > > +  clock-names:
> > > +    items:
> > > +      - const: aclk
> >
> > How about calling it "axi" ? None of the other clock names have "clk".
> >
> > > +      - const: iface
> >
> > And "ahb" here, as the AXI interface clock is also an interface clock ?
>
> Sure, I can do that.

Another possibility: "master" for the AXI clock, and "slave" for the AHB clock.
The AXI interface is likely the DMA master, while the AHB interface is a slave
interface for the control registers.

This is mostly based on hints from the crypto block.

ChenYu

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
