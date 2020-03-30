Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDAE3198412
	for <lists+linux-rockchip@lfdr.de>; Mon, 30 Mar 2020 21:21:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=P1h1A4gDbK1gjIeAR6aBVg9EhlVcoeVrMu5PyNA5/yE=; b=JWYm1fVtiopcO3Mvv0a8RLlrT6
	X2UC1KraW0C1fvvgH0c59n1+YjF+pzvfU0c2Q6yFFtyFMInKpQmaGsbKba6tJpfoygl+nfgE8mYSX
	7taztDBZAELYiSxcaplAp7ecK0WngdcxQ8ws7BpQ2xQCJsT738eTd6qTQmw6v3vYsTMfgli19P2wC
	tC6FM3DGF92WbZPDtgty4ZtGUC/984ZlXqRJ8EhjI0cmky0f8xJfzNwtGfE6xWaQdyjfn5Uinir94
	5VEJ/618AFHCDwDPU6RRd2P5rIbEMws+TcZ5ZMm0eVuR8NmFmWXP1Igx6+avEPcWndsuMzZd61qjq
	2fBLTy1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIzxw-0007lt-Sf; Mon, 30 Mar 2020 19:20:56 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIzxt-0007lO-Fg
 for linux-rockchip@lists.infradead.org; Mon, 30 Mar 2020 19:20:54 +0000
Received: from [IPv6:2804:431:e7cc:11ff:4f80:3de:e2b2:5c1d] (unknown
 [IPv6:2804:431:e7cc:11ff:4f80:3de:e2b2:5c1d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: koike)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id F054329600A;
 Mon, 30 Mar 2020 20:20:47 +0100 (BST)
Subject: Re: [PATCH 4/4] media: staging: rkisp1: cap: remove unsupported
 formats
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org, ezequiel@collabora.com, hverkuil@xs4all.nl,
 kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com,
 linux-rockchip@lists.infradead.org, mchehab@kernel.org,
 laurent.pinchart@ideasonboard.com
References: <20200326201610.31762-1-dafna.hirschfeld@collabora.com>
 <20200326201610.31762-5-dafna.hirschfeld@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <83fc8d9c-16a0-a381-f5b8-5da642d79f5c@collabora.com>
Date: Mon, 30 Mar 2020 16:20:44 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200326201610.31762-5-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_122053_659496_9EBADE68 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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



On 3/26/20 5:16 PM, Dafna Hirschfeld wrote:
> For Ycbcr packed formats only YUYV can be supported by
> the driver. This patch removes the other formats.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

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
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
