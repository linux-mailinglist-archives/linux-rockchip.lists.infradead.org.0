Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EFBC48003
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 12:53:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=d16YV4fqogCK0gL4Qdf200JuSBeuMva8mHtWHClYbq0=; b=SxXBQBQwwJ4ENjN06xHbMpaOY
	w2QIos1slzyhnAY0+I4Ezw1atsyBZ2IvmzD+Zk6tEGAMCcSPvJkIccf96TV/jBakGjWmV9VhFaLMi
	OkhxP86EKJg5YbAwi4wyvkPF+C2hBMbsvu/2Nk0xa0DR+bwbtaYWWtCJ+nozjpeRj9O4IUwz3LiE7
	/kPp9eHZ/G+dsqbKTnDRWodqWipECCsD8Fjkk6ZntbWrYtQv/FskxIStrURrXiTng7AmLqtrYYNH3
	P+KjjdO/BpBFPkeeIg7RoQ7QBguTXyqxNc7jzfOig3avnX3WCtbTjHfOPRq+NWU0+fMWC/N9IUKqS
	styEWQ1kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcpFy-0003Kg-Ga; Mon, 17 Jun 2019 10:52:58 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcpFv-0003K1-5n
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 10:52:56 +0000
Received: by mail-wm1-x342.google.com with SMTP id s3so8738400wms.2
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 03:52:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ZrGsAut7uTsx4N98mpJ5emxcDiHoXMt2HeuGIHuHDuY=;
 b=ZmPOJv+uNeM7+bNBeQqLGswxWW9SMhfKnc014mIavxJdV79s0wjtcZT2VyUWK+UWrD
 Movw97H2zsJ+JBlhl315a19BTQrUa1M7tC7Gn1UzYUsnywZm6KraZ77S5sjMvTlk+U8Z
 LBfBBRYF8bxGvs2tbraE55QLhVFojz1qPLIU8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ZrGsAut7uTsx4N98mpJ5emxcDiHoXMt2HeuGIHuHDuY=;
 b=S+BpVA5uvQGaKS+djU97pjU48egGrndco8ashS0ofg2bB0oakgsyc/eB8jMYfhrsYL
 UuA/myGAN0/AwD8pPoMU32fORDbNCY6ZyN4FejWQaeB30vRr9SqVA1zCEhSb0BdDuUmC
 dEUMm6RRDrUB3/hKG/zZ8kAxP6CkMfPYWEoPruHKGxwa/c8JGC+wiwkb0sO1Nk+cW4gZ
 FDoXhxL0P4DCn+pgQDxi1/6tFqCzt5W6Q4o0n8xN4EZDOTVuc8kRXhkAiYedPBug4P+k
 p1tWLlWV3i3AG6YYXjOYg68ScNRpzSca5B6FegZjnLRUmdMkNktRTYklCI9q0JF4uENU
 oJlg==
X-Gm-Message-State: APjAAAUNaxZaeG6gLqmiSzVtAcUuGvWrfdfvMv7JItzPOptPRIWhvl/k
 5LuxnKpC+UkmLRq8JXLozpk9Bg==
X-Google-Smtp-Source: APXvYqxwU5akwxSHDxkkxP8iCz4MY4SSgr81eWPc6HIAiFo2nQ2pP4CVo+hHo0NsY+yWo6H1GCq6JQ==
X-Received: by 2002:a1c:96c7:: with SMTP id y190mr16834836wmd.87.1560768773522; 
 Mon, 17 Jun 2019 03:52:53 -0700 (PDT)
Received: from [10.176.68.244] ([192.19.248.250])
 by smtp.gmail.com with ESMTPSA id y184sm9396231wmg.14.2019.06.17.03.52.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 03:52:52 -0700 (PDT)
Subject: Re: [PATCH v4 5/5] brcmfmac: sdio: Don't tune while the card is off
To: Douglas Anderson <dianders@chromium.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>,
 Adrian Hunter <adrian.hunter@intel.com>
References: <20190613234153.59309-1-dianders@chromium.org>
 <20190613234153.59309-6-dianders@chromium.org>
From: Arend Van Spriel <arend.vanspriel@broadcom.com>
Message-ID: <f0dc6ef8-b339-8656-14d6-cf7c4e872b22@broadcom.com>
Date: Mon, 17 Jun 2019 12:52:51 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190613234153.59309-6-dianders@chromium.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_035255_222688_4FBFDD0B 
X-CRM114-Status: GOOD (  20.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Madhan Mohan R <madhanmohan.r@cypress.com>,
 brcm80211-dev-list.pdl@broadcom.com, YueHaibing <yuehaibing@huawei.com>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 "David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, briannorris@chromium.org,
 linux-wireless@vger.kernel.org, Double Lo <double.lo@cypress.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 mka@chromium.org, Wright Feng <wright.feng@cypress.com>,
 brcm80211-dev-list@cypress.com, Naveen Gupta <naveen.gupta@cypress.com>,
 Franky Lin <franky.lin@broadcom.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 6/14/2019 1:41 AM, Douglas Anderson wrote:
> When Broadcom SDIO cards are idled they go to sleep and a whole
> separate subsystem takes over their SDIO communication.  This is the
> Always-On-Subsystem (AOS) and it can't handle tuning requests.
> 
> Specifically, as tested on rk3288-veyron-minnie (which reports having
> BCM4354/1 in dmesg), if I force a retune in brcmf_sdio_kso_control()
> when "on = 1" (aka we're transition from sleep to wake) by whacking:
>    bus->sdiodev->func1->card->host->need_retune = 1
> ...then I can often see tuning fail.  In this case dw_mmc reports "All
> phases bad!").  Note that I don't get 100% failure, presumably because
> sometimes the card itself has already transitioned away from the AOS
> itself by the time we try to wake it up.  If I force retuning when "on
> = 0" (AKA force retuning right before sending the command to go to
> sleep) then retuning is always OK.
> 
> NOTE: we need _both_ this patch and the patch to avoid triggering
> tuning due to CRC errors in the sleep/wake transition, AKA ("brcmfmac:
> sdio: Disable auto-tuning around commands expected to fail").  Though
> both patches handle issues with Broadcom's AOS, the problems are
> distinct:
> 1. We want to defer (but not ignore) asynchronous (like
>     timer-requested) tuning requests till the card is awake.  However,
>     we want to ignore CRC errors during the transition, we don't want
>     to queue deferred tuning request.
> 2. You could imagine that the AOS could implement retuning but we
>     could still get errors while transitioning in and out of the AOS.
>     Similarly you could imagine a seamless transition into and out of
>     the AOS (with no CRC errors) even if the AOS couldn't handle
>     tuning.
> 
> ALSO NOTE: presumably there is never a desperate need to retune in
> order to wake up the card, since doing so is impossible.  Luckily the
> only way the card can get into sleep state is if we had a good enough
> tuning to send it a sleep command, so presumably that "good enough"
> tuning is enough to wake us up, at least with a few retries.

The term "sleep command" is a bit confusing. There actually is a CMD14 
defined in the eSD spec, but that is not what we are using (unless we 
program the chip to do so) here. It is simply a specific register access 
using CMD52.

Apart from that....

Reviewed-by: Arend van Spriel <arend.vanspriel@broadcom.com>
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

I think the stable version is mostly determined by change in MMC/SDIO so 
4.18 as mentioned Adrian seems most sensible. bcm4354 support was 
introduced in 3.14 and there were some earlier devices (4335) using same 
sleep mechanism.

Regards,
Arend

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
