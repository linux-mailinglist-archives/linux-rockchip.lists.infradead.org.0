Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DE781D9C3F
	for <lists+linux-rockchip@lfdr.de>; Tue, 19 May 2020 18:17:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MEGPY+h7JyUO4vkUeyY+FLaQDwNCVNUwuQE/lu/TbE0=; b=WZuYNSfPheiRI6G9IpuOj/j3c+
	4Cl7HE7OqVwQ5on52ZUAbYZKtgM7ODE/z5xEsTFPZGXflkPvTlqDT8oFRqCL0/o3BWcNBzgEZtXnp
	ZJNJ6JL7auw1MeOa3EmkGYqb/2FcuZYhxzgU4J48tyH5+rs04tviTApvuDlUkzRYTQCWPxq50go07
	TxXSA0+x/47SK1xbHN79JYGXgp6P7j6pRume8b4QU8xvufXzs45Ib1tyhPg3Obz1BLuFjDgWdZuSr
	19C2IslaiTrgcfY7H+9xJKHIemhWS/B1HtRiiw5dH/T/uPBylvgaAW0Co8SpFlUuWxPMi9BOmOVWE
	oBMNgIKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb4vm-0002rn-IJ; Tue, 19 May 2020 16:17:26 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb4vi-0002r9-Um
 for linux-rockchip@lists.infradead.org; Tue, 19 May 2020 16:17:24 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id C3E642A00A3
Subject: Re: [PATCH] media: staging: rkisp1: set more precise size errors in
 debugfs
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org, ezequiel@collabora.com, hverkuil@xs4all.nl,
 kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com,
 linux-rockchip@lists.infradead.org, mchehab@kernel.org,
 laurent.pinchart@ideasonboard.com
References: <20200514142102.16111-1-dafna.hirschfeld@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <d78fd01c-6044-4c09-dc44-9df449eb051e@collabora.com>
Date: Tue, 19 May 2020 13:17:13 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200514142102.16111-1-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_091723_117496_3919B53E 
X-CRM114-Status: GOOD (  16.62  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Dafna,

Thanks for the patch.

On 5/14/20 11:21 AM, Dafna Hirschfeld wrote:
> When a size error is signaled, it is possible to read a register
> to see where the error comes from. So, in debugfs the general
> error 'pic_size_err' can be replaced with 3 more precise errors.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-common.h | 4 +++-
>  drivers/staging/media/rkisp1/rkisp1-dev.c    | 8 ++++++--
>  drivers/staging/media/rkisp1/rkisp1-isp.c    | 7 ++++++-
>  3 files changed, 15 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
> index 0c4fe503adc9..95d54306bae6 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-common.h
> +++ b/drivers/staging/media/rkisp1/rkisp1-common.h
> @@ -226,7 +226,9 @@ struct rkisp1_resizer {
>  struct rkisp1_debug {
>  	struct dentry *debugfs_dir;
>  	unsigned long data_loss;
> -	unsigned long pic_size_error;
> +	unsigned long outform_size_error;
> +	unsigned long is_size_error;

I would just do s/is/img_stabilization

otherwise it is easy to read it as a verb, and it feels it's a boolean, and not a counter.

With this:

Acked-by: Helen Koike <helen.koike@collabora.com>

Regards,
Helen

> +	unsigned long inform_size_error;
>  	unsigned long mipi_error;
>  	unsigned long stats_error;
>  	unsigned long stop_timeout[2];
> diff --git a/drivers/staging/media/rkisp1/rkisp1-dev.c b/drivers/staging/media/rkisp1/rkisp1-dev.c
> index 9ac38bafb839..2298d3ae5950 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-dev.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-dev.c
> @@ -438,8 +438,12 @@ static void rkisp1_debug_init(struct rkisp1_device *rkisp1)
>  	}
>  	debugfs_create_ulong("data_loss", 0444, debug->debugfs_dir,
>  			     &debug->data_loss);
> -	debugfs_create_ulong("pic_size_error", 0444,  debug->debugfs_dir,
> -			     &debug->pic_size_error);
> +	debugfs_create_ulong("outform_size_err", 0444,  debug->debugfs_dir,
> +			     &debug->outform_size_error);
> +	debugfs_create_ulong("is_size_error", 0444,  debug->debugfs_dir,
> +			     &debug->is_size_error);
> +	debugfs_create_ulong("inform_size_error", 0444,  debug->debugfs_dir,
> +			     &debug->inform_size_error);
>  	debugfs_create_ulong("mipi_error", 0444, debug->debugfs_dir,
>  			     &debug->mipi_error);
>  	debugfs_create_ulong("stats_error", 0444, debug->debugfs_dir,
> diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
> index dc2b59a0160a..a7e5461e25a5 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-isp.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
> @@ -1123,8 +1123,13 @@ void rkisp1_isp_isr(struct rkisp1_device *rkisp1)
>  	if (status & RKISP1_CIF_ISP_PIC_SIZE_ERROR) {
>  		/* Clear pic_size_error */
>  		isp_err = rkisp1_read(rkisp1, RKISP1_CIF_ISP_ERR);
> +		if (isp_err & RKISP1_CIF_ISP_ERR_INFORM_SIZE)
> +			rkisp1->debug.inform_size_error++;
> +		if (isp_err & RKISP1_CIF_ISP_ERR_IS_SIZE)
> +			rkisp1->debug.is_size_error++;
> +		if (isp_err & RKISP1_CIF_ISP_ERR_OUTFORM_SIZE)
> +			rkisp1->debug.outform_size_error++;
>  		rkisp1_write(rkisp1, isp_err, RKISP1_CIF_ISP_ERR_CLR);
> -		rkisp1->debug.pic_size_error++;
>  	} else if (status & RKISP1_CIF_ISP_DATA_LOSS) {
>  		/* keep track of data_loss in debugfs */
>  		rkisp1->debug.data_loss++;
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
