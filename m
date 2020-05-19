Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17E751D9D1F
	for <lists+linux-rockchip@lfdr.de>; Tue, 19 May 2020 18:45:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+3rn17rQJxInHmr5AVCQQG7tQGSvNs+G67O+3Y2+pnk=; b=rNMBcjs1m+YExw
	4QVhxQSw4TrXW9VP8zmmbLM0KKWW76wD7JGsZy9bm17JoInLvn9GBQmKETvQdJ1e/ntIPTJg1/gMM
	h+j41AS45cqd0BOvl44BaOV0tWBHkIKUZgwpxh1WnPMUhOgZpbjC+Cvh5R5c0Jji5t2AVDw07Vcmy
	vIPXBr5cb1ZnGRWkKGI0h58bwCBq03thAQ9fbkEJt9pv7oQq3K7S7/MonhVO5FuI9J1kL48OzvdUq
	ZSISbpiZyEwzyEo0JmLbp/lRAKNE+Px/hvQG1TEYNWLkiaPyfksr8jtto3ZMA4pCqNPE9r8URkkHT
	+NEJAfq9XidNtRhFwV2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb5MN-0000Bb-1N; Tue, 19 May 2020 16:44:55 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb5MB-0008Sb-3J
 for linux-rockchip@lists.infradead.org; Tue, 19 May 2020 16:44:44 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 25BE32A23FD
Subject: Re: [PATCH 2/2] media: staging: rkisp1: stats: don't set stats flags
 in rkisp1_stats_send_measurement
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20200509152904.26348-1-dafna.hirschfeld@collabora.com>
 <20200509152904.26348-2-dafna.hirschfeld@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <ffacc00e-6bf7-2905-4f2b-7cff139bffde@collabora.com>
Date: Tue, 19 May 2020 13:44:33 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200509152904.26348-2-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_094443_284021_CA688BC4 
X-CRM114-Status: GOOD (  14.54  )
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
 laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com,
 kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org



On 5/9/20 12:29 PM, Dafna Hirschfeld wrote:
> The flags that indicate which statistics are read are already
> set in the functions that read them so there is no need to
> set them in the function rkisp1_stats_send_measurement.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

Thanks
Helen

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
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
