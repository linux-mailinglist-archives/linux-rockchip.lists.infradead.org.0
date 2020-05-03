Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69DCC1C2CD4
	for <lists+linux-rockchip@lfdr.de>; Sun,  3 May 2020 15:40:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aj9+rJxFc5jexBLodauuh3W+ocYa2bmZp8UkoBnGqYM=; b=SsV5B9yklz9iGQ
	SJsKiGK2sDwlMEl1Eu5Sa5EcB8ytacsVgVQUK7NnngQPoVI623L6j0uBgGqjckuvx6GZJUA3Nw2bL
	6Z6ksww/rfTNdQSD271J8cf3UaftZCYYkhODoPWiIZFZNaLx/M4etCrhcL5AMkmrhd4+hUrgMYGDn
	kXWzWLY7EcY+D+xU9vkPErR4rlrpnwdgrj+gzbGqRY6CP6XBJ8XE7AI26FUayUlkgkB8xi8dgBRzY
	sDrgIDD05gFhDZJE+mdk2wg+H+zO45ELD7MHERLy5GjGOsqYy+GPy57lmaX8N5BmZzZ8Ru0AMopp6
	HiDE7SfR/PTUzhz5vsWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVEqe-0005XR-9R; Sun, 03 May 2020 13:40:00 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVEqb-0005Wp-0Q
 for linux-rockchip@lists.infradead.org; Sun, 03 May 2020 13:39:58 +0000
Received: by mail-pf1-x441.google.com with SMTP id v63so4185289pfb.10
 for <linux-rockchip@lists.infradead.org>; Sun, 03 May 2020 06:39:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=lcJ6YQA2umDkjHwQ21TNb4PHCOJH9tNnF1Ki/HoedvY=;
 b=olVDJ9rtngQoCbVr40Y7lV6rY5iMLJtAZWJJ4DZ4a57nX/S+nx2L0IEezYiw830dxH
 NG7y+bfzkllTLjtwBNky6lwb1nqXw6x069PgUCA1vJp9AmTnRaYl6YYumO3Ps/zH3+F7
 G7mSH/7CUEBGTuggqWWkhXqt1RPjxcoVHi5mhjtbsM7PNANWogWmDmUMIkRQRG3crPdt
 ZFThsBkvcXODKQ8vNwFtjnBHhP7RODZKShef46eHdG5ahT+ZEdkYAqn+HxgbhUIMT80D
 EMpzW6djrOgDcb9v+FJhb+h5yk8DskNumsmAA5MKKIVYL8Z4+UTRiycRialwYV47ah5U
 vNtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=lcJ6YQA2umDkjHwQ21TNb4PHCOJH9tNnF1Ki/HoedvY=;
 b=pvtTslNIGE7dnYl7WnI8mGQxAP+OwA+YzV235siZz+87sriZDlACAKWUzX5qbjwo1F
 Plfpfh8GGovB56tk5UCez6wZSP/tOAIAfGkZ2BGUGm0ZJp8NZLagMWAPTYYksSatgvUm
 F9DncL4XiooEm6EtKomBNL3+SKz7r2ZW53m1iMSKrhtbsTq+mQwkLa8vAaKsLSzEmLtN
 sh+rTF6FseWY1bET0KDdCpE/Z9pWcc7ON+V2XWpbVjLKwXxpAxhjHDtcyz91kNxgBpPG
 h4X7jQzhhn1mZyf7SeOFsGNC1xFv+tNWXl4JVygVP9EGAW0c2SBOvWh5NvdO+sh3I020
 z4rQ==
X-Gm-Message-State: AGi0PuY7tq70FL7mKyToLZalzmFLqcp1f5pNcYQEkoyohDqFVT0b3Lnp
 n7AhzkddEvLfcmYb98U1pkWEfJ0QgA==
X-Google-Smtp-Source: APiQypIIVO9H0ZzaHQpdtHmaNSzAGA6Wu5deIdUH6K8UEWqV5tyvJNcLPXU1ERBjh6c+/1UFabWjfQ==
X-Received: by 2002:a63:1645:: with SMTP id 5mr13235092pgw.145.1588513195450; 
 Sun, 03 May 2020 06:39:55 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:503:ca7:4568:5f39:47ce:15e6])
 by smtp.gmail.com with ESMTPSA id w69sm6563504pff.168.2020.05.03.06.39.48
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 03 May 2020 06:39:54 -0700 (PDT)
Date: Sun, 3 May 2020 19:09:44 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v2 8/8] rockchip: Enable PCIe/M.2 on rock960 board
Message-ID: <20200503133944.GA28003@Mani-XPS-13-9360>
References: <20200430070412.12499-1-jagan@amarulasolutions.com>
 <20200430070412.12499-9-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430070412.12499-9-jagan@amarulasolutions.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_063957_213404_12B9FC55 
X-CRM114-Status: GOOD (  17.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: patrick@blueri.se, linux-rockchip@lists.infradead.org,
 Tom Cubie <tom@radxa.com>, Simon Glass <sjg@chromium.org>,
 Kever Yang <kever.yang@rock-chips.com>, u-boot@lists.denx.de,
 pbrobinson@gmail.com, sunil@amarulasolutions.com,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula@amarulasolutions.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, Apr 30, 2020 at 12:34:12PM +0530, Jagan Teki wrote:
> Due to some on board limitation rock960 PCIe
> works only with 1.8V IO domain.
> 
> So, this patch enables grf io_sel explicitly
> to make PCIe/M.2 to work.
> 
> Cc: Tom Cubie <tom@radxa.com>
> Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
> Changes for v2:
> - none
> 
>  board/vamrs/rock960_rk3399/rock960-rk3399.c | 20 ++++++++++++++++++++
>  configs/rock960-rk3399_defconfig            |  5 +++++
>  2 files changed, 25 insertions(+)
> 
> diff --git a/board/vamrs/rock960_rk3399/rock960-rk3399.c b/board/vamrs/rock960_rk3399/rock960-rk3399.c
> index 68a127b9ac..98d62e89ca 100644
> --- a/board/vamrs/rock960_rk3399/rock960-rk3399.c
> +++ b/board/vamrs/rock960_rk3399/rock960-rk3399.c
> @@ -2,3 +2,23 @@
>  /*
>   * Copyright (C) 2018 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>   */
> +
> +#include <common.h>
> +#include <syscon.h>
> +#include <asm/io.h>
> +#include <asm/arch-rockchip/clock.h>
> +#include <asm/arch-rockchip/grf_rk3399.h>
> +#include <asm/arch-rockchip/hardware.h>
> +
> +#ifdef CONFIG_MISC_INIT_R
> +int misc_init_r(void)
> +{
> +	struct rk3399_grf_regs *grf =
> +	    syscon_get_first_range(ROCKCHIP_SYSCON_GRF);
> +
> +	/* BT565 is in 1.8v domain */

From where this BT565 comes in?

Anyway, I don't have the PCI-E device with me to test this change but
it looks good to me.

Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

PS: Added Peter to CC incase he is interested.

Thanks,
Mani

> +	rk_setreg(&grf->io_vsel, BIT(0));
> +
> +	return 0;
> +}
> +#endif
> diff --git a/configs/rock960-rk3399_defconfig b/configs/rock960-rk3399_defconfig
> index c4e954731a..cb1ec3c26b 100644
> --- a/configs/rock960-rk3399_defconfig
> +++ b/configs/rock960-rk3399_defconfig
> @@ -9,6 +9,7 @@ CONFIG_DEBUG_UART_BASE=0xFF1A0000
>  CONFIG_DEBUG_UART_CLOCK=24000000
>  CONFIG_DEBUG_UART=y
>  CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-rock960.dtb"
> +CONFIG_MISC_INIT_R=y
>  CONFIG_DISPLAY_BOARDINFO_LATE=y
>  # CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
>  CONFIG_SPL_STACK_R=y
> @@ -19,6 +20,7 @@ CONFIG_CMD_BOOTZ=y
>  CONFIG_CMD_GPT=y
>  CONFIG_CMD_MMC=y
>  CONFIG_CMD_USB=y
> +CONFIG_CMD_PCI=y
>  # CONFIG_CMD_SETEXPR is not set
>  CONFIG_CMD_TIME=y
>  CONFIG_CMD_PMIC=y
> @@ -36,10 +38,13 @@ CONFIG_MMC_SDHCI=y
>  CONFIG_MMC_SDHCI_SDMA=y
>  CONFIG_MMC_SDHCI_ROCKCHIP=y
>  CONFIG_DM_ETH=y
> +CONFIG_NVME=y
> +CONFIG_PCI=y
>  CONFIG_PMIC_RK8XX=y
>  CONFIG_REGULATOR_PWM=y
>  CONFIG_REGULATOR_RK8XX=y
>  CONFIG_PWM_ROCKCHIP=y
> +CONFIG_DM_RESET=y
>  CONFIG_BAUDRATE=1500000
>  CONFIG_DEBUG_UART_SHIFT=2
>  CONFIG_SYSRESET=y
> -- 
> 2.17.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
