Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29BEF2C64C
	for <lists+linux-rockchip@lfdr.de>; Tue, 28 May 2019 14:18:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AEJODySqaPlZiDb0Wk8Al68ty1CDuoDhW+6aKDMkzEk=; b=fNF0AiMLikeKl/
	8xpp8Tn8206kKBFbYlaWAbr6+/2XE/hwT/hMJO4d2fSGKmyMN4VWylwb/tTHDuHMILnyVhnOPABtY
	YTTM5U2lZkSmp4Mr4iM8Hf15ulRNvFbk2W6F9IYA3EMHJadjAWNonL6JOV4cC54HfvbHKcpm8WWRr
	TVDGaWHp9CuP60hw09dkHqX0BfQDTDn0z1g5CeoPA02K8n94dRPB9D+fyoHkyGgw2WUgXbKoon55v
	MYiXy8AB1kK/Oo4nSZncV+UB0LG89d1accOv/6X3COYdkqx3zQRWxDNdwBX3gAeGb40LXTMQIVwMK
	piL2wzCZHIkftSbPwu3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVb3t-0006Uz-2L; Tue, 28 May 2019 12:18:37 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVb3p-0006Uf-TT
 for linux-rockchip@lists.infradead.org; Tue, 28 May 2019 12:18:35 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 7D3A460A00; Tue, 28 May 2019 12:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559045913;
 bh=P/xJPgEaFpoP31E3fqQphLr7ltwMwL8lDre1PA+osY4=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=Rkv7vB+aIjsGcyZ1qv5RydDbPoTcnUSowtTa/dLBn9+JzJzw33tAIvMQitbspoB0G
 xwj63pT70FPYhXuKo/df95dlOK3EC63O4G3zXEi9XyCAj2peQgINKKc/jczRorGzjd
 bu84dxsmryLjh8YrwFASAWoB2FKJ+GoNdfrfg38Q=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,MISSING_DATE,MISSING_MID,SPF_NONE autolearn=no
 autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 2B9A6601D4;
 Tue, 28 May 2019 12:18:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559045912;
 bh=P/xJPgEaFpoP31E3fqQphLr7ltwMwL8lDre1PA+osY4=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=Dm7mPJKpTsMbO9PbWdABRBzre4eVfMccKtNNceUaRX4rYi7Ri3Cg21sBewXc0xTas
 GMK+s5+0l9hsRUg9GtpSsR9rzKTn8YQK0DEj3rpiue8vMjBW9JIqjVd/WIMKLRo46Q
 5WYrIU2mhucPnTTC2+1oBRhzvxCxCUB8F+4T4ATk=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 2B9A6601D4
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH 1/3] brcmfmac: re-enable command decode in sdio_aos for
 BRCM 4354
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20190517225420.176893-2-dianders@chromium.org>
References: <20190517225420.176893-2-dianders@chromium.org>
To: Douglas Anderson <dianders@chromium.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190528121833.7D3A460A00@smtp.codeaurora.org>
Date: Tue, 28 May 2019 12:18:33 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_051833_985602_ED4DECCF 
X-CRM114-Status: GOOD (  15.40  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Ulf Hansson <ulf.hansson@linaro.org>, Douglas Anderson <dianders@chromium.org>,
 linux-kernel@vger.kernel.org, Hante Meuleman <hante.meuleman@broadcom.com>,
 "David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, briannorris@chromium.org,
 linux-wireless@vger.kernel.org,
 Arend van Spriel <arend.vanspriel@broadcom.com>,
 YueHaibing <yuehaibing@huawei.com>, Adrian Hunter <adrian.hunter@intel.com>,
 linux-rockchip@lists.infradead.org, brcm80211-dev-list.pdl@broadcom.com,
 mka@chromium.org, Naveen Gupta <naveen.gupta@cypress.com>,
 Wright Feng <wright.feng@cypress.com>, brcm80211-dev-list@cypress.com,
 Double Lo <double.lo@cypress.com>, Franky Lin <franky.lin@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Douglas Anderson <dianders@chromium.org> wrote:

> In commit 29f6589140a1 ("brcmfmac: disable command decode in
> sdio_aos") we disabled something called "command decode in sdio_aos"
> for a whole bunch of Broadcom SDIO WiFi parts.
> 
> After that patch landed I find that my kernel log on
> rk3288-veyron-minnie and rk3288-veyron-speedy is filled with:
>   brcmfmac: brcmf_sdio_bus_sleep: error while changing bus sleep state -110
> 
> This seems to happen every time the Broadcom WiFi transitions out of
> sleep mode.  Reverting the part of the commit that affects the WiFi on
> my boards fixes the problem for me, so that's what this patch does.
> 
> Note that, in general, the justification in the original commit seemed
> a little weak.  It looked like someone was testing on a SD card
> controller that would sometimes die if there were CRC errors on the
> bus.  This used to happen back in early days of dw_mmc (the controller
> on my boards), but we fixed it.  Disabling a feature on all boards
> just because one SD card controller is broken seems bad.  ...so
> instead of just this patch possibly the right thing to do is to fully
> revert the original commit.
> 
> Fixes: 29f6589140a1 ("brcmfmac: disable command decode in sdio_aos")
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

I don't see patch 2 in patchwork and I assume discussion continues.
Please resend if/when I need to apply something.

2 patches set to Changes Requested.

10948785 [1/3] brcmfmac: re-enable command decode in sdio_aos for BRCM 4354
10948777 [3/3] brcmfmac: sdio: Disable auto-tuning around commands expected to fail

-- 
https://patchwork.kernel.org/patch/10948785/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
