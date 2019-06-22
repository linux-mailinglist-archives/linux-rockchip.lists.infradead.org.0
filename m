Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB9A94F60B
	for <lists+linux-rockchip@lfdr.de>; Sat, 22 Jun 2019 15:50:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iZFNMEI3D0sYw686aPNK1FR2WJCgh8WMx16Gr28ErA0=; b=Lgwd95pyCWSS7A
	90dx0VI/jDgvagiJl4HBG1Qgh/7ITGR+3nHhb8pzAPDtC1S7MeTD3KO50lpd2eBNu7ccW+EQTKhtx
	BtYDaI4m823XmaldYUMqycsaJHEbwYeoSWTl9DZFgdMy0pr9stKER2dpXONCNu5scL+20wpU4Gk75
	gz2FaPuTrkNVpSknveot+Oygvhz1w4h6pAQ6o9Ta2DKZzs5O48UeGyxXHaxrHL1vz8q7+b8ItKqdm
	Q+dSzS4ucXsMXHYap6cw7F1vCp/WkC8dH1e71nqS8MXb3d/UjORi6Xu/QqOoSwePPvlO3FdSNoKjV
	CFxGqXqf1fd51R8lqIgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hegPS-0007hT-QQ; Sat, 22 Jun 2019 13:50:26 +0000
Received: from regular1.263xmail.com ([211.150.70.203])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hegPP-0007gz-Su
 for linux-rockchip@lists.infradead.org; Sat, 22 Jun 2019 13:50:25 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.73])
 by regular1.263xmail.com (Postfix) with ESMTP id 0364A312;
 Sat, 22 Jun 2019 21:50:22 +0800 (CST)
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
 P28127T140277761165056S1561211420618808_; 
 Sat, 22 Jun 2019 21:50:21 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <af770547bb3cfcd8707afb4f33a25b53>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 110.125.168.244
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v2 6/8] rockchip: rk3399: tpl: Add spl_board_init
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, u-boot@lists.denx.de
References: <20190620185506.11449-1-jagan@amarulasolutions.com>
 <20190620185506.11449-7-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <177b2648-19e0-ff66-ba66-70a60c773903@rock-chips.com>
Date: Sat, 22 Jun 2019 21:50:20 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20190620185506.11449-7-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_065024_121503_EFEA4C3E 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.203 listed in list.dnswl.org]
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


On 06/21/2019 02:55 AM, Jagan Teki wrote:
> Add spl_board_init for TPL, that have TPL banner will help
> to print tpl boot prints.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>  arch/arm/mach-rockchip/rk3399-board-tpl.c | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/arch/arm/mach-rockchip/rk3399-board-tpl.c b/arch/arm/mach-rockchip/rk3399-board-tpl.c
> index 86d3ffe97c..72d0dd914e 100644
> --- a/arch/arm/mach-rockchip/rk3399-board-tpl.c
> +++ b/arch/arm/mach-rockchip/rk3399-board-tpl.c
> @@ -8,6 +8,7 @@
>  #include <dm.h>
>  #include <ram.h>
>  #include <spl.h>
> +#include <version.h>
>  #include <asm/io.h>
>  #include <asm/arch-rockchip/bootrom.h>
>  
> @@ -73,6 +74,12 @@ u32 spl_boot_device(void)
>  	return BOOT_DEVICE_BOOTROM;
>  }
>  
> +void spl_board_init(void)
> +{
> +	puts("\nU-Boot TPL "  PLAIN_VERSION " (" U_BOOT_DATE " - "
> +	     U_BOOT_TIME " " U_BOOT_TZ ")\n");
> +}
> +
>  #ifdef CONFIG_SPL_LOAD_FIT
>  int board_fit_config_name_match(const char *name)
>  {




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
