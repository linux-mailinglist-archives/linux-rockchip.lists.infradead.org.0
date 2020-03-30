Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D28D198507
	for <lists+linux-rockchip@lfdr.de>; Mon, 30 Mar 2020 22:00:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hckmAZJlKc1cJ6NTsp7eAZAee5Ket9UtiMiAFyFbvwk=; b=Cy4jHfnMeByY02FvLP+RQyQzip
	nWPymRntfSIL+nt4hr3LIP15Q+Ol7VvjeuWS+C6aY8EET94hS+sSM1tRbxrz8bGgeev0dG5IZF0fN
	lVql5S7rTpc1k3FZg3CK/zy4wNvNsGzsk8CjtvJEjnDTG2C9ha/WYag+2ZzpOmZ0KL0O6A7wX5822
	tTTkmvMoZGNc9FvdsvKIud/4e0UWT2FaskxtybcIq6WwpgTDYQ41Iv3AZHmhhAivl90TUvNvR1ek1
	nOQmbYT7CETruvHr92H+nnjb/6Hyd4O3s/giE6eO3H1tQQpMrQqgWPfx+9+9cCrla137zoNByoZMS
	UksfT5tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ0a2-00023W-OL; Mon, 30 Mar 2020 20:00:18 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ0Zz-00023B-0D
 for linux-rockchip@lists.infradead.org; Mon, 30 Mar 2020 20:00:16 +0000
Received: from [IPv6:2804:431:e7cc:11ff:4f80:3de:e2b2:5c1d] (unknown
 [IPv6:2804:431:e7cc:11ff:4f80:3de:e2b2:5c1d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: koike)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 432C3293544;
 Mon, 30 Mar 2020 21:00:08 +0100 (BST)
Subject: Re: [PATCH 1/3] media: staging: rkisp1: rsz: get the capture format
 info from the capture struct
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org, ezequiel@collabora.com, hverkuil@xs4all.nl,
 kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com,
 linux-rockchip@lists.infradead.org, mchehab@kernel.org,
 laurent.pinchart@ideasonboard.com
References: <20200328105606.13660-1-dafna.hirschfeld@collabora.com>
 <20200328105606.13660-2-dafna.hirschfeld@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <8cb695e4-9c75-384a-dd69-3210d524cf63@collabora.com>
Date: Mon, 30 Mar 2020 17:00:05 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200328105606.13660-2-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_130015_181611_3518E144 
X-CRM114-Status: GOOD (  15.86  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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



On 3/28/20 7:56 AM, Dafna Hirschfeld wrote:
> Currently the format info of the capture is retrieved by calling
> the function  v4l2_format_info. This is not needed since it is
> already save in the capture object.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

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
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
