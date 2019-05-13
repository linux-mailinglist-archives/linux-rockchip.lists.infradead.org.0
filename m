Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5572C1BE91
	for <lists+linux-rockchip@lfdr.de>; Mon, 13 May 2019 22:21:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p/brpDxTITDkX+N2v2IeC+2J9UCWZh9P32OJaIa13Sg=; b=oJqbPznGmtA7wM
	AxycplS+QYb25L4FvJ8NGfpYaGmLooIJfml7gj3ZdeUlD7L91tT6iNL+m5Ztr8RQLLL6wxnfv+Biw
	kKKgDnU0R2c6Ffg7la3FZ+dRmVXTIE02HJ0HvLdesUXqRsFOJjSgBYXnrPJPKRSKorzAYKzhY1iQY
	NP3t7nlR4PmsPyP3MxoEinNSyG1bjyJwnfzTJ527dXjiEUrrMXMb76N0tXnhV7wuAxWIwQsMiKj5c
	Q5xkd33PLHR4uCNM1kdOQJDSUJY4pJ4D7SwEnN86VU0ODZwaJKyAZMO5A1qgAApAVGOV8qiSMtWdq
	SiXWSHZt/W0tJwJCsYmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQHS8-0008Cq-A6; Mon, 13 May 2019 20:21:40 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQHS5-0008CV-It
 for linux-rockchip@lists.infradead.org; Mon, 13 May 2019 20:21:38 +0000
Received: by mail-ua1-x941.google.com with SMTP id g16so5330523uad.2
 for <linux-rockchip@lists.infradead.org>; Mon, 13 May 2019 13:21:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wuySUmJX7+xhfDb6fBuwBVyhUWbe9FHoL+dr16R0laQ=;
 b=ihynEujhHl0/kFd3e4X0WXi48xxh859HdVja7bEkA31bUjpl/penK1wa0zlw5r7dST
 JtzGce+FT5rp2fnJ/Cqp2xmViQjF8M1Pj5+MB7JlP63y4F3a5wwpu4tkLrs4Vudh/TIi
 inSG2Zfqn4/s2yGu+Vl3yRbG9RjwYr6RoklNQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wuySUmJX7+xhfDb6fBuwBVyhUWbe9FHoL+dr16R0laQ=;
 b=KVKLSzVug8t2dpmstGNf8JPoAA/IksN18IAYP8NTXToGkjXcPPJ4ZubGYVHuyYb+7l
 VwfdLAKJ0TfPr9S2ShkOBCMiXiopllRuaxyIgAgFollDakHdZKjFS6e+EDY5uWXo5Df+
 RqOzlhRBtON0kVT3gAxuwKSb/QSzv1meRmy9mzQg/j77Ayfs/wuStQlnXKnTvaq2D/HH
 1X7wVBSsW6i6sV6schVx980KD+xuaHeCMGo8CqRYxvEo4ledr0gWT9b0ysBAMiX0KKCw
 DkcohPLR9SH9mi6BlNNy3nsyK90dseAP2EFvvJQx5WIUJRtvUiiK6EqOTRQyqTWdLP0a
 lnEw==
X-Gm-Message-State: APjAAAWhP6Hv8Wc4KhMZVWQlo2EzyGc5JdfUMfsBFaJMqsJPBkKiPHlv
 1Uw/ekrObjEizIbzy55aGq0hb3zxG6s=
X-Google-Smtp-Source: APXvYqwhVGi5PPTUOicnnqgYwG7rDfJz4sM68YV7WHFm03fij/duHFuj1QlNOP2/62mJKpg+ylxWnw==
X-Received: by 2002:ab0:6083:: with SMTP id i3mr2812788ual.128.1557778896011; 
 Mon, 13 May 2019 13:21:36 -0700 (PDT)
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com.
 [209.85.217.46])
 by smtp.gmail.com with ESMTPSA id y72sm5980329vky.29.2019.05.13.13.21.35
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 13:21:35 -0700 (PDT)
Received: by mail-vs1-f46.google.com with SMTP id g187so8869048vsc.8
 for <linux-rockchip@lists.infradead.org>; Mon, 13 May 2019 13:21:35 -0700 (PDT)
X-Received: by 2002:a67:b348:: with SMTP id b8mr6727835vsm.144.1557778894709; 
 Mon, 13 May 2019 13:21:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190510223437.84368-1-dianders@chromium.org>
 <20190510223437.84368-5-dianders@chromium.org>
 <20190512074538.GE21483@sirena.org.uk>
 <CAD=FV=Xg96SGg-JDjEJRtC6jACcN9Xizcr-zV4rQwXYvuEvmRA@mail.gmail.com>
 <20190513160153.GD5168@sirena.org.uk>
 <CAD=FV=Xm-2oxit7doVAYJr28c-xHqUdt9PQC=WYpYfsAyUxuaw@mail.gmail.com>
 <20190513164738.GE5168@sirena.org.uk>
In-Reply-To: <20190513164738.GE5168@sirena.org.uk>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 13 May 2019 13:21:23 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XkkKRJN+Vv6+nf8EjXoCuO-0MG923v-0HKPMYg=mdZww@mail.gmail.com>
Message-ID: <CAD=FV=XkkKRJN+Vv6+nf8EjXoCuO-0MG923v-0HKPMYg=mdZww@mail.gmail.com>
Subject: Re: [PATCH 4/4] Revert "platform/chrome: cros_ec_spi: Transfer
 messages at high priority"
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_132137_618639_E2481243 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Nicolas Boichat <drinkcat@chromium.org>,
 Brian Norris <briannorris@chromium.org>, LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Guenter Roeck <groeck@chromium.org>, Benson Leung <bleung@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Mon, May 13, 2019 at 9:47 AM, Mark Brown <broonie@kernel.org> wrote:

> On Mon, May 13, 2019 at 09:03:28AM -0700, Doug Anderson wrote:
> > On Mon, May 13, 2019 at 9:02 AM Mark Brown <broonie@kernel.org> wrote:
>
> > > I'm not saying the other changes aren't helping, I'm saying that it's
> > > not clear that this revert is improving things.
>
> > If I add a call to force the pumping to happen on the SPI thread then
> > the commit I'm reverting here is useless though, isn't it?
>
> Well, I'm not convinced that that change is ideal anyway and it does
> leave you vulnerable to further changes in the SPI core pushing things
> out to calling context which feels like it isn't going to be helping
> robustness.

OK.  Here's my plan: in v2 I've still included this revert and you can
see how things look.  If you hate it as much as you think you will
then let me know and I'll send a v3 that avoids to forcing and re-adds
the realtime thread to cros_ec.

One note just so you're aware: For my particular device I'm not nearly
as concerned with latency / throughput as I am concerned with
transfers not getting interrupted once started.  I've added this
explicitly in the commit message now, too.  :-)


-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
