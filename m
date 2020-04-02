Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D30ED19C370
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 15:59:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=szMPk/mbh29XiPbLyO5yZM50T7IOJ7hVZbkVsStD2YI=; b=mkue/h9nA28pEZ
	OvzSqPtekh0Xf5xFHb7ih1sfWrlmP5Mfd1wQnkad3pFr5vD390M9J68muqj+Kunh0tcdgeAIJYfom
	Ycnu/pKoz50aaYiCijodsn6IP/3DELKcd0SH79A06QgVYG3hlw7MDqPbUdNebau2rJkkLnAVPeS9N
	Z5zXvb7PCJMDkTVw+rF05caDYpZrxFhKVLOh0ISf5Sl8DDdq4AYVMLwKPirLbClrUbWfdXUqZnTSg
	KI3+m7eGS1kxHQw/OgiLNJkdn18kcZfOu9GqoAT4msOMR3jcXctpfch0I1K/5W0WQeXlRVywyw5Gv
	teCXS0AAiICRgdhNugqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK0Ni-0003Ox-Ic; Thu, 02 Apr 2020 13:59:42 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK0Ne-0003Nd-An
 for linux-rockchip@lists.infradead.org; Thu, 02 Apr 2020 13:59:41 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id BE597280125
Subject: Re: [PATCH 3/3] rkisp1: Fix wrong PHY config dependency
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20200401213721.24173-1-ezequiel@collabora.com>
 <20200401213721.24173-4-ezequiel@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <b0c9e734-7302-08e6-7bbf-79699d1d305e@collabora.com>
Date: Thu, 2 Apr 2020 10:59:29 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200401213721.24173-4-ezequiel@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_065938_516991_49879210 
X-CRM114-Status: GOOD (  13.61  )
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
> Instead of depending on the Rockchip PHY driver the ISP driver
> should really depend on CONFIG_GENERIC_PHY_MIPI_DPHY,
> given all it needs is the phy_mipi_dphy_get_default_config() symbol.
> 
> Fix it.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

> ---
>  drivers/staging/media/rkisp1/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/rkisp1/Kconfig b/drivers/staging/media/rkisp1/Kconfig
> index b859a493caba..e3ba6826fbb0 100644
> --- a/drivers/staging/media/rkisp1/Kconfig
> +++ b/drivers/staging/media/rkisp1/Kconfig
> @@ -7,7 +7,7 @@ config VIDEO_ROCKCHIP_ISP1
>  	select VIDEOBUF2_DMA_CONTIG
>  	select VIDEOBUF2_VMALLOC
>  	select V4L2_FWNODE
> -	select PHY_ROCKCHIP_DPHY_RX0
> +	select GENERIC_PHY_MIPI_DPHY
>  	default n
>  	help
>  	  Enable this to support the Image Signal Processing (ISP) module
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
