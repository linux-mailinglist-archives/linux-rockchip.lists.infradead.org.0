Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCEBF24508
	for <lists+linux-rockchip@lfdr.de>; Tue, 21 May 2019 02:23:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UEludlkiEcAPDEe8MgavjDGJEFRkIRCXJLCKw+wOmaA=; b=thTmNIkiEEK91h
	SYcui/pazTIFh2gD7mF2LCDqrofHkuLauUfOoehuY1WkxyG9pkl+E2UzE9hc6btFDIzqTHQlj0j8R
	w055vJuSY9nbBgECj1peoE8d6ZDzPaiVhkAC5S+jwQC/eHNnq75qMhmcwptGQpQDShb2iWh5VW0OI
	aaVcSJjAD42+lw0b5mjkkY2C3JI0Jy/+1PXogxDCh/33hu8jUludVNToKRDM8IG7r0CBgftZZx7ED
	gu3fT+J8Z7o3UTRk+PS+rJemsWpuzpiHFvi+52m+CNt+J9nDCUPB1xnW29baHfYH63AA59bUIsis6
	Qynz9J/MTARkXJTkgK9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSsYs-0006At-Jj; Tue, 21 May 2019 00:23:22 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSsYp-0006AX-Jc
 for linux-rockchip@lists.infradead.org; Tue, 21 May 2019 00:23:21 +0000
Received: by mail-pf1-x441.google.com with SMTP id c6so8036627pfa.10
 for <linux-rockchip@lists.infradead.org>; Mon, 20 May 2019 17:23:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=LPu70Acl0dDSmwm46W0owNu3b5RSfGh3FzFKNjihb00=;
 b=MZQdLOQw3W9V15ULJxTQ96AipAiJ1kcuFGGW2c9VkUElP4pINsXi9UyEKmOKHIxKVz
 wbH2J3shvQbhbLV4ZTggOKN/KSP2TzN+miO9Q/uJDdjiIDVdhHg0R3n3qQh0fpFnEFvB
 jAif5optmrvx3phb9f3Hy8Am1MI4LkPVP+DZs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LPu70Acl0dDSmwm46W0owNu3b5RSfGh3FzFKNjihb00=;
 b=JmFQEgBTwYIdOw9S95YDPPFFuGuGDFhSAXBPlSVpJOZHYf8ivlu/NIktv32xkT1yu3
 uCi12/zp1+0K8G8ZgChk1nJ6j5D7ilqKPqHlK4g6FxCZGKOsSDsx/gxShhJWDPumbs4b
 aU9189gH4HmiiU61A/I9NnYX0hPiUoYqEt3P7NB29P8oJMIj5mII1uOw0/0TCcu6IbLD
 RLWezSLfgCtB5oHt966vPa6lmdSHDSZNtf5qK3L5ksu9WX2XQXuGCg93OeRmrJcFZ1A0
 LgXQAmGpN1oBlVlTg6Lh/I0qWuzx96mgzxKjGytDTzWCyeA1XXEpP2R7BAel/A9NZUUO
 Yi5A==
X-Gm-Message-State: APjAAAVbmpgF4lxBOjFWAyIZ8X1AFGJxa82xVF/Xv7/5JXCIMRlRT4Y9
 /9TJe1ecHptf7iepcmEOeZAu8w==
X-Google-Smtp-Source: APXvYqyHRvjDKJM7g5pNBmpglQaLaCNbnuq/wX0yAuGrBgJFe6RRW2bXvYhCXJl4QWmy07O1Y2HwHA==
X-Received: by 2002:aa7:9e51:: with SMTP id z17mr83145568pfq.212.1558398198034; 
 Mon, 20 May 2019 17:23:18 -0700 (PDT)
Received: from google.com ([2620:15c:202:1:534:b7c0:a63c:460c])
 by smtp.gmail.com with ESMTPSA id j184sm19177690pge.83.2019.05.20.17.23.15
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 20 May 2019 17:23:16 -0700 (PDT)
Date: Mon, 20 May 2019 17:23:14 -0700
From: Brian Norris <briannorris@chromium.org>
To: Avri Altman <Avri.Altman@wdc.com>
Subject: Re: [PATCH 0/3] brcmfmac: sdio: Deal better w/ transmission errors
 waking from sleep
Message-ID: <20190521002312.GA89786@google.com>
References: <20190517225420.176893-1-dianders@chromium.org>
 <SN6PR04MB49258D4FBE0B4D739E8BAF7EFC040@SN6PR04MB4925.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <SN6PR04MB49258D4FBE0B4D739E8BAF7EFC040@SN6PR04MB4925.namprd04.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_172319_672456_C301BE5C 
X-CRM114-Status: GOOD (  15.52  )
X-Spam-Score: 3.9 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 4.1 FSL_HELO_FAKE          No description available.
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 "brcm80211-dev-list@cypress.com" <brcm80211-dev-list@cypress.com>,
 Ritesh Harjani <riteshh@codeaurora.org>, YueHaibing <yuehaibing@huawei.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "mka@chromium.org" <mka@chromium.org>, Naveen Gupta <naveen.gupta@cypress.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Madhan Mohan R <madhanmohan.r@cypress.com>,
 Arend van Spriel <arend.vanspriel@broadcom.com>, Martin Hicks <mort@bork.org>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 Double Lo <double.lo@cypress.com>, Wright Feng <wright.feng@cypress.com>,
 Jiong Wu <lohengrin1024@gmail.com>, Kalle Valo <kvalo@codeaurora.org>,
 Franky Lin <franky.lin@broadcom.com>,
 "brcm80211-dev-list.pdl@broadcom.com" <brcm80211-dev-list.pdl@broadcom.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Douglas Anderson <dianders@chromium.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Sat, May 18, 2019 at 03:09:44PM +0000, Avri Altman wrote:
> > 
> > This series attempts to deal better with the expected transmission
> > errors that we get when waking up the SDIO-based WiFi on
> > rk3288-veyron-minnie, rk3288-veyron-speedy, and rk3288-veyron-mickey.
> > 
> > Some details about those errors can be found in
> > <https://crbug.com/960222>, but to summarize it here: if we try to
> > send the wakeup command to the WiFi card at the same time it has
> > decided to wake up itself then it will behave badly on the SDIO bus.
> > This can cause timeouts or CRC errors.
> Wake-up itself: as part of a WoWlan, or d0i3?

Neither, IIUC. (It's definitely not WoWLAN, and D0i3 sounds like an
Intel thing.)

I believe it's a Broadcom-specific mode. See also Arend's response to
this thread:

http://lkml.kernel.org/linux-wireless/8c3fa57a-3843-947c-ec6b-a6144ccde1e9@broadcom.com

> Looks like this calls for a wifi driver fix, and not WA in the mmc driver.

Basically asked and answered in patch 2's thread:

https://lkml.kernel.org/lkml/20190520085201.GA1021@kunai/

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
