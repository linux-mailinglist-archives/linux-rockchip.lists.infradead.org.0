Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2520D2CB51
	for <lists+linux-rockchip@lfdr.de>; Tue, 28 May 2019 18:12:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Subject:References:In-Reply-To:
	Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7Q+fLn+LwMOLgtb81Kv+LpmhKpJls9sJA+CUNXY8z7c=; b=FwK9acPoxDs4rykn/I+1AOROW
	KihJEuzV9+dHJzYdZTjscViJMWPLpq84e1wXQlqPj8RjsXXPh1QgHi9nhHRkbBfI0KuFahiM+4L6n
	xwqIQ2SYHYIJugumDsUGMwqUD+Qt/XgZQxPwfb+C4whXpnuyHdeHqpufov0ZhQubdzK1fODZr+ePX
	PVBb1fdKDFhRhSQz4xJ5ND5NiC0EK0Sj5SwPtoq4RGkdOM8BRZZbwV5CH+/yck1J+A1UlcjQWdpep
	SkFP+1WQPmxUJvnuR3a+zl9/ya6b3VF1tc+tCjLMwB7r5WwuIIUMa5Hy1gPz44lBin5pefnaPI13A
	m9zVXGt7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVeiB-0006KV-66; Tue, 28 May 2019 16:12:27 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVegr-0004ih-6b
 for linux-rockchip@lists.infradead.org; Tue, 28 May 2019 16:11:10 +0000
Received: by mail-ed1-x542.google.com with SMTP id g57so17728078edc.12
 for <linux-rockchip@lists.infradead.org>; Tue, 28 May 2019 09:11:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:date:message-id:in-reply-to:references:user-agent
 :subject:mime-version:content-transfer-encoding;
 bh=5NKCxpzbXsbsdqOSjRjf5/FGHtpKxTTM//85T6IDabE=;
 b=cLpFVXoOfaeKqTCGXaNtMKnxeMWVwEjeFGu03K3vyZC6eBv0PiWQv6yuwybs3T2QSE
 Abu1D0JQfhjjZTh1U/U+E+6dBESTJ+sDP24AwcxnZnZW6Wdhzzspgr7zVgt+ePfOJRYf
 kVHnHSVp6kD9vLVC2eOZMhKim+NPnN2ssaoZk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:subject:mime-version
 :content-transfer-encoding;
 bh=5NKCxpzbXsbsdqOSjRjf5/FGHtpKxTTM//85T6IDabE=;
 b=sFvINYObbDYoE0dPsQjk+1l/0Yk7d0f6CP/rmZcwNJQ7zHzLzY3B23pzFfHknUUAGc
 7ylyPelF8s+kTE7LlNCBKhnfe/wZHzsZvbpu0jVJbTeUQ1H7IcHDzVQUgj5NVok7TBf4
 nAEVoMRNp/onmivV8l/ClKe3YbFLmIA2mw1NrjJm6TxeTecZhPFIDnhtm0UaJY3PW5n1
 4NIWw80aUfcI84pjaN3maFI+3VO4OIZisplRIHu6Dru3TYTV1l3p5tvXBvNPEnQVsNGr
 4P13nHz7FlVryWcx+k60Xm3/oGi8NLQmZkuENR1IiJyFm7UPoc7Cz2gcD7TaXer7g4os
 tjjg==
X-Gm-Message-State: APjAAAVXduRpNFPFeHIiXjB0Suai0y9jkxXz2hj9bkjA4EFXkRY0G4mO
 ntxhUUTgRg9Az4CX5lga4tO2Bg==
X-Google-Smtp-Source: APXvYqzO78eTgJM+fsJJF5GBrbnmxF7cyzHQDEkxqk1bfWfaLwgdTR6aYkCkV+M7paGXI74GmgyYWA==
X-Received: by 2002:a17:906:ccd8:: with SMTP id
 ot24mr38325047ejb.263.1559059863761; 
 Tue, 28 May 2019 09:11:03 -0700 (PDT)
Received: from [192.168.178.17] (f140230.upc-f.chello.nl. [80.56.140.230])
 by smtp.gmail.com with ESMTPSA id m16sm2268549ejj.57.2019.05.28.09.11.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 28 May 2019 09:11:03 -0700 (PDT)
From: Arend Van Spriel <arend.vanspriel@broadcom.com>
To: Doug Anderson <dianders@chromium.org>, Kalle Valo <kvalo@codeaurora.org>
Date: Tue, 28 May 2019 18:11:00 +0200
Message-ID: <16aff358a20.2764.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
In-Reply-To: <16aff33f3e0.2764.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
References: <20190517225420.176893-2-dianders@chromium.org>
 <20190528121833.7D3A460A00@smtp.codeaurora.org>
 <CAD=FV=VtxdEeFQsdF=U7-_7R+TXfVmA2_JMB_-WYidGHTLDgLw@mail.gmail.com>
 <16aff33f3e0.2764.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
User-Agent: AquaMail/1.20.0-1451 (build: 102000001)
Subject: Re: [PATCH 1/3] brcmfmac: re-enable command decode in sdio_aos for
 BRCM 4354
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_091108_499904_FF4D9819 
X-CRM114-Status: GOOD (  18.41  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On May 28, 2019 6:09:21 PM Arend Van Spriel <arend.vanspriel@broadcom.com> 
wrote:

> On May 28, 2019 5:52:10 PM Doug Anderson <dianders@chromium.org> wrote:
>
>> Hi,
>>
>> On Tue, May 28, 2019 at 5:18 AM Kalle Valo <kvalo@codeaurora.org> wrote:
>>>
>>> Douglas Anderson <dianders@chromium.org> wrote:
>>>
>>> > In commit 29f6589140a1 ("brcmfmac: disable command decode in
>>> > sdio_aos") we disabled something called "command decode in sdio_aos"
>>> > for a whole bunch of Broadcom SDIO WiFi parts.
>>> >
>>> > After that patch landed I find that my kernel log on
>>> > rk3288-veyron-minnie and rk3288-veyron-speedy is filled with:
>>> >   brcmfmac: brcmf_sdio_bus_sleep: error while changing bus sleep state -110
>>> >
>>> > This seems to happen every time the Broadcom WiFi transitions out of
>>> > sleep mode.  Reverting the part of the commit that affects the WiFi on
>>> > my boards fixes the problem for me, so that's what this patch does.
>>> >
>>> > Note that, in general, the justification in the original commit seemed
>>> > a little weak.  It looked like someone was testing on a SD card
>>> > controller that would sometimes die if there were CRC errors on the
>>> > bus.  This used to happen back in early days of dw_mmc (the controller
>>> > on my boards), but we fixed it.  Disabling a feature on all boards
>>> > just because one SD card controller is broken seems bad.  ...so
>>> > instead of just this patch possibly the right thing to do is to fully
>>> > revert the original commit.
>>> >
>>> > Fixes: 29f6589140a1 ("brcmfmac: disable command decode in sdio_aos")
>>> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
>>>
>>> I don't see patch 2 in patchwork and I assume discussion continues.
>>
>> Apologies.  I made sure to CC you individually on all the patches but
>> didn't think about the fact that you use patchwork to manage and so
>> didn't ensure all patches made it to all lists (by default each patch
>> gets recipients individually from get_maintainer).  I'll make sure to
>> fix for patch set #2.  If you want to see all the patches, you can at
>> least find them on lore.kernel.org linked from the cover:
>>
>> https://lore.kernel.org/patchwork/cover/1075373/
>>
>>
>>> Please resend if/when I need to apply something.
>>>
>>> 2 patches set to Changes Requested.
>>>
>>> 10948785 [1/3] brcmfmac: re-enable command decode in sdio_aos for BRCM 4354
>>
>> As per Arend I'll change patch #1 to a full revert instead of a
>> partial revert.  Arend: please yell if you want otherwise.
>
> No yelling here. If any it is expected from Cypress. Maybe good to add them
> specifically in Cc:

Of the revert patch that is.

Gr. AvS



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
