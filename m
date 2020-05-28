Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF96E1E6E53
	for <lists+linux-rockchip@lfdr.de>; Fri, 29 May 2020 00:03:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SBqn/iFvPleYX681ihuPq46GIyvW/ktKF+Ogvy70ubg=; b=pahYRNWX6BGuai
	vbukYL6/bhOw1NM9MO2xYMmph4p0RmhbUC0Z8kenMZWsNXz/5MQtSI7qM4KV2x2dOn6CcH767AtD/
	o025YIdS5nt110M9rbBLyz/xgvP4NBzADQtW3zdMvjvcn17hGHaUAN69GbLrjfI1rnrobO8p0cV2T
	NnQ/yGTl+CJoBAOGo2HBUMZGsHTZzeiLD6JiEnUWInthaGuJxAQUny0dCaHzrqew9Ec0YWXsJbZuK
	Vk6oZK2N4YcgxbR1BpXplwOYF8XLpVYXCaELh7VEWyXnyV6H8hgEi/QWjAx/fpROBVy6YfEyfz8TJ
	zVbszvYH455M0+zn3kxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeQcJ-0000xl-7i; Thu, 28 May 2020 22:03:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeQc0-0000mj-Oz; Thu, 28 May 2020 22:02:54 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jeQbx-0005Eo-Rk; Fri, 29 May 2020 00:02:49 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: input: touchscreen: edt-ft5x06: change reg
 property
Date: Fri, 29 May 2020 00:02:49 +0200
Message-ID: <12739492.Qs6HZxOyHu@diego>
In-Reply-To: <20200528220136.GA748777@bogus>
References: <20200520073327.6016-1-jbx6244@gmail.com>
 <4727344.YYj2SkWT1V@diego> <20200528220136.GA748777@bogus>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_150252_814794_4F158293 
X-CRM114-Status: GOOD (  22.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-input@vger.kernel.org, Johan Jonker <jbx6244@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Freitag, 29. Mai 2020, 00:01:36 CEST schrieb Rob Herring:
> On Wed, May 20, 2020 at 08:41:59PM +0200, Heiko St=FCbner wrote:
> > Hi Dmitry,
> > =

> > Am Mittwoch, 20. Mai 2020, 19:13:24 CEST schrieb Dmitry Torokhov:
> > > Hi Johan,
> > > =

> > > On Wed, May 20, 2020 at 09:33:27AM +0200, Johan Jonker wrote:
> > > > A test with the command below gives this error:
> > > > =

> > > > arch/arm/boot/dts/rk3188-bqedison2qc.dt.yaml:
> > > > touchscreen@3e: reg:0:0: 56 was expected
> > > > =

> > > > The touchscreen chip on 'rk3188-bqedison2qc' and other BQ models
> > > > was shipped with different addresses then the binding currently all=
ows.
> > > > Change the reg property that any address will pass.
> > > > =

> > > > make ARCH=3Darm dtbs_check
> > > > DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/input/touchscre=
en/
> > > > edt-ft5x06.yaml
> > > > =

> > > > Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> > > > ---
> > > >  Documentation/devicetree/bindings/input/touchscreen/edt-ft5x06.yam=
l | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > =

> > > > diff --git a/Documentation/devicetree/bindings/input/touchscreen/ed=
t-ft5x06.yaml b/Documentation/devicetree/bindings/input/touchscreen/edt-ft5=
x06.yaml
> > > > index 383d64a91..baa8e8f7e 100644
> > > > --- a/Documentation/devicetree/bindings/input/touchscreen/edt-ft5x0=
6.yaml
> > > > +++ b/Documentation/devicetree/bindings/input/touchscreen/edt-ft5x0=
6.yaml
> > > > @@ -42,7 +42,7 @@ properties:
> > > >        - focaltech,ft6236
> > > >  =

> > > >    reg:
> > > > -    const: 0x38
> > > > +    maxItems: 1
> > > =

> > > Should we have a list of valid addresses instead of allowing any
> > > address? Controllers usually have only a couple of addresses that they
> > > support.
> > =

> > from what I've read, the fdt touchscreen controllers are just a generic
> > cpu with device-specific (or better panel-specific) firmware, which see=
ms
> > to include the address as well - so it looks to be variable.
> > =

> > But of course that is only 2nd hand knowledge for me ;-)
> > =

> > =

> > But also, the i2c address is something you cannot really mess up,
> > either it is correct and your touchscreen works, or it isn't and and
> > adding entries to this list every time a new address variant pops up
> > feels clumsy.
> =

> Is that an Ack?

for the patch itself:
Acked-by: Heiko Stuebner <heiko@sntech.de>


> I'm fine either way. It's really only useful if there's a single =

> address because with a list it could still be wrong just as any other =

> data like an interrupt number could be wrong.
> =

> Rob
> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
