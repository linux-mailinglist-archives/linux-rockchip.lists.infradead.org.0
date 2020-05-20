Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C5EE1DB0F0
	for <lists+linux-rockchip@lfdr.de>; Wed, 20 May 2020 13:03:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aBMVLrTxXr6xuEf+Mob/G5eMvjFGEGf8C7jQVTXp/0E=; b=W1TtiGPq21iyTx
	gmnXRR7nNcOoSYSfNsmY89VrS7pgE29LgXkeYuTmEN07xXNDXybM0TQKH1vC7pEAl//Sw4H3qJeNL
	uhrPUfW+xKI9OEaQcrU24aFfPcPPr3W35cSDvSKIbAH9Wk9G6bB3Qj1L2VTNye9N3tSuJQquy5QtC
	uChtzSFsQQqDptKdM1tP3B7h/DaBRfdC9m+IYdZenA1qtSavGI2EqVp0EvgF6ZbiiOEg+TW2gHpq/
	YHv6VGdbHWfGuA9lRq9FR1NY/yNToDI4uGvme2pX7q6IbmF/Pd4EMSF6JAU1U7Artz9NldJJ7sz8Z
	ImCO20GGwmQhUpxJuvOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbMVr-00057e-4v; Wed, 20 May 2020 11:03:51 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbMVd-00050M-OX
 for linux-rockchip@lists.infradead.org; Wed, 20 May 2020 11:03:39 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 4CC7D2A1EBB
Subject: Re: [PATCH 2/5] media: staging: rkisp1: use a macro for the
 statistics flags mask
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org
References: <20200512120522.25960-1-dafna.hirschfeld@collabora.com>
 <20200512120522.25960-3-dafna.hirschfeld@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <0e4f479e-5768-c916-e80f-ff2b605f2975@collabora.com>
Date: Wed, 20 May 2020 08:03:30 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200512120522.25960-3-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_040337_938621_6A6530C8 
X-CRM114-Status: GOOD (  15.46  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 linux-rockchip@lists.infradead.org, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Dafna,

On 5/12/20 9:05 AM, Dafna Hirschfeld wrote:
> The mask of the ready statistics flags is used in
> several places in the code using bitwise-or.
> Use a macro for that to make the code more readable.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

Thanks
Helen

> ---
>  drivers/staging/media/rkisp1/rkisp1-common.h |  4 ++++
>  drivers/staging/media/rkisp1/rkisp1-isp.c    |  5 +----
>  drivers/staging/media/rkisp1/rkisp1-stats.c  | 12 +++---------
>  3 files changed, 8 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
> index 33dffe21c769..c0ab16c6b3db 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-common.h
> +++ b/drivers/staging/media/rkisp1/rkisp1-common.h
> @@ -42,6 +42,10 @@
>  
>  #define RKISP1_MAX_BUS_CLK	8
>  
> +#define RKISP1_STATS_MEAS_MASK		(RKISP1_CIF_ISP_AWB_DONE |	\
> +					 RKISP1_CIF_ISP_AFM_FIN |	\
> +					 RKISP1_CIF_ISP_EXP_END |	\
> +					 RKISP1_CIF_ISP_HIST_MEASURE_RDY)
>  enum rkisp1_rsz_pad {
>  	RKISP1_RSZ_PAD_SINK,
>  	RKISP1_RSZ_PAD_SRC,
> diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
> index 19ab0ed323aa..49b47e1734b0 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-isp.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
> @@ -1137,10 +1137,7 @@ irqreturn_t rkisp1_isp_isr(struct rkisp1_device *rkisp1)
>  
>  		/* New frame from the sensor received */
>  		isp_ris = rkisp1_read(rkisp1, RKISP1_CIF_ISP_RIS);
> -		if (isp_ris & (RKISP1_CIF_ISP_AWB_DONE |
> -			       RKISP1_CIF_ISP_AFM_FIN |
> -			       RKISP1_CIF_ISP_EXP_END |
> -			       RKISP1_CIF_ISP_HIST_MEASURE_RDY))
> +		if (isp_ris & RKISP1_STATS_MEAS_MASK)
>  			rkisp1_stats_isr(&rkisp1->stats, isp_ris);
>  	}
>  
> diff --git a/drivers/staging/media/rkisp1/rkisp1-stats.c b/drivers/staging/media/rkisp1/rkisp1-stats.c
> index 6dfcbdc3deb8..12998db955e6 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-stats.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-stats.c
> @@ -407,22 +407,16 @@ void rkisp1_stats_isr(struct rkisp1_stats *stats, u32 isp_ris)
>  
>  	spin_lock(&stats->irq_lock);
>  
> -	val = RKISP1_CIF_ISP_AWB_DONE | RKISP1_CIF_ISP_AFM_FIN |
> -	      RKISP1_CIF_ISP_EXP_END | RKISP1_CIF_ISP_HIST_MEASURE_RDY;
> +	val = RKISP1_STATS_MEAS_MASK;
>  	rkisp1_write(rkisp1, val, RKISP1_CIF_ISP_ICR);
>  
>  	isp_mis_tmp = rkisp1_read(rkisp1, RKISP1_CIF_ISP_MIS);
> -	if (isp_mis_tmp &
> -	    (RKISP1_CIF_ISP_AWB_DONE | RKISP1_CIF_ISP_AFM_FIN |
> -	     RKISP1_CIF_ISP_EXP_END | RKISP1_CIF_ISP_HIST_MEASURE_RDY))
> +	if (isp_mis_tmp & RKISP1_STATS_MEAS_MASK)
>  		rkisp1->debug.stats_error++;
>  
>  	if (!stats->is_streaming)
>  		goto unlock;
> -	if (isp_ris & (RKISP1_CIF_ISP_AWB_DONE |
> -		       RKISP1_CIF_ISP_AFM_FIN |
> -		       RKISP1_CIF_ISP_EXP_END |
> -		       RKISP1_CIF_ISP_HIST_MEASURE_RDY)) {
> +	if (isp_ris & RKISP1_STATS_MEAS_MASK) {
>  		work = kzalloc(sizeof(*work), GFP_ATOMIC);
>  		if (work) {
>  			INIT_WORK(&work->work,
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
