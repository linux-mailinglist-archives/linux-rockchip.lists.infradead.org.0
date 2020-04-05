Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 684C219ECEB
	for <lists+linux-rockchip@lfdr.de>; Sun,  5 Apr 2020 19:33:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zK5LBGi4DI9yLqDwyN44uyk/yOrZK8iVr8YLgdLOwgY=; b=JioEtgJ9pgd3cF
	clT3QHIF5HFa8Pd5YuunKd5idczAoED9ZIl6Re2Q4yfvjeUbHxTy2KHWIvLLGiJDt6ZVtFp84qTyd
	s/82vFoINwh1TSNRktU8ax8jmPBaTUTjwhGjNLE7f1deQ350sQT8hotKRwrNbYNehx4rWJ72d4mLK
	s4q9nEhDRtP71B4aWXYOWFQN2sCFbBL3QTGlc/Lxp3hBEW7zu13Ed0/EiExrObfzNjMX2wmz3ZB/M
	qU3a3gaMoxED5Mp0jjhuwPslsCUqVGK14lCPpWzsJl5XZUwXFFlutf2L7BbbhUbM9eVVuUqrnldDI
	4RRDvgbTguIb1FlzKHnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL98w-0006Rx-7F; Sun, 05 Apr 2020 17:33:10 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL98t-0006RE-DP
 for linux-rockchip@lists.infradead.org; Sun, 05 Apr 2020 17:33:08 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 95067312;
 Sun,  5 Apr 2020 19:24:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1586107499;
 bh=h84jDVnVV1dg4bRlg+WNWCpdTn70oRmHS5SA/xfaQbE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ghro+4nPDYZ3i2F+0z245Np10WrV9/0TVra4Q0VUHMS838KQ1CKozKiaYFDomgY0/
 a9u1w+P5m3gObNu+iI6wuFTZGEUTt2GNnO6tEN0FwOP5Ts1d9wxuYSd8TQTlU03QB3
 1vG78pv4Rtl0tYjKyRTL7xJwJRUsCgNqBr45tsZ8=
Date: Sun, 5 Apr 2020 20:24:50 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH 1/3] media: staging: rkisp1: rsz: get the capture format
 info from the capture struct
Message-ID: <20200405172450.GH5846@pendragon.ideasonboard.com>
References: <20200328105606.13660-1-dafna.hirschfeld@collabora.com>
 <20200328105606.13660-2-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200328105606.13660-2-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_103307_602069_8DCA5158 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Sat, Mar 28, 2020 at 11:56:04AM +0100, Dafna Hirschfeld wrote:
> Currently the format info of the capture is retrieved by calling
> the function  v4l2_format_info. This is not needed since it is
> already save in the capture object.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
>  drivers/staging/media/rkisp1/rkisp1-resizer.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> index 87799fbf0363..8704267a066f 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> @@ -387,8 +387,7 @@ static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
>  	if (rsz->fmt_type == RKISP1_FMT_YUV) {
>  		struct rkisp1_capture *cap =
>  			&rsz->rkisp1->capture_devs[rsz->id];
> -		const struct v4l2_format_info *pixfmt_info =
> -			v4l2_format_info(cap->pix.fmt.pixelformat);
> +		const struct v4l2_format_info *pixfmt_info = cap->pix.info;
>  
>  		hdiv = pixfmt_info->hdiv;
>  		vdiv = pixfmt_info->vdiv;

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
