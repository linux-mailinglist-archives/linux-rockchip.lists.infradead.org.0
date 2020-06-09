Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A28D1F3E5D
	for <lists+linux-rockchip@lfdr.de>; Tue,  9 Jun 2020 16:38:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4xfOwo3gkwniMeqK4LR00DGtng1O3tS0CRrIOle8/nM=; b=cJXgdIFnEK9vLDyFqW0wpNJsp
	LuoT8W8smdurgcV1bAFuaJRd9Wf5uDvtb1Kqpp53uFzatTp32O1r8nRs0VzZOBM65Y5L2tti4gWJJ
	Jhn8UjMVF19rse01Wm3vRsKFLfVVgE4NrU3wcVXiRyezGzOLbFDgeI/rH2WKt0xx7bx3XENczukd/
	Toedpbg5peQ6UTBnN+sGcMK5IkJWhSUs1ek6uHvQBpU1jbNpVYsXT06Vik1tdCNanvzknQ3ferbVK
	OV2yoAjSOX7rX0LVPURfc/vSpxEorKR+bQww1V7jrVH7TOzm1yfQslnAOch9qAVjen9BCztVLrlzi
	HYkjjTomg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jifOS-0002nd-Ep; Tue, 09 Jun 2020 14:38:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jifOP-0002md-7G
 for linux-rockchip@lists.infradead.org; Tue, 09 Jun 2020 14:38:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 488E41FB;
 Tue,  9 Jun 2020 07:38:20 -0700 (PDT)
Received: from [10.57.11.57] (unknown [10.57.11.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 15D273F66F;
 Tue,  9 Jun 2020 07:38:16 -0700 (PDT)
Subject: Re: [PATCH v2] mmc: sdhci: Fix HISPD bit handling
To: Jagan Teki <jagan@amarulasolutions.com>, Peng Fan <peng.fan@nxp.com>,
 Jaehoon Chung <jh80.chung@samsung.com>,
 Kever Yang <kever.yang@rock-chips.com>
References: <20200609140135.131887-1-jagan@amarulasolutions.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <097786ed-37ca-cf20-35f4-20a57e6c3b63@arm.com>
Date: Tue, 9 Jun 2020 15:38:11 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200609140135.131887-1-jagan@amarulasolutions.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_073821_303986_6F420330 
X-CRM114-Status: GOOD (  18.46  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: u-boot@lists.denx.de, sunil@amarulasolutions.com,
 linux-amarula@amarulasolutions.com, linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 2020-06-09 15:01, Jagan Teki wrote:
> SDHCI HISPD bits need to be configured based on desired mmc
> timings mode and some HISPD quirks.
> 
> So, handle the HISPD bit based on the mmc computed selected
> mode(timing parameter) rather than fixed mmc card clock
> frequency.
> 
> Linux handle the HISPD similar like this in below commit,
> 
> commit <501639bf2173> ("mmc: sdhci: fix SDHCI_QUIRK_NO_HISPD_BIT handling")
> 
> This eventually fixed the mmc write issue observed in
> rk3399 sdhci controller.
> 
> Bug log for refernece,
> => gpt write mmc 0 $partitions
> Writing GPT: mmc write failed
> ** Can't write to device 0 **
> ** Can't write to device 0 **
> error!
> 
> Cc: Kever Yang <kever.yang@rock-chips.com>
> Cc: Peng Fan <peng.fan@nxp.com>
> Reviewed-by: Jaehoon Chung <jh80.chung@samsung.com>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
> Changes for v2:
> - collect Jaehoon R-b
> 
>   drivers/mmc/sdhci.c | 23 +++++++++++++++--------
>   1 file changed, 15 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/mmc/sdhci.c b/drivers/mmc/sdhci.c
> index 92cc8434af..280b8c88eb 100644
> --- a/drivers/mmc/sdhci.c
> +++ b/drivers/mmc/sdhci.c
> @@ -594,14 +594,21 @@ static int sdhci_set_ios(struct mmc *mmc)
>   			ctrl &= ~SDHCI_CTRL_4BITBUS;
>   	}
>   
> -	if (mmc->clock > 26000000)
> -		ctrl |= SDHCI_CTRL_HISPD;
> -	else
> -		ctrl &= ~SDHCI_CTRL_HISPD;
> -
> -	if ((host->quirks & SDHCI_QUIRK_NO_HISPD_BIT) ||
> -	    (host->quirks & SDHCI_QUIRK_BROKEN_HISPD_MODE))
> -		ctrl &= ~SDHCI_CTRL_HISPD;
> +	if (!(host->quirks & SDHCI_QUIRK_NO_HISPD_BIT) ||

Should that be "&&" rather than "||"? Otherwise this will always 
evaluate to true unless *both* quirks are set, which isn't equivalent to 
the check being removed above.

Robin.

> +	    !(host->quirks & SDHCI_QUIRK_BROKEN_HISPD_MODE)) {
> +		if (mmc->selected_mode == MMC_HS ||
> +		    mmc->selected_mode == SD_HS ||
> +		    mmc->selected_mode == MMC_DDR_52 ||
> +		    mmc->selected_mode == MMC_HS_200 ||
> +		    mmc->selected_mode == MMC_HS_400 ||
> +		    mmc->selected_mode == UHS_SDR25 ||
> +		    mmc->selected_mode == UHS_SDR50 ||
> +		    mmc->selected_mode == UHS_SDR104 ||
> +		    mmc->selected_mode == UHS_DDR50)
> +			ctrl |= SDHCI_CTRL_HISPD;
> +		else
> +			ctrl &= ~SDHCI_CTRL_HISPD;
> +	}
>   
>   	sdhci_writeb(host, ctrl, SDHCI_HOST_CONTROL);
>   
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
