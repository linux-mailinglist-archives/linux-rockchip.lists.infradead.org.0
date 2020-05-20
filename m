Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAF7F1DC2F4
	for <lists+linux-rockchip@lfdr.de>; Thu, 21 May 2020 01:28:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AfFEJPfyN063X10BXutrXYvpLfObHXIXsSv7nfSJi7o=; b=PAmepCZnCRcBrk
	nUCRiBurkCfZeueaMoi8PqNQJYoTdhPsW9WhBeWZORjEwCCWBXVRUYWMrjx3XO5uw4QBYQ+SZtAdq
	gqCsCu1wCyiW//8l14i+NpNC/CQH1tR6BYS34CmZsbYFjHby/9CIv1wT2TQL76OIx7oSFxsEATygi
	gy2KTryePUHHUbDEzwr4TsO1w/oSQR3K1Xn7QE2/6/zWG06mNHkm3QT4Pe/l6tRr2zK47ik6eg3Ax
	jOPskUItEWFlCNkieHffA9yOiG0+pSA9eNFqW18MYT1oasPaSjbtj//S8bZTw12DQ/bdBlY+3P6hQ
	WP3YkMbJsykj1vZH4SBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbY8H-0001nr-6l; Wed, 20 May 2020 23:28:17 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbY86-0001dL-PK
 for linux-rockchip@lists.infradead.org; Wed, 20 May 2020 23:28:08 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id ECAAE24D;
 Thu, 21 May 2020 01:28:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1590017281;
 bh=3KzURu1H6T78EA0JFMmcYL5LccKtwxRWYXiuDXkWL54=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nk6opcGdlNWfK07MPcqugj4W6D3JEqlCAPp/nW9R3WiB+hIVhWcSrkmtZAwed4ttT
 Ax2vbO59/e6sxTLRij54TaJ6aej9AEiOdTJZ/HMpbmSy4q9pEHtOaCCqUZI+hNE/Ql
 jvOk1zQjZJOKuqJGk2SlvrzkDXuTYhe09zMlnAJo=
Date: Thu, 21 May 2020 02:27:49 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH 2/5] media: staging: rkisp1: use a macro for the
 statistics flags mask
Message-ID: <20200520232749.GB25474@pendragon.ideasonboard.com>
References: <20200512120522.25960-1-dafna.hirschfeld@collabora.com>
 <20200512120522.25960-3-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200512120522.25960-3-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_162806_979176_4F61D038 
X-CRM114-Status: GOOD (  14.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Dafna,

Thank you for the patch.

On Tue, May 12, 2020 at 02:05:19PM +0200, Dafna Hirschfeld wrote:
> The mask of the ready statistics flags is used in
> several places in the code using bitwise-or.
> Use a macro for that to make the code more readable.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
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

This could become

 	rkisp1_write(rkisp1, RKISP1_STATS_MEAS_MASK, RKISP1_CIF_ISP_ICR);

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

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

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
