Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBE25269AF
	for <lists+linux-rockchip@lfdr.de>; Wed, 22 May 2019 20:14:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZaI2MVMy9T5P95OOtcC48R03SoMOVy7HNwlYmGz6rbs=; b=ARjQvDDa6IiYbM
	y7TCHdpvMRm3vCUAJEd912EhQXQL+VYQL4Vwua8FkMpyN2kxXJ0xhzX3A9cdhbiwDgCVQ2r39mZYQ
	oflzXAzK9LC9H3Sq/Fvzx5WqUzezFUJbyL3EfKNM+8COtHASlmyE4hAlR0XOiDPceoZp+51O7E9oF
	nCygDJJzmQzK0Fwn1qSTOOUgjNUNvgXkTA1svzKlrcG8qibPusN84imzwS1Lz4v8BWwvxbT7zKC3a
	Ggyec/5LOtU5L9nQCZQ4vlxK3l+21Q7xwhin8EzTX2+tTxOb5zqYIZFv4c2uND5udbkJR+i7mFwSz
	OOYppP+bPYZjII30+A3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTVkZ-0001BF-Jt; Wed, 22 May 2019 18:14:03 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTVkV-00019w-QM
 for linux-rockchip@lists.infradead.org; Wed, 22 May 2019 18:14:01 +0000
Received: by mail-vs1-xe44.google.com with SMTP id l20so1993044vsp.3
 for <linux-rockchip@lists.infradead.org>; Wed, 22 May 2019 11:13:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=als0AafCzNcwDpUysRFXNRE8h4TvypenDMJfaAg3x3M=;
 b=Vkv0JYag5RXjIyQv9tMB50n4hClGqOqpOhB2GGfs8w4zpDNVkiYMS8ZJDnx0wvP5XB
 F92PsIOC6CoRrTLnhridwl8W06XlPQzWSBucGXbUj0XK8y4FlsyM1ZIF6ySGv9hgOIJN
 N3J3A51yuRx/HD8R01BubkDaT1q5W+xw/9QRY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=als0AafCzNcwDpUysRFXNRE8h4TvypenDMJfaAg3x3M=;
 b=bzNHPwuUnp+tsticsSWNxnPL5ESb8lNZMm+/Mbhk7TrAK4MNhAlCTFro1Aj1y/SCHg
 MN353kbmnE/o26+7epLJjQGbpuFGTx7xsNma53gSKellPbi2YlPvHJaoFF7dwsiahR89
 TZQoso0dl3sRl6EhGkW0h2u216AlLbnG5i76m9dCxfmED6fPLrWZqynrUsoAI9uAEdXg
 i1peT9LwY5V/13qKYwXbHXZ059XUBLkEByyyAEs4iDBUNXZ7O7s//XHsXpMVxVCy8V8g
 EkWtYy5vUC55AGxJdoTuMQx3jADiBsjNe9bpUTsfkpswolyzLkH+6tfoacRtZJun+6A1
 fIdg==
X-Gm-Message-State: APjAAAW/EQG6fe90vl9MVoRGQr1Ch/ZKNd/51ohfwVpul0WhygaMBVlc
 kVsugYHtLzkuHCMO7WP4zHPnHenn16g=
X-Google-Smtp-Source: APXvYqyHRHZJ5v1VCp/k3XfkqyMCN9AvD6CQppo21I7asFIq4tkCi05k6P9/BDd4SlDy1E5zs9o4uw==
X-Received: by 2002:a67:f049:: with SMTP id q9mr43420581vsm.93.1558548838081; 
 Wed, 22 May 2019 11:13:58 -0700 (PDT)
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com.
 [209.85.217.50])
 by smtp.gmail.com with ESMTPSA id n132sm1562845vke.18.2019.05.22.11.13.57
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 11:13:57 -0700 (PDT)
Received: by mail-vs1-f50.google.com with SMTP id x184so1981086vsb.5
 for <linux-rockchip@lists.infradead.org>; Wed, 22 May 2019 11:13:57 -0700 (PDT)
X-Received: by 2002:a67:ebd6:: with SMTP id y22mr28744866vso.87.1558548836544; 
 Wed, 22 May 2019 11:13:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190520220051.54847-1-mka@chromium.org> <3108277.JP5bvJISVS@phil>
In-Reply-To: <3108277.JP5bvJISVS@phil>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 22 May 2019 11:13:45 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Ww5pYOdknESUC4S06FvPzZ03Z-tW098r2N+9tbHNx7Vw@mail.gmail.com>
Message-ID: <CAD=FV=Ww5pYOdknESUC4S06FvPzZ03Z-tW098r2N+9tbHNx7Vw@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] ARM: dts: rockchip: disable GPU 500 MHz OPP for
 veyron
To: Heiko Stuebner <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_111359_888912_413AB937 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Wed, May 22, 2019 at 2:14 AM Heiko Stuebner <heiko@sntech.de> wrote:
>
> Am Dienstag, 21. Mai 2019, 00:00:49 CEST schrieb Matthias Kaehlcke:
> > The NPLL is the only safe way to generate 500 MHz for the GPU. The
> > downstream Chrome OS 3.14 kernel ('official' kernel for veyron
> > devices) re-purposes NPLL to HDMI and hence disables the OPP for
> > the GPU (see https://crrev.com/c/1574579). Disable it here as well
> > to keep in sync and avoid problems in case someone decides to
> > re-purpose NPLL.
> >
> > Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
>
> I was actually expecting to just drop the 500MHz opp from all
> of rk3288 ;-) .
>
> To not have to respin, I just modified your patch accordingly,
> see [0] and please holler if you disagree :-D .

Seems fine to me, thanks!

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
