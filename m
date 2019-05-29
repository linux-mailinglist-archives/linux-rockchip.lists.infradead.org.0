Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F4482DC15
	for <lists+linux-rockchip@lfdr.de>; Wed, 29 May 2019 13:43:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BeIERQOm9upknfCxb5VFYfjN1AOkmbSGCk1Z2SrVKkM=; b=R+JX1JyHgXtI4f
	KDBzUfyLEFT3RkrhQYRl9XzRTdYPi8whYgya4ZCEsihDS4+Z82S9YbcwjH3ixA+nDyK84zfYrkg4P
	qv1KkNboE2ExNEev6TE9LdIpJ6UM6hnCKGtArZJBnStZs2lEWjoIwerHlIQu99Hlp27nOpXIVyMzE
	K2+AznA+LLXvnNxwg78ITWof6m+j4tC/PGijHNfZhbNdF2wjr7lsXAD2cWoSui72tGyoY8G+jzI4P
	tLmQQtHJqIEve32O8XTqA2cPvrUGsiNhSsQr0UBLxGndvFQEIFCxpLWeQXURcIiKzjKPya4JtwHhA
	XACHzbfqwbEQtDMdPkIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVwzT-0004xp-9E; Wed, 29 May 2019 11:43:31 +0000
Received: from lb3-smtp-cloud7.xs4all.net ([194.109.24.31])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVwzP-0004xN-Pl
 for linux-rockchip@lists.infradead.org; Wed, 29 May 2019 11:43:29 +0000
Received: from [IPv6:2001:983:e9a7:1:c843:3d28:cba4:8b6e]
 ([IPv6:2001:983:e9a7:1:c843:3d28:cba4:8b6e])
 by smtp-cloud7.xs4all.net with ESMTPA
 id VwzJh7IGI3qlsVwzLhtNP0; Wed, 29 May 2019 13:43:23 +0200
Subject: Re: [PATCH v6 03/16] media: v4l2-common: Support custom imagesize in
 fill_pixfmt()
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>
References: <20190528170232.2091-1-ezequiel@collabora.com>
 <20190528170232.2091-4-ezequiel@collabora.com>
 <20190529082809.0b9f3553@coco.lan>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <cc51be76-81c3-1c54-2005-1b99d00a8ac1@xs4all.nl>
Date: Wed, 29 May 2019 13:43:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190529082809.0b9f3553@coco.lan>
Content-Language: en-US
X-CMAE-Envelope: MS4wfOy4CGs3YQUQaBOAst/Nr1E07aZ59i0FEf4WwcY7ns8wOGSvOYue/+B2NZErJz2knWpIxMLfcCTLmWTkjdbKbDdeKyNbSNtKDOVTVkcLAVs2qpRi9Abt
 YbBod+mDOtfWstloZ2ijI05qy7rJ9scfrwIM1rNBebyuSelXcKOFMJDIpIbCckGxNo4aQfekEMDQGmjRNFSW5uT+6CzF53CWBJ5djVqVokJsJGAC6rRvORxM
 Ht/D0ad1axXY9qEydVfgCuE6S7M4HFYeFh1zr8KH5xIemfIVBUClJ/cjZqr93a3mAO1FCbv21hi7Lfgjiuwm4EkqtfU9Lz+DioblTD0eWA/mEEVGzgLYsekB
 SnulcLuAbpJAKhJY8Bqi9PHQBTuHvyL/Ka2vubCslvevykEchrQ5JurXZW9HQRfFGPT4OGgRU/8CqOkOnzYXrC840TBBpfQC1ERIthZS3/SZVGnfzYZCvOpg
 rQo504GgWr3yeCGJqk1WcBguAlmXPUx0pW7NerE3tZ7EfpynmMrWb+A+HR4z1ZRhtZFkCpYrbDOW9AeV9WDWvLQXmJKBHsAeNNc+0S4UcilbGcU/a9WxdVDf
 idGb+AwuNgLcfJxVKe8OJ5Sh3tNjyCY5qk6c6S8zgCIiFnaVJ5fXXFliLi3ogHsMdKdmNPQgg90PFDJHGc7trs5j
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_044327_993938_CBF107CA 
X-CRM114-Status: GOOD (  18.04  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.31 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kernel@collabora.com, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Tomasz Figa <tfiga@chromium.org>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Hans Verkuil <hans.verkuil@cisco.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 5/29/19 1:28 PM, Mauro Carvalho Chehab wrote:
> Em Tue, 28 May 2019 14:02:19 -0300
> Ezequiel Garcia <ezequiel@collabora.com> escreveu:
> 
>> From: Boris Brezillon <boris.brezillon@collabora.com>
>>
>> Users can define custom sizeimage as long as they're big enough to
>> store the amount of pixels required for a specific width/height under a
>> specific format. Avoid overriding those fields in this case.
>>
>> We could possibly do the same for bytesperline, but it gets tricky when
>> dealing with !MPLANE definitions, so this case is omitted for now and
>> ->bytesperline is always overwritten with the value calculated in
>> fill_pixfmt().
>>
>> Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
>> ---
>> Changes from v5:
>> * Overwrite bytesperline with the value calculated in fill_pixfmt()
>>
>> Changes from v4:
>> * New patch
>>
>>  drivers/media/v4l2-core/v4l2-common.c | 58 ++++++++++++++++++++-------
>>  1 file changed, 43 insertions(+), 15 deletions(-)
>>
>> diff --git a/drivers/media/v4l2-core/v4l2-common.c b/drivers/media/v4l2-core/v4l2-common.c
>> index b2d1e55d9561..fd286f6e17d7 100644
>> --- a/drivers/media/v4l2-core/v4l2-common.c
>> +++ b/drivers/media/v4l2-core/v4l2-common.c
>> @@ -585,9 +585,9 @@ int v4l2_fill_pixfmt_mp(struct v4l2_pix_format_mplane *pixfmt,
>>  	pixfmt->num_planes = info->mem_planes;
>>  
>>  	if (info->mem_planes == 1) {
>> +		u32 sizeimage = 0;
>> +
>>  		plane = &pixfmt->plane_fmt[0];
>> -		plane->bytesperline = ALIGN(width, v4l2_format_block_width(info, 0)) * info->bpp[0];
>> -		plane->sizeimage = 0;
>>  
>>  		for (i = 0; i < info->comp_planes; i++) {
>>  			unsigned int hdiv = (i == 0) ? 1 : info->hdiv;
>> @@ -598,10 +598,21 @@ int v4l2_fill_pixfmt_mp(struct v4l2_pix_format_mplane *pixfmt,
>>  			aligned_width = ALIGN(width, v4l2_format_block_width(info, i));
>>  			aligned_height = ALIGN(height, v4l2_format_block_height(info, i));
>>  
>> -			plane->sizeimage += info->bpp[i] *
>> -				DIV_ROUND_UP(aligned_width, hdiv) *
>> -				DIV_ROUND_UP(aligned_height, vdiv);
>> +			sizeimage += info->bpp[i] *
>> +				     DIV_ROUND_UP(aligned_width, hdiv) *
>> +				     DIV_ROUND_UP(aligned_height, vdiv);
>>  		}
>> +
>> +		/* Custom bytesperline value is not supported yet. */
>> +		plane->bytesperline = ALIGN(width,
>> +					    v4l2_format_block_width(info, 0)) *
>> +				      info->bpp[0];
>> +
>> +		/*
>> +		 * The user might have specified a custom sizeimage, only
>> +		 * override it if it's not big enough.
>> +		 */
>> +		plane->sizeimage = max(sizeimage, plane->sizeimage);
> 
> No upper limit? That doesn't sound a good idea to me, specially since some
> (broken) app might not be memset the format to zero before filling the ioctl
> structure.
> 
> Perhaps we could do something like:
> 
> 		sizeimage = min (sizeimage, 2 * plane->sizeimage)
> 
> or something similar that would be reasonable.

I've no idea what's sane.

Buffers can be really large. The largest video resolution defined by CTA-861-G
is 10240x4320, so at 4 bytes per pixel that's 0x0a8c0000. So perhaps we can
use min(sizeimage, 0x10000000)? Although we should probably use the clamp function
instead of min/max.

Regards,

	Hans

> 
>>  	} else {
>>  		for (i = 0; i < info->comp_planes; i++) {
>>  			unsigned int hdiv = (i == 0) ? 1 : info->hdiv;
>> @@ -613,10 +624,19 @@ int v4l2_fill_pixfmt_mp(struct v4l2_pix_format_mplane *pixfmt,
>>  			aligned_height = ALIGN(height, v4l2_format_block_height(info, i));
>>  
>>  			plane = &pixfmt->plane_fmt[i];
>> -			plane->bytesperline =
>> -				info->bpp[i] * DIV_ROUND_UP(aligned_width, hdiv);
>> -			plane->sizeimage =
>> -				plane->bytesperline * DIV_ROUND_UP(aligned_height, vdiv);
> 
>> +
>> +			/* Custom bytesperline value is not supported yet. */
> 
> Supporting custom bytesperline seems too risky of breaking apps. 
> So, I would drop this comment.
> 
> 
>> +			plane->bytesperline = info->bpp[i] *
>> +					      DIV_ROUND_UP(aligned_width, hdiv);
> 
>> +
>> +			/*
>> +			 * The user might have specified a custom sizeimage,
>> +			 * only override it if it's not big enough.
>> +			 */
>> +			plane->sizeimage = max_t(u32,
>> +						 plane->bytesperline *
>> +						 DIV_ROUND_UP(aligned_height, vdiv),
>> +						 plane->sizeimage);
>>  		}
>>  	}
>>  	return 0;
>> @@ -627,6 +647,7 @@ int v4l2_fill_pixfmt(struct v4l2_pix_format *pixfmt, u32 pixelformat,
>>  		     u32 width, u32 height)
>>  {
>>  	const struct v4l2_format_info *info;
>> +	u32 sizeimage = 0;
>>  	int i;
>>  
>>  	info = v4l2_format_info(pixelformat);
>> @@ -640,8 +661,6 @@ int v4l2_fill_pixfmt(struct v4l2_pix_format *pixfmt, u32 pixelformat,
>>  	pixfmt->width = width;
>>  	pixfmt->height = height;
>>  	pixfmt->pixelformat = pixelformat;
>> -	pixfmt->bytesperline = ALIGN(width, v4l2_format_block_width(info, 0)) * info->bpp[0];
>> -	pixfmt->sizeimage = 0;
>>  
>>  	for (i = 0; i < info->comp_planes; i++) {
>>  		unsigned int hdiv = (i == 0) ? 1 : info->hdiv;
>> @@ -651,11 +670,20 @@ int v4l2_fill_pixfmt(struct v4l2_pix_format *pixfmt, u32 pixelformat,
>>  
>>  		aligned_width = ALIGN(width, v4l2_format_block_width(info, i));
>>  		aligned_height = ALIGN(height, v4l2_format_block_height(info, i));
>> -
>> -		pixfmt->sizeimage += info->bpp[i] *
>> -			DIV_ROUND_UP(aligned_width, hdiv) *
>> -			DIV_ROUND_UP(aligned_height, vdiv);
>> +		sizeimage += info->bpp[i] * DIV_ROUND_UP(aligned_width, hdiv) *
>> +			     DIV_ROUND_UP(aligned_height, vdiv);
>>  	}
>> +
>> +	/* Custom bytesperline value is not supported yet. */
>> +	pixfmt->bytesperline = ALIGN(width, v4l2_format_block_width(info, 0)) *
>> +			       info->bpp[0];
>> +
>> +	/*
>> +	 * The user might have specified its own sizeimage value, only override
>> +	 * it if it's not big enough.
>> +	 */
>> +	pixfmt->sizeimage = max(sizeimage, pixfmt->sizeimage);
>> +
> 
> Same comment applies here: We need to sanitize it from too big sizeimages.
> 
>>  	return 0;
>>  }
>>  EXPORT_SYMBOL_GPL(v4l2_fill_pixfmt);
> 
> 
> 
> Thanks,
> Mauro
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
