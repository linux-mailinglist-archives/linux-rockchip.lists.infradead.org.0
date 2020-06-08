Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C605B1F1E94
	for <lists+linux-rockchip@lfdr.de>; Mon,  8 Jun 2020 19:50:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zI88IKO13Pd4w0ygt/zCxYRyQK5IQRJNbwKQCyJ87Os=; b=Dpnt3lnhZrWLbByMXLa+gK1kv
	VAHDq0v3Teb/OVD17wAblHg5BphB/E8HK3GCtBOJWAWJO/xxRHt1jU0JOnblZQ6IO/Vk9ZW+rUI77
	0wW8a/hzuz4WadHD3r4Mg021KFG3zjCKgDZ7+GqTlb8OtcAWVgebjwmt7ldiEBJrPqYUJ3PXtol81
	tD2xVYB7mRBetxZJmeMf/5YS8tP0dxKM/P7xNlxkqFqiM25MWBLMKmS02BOfwa9mTKnYyQEn/ISoR
	VbOEanJGBaKHG0ZINXRH8zGwkIpe30i0nkt8p9vzH7SdddDhg6VXrfzeApbGdzoSE8omLXcB1MFFv
	Fmo3S0xJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiLv5-00046i-Io; Mon, 08 Jun 2020 17:50:47 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiLv2-00046D-Ej
 for linux-rockchip@lists.infradead.org; Mon, 08 Jun 2020 17:50:46 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id A7C132A082E
Subject: Re: [PATCH 2/2] media: staging: rkisp1: rsz: set default format if
 the given format is not RKISP1_DIR_SRC
To: Helen Koike <helen.koike@collabora.com>, linux-media@vger.kernel.org,
 laurent.pinchart@ideasonboard.com
References: <20200604190015.12069-1-dafna.hirschfeld@collabora.com>
 <20200604190015.12069-2-dafna.hirschfeld@collabora.com>
 <a89f6269-3270-18fc-298f-7b00fd830039@collabora.com>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <e22d7b03-f468-719b-83f3-ed3b960d7d42@collabora.com>
Date: Mon, 8 Jun 2020 19:50:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <a89f6269-3270-18fc-298f-7b00fd830039@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_105044_625240_0C906000 
X-CRM114-Status: GOOD (  16.60  )
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
Cc: mchehab@kernel.org, dafna3@gmail.com, tfiga@chromium.org,
 hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 sakari.ailus@linux.intel.com, skhan@linuxfoundation.org, kernel@collabora.com,
 ezequiel@collabora.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org



On 04.06.20 21:07, Helen Koike wrote:
> 
> 
> On 6/4/20 4:00 PM, Dafna Hirschfeld wrote:
>> When setting the sink format of the 'rkisp1_resizer'
>> the format should be supported by 'rkisp1_isp' on
>> the video source pad. This patch checks this condition
>> and set the format to default if the condition is false.
>>
>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>> ---
>>   drivers/staging/media/rkisp1/rkisp1-common.h  | 4 ++++
>>   drivers/staging/media/rkisp1/rkisp1-isp.c     | 4 ----
>>   drivers/staging/media/rkisp1/rkisp1-resizer.c | 2 +-
>>   3 files changed, 5 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
>> index 0c4fe503adc9..39d8e46d8d8a 100644
>> --- a/drivers/staging/media/rkisp1/rkisp1-common.h
>> +++ b/drivers/staging/media/rkisp1/rkisp1-common.h
>> @@ -22,6 +22,10 @@
>>   #include "rkisp1-regs.h"
>>   #include "uapi/rkisp1-config.h"
>>   
>> +#define RKISP1_DIR_SRC BIT(0)
>> +#define RKISP1_DIR_SINK BIT(1)
>> +#define RKISP1_DIR_SINK_SRC (RKISP1_DIR_SINK | RKISP1_DIR_SRC)
> 
> I think we can rename this macro to state explicitly it is the direction from the rkisp1_isp subdevice node
> point of view.
> 
> Maybe prefix it with RKISP1_ISP_SD_ ?

yes, it's a better name.

> 
> Thanks
> Helen
> 
>> +
>>   #define RKISP1_ISP_MAX_WIDTH		4032
>>   #define RKISP1_ISP_MAX_HEIGHT		3024
>>   #define RKISP1_ISP_MIN_WIDTH		32
>> diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
>> index dc2b59a0160a..e66e87d6ea8b 100644
>> --- a/drivers/staging/media/rkisp1/rkisp1-isp.c
>> +++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
>> @@ -23,10 +23,6 @@
>>   
>>   #define RKISP1_ISP_DEV_NAME	RKISP1_DRIVER_NAME "_isp"
>>   
>> -#define RKISP1_DIR_SRC BIT(0)
>> -#define RKISP1_DIR_SINK BIT(1)
>> -#define RKISP1_DIR_SINK_SRC (RKISP1_DIR_SINK | RKISP1_DIR_SRC)
>> -
>>   /*
>>    * NOTE: MIPI controller and input MUX are also configured in this file.
>>    * This is because ISP Subdev describes not only ISP submodule (input size,
>> diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
>> index d64c064bdb1d..fa28f4bd65c0 100644
>> --- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
>> +++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
>> @@ -542,7 +542,7 @@ static void rkisp1_rsz_set_sink_fmt(struct rkisp1_resizer *rsz,
>>   					    which);
>>   	sink_fmt->code = format->code;
>>   	mbus_info = rkisp1_isp_mbus_info_get(sink_fmt->code);
>> -	if (!mbus_info) {
>> +	if (!mbus_info || !(mbus_info->direction & RKISP1_DIR_SRC)) {

I also think the field 'direction' better change to isp_pads_flags.
It indicates better what this field is.

Thanks,
Dafna

>>   		sink_fmt->code = RKISP1_DEF_FMT;
>>   		mbus_info = rkisp1_isp_mbus_info_get(sink_fmt->code);
>>   	}
>>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
