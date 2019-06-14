Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E7CF46583
	for <lists+linux-rockchip@lfdr.de>; Fri, 14 Jun 2019 19:17:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Subject:References:In-Reply-To:
	Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uzcBHjZt4NTFPFBIiw+pXhherw77IkHn97t3OgAeYsw=; b=Aqtc23YKVjHW8ACZltXimjczC
	VMfnTCpxHzjTHD9H0FMKYrtYpbpxgD6ad77PWONGmOJbdz0A6Fk+LZN6D4EO6TFysVCuyLVITE93N
	+XjKoOvcN32ZhA7DzAbM3so4cnCHO/8VUHv/k/mNWht7865AkLEwBd95gZCP9nDzdeSx2teFdPr73
	86ALPIuQ22c76ClMAyZ7rS4InxzEhXBh12PX8aDJalmRU85QrqYa20VL5YoCNuQHgwPhKkiY9QuUR
	z4MjfSnVCbtRXBW+y0lOmJkKU78XVQqaa7P1JczAXJ+3M46S35wqwbrXcN2wujcC0oevH9CvvMC5C
	nOq9cZacQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbppK-000065-KW; Fri, 14 Jun 2019 17:17:22 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbppG-0008WB-7m
 for linux-rockchip@lists.infradead.org; Fri, 14 Jun 2019 17:17:19 +0000
Received: by mail-ed1-x541.google.com with SMTP id a14so4458743edv.12
 for <linux-rockchip@lists.infradead.org>; Fri, 14 Jun 2019 10:17:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:date:message-id:in-reply-to:references:user-agent
 :subject:mime-version:content-transfer-encoding;
 bh=7TRyUZx1zoQSYNZ+ER0doTkq7zshmk9cidJxpZCUNN4=;
 b=LjN3BmyEOgpqPA02mygscd7VyN5kV9cjfsGWeoPqOr1iRbUnCUiGBfBlduft28awjQ
 3hOd0leEfRmAgFtf7bNKcIe0ghSeeAQFaYXwhsqNKIIS2BnS89LBPnw3azQX+cdslalu
 89o15ro4zPbbHmZG253IHizn846QyWeXGcwWk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:subject:mime-version
 :content-transfer-encoding;
 bh=7TRyUZx1zoQSYNZ+ER0doTkq7zshmk9cidJxpZCUNN4=;
 b=kG76SK1LWZKtdQsN7AQOQSnUxGFfGO8WpsyeD0BWXm6xNwVXScZAd9jH8vMN88S0+I
 y0axBboIpcOWCAqUgiPOypRPsrKxF7foEz8siLC+mpFkx07n4mVaLbRk0G9lkTvMMBRH
 YmIjl4u3AIIHdvVvixibooc7SO4iQfXYUvXNR/M1ABTTVbsRGPZZ7qGJa/NnFzOdjaiV
 4IuApGhEw7NiXVfbFt97veo6dLPngJBnWx+8WVYa8bAvekGDcCnL+mj6n8UdRZg/P/7Z
 dVoO4WJZO2lJzC2FEbSnC+Gx5Ao2LEoSVVXweVNTGiPjFvMRs/1k/3IAbY8kwLf3/0SG
 nk3A==
X-Gm-Message-State: APjAAAXF3m4IcC/FRqUSllGvVT7CtCp0U9eUs1FV2IHxChCQry1Euvae
 2DCzuO6jkK90OmI1azRKo6aY1Q==
X-Google-Smtp-Source: APXvYqxoDgfecrMxkY8vCct7UUGvuYQVCrnt17PA6/AGoy/4n4fyf0ayVe4kCK+cV82wiR4wYero6A==
X-Received: by 2002:a50:d791:: with SMTP id w17mr8370604edi.223.1560532634311; 
 Fri, 14 Jun 2019 10:17:14 -0700 (PDT)
Received: from [192.168.178.17] (f140230.upc-f.chello.nl. [80.56.140.230])
 by smtp.gmail.com with ESMTPSA id h10sm764146ede.93.2019.06.14.10.17.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 14 Jun 2019 10:17:13 -0700 (PDT)
From: Arend Van Spriel <arend.vanspriel@broadcom.com>
To: Doug Anderson <dianders@chromium.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>
Date: Fri, 14 Jun 2019 19:17:10 +0200
Message-ID: <16b56fe39f0.2764.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
In-Reply-To: <CAD=FV=Wuj=gANR2im_o4ZnoLEB+U6FqzKe4noLdQyi1vw+K2xw@mail.gmail.com>
References: <20190613234153.59309-1-dianders@chromium.org>
 <20190613234153.59309-5-dianders@chromium.org>
 <CAPDyKFrJ4+zn7Ak0tYHkBfXUtH3N7erb5R7Q+hgugchZmCRGrw@mail.gmail.com>
 <CAD=FV=Wuj=gANR2im_o4ZnoLEB+U6FqzKe4noLdQyi1vw+K2xw@mail.gmail.com>
User-Agent: AquaMail/1.20.0-1458 (build: 102100001)
Subject: Re: [PATCH v4 4/5] mmc: core: Add sdio_retune_hold_now() and
 sdio_retune_release()
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_101718_287313_1D5588C8 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 brcm80211-dev-list.pdl@broadcom.com, Avri Altman <avri.altman@wdc.com>,
 netdev <netdev@vger.kernel.org>, Chi-Hsien Lin <chi-hsien.lin@cypress.com>,
 Brian Norris <briannorris@chromium.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Double Lo <double.lo@cypress.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Naveen Gupta <naveen.gupta@cypress.com>,
 Wright Feng <wright.feng@cypress.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>,
 brcm80211-dev-list <brcm80211-dev-list@cypress.com>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On June 14, 2019 6:38:51 PM Doug Anderson <dianders@chromium.org> wrote:

> Hi,
>
> On Fri, Jun 14, 2019 at 5:10 AM Ulf Hansson <ulf.hansson@linaro.org> wrote:
>>
>> On Fri, 14 Jun 2019 at 01:42, Douglas Anderson <dianders@chromium.org> wrote:
>> >
>> > We want SDIO drivers to be able to temporarily stop retuning when the
>> > driver knows that the SDIO card is not in a state where retuning will
>> > work (maybe because the card is asleep).  We'll move the relevant
>> > functions to a place where drivers can call them.
>> >
>> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
>>
>> This looks good to me.
>>
>> BTW, seems like this series is best funneled via my mmc tree, no? In
>> such case, I need acks for the brcmfmac driver patches.
>
> For patch #1 I think it could just go in directly to the wireless
> tree.  It should be fine to land the rest of the patches separately.

Agree.

> For patch #2 - #5 then what you say makes sense to me.  I suppose
> you'd want at least a Reviewed-by from Arend and an Ack from Kalle on
> the Broadcom patches?

Will do.

> I'd also suggest that we Cc stable explicitly when applying.  That's
> easy for #2 and #3 since they have a Fixes tag.  For #4 and #5 I guess
> the question is how far back to go.  Maybe Adrian has an opinion here
> since I think he's the one who experienced these problems.

I see if I can come up wit a fixes tag for #5.

Regards,
Arend




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
