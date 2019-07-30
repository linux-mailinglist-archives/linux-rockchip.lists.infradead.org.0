Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02AE27AEAF
	for <lists+linux-rockchip@lfdr.de>; Tue, 30 Jul 2019 19:00:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nYyDttvxG9k9jE66frhkbXOgNVqA8JLeM4u1Wt68uxU=; b=S1EIHc4nLsIe/6
	323GXsBQR0qoZgVMzOx85e9IKQtfPeLA1hJDN+99z+sQqSVjeOA+Ini1CHCBOrvWDj9KY9NLSw/jd
	im35bP235GCfJWdPIp+w70Wu6Y7mFPGpNKoJaCN6MJ+Ju1nqjsterr1Ra++psEa9vNRiPBPP9RiVs
	vwdLDgyt3EzcXm8b4tzK3h5p1NXGWTglx1N0SuTwi1xhig0+Z0U4SotlI0ZipldQeJiTs9DblEaTN
	QrLBzpLYpdKNcWS/aiKY+iMp/RTnQL3DjQRe2Y14F2Uboxu/iQGzA/eWDMNpS75g7XrIoawKb8PDJ
	/T9CkoBqLEwx3EYXA3dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsVTk-0004xN-Qw; Tue, 30 Jul 2019 17:00:00 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsVTi-0004vw-6K
 for linux-rockchip@lists.infradead.org; Tue, 30 Jul 2019 16:59:59 +0000
Received: by mail-io1-xd43.google.com with SMTP id g20so129739982ioc.12
 for <linux-rockchip@lists.infradead.org>; Tue, 30 Jul 2019 09:59:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=thfSVMX6+HwxM/ty44YHwCabreMvWV/+Gb4a/AYAosM=;
 b=QDZk/EFUsh6U0OHs8YqCvTgja17nbMT2Y0sFIVcZgyTwIhEIGARc0EvYjU0bNaUDDw
 DhykaLBu959pAPwvEWt43vHt5h7OAeSRBBZov+gZsctSFuksXsHKukwZRmShoDWKA+8I
 wItHBj4PVtGEm32bkk7ccUJxqF53Ib3OaAdy0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=thfSVMX6+HwxM/ty44YHwCabreMvWV/+Gb4a/AYAosM=;
 b=Q5DA240ahxRYKkMpdNky3pd9DLUZdMCtUzSYlbwhgRC8hWZvMPBGqnEjw6yg1EBA30
 l/K0z7Tq3ndZi33Zd1IVZbjYnNoH6hKf8A2MJhWi1II+/EiouoFhRyemdiy94tMZJVpV
 tf1bdJQKoR/4lUJj5iYBNkIl7Nlf/yMLwKlQ9hc2GC8u83z+Ppe0n5rYix7NeKgTaXt8
 3WW5Wrtyh1/rs9baNdhqxrjKtCcZunjIQld7UopRQqUuuQUDE1jf1UQg88YkBFDblOzU
 uUV9tFw4OkxEqqqM+9xwL2tQsbiHPxBFw6XNAlV0vsQaaBTD8Ai5p/N/i2y0aV5nHBm8
 AG3A==
X-Gm-Message-State: APjAAAVHEaLzntFS5C5c5AByeI27QOyS5/LICpdjrTyM87XI3LvwSBJ/
 MUWgwWZBGTCy787OUzrL006cNGZ2CYE=
X-Google-Smtp-Source: APXvYqxkt480tYpUAB12DyMoWI8hFyu3ltF/08Kd/jkWQPVqFTWzt5YGmupcbwF1V1IX94UsoECKGg==
X-Received: by 2002:a02:1a86:: with SMTP id 128mr71311048jai.95.1564505996586; 
 Tue, 30 Jul 2019 09:59:56 -0700 (PDT)
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com.
 [209.85.166.45])
 by smtp.gmail.com with ESMTPSA id b3sm55895189iot.23.2019.07.30.09.59.55
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jul 2019 09:59:55 -0700 (PDT)
Received: by mail-io1-f45.google.com with SMTP id z3so10898153iog.0
 for <linux-rockchip@lists.infradead.org>; Tue, 30 Jul 2019 09:59:55 -0700 (PDT)
X-Received: by 2002:a02:5b05:: with SMTP id g5mr116310299jab.114.1564505994931; 
 Tue, 30 Jul 2019 09:59:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190722193939.125578-1-dianders@chromium.org>
 <CALtMJEB871Redpzx1u6G5GVEXz-kAP=vT6Wt98=X=xm4SEMeAQ@mail.gmail.com>
In-Reply-To: <CALtMJEB871Redpzx1u6G5GVEXz-kAP=vT6Wt98=X=xm4SEMeAQ@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 30 Jul 2019 09:59:42 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VfabHB=ALxvAZ_grg_V6Nkv1UkhHjHjp-_Fs=Bx94WAA@mail.gmail.com>
Message-ID: <CAD=FV=VfabHB=ALxvAZ_grg_V6Nkv1UkhHjHjp-_Fs=Bx94WAA@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] mmc: core: Fix Marvell WiFi reset by adding SDIO
 API to replug card
To: Andreas Fenkart <afenkart@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_095958_236203_ED9C075D 
X-CRM114-Status: GOOD (  15.08  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Ganapathi Bhat <gbhat@marvell.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Xinming Hu <huxinming820@gmail.com>, netdev <netdev@vger.kernel.org>,
 Brian Norris <briannorris@chromium.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Amitkumar Karwar <amitkarwar@gmail.com>, LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Nishant Sarmukadam <nishants@marvell.com>, Avri Altman <avri.altman@wdc.com>,
 linux-mmc <linux-mmc@vger.kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 David Miller <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Tue, Jul 30, 2019 at 1:47 AM Andreas Fenkart <afenkart@gmail.com> wrote:
>
> > * Sometimes while I was testing I saw "Fail WiFi 1" indicating a
> >   transitory failure.  Usually this was an association failure, but in
> >   one case I saw the device do "Firmware wakeup failed" after I
> >   triggered the reset.  This caused the driver to trigger a re-reset
> >   of itself which eventually recovered things.  This was good because
> >   it was an actual test of the normal reset flow (not the one
> >   triggered via sysfs).
>
> This error triggers something. I remember that when I was working on
> suspend-to-ram feature, we had problems to wake up the firmware
> reliable. I found this patch in one of my old 3.13 tree
>
>     the missing bit -- ugly hack to force cmd52 before cmd53.

Thanks for the reference!  At the moment I'm not terribly worried
about this particular failure case (compared to other failure modes)
because it's rare and it self-heals.

...my best guess, though, is that the problem isn't exactly the same.
The "Firmware wakeup failed" is a pretty generic error message, kind
of like "something went wrong" and not all instances of this message
will have the same root cause.

I actually dealt with a few suspend/resume issues around mwifiex
recently though.  If you ever uprev, you might be interested in:

b82d6c1f8f82 mwifiex: Make resume actually do something useful again
on SDIO cards
83293386bc95 mmc: core: Prevent processing SDIO IRQs when the card is suspended

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
