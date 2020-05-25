Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59B261E0B09
	for <lists+linux-rockchip@lfdr.de>; Mon, 25 May 2020 11:51:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+4y+LfVPhGD2pBzwytMRi6cylPXKN5j2CpgEY1fTvqw=; b=T/tsIZfFUD1rZjx66ZBwz7vmM
	PGgIiYZgj6+ZcwMLLOr0TASJIRTvxTTbl+vTeqc3PUJnDvzjs91ipDmEj7h5fjxiY9eZb4iIysstp
	6QE2GzOXmG79wIMJc38ZktJIZYZ2wDDronqPOlaj070SO4qCms9udb30ZQCH0gnlUVK4Af1lQBfMc
	Pc9EHTtNs+TWr9KX4p+xVjMs3LEeV4mblienQYJuVc4WIqfeOAoGoE2+JZXcHdzg9+CY9JNigizRW
	xm59xPjVPA6MO2tKCNdZX0kXV5MMBTCwTTlM2kp7RjRmg/Gh0Mvvz9xUFE2EfEfdGQrtbHqnKnR2R
	IiEo9wq7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd9lJ-0000Kf-5z; Mon, 25 May 2020 09:51:13 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd9lG-0000Jm-9p
 for linux-rockchip@lists.infradead.org; Mon, 25 May 2020 09:51:11 +0000
Received: from [IPv6:2003:cb:871f:5b00:450d:7f43:38d6:51e8]
 (p200300cb871f5b00450d7f4338d651e8.dip0.t-ipconnect.de
 [IPv6:2003:cb:871f:5b00:450d:7f43:38d6:51e8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 55F802A0AA7;
 Mon, 25 May 2020 10:51:08 +0100 (BST)
Subject: Re: [PATCH v2 2/4] media: staging: rkisp1: rsz: use hdiv, vdiv of
 yuv422 instead of macros
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Helen Koike <helen.koike@collabora.com>, linux-media@vger.kernel.org,
 hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com,
 sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org,
 mchehab@kernel.org, laurent.pinchart@ideasonboard.com,
 Tomasz Figa <tfiga@chromium.org>
References: <20200515142952.20163-1-dafna.hirschfeld@collabora.com>
 <20200515142952.20163-3-dafna.hirschfeld@collabora.com>
 <2606d729-7418-109b-f514-3b9eb834187c@collabora.com>
 <4bd94509-79af-16db-3721-2553508a6c42@collabora.com>
 <d0c93454-8a51-a28c-639d-948041fc602a@collabora.com>
 <9a0a91d50bdaa19378ef21de5c81abeef476429a.camel@collabora.com>
 <f8fa01a3-c0f1-9fc5-1fb8-b4fe91e8fc74@collabora.com>
 <5a4e994d9b5b702205301a9b72bef2d013d4e106.camel@collabora.com>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <b709625a-ecff-a173-4144-0de341ad1852@collabora.com>
Date: Mon, 25 May 2020 11:51:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <5a4e994d9b5b702205301a9b72bef2d013d4e106.camel@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_025110_482064_97B357E4 
X-CRM114-Status: GOOD (  20.10  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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



On 22.05.20 17:04, Ezequiel Garcia wrote:
> On Fri, 2020-05-22 at 16:15 +0200, Dafna Hirschfeld wrote:
>>
>> On 22.05.20 15:31, Ezequiel Garcia wrote:
>>> Hi Dafna, Helen,
>>>
>>> On Fri, 2020-05-22 at 14:11 +0200, Dafna Hirschfeld wrote:
>>>> On 21.05.20 00:08, Helen Koike wrote:
>>>>> On 5/20/20 6:54 PM, Helen Koike wrote:
>>>>>> Hi Dafna,
>>>>>>
>>>>>> On 5/15/20 11:29 AM, Dafna Hirschfeld wrote:
>>>>>>> The resize block of rkisp1 always get the input as yuv422.
>>>>>>> Instead of defining the default hdiv, vdiv as macros, the
>>>>>>> code is more clear if it takes the (hv)div from the YUV422P
>>>>>>> info. This makes it clear where those values come from.
>>>>>>> The patch also adds documentation to explain that.
>>>>>>>
>>>>>>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>>>>>>
>>>>>> Acked-by: Helen Koike <helen.koike@collabora.com>
>>>>>>
>>>>>> Thanks!
>>>>>> Helen
>>>>>>
>>>>>>> ---
>>>>>>>     drivers/staging/media/rkisp1/rkisp1-resizer.c | 25 +++++++++----------
>>>>>>>     1 file changed, 12 insertions(+), 13 deletions(-)
>>>>>>>
>>>>>>> diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
>>>>>>> index d049374413dc..04a29af8cc92 100644
>>>>>>> --- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
>>>>>>> +++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
>>>>>>> @@ -16,9 +16,6 @@
>>>>>>>     #define RKISP1_DEF_FMT MEDIA_BUS_FMT_YUYV8_2X8
>>>>>>>     #define RKISP1_DEF_PIXEL_ENC V4L2_PIXEL_ENC_YUV
>>>>>>>     
>>>>>>> -#define RKISP1_MBUS_FMT_HDIV 2
>>>>>>> -#define RKISP1_MBUS_FMT_VDIV 1
>>>>>>> -
>>>>>>>     enum rkisp1_shadow_regs_when {
>>>>>>>     	RKISP1_SHADOW_REGS_SYNC,
>>>>>>>     	RKISP1_SHADOW_REGS_ASYNC,
>>>>>>> @@ -361,11 +358,12 @@ static void rkisp1_rsz_config_regs(struct rkisp1_resizer *rsz,
>>>>>>>     static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
>>>>>>>     			      enum rkisp1_shadow_regs_when when)
>>>>>>>     {
>>>>>>> -	u8 hdiv = RKISP1_MBUS_FMT_HDIV, vdiv = RKISP1_MBUS_FMT_VDIV;
>>>>>>>     	struct v4l2_rect sink_y, sink_c, src_y, src_c;
>>>>>>>     	struct v4l2_mbus_framefmt *src_fmt;
>>>>>>>     	struct v4l2_rect *sink_crop;
>>>>>>>     	struct rkisp1_capture *cap = &rsz->rkisp1->capture_devs[rsz->id];
>>>>>>> +	const struct v4l2_format_info *yuv422_info =
>>>>>>> +		v4l2_format_info(V4L2_PIX_FMT_YUV422P);
>>>>>>>     
>>>
>>> Instead of hardcoding this fourcc, is there any way we can
>>> retrieve it from a configured format?
>>>
>> What do you mean?
>> If the configured format is bayer then the resizer is disabled.
>> Otherwise the resizer always get the input as yuv422, this is why it is hard coded.
>>
> 
> I don't like to rely on these assumptions/knowledge.> It's much cleaner to retrieve the format, and avoiding
> hardcoding things as much as you can.
> 
> Hope I'm making sense :-)
hmm, not yet, If the input is a constant why not hardcode it?
Not sure what kind of code would you expect to replace it?
You mean a function that get the sink mbus as an input and returns "v4l2_format_info(V4L2_PIX_FMT_YUV422P)" if
the mbus is MEDIA_BUS_FMT_YUYV8_2X8?


Thanks,
Dafna

> 
> Ezequiel
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
