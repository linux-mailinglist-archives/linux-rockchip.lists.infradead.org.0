Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C17E51DC1D5
	for <lists+linux-rockchip@lfdr.de>; Thu, 21 May 2020 00:08:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TEYhHKXpnDjjWcgQ9gsqPsCoqmFwUrfeoalWUgDs2Dw=; b=VMrbqcv3FjWH30qhy+xkBW5110
	+Xm/ZTzoZF0d4fA/0R5+/qwKCU33m/5/9etevjhqXgSLR2M1682MJF66i3ZFisQGQBaOeEgUNoGWq
	2u1js7zMz08moY9qO3umKAHUBLEOaFTLXqhB2P89n5rn+ONysWN7I/Pb/M/9hDQf72pxqi8WPjfzU
	/Ujny5X6xk+Hgu+ZMADvoSfK6xzk4h1kbjZiFq9ZBvrgXZzIiL4+ByHGw9xRSQBB0eTfBHP+DbUD6
	kAdrDoLYTwJecbefXD0DaNBVejGGzPk/GyfdVheBUs9Vlz+R6SGrANxRFCWRymBx1a904W2asSUN1
	R4yIHIvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbWt5-0004ze-Ga; Wed, 20 May 2020 22:08:31 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbWt2-0004yq-Ah
 for linux-rockchip@lists.infradead.org; Wed, 20 May 2020 22:08:29 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 6AC342A02CF
Subject: Re: [PATCH v2 2/4] media: staging: rkisp1: rsz: use hdiv, vdiv of
 yuv422 instead of macros
From: Helen Koike <helen.koike@collabora.com>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org, ezequiel@collabora.com, hverkuil@xs4all.nl,
 kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com,
 linux-rockchip@lists.infradead.org, mchehab@kernel.org,
 laurent.pinchart@ideasonboard.com
References: <20200515142952.20163-1-dafna.hirschfeld@collabora.com>
 <20200515142952.20163-3-dafna.hirschfeld@collabora.com>
 <2606d729-7418-109b-f514-3b9eb834187c@collabora.com>
Message-ID: <4bd94509-79af-16db-3721-2553508a6c42@collabora.com>
Date: Wed, 20 May 2020 19:08:19 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <2606d729-7418-109b-f514-3b9eb834187c@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_150828_495028_B1457F9B 
X-CRM114-Status: GOOD (  17.66  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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



On 5/20/20 6:54 PM, Helen Koike wrote:
> Hi Dafna,
> 
> On 5/15/20 11:29 AM, Dafna Hirschfeld wrote:
>> The resize block of rkisp1 always get the input as yuv422.
>> Instead of defining the default hdiv, vdiv as macros, the
>> code is more clear if it takes the (hv)div from the YUV422P
>> info. This makes it clear where those values come from.
>> The patch also adds documentation to explain that.
>>
>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> 
> Acked-by: Helen Koike <helen.koike@collabora.com>
> 
> Thanks!
> Helen
> 
>> ---
>>  drivers/staging/media/rkisp1/rkisp1-resizer.c | 25 +++++++++----------
>>  1 file changed, 12 insertions(+), 13 deletions(-)
>>
>> diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
>> index d049374413dc..04a29af8cc92 100644
>> --- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
>> +++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
>> @@ -16,9 +16,6 @@
>>  #define RKISP1_DEF_FMT MEDIA_BUS_FMT_YUYV8_2X8
>>  #define RKISP1_DEF_PIXEL_ENC V4L2_PIXEL_ENC_YUV
>>  
>> -#define RKISP1_MBUS_FMT_HDIV 2
>> -#define RKISP1_MBUS_FMT_VDIV 1
>> -
>>  enum rkisp1_shadow_regs_when {
>>  	RKISP1_SHADOW_REGS_SYNC,
>>  	RKISP1_SHADOW_REGS_ASYNC,
>> @@ -361,11 +358,12 @@ static void rkisp1_rsz_config_regs(struct rkisp1_resizer *rsz,
>>  static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
>>  			      enum rkisp1_shadow_regs_when when)
>>  {
>> -	u8 hdiv = RKISP1_MBUS_FMT_HDIV, vdiv = RKISP1_MBUS_FMT_VDIV;
>>  	struct v4l2_rect sink_y, sink_c, src_y, src_c;
>>  	struct v4l2_mbus_framefmt *src_fmt;
>>  	struct v4l2_rect *sink_crop;
>>  	struct rkisp1_capture *cap = &rsz->rkisp1->capture_devs[rsz->id];
>> +	const struct v4l2_format_info *yuv422_info =
>> +		v4l2_format_info(V4L2_PIX_FMT_YUV422P);
>>  
>>  	sink_crop = rkisp1_rsz_get_pad_crop(rsz, NULL, RKISP1_RSZ_PAD_SINK,
>>  					    V4L2_SUBDEV_FORMAT_ACTIVE);
>> @@ -386,8 +384,9 @@ static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
>>  	src_y.width = src_fmt->width;
>>  	src_y.height = src_fmt->height;
>>  
>> -	sink_c.width = sink_y.width / RKISP1_MBUS_FMT_HDIV;
>> -	sink_c.height = sink_y.height / RKISP1_MBUS_FMT_VDIV;
>> +	/* The input format of the resizer is always yuv422 */
>> +	sink_c.width = sink_y.width / yuv422_info->hdiv;
>> +	sink_c.height = sink_y.height / yuv422_info->vdiv;
>>  
>>  	/*
>>  	 * The resizer is used not only to change the dimensions of the frame
>> @@ -395,17 +394,17 @@ static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
>>  	 * (4:2:2 -> 4:2:0 for example). So the width/height of the CbCr
>>  	 * streams should be set according to the pixel format in the capture.
>>  	 * The resizer always gets the input as YUV422. If the capture format
>> -	 * is RGB then the memory input should be YUV422 so we don't change the
>> -	 * default hdiv, vdiv in that case.
>> +	 * is RGB then the memory input (the resizer output) should be YUV422
>> +	 * so we use the hdiv, vdiv of the YUV422 info in this case.
>>  	 */
>>  	if (v4l2_is_format_yuv(cap->pix.info)) {
>> -		hdiv = cap->pix.info->hdiv;
>> -		vdiv = cap->pix.info->vdiv;
>> +		src_c.width = cap->pix.info->hdiv;
>> +		src_c.height = cap->pix.info->vdiv;

Sorry, I just noticed you are assigning hdiv and vdiv directly to width and height, which looks wrong.

It should be:

src_c.width = src_y.width / cap->pix.info->hdiv;
src_c.height = src_y.height / cap->pix.info->vdiv;

Regards,
Helen

>> +	} else {
>> +		src_c.width = src_y.width / yuv422_info->hdiv;
>> +		src_c.height = src_y.height / yuv422_info->vdiv;
>>  	}
>>  
>> -	src_c.width = src_y.width / hdiv;
>> -	src_c.height = src_y.height / vdiv;
>> -
>>  	if (sink_c.width == src_c.width && sink_c.height == src_c.height) {
>>  		rkisp1_rsz_disable(rsz, when);
>>  		return;
>>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
