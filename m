Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D71198513
	for <lists+linux-rockchip@lfdr.de>; Mon, 30 Mar 2020 22:05:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DLNICwSmeL6oW5Irxdv11pSSuzBrgaBRrky1Uw7NFNs=; b=gJIJa66SggfzKv+aZCYFI7R1Zm
	fw1X2BTYaOpf2E6u+cSHTWLSO0BI1UAvJkXc/eBHMEKWYOAkYurF+wB8J0dCEDN3tEX3FbXmR+EU3
	4MFjjanKf6UNnpddzkMYTtPicQnVwsp4dr90wcb0O9r/Z1hMi3PH4kPRqYbp5uclDpfaIMA86QP0R
	eiWnGXsfLvmWnyZ1XsMxUydQYj1OgdpHRt5oxik2gqOoVMogNV58RBJGLGsYFMbR2o+0Fwqf6NbFk
	u1UZktSAEIFJP208/CCoVh/xlZ/wEvRbG57YiQYuFNWFgjjZosVGJC1+TnsCWspCDLkrYWw4Xj0XF
	CymZfrXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ0eW-0002K5-MS; Mon, 30 Mar 2020 20:04:56 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ0eT-0002Jg-QN
 for linux-rockchip@lists.infradead.org; Mon, 30 Mar 2020 20:04:55 +0000
Received: from [IPv6:2804:431:e7cc:11ff:4f80:3de:e2b2:5c1d] (unknown
 [IPv6:2804:431:e7cc:11ff:4f80:3de:e2b2:5c1d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: koike)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 081B1293EAE;
 Mon, 30 Mar 2020 21:04:47 +0100 (BST)
Subject: Re: [PATCH 2/3] media: staging: rkisp1: rsz: change (hv)div only if
 capture format is YUV
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org, ezequiel@collabora.com, hverkuil@xs4all.nl,
 kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com,
 linux-rockchip@lists.infradead.org, mchehab@kernel.org,
 laurent.pinchart@ideasonboard.com
References: <20200328105606.13660-1-dafna.hirschfeld@collabora.com>
 <20200328105606.13660-3-dafna.hirschfeld@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <7445ddcb-75f5-7792-0807-47c0b0d0d54a@collabora.com>
Date: Mon, 30 Mar 2020 17:04:43 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200328105606.13660-3-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_130453_984880_C27A2834 
X-CRM114-Status: GOOD (  18.38  )
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
> RGB formats in selfpath should receive input format as YUV422.
> The resizer input format is always YUV422 and therefore
> if the capture format is RGB, the resizer should not change
> the YUV rations.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-resizer.c | 14 ++++++++++++--
>  1 file changed, 12 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> index 8704267a066f..5721eee29ecb 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> @@ -389,8 +389,18 @@ static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
>  			&rsz->rkisp1->capture_devs[rsz->id];
>  		const struct v4l2_format_info *pixfmt_info = cap->pix.info;
>  
> -		hdiv = pixfmt_info->hdiv;
> -		vdiv = pixfmt_info->vdiv;
> +		/*
> +		 * The resizer always get the input as YUV422
> +		 * If the capture encoding is also YUV, then the resizer should
> +		 * change the 4:2:2 sampling to the sampling of the capture
> +		 * format (4:2:2 -> 4:2:0 for example).
> +		 * If the capture format is RGB then the memory input should
> +		 * be YUV422 so we don't change the default hdiv, vdiv
> +		 */
> +		if (v4l2_is_format_yuv(pixfmt_info)) {

Can't this be moved with && in the outer if statement block?

Regards,
Helen

> +			hdiv = pixfmt_info->hdiv;
> +			vdiv = pixfmt_info->vdiv;
> +		}
>  	}
>  	src_c.width = src_y.width / hdiv;
>  	src_c.height = src_y.height / vdiv;
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
