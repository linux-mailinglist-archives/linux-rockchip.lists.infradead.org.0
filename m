Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08329186735
	for <lists+linux-rockchip@lfdr.de>; Mon, 16 Mar 2020 10:00:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yn87JPoKefsTuE/phbSpp0yI3/y1WLVGf8DB+2R1ZwU=; b=X4OlnaToXkjTG/eIz67Gj3jpg
	ljrsYtsc8QvLgB98idMtsbOeLUdiYEbgmRmJbO/sO6br2lDYKvhHi6yscdfFF5N6lKfOo6AQtNrMx
	XT0QjCeY8HkPBnqAIC416SOQKwTd/mvD/TlteTRrOU1NEqMNWiTAt/m84TWgGkpb0sxt1z3AqYDxi
	aPZtpQ3QCzmQfjFE3Tl9nf3PDjjDRKzg9QJaEu8Sfv5RVf9AWr8a+ac6CX2ws5xTiaIdhqh2V3IB5
	zUpdOXuzUNBynLuWXuHltyfONMf46CL+VyRnV9J5nypE0IRlnutsBS800DkICkhn7mhib5to/3/F+
	N5SFNfkPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDlbS-0006Kw-1a; Mon, 16 Mar 2020 09:00:06 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDlbN-0005lR-Qq
 for linux-rockchip@lists.infradead.org; Mon, 16 Mar 2020 09:00:03 +0000
Received: from [IPv6:2a02:810a:113f:ad1c:bc0f:a2f4:ae8d:5d99] (unknown
 [IPv6:2a02:810a:113f:ad1c:bc0f:a2f4:ae8d:5d99])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id E1EA0293EC9;
 Mon, 16 Mar 2020 08:59:58 +0000 (GMT)
Subject: Re: [PATCH] media: v4l2-common: Add BGR666 to v4l2_format_info
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
References: <20200316070123.2434-1-dafna.hirschfeld@collabora.com>
 <20200316072214.GA16123@pendragon.ideasonboard.com>
 <31efd58f-1ab1-d3d0-e4b9-ea9072e608fa@collabora.com>
 <20200316081516.GK4732@pendragon.ideasonboard.com>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <401a9aca-f61f-d818-28dc-0e4cf7c2ac20@collabora.com>
Date: Mon, 16 Mar 2020 09:59:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200316081516.GK4732@pendragon.ideasonboard.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_020002_022955_82E586A1 
X-CRM114-Status: GOOD (  15.93  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: mchehab@kernel.org, dafna3@gmail.com, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org



On 16.03.20 09:15, Laurent Pinchart wrote:
> Hi Dafna,
> 
> On Mon, Mar 16, 2020 at 09:07:16AM +0100, Dafna Hirschfeld wrote:
>> On 16.03.20 08:22, Laurent Pinchart wrote:
>>> On Mon, Mar 16, 2020 at 08:01:23AM +0100, Dafna Hirschfeld wrote:
>>>> Add V4L2_PIX_FMT_BGR666 to the format table.
>>>>
>>>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>>>> ---
>>>> Hi,
>>>> BGR66 is needed for the rkisp1 driver.
>>>> Currently it crashes since the call to
>>>> v4l2_format_info returns NULL.
>>>>
>>>>    drivers/media/v4l2-core/v4l2-common.c | 1 +
>>>>    1 file changed, 1 insertion(+)
>>>>
>>>> diff --git a/drivers/media/v4l2-core/v4l2-common.c b/drivers/media/v4l2-core/v4l2-common.c
>>>> index d0e5ebc736f9..d7f82b2aa22f 100644
>>>> --- a/drivers/media/v4l2-core/v4l2-common.c
>>>> +++ b/drivers/media/v4l2-core/v4l2-common.c
>>>> @@ -253,6 +253,7 @@ const struct v4l2_format_info *v4l2_format_info(u32 format)
>>>>    		{ .format = V4L2_PIX_FMT_GREY,    .pixel_enc = V4L2_PIXEL_ENC_RGB, .mem_planes = 1, .comp_planes = 1, .bpp = { 1, 0, 0, 0 }, .hdiv = 1, .vdiv = 1 },
>>>>    		{ .format = V4L2_PIX_FMT_RGB565,  .pixel_enc = V4L2_PIXEL_ENC_RGB, .mem_planes = 1, .comp_planes = 1, .bpp = { 2, 0, 0, 0 }, .hdiv = 1, .vdiv = 1 },
>>>>    		{ .format = V4L2_PIX_FMT_RGB555,  .pixel_enc = V4L2_PIXEL_ENC_RGB, .mem_planes = 1, .comp_planes = 1, .bpp = { 2, 0, 0, 0 }, .hdiv = 1, .vdiv = 1 },
>>>> +		{ .format = V4L2_PIX_FMT_BGR666,  .pixel_enc = V4L2_PIXEL_ENC_RGB, .mem_planes = 1, .comp_planes = 1, .bpp = { 4, 0, 0, 0 }, .hdiv = 1, .vdiv = 1 },
>>>
>>> Isn't BGR666 stored in 3 bytes per pixel ?
>>
>> Hi, I also discussed it with Helen. From the documentation we
>> understood that it uses 4 bytes and the last one is empty.
>> https://linuxtv.org/downloads/v4l-dvb-apis/uapi/v4l/pixfmt-rgb.html
> 
> Would you then also understand V4L2_PIX_FMT_RGB565 to use 4 bytes with
> the last 2 bytes empty ? :-)
hmm, the formats between BGR24 and XRGB32 in the docs table have vertical lines crossing all 4 bytes so we understood that they are all 4 bytes. Isn't it?
Format RGB565 doesn't have does vertical lines on the last two bytes which means it uses 2. At least that is what we understood.

Dafna

> 
> I agree that the documentation is somehow ambiguous and should be fixed.
> Patches are welcome ;-)
> 
>>>>    
>>>>    		/* YUV packed formats */
>>>>    		{ .format = V4L2_PIX_FMT_YUYV,    .pixel_enc = V4L2_PIXEL_ENC_YUV, .mem_planes = 1, .comp_planes = 1, .bpp = { 2, 0, 0, 0 }, .hdiv = 2, .vdiv = 1 },
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
