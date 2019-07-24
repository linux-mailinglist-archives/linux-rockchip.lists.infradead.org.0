Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC2EB73F2E
	for <lists+linux-rockchip@lfdr.de>; Wed, 24 Jul 2019 22:30:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lM9fvb4yt9wEbjuL1xotgZLadRQaUsCyDGFHn8+4MCA=; b=ahBzQnTnedC9mD
	HptYUNM8d406mgm/5HYwkXvqC32YHazl4qMaFJ2gmn/uiD8aTt827BfPAjOC8sy52H3yGkhP3F3/y
	q/iUx3kjqm/skeziXFSHJPpxP+hxBuR0H+5XVjCT5M78RYBis/YGJGbyqSBdQUlGd2q+VcGr5Y8yU
	zdGsmoGpoIFgySt1rYWxx7UYWMJ23UCAdyiBxhLCdlD+MSy//edt4fIpyD0ezlDlFQXo/mKXiUDbN
	hUiyBZzseZ8+DTdc7FiUivH6UBm/do4A+rSdsjzwGqqZzSpPL8w1ntFwyTJzR44Y/hLFDvj7ByKw/
	MxmitKALK6cQJHLydEPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqNuE-0004Gf-0M; Wed, 24 Jul 2019 20:30:34 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqNuA-00048A-OG
 for linux-rockchip@lists.infradead.org; Wed, 24 Jul 2019 20:30:32 +0000
Received: by mail-io1-xd44.google.com with SMTP id k20so92373633ios.10
 for <linux-rockchip@lists.infradead.org>; Wed, 24 Jul 2019 13:30:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=W7b98j1DYhcpfb7OdCLFp27JFdB3a34V6jagTpBUbfA=;
 b=emPr0+o12gzDRDVdDGCZkDSc1awT8Sv7j4Y3PHnjX6+BEM8Ev916Ml6Ya5Ixn59rnj
 bYHRVD4vJpGgnK8uA8ZfT2527Pza1HUFVITP04fOwvVSTVtDbOhp0XyRD+J1U8RCZ7+q
 cQkjHaLlnu1CLlhPM31Ij364/ILIXnU5UveYQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=W7b98j1DYhcpfb7OdCLFp27JFdB3a34V6jagTpBUbfA=;
 b=o1scFQuAd8LyjVeiW+4lmUZs7KmV6NfeFIMJ/4u4FYGpVdNRMcELB6+Uy2+98KaygX
 xanmtM1z3rMiW63sMuMYrEi9dc7VNEB9wEiyA/HOaQhRZFpuNW6OesksY3tQHNoG60zR
 G4JN+G3rh0RdhgxVJ51ks03mhRPoKdqrrB9Zdc1hpqy4XlcMQPrLcyOv0rWo11V36OXO
 Ucn+MhwGtUf8500CuP/YgFNoydwC1N9tdxcXDXZqONmpeKyzjFXls/4e+dWv9iW7cYbC
 FmwjedJeNTZULB85jk/JW1nokLhCeiroS2i1oWij1oXh04wIWG68uyobRGeCBeSvssCm
 Svwg==
X-Gm-Message-State: APjAAAUE0ilVf/02u2y+aYs9J5H5b9KGlGnPYyZ3SFj6yGEPHFz5SgIC
 gfZu2HD4tWHvI8y4iTxqkzKMO/bAiM0=
X-Google-Smtp-Source: APXvYqzTQK0Ugl00VbT0BVoHPFr2ujMa6n7YrXsB0JUBEapL7bkyKBrewGPdI0d/cINmTpdInUFqPA==
X-Received: by 2002:a02:3093:: with SMTP id
 q141mr87806750jaq.128.1564000227598; 
 Wed, 24 Jul 2019 13:30:27 -0700 (PDT)
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com.
 [209.85.166.47])
 by smtp.gmail.com with ESMTPSA id y18sm46477114iob.64.2019.07.24.13.30.27
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 24 Jul 2019 13:30:27 -0700 (PDT)
Received: by mail-io1-f47.google.com with SMTP id g20so92387558ioc.12
 for <linux-rockchip@lists.infradead.org>; Wed, 24 Jul 2019 13:30:27 -0700 (PDT)
X-Received: by 2002:a5d:8ccc:: with SMTP id k12mr78564964iot.141.1563999754524; 
 Wed, 24 Jul 2019 13:22:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190722193939.125578-3-dianders@chromium.org>
 <20190724113508.47A356021C@smtp.codeaurora.org>
In-Reply-To: <20190724113508.47A356021C@smtp.codeaurora.org>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 24 Jul 2019 13:22:22 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WAsrBV9PzUz1qPzQru+AkOYZ5hsaWdhNYRTNqUfDeOmQ@mail.gmail.com>
Message-ID: <CAD=FV=WAsrBV9PzUz1qPzQru+AkOYZ5hsaWdhNYRTNqUfDeOmQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] mwifiex: Make use of the new sdio_trigger_replug()
 API to reset
To: Kalle Valo <kvalo@codeaurora.org>, Ulf Hansson <ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_133030_827554_7FAAA9BB 
X-CRM114-Status: GOOD (  18.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ganapathi Bhat <gbhat@marvell.com>, Brian Norris <briannorris@chromium.org>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Xinming Hu <huxinming820@gmail.com>, netdev <netdev@vger.kernel.org>,
 Andreas Fenkart <afenkart@gmail.com>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Amitkumar Karwar <amitkarwar@gmail.com>, LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Nishant Sarmukadam <nishants@marvell.com>, Avri Altman <avri.altman@wdc.com>,
 Linux MMC List <linux-mmc@vger.kernel.org>, David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Wed, Jul 24, 2019 at 4:35 AM Kalle Valo <kvalo@codeaurora.org> wrote:
>
> Douglas Anderson <dianders@chromium.org> wrote:
>
> > As described in the patch ("mmc: core: Add sdio_trigger_replug()
> > API"), the current mwifiex_sdio_card_reset() is broken in the cases
> > where we're running Bluetooth on a second SDIO func on the same card
> > as WiFi.  The problem goes away if we just use the
> > sdio_trigger_replug() API call.
> >
> > NOTE: Even though with this new solution there is less of a reason to
> > do our work from a workqueue (the unplug / plug mechanism we're using
> > is possible for a human to perform at any time so the stack is
> > supposed to handle it without it needing to be called from a special
> > context), we still need a workqueue because the Marvell reset function
> > could called from a context where sleeping is invalid and thus we
> > can't claim the host.  One example is Marvell's wakeup_timer_fn().
> >
> > Cc: Andreas Fenkart <afenkart@gmail.com>
> > Cc: Brian Norris <briannorris@chromium.org>
> > Fixes: b4336a282db8 ("mwifiex: sdio: reset adapter using mmc_hw_reset")
> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > Reviewed-by: Brian Norris <briannorris@chromium.org>
>
> I assume this is going via some other tree so I'm dropping this from my
> queue. If I should apply this please resend once the dependency is in
> wireless-drivers-next.
>
> Patch set to Not Applicable.

Thanks.  For now I'll assume that Ulf will pick it up if/when he is
happy with patch #1 in this series.  Would you be willing to provide
your Ack on this patch to make it clear to Ulf you're OK with that?

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
