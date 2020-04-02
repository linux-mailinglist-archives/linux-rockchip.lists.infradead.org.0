Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EAF919C36D
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 15:59:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PTD/H/Mop5DlZrKkit5xgjT4G+c5ax7nck+cb5AIO/E=; b=aQFqH+WT3CLorW
	uY81ImaiBLvdGpBwXjRRh0+G3dUeoOpdcxU+8OnqH5Nhb60lWDZ5llb/qu9tyQfFpTON0MKJacoGT
	19ByiYDoKs/+gIuh5rhDunoSDaYVd3f44UEtr9WKSgLG6lH9wAPUifDL0ApszIKAm0F3Gworvylup
	Z9xYIjnulkr/+Y/fDGnNLq1YYRGZll1ZeChnx7qS9lvobdDPkhlNntQiAfe5JfksG3Qdesse4anrw
	79o95xdj7fkNzSmPFa+5JhIpFwrPul7dkmRmCqV0zvGb4FPNHJ70Dg5Q//MM24jwaUolyDcpZO/RJ
	OTyucuh33iWqjhzB5VOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK0NW-0003IK-Mo; Thu, 02 Apr 2020 13:59:30 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK0NQ-0003Aq-1d
 for linux-rockchip@lists.infradead.org; Thu, 02 Apr 2020 13:59:25 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 91248280125
Subject: Re: [PATCH 2/3] phy-rockchip-dphy-rx0: Drop unneeded CONFIG_OF
 dependency
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20200401213721.24173-1-ezequiel@collabora.com>
 <20200401213721.24173-3-ezequiel@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <7ced1203-cdea-ad26-f46b-8873bfb85043@collabora.com>
Date: Thu, 2 Apr 2020 10:59:12 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200401213721.24173-3-ezequiel@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_065924_323249_643063F4 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Hans Verkuil <hverkuil@xs4all.nl>, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org



On 4/1/20 6:37 PM, Ezequiel Garcia wrote:
> The driver is perfectly capable of being built without CONFIG_OF.
> Remove this dependency, which is useful for compile-only tests.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

> ---
>  drivers/staging/media/phy-rockchip-dphy-rx0/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/phy-rockchip-dphy-rx0/Kconfig b/drivers/staging/media/phy-rockchip-dphy-rx0/Kconfig
> index bd0147624de1..fb74df829371 100644
> --- a/drivers/staging/media/phy-rockchip-dphy-rx0/Kconfig
> +++ b/drivers/staging/media/phy-rockchip-dphy-rx0/Kconfig
> @@ -2,7 +2,7 @@
>  
>  config PHY_ROCKCHIP_DPHY_RX0
>  	tristate "Rockchip MIPI Synopsys DPHY RX0 driver"
> -	depends on (ARCH_ROCKCHIP || COMPILE_TEST) && OF
> +	depends on ARCH_ROCKCHIP || COMPILE_TEST
>  	select GENERIC_PHY_MIPI_DPHY
>  	select GENERIC_PHY
>  	help
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
