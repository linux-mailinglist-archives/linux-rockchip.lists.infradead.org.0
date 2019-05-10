Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83D3319D47
	for <lists+linux-rockchip@lfdr.de>; Fri, 10 May 2019 14:30:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cp8ePREWgn+OeKSwyjDp8+FxRmQQ8EFpx1PmKDdMpGM=; b=aQyw4/9ob4Aa25
	1TOaVQrb4mK7Qkg42cwLxPblGBIvC9VKVbeFKXEeO6pBH7qMlCPpA5jucl3wtMe/OY6OynE+YmQxS
	XH2Ccyw3fq93LW3aG/b9xGMKqTPaqGUrTm2LZz3l114WTntHZeYIyYrTnmC4kS4ql8+qrRJ9K2rTG
	A89SdTRZWZslNjF80aOB5oNU3Pml1B4hlO0e7XrJNMP207qWPJ2w48762ExrwomHDyJf1BMTiqo9G
	aG4XtIkdbTzUQ7fo+CA9Z016b81lzYYJQhyP0eJqLdYWf7TkaLpVya1KzIN2ZVmaFYPB3JDqfjg+P
	GW0op95vaAqdk+wdWRWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP4fQ-0003SG-FS; Fri, 10 May 2019 12:30:24 +0000
Received: from lb3-smtp-cloud9.xs4all.net ([194.109.24.30])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP4fM-0003Rq-Nc
 for linux-rockchip@lists.infradead.org; Fri, 10 May 2019 12:30:22 +0000
Received: from [IPv6:2001:983:e9a7:1:2dea:e21e:760a:b215]
 ([IPv6:2001:983:e9a7:1:2dea:e21e:760a:b215])
 by smtp-cloud9.xs4all.net with ESMTPA
 id P4fJhe7iisDWyP4fKhcQce; Fri, 10 May 2019 14:30:18 +0200
Subject: Re: [PATCH v5 03/15] media: v4l2-common: Support custom
 imagesize/bytesperline in fill_pixfmt()
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
References: <20190503114719.28784-1-boris.brezillon@collabora.com>
 <20190503114719.28784-4-boris.brezillon@collabora.com>
 <0c5a648c-27a8-8195-8ad9-8cefb4369837@xs4all.nl>
 <20190510112847.GA4972@pendragon.ideasonboard.com>
 <c2d02ffb-5273-67a8-1a3a-c7268dc7bfb6@xs4all.nl>
 <20190510122411.GB4972@pendragon.ideasonboard.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <f9ffc9ae-2c27-2883-7f62-9931597c8e75@xs4all.nl>
Date: Fri, 10 May 2019 14:30:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190510122411.GB4972@pendragon.ideasonboard.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfM7fnEKo/QQfEC7eZRzpo4vAJzZ7ExlswTULddu3n8GdOfXTDJayT6ud2i0rjN3141R7wSHKq6rVgZ1t5/Jn3ymSHSazUJA9m/IUeXhx4IurLprJdnOe
 XZd8JUwcG91ONXwLcT+IJjQJkpuVcwYxl6EHviwYQYjGcOq82pEHLnccqth/QXCcXP6sUQVqYw6d4tukaQpyAj8laYA/Y9zD19HkqauEtvMuyNKwANHmMGim
 MpD+Z9yAueu4MsF6iSwlbtCfKl8DZTT26TmbxJaGfXPrh6896fjAf/DmZxQYFvYu9lapp9Ewh526xjLP8dzIh8pRKByIp7KvVkDEByHFebFESAgwFdHjz8LC
 dz4plFb0yCFHAUNfn9Ey6KQhorJrY7suruP91bg5UzK2QK7xc6WjGhLFxaTYOG5eWkGPSBFdaUPIPGvfuuttEInoQPXtDKY4GXUhxNqtr6LdKib6PM1Dvh3W
 BMAhLFPVoior75UxrLXPt+Y0uS+cK792JRhGJbINkgw74Z5oNVAJnybKOVQZmZmnPLGMj7fLW/ZP5DJx0baV/uQjnmLX5VFBGRmWMtua34fWJLVcGNOpckDL
 dDs0ctr+04FSoz1FRUfhdv2cZnYCQIB9SEncu5EWizadUWMwnvLGd2k8cz8T7whUVrQ6u29EvvPvbfNBluMpICqJxdAxhBxB3BhXzIjqWQIJvuu/x+xucMOM
 QINPdryesxqO5Vo5TB/Yqzb6Yk88jhDigc4fkOXG6M/yobJUqP5nknRtVyuWbNkMOhB+0XIZ5tQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_053020_941329_DCA6CCB5 
X-CRM114-Status: GOOD (  18.24  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.30 listed in list.dnswl.org]
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
Cc: Nicolas Dufresne <nicolas@ndufresne.ca>, kernel@collabora.com,
 Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Sakari Ailus <sakari.ailus@iki.fi>, Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 5/10/19 2:24 PM, Laurent Pinchart wrote:
> Hi Hans,
> 
> On Fri, May 10, 2019 at 02:17:32PM +0200, Hans Verkuil wrote:
>> On 5/10/19 1:28 PM, Laurent Pinchart wrote:
>>> On Fri, May 10, 2019 at 10:57:26AM +0200, Hans Verkuil wrote:
>>>> On 5/3/19 1:47 PM, Boris Brezillon wrote:
>>>>> Users can define custom sizeimage and bytesperline as long as they're
>>>>> big enough to store the amount of pixels required for a specific
>>>>> width/height under a specific format. Avoid overriding those fields in
>>>>> this case.
>>>>>
>>>>> Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
>>>>> ---
>>>>> Hello Hans,
>>>>>
>>>>> The sizeimage/bytesperline check on !MPLANE formats is still not 100%
>>>>> sure, as custom bytesperline might induce bigger sizeimage than what
>>>>> we calculate.
>>>>>
>>>>> I tried implementing something smarter taking the per-component plane
>>>>> bpp + hdiv param as we discussed the other day but decided to step
>>>>> back after realizing the per-component plane macro block might also
>>>>> differ at least in theory (not sure that's true in practice) and that
>>>>> has an impact on bytesperline too.
>>>>>
>>>>> Let me know how you want to handle that case.
>>>>>
>>>>> Regards,
>>>>>
>>>>> Boris
>>>>>
>>>>> Changes in v5:
>>>>> * New patch
>>>>> ---
>>>>>  drivers/media/v4l2-core/v4l2-common.c | 54 +++++++++++++++++++--------
>>>>>  1 file changed, 39 insertions(+), 15 deletions(-)
>>>>>
>>>>> diff --git a/drivers/media/v4l2-core/v4l2-common.c b/drivers/media/v4l2-core/v4l2-common.c
>>>>> index 3c6f5c115fc5..37bfc984a8b5 100644
>>>>> --- a/drivers/media/v4l2-core/v4l2-common.c
>>>>> +++ b/drivers/media/v4l2-core/v4l2-common.c
>>>>> @@ -563,9 +563,10 @@ int v4l2_fill_pixfmt_mp(struct v4l2_pix_format_mplane *pixfmt,
>>>>>  	pixfmt->num_planes = info->mem_planes;
>>>>>  
>>>>>  	if (info->mem_planes == 1) {
>>>>> +		u32 bytesperline, sizeimage = 0;
>>>>> +
>>>>>  		plane = &pixfmt->plane_fmt[0];
>>>>> -		plane->bytesperline = ALIGN(width, v4l2_format_block_width(info, 0)) * info->bpp[0];
>>>>> -		plane->sizeimage = 0;
>>>>> +		bytesperline = ALIGN(width, v4l2_format_block_width(info, 0)) * info->bpp[0];
>>>>>  
>>>>>  		for (i = 0; i < info->comp_planes; i++) {
>>>>>  			unsigned int hdiv = (i == 0) ? 1 : info->hdiv;
>>>>> @@ -576,10 +577,17 @@ int v4l2_fill_pixfmt_mp(struct v4l2_pix_format_mplane *pixfmt,
>>>>>  			aligned_width = ALIGN(width, v4l2_format_block_width(info, i));
>>>>>  			aligned_height = ALIGN(height, v4l2_format_block_height(info, i));
>>>>>  
>>>>> -			plane->sizeimage += info->bpp[i] *
>>>>> -				DIV_ROUND_UP(aligned_width, hdiv) *
>>>>> -				DIV_ROUND_UP(aligned_height, vdiv);
>>>>> +			sizeimage += info->bpp[i] *
>>>>> +				     DIV_ROUND_UP(aligned_width, hdiv) *
>>>>> +				     DIV_ROUND_UP(aligned_height, vdiv);
>>>>>  		}
>>>>> +
>>>>> +		/*
>>>>> +		 * The user might have specified custom sizeimage/bytesperline,
>>>>> +		 * only override them if they're not big enough.
>>>>> +		 */
>>>>> +		plane->sizeimage = max(sizeimage, plane->sizeimage);
>>>>> +		plane->bytesperline = max(bytesperline, plane->bytesperline);
>>>>
>>>> Let's just set bytesperline, ignoring the value the user supplied. There are very
>>>> few drivers that allow the user to set bytesperline anyway, so it's not a big deal
>>>> to drop support for that for now. We can add it back later.
>>>>
>>>> Just add a comment that a user-defined bytesperline value isn't currently supported.
>>>
>>> Kieran recently ran into an issue related to this, when sharing buffers
>>> between a CSI-2 receiver and an ISP. The ISP has alignment constraints
>>> in both the horizontal and vertical directions on the line stride and
>>> total image size. Out software framework currently allocates buffers
>>> from the CSI-2 receiver which doesn't have those constraints, and not
>>> being able to specify sizeimage is thus a problem.
>>
>> Not being able to specify sizeimage where? From userspace? Sorry, I don't
>> quite understand the specific issue here.
> 
> Yes, from userspace.

Ah, OK. But why not use CREATEBUFS? You can provide your own size when allocating
the buffers.

Also note this patch: https://patchwork.linuxtv.org/patch/55656/

Although this is specific for compressed formats.

Regards,

	Hans

> 
>>> We have worked around this by allocating buffers on the ISP side but
>>> that departed from the normal way of operation, and it may not be a good
>>> idea to carry that forward.
>>>
>>> I wonder how we should solve these issues long term. A central memory
>>> allocator is probably the way to go.
>>>
>>>>>  	} else {
>>>>>  		for (i = 0; i < info->comp_planes; i++) {
>>>>>  			unsigned int hdiv = (i == 0) ? 1 : info->hdiv;
>>>>> @@ -591,10 +599,20 @@ int v4l2_fill_pixfmt_mp(struct v4l2_pix_format_mplane *pixfmt,
>>>>>  			aligned_height = ALIGN(height, v4l2_format_block_height(info, i));
>>>>>  
>>>>>  			plane = &pixfmt->plane_fmt[i];
>>>>> -			plane->bytesperline =
>>>>> -				info->bpp[i] * DIV_ROUND_UP(aligned_width, hdiv);
>>>>> -			plane->sizeimage =
>>>>> -				plane->bytesperline * DIV_ROUND_UP(aligned_height, vdiv);
>>>>> +
>>>>> +			/*
>>>>> +			 * The user might have specified custom
>>>>> +			 * sizeimage/bytesperline, only override them if
>>>>> +			 * they're not big enough.
>>>>> +			 */
>>>>> +			plane->bytesperline = max_t(u32,
>>>>> +						    info->bpp[i] *
>>>>> +						    DIV_ROUND_UP(aligned_width, hdiv),
>>>>> +						    plane->bytesperline);
>>>>> +			plane->sizeimage = max_t(u32,
>>>>> +						 plane->bytesperline *
>>>>> +						 DIV_ROUND_UP(aligned_height, vdiv),
>>>>> +						 plane->sizeimage);
>>>>>  		}
>>>>>  	}
>>>>>  	return 0;
>>>>> @@ -605,6 +623,7 @@ int v4l2_fill_pixfmt(struct v4l2_pix_format *pixfmt, u32 pixelformat,
>>>>>  		     u32 width, u32 height)
>>>>>  {
>>>>>  	const struct v4l2_format_info *info;
>>>>> +	u32 bytesperline, sizeimage = 0;
>>>>>  	int i;
>>>>>  
>>>>>  	info = v4l2_format_info(pixelformat);
>>>>> @@ -618,8 +637,7 @@ int v4l2_fill_pixfmt(struct v4l2_pix_format *pixfmt, u32 pixelformat,
>>>>>  	pixfmt->width = width;
>>>>>  	pixfmt->height = height;
>>>>>  	pixfmt->pixelformat = pixelformat;
>>>>> -	pixfmt->bytesperline = ALIGN(width, v4l2_format_block_width(info, 0)) * info->bpp[0];
>>>>> -	pixfmt->sizeimage = 0;
>>>>> +	bytesperline = ALIGN(width, v4l2_format_block_width(info, 0)) * info->bpp[0];
>>>>>  
>>>>>  	for (i = 0; i < info->comp_planes; i++) {
>>>>>  		unsigned int hdiv = (i == 0) ? 1 : info->hdiv;
>>>>> @@ -629,11 +647,17 @@ int v4l2_fill_pixfmt(struct v4l2_pix_format *pixfmt, u32 pixelformat,
>>>>>  
>>>>>  		aligned_width = ALIGN(width, v4l2_format_block_width(info, i));
>>>>>  		aligned_height = ALIGN(height, v4l2_format_block_height(info, i));
>>>>> -
>>>>> -		pixfmt->sizeimage += info->bpp[i] *
>>>>> -			DIV_ROUND_UP(aligned_width, hdiv) *
>>>>> -			DIV_ROUND_UP(aligned_height, vdiv);
>>>>> +		sizeimage += info->bpp[i] * DIV_ROUND_UP(aligned_width, hdiv) *
>>>>> +			     DIV_ROUND_UP(aligned_height, vdiv);
>>>>>  	}
>>>>> +
>>>>> +	/*
>>>>> +	 * The user might have specified its own sizeimage/bytesperline values,
>>>>> +	 * only override them if they're not big enough.
>>>>> +	 */
>>>>> +	pixfmt->sizeimage = max(sizeimage, pixfmt->sizeimage);
>>>>> +	pixfmt->bytesperline = max(bytesperline, pixfmt->bytesperline);
>>>>> +
>>>>>  	return 0;
>>>>>  }
>>>>>  EXPORT_SYMBOL_GPL(v4l2_fill_pixfmt);
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
