Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAEFBA5B66
	for <lists+linux-rockchip@lfdr.de>; Mon,  2 Sep 2019 18:29:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CvUi8C1ZE6ofTK8finqfMaTngc7Uew/yWayzCspNE58=; b=pmIulCzlppwWF4
	ubB2LzlMC7cGV4CUC0ibTP/t8FX3I0728kdySOqunehhhzD+hjPVDLMu3d3hsRadz/tihvzI543Zs
	AQCoallvhqtLujpUVkUVEqh/sJS99SiDCXguzHEUX+EwX1fasF+GpGHRY1p9yWErgSkrTczydFrwH
	dyoI9iKjvCmz7hVTTMAfVQPqFE85yCScc1PRYJyt14tE3DsCy1UWAdvwj3LO7JMw7H+J0bXW92dLX
	EqAR6APRz8DcVXmbLYVqDyYwi1i/J3XKw4py38KIDyZF//t5WjcNZQVztGOjO6Q9hhKhDhjri73FO
	w7XcJrXO5E3yFU1Pm4tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4pCT-0005wj-2u; Mon, 02 Sep 2019 16:29:05 +0000
Received: from mail-oln040092066081.outbound.protection.outlook.com
 ([40.92.66.81] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4pCO-0005wE-Vi
 for linux-rockchip@lists.infradead.org; Mon, 02 Sep 2019 16:29:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=et3KGfNOrEa7TjUgYnyKToVgQkVYpqDll4ZWoH9NIE4bp5tMvsoJJSibqghnzIksoUXaD0PKuf2UdlFtcAx8yPQ3t6doDhLT/ZPkv8KoytArZTaot0mciH0GfwRpS+mNYxpUUgHnf7JU7gXceD8QqKVh9qGygzfsMB57ncEvIKId7b6Uuv1RuwX6nJmD3T9nOaT2TKPWhOmgMSVapxyOTJHSx7cC1mKcjlPS6mMeFPkdzRUU7/Jrux7TgVg8+UzY0qQ1uyZv1ZmQPWexhgO2Vnve4By6AVJD/g0t/O5UvcyWc866gEm8qDNUv0vPxH1KvDxStLZasGN1lId3YToEOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JvJxEjE6Bkg3CIhQhnnMi0uxLlw6nDEohAU3aNopbxA=;
 b=l2iamN6BDm8uYPuvMQAiLJKnu4Qt2aZXplBeKn/rQOnGIoGXqg/1FjFYClqB24DzekpELInB2jgQNLZhwi/khrUciYSXdYjIR8Jm7CONElmw8yFznksd9yttFdcPi3q6jsr8cg6wfRqqQGCO0vELJi5gbINRLbYOPxU4gbkWH/2L+EIiEWOVObiYbPDAxLKTVRaa0wR/Hul/GMelOw39uOZOKm7Qf571jITFPo+QZnmTV5KqEtOgYq7RAEOByyjLVOeED9IJO9Gba5aAjE3ce8/MyKUFixy9mZd4KC7PKwn+8GwIKWMAW+qgJje7Xbhxls7FUDWo5t1iaJPPzC0zow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from HE1EUR01FT016.eop-EUR01.prod.protection.outlook.com
 (10.152.0.57) by HE1EUR01HT165.eop-EUR01.prod.protection.outlook.com
 (10.152.1.131) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2220.16; Mon, 2 Sep
 2019 16:28:57 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com (10.152.0.56) by
 HE1EUR01FT016.mail.protection.outlook.com (10.152.0.169) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2220.16 via Frontend Transport; Mon, 2 Sep 2019 16:28:57 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::1188:7e7d:69b:a036]) by HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::1188:7e7d:69b:a036%5]) with mapi id 15.20.2220.022; Mon, 2 Sep 2019
 16:28:57 +0000
From: Jonas Karlman <jonas@kwiboo.se>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH RFC 00/12] media: hantro: H264 fixes and improvements
Thread-Topic: [PATCH RFC 00/12] media: hantro: H264 fixes and improvements
Thread-Index: AQHVYMK7ybJvfQx/EkSu6izc1mlMg6cYW8IAgAA5v4A=
Date: Mon, 2 Sep 2019 16:28:57 +0000
Message-ID: <HE1PR06MB40118B3C30939861DD91113CACBE0@HE1PR06MB4011.eurprd06.prod.outlook.com>
References: <HE1PR06MB40117D0EE96E6FA638A04B78ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <f204a408f980f3ae0cfb859acdc765cdc1c0ff01.camel@collabora.com>
In-Reply-To: <f204a408f980f3ae0cfb859acdc765cdc1c0ff01.camel@collabora.com>
Accept-Language: sv-SE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR05CA0260.eurprd05.prod.outlook.com
 (2603:10a6:3:fc::12) To HE1PR06MB4011.eurprd06.prod.outlook.com
 (2603:10a6:7:9c::32)
x-incomingtopheadermarker: OriginalChecksum:9B0246D1386D857E6FB3E657D94BD2A71FF85C906657F1EC9669500DAECC0EEA;
 UpperCasedChecksum:6E2F2CE8CCB2E471BB9DC1D15D57F6FD7E9D2FDDEE2C6BD1EEB7AEF22AD403D4;
 SizeAsReceived:7895; Count:49
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [3MgcCTV2nq2dcG5UFfssQqaI9OVJeP7r]
x-microsoft-original-message-id: <2c056ed3-1162-5edf-24a0-0cf77c1aca61@kwiboo.se>
x-ms-publictraffictype: Email
x-incomingheadercount: 49
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031322404)(2017031323274)(2017031324274)(1601125500)(1603101475)(1701031045);
 SRVR:HE1EUR01HT165; 
x-ms-traffictypediagnostic: HE1EUR01HT165:
x-microsoft-antispam-message-info: jf1mmJeLaF42OThnaFOhAJJIrXRVEBS0fOt8QUKi2fOdGNlqCV3R1j8EGFU9s+6zaf0E8KpH4ict01p4B+CVWgXAi7Fm6WFKWtOrPNonI/96Rr7jTzHN6+p+U193Y2t3R8hGvyFultkm9T3cb05ob2/VDDZHlKqwghbH7gaXLBxsM/bLxyLiVgqtcXDNGD1p
x-ms-exchange-transport-forked: True
Content-ID: <DEA1D42DB45AA442864B3E4EAF3C896C@eurprd06.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: cdebc51b-cb3f-4be8-d5a2-08d72fc2a72e
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2019 16:28:57.4448 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1EUR01HT165
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_092901_018952_2A82175C 
X-CRM114-Status: GOOD (  14.63  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.66.81 listed in list.dnswl.org]
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 2019-09-02 15:02, Ezequiel Garcia wrote:
> Hi Jonas,
>
> Thanks for the series, I'll be reviewing this shortly.
>
> On Sun, 2019-09-01 at 12:42 +0000, Jonas Karlman wrote:
>> This series contains fixes and improvements for the hantro H264 decoder.
>>
>> Patch 1-6 fixes issues and limitations observed when preparing support
>> for field encoded content.
>>
>> Patch 7 introduce new DPB entry flags that is used to signal how a reference
>> frame is referenced. This information is needed to correctly build a
>> reference list for field encoded content.
>>
>> Patch 8 adds bits to handle field encoded content, this is a rough patch
>> and should be reworked with proper code style and formatting.
>> Please get back with feedback on how to improve this.
>>
>> The following samples from [1] are now playable with patch 1-8
>> - H264_1080i-25-interlace_Kaesescheibchen.mkv
>> - H264_10_1080i_50_AC3-Astra19.2_ProSieben_HD.ts
>> - big_buck_bunny_1080p_H264_AAC_25fps_7200K.mp4
>> - h264_tivo_sample.ts
>>
>> The rest of the patches refactors G1 H264 code to more closely match
>> the code generated by my rockchip-vpu-regtool at [2] and then adds
>> support for H264 decoding on RK3399/RK3328 using the VPU2 block.
>> This code is early work and needs proper code style and formatting,
>> I just wanted to share the early work and get some initial feedback.
>>
>> This series has been tested using ffmpeg v4l2 request hwaccel at [3] [4]
>>
> What boards have you tested this on?

Main testing has been done on a Tinker Board S (RK3288) and a Rock64 (RK3328) device.
Very limited testing on a Rock Pi 4 (RK3399) using earlier version of the patchset,
I will redo some RK3399 testing to make sure it is not only VPU2 on RK3328 that works.

Regards,
Jonas

>
> Thanks,
> Ezequiel
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
