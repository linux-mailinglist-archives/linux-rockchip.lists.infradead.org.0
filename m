Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90951CF2B6
	for <lists+linux-rockchip@lfdr.de>; Tue,  8 Oct 2019 08:24:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pXRxhUUTkqCJ6v4KhuMOo1YGFKiHEnGgFxt5u/+kNJw=; b=NtmuP/M0msUKnF
	eBjb64JZi3xmbTmIhPOn15YHe+9ch9psAJSTA5tbAI7+nW8nMvn17z3m9O3e5WGKRzw1cSB0l8JRf
	8voua3MijXcZ9pR+V3kfhFYu6SSPVqm//MmAac6WrDAlqeR68IQiw1nymVIyY8w2iHVTV5B1Fr91x
	f7141d2KG71+mHUf8K0uX/P/nehop5fx9wLYDyTGxgFAvbXl0n+ETy6hsmB+LC3GeziICkbaLLkSa
	VrfXCd2bO9LIuV8UXkAqxUoN5/lb+MZHaXETlp77jJRkJ+n+I9yEFVXm/pZT7eUJh5XqO7IM5J2u1
	gJIcISiHGgSec4m7zwXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHiuf-00019q-9u; Tue, 08 Oct 2019 06:24:01 +0000
Received: from mail-oln040092071035.outbound.protection.outlook.com
 ([40.92.71.35] helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHiub-00019J-Bm
 for linux-rockchip@lists.infradead.org; Tue, 08 Oct 2019 06:23:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ERtFbpLKXPOARu8GGBK5rLxWgYVNQTFTtvdCVT5mL7h7jSl8EG5UInCxlc3Oio/60WZLMJolr+AioFLMOmcf6Uk00psaro0g6L6IFkEWEEaq9s+ma5TSaeW40vof5DQXioyyn9dwJ9Yei0V2Ei1ocEyweOc5obDrPuuGwS/GJC1wNKKTVtPIYYoKEJBrWeDC8tYYbF2xgdv+2GPe9uzastcw/aQzrJi33/6T9z4R2eancb4WEKm527PQhbxbfPVJaHL6BaKB1WnULwJKs0Bpvdecue79dkgY/oMIQNUKOqC1qDdhoiNlOLFG4xGk3IjkuDJgSKapVfxkkogkAEewSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hPrzhF49+eU+GhnDSVT2iGgZ93qvbycT1DVh2elduvM=;
 b=N6IDc2Ns6BMoLYgp6X2mh+NaHEC7UecmJkW0T8DuiV+vhaYO/TtPgvDR1ap9RCLHAzjtwIVLh80TSr9dCG/0ys7C76ak4X260KbohU77awHTi4eFgeN902xSwxjerbXug4JhsjBlyuawyvfbHv5nJECdYinuaalZ3Qid4Npkn3AfyzqbmKaB3hW9eygs+QNKPzx8lOazy4Sa9rlxLRji8/X9uuMS3UuNHkwNCwQbqnSIV8TYhUYlxzoCRYIHcSarDJWln3OW8l0e8dDF13kddpFzRxYLr+oVFwa4Y6RuQQYCr4Jt0zCH8QWcKcc4mM1GIVXpJlfC9adI24kpE9uIxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from DB5EUR03FT062.eop-EUR03.prod.protection.outlook.com
 (10.152.20.52) by DB5EUR03HT173.eop-EUR03.prod.protection.outlook.com
 (10.152.21.58) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2305.15; Tue, 8 Oct
 2019 06:23:50 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com (10.152.20.52) by
 DB5EUR03FT062.mail.protection.outlook.com (10.152.20.197) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.15 via Frontend Transport; Tue, 8 Oct 2019 06:23:50 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::5c5a:1160:a2e0:43d8]) by HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::5c5a:1160:a2e0:43d8%4]) with mapi id 15.20.2305.023; Tue, 8 Oct 2019
 06:23:49 +0000
From: Jonas Karlman <jonas@kwiboo.se>
To: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [PATCH v2 for 5.4 3/4] media: hantro: Fix motion vectors usage
 condition
Thread-Topic: [PATCH v2 for 5.4 3/4] media: hantro: Fix motion vectors usage
 condition
Thread-Index: AQHVfTc5j58jepLQQEujLcDcYkaduadPgRaAgACVogCAADC1AA==
Date: Tue, 8 Oct 2019 06:23:49 +0000
Message-ID: <HE1PR06MB40111D7287970183CF6D0DD1AC9A0@HE1PR06MB4011.eurprd06.prod.outlook.com>
References: <20191007174505.10681-1-ezequiel@collabora.com>
 <20191007174505.10681-4-ezequiel@collabora.com>
 <HE1PR06MB4011204B3FC2DAABB4BD1BACAC9B0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <CAAFQd5BEPO3nicr1PzRNWoVEzsvKvv5AkqoMVh2AG7qST+bZdA@mail.gmail.com>
In-Reply-To: <CAAFQd5BEPO3nicr1PzRNWoVEzsvKvv5AkqoMVh2AG7qST+bZdA@mail.gmail.com>
Accept-Language: sv-SE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR0202CA0008.eurprd02.prod.outlook.com
 (2603:10a6:3:8c::18) To HE1PR06MB4011.eurprd06.prod.outlook.com
 (2603:10a6:7:9c::32)
x-incomingtopheadermarker: OriginalChecksum:31DFEF726A71697507B474B73AE137538D1ED3B9A39DA2AF1233546C5561879E;
 UpperCasedChecksum:8A1F0FE99EFB0AED292FED597F1AB6FA55E2B1BBBDE06CEB5D5ACC3D55C3B45C;
 SizeAsReceived:8335; Count:50
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [F+D/NMObG7M1TVyZcZbf/0O/ctLCol/W]
x-microsoft-original-message-id: <e2878bf1-fd0f-a59f-06ea-b6c0c0518ef4@kwiboo.se>
x-ms-publictraffictype: Email
x-incomingheadercount: 50
x-eopattributedmessage: 0
x-ms-traffictypediagnostic: DB5EUR03HT173:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KKKLhri9YNHg2dFXN675fEjKXLCU0bgSuWXuo1v1qaY6afOSFrk5sB7At08Qc0atDq866JHsCnvTQdnt21kXrK3daj1ypUysNnrqICWVC+reF3oHIa2uPYYhRaCCLH825LmK4JpggOpj/Sb6aEoNWacGHwqcOtmBuHkSGuc7d75Q8/sGFoMFwDvRwAhM4qiD
x-ms-exchange-transport-forked: True
Content-ID: <2CFDDD4A09BD664FAFFC25D53E8CFDF0@eurprd06.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: fbdbffd2-7a70-4e2a-7482-08d74bb8149d
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2019 06:23:49.2990 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5EUR03HT173
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_232357_407539_A7E82AF9 
X-CRM114-Status: GOOD (  21.26  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.71.35 listed in list.dnswl.org]
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
Cc: "fbuergisser@chromium.org" <fbuergisser@chromium.org>,
 "kernel@collabora.com" <kernel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Douglas Anderson <dianders@chromium.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 2019-10-08 05:29, Tomasz Figa wrote:
> Hi Jonas,
>
> On Tue, Oct 8, 2019 at 3:33 AM Jonas Karlman <jonas@kwiboo.se> wrote:
>> On 2019-10-07 19:45, Ezequiel Garcia wrote:
>>> From: Francois Buergisser <fbuergisser@chromium.org>
>>>
>>> The setting of the motion vectors usage and the setting of motion
>>> vectors address are currently done under different conditions.
>>>
>>> When decoding pre-recorded videos, this results of leaving the motion
>>> vectors address unset, resulting in faulty memory accesses. Fix it
>>> by using the same condition everywhere, which matches the profiles
>>> that support motion vectors.
>> This does not fully match hantro sdk:
>>
>>   enable direct MV writing and POC tables for high/main streams.
>>   enable it also for any "baseline" stream which have main/high tools enabled.
>>
>>   (sps->profile_idc > 66 && sps->constrained_set0_flag == 0) ||
>>   sps->frame_mbs_only_flag != 1 ||
>>   sps->chroma_format_idc != 1 ||
>>   sps->scaling_matrix_present_flag != 0 ||
>>   pps->entropy_coding_mode_flag != 0 ||
>>   pps->weighted_pred_flag != 0 ||
>>   pps->weighted_bi_pred_idc != 0 ||
>>   pps->transform8x8_flag != 0 ||
>>   pps->scaling_matrix_present_flag != 0
> Thanks for double checking this. I can confirm that it's what Hantro
> SDK does indeed.
>
> However, would a stream with sps->profile_idc <= 66 and those other
> conditions met be still a compliant stream?

You are correct, if a non-compliant video is having decoding problems it should probably be handled
on userspace side (by not reporting baseline profile) and not in kernel.
All my video samples that was having the issue fixed in this patch are now decoded correctly.

>
>> Above check is used when DIR_MV_BASE should be written.
>> And WRITE_MVS_E is set to nal_ref_idc != 0 when above is true.
>>
>> I think it may be safer to always set DIR_MV_BASE and keep the existing nal_ref_idc check for WRITE_MVS_E.
> That might have a performance penalty or some other side effects,
> though. Otherwise Hantro SDK wouldn't have enable it conditionally.
>
>> (That is what I did in my "media: hantro: H264 fixes and improvements" series, v2 is incoming)
>> Or have you found any video that is having issues in such case?
> We've been running the code with sps->profile_idc > 66 in production
> for 4 years and haven't seen any reports of a stream that wasn't
> decoded correctly.
>
> If we decide to go with a different behavior, I'd suggest thoroughly
> verifying the behavior on a big number of streams, including some
> performance measurements.

I agree, I would however suggest to change the if statement to the following (or similar)
as that should be the optimal for performance reasons and match the hantro sdk.

if (sps->profile_idc > 66 && dec_param->nal_ref_idc)

Regards,
Jonas

>
> Best regards,
> Tomasz
>
>> Regards,
>> Jonas
>>
>>> Fixes: dea0a82f3d22 ("media: hantro: Add support for H264 decoding on G1")
>>> Signed-off-by: Francois Buergisser <fbuergisser@chromium.org>
>>> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
>>> ---
>>> v2:
>>> * New patch.
>>>
>>>  drivers/staging/media/hantro/hantro_g1_h264_dec.c | 2 +-
>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/staging/media/hantro/hantro_g1_h264_dec.c b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
>>> index 7ab534936843..c92460407613 100644
>>> --- a/drivers/staging/media/hantro/hantro_g1_h264_dec.c
>>> +++ b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
>>> @@ -35,7 +35,7 @@ static void set_params(struct hantro_ctx *ctx)
>>>       if (sps->flags & V4L2_H264_SPS_FLAG_MB_ADAPTIVE_FRAME_FIELD)
>>>               reg |= G1_REG_DEC_CTRL0_SEQ_MBAFF_E;
>>>       reg |= G1_REG_DEC_CTRL0_PICORD_COUNT_E;
>>> -     if (dec_param->nal_ref_idc)
>>> +     if (sps->profile_idc > 66)
>>>               reg |= G1_REG_DEC_CTRL0_WRITE_MVS_E;
>>>
>>>       if (!(sps->flags & V4L2_H264_SPS_FLAG_FRAME_MBS_ONLY) &&

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
