Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE0031FAFDD
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jun 2020 14:07:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=03kBrZVcMGBxmG2M/BOPOEroMAuFMS8t7E4TGnI8bfM=; b=aJOD230w8/kWV+
	nqv7uZZgpBqt9DghigfnN3jD8PXZG+iCWia9QY4YdQbqLC/9D/rOuUqiylcgQJEpmiAHiilamMGmk
	ps2AYVFoE5rZe5kdNScUSVi3Htm17FITq9ADv9vKgZ+M+KbGQr0RrmxvvfD28g9id72F6nfpi9to5
	WkaFQKrFS1Ibtxp6kVKf1vRKZCWSZwu8Jb/AGtPi8IxMWogBV37FzWYBUiEQT1XsiAvOraI/xv6g6
	YliZfenLTRflYC82megUNcFPXLmLiInjT4nPi587DTm413FGmIRxoLzLcbWqQlLswH+zsVedi7R23
	YGwLZCrp4rSexLBpo2sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlANe-0002h3-OR; Tue, 16 Jun 2020 12:07:54 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlANa-0002gd-Sa
 for linux-rockchip@lists.infradead.org; Tue, 16 Jun 2020 12:07:52 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 0C3552A35B5
Subject: Re: [RESEND PATCH v3 2/6] media: staging: rkisp1: rsz: set default
 format if the given format is not RKISP1_DIR_SRC
From: Helen Koike <helen.koike@collabora.com>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
References: <20200613091353.12689-1-dafna.hirschfeld@collabora.com>
 <20200613091353.12689-3-dafna.hirschfeld@collabora.com>
 <ded8a981-5e5e-f0a6-c72d-1a762d3fd153@collabora.com>
Message-ID: <eca7b4c0-57a7-2c7d-9d1f-0fd107849541@collabora.com>
Date: Tue, 16 Jun 2020 09:07:42 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <ded8a981-5e5e-f0a6-c72d-1a762d3fd153@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_050751_055006_6F285822 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org



On 6/16/20 9:03 AM, Helen Koike wrote:
> Hi Dafna,
> 
> On 6/13/20 6:13 AM, Dafna Hirschfeld wrote:
>> When setting the sink format of the 'rkisp1_resizer'
>> the format should be supported by 'rkisp1_isp' on
>> the video source pad. This patch checks this condition
>> and set the format to default if the condition is false.
>>
>> Fixes: 56e3b29f9f6b "media: staging: rkisp1: add streaming paths"
>>
>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>> Reviewed-by: Tomasz Figa <tfiga@chromium.org>
>> ---
>>  drivers/staging/media/rkisp1/rkisp1-common.h  | 4 ++++
>>  drivers/staging/media/rkisp1/rkisp1-isp.c     | 4 ----
>>  drivers/staging/media/rkisp1/rkisp1-resizer.c | 2 +-
>>  3 files changed, 5 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
>> index 0c4fe503adc9..39d8e46d8d8a 100644
>> --- a/drivers/staging/media/rkisp1/rkisp1-common.h
>> +++ b/drivers/staging/media/rkisp1/rkisp1-common.h
>> @@ -22,6 +22,10 @@
>>  #include "rkisp1-regs.h"
>>  #include "uapi/rkisp1-config.h"
>>  
>> +#define RKISP1_DIR_SRC BIT(0)
>> +#define RKISP1_DIR_SINK BIT(1)
>> +#define RKISP1_DIR_SINK_SRC (RKISP1_DIR_SINK | RKISP1_DIR_SRC)
>> +
>>  #define RKISP1_ISP_MAX_WIDTH		4032
>>  #define RKISP1_ISP_MAX_HEIGHT		3024
>>  #define RKISP1_ISP_MIN_WIDTH		32
>> diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
>> index dc2b59a0160a..e66e87d6ea8b 100644
>> --- a/drivers/staging/media/rkisp1/rkisp1-isp.c
>> +++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
>> @@ -23,10 +23,6 @@
>>  
>>  #define RKISP1_ISP_DEV_NAME	RKISP1_DRIVER_NAME "_isp"
>>  
>> -#define RKISP1_DIR_SRC BIT(0)
>> -#define RKISP1_DIR_SINK BIT(1)
>> -#define RKISP1_DIR_SINK_SRC (RKISP1_DIR_SINK | RKISP1_DIR_SRC)
> 
> As mentioned previously, please, check my comment on first version of the patch https://patchwork.linuxtv.org/patch/64292/
> Or please let me know if you don't agree.

I just saw you submitted the change in a separated patch.

I would submit patch 4/6 before this one.

Thanks
Helen


> 
> Thanks
> Helen
> 
>> -
>>  /*
>>   * NOTE: MIPI controller and input MUX are also configured in this file.
>>   * This is because ISP Subdev describes not only ISP submodule (input size,
>> diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
>> index d64c064bdb1d..fa28f4bd65c0 100644
>> --- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
>> +++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
>> @@ -542,7 +542,7 @@ static void rkisp1_rsz_set_sink_fmt(struct rkisp1_resizer *rsz,
>>  					    which);
>>  	sink_fmt->code = format->code;
>>  	mbus_info = rkisp1_isp_mbus_info_get(sink_fmt->code);
>> -	if (!mbus_info) {
>> +	if (!mbus_info || !(mbus_info->direction & RKISP1_DIR_SRC)) {
>>  		sink_fmt->code = RKISP1_DEF_FMT;
>>  		mbus_info = rkisp1_isp_mbus_info_get(sink_fmt->code);
>>  	}
>>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
