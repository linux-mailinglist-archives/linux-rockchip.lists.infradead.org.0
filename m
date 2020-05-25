Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 897FC1E1139
	for <lists+linux-rockchip@lfdr.de>; Mon, 25 May 2020 17:02:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UX3ylrNDVzWOcReC7wRPwUKozuu4ETRQEBygwA6/AWw=; b=HKMK/2xyMylF23
	1efeRqaqXoWsdkPZdxPoMlOxeEB9IFhopi2BX/I6H38HiAiSeaMp4L/Thae1nqybJ+igc+tV+E6UF
	qeu02kP7lU7k0sq65klgDfmnG0zqWo/3dbl8ntMoeZ2/dNNLO3FuqeO1qdLwsvSbDzyMPVXCGhp4L
	vV9eIC+2383j6PFk9GOmKHJ+3lGDv6mZHGqBf4dCgsGic1ubCocFUWOVhRi7Fs65gzF0REAfofd8U
	sdzmKQXDh9rAOf3dejr1QpUH1xe6WAcDw2P7j7g02+Y7rUps0QFH5CMl6OEHr8AjQve9z5+ktnLH1
	7Y7zG2tW9z5Tw+Nf5pnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdEch-0007fx-Cp; Mon, 25 May 2020 15:02:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdEbw-0007c0-Sm
 for linux-rockchip@lists.infradead.org; Mon, 25 May 2020 15:01:54 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jdEbk-0000T3-Rx; Mon, 25 May 2020 17:01:40 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Tiezhu Yang <yangtiezhu@loongson.cn>
Subject: Re: [PATCH v2 2/2] phy: Remove CONFIG_ARCH_* check for related subdir
 in Makefile
Date: Mon, 25 May 2020 17:01:38 +0200
Message-ID: <10793802.6Woqi72AOj@diego>
In-Reply-To: <1590412138-13903-2-git-send-email-yangtiezhu@loongson.cn>
References: <1590412138-13903-1-git-send-email-yangtiezhu@loongson.cn>
 <1590412138-13903-2-git-send-email-yangtiezhu@loongson.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_080152_928048_FA322DC9 
X-CRM114-Status: GOOD (  15.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-rockchip@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Xuefeng Li <lixuefeng@loongson.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Montag, 25. Mai 2020, 15:08:58 CEST schrieb Tiezhu Yang:
> If CONFIG_ARCH_ROCKCHIP is not set but COMPILE_TEST is set, the file in
> the subdir rockchip can not be built due to CONFIG_ARCH_ROCKCHIP check
> in drivers/phy/Makefile.
> 
> Since the related configs in drivers/phy/rockchip/Kconfig depend on
> ARCH_ROCKCHIP, so remove CONFIG_ARCH_ROCKCHIP check for subdir rockchip
> in drivers/phy/Makefile.
> 
> The other CONFIG_ARCH_* about allwinner, amlogic, mediatek, renesas and
> tegra have the same situation, so remove them too.
> 
> Signed-off-by: Tiezhu Yang <yangtiezhu@loongson.cn>

I did check the other vendor directories and all options there do
seem to depend on some ARCH_foo || COMPILE_TEST variant, so

Reviewed-by: Heiko Stuebner <heiko@sntech.de>


Heiko

> ---
> 
> v2:
>   - Remove all the CONFIG_ARCH_* check for related subdir in Makefile
>   - Modify the patch subject and update commit message
> 
>  drivers/phy/Makefile | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/phy/Makefile b/drivers/phy/Makefile
> index 310c149..16e2622 100644
> --- a/drivers/phy/Makefile
> +++ b/drivers/phy/Makefile
> @@ -8,24 +8,24 @@ obj-$(CONFIG_GENERIC_PHY_MIPI_DPHY)	+= phy-core-mipi-dphy.o
>  obj-$(CONFIG_PHY_LPC18XX_USB_OTG)	+= phy-lpc18xx-usb-otg.o
>  obj-$(CONFIG_PHY_XGENE)			+= phy-xgene.o
>  obj-$(CONFIG_PHY_PISTACHIO_USB)		+= phy-pistachio-usb.o
> -obj-$(CONFIG_ARCH_SUNXI)		+= allwinner/
> -obj-$(CONFIG_ARCH_MESON)		+= amlogic/
> -obj-$(CONFIG_ARCH_MEDIATEK)		+= mediatek/
> -obj-$(CONFIG_ARCH_RENESAS)		+= renesas/
> -obj-$(CONFIG_ARCH_ROCKCHIP)		+= rockchip/
> -obj-$(CONFIG_ARCH_TEGRA)		+= tegra/
> -obj-y					+= broadcom/	\
> +obj-y					+= allwinner/	\
> +					   amlogic/	\
> +					   broadcom/	\
>  					   cadence/	\
>  					   freescale/	\
>  					   hisilicon/	\
>  					   intel/	\
>  					   lantiq/	\
>  					   marvell/	\
> +					   mediatek/	\
>  					   motorola/	\
>  					   mscc/	\
>  					   qualcomm/	\
>  					   ralink/	\
> +					   renesas/	\
> +					   rockchip/	\
>  					   samsung/	\
>  					   socionext/	\
>  					   st/		\
> +					   tegra/	\
>  					   ti/
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
