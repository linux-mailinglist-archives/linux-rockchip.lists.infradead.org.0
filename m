Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 145D12CAD4
	for <lists+linux-rockchip@lfdr.de>; Tue, 28 May 2019 17:59:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ns62Pz6YIs4Ytbp4HxFkmzjoRswGZo94D9wHCsqQRVM=; b=EZZnynRHPfjVwM
	JIUZ8F4aj5yoyhV3aanGA7vPkc60pZcNOF7ml9g7tRMk1TNhobnCRVIip+E2QxPwW6ro2e+7t59EU
	HrgTPu3f/VGUOzZe1Ysz1XtWx4X07AzOwtPpSYh6T1vd3eIxEDllVdCCOPU0DYd3ujr5PsmQ5tEdT
	ixVtzZ9gJmc3/JM3i4uOAQmRB6NxvejHw1C/SvcQ6trH4DAAEWcz6opgteTSk1dwKziYMvezuEk9G
	QyaJWZXoc0S2PU3P/CtCzRG9idleWtzaxECMzG1ohGWojkFzXjaz3XXutK290HXPF5JHfYUPZpLFe
	iwzjKRTm3+0sB4l6gWyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVeVd-00050j-UV; Tue, 28 May 2019 15:59:29 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVeVa-000502-FD
 for linux-rockchip@lists.infradead.org; Tue, 28 May 2019 15:59:28 +0000
Received: by mail-vk1-xa43.google.com with SMTP id r23so4801775vkd.12
 for <linux-rockchip@lists.infradead.org>; Tue, 28 May 2019 08:59:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wS8hoqDHHdUU+aVRiUjUMRbeoVex4X+b9To5bYeyjZ8=;
 b=JQnCETd2IGwTVEqh1W9deTB9fYhcQJX6SMUGhSDGjkZYZLhB0pKmx6lNWyqBBg4T3k
 YnYqFvYU1x9cmheUMM9BwRitTXwwaV9CqogdqQxH/UUbtvQx/7yZoICE1RcfqiQFYjjc
 SM3QyVkgaOPA7sDG30y2oiu2Ruha/g0sxwzKs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wS8hoqDHHdUU+aVRiUjUMRbeoVex4X+b9To5bYeyjZ8=;
 b=eBNTVYh7B2dPwjkdneE4wJewastOevAKxqUKzo82myNu9W7Ao1s19uI4212ywSnfQQ
 3On6NyQ+hppM3LYlDHFUk1yEFRA3VO+gtWwCcVjcY3oZC8e4pfmmUULkeaWB4DRVwsnI
 lNuF5KLV9KVnrUXAiBZPddkrbXVthJm2RAXTmrrbbLjwjEslsFdZp2Dauy4DFTphL2vf
 gqktgFBSC5LwOkIQe6X2KSI3rboamHk1ubOb5FgASDHyMEj2HaA1ECTpAnG+5S/vZuLL
 a7AncA+P2JxNAIM8WAZjTX4/h1Y0oDY8FN1vH/Ierc8TvmD+p4t+sPB0WXLJR29ql6zj
 Hllg==
X-Gm-Message-State: APjAAAXiSlvzuk+GmuGY1hVoPsPgUOziTqcPYWaE7kZM8LqrMf5MPvze
 ou9URQQgfN74UKiO55LbSICHFuM5jyE=
X-Google-Smtp-Source: APXvYqxiogrHSyukGw+LCh1H7K9OAaZQacR7iMYNmJ/azpF24JXkdnhwn7b9BYN2zl1FZ58pnKLnIg==
X-Received: by 2002:a1f:ddc3:: with SMTP id u186mr1537752vkg.87.1559059165128; 
 Tue, 28 May 2019 08:59:25 -0700 (PDT)
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com.
 [209.85.217.44])
 by smtp.gmail.com with ESMTPSA id l132sm1669221vkd.39.2019.05.28.08.59.24
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 08:59:24 -0700 (PDT)
Received: by mail-vs1-f44.google.com with SMTP id w124so464528vsb.11
 for <linux-rockchip@lists.infradead.org>; Tue, 28 May 2019 08:59:24 -0700 (PDT)
X-Received: by 2002:a67:ebd6:: with SMTP id y22mr57926194vso.87.1559058725303; 
 Tue, 28 May 2019 08:52:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190517225420.176893-2-dianders@chromium.org>
 <20190528121833.7D3A460A00@smtp.codeaurora.org>
In-Reply-To: <20190528121833.7D3A460A00@smtp.codeaurora.org>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 28 May 2019 08:51:53 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VtxdEeFQsdF=U7-_7R+TXfVmA2_JMB_-WYidGHTLDgLw@mail.gmail.com>
Message-ID: <CAD=FV=VtxdEeFQsdF=U7-_7R+TXfVmA2_JMB_-WYidGHTLDgLw@mail.gmail.com>
Subject: Re: [PATCH 1/3] brcmfmac: re-enable command decode in sdio_aos for
 BRCM 4354
To: Kalle Valo <kvalo@codeaurora.org>,
 Arend van Spriel <arend.vanspriel@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_085926_512994_0CBD978E 
X-CRM114-Status: GOOD (  20.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Madhan Mohan R <MadhanMohan.R@cypress.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, YueHaibing <yuehaibing@huawei.com>,
 Double Lo <double.lo@cypress.com>, netdev <netdev@vger.kernel.org>,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>,
 Brian Norris <briannorris@chromium.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 brcm80211-dev-list.pdl@broadcom.com, Matthias Kaehlcke <mka@chromium.org>,
 Wright Feng <wright.feng@cypress.com>, Adrian Hunter <adrian.hunter@intel.com>,
 brcm80211-dev-list@cypress.com, "David S. Miller" <davem@davemloft.net>,
 Naveen Gupta <naveen.gupta@cypress.com>, Franky Lin <franky.lin@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Tue, May 28, 2019 at 5:18 AM Kalle Valo <kvalo@codeaurora.org> wrote:
>
> Douglas Anderson <dianders@chromium.org> wrote:
>
> > In commit 29f6589140a1 ("brcmfmac: disable command decode in
> > sdio_aos") we disabled something called "command decode in sdio_aos"
> > for a whole bunch of Broadcom SDIO WiFi parts.
> >
> > After that patch landed I find that my kernel log on
> > rk3288-veyron-minnie and rk3288-veyron-speedy is filled with:
> >   brcmfmac: brcmf_sdio_bus_sleep: error while changing bus sleep state -110
> >
> > This seems to happen every time the Broadcom WiFi transitions out of
> > sleep mode.  Reverting the part of the commit that affects the WiFi on
> > my boards fixes the problem for me, so that's what this patch does.
> >
> > Note that, in general, the justification in the original commit seemed
> > a little weak.  It looked like someone was testing on a SD card
> > controller that would sometimes die if there were CRC errors on the
> > bus.  This used to happen back in early days of dw_mmc (the controller
> > on my boards), but we fixed it.  Disabling a feature on all boards
> > just because one SD card controller is broken seems bad.  ...so
> > instead of just this patch possibly the right thing to do is to fully
> > revert the original commit.
> >
> > Fixes: 29f6589140a1 ("brcmfmac: disable command decode in sdio_aos")
> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
>
> I don't see patch 2 in patchwork and I assume discussion continues.

Apologies.  I made sure to CC you individually on all the patches but
didn't think about the fact that you use patchwork to manage and so
didn't ensure all patches made it to all lists (by default each patch
gets recipients individually from get_maintainer).  I'll make sure to
fix for patch set #2.  If you want to see all the patches, you can at
least find them on lore.kernel.org linked from the cover:

https://lore.kernel.org/patchwork/cover/1075373/


> Please resend if/when I need to apply something.
>
> 2 patches set to Changes Requested.
>
> 10948785 [1/3] brcmfmac: re-enable command decode in sdio_aos for BRCM 4354

As per Arend I'll change patch #1 to a full revert instead of a
partial revert.  Arend: please yell if you want otherwise.

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
