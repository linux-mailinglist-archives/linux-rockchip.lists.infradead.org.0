Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C073155800
	for <lists+linux-rockchip@lfdr.de>; Fri,  7 Feb 2020 13:57:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yQAIAQEL9rymrRLKF4QWP69uR1OTEbYtdREuqTqkoW8=; b=lRYvb6F3T6Hs5F
	dNQdp4l3Lh4Re0lKk1eMII2R2Jnfn0VQEE7GtS4t1GZKMWrTPs/q0A9p8dsOgqqyLPOT1nwm3ryKe
	qELwKRXNIe/wS55qG1igW/Jll+6JjpLT9ZiMr8dIBDApGTJdbt2erFtmFz4BIE5e00CoFgEGPGZvK
	1jNkqCL9ePZElzAE2w4Smm57Rz2o2570h8MYZRq4WUS9VQpFZPhI/y3zs9ONlgWGuyZFsj4fzM7bx
	C6OXZcvcJMxUqKSR933HGhbtpDzkceQU868v/Xxbahyc9LiUJdQePkLa1RqHXszhayNELjiGGzB+j
	90cVIfTPaCooIztIOZ2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j03CW-0007to-Ei; Fri, 07 Feb 2020 12:57:40 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j03CT-0007s5-SD
 for linux-rockchip@lists.infradead.org; Fri, 07 Feb 2020 12:57:39 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id CCE3C29589A
Subject: Re: [PATCH 2/4] media: staging: rkisp1: isp: check for dphy bus
 before initializations in s_stream
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org
References: <20200207085951.5226-1-dafna.hirschfeld@collabora.com>
 <20200207085951.5226-3-dafna.hirschfeld@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <9b18a62a-cb7b-f175-8080-d5281e91422e@collabora.com>
Date: Fri, 7 Feb 2020 09:57:29 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200207085951.5226-3-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_045738_039608_CB7A0C00 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
> In rkisp1_isp_s_stream it is better to return error in case the
> bus type is not dphy before initializing the registers.
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
> index 56bd95d01f65..c98e3c16f520 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-isp.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
> @@ -963,14 +963,14 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
>  	rkisp1->active_sensor = container_of(sensor_sd->asd,
>  					     struct rkisp1_sensor_async, asd);
>  
> +	if (rkisp1->active_sensor->mbus.type != V4L2_MBUS_CSI2_DPHY)
> +		return -EINVAL;
> +
>  	atomic_set(&rkisp1->isp.frame_sequence, -1);
>  	ret = rkisp1_config_cif(rkisp1);
>  	if (ret)
>  		return ret;
>  
> -	if (rkisp1->active_sensor->mbus.type != V4L2_MBUS_CSI2_DPHY)
> -		return -EINVAL;
> -
>  	ret = rkisp1_mipi_csi2_start(&rkisp1->isp, rkisp1->active_sensor);
>  	if (ret)
>  		return ret;
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
