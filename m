Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E663B163
	for <lists+linux-rockchip@lfdr.de>; Mon, 10 Jun 2019 10:57:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3JUALsZejoAipMAhD/qQEbsvoSLO17pbEAF5defZOK4=; b=i9LYwE/fiui6xt
	OsZL1pM+R4qIQJcmtU8gSvCqAVGt+GBwOADl6opyMWtPhcowQjFhwONytNHVQYenhKtklx9d7qdJ1
	aN+m7i+c+a5SnPKjViwZTCBmWvAc1uVccjJcmE2pBoirvNes28ZHmkgCpplFemPX8liwYaAztXERd
	JHlNPMXwsJKkhpbtpMwGYanMHOfIm/e14W/tbnpTeoWDx6EVfokrU+/a0nJ5ZbJtISEbMRn9F+SO2
	hYCIiu6YgdwvaBr0HFu08gAo/rtDZLlLHJw3Qy0OY97vOrenyrVbStnywoVXs4b7b/NGhkuebv9z/
	5LTP+pQWKb6xH/uUgRrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haG74-0002qT-SR; Mon, 10 Jun 2019 08:57:11 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haG6q-0002md-Ah
 for linux-rockchip@lists.infradead.org; Mon, 10 Jun 2019 08:57:03 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jun 2019 01:56:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,573,1557212400"; d="scan'208";a="183356562"
Received: from irsmsx109.ger.corp.intel.com ([163.33.3.23])
 by fmsmga002.fm.intel.com with ESMTP; 10 Jun 2019 01:56:50 -0700
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.159]) by
 IRSMSX109.ger.corp.intel.com ([169.254.13.115]) with mapi id 14.03.0415.000;
 Mon, 10 Jun 2019 09:56:49 +0100
From: "Hunter, Adrian" <adrian.hunter@intel.com>
To: Douglas Anderson <dianders@chromium.org>, Ulf Hansson
 <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>, Arend van Spriel
 <arend.vanspriel@broadcom.com>
Subject: RE: [PATCH v3 3/5] brcmfmac: sdio: Disable auto-tuning around
 commands expected to fail
Thread-Topic: [PATCH v3 3/5] brcmfmac: sdio: Disable auto-tuning around
 commands expected to fail
Thread-Index: AQHVHYGgpJQnscIJM0Sp+tedAd/IWaaUmKDA
Date: Mon, 10 Jun 2019 08:56:48 +0000
Message-ID: <363DA0ED52042842948283D2FC38E4649C52F8A0@IRSMSX106.ger.corp.intel.com>
References: <20190607223716.119277-1-dianders@chromium.org>
 <20190607223716.119277-4-dianders@chromium.org>
In-Reply-To: <20190607223716.119277-4-dianders@chromium.org>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMDI2YzI0OTgtNzI3MS00MjMzLWI1Y2ItM2UzYmQzMmNjNjI5IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoibXJTOFJGTDUyRTNsdUtXRHErakU5XC96bWhJYkZ6SERVekJnaDZtK3ZjWnF2YlM3ejQ1YlRhdHlKcnZvbERXSFEifQ==
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_015657_801822_C5F6527E 
X-CRM114-Status: GOOD (  19.36  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Madhan Mohan R <MadhanMohan.R@cypress.com>,
 "brcm80211-dev-list.pdl@broadcom.com"
 <brcm80211-dev-list.pdl@broadcom.com>, YueHaibing <yuehaibing@huawei.com>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 "David S. Miller" <davem@davemloft.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>,
 "briannorris@chromium.org" <briannorris@chromium.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 Double Lo <double.lo@cypress.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "mka@chromium.org" <mka@chromium.org>, Wright Feng <wright.feng@cypress.com>,
 "brcm80211-dev-list@cypress.com" <brcm80211-dev-list@cypress.com>, Naveen
 Gupta <naveen.gupta@cypress.com>, Franky Lin <franky.lin@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Douglas Anderson [mailto:dianders@chromium.org]
> Sent: Saturday, June 8, 2019 1:37 AM
> To: Ulf Hansson <ulf.hansson@linaro.org>; Kalle Valo
> <kvalo@codeaurora.org>; Hunter, Adrian <adrian.hunter@intel.com>; Arend
> van Spriel <arend.vanspriel@broadcom.com>
> Cc: brcm80211-dev-list.pdl@broadcom.com; linux-
> rockchip@lists.infradead.org; Double Lo <double.lo@cypress.com>;
> briannorris@chromium.org; linux-wireless@vger.kernel.org; Naveen Gupta
> <naveen.gupta@cypress.com>; Madhan Mohan R
> <madhanmohan.r@cypress.com>; mka@chromium.org; Wright Feng
> <wright.feng@cypress.com>; Chi-Hsien Lin <chi-hsien.lin@cypress.com>;
> netdev@vger.kernel.org; brcm80211-dev-list@cypress.com; Douglas
> Anderson <dianders@chromium.org>; Franky Lin
> <franky.lin@broadcom.com>; linux-kernel@vger.kernel.org; Madhan Mohan
> R <MadhanMohan.R@cypress.com>; Hante Meuleman
> <hante.meuleman@broadcom.com>; YueHaibing
> <yuehaibing@huawei.com>; David S. Miller <davem@davemloft.net>
> Subject: [PATCH v3 3/5] brcmfmac: sdio: Disable auto-tuning around
> commands expected to fail
> 
> There are certain cases, notably when transitioning between sleep and active
> state, when Broadcom SDIO WiFi cards will produce errors on the SDIO bus.
> This is evident from the source code where you can see that we try
> commands in a loop until we either get success or we've tried too many
> times.  The comment in the code reinforces this by saying "just one write
> attempt may fail"
> 
> Unfortunately these failures sometimes end up causing an "-EILSEQ"
> back to the core which triggers a retuning of the SDIO card and that blocks all
> traffic to the card until it's done.
> 
> Let's disable retuning around the commands we expect might fail.
> 
> Fixes: bd11e8bd03ca ("mmc: core: Flag re-tuning is needed on CRC errors")
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
> 
> Changes in v3:
> - Expect errors for all of brcmf_sdio_kso_control() (Adrian).
> 
> Changes in v2: None
> 
>  drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
> b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
> index 4a750838d8cd..4040aae1f9ed 100644
> --- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
> +++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
> @@ -16,6 +16,7 @@
>  #include <linux/mmc/sdio_ids.h>
>  #include <linux/mmc/sdio_func.h>
>  #include <linux/mmc/card.h>
> +#include <linux/mmc/core.h>

SDIO function drivers should not really include linux/mmc/core.h
(Also don't know why linux/mmc/card.h is included)

>  #include <linux/semaphore.h>
>  #include <linux/firmware.h>
>  #include <linux/module.h>
> @@ -667,6 +668,8 @@ brcmf_sdio_kso_control(struct brcmf_sdio *bus, bool
> on)
> 
>  	brcmf_dbg(TRACE, "Enter: on=%d\n", on);
> 
> +	mmc_expect_errors_begin(bus->sdiodev->func1->card->host);
> +
>  	wr_val = (on << SBSDIO_FUNC1_SLEEPCSR_KSO_SHIFT);
>  	/* 1st KSO write goes to AOS wake up core if device is asleep  */
>  	brcmf_sdiod_writeb(bus->sdiodev, SBSDIO_FUNC1_SLEEPCSR,
> wr_val, &err); @@ -727,6 +730,8 @@ brcmf_sdio_kso_control(struct
> brcmf_sdio *bus, bool on)
>  	if (try_cnt > MAX_KSO_ATTEMPTS)
>  		brcmf_err("max tries: rd_val=0x%x err=%d\n", rd_val, err);
> 
> +	mmc_expect_errors_end(bus->sdiodev->func1->card->host);
> +
>  	return err;
>  }
> 
> --
> 2.22.0.rc2.383.gf4fbbf30c2-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
