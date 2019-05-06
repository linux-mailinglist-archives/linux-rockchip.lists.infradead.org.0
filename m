Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58805155A8
	for <lists+linux-rockchip@lfdr.de>; Mon,  6 May 2019 23:34:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fRy/xKheaiACv6fCGa5QG3I8sXo7fOnSNlggkdmaPww=; b=NOA0fZmeRHMfV1
	lkCgneDb/HRpBLOHKR70F2X7vG+5qXnxydvpewhyLdNBYntj71aDbTasaLv2J5M2f6k3NNQage7VV
	/bUlmSznS3RMa36Gf0KJLJL1TA5qB7y322v/W5c9bsAM577zfMaab3hE4Tmu+rHcNzeLNp35VyHE3
	Vg1ZXaM2vk/7GfajT1Y6HEDfgNMxpz8EmTjNhcNiI+Z/47Ae1/3tPrZ+WvJhSrWHnKepSIHfUeaQS
	g8GnSCgWXlH/i+QKJAGlSDobg4E0JKsiqOV/jVCFxsOQeqEtSv4AXweNZoa/1qQaL7l5nTYEor8++
	gWK+kaYhafbHRS9PL3DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNlFX-0004vx-D4; Mon, 06 May 2019 21:34:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNlFU-0004vZ-DR
 for linux-rockchip@lists.infradead.org; Mon, 06 May 2019 21:34:14 +0000
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
 [209.85.160.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 535402087F
 for <linux-rockchip@lists.infradead.org>; Mon,  6 May 2019 21:34:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557178451;
 bh=6ekGxk1cgLDq3WsKx5cmGBr/cNA9+TIZZTguJ/soLIg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=hdhfOh66K1gA4j0VEG9xPa0LH1QlVqPUDFtnznYSEsbudy40JPhqU3EAZMsPSz9GN
 8tnpeFT3qN9YZ1oYL/k9zghyzTiAUGiTz7ioKZEtSyrcGfmRqPp3G/7IsYJpxiCCuW
 Did/vpksAzUaIydS2IcAxaDlTqcSLzS2jfj36A1U=
Received: by mail-qt1-f169.google.com with SMTP id m32so13577102qtf.0
 for <linux-rockchip@lists.infradead.org>; Mon, 06 May 2019 14:34:11 -0700 (PDT)
X-Gm-Message-State: APjAAAVXha+tucItfesf8Sywwm279RXWyRyOfMAjaaB40qUEQKnMWCtk
 nSx7+ghimzz0b+l/S3s9sPfnCKrhwRBeAwbYDA==
X-Google-Smtp-Source: APXvYqym5WoCRfUO8WlubAy4abQU//cny0O18+/BpnPmj0RqU9av4V1NT47hZC4WHFVq/E0Uyx4rDVwImA2w5QX1g5s=
X-Received: by 2002:ac8:3862:: with SMTP id r31mr5076391qtb.26.1557178450547; 
 Mon, 06 May 2019 14:34:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190503174730.245762-1-dianders@chromium.org>
 <CAGXu5jL9cJ+8scZ+Cg9yqdc9+rb563xs-qVjXXuPRJYjNa4Y8w@mail.gmail.com>
In-Reply-To: <CAGXu5jL9cJ+8scZ+Cg9yqdc9+rb563xs-qVjXXuPRJYjNa4Y8w@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 6 May 2019 16:33:59 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+NyMmRqOUehpPCo_PpnU7k+UmPGv0DUGH1uCb54WOtVA@mail.gmail.com>
Message-ID: <CAL_Jsq+NyMmRqOUehpPCo_PpnU7k+UmPGv0DUGH1uCb54WOtVA@mail.gmail.com>
Subject: Re: [PATCH] pstore/ram: Improve backward compatibility with older
 Chromebooks
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_143412_490986_603D76B7 
X-CRM114-Status: GOOD (  16.49  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Brian Norris <briannorris@chromium.org>, Tony Luck <tony.luck@intel.com>,
 Anton Vorontsov <anton@enomsg.org>, Douglas Anderson <dianders@chromium.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Colin Cross <ccross@android.com>,
 Guenter Roeck <groeck@chromium.org>, Julius Werner <jwerner@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, May 6, 2019 at 4:10 PM Kees Cook <keescook@chromium.org> wrote:
>
> From: Douglas Anderson <dianders@chromium.org>
> Date: Fri, May 3, 2019 at 10:48 AM
> To: Kees Cook, Anton Vorontsov
> Cc: <linux-rockchip@lists.infradead.org>, <jwerner@chromium.org>,
> <groeck@chromium.org>, <mka@chromium.org>, <briannorris@chromium.org>,
> Douglas Anderson, Colin Cross, Tony Luck,
> <linux-kernel@vger.kernel.org>
>
> > When you try to run an upstream kernel on an old ARM-based Chromebook
> > you'll find that console-ramoops doesn't work.
> >
> > Old ARM-based Chromebooks, before <https://crrev.com/c/439792>
> > ("ramoops: support upstream {console,pmsg,ftrace}-size properties")
> > used to create a "ramoops" node at the top level that looked like:
> >
> > / {
> >   ramoops {
> >     compatible = "ramoops";
> >     reg = <...>;
> >     record-size = <...>;
> >     dump-oops;
> >   };
> > };
> >
> > ...and these Chromebooks assumed that the downstream kernel would make
> > console_size / pmsg_size match the record size.  The above ramoops
> > node was added by the firmware so it's not easy to make any changes.
> >
> > Let's match the expected behavior, but only for those using the old
> > backward-compatible way of working where ramoops is right under the
> > root node.
> >
> > NOTE: if there are some out-of-tree devices that had ramoops at the
> > top level, left everything but the record size as 0, and somehow
> > doesn't want this behavior, we can try to add more conditions here.
> >
> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
>
> I like this; thanks! Rob is this okay by you? I just want to
> double-check since it's part of the DT parsing logic.

I'll leave it to you. It does fall into the case of supporting
downstream bindings that weren't reviewed (IIRC reviewed maybe, but
not accepted) which isn't great precedent. OTOH, it's a small change
for a largish number of devices.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
