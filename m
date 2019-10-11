Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90A4CD46C0
	for <lists+linux-rockchip@lfdr.de>; Fri, 11 Oct 2019 19:38:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bHau4D/ehIyNgGzb4BQxwjI+KiDZhFPbhC6IzxAdoDs=; b=KwDMHOFQaUXMTq
	MZ15fEMaH+WAkhyIM/IodLPcVWGtsrjsUIXT7sNNEd1gvL3h/eUhcdHIWv2I/Ut/oczdfKPPkJW3Y
	U8UPWeB6W0txQwrRMWbvEQccJg7TPwl4qKWk0hK1nSI/UJTTTN0JvmB5qtvsegK7o1sjgVR8sHAcr
	+tsrlgBczar2UCXclR3e9z8ZUgpICiw+MXo7y/njJCX2LY5EcLJ3XaxIuH189qs3KibyjlNrdusKI
	3n6pDqKMGkkEkubSD+PNaqySVwbt0RWfR0EsknfGOVtiym00gCm77Wnkw65KLNES0jW5bKNintjbH
	vQ7XyIswOahpEDrarHKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIyrm-00006o-O9; Fri, 11 Oct 2019 17:38:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIyrj-000066-Bl
 for linux-rockchip@lists.infradead.org; Fri, 11 Oct 2019 17:38:12 +0000
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com
 [209.85.160.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 949D42084C
 for <linux-rockchip@lists.infradead.org>; Fri, 11 Oct 2019 17:38:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570815490;
 bh=l+5ry87cxUtxYXHePyh81P8HafboxiTuOzmN9VqhiJk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=LlRKD5M91iiGyBEiY0WgbIp+afnfa2s28rl6m3oq5svRoCoM77KNkx+KrFBm3Ouq5
 bdOY6SCQO9x5JELKmu8F/X9Ea7kkjN8cLWRcL1t5EEABgYFVY9z3AOISoJAt5a9gCG
 dNO3ih5J2s/JITd9OHnonOLX8bqXb1CI2muS/pSo=
Received: by mail-qt1-f175.google.com with SMTP id t20so9646105qtr.10
 for <linux-rockchip@lists.infradead.org>; Fri, 11 Oct 2019 10:38:10 -0700 (PDT)
X-Gm-Message-State: APjAAAV8Dnn9GklMvdgEe/pSpSRuP2VATjddeGkIi+YmArHZtk1oWzTs
 laC2Hf2Nkjfb5d6YPWcCLOqwwrl+pS6MHEHFdg==
X-Google-Smtp-Source: APXvYqwefuFruP6xMHJnlcnKESPKmjjJZuruOEWzYmtK0vmrBCSga7oWWWnX/81OUdxUtsLgTzs6BSUeax/tyfAD1kQ=
X-Received: by 2002:a05:6214:407:: with SMTP id
 z7mr17009701qvx.79.1570815489727; 
 Fri, 11 Oct 2019 10:38:09 -0700 (PDT)
MIME-Version: 1.0
References: <20191011093342.3471-1-boris.brezillon@collabora.com>
 <20191011093342.3471-3-boris.brezillon@collabora.com>
 <CAL_JsqL_6xPyb4kTDR3dbLc4Uptwox=1F4zaGjHVmahNyk25=w@mail.gmail.com>
 <20191011145625.694238b1@dhcp-172-31-174-146.wireless.concordia.ca>
In-Reply-To: <20191011145625.694238b1@dhcp-172-31-174-146.wireless.concordia.ca>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 11 Oct 2019 12:37:57 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJYs3RaVqeFFuMbCSJMrWY7t=S=wWWpo5syL2ONag_woA@mail.gmail.com>
Message-ID: <CAL_JsqJYs3RaVqeFFuMbCSJMrWY7t=S=wWWpo5syL2ONag_woA@mail.gmail.com>
Subject: Re: [RESEND PATCH v2 2/4] media: dt-bindings: rockchip: Document
 RK3399 Video Decoder bindings
To: Boris Brezillon <boris.brezillon@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_103811_447349_80D2E59E 
X-CRM114-Status: GOOD (  14.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 kernel@collabora.com, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Sakari Ailus <sakari.ailus@iki.fi>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Nicolas Dufresne <nicolas@ndufresne.ca>, Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, Oct 11, 2019 at 7:56 AM Boris Brezillon
<boris.brezillon@collabora.com> wrote:
>
> On Fri, 11 Oct 2019 07:50:16 -0500
> Rob Herring <robh+dt@kernel.org> wrote:
>
> > On Fri, Oct 11, 2019 at 4:33 AM Boris Brezillon
> > <boris.brezillon@collabora.com> wrote:
> > >
> > > Document the Rockchip RK3399 Video Decoder bindings.
> >
> > You need some more headers for the example (or drop defines):
> >
> > Error: Documentation/devicetree/bindings/media/rockchip,vdec.example.dts:23.28-29
> > syntax error
> > FATAL ERROR: Unable to parse input tree
> > scripts/Makefile.lib:321: recipe for target
> > 'Documentation/devicetree/bindings/media/rockchip,vdec.example.dt.yaml'
> > failed
> > make[1]: *** [Documentation/devicetree/bindings/media/rockchip,vdec.example.dt.yaml]
> > Error 1
> > Makefile:1282: recipe for target 'dt_binding_check' failed
> > make: *** [dt_binding_check] Error 2
>
> Will fix that. BTW, I tried running make dtbs_check and faced a few
> errors on other yaml files (which is why I ended up sending the patch
> without fully validating the schema). Maybe those have been fixed (I'm
> based on the media tree which is based on 5.4-rc1).

Several fixes went into -rc2, but there's 2 fixes not in -rc2 (but are in next).

> Oh, and I also noticed that the generated example has
> #address-cells = <1>, #size-cells = <1> in the parent node, while my
> example expects <2>. Is there any way I can specify that somewhere, or
> should I just tweak the example to use 1 cell instead?

I think you can override it just adding '#address-cells = <2>;' or
tweak the example.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
