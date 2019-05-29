Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9C2A2D735
	for <lists+linux-rockchip@lfdr.de>; Wed, 29 May 2019 10:03:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4zQVkthfkpMIu4YUQMYlWLRGAGpkgcylObKp3dnrvjA=; b=lshjTNDHNR451q
	EidyHqnZCCOKsWRYMA8vhf4N8GvOzgsvOq84aEIrQ4o5HqP14pLTlrtOgDre8sByb9zsClZgmndTW
	fdLCcAOWvQhuKa6c3IHZG87eIfNd8PAHvJWN3UngiIbus+xJBuY6cEcjaXoc8g7gZcWhwGGz9iJ1B
	NfyB3H2dWucL2d7ol9Cf4FqFOx45L7MrfBbEmbLdp1ZF8y2VR93oNfB3eOrWr/ksF9c9xJJFJPZnv
	mtGCGm7xVAHTzHBpDJvJTLTHNcvFlPvBlKoB6S76jetwa6ys0BCcchscYXrMM5pArLpcc4/503dII
	i0/luv0AiWy91PDnOy9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVtY7-0008ED-23; Wed, 29 May 2019 08:03:03 +0000
Received: from regular1.263xmail.com ([211.150.70.199])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVtY4-0008D4-Iu
 for linux-rockchip@lists.infradead.org; Wed, 29 May 2019 08:03:02 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.173])
 by regular1.263xmail.com (Postfix) with ESMTP id B1460399;
 Wed, 29 May 2019 16:02:58 +0800 (CST)
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
 P30623T140168797349632S1559116971454375_; 
 Wed, 29 May 2019 16:02:58 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <db305572d9baee7ac26203e3b272fd81>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: u-boot@lists.denx.de
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH 3/3] doc: rockchip: Add doc for rk3399 TPL build/flash
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20190509105746.24830-1-jagan@amarulasolutions.com>
 <20190509105746.24830-3-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <b5cd9180-56c9-dd02-e6bf-4e7638902d5c@rock-chips.com>
Date: Wed, 29 May 2019 16:02:50 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20190509105746.24830-3-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_010300_935183_C4996907 
X-CRM114-Status: GOOD (  17.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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


On 05/09/2019 06:57 PM, Jagan Teki wrote:
> This patch add documentation for TPL build and flashing steps
> for rk3399 boards.
>
> Add full boot log for future reference.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>  doc/README.rockchip | 51 ++++++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 50 insertions(+), 1 deletion(-)
>
> diff --git a/doc/README.rockchip b/doc/README.rockchip
> index ca4d6473b0..264f7e4994 100644
> --- a/doc/README.rockchip
> +++ b/doc/README.rockchip
> @@ -173,7 +173,10 @@ For example:
>       => make u-boot.itb
>  
>       (Get spl/u-boot-spl-dtb.bin, u-boot.itb images and some boards would get
> -      spl/u-boot-spl.bin since it doesn't enable CONFIG_SPL_OF_CONTROL)
> +      spl/u-boot-spl.bin since it doesn't enable CONFIG_SPL_OF_CONTROL
> +
> +      If TPL enabled on the target, get tpl/u-boot-tpl-dtb.bin or tpl/u-boot-tpl.bin
> +      if CONFIG_TPL_OF_CONTROL not enabled)
>  
>  Writing to the board with USB
>  =============================
> @@ -455,6 +458,52 @@ Net:   eth0: ethernet@fe300000
>  Hit any key to stop autoboot:  0
>  =>
>  
> +Option 3: Package the image with TPL:
> +
> +  - Prefix rk3399 header to TPL image
> +
> +    => cd /path/to/u-boot
> +    => ./tools/mkimage -n rk3399 -T rksd -d tpl/u-boot-tpl-dtb.bin out
> +
> +  - Concatinate tpl with spl
> +
> +    => cd /path/to/u-boot
> +    => cat ./spl/u-boot-spl-dtb.bin >> out
> +
> +  - Write tpl+spl at 64th sector
> +
> +    => sudo dd if=out of=/dev/sdc seek=64
> +
> +  - Write U-Boot proper at 16384 sector
> +
> +    => sudo dd if=u-boot.itb of=/dev/sdc seek=16384
> +    => sync
> +
> +Put this SD (or micro-SD) card into your board and reset it. You should see
> +something like:
> +
> +U-Boot TPL board init
> +Trying to boot from BOOTROM
> +Returning to boot ROM...
> +
> +U-Boot SPL board init
> +Trying to boot from MMC1
> +
> +
> +U-Boot 2019.07-rc1-00241-g5b3244767a (May 08 2019 - 10:51:06 +0530)
> +
> +Model: Orange Pi RK3399 Board
> +DRAM:  2 GiB
> +MMC:   dwmmc@fe310000: 2, dwmmc@fe320000: 1, sdhci@fe330000: 0
> +Loading Environment from MMC... OK
> +In:    serial@ff1a0000
> +Out:   serial@ff1a0000
> +Err:   serial@ff1a0000
> +Model: Orange Pi RK3399 Board
> +Net:   eth0: ethernet@fe300000
> +Hit any key to stop autoboot:  0
> +=>
> +
>  Using fastboot on rk3288
>  ========================
>  - Write GPT partition layout to mmc device which fastboot want to use it to




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
