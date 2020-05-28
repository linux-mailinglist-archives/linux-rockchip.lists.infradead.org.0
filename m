Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C071E6E4A
	for <lists+linux-rockchip@lfdr.de>; Fri, 29 May 2020 00:01:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g7R4ZadxGJGHT1W29VowjbAsRQArNpR0uiQuUf3DGiY=; b=BQWSImga+WcOqG
	MlJ+0oYc3auOzEkZ4GB3Nv33UJH7XfZZzZEv+NNX1/PdGzBiCDJhE4/SPMV7B3r9wdDBRPCgmXa0U
	q7xnwnwqV5u8tWi50ADQe1Odpadwux9Hpvydfoxyw3jqMcjhCV8W3w/khlJiqOLXQedD5ECVwcgHY
	xdm/aOyNJGv9VAMxK2C2h7nLM7ig0070tq5eiycGExyz433UoyjJCmjqF0Ey+B4fKxcOCiW8cYkth
	r09Pym+kG7cotMz8bH2Qke0dfdCyZZcchPukGITaGudkmpdCKp25jlpb1ANLktDV8xG+scLUCh1GF
	1Iw7cyJsGj8xKs8EBNAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeQb0-0000Ys-Dr; Thu, 28 May 2020 22:01:50 +0000
Received: from mail-il1-f194.google.com ([209.85.166.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeQap-0000Ri-PC; Thu, 28 May 2020 22:01:41 +0000
Received: by mail-il1-f194.google.com with SMTP id 17so529372ilj.3;
 Thu, 28 May 2020 15:01:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=ypTe2PhllcbFDiwKFVMlag8IDVx6GgqoGKohXERCZBQ=;
 b=pl4KBLYQ/DTFaOsasyn+KA7ay2AcpQmkm94QK0TiWEVwkn+77c9FIwptSWzlgdohqY
 +QcZOYYI4aAtWTDh7mgLUy186ZZUBKSnwA+Ph58KbiWkdquLmzjN72HfgBlv/Yx9xNrR
 Cy7CXxjrNEncy6lqfuH9cjb9PM2zS0VN5on95Y+z8CSRPcYgMCf/fqwDoZEG+CSfcPT/
 /CabGiTdX3zeTbKt9FdUwZ9673dQ9Kycyc2WHbSNs3LA0PqsZS2apqNGEMxJDqKjMvtc
 mtLDxwvclSZBMGhH5gISWJfbfnT1PDE0zdQBkdy0jLbXolYpZ5+qiOE/XGi8AJxsm+jX
 p6rg==
X-Gm-Message-State: AOAM533w98QVtSb0cMIzjXKG6OquEmDehIvGdwVU/1P57nNGQYAnmd87
 lDkM5yz3Bo3Pnofex/zULXH/GGo=
X-Google-Smtp-Source: ABdhPJzFT3oU/vjsNRn309VDH/DNiO+Z5WPTFKoWeipwpTJAZ6V1gzsWGOibx8+mO77rr6DZOlHjqA==
X-Received: by 2002:a92:2801:: with SMTP id l1mr5040474ilf.132.1590703298885; 
 Thu, 28 May 2020 15:01:38 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id f9sm3853884ile.39.2020.05.28.15.01.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 15:01:38 -0700 (PDT)
Received: (nullmailer pid 760172 invoked by uid 1000);
 Thu, 28 May 2020 22:01:36 -0000
Date: Thu, 28 May 2020 16:01:36 -0600
From: Rob Herring <robh@kernel.org>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH] dt-bindings: input: touchscreen: edt-ft5x06: change reg
 property
Message-ID: <20200528220136.GA748777@bogus>
References: <20200520073327.6016-1-jbx6244@gmail.com>
 <20200520171324.GS89269@dtor-ws> <4727344.YYj2SkWT1V@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4727344.YYj2SkWT1V@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_150139_817205_7ADDA9F0 
X-CRM114-Status: GOOD (  19.54  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.194 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.194 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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

On Wed, May 20, 2020 at 08:41:59PM +0200, Heiko St=FCbner wrote:
> Hi Dmitry,
> =

> Am Mittwoch, 20. Mai 2020, 19:13:24 CEST schrieb Dmitry Torokhov:
> > Hi Johan,
> > =

> > On Wed, May 20, 2020 at 09:33:27AM +0200, Johan Jonker wrote:
> > > A test with the command below gives this error:
> > > =

> > > arch/arm/boot/dts/rk3188-bqedison2qc.dt.yaml:
> > > touchscreen@3e: reg:0:0: 56 was expected
> > > =

> > > The touchscreen chip on 'rk3188-bqedison2qc' and other BQ models
> > > was shipped with different addresses then the binding currently allow=
s.
> > > Change the reg property that any address will pass.
> > > =

> > > make ARCH=3Darm dtbs_check
> > > DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/input/touchscreen/
> > > edt-ft5x06.yaml
> > > =

> > > Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> > > ---
> > >  Documentation/devicetree/bindings/input/touchscreen/edt-ft5x06.yaml =
| 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > =

> > > diff --git a/Documentation/devicetree/bindings/input/touchscreen/edt-=
ft5x06.yaml b/Documentation/devicetree/bindings/input/touchscreen/edt-ft5x0=
6.yaml
> > > index 383d64a91..baa8e8f7e 100644
> > > --- a/Documentation/devicetree/bindings/input/touchscreen/edt-ft5x06.=
yaml
> > > +++ b/Documentation/devicetree/bindings/input/touchscreen/edt-ft5x06.=
yaml
> > > @@ -42,7 +42,7 @@ properties:
> > >        - focaltech,ft6236
> > >  =

> > >    reg:
> > > -    const: 0x38
> > > +    maxItems: 1
> > =

> > Should we have a list of valid addresses instead of allowing any
> > address? Controllers usually have only a couple of addresses that they
> > support.
> =

> from what I've read, the fdt touchscreen controllers are just a generic
> cpu with device-specific (or better panel-specific) firmware, which seems
> to include the address as well - so it looks to be variable.
> =

> But of course that is only 2nd hand knowledge for me ;-)
> =

> =

> But also, the i2c address is something you cannot really mess up,
> either it is correct and your touchscreen works, or it isn't and and
> adding entries to this list every time a new address variant pops up
> feels clumsy.

Is that an Ack?

I'm fine either way. It's really only useful if there's a single =

address because with a list it could still be wrong just as any other =

data like an interrupt number could be wrong.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
