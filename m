Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA8454F602
	for <lists+linux-rockchip@lfdr.de>; Sat, 22 Jun 2019 15:46:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CzM7Xx69M7i+WNs2U0syZllKsI+4BZbS58lfP5dM/8Q=; b=cW541cNqn0kBF4
	2S8qqF0AMAkWgyIuSpZ5Wsy6+HgMtjTJzT3rmlsK0MKL1u792WVeU5uG7vxrSFf7qQ4Wyu1lJMrnv
	336q1qfjC2i3G3AeZetSi5OHJlD+VRJ9fTW7ujmqhAFNoDU+wxUtPT9wq4QILgimsoOLAiSSjYm9w
	/rx6OXoVIjQveNFgIhwZs9tj2XNkzT5XrUhlaMTo2rekuSR8FBtpi6jGBpA1+ke2VoBZAfiHf1Kr7
	9YIfhlMpqgHHzAFci/SL+8Gc/CUiTRlPjVamYEp4A5KYpx9k11CRNZpmlTmCsF3UZAeiRCofccGhk
	R+7Kn/NomJAWOC45fzew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hegLC-0005ws-Sg; Sat, 22 Jun 2019 13:46:02 +0000
Received: from regular1.263xmail.com ([211.150.70.206])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hegL8-0005vZ-8j
 for linux-rockchip@lists.infradead.org; Sat, 22 Jun 2019 13:46:00 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.228])
 by regular1.263xmail.com (Postfix) with ESMTP id DD0C4216;
 Sat, 22 Jun 2019 21:45:45 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [192.168.1.3] (unknown [110.125.168.244])
 by smtp.263.net (postfix) whith ESMTP id
 P14262T140501577893632S1561211146273552_; 
 Sat, 22 Jun 2019 21:45:47 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <67ba2548c72b3eccffb3df973d29c094>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 110.125.168.244
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v2 1/8] board: rk3399: Drop explicit uart enablement in
 spl_board_init
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, u-boot@lists.denx.de
References: <20190620185506.11449-1-jagan@amarulasolutions.com>
 <20190620185506.11449-2-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <fc1a0515-5baa-e212-1028-66a7dacdd952@rock-chips.com>
Date: Sat, 22 Jun 2019 21:45:43 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20190620185506.11449-2-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_064558_696455_37488D1A 
X-CRM114-Status: GOOD (  15.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.206 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Jagan,


On 06/21/2019 02:54 AM, Jagan Teki wrote:
> preloader_console_init is used for printing SPL boot banner that
> usually called from spl_board_init.
>
> The current spl_board_init in evb and rock960 is enabling explicit
> pinctrl, debug uart prior to calling preloader_console_init which
> eventually not required since board_init_f is already enabled
> debug uart.
>
> So, drop those explicit enablement calls from  spl_board_init of
> evb, rock960.
>
> Tested this by enabling CONFIG_SPL_BOARD_INIT and adding
> u-boot,dm-pre-reloc property for uart node.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>  board/rockchip/evb_rk3399/evb-rk3399.c      | 23 +------------------
>  board/vamrs/rock960_rk3399/rock960-rk3399.c | 25 +--------------------
>  2 files changed, 2 insertions(+), 46 deletions(-)
>
> diff --git a/board/rockchip/evb_rk3399/evb-rk3399.c b/board/rockchip/evb_rk3399/evb-rk3399.c
> index bf2ad98c47..769b5d146f 100644
> --- a/board/rockchip/evb_rk3399/evb-rk3399.c
> +++ b/board/rockchip/evb_rk3399/evb-rk3399.c
> @@ -6,7 +6,6 @@
>  #include <common.h>
>  #include <dm.h>
>  #include <dm/pinctrl.h>
> -#include <dm/uclass-internal.h>
>  #include <asm/arch-rockchip/periph.h>
>  #include <power/regulator.h>
>  #include <spl.h>
> @@ -68,27 +67,7 @@ out:
>  
>  void spl_board_init(void)
>  {
> -	struct udevice *pinctrl;
> -	int ret;
> -
> -	ret = uclass_get_device(UCLASS_PINCTRL, 0, &pinctrl);
> -	if (ret) {
> -		debug("%s: Cannot find pinctrl device\n", __func__);
> -		goto err;
> -	}
> -
> -	/* Enable debug UART */
> -	ret = pinctrl_request_noflags(pinctrl, PERIPH_ID_UART_DBG);
> -	if (ret) {
> -		debug("%s: Failed to set up console UART\n", __func__);
> -		goto err;
> -	}
> -
>  	preloader_console_init();
> -	return;
> -err:
> -	printf("%s: Error %d\n", __func__, ret);
>  
> -	/* No way to report error here */
> -	hang();
> +	return;
>  }
> diff --git a/board/vamrs/rock960_rk3399/rock960-rk3399.c b/board/vamrs/rock960_rk3399/rock960-rk3399.c
> index 0f5ef3a09a..018e4b55b8 100644
> --- a/board/vamrs/rock960_rk3399/rock960-rk3399.c
> +++ b/board/vamrs/rock960_rk3399/rock960-rk3399.c
> @@ -5,9 +5,6 @@
>  
>  #include <common.h>
>  #include <dm.h>
> -#include <dm/pinctrl.h>
> -#include <dm/uclass-internal.h>
> -#include <asm/arch-rockchip/periph.h>
>  #include <power/regulator.h>
>  #include <spl.h>
>  
> @@ -24,27 +21,7 @@ int board_init(void)
>  
>  void spl_board_init(void)
>  {
> -	struct udevice *pinctrl;
> -	int ret;
> -
> -	ret = uclass_get_device(UCLASS_PINCTRL, 0, &pinctrl);
> -	if (ret) {
> -		debug("%s: Cannot find pinctrl device\n", __func__);
> -		goto err;
> -	}
> -
> -	/* Enable debug UART */
> -	ret = pinctrl_request_noflags(pinctrl, PERIPH_ID_UART_DBG);
> -	if (ret) {
> -		debug("%s: Failed to set up console UART\n", __func__);
> -		goto err;
> -	}
> -
>  	preloader_console_init();
> -	return;
> -err:
> -	printf("%s: Error %d\n", __func__, ret);
>  
> -	/* No way to report error here */
> -	hang();
> +	return;
>  }




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
