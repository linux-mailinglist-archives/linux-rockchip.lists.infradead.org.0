Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 538691DA640
	for <lists+linux-rockchip@lfdr.de>; Wed, 20 May 2020 02:16:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YR4P8qJipomTqTNQBAQ+UYnp7pR4N+aLiHGLUiUbbNw=; b=reiAKEifXrQAZQ
	dDkVjj48SPOONiRZKv4h92m5ocvPcJS+P2PIzkYqsQeEU6Wzo6TSWHVYVzIMGs4E/C08XRuqSoFlb
	D/jn5w55mLh8poBitIScVHLgC/6pEWE5XbsZSm0EYp0a07s/2HNAT4jpXooBFOqQHMCKFmJ7mF2gh
	8vaxwlim9Ljyx5pa3h+YMQjmvAh4aL1z7LTD3VN6eL12A9O7k0BKY6QWC8RFyvg6cYNU6mPOpQT3v
	xrlqosiV1tZOfNu1LvsQ1ImP6jvoNjSZ7h2/vTbvA4DApFooe3aEzybcKE7PCAmS7lhsDrNQDg/CI
	gdnDLPCQFpz1mwiRHZqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbCOy-0008RH-MR; Wed, 20 May 2020 00:16:04 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbCOv-0008QD-2Z
 for linux-rockchip@lists.infradead.org; Wed, 20 May 2020 00:16:02 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id B085A9CD;
 Wed, 20 May 2020 02:15:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1589933753;
 bh=X0vGRkhaIf+BhiALonI906blgtiTU7WszKwlMOGnPHk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VSNUIJy1sDBFU9JRMNg507BenvpsTQ9Utq22zhVOG4ahzMr+7xhD6BAYpkdIcmJwl
 Vy0U6yKDwvoT/AWnbh43eFg1HeVXN+e3xd7tVyGoeyw2bC8fh0cTiruDTGM7TtQOGM
 MjfvUKIqsQJHom799c3fqIcCXR2imP/ZKI4HpuZo=
Date: Wed, 20 May 2020 03:15:43 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH 1/2] media: staging: rkisp1 stats: set a measure flag
 with '|=' instead of '='
Message-ID: <20200520001543.GM3820@pendragon.ideasonboard.com>
References: <20200509152904.26348-1-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200509152904.26348-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_171601_274350_D81FF86C 
X-CRM114-Status: GOOD (  11.80  )
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

On Sat, May 09, 2020 at 05:29:03PM +0200, Dafna Hirschfeld wrote:
> The flag RKISP1_CIF_ISP_STAT_AFM_FIN that indicates a type of
> statistics is mistakenly set with '=' instead of '|='
> this might set off previous flags.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
>  drivers/staging/media/rkisp1/rkisp1-stats.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-stats.c b/drivers/staging/media/rkisp1/rkisp1-stats.c
> index 6dfcbdc3deb8..8351bda0be03 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-stats.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-stats.c
> @@ -253,7 +253,7 @@ static void rkisp1_stats_get_afc_meas(struct rkisp1_stats *stats,
>  	struct rkisp1_device *rkisp1 = stats->rkisp1;
>  	struct rkisp1_cif_isp_af_stat *af;
>  
> -	pbuf->meas_type = RKISP1_CIF_ISP_STAT_AFM_FIN;
> +	pbuf->meas_type |= RKISP1_CIF_ISP_STAT_AFM_FIN;
>  
>  	af = &pbuf->params.af;
>  	af->window[0].sum = rkisp1_read(rkisp1, RKISP1_CIF_ISP_AFM_SUM_A);

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
