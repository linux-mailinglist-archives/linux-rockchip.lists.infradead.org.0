Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B8D2E028
	for <lists+linux-rockchip@lfdr.de>; Wed, 29 May 2019 16:52:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Nk4cRY2KR5NSKg7L6qUR1Vh5kYloS5K3fREWv8Z8BE=; b=J3yprh237xp4nN
	x9YTjmNdJvFqIt3XT5z0H8OndO1QDX3qopI53da3HKVsrzj5DsDex3qKW1I6saYXLKgPI3myNeXf+
	4pH/D27JqlzdJ7kMGsh1uaodw8keulAH9LOrLZz6DRryC5Wa2LFrst1nFqwTvQYQh4oOBYx4VfpSM
	cFprF3V8KwBiCCRGfbSM4FzYizaa3phDrN8/0BsJH125e3Rfs3777l9Ew1xGxmoB7A58Ivk9JAAXI
	72R+W8Lu9hLhbk5sBTLdq16aj/ukXUsDqEjshDj4TOx5MpEYbfPnhniyOEIZiJwk1+wRFo+1w0bsr
	Yf6hC6yD02hTqJIc5Cig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVzvr-0002W7-9K; Wed, 29 May 2019 14:51:59 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVzvo-0002Vn-0n
 for linux-rockchip@lists.infradead.org; Wed, 29 May 2019 14:51:57 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id BF45F60A44; Wed, 29 May 2019 14:51:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559141514;
 bh=wB2s6eG/yS7NJpG9iQQVkTE5phJzfMsxILOMCQ9VtJk=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=PRu92ve5m+yFMyE9ZOAdUy7oR9ClsAMW+nPqlk0MeENffS9VWqE4AG9Bk2Fl2uVTe
 wsdxUerQ3mWSqESfJ09yzyx0wUvIqu/SucsItWJYlTRAMxSnXU3LFte+BPXUxihO8x
 3CCwJ/JB9AKhd+x6pYKiS0YfM3vEae3r2NClMWoM=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 3C6DE60741;
 Wed, 29 May 2019 14:51:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559141513;
 bh=wB2s6eG/yS7NJpG9iQQVkTE5phJzfMsxILOMCQ9VtJk=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=PUY+3yOpoSS6ECOQcR7KVN3EseXspgVDwsrgZ2LmWoKOYCAxv9uR0r7CR5blyzPFa
 63L6qrquF0de4y/HH33Ihl1Y7nVLLuOoUVQIE6BXGxLh52uP0dToSPOekIusE1vIQI
 D9zR5uLY8FF9zhHUEcF1rgdALzzb2MFTlRHnWWd0=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 3C6DE60741
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH 1/3] brcmfmac: re-enable command decode in sdio_aos for
 BRCM 4354
References: <20190517225420.176893-2-dianders@chromium.org>
 <20190528121833.7D3A460A00@smtp.codeaurora.org>
 <CAD=FV=VtxdEeFQsdF=U7-_7R+TXfVmA2_JMB_-WYidGHTLDgLw@mail.gmail.com>
Date: Wed, 29 May 2019 17:51:47 +0300
In-Reply-To: <CAD=FV=VtxdEeFQsdF=U7-_7R+TXfVmA2_JMB_-WYidGHTLDgLw@mail.gmail.com>
 (Doug Anderson's message of "Tue, 28 May 2019 08:51:53 -0700")
Message-ID: <87h89d2u0s.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_075156_097745_4751AEBD 
X-CRM114-Status: GOOD (  22.46  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Arend van Spriel <arend.vanspriel@broadcom.com>,
 YueHaibing <yuehaibing@huawei.com>, Double Lo <double.lo@cypress.com>,
 LKML <linux-kernel@vger.kernel.org>, Chi-Hsien Lin <chi-hsien.lin@cypress.com>,
 Brian Norris <briannorris@chromium.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 brcm80211-dev-list.pdl@broadcom.com, Matthias Kaehlcke <mka@chromium.org>,
 Wright Feng <wright.feng@cypress.com>, netdev <netdev@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>, brcm80211-dev-list@cypress.com,
 "David S. Miller" <davem@davemloft.net>,
 Naveen Gupta <naveen.gupta@cypress.com>, Franky Lin <franky.lin@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Doug Anderson <dianders@chromium.org> writes:

> Hi,
>
> On Tue, May 28, 2019 at 5:18 AM Kalle Valo <kvalo@codeaurora.org> wrote:
>>
>> Douglas Anderson <dianders@chromium.org> wrote:
>>
>> > In commit 29f6589140a1 ("brcmfmac: disable command decode in
>> > sdio_aos") we disabled something called "command decode in sdio_aos"
>> > for a whole bunch of Broadcom SDIO WiFi parts.
>> >
>> > After that patch landed I find that my kernel log on
>> > rk3288-veyron-minnie and rk3288-veyron-speedy is filled with:
>> >   brcmfmac: brcmf_sdio_bus_sleep: error while changing bus sleep state -110
>> >
>> > This seems to happen every time the Broadcom WiFi transitions out of
>> > sleep mode.  Reverting the part of the commit that affects the WiFi on
>> > my boards fixes the problem for me, so that's what this patch does.
>> >
>> > Note that, in general, the justification in the original commit seemed
>> > a little weak.  It looked like someone was testing on a SD card
>> > controller that would sometimes die if there were CRC errors on the
>> > bus.  This used to happen back in early days of dw_mmc (the controller
>> > on my boards), but we fixed it.  Disabling a feature on all boards
>> > just because one SD card controller is broken seems bad.  ...so
>> > instead of just this patch possibly the right thing to do is to fully
>> > revert the original commit.
>> >
>> > Fixes: 29f6589140a1 ("brcmfmac: disable command decode in sdio_aos")
>> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
>>
>> I don't see patch 2 in patchwork and I assume discussion continues.
>
> Apologies.  I made sure to CC you individually on all the patches but
> didn't think about the fact that you use patchwork to manage and so
> didn't ensure all patches made it to all lists (by default each patch
> gets recipients individually from get_maintainer).  I'll make sure to
> fix for patch set #2.  If you want to see all the patches, you can at
> least find them on lore.kernel.org linked from the cover:
>
> https://lore.kernel.org/patchwork/cover/1075373/

No worries, I had the thread on my email but was just too busy to check.
So I instead wrote down my thought process so that somebode can correct
me in case I have misunderstood. I usually do that when it's not clear
what the next action should be.

-- 
Kalle Valo

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
