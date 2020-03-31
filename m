Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB4D198CD6
	for <lists+linux-rockchip@lfdr.de>; Tue, 31 Mar 2020 09:21:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=g0gtWzNhg4XwMCo3wPhnhkt1bAV9/5wNZcPtxAwprpc=; b=b6w4Ct/bRsx4AozpkRxlJhJ86
	TH+waj58WEYN/p5LdVOvdynzEPUR+pbBTC0tL5ooiZBA74c/mWGdfCteA71TxDQtqNDVYFXwJuJiA
	piOZCle86+ibN1RxnGJSk/y54H4UPRg/CIwRfmcINZZiCh9ItQ12MFwJjknT5xmloZ8YQcVYhCtqE
	osLgTBFMfQyiXu47Vp/hDQkTJcMF7jUWBSFQ/Oxe+u7ySW+Qv0jfKGG/5ETnQmf6PAD2SWzJm+UX/
	aqltP8+08PnYb6OYcaaV9sl1OM2VYA6T4ft6YgXV/iVxwzGnBoC4bHUncaRvF0MTaao5bt7p0lzBZ
	nWtw0v8CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJBCl-0002PU-Be; Tue, 31 Mar 2020 07:20:59 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJBCh-0002Os-CF
 for linux-rockchip@lists.infradead.org; Tue, 31 Mar 2020 07:20:56 +0000
Received: from [IPv6:2a02:810a:1140:6758:982b:112f:3e03:c20d] (unknown
 [IPv6:2a02:810a:1140:6758:982b:112f:3e03:c20d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 63537296944;
 Tue, 31 Mar 2020 08:20:52 +0100 (BST)
Subject: Re: [PATCH] media: v4l2-common: change the pixel_enc of
 V4L2_PIX_FMT_GREY to YUV
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org,
 helen.koike@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com,
 dafna3@gmail.com, sakari.ailus@linux.intel.com,
 linux-rockchip@lists.infradead.org, mchehab@kernel.org,
 laurent.pinchart@ideasonboard.com
References: <20200323173618.14058-1-dafna.hirschfeld@collabora.com>
 <9304066ca10c9ccdf8a5fd88866425a5f45a330a.camel@collabora.com>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <ef6fd691-c8ca-9408-76b4-e47aca0fc9b4@collabora.com>
Date: Tue, 31 Mar 2020 09:20:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <9304066ca10c9ccdf8a5fd88866425a5f45a330a.camel@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_002055_551391_505F101D 
X-CRM114-Status: GOOD (  16.23  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org



On 30.03.20 20:22, Ezequiel Garcia wrote:
> Hi Dafna,
> 
> Nice catch, thanks a lot.
Hi, It was actually Helen's idea,

> 
> On Mon, 2020-03-23 at 18:36 +0100, Dafna Hirschfeld wrote:
>> V4L2_PIX_FMT_GREY format is Ycbcr format without
> 
> A nitpick s/Ycbcr/YCbCr. Maybe Hans can amend
> this when applying.
> 
> It's no big deal anyway.
> 
> Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
> 
>> the color data, therefore its pixel_enc should
>> set to V4L2_PIXEL_ENC_YUV.
>>
>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Suggested-by: Helen Koike <helen.koike@collabora.com>

>> ---
>>   drivers/media/v4l2-core/v4l2-common.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/media/v4l2-core/v4l2-common.c b/drivers/media/v4l2-core/v4l2-common.c
>> index d0e5ebc736f9..054f2e607dff 100644
>> --- a/drivers/media/v4l2-core/v4l2-common.c
>> +++ b/drivers/media/v4l2-core/v4l2-common.c
>> @@ -250,7 +250,6 @@ const struct v4l2_format_info *v4l2_format_info(u32 format)
>>   		{ .format = V4L2_PIX_FMT_RGBA32,  .pixel_enc = V4L2_PIXEL_ENC_RGB, .mem_planes = 1, .comp_planes = 1, .bpp = { 4, 0, 0, 0 }, .hdiv =
>> 1, .vdiv = 1 },
>>   		{ .format = V4L2_PIX_FMT_ABGR32,  .pixel_enc = V4L2_PIXEL_ENC_RGB, .mem_planes = 1, .comp_planes = 1, .bpp = { 4, 0, 0, 0 }, .hdiv =
>> 1, .vdiv = 1 },
>>   		{ .format = V4L2_PIX_FMT_BGRA32,  .pixel_enc = V4L2_PIXEL_ENC_RGB, .mem_planes = 1, .comp_planes = 1, .bpp = { 4, 0, 0, 0 }, .hdiv =
>> 1, .vdiv = 1 },
>> -		{ .format = V4L2_PIX_FMT_GREY,    .pixel_enc = V4L2_PIXEL_ENC_RGB, .mem_planes = 1, .comp_planes = 1, .bpp = { 1, 0, 0, 0 }, .hdiv =
>> 1, .vdiv = 1 },
>>   		{ .format = V4L2_PIX_FMT_RGB565,  .pixel_enc = V4L2_PIXEL_ENC_RGB, .mem_planes = 1, .comp_planes = 1, .bpp = { 2, 0, 0, 0 }, .hdiv =
>> 1, .vdiv = 1 },
>>   		{ .format = V4L2_PIX_FMT_RGB555,  .pixel_enc = V4L2_PIXEL_ENC_RGB, .mem_planes = 1, .comp_planes = 1, .bpp = { 2, 0, 0, 0 }, .hdiv =
>> 1, .vdiv = 1 },
>>   
>> @@ -274,6 +273,7 @@ const struct v4l2_format_info *v4l2_format_info(u32 format)
>>   		{ .format = V4L2_PIX_FMT_YUV420,  .pixel_enc = V4L2_PIXEL_ENC_YUV, .mem_planes = 1, .comp_planes = 3, .bpp = { 1, 1, 1, 0 }, .hdiv =
>> 2, .vdiv = 2 },
>>   		{ .format = V4L2_PIX_FMT_YVU420,  .pixel_enc = V4L2_PIXEL_ENC_YUV, .mem_planes = 1, .comp_planes = 3, .bpp = { 1, 1, 1, 0 }, .hdiv =
>> 2, .vdiv = 2 },
>>   		{ .format = V4L2_PIX_FMT_YUV422P, .pixel_enc = V4L2_PIXEL_ENC_YUV, .mem_planes = 1, .comp_planes = 3, .bpp = { 1, 1, 1, 0 }, .hdiv =
>> 2, .vdiv = 1 },
>> +		{ .format = V4L2_PIX_FMT_GREY,    .pixel_enc = V4L2_PIXEL_ENC_YUV, .mem_planes = 1, .comp_planes = 1, .bpp = { 1, 0, 0, 0 }, .hdiv =
>> 1, .vdiv = 1 },
>>   
>>   		/* YUV planar formats, non contiguous variant */
>>   		{ .format = V4L2_PIX_FMT_YUV420M, .pixel_enc = V4L2_PIXEL_ENC_YUV, .mem_planes = 3, .comp_planes = 3, .bpp = { 1, 1, 1, 0 }, .hdiv =
>> 2, .vdiv = 2 },
>> -- 
>> 2.17.1
>>
>>
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
