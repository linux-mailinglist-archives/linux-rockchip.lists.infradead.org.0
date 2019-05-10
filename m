Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 201F519A20
	for <lists+linux-rockchip@lfdr.de>; Fri, 10 May 2019 10:57:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xXpmPTfqfuOmxcrlu/ti4jHGKOBJopkqOQbK0YpjIZM=; b=Vrfyu+pSOAOWOS
	gLCzLKueW0adwA3y2uEJXqdKLyr570vAVwTr5oH7KRy8jLTgnZb1DDz4nEzfRhF00Fg7qnNw/EyOC
	mFoLwBQ8Q3k0mKHaxTWpw7DDMgN0xsGAhY1cu9Pd6ywav2ymizY9thS3ISVzeTDdqCqVizE8YsDzO
	RQm1OAmoEorzrW0Kx3V8G+VwDBOxxepEB5bPyHJBV0faNbLFy2C/D02ukmGY1yTNzRrbRHHuSEhkW
	Au3AkICzOUhGaVxBka7eBqdZF58rRI8opzy3r78PUCa21IcXIQoqm6WNNucETlNNu2Tkhyw3sFnQU
	4MAOJZuLlDN6jBxkwgLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP1Le-0008Lm-Ij; Fri, 10 May 2019 08:57:46 +0000
Received: from lb2-smtp-cloud9.xs4all.net ([194.109.24.26])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP1La-0008L4-I2
 for linux-rockchip@lists.infradead.org; Fri, 10 May 2019 08:57:44 +0000
Received: from [IPv6:2001:983:e9a7:1:d7b:80d:652c:317d]
 ([IPv6:2001:983:e9a7:1:d7b:80d:652c:317d])
 by smtp-cloud9.xs4all.net with ESMTPA
 id P1LLhbucgsDWyP1LMhbVOa; Fri, 10 May 2019 10:57:34 +0200
Subject: Re: [PATCH v5 03/15] media: v4l2-common: Support custom
 imagesize/bytesperline in fill_pixfmt()
To: Boris Brezillon <boris.brezillon@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@iki.fi>, linux-media@vger.kernel.org
References: <20190503114719.28784-1-boris.brezillon@collabora.com>
 <20190503114719.28784-4-boris.brezillon@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <0c5a648c-27a8-8195-8ad9-8cefb4369837@xs4all.nl>
Date: Fri, 10 May 2019 10:57:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190503114719.28784-4-boris.brezillon@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfMqOzgX78OyNjWUBpZANboyyCRJTJLcPMx1y5nzbhB629ptCKOY9jnec3I4600EE639zyL6nClp2bqcxjwAnbmWU+Rsi5bgUqr8iVV+E1i+RGyiLPs4x
 /qNuFBxUSnoxsymB6am6DSlUZHlxaf8uG3ofMI/ZpYMV19Jqs9wsumzdXBUzqU91fBweenu3GJNqdyX2sW/nhHyIiZ9yPu024QZIkH9QLVSSEPBpGBm9Bwaz
 nYRsNSnFeARVF9KkLFBzpq/oxZVF0ACUzlabJ8aDNGKxOF9K46WhFrWgaigtuQAtamVVscpkabhH7bINCF/oYTeERgIuPdqPSgPRd8FD0SykWSssXSuG/shG
 mBIkiKDJeiv3DuwZqiVzZs1p2J/Igks/iebrdjXBRPiMz/SOus4yucSJKqcXODGDLw7MM9U2TJhY7vr8xiYY/PAqKS1uLQCuByyYxFJC0Uhi1Rm9RL6ywCC3
 8vpk+WeWlqMFi+bPzkyhHPcLZABtFewnislDpaoXxTnnZwFxQRLIGNLWY3PpxonOjpEiyNRh+lm2i18DZ0FtO4VhXtm9N4Wl6ZdIQtEvI2zWkt75FKa+lBGG
 I0McXLN1dn/+1bXm8/Yb7RG/zPcSFZeMbMu13Cve4SxAyAWx/F57AnpSX9oe59nCmQyQRovI3YibDVCz7S6Bp/R/22U9FKSjDGUDCCBHDYEZFpOVovxpIjMp
 BSr4yisygzIDoktRvYBEa7lfSO49Jd51
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_015742_757329_3EE7F9FB 
X-CRM114-Status: GOOD (  21.49  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Tomasz Figa <tfiga@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Nicolas Dufresne <nicolas@ndufresne.ca>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 5/3/19 1:47 PM, Boris Brezillon wrote:
> Users can define custom sizeimage and bytesperline as long as they're
> big enough to store the amount of pixels required for a specific
> width/height under a specific format. Avoid overriding those fields in
> this case.
> 
> Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> ---
> Hello Hans,
> 
> The sizeimage/bytesperline check on !MPLANE formats is still not 100%
> sure, as custom bytesperline might induce bigger sizeimage than what
> we calculate.
> 
> I tried implementing something smarter taking the per-component plane
> bpp + hdiv param as we discussed the other day but decided to step
> back after realizing the per-component plane macro block might also
> differ at least in theory (not sure that's true in practice) and that
> has an impact on bytesperline too.
> 
> Let me know how you want to handle that case.
> 
> Regards,
> 
> Boris
> 
> Changes in v5:
> * New patch
> ---
>  drivers/media/v4l2-core/v4l2-common.c | 54 +++++++++++++++++++--------
>  1 file changed, 39 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/media/v4l2-core/v4l2-common.c b/drivers/media/v4l2-core/v4l2-common.c
> index 3c6f5c115fc5..37bfc984a8b5 100644
> --- a/drivers/media/v4l2-core/v4l2-common.c
> +++ b/drivers/media/v4l2-core/v4l2-common.c
> @@ -563,9 +563,10 @@ int v4l2_fill_pixfmt_mp(struct v4l2_pix_format_mplane *pixfmt,
>  	pixfmt->num_planes = info->mem_planes;
>  
>  	if (info->mem_planes == 1) {
> +		u32 bytesperline, sizeimage = 0;
> +
>  		plane = &pixfmt->plane_fmt[0];
> -		plane->bytesperline = ALIGN(width, v4l2_format_block_width(info, 0)) * info->bpp[0];
> -		plane->sizeimage = 0;
> +		bytesperline = ALIGN(width, v4l2_format_block_width(info, 0)) * info->bpp[0];
>  
>  		for (i = 0; i < info->comp_planes; i++) {
>  			unsigned int hdiv = (i == 0) ? 1 : info->hdiv;
> @@ -576,10 +577,17 @@ int v4l2_fill_pixfmt_mp(struct v4l2_pix_format_mplane *pixfmt,
>  			aligned_width = ALIGN(width, v4l2_format_block_width(info, i));
>  			aligned_height = ALIGN(height, v4l2_format_block_height(info, i));
>  
> -			plane->sizeimage += info->bpp[i] *
> -				DIV_ROUND_UP(aligned_width, hdiv) *
> -				DIV_ROUND_UP(aligned_height, vdiv);
> +			sizeimage += info->bpp[i] *
> +				     DIV_ROUND_UP(aligned_width, hdiv) *
> +				     DIV_ROUND_UP(aligned_height, vdiv);
>  		}
> +
> +		/*
> +		 * The user might have specified custom sizeimage/bytesperline,
> +		 * only override them if they're not big enough.
> +		 */
> +		plane->sizeimage = max(sizeimage, plane->sizeimage);
> +		plane->bytesperline = max(bytesperline, plane->bytesperline);

Let's just set bytesperline, ignoring the value the user supplied. There are very
few drivers that allow the user to set bytesperline anyway, so it's not a big deal
to drop support for that for now. We can add it back later.

Just add a comment that a user-defined bytesperline value isn't currently supported.

Regards,

	Hans

>  	} else {
>  		for (i = 0; i < info->comp_planes; i++) {
>  			unsigned int hdiv = (i == 0) ? 1 : info->hdiv;
> @@ -591,10 +599,20 @@ int v4l2_fill_pixfmt_mp(struct v4l2_pix_format_mplane *pixfmt,
>  			aligned_height = ALIGN(height, v4l2_format_block_height(info, i));
>  
>  			plane = &pixfmt->plane_fmt[i];
> -			plane->bytesperline =
> -				info->bpp[i] * DIV_ROUND_UP(aligned_width, hdiv);
> -			plane->sizeimage =
> -				plane->bytesperline * DIV_ROUND_UP(aligned_height, vdiv);
> +
> +			/*
> +			 * The user might have specified custom
> +			 * sizeimage/bytesperline, only override them if
> +			 * they're not big enough.
> +			 */
> +			plane->bytesperline = max_t(u32,
> +						    info->bpp[i] *
> +						    DIV_ROUND_UP(aligned_width, hdiv),
> +						    plane->bytesperline);
> +			plane->sizeimage = max_t(u32,
> +						 plane->bytesperline *
> +						 DIV_ROUND_UP(aligned_height, vdiv),
> +						 plane->sizeimage);
>  		}
>  	}
>  	return 0;
> @@ -605,6 +623,7 @@ int v4l2_fill_pixfmt(struct v4l2_pix_format *pixfmt, u32 pixelformat,
>  		     u32 width, u32 height)
>  {
>  	const struct v4l2_format_info *info;
> +	u32 bytesperline, sizeimage = 0;
>  	int i;
>  
>  	info = v4l2_format_info(pixelformat);
> @@ -618,8 +637,7 @@ int v4l2_fill_pixfmt(struct v4l2_pix_format *pixfmt, u32 pixelformat,
>  	pixfmt->width = width;
>  	pixfmt->height = height;
>  	pixfmt->pixelformat = pixelformat;
> -	pixfmt->bytesperline = ALIGN(width, v4l2_format_block_width(info, 0)) * info->bpp[0];
> -	pixfmt->sizeimage = 0;
> +	bytesperline = ALIGN(width, v4l2_format_block_width(info, 0)) * info->bpp[0];
>  
>  	for (i = 0; i < info->comp_planes; i++) {
>  		unsigned int hdiv = (i == 0) ? 1 : info->hdiv;
> @@ -629,11 +647,17 @@ int v4l2_fill_pixfmt(struct v4l2_pix_format *pixfmt, u32 pixelformat,
>  
>  		aligned_width = ALIGN(width, v4l2_format_block_width(info, i));
>  		aligned_height = ALIGN(height, v4l2_format_block_height(info, i));
> -
> -		pixfmt->sizeimage += info->bpp[i] *
> -			DIV_ROUND_UP(aligned_width, hdiv) *
> -			DIV_ROUND_UP(aligned_height, vdiv);
> +		sizeimage += info->bpp[i] * DIV_ROUND_UP(aligned_width, hdiv) *
> +			     DIV_ROUND_UP(aligned_height, vdiv);
>  	}
> +
> +	/*
> +	 * The user might have specified its own sizeimage/bytesperline values,
> +	 * only override them if they're not big enough.
> +	 */
> +	pixfmt->sizeimage = max(sizeimage, pixfmt->sizeimage);
> +	pixfmt->bytesperline = max(bytesperline, pixfmt->bytesperline);
> +
>  	return 0;
>  }
>  EXPORT_SYMBOL_GPL(v4l2_fill_pixfmt);
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
