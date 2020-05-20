Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0CF91DA642
	for <lists+linux-rockchip@lfdr.de>; Wed, 20 May 2020 02:16:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ambd9IIQ2f2sUX8PwWTTzeN6rT3u3TObBvJM1np/b0=; b=Malb34JElhVOad
	is3rSn+U+eEmFLemAkDWy/7g9vWrdzoeHmXv/v3DQOMsRYUzEDjEcaSewyVH9qO/uMBEtXCznTjx3
	lwjjca1k3EJc8MZWy7Dc2MkmFXaRyNGOlPAOc6+alWvSFlSb4Z4T0urIoAKnWAFVXU20pkIwDc1zs
	ZvflwFmmdhRuC9TM7GNsNjq3kfOmNdrYm60AJnnRrl17ryetIEl1a4ca/aNbLHJOLKiPBbq+z+nca
	g8mp2+wnogS10MnPBsctB4l6MBzAd/rJlX9VW5NLg3cLoMjzy5Xx+0wV6M2WQO0uW3F7C7qAGNK9b
	UATZCG10bG6bZtvDtqyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbCPA-0008UJ-E5; Wed, 20 May 2020 00:16:16 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbCP7-0008TG-ME
 for linux-rockchip@lists.infradead.org; Wed, 20 May 2020 00:16:15 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id BB7BE9CD;
 Wed, 20 May 2020 02:16:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1589933771;
 bh=kNTzsKsJx+6g7jMtDq1n/OJWUGzETmvJHDPbq0LJg70=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=M9YQyzvLGLU/iQxCAJ+y68yX+I19svaXWho1aNo8PkT+Bs+TJGvKx2wjLB4pCcOeN
 i+2e8GYNIebs/NVqO4MmDFZ5mWKKfRj0Zr3alAfOeym0flF2RKjlY0zRAl4xNsPVhR
 3I92zoIETt9I4y2JPnVf0XlUcMhxfCS2W+WVJPDI=
Date: Wed, 20 May 2020 03:16:01 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH 2/2] media: staging: rkisp1: stats: don't set stats flags
 in rkisp1_stats_send_measurement
Message-ID: <20200520001601.GN3820@pendragon.ideasonboard.com>
References: <20200509152904.26348-1-dafna.hirschfeld@collabora.com>
 <20200509152904.26348-2-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200509152904.26348-2-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_171613_876121_698D7CD6 
X-CRM114-Status: GOOD (  12.74  )
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

On Sat, May 09, 2020 at 05:29:04PM +0200, Dafna Hirschfeld wrote:
> The flags that indicate which statistics are read are already
> set in the functions that read them so there is no need to
> set them in the function rkisp1_stats_send_measurement.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
>  drivers/staging/media/rkisp1/rkisp1-stats.c | 13 +++----------
>  1 file changed, 3 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-stats.c b/drivers/staging/media/rkisp1/rkisp1-stats.c
> index 8351bda0be03..0616793ae395 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-stats.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-stats.c
> @@ -356,26 +356,19 @@ rkisp1_stats_send_measurement(struct rkisp1_stats *stats,
>  	cur_stat_buf =
>  		(struct rkisp1_stat_buffer *)(cur_buf->vaddr[0]);
>  
> -	if (meas_work->isp_ris & RKISP1_CIF_ISP_AWB_DONE) {
> +	if (meas_work->isp_ris & RKISP1_CIF_ISP_AWB_DONE)
>  		rkisp1_stats_get_awb_meas(stats, cur_stat_buf);
> -		cur_stat_buf->meas_type |= RKISP1_CIF_ISP_STAT_AWB;
> -	}
>  
> -	if (meas_work->isp_ris & RKISP1_CIF_ISP_AFM_FIN) {
> +	if (meas_work->isp_ris & RKISP1_CIF_ISP_AFM_FIN)
>  		rkisp1_stats_get_afc_meas(stats, cur_stat_buf);
> -		cur_stat_buf->meas_type |= RKISP1_CIF_ISP_STAT_AFM_FIN;
> -	}
>  
>  	if (meas_work->isp_ris & RKISP1_CIF_ISP_EXP_END) {
>  		rkisp1_stats_get_aec_meas(stats, cur_stat_buf);
>  		rkisp1_stats_get_bls_meas(stats, cur_stat_buf);
> -		cur_stat_buf->meas_type |= RKISP1_CIF_ISP_STAT_AUTOEXP;
>  	}
>  
> -	if (meas_work->isp_ris & RKISP1_CIF_ISP_HIST_MEASURE_RDY) {
> +	if (meas_work->isp_ris & RKISP1_CIF_ISP_HIST_MEASURE_RDY)
>  		rkisp1_stats_get_hst_meas(stats, cur_stat_buf);
> -		cur_stat_buf->meas_type |= RKISP1_CIF_ISP_STAT_HIST;
> -	}
>  
>  	vb2_set_plane_payload(&cur_buf->vb.vb2_buf, 0,
>  			      sizeof(struct rkisp1_stat_buffer));

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
