Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B301557FF
	for <lists+linux-rockchip@lfdr.de>; Fri,  7 Feb 2020 13:57:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lgHhmTgo2pDNv+TXKmCAa6UztvMK6k1tsv4DOocsf+4=; b=enl3F3yEyGnn4o
	a2cRzWlObWAw4I4bdQODcdmbj+ZbwA4UaPxdRiGWSbiooYGSiNzRqj9FHyrtlcE+Jz0fgePGXCf0G
	e09WKcIf5Lb1v20mKdFmQDEHDxUsMAeS5p5a+X8MUb8LUUJvklrLLPVZhIEvKOyimKJime8gGI7g2
	nMmJM3caWd4DRL3d5ixhUzOj5Apb8aBTgc/ZxRE7qXn72YPI2BKVQgQ3H48wLaqaPOgdj00uSAihh
	XlcRh79JAxaH2Cw1Vk8khtZ0/WqX+XenWT3AxdhcdzTlrnmg7zJ/slDBi4oKWAnIHnxwh1h4h5os5
	aJU1O7XDGH5QME7NMWWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j03CU-0007sJ-LV; Fri, 07 Feb 2020 12:57:38 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j03CQ-0007rj-UN
 for linux-rockchip@lists.infradead.org; Fri, 07 Feb 2020 12:57:36 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 0665D295891
Subject: Re: [PATCH 1/4] media: staging: rkisp1: change function to return
 void instead of int
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org
References: <20200207085951.5226-1-dafna.hirschfeld@collabora.com>
 <20200207085951.5226-2-dafna.hirschfeld@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <bc776484-af3a-381e-c847-eaefd21e8d3e@collabora.com>
Date: Fri, 7 Feb 2020 09:57:25 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200207085951.5226-2-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_045735_114750_C324767C 
X-CRM114-Status: GOOD (  14.99  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mchehab@kernel.org, dafna3@gmail.com, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, sakari.ailus@linux.intel.com,
 kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org



On 2/7/20 6:59 AM, Dafna Hirschfeld wrote:
> There are functions that return int but actually return always 0.
> Change them to return void and then there is no need to check
> for error return value.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

Thanks
Helen

> ---
>  drivers/staging/media/rkisp1/rkisp1-isp.c | 16 ++++------------
>  1 file changed, 4 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
> index 2b0513e826fe..56bd95d01f65 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-isp.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
> @@ -504,7 +504,7 @@ static int rkisp1_config_cif(struct rkisp1_device *rkisp1)
>  	return 0;
>  }
>  
> -static int rkisp1_isp_stop(struct rkisp1_device *rkisp1)
> +static void rkisp1_isp_stop(struct rkisp1_device *rkisp1)
>  {
>  	u32 val;
>  
> @@ -540,8 +540,6 @@ static int rkisp1_isp_stop(struct rkisp1_device *rkisp1)
>  		     RKISP1_CIF_IRCL_MIPI_SW_RST | RKISP1_CIF_IRCL_ISP_SW_RST,
>  		     RKISP1_CIF_IRCL);
>  	rkisp1_write(rkisp1, 0x0, RKISP1_CIF_IRCL);
> -
> -	return 0;
>  }
>  
>  static void rkisp1_config_clk(struct rkisp1_device *rkisp1)
> @@ -555,7 +553,7 @@ static void rkisp1_config_clk(struct rkisp1_device *rkisp1)
>  	rkisp1_write(rkisp1, val, RKISP1_CIF_ICCL);
>  }
>  
> -static int rkisp1_isp_start(struct rkisp1_device *rkisp1)
> +static void rkisp1_isp_start(struct rkisp1_device *rkisp1)
>  {
>  	struct rkisp1_sensor_async *sensor = rkisp1->active_sensor;
>  	u32 val;
> @@ -580,8 +578,6 @@ static int rkisp1_isp_start(struct rkisp1_device *rkisp1)
>  	 * the MIPI interface and before starting the sensor output.
>  	 */
>  	usleep_range(1000, 1200);
> -
> -	return 0;
>  }
>  
>  /* ----------------------------------------------------------------------------
> @@ -956,9 +952,7 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
>  	int ret = 0;
>  
>  	if (!enable) {
> -		ret = rkisp1_isp_stop(rkisp1);
> -		if (ret)
> -			return ret;
> +		rkisp1_isp_stop(rkisp1);
>  		rkisp1_mipi_csi2_stop(rkisp1->active_sensor);
>  		return 0;
>  	}
> @@ -981,9 +975,7 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
>  	if (ret)
>  		return ret;
>  
> -	ret = rkisp1_isp_start(rkisp1);
> -	if (ret)
> -		rkisp1_mipi_csi2_stop(rkisp1->active_sensor);
> +	rkisp1_isp_start(rkisp1);
>  
>  	return ret;
>  }
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
