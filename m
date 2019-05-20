Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1906B22F69
	for <lists+linux-rockchip@lfdr.de>; Mon, 20 May 2019 10:55:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Zhwv4Mb3CfrGbt1CMpd1bZRpMzaP2XAB41fxGwNdLWI=; b=pGnn+gRxXw0pDu8qyd3bdKRuK
	/oX8QbhSjvO08NYRvANPBK4C9ny9AKVbjm4gFDXHdMJIZ69mPzFb2aquegrfRpGQ8unQxjnOgMQ+b
	5wH0+EaEzkYLXtOqD+wT69gSZMkd9mPCMnFSMZv7exZlK9D/kE4bLJEweHAy8zZ/Mh3XEzcBg3lJi
	UvuJlQ5MTWtYGfGT98Z03VQUkfDAJVTKyl71bn2Yt15sT+qdPUrv3i1YhU0GwpR5dyvyW669VjmQq
	UH/43f1I/8nWiLsU31vlUMZDvMSgIfWNnoHHGoAbP4fIOiR8QmTEwaDYYBnwm6APVzF8AgJZMQPgQ
	jmF+LKiJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSe4o-0004fx-Fo; Mon, 20 May 2019 08:55:22 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSe4k-0004dI-10
 for linux-rockchip@lists.infradead.org; Mon, 20 May 2019 08:55:20 +0000
Received: by mail-ed1-x542.google.com with SMTP id w11so22660524edl.5
 for <linux-rockchip@lists.infradead.org>; Mon, 20 May 2019 01:55:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=vFTt0M6+AyIysvwKwIils2X+lM/meF2sxJjj46Wd1sg=;
 b=B8xJgG9Mfe/9MxL0HtY4ca/tirLNmh0C9lj/ex3fDZnQ/Z3N+iZcFmu5S4eMsAkmPs
 9RAJQWBHGH5GhRDnKoHem++eVfSdl+KDJPtcw1herR9fhhgxrP2D3m+xKdRfMPEMMJ84
 JjtKJ6FHMv3vFq5XsnkSq3Esh6InwnFnUWBaI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=vFTt0M6+AyIysvwKwIils2X+lM/meF2sxJjj46Wd1sg=;
 b=fyIz2Owbl46ABaxKpi9sCmBi77ba8Q/ySfWBVXCinXxU+Dd8JRAX3erwBrCAQZ2Fuj
 vbz6x70Dl50ow7eh9lqhSuChShvIebYn0NLnEGYXn5/o82ckPYbmXQjbFJHgW7iIMcBt
 jpm+zLQ5R+UF9TZ9TgDmtpfFx0b0ftdwwPY4A8y/4u5bjQQpmQkWKdzHZ6eKoIXSPfob
 JokClZvPfTKg0Sl9m8ZkWFSTwJzYAdgDDg4ZN3peGSCqAh8H79Teax9bOzc8hj1BD4Em
 DHLh9Vdsh0U0VYC47hQM/ECfTwMqveC+YAyBxNNbfd8WidTMBwHHzvtfQwnoH8q10/oE
 4whw==
X-Gm-Message-State: APjAAAWg5oRTYn8sIVUa/vjQK+bgg/M9QzitNJOIiDMU1NATatT/BH7w
 mT0WFCy1oRfVO/tED/6Oi5pX3Q==
X-Google-Smtp-Source: APXvYqx4flRS6cM748otmtPJ0wEKEab4DlGo6iNP+Fai8ttXEGXbq+CZSmv1FMlVMKWOwJno0wfUnA==
X-Received: by 2002:a50:aef6:: with SMTP id f51mr73838766edd.225.1558342516174; 
 Mon, 20 May 2019 01:55:16 -0700 (PDT)
Received: from [10.176.68.125] ([192.19.248.250])
 by smtp.gmail.com with ESMTPSA id g30sm5412048edg.57.2019.05.20.01.55.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 01:55:15 -0700 (PDT)
Subject: Re: [PATCH 0/3] brcmfmac: sdio: Deal better w/ transmission errors
 waking from sleep
To: Douglas Anderson <dianders@chromium.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>,
 Adrian Hunter <adrian.hunter@intel.com>
References: <20190517225420.176893-1-dianders@chromium.org>
From: Arend Van Spriel <arend.vanspriel@broadcom.com>
Message-ID: <8c3fa57a-3843-947c-ec6b-a6144ccde1e9@broadcom.com>
Date: Mon, 20 May 2019 10:55:12 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190517225420.176893-1-dianders@chromium.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_015518_736948_1D18F67B 
X-CRM114-Status: GOOD (  21.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-wireless@vger.kernel.org, Chi-Hsien Lin <chi-hsien.lin@cypress.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 brcm80211-dev-list@cypress.com, Ritesh Harjani <riteshh@codeaurora.org>,
 briannorris@chromium.org, YueHaibing <yuehaibing@huawei.com>,
 linux-rockchip@lists.infradead.org, mka@chromium.org,
 Michael Trimarchi <michael@amarulasolutions.com>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Madhan Mohan R <madhanmohan.r@cypress.com>, Martin Hicks <mort@bork.org>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 Double Lo <double.lo@cypress.com>, Avri Altman <avri.altman@wdc.com>,
 Wright Feng <wright.feng@cypress.com>, Jiong Wu <lohengrin1024@gmail.com>,
 Naveen Gupta <naveen.gupta@cypress.com>, Franky Lin <franky.lin@broadcom.com>,
 brcm80211-dev-list.pdl@broadcom.com, netdev@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 5/18/2019 12:54 AM, Douglas Anderson wrote:
> This series attempts to deal better with the expected transmission
> errors that we get when waking up the SDIO-based WiFi on
> rk3288-veyron-minnie, rk3288-veyron-speedy, and rk3288-veyron-mickey.
> 
> Some details about those errors can be found in
> <https://crbug.com/960222>, but to summarize it here: if we try to
> send the wakeup command to the WiFi card at the same time it has
> decided to wake up itself then it will behave badly on the SDIO bus.
> This can cause timeouts or CRC errors.
> 
> When I tested on 4.19 and 4.20 these CRC errors can be seen to cause
> re-tuning.  Since I am currently developing on 4.19 this was the
> original problem I attempted to solve.
> 
> On mainline it turns out that you don't see the retuning errors but
> you see tons of spam about timeouts trying to wakeup from sleep.  I
> tracked down the commit that was causing that and have partially
> reverted it here.  I have no real knowledge about Broadcom WiFi, but
> the commit that was causing problems sounds (from the descriptioin) to
> be a hack commit penalizing all Broadcom WiFi users because of a bug
> in a Cypress SD controller.  I will let others comment if this is
> truly the case and, if so, what the right solution should be.

Let me give a bit of background. The brcmfmac driver implements its own 
runtime-pm like functionality, ie. if the driver is idle for some time 
it will put the device in a low-power state. When it does that it powers 
down several cores in the chip among which the SDIO core. However, the 
SDIO bus used be very bad at handling devices that do that so instead it 
has the Always-On-Station (AOS) block take over the SDIO core in 
handling the bus. Default is will send a R1 response, but only for CMD52 
(and CMD14 but no host is using that cruft). In noCmdDecode it does not 
respond and simply wakes up the SDIO core, which takes over again. 
Because it does not respond timeouts (-110) are kinda expected in this mode.

Regards,
Arend

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
