Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFCC216984F
	for <lists+linux-rockchip@lfdr.de>; Sun, 23 Feb 2020 16:09:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gQt+x9oLWz12ZNzSrd4D9JerWYYHN6F8lll2UcmMR/s=; b=lru4cTJ7ysdR7s
	J7HQ5OD3mnf5TB+69SiIqZ/t9FBwH13OfJtg72RbSru7WO+J2if0uLFMdXI+sO5gYlmKKIHP85/Uw
	vbNEvh8UsJy0BYJsqIgmfJqmd5nCZ/Kz70FcOUoIrmyaygX8+2qSYecH/SlZD9DUxHh+kSoUcNiaJ
	MczdZeBpvhJjMO9h3I5pTXZdwVQJjLt4SVo1v2G+J4C0z7g6AGop0l75pUrHh8J3ScUzcltE2ZDFN
	nFCHH9ngv/UWuN1CTD2U2qmBbkIVvrFMxCljCy/bJ2neITiXP07MMKVDl/p+8z8Gi6M49kzKK1jgd
	UnkS3Yr8+BKD3CXslV+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5ssw-0007GF-9N; Sun, 23 Feb 2020 15:09:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5ssl-00078m-FJ; Sun, 23 Feb 2020 15:09:24 +0000
Received: from p508fd060.dip0.t-ipconnect.de ([80.143.208.96]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1j5ssh-0003kj-Ga; Sun, 23 Feb 2020 16:09:19 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: khilman@kernel.org
Subject: Re: [PATCH] PM / AVS: rockchip-io: fix the supply naming for the emmc
 supply on px30
Date: Sun, 23 Feb 2020 16:09:18 +0100
Message-ID: <2116646.O5uUgpsMTn@phil>
In-Reply-To: <20200121222859.4069263-1-heiko@sntech.de>
References: <20200121222859.4069263-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_070923_662301_3C415F67 
X-CRM114-Status: GOOD (  19.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: nm@ti.com, linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

Am Dienstag, 21. Januar 2020, 23:28:59 CET schrieb Heiko Stuebner:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> The supply going to the emmc/flash is named vccio6, not vccio0 and while
> the code does this correctly already, the comments and error output do not.
> 
> So just change these values to the correct ones.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

oh so gently ping on this tiny patch ;-)

Thanks for considering
Heiko

> ---
>  drivers/power/avs/rockchip-io-domain.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/power/avs/rockchip-io-domain.c b/drivers/power/avs/rockchip-io-domain.c
> index 398fc954419e..eece97f97ef8 100644
> --- a/drivers/power/avs/rockchip-io-domain.c
> +++ b/drivers/power/avs/rockchip-io-domain.c
> @@ -152,18 +152,18 @@ static void px30_iodomain_init(struct rockchip_iodomain *iod)
>  	int ret;
>  	u32 val;
>  
> -	/* if no VCCIO0 supply we should leave things alone */
> +	/* if no VCCIO6 supply we should leave things alone */
>  	if (!iod->supplies[PX30_IO_VSEL_VCCIO6_SUPPLY_NUM].reg)
>  		return;
>  
>  	/*
> -	 * set vccio0 iodomain to also use this framework
> +	 * set vccio6 iodomain to also use this framework
>  	 * instead of a special gpio.
>  	 */
>  	val = PX30_IO_VSEL_VCCIO6_SRC | (PX30_IO_VSEL_VCCIO6_SRC << 16);
>  	ret = regmap_write(iod->grf, PX30_IO_VSEL, val);
>  	if (ret < 0)
> -		dev_warn(iod->dev, "couldn't update vccio0 ctrl\n");
> +		dev_warn(iod->dev, "couldn't update vccio6 ctrl\n");
>  }
>  
>  static void rk3288_iodomain_init(struct rockchip_iodomain *iod)
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
