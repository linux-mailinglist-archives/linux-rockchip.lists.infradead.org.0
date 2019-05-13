Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF8C81BEAA
	for <lists+linux-rockchip@lfdr.de>; Mon, 13 May 2019 22:25:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3DRyuNkuLF/WzLTJqHruK77V8Ur2awPWpkgjEdcg5VU=; b=Uz7H3bE1HWBbxR
	WiY+huQ5rfgNRZYVYscxEqusW7ORuGhABWkyvFE9WozHEDyapoQq/Y7PkAu3BdxYXETqltdL5KIHH
	Rb65aIAAoy2VJuZsz12SXqRMYkca9vhRABYuQDi+3uoIHJAkQHi4oJ8TnPv7yDRNM0lqqTz9j6SpT
	I+ltoeK0Rusy/rs7aate7lh2IBBm0F5SvrNrG7o86adZV5dcCVu36DyFOl9trBnvAFRHKPQ5a9X3c
	GjktXIsgChrCbB2WuszW55nH18GJpPjsdhxKIhj47oaCVG560Y+H388Dm1elENUR/GTV3e7ifFbIx
	/W8UftUIZ64iVuWVZLwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQHVa-0002i1-SJ; Mon, 13 May 2019 20:25:14 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQHVX-0002hL-V3
 for linux-rockchip@lists.infradead.org; Mon, 13 May 2019 20:25:13 +0000
Received: by mail-vs1-xe44.google.com with SMTP id q64so8891716vsd.1
 for <linux-rockchip@lists.infradead.org>; Mon, 13 May 2019 13:25:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=s5749hj+ec8qMiNkDdVTE/yv4EVBb0STJhROaexO/ow=;
 b=aSzILZh1B8qR6DUScwEycKF1nqIky18KqZ5ulbFuZ49/8VSCk0RfsYIyjXbmjOqY4+
 v5VrAMcifpVcmVKK415z2GAmJJupcK+NY5AMUX4LVVM+faq3TlPY441Jg0LvzmxT4Du8
 ghz0j7IS4/ptx8mgYUVFCZA4ip/zRO01nTshs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=s5749hj+ec8qMiNkDdVTE/yv4EVBb0STJhROaexO/ow=;
 b=g0xArcqxLkkT06zmeqqe6dBZ5S+nQHWDsmIrbH3Ja6rZWe9LDsdeObs2SzdqE0hUA8
 lTObhqL6rEbe9GiupWjnsxn0EFEL1gLd5lBNfnfZlR/cJaaWtnJlEJ6j4qTo7SnSo4N9
 BMrLuOceJGK9e0qWzJ03hl+l3RsvACg11PVte+Jc+GNx+HI4zjnOCkAYmH4uqKSW5/1B
 gUTb0UFFZfmk2kziRX6LTPkVrqTO2sRIXpxBLg5rtA6P7yTITUeXbbc/6QL3fG5nLZte
 moGXj3vJAep6OOo5pXS7bEoFJAlhMR49mp3pGoDeNj9Tck++sqZcc75XrtwaUDH3Z3RW
 yOpw==
X-Gm-Message-State: APjAAAVmoz5gfiLQqLI80Hy3P5GwTA5fxiIC4GkInV7FpA1B19WGc4Fx
 Hq2J5bjNFfHsJpWqVECi+8B6l0QkR8A=
X-Google-Smtp-Source: APXvYqzTwlTb7iAqRqE4J7Bb3QYwLPZR6DHripzNEd8jLYo36YdmJzC7qAWRfxcThjD3xWHuHweSbA==
X-Received: by 2002:a67:ea53:: with SMTP id r19mr14771108vso.12.1557779109980; 
 Mon, 13 May 2019 13:25:09 -0700 (PDT)
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com.
 [209.85.217.45])
 by smtp.gmail.com with ESMTPSA id s195sm4436379vks.22.2019.05.13.13.25.08
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 13:25:09 -0700 (PDT)
Received: by mail-vs1-f45.google.com with SMTP id d128so8855092vsc.10
 for <linux-rockchip@lists.infradead.org>; Mon, 13 May 2019 13:25:08 -0700 (PDT)
X-Received: by 2002:a67:79ca:: with SMTP id u193mr13859822vsc.20.1557779108576; 
 Mon, 13 May 2019 13:25:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190510223437.84368-1-dianders@chromium.org>
 <20190510223437.84368-2-dianders@chromium.org>
 <20190512073301.GC21483@sirena.org.uk>
In-Reply-To: <20190512073301.GC21483@sirena.org.uk>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 13 May 2019 13:24:57 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UBic4qywgYQFGEXx_frD9ZoRJX7XGgDbQCvb2CbkBa9w@mail.gmail.com>
Message-ID: <CAD=FV=UBic4qywgYQFGEXx_frD9ZoRJX7XGgDbQCvb2CbkBa9w@mail.gmail.com>
Subject: Re: [PATCH 1/4] spi: For controllers that need realtime always use
 the pump thread
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_132511_999548_5C38816D 
X-CRM114-Status: GOOD (  16.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
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
 linux-spi <linux-spi@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Guenter Roeck <groeck@chromium.org>, Benson Leung <bleung@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Sun, May 12, 2019 at 10:05 AM Mark Brown <broonie@kernel.org> wrote:

> On Fri, May 10, 2019 at 03:34:34PM -0700, Douglas Anderson wrote:
> > If a controller specifies that it needs high priority for sending
> > messages we should always schedule our transfers on the thread.  If we
> > don't do this we'll do the transfer in the caller's context which
> > might not be very high priority.
>
> If performance is important you probably also want to avoid the context
> thrashing - executing in the calling context is generally a substantial
> performance boost.  I can see this causing problems further down the
> line when someone else turns up with a different requirement, perhaps in
> an application where the caller does actually have a raised priority
> themselves and just wanted to make sure that the thread wasn't lower
> than they are.  I guess it'd be nice if we could check what priority the
> calling thread has and make a decision based on that but there don't
> seem to be any facilities for doing that which I can see right now.

In my case performance is 2nd place to a transfer not getting
interrupted once started (so we don't break the 8ms rule of the EC).
My solution in v2 of my series is to take out the forcing in the case
that the controller wanted "rt" priority and then to add "force" to
the parameter name.  If someone wants rt priority for the thread but
doesn't want to force all transfers to the thread we can later add a
different parameter for that?

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
