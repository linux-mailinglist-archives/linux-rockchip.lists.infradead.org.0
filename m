Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF9B35C144
	for <lists+linux-rockchip@lfdr.de>; Mon,  1 Jul 2019 18:39:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qZIhn/KSlE01V+TE/U3FcRkd+FHxXB0pkIIUMMclmeg=; b=k3KjCmx9U6xmyb
	hL6j59U3LXQaCiUMtk8I0/nR4fP5zqunxqzcRdJmjjDmcurVcZ+3K8TEQ3dvAgKZScIfSBfgSY1Bz
	XJE4GJ/+j/7n8EU9q4ate2JBl77haGXgo3nrPs5vCekfSLuwChFhpKxyISVPVJLe6yuTRxhuOJDUr
	TAGi13OuadliBRCGAzzt9qkbKKetJssO4O5VadOrE0Gss+zHFzEyNyJWj85DbJD2m2urkMqrBTFzE
	GOfb80s3sEX+/2fJYiIOT635YTdgpPWO1QwXekn8w4z+XzNT/SGYS8lR2s6Nozz6IPdXZXxDvjd5t
	/hvVMo9evSEQhANh+RCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhzKw-00058o-7D; Mon, 01 Jul 2019 16:39:26 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhzKs-00058F-WF
 for linux-rockchip@lists.infradead.org; Mon, 01 Jul 2019 16:39:24 +0000
Received: by mail-io1-xd43.google.com with SMTP id u13so30332274iop.0
 for <linux-rockchip@lists.infradead.org>; Mon, 01 Jul 2019 09:39:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kppcviH+BoC+77/HRSzA2CtnCng6H6sR34sahxlv0iM=;
 b=l8cPKTj8ipi85OjiSdxsurBNgqkamorQzNfjx/xqkapjGRKCzoSEN1wrf0A0alRim5
 pqp047CPO1eIRcvQYOHaZ7kUNhu1N2LjG8SdFidYjiFofK4vUs9GcAZvA63g4wWTZ/CL
 zedE5gR5JSyeesKh8hGIk4cLkNCN36WaOwVAY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kppcviH+BoC+77/HRSzA2CtnCng6H6sR34sahxlv0iM=;
 b=damF8qWkdenuF3v3SHskcUNXNo9rN7YN+xbjdh795D8oUDnHqvoPUn08dkeHILeS3X
 uzu2RmkqsUNaYUnVYbCQnIDq/nzNudhHpRXtnqwGgBjCG1N1A5ZE+nHHSH7wdypvI1Zz
 p8qzeBNRVffMZHUANA5q4n2RZ+hG4PX/eTKzkFFRyI1SkT0iU5IFaek2Xi+bi3EYRmVN
 0z+/wxXbbW+RtD+x4nfW8rSc2BjoB4wE6eYalnEEj6iZ2HEA2xFsUICbDQRBzbuTr6Nq
 Ive041RZEkTDh1QcanYQZnRgc73QPL8ALAM2BNi1FtdMBwn5fTGnp2kYnawBQ7IoxZsu
 2IJg==
X-Gm-Message-State: APjAAAWFngElSKq/jiR04o2jp1l0/mqtev++FVecbCfeeKc//ttYHQiX
 46XuzZ0jc4Nynvc+VcYCopB9E7IPsZA=
X-Google-Smtp-Source: APXvYqyCPN0v7hMIDTrOhr0i5BkIRZY8aHdGuJe2nLIirm6KeK58UFXYiX8ChzzJWzCFyzuxR38PSg==
X-Received: by 2002:a6b:901:: with SMTP id t1mr21616946ioi.42.1561999161532;
 Mon, 01 Jul 2019 09:39:21 -0700 (PDT)
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com.
 [209.85.166.47])
 by smtp.gmail.com with ESMTPSA id w23sm10233860iod.12.2019.07.01.09.39.19
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 01 Jul 2019 09:39:19 -0700 (PDT)
Received: by mail-io1-f47.google.com with SMTP id k8so30338908iot.1
 for <linux-rockchip@lists.infradead.org>; Mon, 01 Jul 2019 09:39:19 -0700 (PDT)
X-Received: by 2002:a02:6597:: with SMTP id u145mr30862693jab.26.1561999159046; 
 Mon, 01 Jul 2019 09:39:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190401171724.215780-1-dianders@chromium.org>
 <20190401171724.215780-3-dianders@chromium.org>
 <20190630202246.GB15102@ravnborg.org>
 <20190630205514.GA17046@ravnborg.org>
In-Reply-To: <20190630205514.GA17046@ravnborg.org>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 1 Jul 2019 09:39:06 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WH4kmhQA0kbKcAUx=oOeqTZiQOFCXYpVWwq+mG7Y7ofA@mail.gmail.com>
Message-ID: <CAD=FV=WH4kmhQA0kbKcAUx=oOeqTZiQOFCXYpVWwq+mG7Y7ofA@mail.gmail.com>
Subject: Re: [PATCH v5 2/7] drm/panel: simple: Add ability to override typical
 timing
To: Sam Ravnborg <sam@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_093923_038769_92CF8BA3 
X-CRM114-Status: GOOD (  17.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org,
 =?UTF-8?Q?St=C3=A9phane_Marchesin?= <marcheu@chromium.org>,
 David Airlie <airlied@linux.ie>, Jeffy Chen <jeffy.chen@rock-chips.com>,
 LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 =?UTF-8?Q?Enric_Balletb=C3=B2?= <enric.balletbo@collabora.com>,
 Sean Paul <seanpaul@chromium.org>, Ezequiel Garcia <ezequiel@collabora.com>,
 Matthias Kaehlcke <mka@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Sun, Jun 30, 2019 at 1:55 PM Sam Ravnborg <sam@ravnborg.org> wrote:
>
> Hi Douglas.
>
> > > +
> > > +   /* Only add timings if override was not there or failed to validate */
> > > +   if (num == 0 && panel->desc->num_timings)
> > > +           num = panel_simple_get_timings_modes(panel);
> > > +
> > > +   /*
> > > +    * Only add fixed modes if timings/override added no mode.
> >
> > This part I fail to understand.
> > If we have a panel where we in panel-simple have specified the timings,
> > and done so using display_timing so with proper {min, typ, max} then it
> > should be perfectly legal to specify a more precise variant in the DT
> > file.
> > Or what did I miss here?
>
> Got it now.
> If display_mode is used for timings this is what you call "fixed mode".
> Hmm, if I got confused someone else may also be confused by this naming.

The name "fixed mode" comes from the old code, though I guess in the
old code it used to refer to a mode that came from either the
display_timing or the display_mode.

How about if I call it "panel_simple_get_from_fixed_display_mode"?
...or if you have another suggestion feel free to chime in.

NOTE: Since this feedback is minor and this patch has been outstanding
for a while (and is blocking other work), I am assuming that the best
path forward is for Heiko to land this patch with Thierry's Ack and
I'll send a follow-up.  Please yell if you disagree.  I'll respond to
each of your emails separately and then wait for your response before
sending the follow-up series.


-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
