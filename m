Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 499B7153226
	for <lists+linux-rockchip@lfdr.de>; Wed,  5 Feb 2020 14:45:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2lN+u2HYMgDUdtccfb9lwnCpSyFyFFGE0kTwlbicZ+M=; b=LiSgx+Li4DV0tT
	CKt89G0q5lzTh0OEyXDMZ9+5O60esFThVnX1opv1BPnm91aELsM5H3pi+bAOnAlpF2wLt+S6i49BS
	NslLEqReLaHA/UKt3B52R6FFUrN59UC1VOEXWjT71OaarMrj8JxYLTprraQpLzJXut8iKrZvWvwLD
	K3FJsleuQE+YPkPtX1KY0xw1VpcErt+lMYMcQtu6pwgeX0wcpAiWWqNF6Cr2uyeKI7cTt9yP0YZvD
	8zTR1Huq0igKwDNGlNvFtwOdexRerZjlM7FUaSkzW4ALY7OgQh8ddM2RDt1xz6cA+05+qdD9KawXA
	BeshhD83OklkRq6QAFCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izKzs-00081s-6m; Wed, 05 Feb 2020 13:45:40 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izKzo-0007zc-OS
 for linux-rockchip@lists.infradead.org; Wed, 05 Feb 2020 13:45:38 +0000
Received: from [IPv6:2804:214:85ec:bd22:b29b:72b8:8fc3:cfae] (unknown
 [IPv6:2804:214:85ec:bd22:b29b:72b8:8fc3:cfae])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: koike)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id E4F222947F3;
 Wed,  5 Feb 2020 13:45:26 +0000 (GMT)
Subject: Re: [PATCH] media: staging: rkisp1: don't lock media's graph_mutex
 when calling rkisp1_create_links
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org
References: <20200204214446.20381-1-dafna.hirschfeld@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <fe913642-4092-afcb-90c7-5c51b8f3a2e5@collabora.com>
Date: Wed, 5 Feb 2020 10:45:20 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200204214446.20381-1-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_054536_924905_CC45CD07 
X-CRM114-Status: GOOD (  14.40  )
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
> The function rkisp1_create_links calls media_entity_get_fwnode_pad
> and media_create_pad_link in the mc api. Those calls don't require
> locking the graph_mutex so remove the locking.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

Thanks
Helen

> ---
>  drivers/staging/media/rkisp1/rkisp1-dev.c | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-dev.c b/drivers/staging/media/rkisp1/rkisp1-dev.c
> index 9d866396a5de..64e61ab29143 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-dev.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-dev.c
> @@ -219,19 +219,17 @@ static int rkisp1_subdev_notifier_complete(struct v4l2_async_notifier *notifier)
>  		container_of(notifier, struct rkisp1_device, notifier);
>  	int ret;
>  
> -	mutex_lock(&rkisp1->media_dev.graph_mutex);
>  	ret = rkisp1_create_links(rkisp1);
>  	if (ret)
> -		goto unlock;
> +		return ret;
> +
>  	ret = v4l2_device_register_subdev_nodes(&rkisp1->v4l2_dev);
>  	if (ret)
> -		goto unlock;
> +		return ret;
>  
>  	dev_dbg(rkisp1->dev, "Async subdev notifier completed\n");
>  
> -unlock:
> -	mutex_unlock(&rkisp1->media_dev.graph_mutex);
> -	return ret;
> +	return 0;
>  }
>  
>  static int rkisp1_fwnode_parse(struct device *dev,
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
