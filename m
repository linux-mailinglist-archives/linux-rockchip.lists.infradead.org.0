Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99F5E19EE6E
	for <lists+linux-rockchip@lfdr.de>; Mon,  6 Apr 2020 00:44:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O/cWiLC29hsnieDKBZM+Fm9bRuQGilQ2qZssJ/Of2hc=; b=HZw58B9QksDW7n
	cdLnpH0gOPPP7lVjElVayXu1ZH5I+WQtErs77jQZTKbG91IlSyII79zNKcw3OlIfgRn/i7Nkncrh4
	bpcQuLpY3N7isuujxdvC+Jbe2ZzdvK24/D5KSCxtB8eunV2C8sH6KqaUX/DV0XUbfIR85FXFjM8f2
	GFCfruStjSgMZOco/3p/zeUWQ/rdmAvFArvCgke7mtghP1Qtcw2Tl9Fvsf/Ii30kJeeLvHLG6Zmi2
	bZUGtykI1TFUUHgQ6tV564b4aD8OtIbd1dILvk55mwdJrSW1OlSB7s1wdOQlq8Uvlxkrg21U89RFS
	Vab9OEgK10jV1ArQM/aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLE02-0007Ug-89; Sun, 05 Apr 2020 22:44:18 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLDzy-0007Tg-EU
 for linux-rockchip@lists.infradead.org; Sun, 05 Apr 2020 22:44:15 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id B02C8312;
 Mon,  6 Apr 2020 00:44:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1586126647;
 bh=sz6sqvto6+1dBFatlRj/VFmY3Pq8kv/LPs6U42sWQ74=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TJrr43fzbJFp83xPbtD+U9PhBk5bKqIW89NC0wNh0CN6Lck4mt3UyObbr1hzAOGfz
 +Eb+Pat0IUb2xoQXpG7pEhXaD86YS+T6B2BwgTN9LTjzx2phoSINXwZmYGRBypf4Tx
 KIXd6OImhD3g0mEHWZQkz9rj88mnb6uRFaO8cMv8=
Date: Mon, 6 Apr 2020 01:43:57 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH v2 5/5] media: staging: rkisp1: cap: remove unsupported
 formats
Message-ID: <20200405224357.GR5846@pendragon.ideasonboard.com>
References: <20200402190419.15155-1-dafna.hirschfeld@collabora.com>
 <20200402190419.15155-6-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200402190419.15155-6-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_154414_640848_402E4AF0 
X-CRM114-Status: GOOD (  12.43  )
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
Cc: dafna3@gmail.com, hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, kernel@collabora.com, ezequiel@collabora.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Dafna,

Thank you for the patch.

On Thu, Apr 02, 2020 at 09:04:19PM +0200, Dafna Hirschfeld wrote:
> For Ycbcr packed formats only YUYV can be supported by
> the driver. This patch removes the other formats.

The RKISP1_CIF_MI_BYTE_SWAP bit could possibly help achieving other YUV
orders, but as far as I can tell, it would affect both the main path and
the self path, so it wouldn't be very convenient. At a quick glance I
haven't found a way to support those formats, but just to make sure,
have you double-checked that the nv21_self and nv21_main bits of
MI_XTD_FORMAT_CTRL don't also affect packed mode ? If they don't,

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> Acked-by: Helen Koike <helen.koike@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-capture.c | 21 -------------------
>  1 file changed, 21 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
> index 2d274e8f565b..076335193f40 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
> @@ -98,15 +98,6 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_mp_fmts[] = {
>  		.fmt_type = RKISP1_FMT_YUV,
>  		.uv_swap = 0,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUVINT,
> -	}, {
> -		.fourcc = V4L2_PIX_FMT_YVYU,
> -		.fmt_type = RKISP1_FMT_YUV,
> -		.uv_swap = 1,
> -		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUVINT,
> -	}, {
> -		.fourcc = V4L2_PIX_FMT_VYUY,
> -		.fmt_type = RKISP1_FMT_YUV,
> -		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUVINT,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_YUV422P,
>  		.fmt_type = RKISP1_FMT_YUV,
> @@ -234,18 +225,6 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
>  		.uv_swap = 0,
>  		.write_format = RKISP1_MI_CTRL_SP_WRITE_INT,
>  		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
> -	}, {
> -		.fourcc = V4L2_PIX_FMT_YVYU,
> -		.fmt_type = RKISP1_FMT_YUV,
> -		.uv_swap = 1,
> -		.write_format = RKISP1_MI_CTRL_SP_WRITE_INT,
> -		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
> -	}, {
> -		.fourcc = V4L2_PIX_FMT_VYUY,
> -		.fmt_type = RKISP1_FMT_YUV,
> -		.uv_swap = 1,
> -		.write_format = RKISP1_MI_CTRL_SP_WRITE_INT,
> -		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_YUV422P,
>  		.fmt_type = RKISP1_FMT_YUV,

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
