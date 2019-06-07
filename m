Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E9EB383A7
	for <lists+linux-rockchip@lfdr.de>; Fri,  7 Jun 2019 07:13:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Subject:References:In-Reply-To:
	Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TfCjE76zyNjrDn6QnxfPbW3MfyxwwRKngG91hOxEAXc=; b=TZr0qetNgpsfaqJHMgupW4KFC
	Ik6ZcRHQhGU6Dqpa43ZVzZS/OXTczIlQjmXN1Otu0vGPdFY3r92XhvDTWrTPiEuoXq7y0re+5fpGV
	rHzvhipA+WZMO6aCY3Xp9FRa+trXYiCSvPMycKZYR9K8VmMYwc0RIqQEO41bGHJ4cFWyD+cjEo5Ou
	El01Lp6CBbzagY1ciKAfoR0uuEArgI2clC1XspTg3N+rn2i4UWAf+bjX0HYGNeAMlfIxX3Ii/sswh
	eAp2EMWoI09uvPZgMQuc+Q6aigzeWJLse8Zps5i4qmAhPwy4SEkAkFKlZDvq1jN+dkkaPxK+EET3e
	WX9K6rrQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZ7BP-0003kR-DA; Fri, 07 Jun 2019 05:12:55 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ7BL-0003jj-Nx
 for linux-rockchip@lists.infradead.org; Fri, 07 Jun 2019 05:12:53 +0000
Received: by mail-ed1-x542.google.com with SMTP id c26so1167000edt.1
 for <linux-rockchip@lists.infradead.org>; Thu, 06 Jun 2019 22:12:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:date:message-id:in-reply-to:references:user-agent
 :subject:mime-version:content-transfer-encoding;
 bh=X+VdyBkwWBj+A8nZ9fuV2ga0Yg8bfWjeExs0duLp7AE=;
 b=CxTTI0DeptWFatbDZ0NKQsZsgCfYyHcMdaLCUqWl6S/Dn4R30qrCY9CJMCDiu7VBH/
 rAFskPH7JRikj2/iwuLfUpyyppc2bj8wLBxLui+oJ0FA3tRDVdWE+Z97A5pqBRz5fyAz
 E0NCsVFieCa7eiCBQh5lu4RhZCi2GE3zgGOg0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:subject:mime-version
 :content-transfer-encoding;
 bh=X+VdyBkwWBj+A8nZ9fuV2ga0Yg8bfWjeExs0duLp7AE=;
 b=BdUasy2xBswHgr1+kj9wgmP2Xg66Tasv5akg62GNHIkP5GSz4mCCnehZFarIHlRCQg
 OgRkbT3TbKYXoqQJcMIDwL++tnH9IcPIcoKqWrG9xME3VWRed1MHzLl+mmms5UR4VQpv
 kZ9tlRweZHicawxxKUbywYf0QJfHn1Mq08NXInZKZgVEYlU0BLKQpcUTsTIq4a9+RgNB
 ikxvYoV1i2bnAw4HOhVHoZiqoP5RqXntAnvGyi1WPHw4G6q6srEtjzA/2xCKv5K31Mq5
 iscaNaS2KY5sETU/2k0owEA4AQ/ByEODwV2i1NnnZZ8rQ5+U2XjVXvqi5JbzqOTMYhxk
 4tNA==
X-Gm-Message-State: APjAAAXtINZUqhZ+1qFaWQxdmPVZ7YyT6DTWoeIDB/xxij113qibnaqj
 vYww0x1Z0EvpLzEjJEV4U/V1oQ==
X-Google-Smtp-Source: APXvYqxhvPHvkv9YaUOGfD7/SxyLMutkVvxNogtZJ3H6zoYCplrVkHX8Wbxd30gY39jSIR64FYZtnw==
X-Received: by 2002:a17:906:1cc6:: with SMTP id
 i6mr34091753ejh.100.1559884367150; 
 Thu, 06 Jun 2019 22:12:47 -0700 (PDT)
Received: from [192.168.178.17] (f140230.upc-f.chello.nl. [80.56.140.230])
 by smtp.gmail.com with ESMTPSA id 93sm234704edk.84.2019.06.06.22.12.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 06 Jun 2019 22:12:46 -0700 (PDT)
From: Arend Van Spriel <arend.vanspriel@broadcom.com>
To: Doug Anderson <dianders@chromium.org>,
 Adrian Hunter <adrian.hunter@intel.com>
Date: Fri, 07 Jun 2019 07:12:42 +0200
Message-ID: <16b305a7110.2764.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
In-Reply-To: <CAD=FV=UPfCOr-syAbVZ-FjHQy7bgQf5BS5pdV-Bwd3hquRqEGg@mail.gmail.com>
References: <20190603183740.239031-1-dianders@chromium.org>
 <20190603183740.239031-4-dianders@chromium.org>
 <42fc30b1-adab-7fa8-104c-cbb7855f2032@intel.com>
 <CAD=FV=UPfCOr-syAbVZ-FjHQy7bgQf5BS5pdV-Bwd3hquRqEGg@mail.gmail.com>
User-Agent: AquaMail/1.20.0-1451 (build: 102000001)
Subject: Re: [PATCH v2 3/3] brcmfmac: sdio: Disable auto-tuning around
 commands expected to fail
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_221251_787700_B5650D15 
X-CRM114-Status: GOOD (  19.34  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Ulf Hansson <ulf.hansson@linaro.org>, YueHaibing <yuehaibing@huawei.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 "David S. Miller" <davem@davemloft.net>, netdev <netdev@vger.kernel.org>,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>,
 Brian Norris <briannorris@chromium.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 brcm80211-dev-list.pdl@broadcom.com, Double Lo <double.lo@cypress.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Naveen Gupta <naveen.gupta@cypress.com>,
 Wright Feng <wright.feng@cypress.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 brcm80211-dev-list <brcm80211-dev-list@cypress.com>,
 Kalle Valo <kvalo@codeaurora.org>, Franky Lin <franky.lin@broadcom.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On June 6, 2019 11:37:22 PM Doug Anderson <dianders@chromium.org> wrote:
>
> In the case of dw_mmc, which I'm most familiar with, we don't have any
> sort of automated or timed-based retuning.  ...so we'll only re-tune
> when we see the CRC error.  If I'm understanding things correctly then
> that for dw_mmc my solution and yours behave the same.  That means the
> difference is how we deal with other retuning requests, either ones
> that come about because of an interrupt that the host controller
> provided or because of a timer.  Did I get that right?

Right.

> ...and I guess the reason we have to deal specially with these cases
> is because any time that SDIO card is "sleeping" we don't want to
> retune because it won't work.  Right?  NOTE: the solution that would
> come to my mind first to solve this would be to hold the retuning for
> the whole time that the card was sleeping and then release it once the
> card was awake again.  ...but I guess we don't truly need to do that
> because tuning only happens as a side effect of sending a command to
> the card and the only command we send to the card is the "wake up"
> command.  That's why your solution to hold tuning while sending the
> "wake up" command works, right?

Yup.

> ---
>
> OK, so assuming all the above is correct, I feel like we're actually
> solving two problems and in fact I believe we actually need both our
> approaches to solve everything correctly.  With just your patch in
> place there's a problem because we will clobber any external retuning
> requests that happened while we were waking up the card.  AKA, imagine
> this:
>
> A) brcmf_sdio_kso_control(on=True) gets called; need_retune starts as 0
>
> B) We call sdio_retune_hold_now()
>
> C) A retuning timer goes off or the SD Host controller tells us to retune
>
> D) We get to the end of brcmf_sdio_kso_control() and clear the "retune
> needed" since need_retune was 0 at the start.
>
> ...so we dropped the retuning request from C), right?
>
>
> What we truly need is:
>
> 1. CRC errors shouldn't trigger a retuning request when we're in
> brcmf_sdio_kso_control()
>
> 2. A separate patch that holds any retuning requests while the SDIO
> card is off.  This patch _shouldn't_ do any clearing of retuning
> requests, just defer them.
>
>
> Does that make sense to you?  If so, I can try to code it up...

FWIW it does make sense to me. However, I am still not sure if our sdio 
hardware supports retuning. Have to track down an asic designer who can 
tell or dive into vhdl myself.

So I want to disable device sleep and trigger retuning through debugfs or 
some other hack.

Regards,
Arend



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
