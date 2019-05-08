Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E49C172F1
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 May 2019 09:53:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nxn1v+bVGG1NI6iQv2R3sAyaNLU5ZlYaW3gnNfG4S1g=; b=hB8cFb74C1c9eW
	6nvrhaYVwvq08zIPw2X5y2hkMFsYkklS+cTJFg53w75jYHF7Uzasu3OaVqqlh8mMWHYDcnexOepbY
	vuwYc7epkwwNhaehkmAgReFr7GmupC54nCAqbKp3MCCZqiHHP20l06S+eXaopgcgdJ+DVEOGzZXJb
	0Twq71ZMVR6zMM0CMsi37mpIv5z1uIDDHeaA2YOPOiKDAoUBLk/3JRS/7+iuQGi/q+tz37801K88X
	jIXZMaXF4imqx1nab45vUVC8VHrfiZYyTBnUgg9FqfquqjdyLQS+M/rgEKLRlQJL6M3rTvltFk9W8
	VElshHWXBKnXKHPgI2Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOHO2-0001DI-Vy; Wed, 08 May 2019 07:53:10 +0000
Received: from regular1.263xmail.com ([211.150.70.205])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOHO0-0001Ce-6U
 for linux-rockchip@lists.infradead.org; Wed, 08 May 2019 07:53:09 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.141])
 by regular1.263xmail.com (Postfix) with ESMTP id 0556B4E5;
 Wed,  8 May 2019 15:53:05 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P18796T140244640855808S1557301974509187_; 
 Wed, 08 May 2019 15:53:02 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <e30d4eb564457b62c105f18f689b30d7>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: u-boot@lists.denx.de
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH] rockchip: rk3399: spl: Don't init dram if TPL enabled
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Akash Gajjar <akash@openedev.com>
References: <20190508063956.26549-1-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <dca9d6a7-5018-2d46-4d70-c0543d405811@rock-chips.com>
Date: Wed, 8 May 2019 15:52:54 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20190508063956.26549-1-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_005308_397052_59916083 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 u-boot@lists.denx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Jagan,


On 05/08/2019 02:39 PM, Jagan Teki wrote:
> DRAM init would require in
> - TPL stage if target support TPL and
> - SPL stage if target support SPL alone
>
> So, don't initialize the dram in SPL if TPL defined and at
> the same time enable it if TPL undefined which is SPL alone.
>
> Tested in TPL and SPL supported boards.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>  arch/arm/mach-rockchip/rk3399-board-spl.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/arm/mach-rockchip/rk3399-board-spl.c b/arch/arm/mach-rockchip/rk3399-board-spl.c
> index 3eea73ef33..a439e09b61 100644
> --- a/arch/arm/mach-rockchip/rk3399-board-spl.c
> +++ b/arch/arm/mach-rockchip/rk3399-board-spl.c
> @@ -198,11 +198,13 @@ void board_init_f(ulong dummy)
>  		return;
>  	}
>  
> +#if !defined(SUPPORT_TPL)
>  	ret = uclass_get_device(UCLASS_RAM, 0, &dev);
>  	if (ret) {
>  		pr_err("DRAM init failed: %d\n", ret);
>  		return;
>  	}
> +#endif

We still need to init DRAM driver in SPL so that we can get correct ram
info,
but we don't need to run the dram init program, which should have been
handled in DRAM driver.

Thanks,
- Kever
>  }
>  
>  #if defined(SPL_GPIO_SUPPORT)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
