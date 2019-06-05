Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81871367A8
	for <lists+linux-rockchip@lfdr.de>; Thu,  6 Jun 2019 00:56:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Tw+dtfzGJwVR6BV8RyvCGRB9ZrKpFJvKGy23mZXI9k=; b=PpH9iwt2knkxj+
	YFMsQ9/qPPx8qgRnLlcIrXdRNBs23FqIjjtOXJmXIDqkTaxqgmtHFM4YdDJJZiZkdNPDAyuq/eAj1
	QJA4OZgfQkynZcnyzOGYENjMguQi6Dgq9o0TdJfTfC79TQPkV+H+fo1d7fdvrAUF3Bqt1ZMuvf54P
	Z75pPrfT6oPkPi2SvVAVgRIzM31sHeXlpDyFLkIzcxnUe7GruDfGTBuCvpFxVTaO72TVO1uewOV28
	c+B1BEV+395ZIUXIwrh35RQYsRE/xyLyKpXglUP+69QJp05SE6iPjpASpAfnjCXGAT4Vg20uHn5sq
	dUsBoVrg9L4ja1WtgMew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYeps-0007ns-I4; Wed, 05 Jun 2019 22:56:48 +0000
Received: from mail-it1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYepp-0007nS-3e
 for linux-rockchip@lists.infradead.org; Wed, 05 Jun 2019 22:56:46 +0000
Received: by mail-it1-x144.google.com with SMTP id m3so210422itl.1
 for <linux-rockchip@lists.infradead.org>; Wed, 05 Jun 2019 15:56:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5exRdrUtbUyeCW9OHOiVQExue5bAGFVKBlO3hebfXgU=;
 b=Dk9RMmCtQVXIS7madhd1BjIGxlHFetVfq7sbOV3EWXN3IwSUE/DPrHYpsPphGlpZdp
 BHeovziL9pxxS+tTeP0xK6McUug95q9Bg8Y37gyXYPKSOVcLIUnCYGxCzJPSw9Vl+yKo
 zIUCOhcg+0KFEG0qvEm7ONy/Tn4TbWmjqw05s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5exRdrUtbUyeCW9OHOiVQExue5bAGFVKBlO3hebfXgU=;
 b=bNbY7uKaoqmbtGVkOdwXBK4WkUJ/yaTt6DZjTU9w64MnVJm9BW9mPqeDvGFksLg6lu
 LRNJLQP//nVVvpYDB0nS7skuC3t33GmeV5IDx3RJG6A5A18RBJ0Ns2s72ZCyDyzg4i2A
 mgwxiBG5gaY7DfNim3BeES15mnvrFj03Vu7nuPdesQxpSLGSv3vUJ9L7bs9bJRTvwZ3h
 ZaVAshXkXs6zF5Ijs1ehMrS0iS3sahYYSHtu+OHS1rvHM3zE3/Wp1oJbDJTdNciMgUfo
 0Q4If4C9bNmZw8XtXbinfDvm/kiA/tsC+5L5HMyyEAn4vRWlsjPaFn1i0+qD+bruXiLm
 x7HQ==
X-Gm-Message-State: APjAAAWRk9KAphb6OIxseUFiKXrOrY2GYDJN/pxqBK/uTcvUhPoNd35R
 P0sM5EkIDILYePYnE7eCzDlcbxDHd5w=
X-Google-Smtp-Source: APXvYqzYR7OthDGpd6wx9pcvxcmCljkpd+97R2c8fFBbv2u0ik9pOiB96gpSBBkV2G+/AxhZNGJhiw==
X-Received: by 2002:a02:5489:: with SMTP id t131mr26152564jaa.70.1559775403020; 
 Wed, 05 Jun 2019 15:56:43 -0700 (PDT)
Received: from mail-it1-f174.google.com (mail-it1-f174.google.com.
 [209.85.166.174])
 by smtp.gmail.com with ESMTPSA id t133sm46174iof.21.2019.06.05.15.56.42
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 15:56:42 -0700 (PDT)
Received: by mail-it1-f174.google.com with SMTP id a186so214370itg.0
 for <linux-rockchip@lists.infradead.org>; Wed, 05 Jun 2019 15:56:42 -0700 (PDT)
X-Received: by 2002:a24:5a06:: with SMTP id v6mr14776129ita.160.1559775090284; 
 Wed, 05 Jun 2019 15:51:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190603183740.239031-1-dianders@chromium.org>
 <20190603183740.239031-3-dianders@chromium.org>
 <25fe1725-76fa-2739-1427-b0e8823ea4ae@broadcom.com>
In-Reply-To: <25fe1725-76fa-2739-1427-b0e8823ea4ae@broadcom.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 5 Jun 2019 15:51:19 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Vu3p_Y=Q3PLj37nSOU2WH-SyaG5K=f0O_UKu1==Zj-eA@mail.gmail.com>
Message-ID: <CAD=FV=Vu3p_Y=Q3PLj37nSOU2WH-SyaG5K=f0O_UKu1==Zj-eA@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] mmc: core: API for temporarily disabling
 auto-retuning due to errors
To: Arend Van Spriel <arend.vanspriel@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_155645_183116_D4973E5F 
X-CRM114-Status: GOOD (  30.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
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
Cc: Madhan Mohan R <madhanmohan.r@cypress.com>,
 brcm80211-dev-list.pdl@broadcom.com, LKML <linux-kernel@vger.kernel.org>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 netdev <netdev@vger.kernel.org>, Chi-Hsien Lin <chi-hsien.lin@cypress.com>,
 Brian Norris <briannorris@chromium.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Double Lo <double.lo@cypress.com>, Adrian Hunter <adrian.hunter@intel.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Avri Altman <avri.altman@wdc.com>, Matthias Kaehlcke <mka@chromium.org>,
 Naveen Gupta <naveen.gupta@cypress.com>, Wright Feng <wright.feng@cypress.com>,
 Linux MMC List <linux-mmc@vger.kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, Shawn Lin <shawn.lin@rock-chips.com>,
 brcm80211-dev-list <brcm80211-dev-list@cypress.com>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Wed, Jun 5, 2019 at 12:54 AM Arend Van Spriel
<arend.vanspriel@broadcom.com> wrote:
>
> On 6/3/2019 8:37 PM, Douglas Anderson wrote:
> > Normally when the MMC core sees an "-EILSEQ" error returned by a host
> > controller then it will trigger a retuning of the card.  This is
> > generally a good idea.
> >
> > However, if a command is expected to sometimes cause transfer errors
> > then these transfer errors shouldn't cause a re-tuning.  This
> > re-tuning will be a needless waste of time.  One example case where a
> > transfer is expected to cause errors is when transitioning between
> > idle (sometimes referred to as "sleep" in Broadcom code) and active
> > state on certain Broadcom WiFi cards.  Specifically if the card was
> > already transitioning between states when the command was sent it
> > could cause an error on the SDIO bus.
> >
> > Let's add an API that the SDIO card drivers can call that will
> > temporarily disable the auto-tuning functionality.  Then we can add a
> > call to this in the Broadcom WiFi driver and any other driver that
> > might have similar needs.
> >
> > NOTE: this makes the assumption that the card is already tuned well
> > enough that it's OK to disable the auto-retuning during one of these
> > error-prone situations.  Presumably the driver code performing the
> > error-prone transfer knows how to recover / retry from errors.  ...and
> > after we can get back to a state where transfers are no longer
> > error-prone then we can enable the auto-retuning again.  If we truly
> > find ourselves in a case where the card needs to be retuned sometimes
> > to handle one of these error-prone transfers then we can always try a
> > few transfers first without auto-retuning and then re-try with
> > auto-retuning if the first few fail.
> >
> > Without this change on rk3288-veyron-minnie I periodically see this in
> > the logs of a machine just sitting there idle:
> >    dwmmc_rockchip ff0d0000.dwmmc: Successfully tuned phase to XYZ
> >
> > Fixes: bd11e8bd03ca ("mmc: core: Flag re-tuning is needed on CRC errors")
> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > ---
> > Note that are are a whole boatload of different ways that we could
> > provide an API for the Broadcom WiFi SDIO driver.  This patch
> > illustrates one way but if maintainers feel strongly that this is too
> > ugly and have a better idea then I can give it a shot too.  From a
> > purist point of view I kinda felt that the "expect errors" really
> > belonged as part of the mmc_request structure, but getting it into
> > there meant changing a whole pile of core SD/MMC APIs.  Simply adding
> > it to the host seemed to match the current style better and was a less
> > intrusive change.
>
> Hi Doug,
>
> Sorry for bringing this up, but there used to be an issue with retuning
> in general, ie. the device handled tuning command 19 only once after
> startup. I guess that is no longer an issue given your results.

Right.  It definitely used to just happen once at bootup and you were
out of luck if that value was bad for some reason or if conditions
changed.  In cases in my own personal experience it was actually fine
to just tune once at bootup once all the tuning bugs in the controller
were fixed.  ...but I can imagine that some controllers could use
delay elements that drift more.  ...and in any case if you're getting
CRC errors trying a re-tuning seems a sensible thing to do anyway
(unless the CRC error was expected).

Looking at commit bd11e8bd03ca ("mmc: core: Flag re-tuning is needed
on CRC errors") you can definitely see evidence that tuning can happen
again after bootup.


> I guess
> the problem goes away when you disable device sleep functionality. No
> what you want in terms of power consumption, but would be good to know.
> You can disable it with below patch.

I can try testing this if it's useful, but I'm not sure what it will
prove.  I definitely don't want to disable device sleep, so it's not a
long term solution.  Are you just looking for extra evidence that this
is indeed my problem?  I don't think I need any extra evidence, do I?
The fact that patch #3 in this series fixes my problems (plus
debugging I did to arrive at that patch) means we absolutely know that
brcmf_sdio_kso_control() is responsible for the CRC errors that caused
the unneeded tuning.  Setting BRCMF_IDLE_INTERVAL to 0 will
effectively prevent brcmf_sdio_kso_control() from doing anything
useful (except in full system suspend, but that's not the case I was
testing anyway).

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
