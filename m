Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2963F39408
	for <lists+linux-rockchip@lfdr.de>; Fri,  7 Jun 2019 20:12:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RLLBlL1UMZmtCmrMHTx97yB8eDZnLcEUNDBdIWWR6gk=; b=ok5MqJSMJy0ZRJ
	HIzTr53AWlqOA2BZxj0eqYYh+9Sn9qyDAlY75Xwk7uzObIVn0Cb+XJmraLZMeNHVZ8GeUi/AbajyT
	NMvaeLtOswrUcxOMWJfqochIndgQCisEUHf9+i6yh+bK2/VEk701yp+79TObLk8fXiBVeZfQ91Krc
	sfcwCz/1zC15uHa2prcAtl4FQN/fJf3zWbLcEbPwjIFo8dCORDBBly34i76gjK3OGeNinUYTjZE2H
	ZEsZUkdB+XZ4yxawJFW4JyQd4qK93HwHXZBNtW5gD5qqOezRS+PvwjvB1S7vK/pHQRyTnPLTpfcuy
	opydYWMgGgY8vPO//odQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZJLn-0000jM-OH; Fri, 07 Jun 2019 18:12:27 +0000
Received: from mail-it1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZJLk-0000im-Iz
 for linux-rockchip@lists.infradead.org; Fri, 07 Jun 2019 18:12:26 +0000
Received: by mail-it1-x144.google.com with SMTP id m138so2454472ita.4
 for <linux-rockchip@lists.infradead.org>; Fri, 07 Jun 2019 11:12:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xLehMSYkK3XfUc0NYuOTQwZFYDyQEwqS9DQD1R1eHAk=;
 b=Htkn/o8Z18DC5jDpDQXQDKkSRSOkZr8DK1ynqG68Nsu83En9ojGIOff8TmkqZBRGpK
 CQjm63dpKUi/As2mwytCiEIv2F3dYXc/C26x5ekX0J67olxPg0C/uU6Azrdhx5oMfivO
 ANn2R3YckbO8MIPG6fFFFz7JF7EApgtYNH71E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xLehMSYkK3XfUc0NYuOTQwZFYDyQEwqS9DQD1R1eHAk=;
 b=JU6WTI/NcgYZzh6tK/FwD+DaBWJWGUuK01imZS7Vv002vqOudtJFHl98L9QqhmjcWV
 dme/WMfIWtSh7+W1ORjc+3YLkEotYRpyU4+10d9VRG+g4Iu6NPijlj6TtzbkgF3Axo51
 nvxkXg7+aOYsw52+TAz1Y51dNTaMvJ9sqv31um5pTTABU2jcaaW2vtHs5GrD4mIVrqIA
 SJEkpPcG50ov3NmHALSv0Kw4AR+qfpYegE5DFRaI5HV4ICyqYAc++5jMRkU7gPCNLvPC
 JdepAZG9lKT9G87MOjp4FLWTxaHG/vMHqEfflEFKlBgEHjmFhXoxGdhdViGyiXRsFWB1
 KLSQ==
X-Gm-Message-State: APjAAAW1jw8cW5bsYjzDmY7ECJ9ZGqb60HNyoNm45AHaGI6uXWhVg0PG
 10h/ZWirStmRGGIKB+xUMs3n72NYxDo=
X-Google-Smtp-Source: APXvYqwPeLjD1MXUVoSdOrBveNtaf7vzniQgzNPYbVlohhJPioNMzPr8nka5gocIMHCVcVxaBc1Ddw==
X-Received: by 2002:a02:c952:: with SMTP id u18mr13047156jao.23.1559931143325; 
 Fri, 07 Jun 2019 11:12:23 -0700 (PDT)
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com.
 [209.85.166.50])
 by smtp.gmail.com with ESMTPSA id w23sm920259iod.12.2019.06.07.11.12.23
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 Jun 2019 11:12:23 -0700 (PDT)
Received: by mail-io1-f50.google.com with SMTP id u19so2108598ior.9
 for <linux-rockchip@lists.infradead.org>; Fri, 07 Jun 2019 11:12:23 -0700 (PDT)
X-Received: by 2002:a5e:db0a:: with SMTP id q10mr872549iop.168.1559930787784; 
 Fri, 07 Jun 2019 11:06:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190603183740.239031-1-dianders@chromium.org>
 <20190603183740.239031-4-dianders@chromium.org>
 <42fc30b1-adab-7fa8-104c-cbb7855f2032@intel.com>
 <CAD=FV=UPfCOr-syAbVZ-FjHQy7bgQf5BS5pdV-Bwd3hquRqEGg@mail.gmail.com>
 <16b305a7110.2764.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
 <ff0e7b7a-6a58-8bec-b182-944a8b64236d@intel.com>
 <16b3223dea0.2764.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
In-Reply-To: <16b3223dea0.2764.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 7 Jun 2019 11:06:16 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XVmCYWe9rtTFakq8yu67R-97EPyAHWck+o3dRXzHCchQ@mail.gmail.com>
Message-ID: <CAD=FV=XVmCYWe9rtTFakq8yu67R-97EPyAHWck+o3dRXzHCchQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] brcmfmac: sdio: Disable auto-tuning around
 commands expected to fail
To: Arend Van Spriel <arend.vanspriel@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_111224_677509_21D00981 
X-CRM114-Status: GOOD (  24.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Madhan Mohan R <madhanmohan.r@cypress.com>,
 brcm80211-dev-list.pdl@broadcom.com, YueHaibing <yuehaibing@huawei.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 "David S. Miller" <davem@davemloft.net>, netdev <netdev@vger.kernel.org>,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>,
 Brian Norris <briannorris@chromium.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Double Lo <double.lo@cypress.com>, Adrian Hunter <adrian.hunter@intel.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Naveen Gupta <naveen.gupta@cypress.com>,
 Wright Feng <wright.feng@cypress.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 brcm80211-dev-list <brcm80211-dev-list@cypress.com>,
 Kalle Valo <kvalo@codeaurora.org>, Franky Lin <franky.lin@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Fri, Jun 7, 2019 at 6:32 AM Arend Van Spriel
<arend.vanspriel@broadcom.com> wrote:
>
> On June 7, 2019 2:40:04 PM Adrian Hunter <adrian.hunter@intel.com> wrote:
>
> > On 7/06/19 8:12 AM, Arend Van Spriel wrote:
> >> On June 6, 2019 11:37:22 PM Doug Anderson <dianders@chromium.org> wrote:
> >>>
> >>> In the case of dw_mmc, which I'm most familiar with, we don't have any
> >>> sort of automated or timed-based retuning.  ...so we'll only re-tune
> >>> when we see the CRC error.  If I'm understanding things correctly then
> >>> that for dw_mmc my solution and yours behave the same.  That means the
> >>> difference is how we deal with other retuning requests, either ones
> >>> that come about because of an interrupt that the host controller
> >>> provided or because of a timer.  Did I get that right?
> >>
> >> Right.
> >>
> >>> ...and I guess the reason we have to deal specially with these cases
> >>> is because any time that SDIO card is "sleeping" we don't want to
> >>> retune because it won't work.  Right?  NOTE: the solution that would
> >>> come to my mind first to solve this would be to hold the retuning for
> >>> the whole time that the card was sleeping and then release it once the
> >>> card was awake again.  ...but I guess we don't truly need to do that
> >>> because tuning only happens as a side effect of sending a command to
> >>> the card and the only command we send to the card is the "wake up"
> >>> command.  That's why your solution to hold tuning while sending the
> >>> "wake up" command works, right?
> >>
> >> Yup.
> >>
> >>> ---
> >>>
> >>> OK, so assuming all the above is correct, I feel like we're actually
> >>> solving two problems and in fact I believe we actually need both our
> >>> approaches to solve everything correctly.  With just your patch in
> >>> place there's a problem because we will clobber any external retuning
> >>> requests that happened while we were waking up the card.  AKA, imagine
> >>> this:
> >>>
> >>> A) brcmf_sdio_kso_control(on=True) gets called; need_retune starts as 0
> >>>
> >>> B) We call sdio_retune_hold_now()
> >>>
> >>> C) A retuning timer goes off or the SD Host controller tells us to retune
> >>>
> >>> D) We get to the end of brcmf_sdio_kso_control() and clear the "retune
> >>> needed" since need_retune was 0 at the start.
> >>>
> >>> ...so we dropped the retuning request from C), right?
> >>>
> >>>
> >>> What we truly need is:
> >>>
> >>> 1. CRC errors shouldn't trigger a retuning request when we're in
> >>> brcmf_sdio_kso_control()
> >>>
> >>> 2. A separate patch that holds any retuning requests while the SDIO
> >>> card is off.  This patch _shouldn't_ do any clearing of retuning
> >>> requests, just defer them.
> >>>
> >>>
> >>> Does that make sense to you?  If so, I can try to code it up...
> >>
> >> FWIW it does make sense to me. However, I am still not sure if our sdio
> >> hardware supports retuning. Have to track down an asic designer who can tell
> >> or dive into vhdl myself.
> >
> > The card supports re-tuning if is handles CMD19, which it does.  It is not
> > the card that does any tuning, only the host.  The card just helps by
> > providing a known data pattern in response to CMD19.  It can be that a card
> > provides good enough signals that the host should not need to re-tune.  I
> > don't know if that can be affected by the board design though.
>
> Right. I know it supports initial tuning, but I'm not sure about subsequent
> retuning initiated by the host controller.

My evidence says that it supports subsequent tuning.  In fact, without
this series my logs would be filled with:

  dwmmc_rockchip ff0d0000.dwmmc: Successfully tuned phase to XYZ

...where the phase varied by a few degrees each time.  AKA: it was
retuning over and over again and getting sane results which implies
that the tuning was working just fine.

The whole point of this series is not that the retuning was actually
broken or anything it was just pointless and blocking the bus while it
happened.  On rk3288 dw_mmc ports we also currently do pretty
extensive tuning, trying _lots_ of phases.  Thus the re-tuning was
blocking the bus for a significant amount of time.

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
