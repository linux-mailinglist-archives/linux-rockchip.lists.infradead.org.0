Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E86635815
	for <lists+linux-rockchip@lfdr.de>; Wed,  5 Jun 2019 09:55:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cXgSP8KcGT47hODCeh1WFnVDVNDvb/i67okCRHIp9V4=; b=bBvyol6N3jgGlhuVrSxGv8YNm
	8lWbNxpw3UfH2czIynSsAaXQoLYpdwzPBs4ncsKcwakcO8tjR/I/uDQgRQGAWC4SoHMf+qQoI51o8
	fR8tgf/u62fzTnIpg7RXreZyHr+GvegQjb17TBIe62xXT8kSLpsAbnH58pVDJgR1jIFN4uicD1bcx
	aCsJhv+BKv8GEAqUPOHPHNpcNcJo4uTabYA69S25mwJe4s7jt+GddsieV1Fd+HYMg2bTVGIc1gfjR
	xuY/FkjvTIoFY37uVAhdk/ZYy9hYx3bDudWg/CKyUmyMtw5l+A/aVhhYRkccAWtpPEhXnw7zesFNq
	4r8/O616Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYQl9-0003fK-DU; Wed, 05 Jun 2019 07:54:59 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYQl6-0003ev-Rn
 for linux-rockchip@lists.infradead.org; Wed, 05 Jun 2019 07:54:58 +0000
Received: by mail-pl1-x642.google.com with SMTP id g21so9408464plq.0
 for <linux-rockchip@lists.infradead.org>; Wed, 05 Jun 2019 00:54:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=aiue8tHWiumr4g0nytcyTjYaJHwPhuqRgFXgCDSDwM0=;
 b=KGG4kw7mp5EISlgpPMNpn5iOHG3+VLhZMDhZ+778rosnxJtQ2DdjdZ5tkcWiWRFGGX
 13t7oW58cPGQVxfvPViY7GfglNUiaobpnuA5U9Lhk/zaJJvJa8iiwJxVGhf39no86EP+
 tHTVDIzoVY5+6E11qiOyJvAD7RzmosldNH4nY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=aiue8tHWiumr4g0nytcyTjYaJHwPhuqRgFXgCDSDwM0=;
 b=iyTdKR4jjkslg2VgxfmZ8oB1GTrwHn6Po0wt0YhrMDN1U8/J1uJAEGsv+r9NmiISNl
 hIfKB3hGViDi9NhggDw2GdTN7fLNouFZRlP/rmSGF5zdRLEEkM0UpNq/LbFhK11IxwOl
 KHjI6Hzc6Q5wk7J8KXnOlhsy8VdNvrzUd1bpgBok1nZJqSsxZeT0PuB+Z01rq+lOAx5F
 xcNTaVLOQg/xzCQoA30ji/OlUYhem0KIBQwv+CfEVPwfRPvwZkcF0bN7iIEQ2+T16stA
 tTYwoF89qUqIXG8RLnoOkPuufVbEyf0kA4FsyHerhDHMJqs42t9+NeLnIr7XQx5k5k+4
 Ol2A==
X-Gm-Message-State: APjAAAXmwofyHSNx3BmZEdOMI7tlWEHNi1/ZG8oO0u68rcQoAjKrUzvU
 DTUImtNR9ECGUoJ1Ba3GWrtDyw==
X-Google-Smtp-Source: APXvYqx1Gbz9qsU2PuuHu8YloVvKfIX0ptj4e8Hzpp+GXSquNY3RQsHEhI2ABswO9YBHJkaCFOSHnA==
X-Received: by 2002:a17:902:8a87:: with SMTP id
 p7mr25322779plo.124.1559721294846; 
 Wed, 05 Jun 2019 00:54:54 -0700 (PDT)
Received: from [10.230.40.234] ([192.19.215.250])
 by smtp.gmail.com with ESMTPSA id 11sm28366590pfu.155.2019.06.05.00.54.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 00:54:54 -0700 (PDT)
Subject: Re: [PATCH v2 2/3] mmc: core: API for temporarily disabling
 auto-retuning due to errors
To: Douglas Anderson <dianders@chromium.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>,
 Adrian Hunter <adrian.hunter@intel.com>
References: <20190603183740.239031-1-dianders@chromium.org>
 <20190603183740.239031-3-dianders@chromium.org>
From: Arend Van Spriel <arend.vanspriel@broadcom.com>
Message-ID: <25fe1725-76fa-2739-1427-b0e8823ea4ae@broadcom.com>
Date: Wed, 5 Jun 2019 09:54:48 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190603183740.239031-3-dianders@chromium.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_005456_902775_1EF1A104 
X-CRM114-Status: GOOD (  26.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Madhan Mohan R <madhanmohan.r@cypress.com>,
 brcm80211-dev-list.pdl@broadcom.com,
 Wolfram Sang <wsa+renesas@sang-engineering.com>, netdev@vger.kernel.org,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, briannorris@chromium.org,
 linux-wireless@vger.kernel.org, Double Lo <double.lo@cypress.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Avri Altman <avri.altman@wdc.com>, mka@chromium.org,
 Wright Feng <wright.feng@cypress.com>, linux-mmc@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>, brcm80211-dev-list@cypress.com,
 Naveen Gupta <naveen.gupta@cypress.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 6/3/2019 8:37 PM, Douglas Anderson wrote:
> Normally when the MMC core sees an "-EILSEQ" error returned by a host
> controller then it will trigger a retuning of the card.  This is
> generally a good idea.
> 
> However, if a command is expected to sometimes cause transfer errors
> then these transfer errors shouldn't cause a re-tuning.  This
> re-tuning will be a needless waste of time.  One example case where a
> transfer is expected to cause errors is when transitioning between
> idle (sometimes referred to as "sleep" in Broadcom code) and active
> state on certain Broadcom WiFi cards.  Specifically if the card was
> already transitioning between states when the command was sent it
> could cause an error on the SDIO bus.
> 
> Let's add an API that the SDIO card drivers can call that will
> temporarily disable the auto-tuning functionality.  Then we can add a
> call to this in the Broadcom WiFi driver and any other driver that
> might have similar needs.
> 
> NOTE: this makes the assumption that the card is already tuned well
> enough that it's OK to disable the auto-retuning during one of these
> error-prone situations.  Presumably the driver code performing the
> error-prone transfer knows how to recover / retry from errors.  ...and
> after we can get back to a state where transfers are no longer
> error-prone then we can enable the auto-retuning again.  If we truly
> find ourselves in a case where the card needs to be retuned sometimes
> to handle one of these error-prone transfers then we can always try a
> few transfers first without auto-retuning and then re-try with
> auto-retuning if the first few fail.
> 
> Without this change on rk3288-veyron-minnie I periodically see this in
> the logs of a machine just sitting there idle:
>    dwmmc_rockchip ff0d0000.dwmmc: Successfully tuned phase to XYZ
> 
> Fixes: bd11e8bd03ca ("mmc: core: Flag re-tuning is needed on CRC errors")
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
> Note that are are a whole boatload of different ways that we could
> provide an API for the Broadcom WiFi SDIO driver.  This patch
> illustrates one way but if maintainers feel strongly that this is too
> ugly and have a better idea then I can give it a shot too.  From a
> purist point of view I kinda felt that the "expect errors" really
> belonged as part of the mmc_request structure, but getting it into
> there meant changing a whole pile of core SD/MMC APIs.  Simply adding
> it to the host seemed to match the current style better and was a less
> intrusive change.

Hi Doug,

Sorry for bringing this up, but there used to be an issue with retuning 
in general, ie. the device handled tuning command 19 only once after 
startup. I guess that is no longer an issue given your results. I guess 
the problem goes away when you disable device sleep functionality. No 
what you want in terms of power consumption, but would be good to know. 
You can disable it with below patch.

Regards,
Arend
---
diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c 
b/drivers
index 15a40fd..18e90bd 100644
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
@@ -307,7 +307,7 @@ struct rte_console {
  #define BRCMF_IDLE_ACTIVE      0       /* Do not request any SD clock 
change
                                          * when idle
                                          */
-#define BRCMF_IDLE_INTERVAL    1
+#define BRCMF_IDLE_INTERVAL    0

  #define KSO_WAIT_US 50
  #define MAX_KSO_ATTEMPTS (PMU_MAX_TRANSITION_DLY/KSO_WAIT_US)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
