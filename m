Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F42E161C15
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Feb 2020 21:03:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=11bvXRAq9Hk2hq6N7e0+zK0GwSfNBCyOLUD/lM/I9rE=; b=FIK2wTfhcZOyN4
	p0wituqyqKNa7Ov7dPAAwkv+dwdyhFYS+r/+OoIbJL/AoVOa7E9Ns8YcL7dwDpBzXVsU36vxqlHhZ
	ind2burMFR0AahwU81YdFX6uocyHra96ElU8z9GFFefdXbU+lSuQqnY+GtjKTFVRWqOHZQKdukxWH
	zXJM3/eAUQDPtG2gLgL4d+u7C7RJNPjNHdwTLHK0NG7TuDVuam6jfPL4NZ/lbEegxrmBt+MDfMJOT
	7ic3x9kbDJVqeyseUcaSI2s6sQrMOwAXq3Y5RGkR95jX9CxonxoAg3ZPlvvuG/O+MdaoyrU2CB4lO
	2weq1Qq8UsOTrHwaM3uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3mcN-0002kN-3I; Mon, 17 Feb 2020 20:03:47 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3mcJ-0002jt-Ra
 for linux-rockchip@lists.infradead.org; Mon, 17 Feb 2020 20:03:45 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id E27AF2931EE
Subject: Re: [PATCH] media: staging: rkisp1: destroy subdevs' mutexes when
 unregistering
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org
References: <20200217175113.8216-1-dafna.hirschfeld@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <e72cbe20-2e72-fef4-3994-335b0df5ce8e@collabora.com>
Date: Mon, 17 Feb 2020 17:03:34 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200217175113.8216-1-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_120344_023947_E8515AC9 
X-CRM114-Status: GOOD (  15.70  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: mchehab@kernel.org, dafna3@gmail.com, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, sakari.ailus@linux.intel.com,
 kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Dafna,

On 2/17/20 2:51 PM, Dafna Hirschfeld wrote:
> call 'mutex_destroy' on the locks of the subdevices 'isp' and 'resizer'
> when unregistering and when failing to register.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
> This patch is a follow-up patch for the patchset:
> 'media: staging: rkisp1: add serialization to the isp and resizer ops'
> 
>  drivers/staging/media/rkisp1/rkisp1-isp.c     | 5 ++++-
>  drivers/staging/media/rkisp1/rkisp1-resizer.c | 5 ++++-
>  2 files changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
> index aa7a842f97f8..36c0251911c9 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-isp.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
> @@ -1051,7 +1051,7 @@ int rkisp1_isp_register(struct rkisp1_device *rkisp1,
>  	mutex_init(&isp->ops_lock);
>  	ret = media_entity_pads_init(&sd->entity, RKISP1_ISP_PAD_MAX, pads);
>  	if (ret)
> -		return ret;
> +		goto err_destroy_mutex;

Could you move the mutex_init() the after the media_entity_pads_init() call?
So you won't need to add this label.

With this:

Acked-by: Helen Koike <helen.koike@collabora.com>

Thanks
Helen

>  
>  	ret = v4l2_device_register_subdev(v4l2_dev, sd);
>  	if (ret) {
> @@ -1064,6 +1064,8 @@ int rkisp1_isp_register(struct rkisp1_device *rkisp1,
>  
>  err_cleanup_media_entity:
>  	media_entity_cleanup(&sd->entity);
> +err_destroy_mutex:
> +	mutex_destroy(&isp->ops_lock);
>  
>  	return ret;
>  }
> @@ -1074,6 +1076,7 @@ void rkisp1_isp_unregister(struct rkisp1_device *rkisp1)
>  
>  	v4l2_device_unregister_subdev(sd);
>  	media_entity_cleanup(&sd->entity);
> +	mutex_destroy(&rkisp1->isp.ops_lock);
>  }
>  
>  /* ----------------------------------------------------------------------------
> diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> index 87799fbf0363..0b4385153920 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> @@ -695,6 +695,7 @@ static void rkisp1_rsz_unregister(struct rkisp1_resizer *rsz)
>  {
>  	v4l2_device_unregister_subdev(&rsz->sd);
>  	media_entity_cleanup(&rsz->sd.entity);
> +	mutex_destroy(&rsz->ops_lock);
>  }
>  
>  static int rkisp1_rsz_register(struct rkisp1_resizer *rsz)
> @@ -727,7 +728,7 @@ static int rkisp1_rsz_register(struct rkisp1_resizer *rsz)
>  	mutex_init(&rsz->ops_lock);
>  	ret = media_entity_pads_init(&sd->entity, 2, pads);
>  	if (ret)
> -		return ret;
> +		goto err_destroy_mutex;
>  
>  	ret = v4l2_device_register_subdev(&rsz->rkisp1->v4l2_dev, sd);
>  	if (ret) {
> @@ -740,6 +741,8 @@ static int rkisp1_rsz_register(struct rkisp1_resizer *rsz)
>  
>  err_cleanup_media_entity:
>  	media_entity_cleanup(&sd->entity);
> +err_destroy_mutex:
> +	mutex_destroy(&rsz->ops_lock);
>  
>  	return ret;
>  }
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
