Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD5B153237
	for <lists+linux-rockchip@lfdr.de>; Wed,  5 Feb 2020 14:48:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lCqDYb+Iu5irqum2hzNYHZ18GnDz6oxxOHdk9Irr8dQ=; b=ewSAhKphQ6Zw9S
	Gc/JpIWLKOlPHiC/VyocmhyPC4i+/UBhja2bDYx/PKYssKSYV5vPOTYjFMTY0V36OYs2RicWH+LHN
	DkfFxbaGUYeeUlLV2JtrU/qfi3E++cPu455wQC7O4+RrReJKukazSlTAkt/EBySYsle5fGE+rRhCl
	BDL6lbKstQRcwfgHAMzwzvGKubZDMZcxezI8ey3WhZc19iFhI7axZhtM1Lq1IZcFYYU3d5qws5m2d
	DV+87m9uJOBFlaT2pmsYBT6zzeflaMSp8UXh8dW5YGXadm2FLx9ES79VWmc2oDOisuhixN0LRNfdt
	cZQI/6RkH6ZKEjRdvhnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izL2q-0008VI-Am; Wed, 05 Feb 2020 13:48:44 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izL2m-0008Ub-EO
 for linux-rockchip@lists.infradead.org; Wed, 05 Feb 2020 13:48:42 +0000
Received: from [IPv6:2804:214:85ec:bd22:b29b:72b8:8fc3:cfae] (unknown
 [IPv6:2804:214:85ec:bd22:b29b:72b8:8fc3:cfae])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: koike)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 2EE4D2947E6;
 Wed,  5 Feb 2020 13:48:35 +0000 (GMT)
Subject: Re: [PATCH] media: staging: rkisp1: improve inner documentation in
 rkisp1-isp.c
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org
References: <20200204214446.20381-1-dafna.hirschfeld@collabora.com>
 <20200204214446.20381-3-dafna.hirschfeld@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <2889763e-e3a8-50e3-180c-7dd1be8b2e1b@collabora.com>
Date: Wed, 5 Feb 2020 10:48:30 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200204214446.20381-3-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_054840_613640_7A3F0B78 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mchehab@kernel.org, dafna3@gmail.com, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, sakari.ailus@linux.intel.com,
 kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org



On 2/4/20 7:44 PM, Dafna Hirschfeld wrote:
> Improve the documentation in the beginning of the file
> rkisp1-isp1.c
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

Thanks
Helen

> ---
>  drivers/staging/media/rkisp1/rkisp1-isp.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
> index 2b0513e826fe..844556389b0b 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-isp.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
> @@ -28,9 +28,9 @@
>  #define RKISP1_DIR_SINK_SRC (RKISP1_DIR_SINK | RKISP1_DIR_SRC)
>  
>  /*
> - * NOTE: MIPI controller and input MUX are also configured in this file,
> - * because ISP Subdev is not only describe ISP submodule(input size,format,
> - * output size, format), but also a virtual route device.
> + * NOTE: MIPI controller and input MUX are also configured in this file.
> + * This is because ISP Subdev describes not only ISP submodule (input size,
> + * format, output size, format), but also a virtual route device.
>   */
>  
>  /*
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
