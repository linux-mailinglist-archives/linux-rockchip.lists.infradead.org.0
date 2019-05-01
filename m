Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1156711077
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 May 2019 02:06:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dEswcmvdXBHe2P9dP0m1xruHTKoE5xP0RshSWjw8PV0=; b=Gu1WoapYdg5l5d
	Ur+pfVgNY2e0IUvBeW+Thqjjo0zkyOCdTBkuP6NJdU9UTvQD02cXcOguOOQBtAaaALk0FyvcHJ0gv
	KljLBeE3X6iNXLwzAQrkbbdrG9urJXrahOfHHDWp4Mit91xFvGZRIZnKAKZphDDvaGr/OGvJhHABQ
	onPqJOgrctQzNLNgifuKXX+uYj1zVXUEMsSmSBVydrIgo8M41DgDnq9LBkiM8Jq0CddFYRXAfGB1l
	W/D+m7R29Gg72+ajKuzn+uUf1io/6Wnv7G4xdh2cgdd5GuMLPfavulIMMhCAqZI/FD03ud8CvKPMo
	9sqVtUVbNSSsovi1tTRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLzFM-0000Ux-By; Thu, 02 May 2019 00:06:44 +0000
Received: from mail-vk1-xa41.google.com ([2607:f8b0:4864:20::a41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLzFI-0000U3-JK
 for linux-rockchip@lists.infradead.org; Thu, 02 May 2019 00:06:42 +0000
Received: by mail-vk1-xa41.google.com with SMTP id h17so147011vke.5
 for <linux-rockchip@lists.infradead.org>; Wed, 01 May 2019 17:06:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GRQ5pz9uPXwsISxqvh3bR/6vg4eDgpzQJxN66ATgxRs=;
 b=bIfWBSIawzPHvd2rcG/g2Aj4FB9S6F8w9a48ZYPSAxKA8S28JVG3C9EInd67aWyYuV
 18VZRmETBaPJZ1Ae+SOkHd8KTUCK54tOvP8PeI3gCgxcRdwoUTReR66QQKzNWx1DFQDC
 8OysOT2EBdnI7erWaDtovetHazfugNaUnGNqA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GRQ5pz9uPXwsISxqvh3bR/6vg4eDgpzQJxN66ATgxRs=;
 b=fxSNFMEeLe4uG3Rsv9dn7+JY6RQwrQXvQZZi7k/gNE1iKhjtbUBe/m5fYWCqTTbCe7
 nbKsq0kAw6d8UCDX9Kx8hzEQo8uQ0LtIDP27CQqzEn2AK+TtVX3gqJTUyXYpxR8DYcro
 eDpA9wWy57JPeB3RWEIS9EhUxaLgkV6Ua4/XmQ15/U1PmKplpRkfATCwsBtHcjWG05eK
 MiGHw4AePfPdWoNv8Fz1sNLenuf3O2i5y32y+rTQ3t7A+J1lQeX5u3ARhJtAhGLGAKBT
 tfsLsDaCsImSmP52yq9Bb6S7n4x2gdVYX6U0T0pzfCztketGDXEsLxsH9zrPJPl7OhBn
 lq9A==
X-Gm-Message-State: APjAAAXCdKWM6PYzNuOoIqgqYKxyUhJLL6sa2n+XygS2+PPqe0Sx7LF4
 VEDYx5BEW+00/Zyjq8K23DlZJDXW964=
X-Google-Smtp-Source: APXvYqzunS9Z6yM9bdpInvZXd/9ssbrTYVpMeHyXpya2jdxp3DseTTzI5tV6958s0r71dK/TtkJWhQ==
X-Received: by 2002:a1f:cd1:: with SMTP id 200mr296448vkm.62.1556755598738;
 Wed, 01 May 2019 17:06:38 -0700 (PDT)
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com.
 [209.85.221.178])
 by smtp.gmail.com with ESMTPSA id l200sm18652434vkl.25.2019.05.01.17.06.38
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 01 May 2019 17:06:38 -0700 (PDT)
Received: by mail-vk1-f178.google.com with SMTP id t74so150241vke.2
 for <linux-rockchip@lists.infradead.org>; Wed, 01 May 2019 17:06:38 -0700 (PDT)
X-Received: by 2002:a1f:b654:: with SMTP id g81mr290796vkf.18.1556755113799;
 Wed, 01 May 2019 16:58:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190418001356.124334-1-dianders@chromium.org>
 <20190418001356.124334-2-dianders@chromium.org>
In-Reply-To: <20190418001356.124334-2-dianders@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 1 May 2019 16:58:21 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UGjQz9Di=NL_r_g1Hofqv-FWBywfSm9Vu6gGr22wzPrA@mail.gmail.com>
Message-ID: <CAD=FV=UGjQz9Di=NL_r_g1Hofqv-FWBywfSm9Vu6gGr22wzPrA@mail.gmail.com>
Subject: Re: [PATCH v2 1/5] usb: dwc2: bus suspend/resume for hosts with
 DWC2_POWER_DOWN_PARAM_NONE
To: Minas Harutyunyan <hminas@synopsys.com>,
 Felipe Balbi <felipe.balbi@linux.intel.com>, 
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Artur Petrosyan <Arthur.Petrosyan@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_170640_638951_BF0F39DE 
X-CRM114-Status: GOOD (  22.57  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Amelie Delaunay <amelie.delaunay@st.com>, Randy Li <ayaka@soulik.info>,
 Alexandru M Stan <amstan@chromium.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Chris <zyw@rock-chips.com>,
 linux-usb@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Alan Stern <stern@rowland.harvard.edu>,
 Elaine Zhang <zhangqing@rock-chips.com>, Julius Werner <jwerner@chromium.org>,
 William Wu <william.wu@rock-chips.com>, Ryan Case <ryandcase@chromium.org>,
 Dinh Nguyen <dinguyen@opensource.altera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,


On Wed, Apr 17, 2019 at 5:15 PM Douglas Anderson <dianders@chromium.org> wrote:
>
> This is an attempt to rehash commit 0cf884e819e0 ("usb: dwc2: add bus
> suspend/resume for dwc2") on ToT.  That commit was reverted in commit
> b0bb9bb6ce01 ("Revert "usb: dwc2: add bus suspend/resume for dwc2"")
> because apparently it broke the Altera SOCFPGA.
>
> With all the changes that have happened to dwc2 in the meantime, it's
> possible that the Altera SOCFPGA will just magically work with this
> change now.  ...and it would be good to get bus suspend/resume
> implemented.
>
> This change is a forward port of one that's been living in the Chrome
> OS 3.14 kernel tree.
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
> This patch was last posted at:
>
> https://lkml.kernel.org/r/1446237173-15263-1-git-send-email-dianders@chromium.org
>
> ...and appears to have died the death of silence.  Maybe it could get
> some bake time in linuxnext if we can't find any proactive testing?
>
> I will also freely admit that I don't know tons about the theory
> behind this patch.  I'm mostly just re-hashing the original commit
> from Kever that was reverted since:
> * Turning on partial power down on rk3288 doesn't "just work".  I
>   don't get hotplug events.  This is despite dwc2 auto-detecting that
>   we are power optimized.
> * If we don't do something like this commit we don't get into as low
>   of a power mode.

OK, I spent the day digging more into this patch to confirm that it's
really the right thing to do.  ...and it still seems to be.

First off: I'm pretty sure the above sentence "If we don't do
something like this commit we don't get into as low of a power mode."
is totally wrong.  Luckily it's "after the cut" and not part of the
commit message.  Specifically I did a bunch of power testing and I
couldn't find any instance saving power after this patch.

...but, then I looked more carefully at all the history of this
commit.  I ended up at:

https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/306265/

...where I said that this fixes a resume speed regression.  More
details could be found at the linked bug, AKA:

https://bugs.chromium.org/p/chromium/issues/detail?id=548336

...but, sadly, I wasn't as verbose as I usually am and didn't describe
my exact testing setup.  So I tried to reproduce.  ...and I was able
to.  I tested on an rk3288-veyron-jerry with an empty USB hub plugged
into the left port (the host port) and my "servo 2" debug board hooked
up to the right port.  The "power_Resume" test in Chrome OS certainly
showed a regression in 3.14 when doing a suspend/resume cycle.


Digging into the logs in 3.14, before this patch I saw this in the logs:

usb 3-1: reset high-speed USB device number 2 using dwc2
usb 3-1.7: reset high-speed USB device number 3 using dwc2

...after this patch:

usb 3-1: USB disconnect, device number 2
usb 3-1.7: USB disconnect, device number 3
usb 3-1: new high-speed USB device number 4 using dwc2
usb 3-1: New USB device found, idVendor=1a40, idProduct=0201, bcdDevice= 1.00
usb 3-1: New USB device strings: Mfr=0, Product=1, SerialNumber=0
usb 3-1: Product: USB 2.0 Hub [MTT]
usb 3-1.7: new high-speed USB device number 5 using dwc2
usb 3-1.7: New USB device found, idVendor=1a40, idProduct=0101, bcdDevice= 1.11
usb 3-1.7: New USB device strings: Mfr=0, Product=1, SerialNumber=0
usb 3-1.7: Product: USB 2.0 Hub

...so basically my belief is that without this patch we're just sorta
leaving the device hanging and it get confused on resume.  After this
patch we behave slightly better.

I tested on 4.19 and found much the same.  There:

usb 2-1: reset high-speed USB device number 2 using dwc2
usb 2-1.7: reset high-speed USB device number 3 using dwc2

vs.

usb 2-1.7: USB disconnect, device number 3
usb 2-1: USB disconnect, device number 2
usb 2-1: new high-speed USB device number 4 using dwc2
usb 2-1: New USB device found, idVendor=1a40, idProduct=0201, bcdDevice= 1.00
usb 2-1: New USB device strings: Mfr=0, Product=1, SerialNumber=0
usb 2-1: Product: USB 2.0 Hub [MTT]
usb 2-1.7: new high-speed USB device number 5 using dwc2
usb 2-1.7: New USB device found, idVendor=1a40, idProduct=0101, bcdDevice= 1.11
usb 2-1.7: New USB device strings: Mfr=0, Product=1, SerialNumber=0
usb 2-1.7: Product: USB 2.0 Hub


On 4.19 I didn't actually notice a the same resume time regression,
presumably because things are happening more asynchronously there (I
didn't confirm this).  ...but in any case it seems like the right
thing to do to actually do the suspend.


I'll also re-iterate once more that I'm not claiming that my patch
helps with "partial power down".  It merely makes the "power savings
disabled" case work more properly.


I'll also note that my patch is already in Felipe's "testing/next"
branch which I continue to believe is correct and good.

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
