Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BFC9A5A80
	for <lists+linux-rockchip@lfdr.de>; Mon,  2 Sep 2019 17:25:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w8oxuR1eS/HJWVyWNzJhEh2mn6FUPWuXsG5ndjZ3evA=; b=dBht+/K9tcGpvs
	kkpCaegEij62CCM1Cz4gyvxRmzGkesuX/EhLN4RFMKlmvTJQztErvzllQDqWgeZfVgDC8jPGqFJWf
	F/JXyZPIW/DV/JNqdhj4+5UGAJmvF4LZHqtfMKewHTBs9+uqL5JGj/KYRyYAwXe60dTPOA32s5Guu
	0A4RMHhl3zVWq1HIfTJ2atnG0u94lKQ3u4pzHm3Dm2u/ojDHUvBOKmgExAO9cXdGI8BuUmt6alhfZ
	Sxk+DDn0uWTnpkTPI03rNjR7wepwGDHS4iciWlBDxLOj93NjQHqR9R+p8OyprB20mji/ZR1GqCFmf
	wzRJ9BGPLjaUGeFYrQYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4oD5-0007j2-LK; Mon, 02 Sep 2019 15:25:39 +0000
Received: from mail-oln040092068070.outbound.protection.outlook.com
 ([40.92.68.70] helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4oD2-0007iA-BR
 for linux-rockchip@lists.infradead.org; Mon, 02 Sep 2019 15:25:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EtFz6ehMLNiZLHG2Q+Y6hDddhstXhepzMOU2OikEZUxvvk7K5kM3+zHMc/llbxWl20VBoVjRT0ZqZVpUADB0oIbDRBn/p3UQGbRj4EFWyM8C/0Dpnnv9b1mk7gWvkZTTnqQP7wTTSkM3Et4HI/7c6ybMjPWnEwq4eOFCKBsxAKvwPzyeQDheeBy6fr77NpYBjbY4ZKMeAUKseQLrwiP10kPKHkYNeuu7aoy90282VQb5N9/tXHKAGE9Xc94/btaefeXGviDtmHFaUy2I8zovVb2Vp0ekKI2U3tzzMwaEtG+7BQa0I687KYHg15wcX9Q8rid5CqC+QE1g2DqufqjLEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=skmXnPLYo60PpAbjwZFEbS2HY89E+h5uAdix69GZRG8=;
 b=fwGAHt4UHAWAcxiS+H1bhMh/7WA0XEfa8McuoPfoYUvIhVRhfegqMInA2kMWbSkz3SGXTzxQykgaW7Z2oKqeC/Uu4h6EzAtoO09oUP2+YQPy84mUEpldwxyEK4b/u3W1kpfAND6CVD7R9ZwvYZlE9A41u39Iddv18+q1p+V2wTc6UqJftIEIMeutsFAWdqUdplufkq1vylWFXONsz1wfi/iFRNZTKYZuGocos8V1Z8egB56a2381oMTpk/2TyLog1ej7+W8PaF1gLlNR31yycg1f702OYpwem3+Mq+522eJJLQ8kkXQVrjw7WbziGKfkfEeLveShwDBbBC1faxPkXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from HE1EUR02FT062.eop-EUR02.prod.protection.outlook.com
 (10.152.10.58) by HE1EUR02HT225.eop-EUR02.prod.protection.outlook.com
 (10.152.11.181) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2220.16; Mon, 2 Sep
 2019 15:25:29 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com (10.152.10.55) by
 HE1EUR02FT062.mail.protection.outlook.com (10.152.11.96) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.16 via Frontend Transport; Mon, 2 Sep 2019 15:25:29 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::1188:7e7d:69b:a036]) by HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::1188:7e7d:69b:a036%5]) with mapi id 15.20.2220.022; Mon, 2 Sep 2019
 15:25:29 +0000
From: Jonas Karlman <jonas@kwiboo.se>
To: Hans Verkuil <hverkuil@xs4all.nl>, Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [RFC 10/12] media: hantro: Add support for H264 decoding on RK3399
Thread-Topic: [RFC 10/12] media: hantro: Add support for H264 decoding on
 RK3399
Thread-Index: AQHVYMMtg5M5ndr2ZkScDZ0tFJAWD6cYRqiAgAA9GoA=
Date: Mon, 2 Sep 2019 15:25:29 +0000
Message-ID: <HE1PR06MB401131344C5E1FC6D66390A2ACBE0@HE1PR06MB4011.eurprd06.prod.outlook.com>
References: <HE1PR06MB40117D0EE96E6FA638A04B78ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <20190901124531.23645-1-jonas@kwiboo.se>
 <HE1PR06MB40119DE07D38060F531D1070ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <99943cdf-7e3b-f819-5d81-2e007e788682@xs4all.nl>
In-Reply-To: <99943cdf-7e3b-f819-5d81-2e007e788682@xs4all.nl>
Accept-Language: sv-SE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR07CA0016.eurprd07.prod.outlook.com
 (2603:10a6:7:67::26) To HE1PR06MB4011.eurprd06.prod.outlook.com
 (2603:10a6:7:9c::32)
x-incomingtopheadermarker: OriginalChecksum:FFC3E9FB77B4E854BB1D2AB83C0E40833255059E57F951BE55B601707C6A42A8;
 UpperCasedChecksum:4D72F63F482C84E415125326B24FC1CE1B4B894F53DB5AFBEF636B8DA7FA9E50;
 SizeAsReceived:7995; Count:49
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [1k7RFZaT57aQKPycM83ssG1C0Iwu0WK7]
x-microsoft-original-message-id: <f684b319-8953-57c9-1a00-cb9b172185eb@kwiboo.se>
x-ms-publictraffictype: Email
x-incomingheadercount: 49
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031323274)(2017031324274)(2017031322404)(1601125500)(1603101475)(1701031045);
 SRVR:HE1EUR02HT225; 
x-ms-traffictypediagnostic: HE1EUR02HT225:
x-microsoft-antispam-message-info: G72migdQMrt6W85hgcbL5xc5wy92hz21qbOEvf2zM8zYaAVHvf7Sc0bRIX2j7HnO9XrjDToFB6g/9qtG8iOcl1fOGpybWYlW76Di6R1xHMQ+enIASFKvdcAc8dLvhlgwHKU+HhtpetDwHqcJBDUpBBP51R7YvkNVNszTZOphhB/+/qtXn900IaEtZWpDs7s2
x-ms-exchange-transport-forked: True
Content-ID: <7E6FC17CD8EF784AB03CE3039EA92438@eurprd06.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c964913-cb0d-4c4a-7238-08d72fb9c961
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2019 15:25:29.4943 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1EUR02HT225
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_082536_397878_09244BDA 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.68.70 listed in list.dnswl.org]
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 2019-09-02 13:46, Hans Verkuil wrote:
> On 9/1/19 2:45 PM, Jonas Karlman wrote:
>> Rockchip RK3399 SoC has the same Hantro G1 IP block
>> as RK3288, but the registers are entirely different.
>>
>> In a similar fashion as MPEG-2 and VP8 decoding,
>> it's simpler to just add a separate implementation.
>>
>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
>> ---
>>  drivers/staging/media/hantro/Makefile         |   1 +
>>  .../staging/media/hantro/hantro_g1_h264_dec.c |   1 -
>>  drivers/staging/media/hantro/hantro_hw.h      |   1 +
>>  .../media/hantro/rk3399_vpu_hw_h264_dec.c     | 486 ++++++++++++++++++
>>  4 files changed, 488 insertions(+), 1 deletion(-)
>>  create mode 100644 drivers/staging/media/hantro/rk3399_vpu_hw_h264_dec.c
>>
>> diff --git a/drivers/staging/media/hantro/Makefile b/drivers/staging/media/hantro/Makefile
>> index 5d6b0383d280..8d33b0e8aa6c 100644
>> --- a/drivers/staging/media/hantro/Makefile
>> +++ b/drivers/staging/media/hantro/Makefile
>> @@ -8,6 +8,7 @@ hantro-vpu-y += \
>>  		hantro_g1_mpeg2_dec.o \
>>  		hantro_g1_vp8_dec.o \
>>  		rk3399_vpu_hw_jpeg_enc.o \
>> +		rk3399_vpu_hw_h264_dec.o \
>>  		rk3399_vpu_hw_mpeg2_dec.o \
>>  		rk3399_vpu_hw_vp8_dec.o \
>>  		hantro_jpeg.o \
>> diff --git a/drivers/staging/media/hantro/hantro_g1_h264_dec.c b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
>> index 4b82b9fd5252..ec2736fb473d 100644
>> --- a/drivers/staging/media/hantro/hantro_g1_h264_dec.c
>> +++ b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
>> @@ -202,7 +202,6 @@
>>  #define G1_REG_REFBU_E(v)		((v) ? BIT(31) : 0)
>>  
>>  #define G1_REG_APF_THRESHOLD(v)		(((v) << 0) & GENMASK(13, 0))
>> ->>>>>>> b22734fb5e2c... Ymedia: hantro: Refactor G1 H264 code
> ^^^^^^^^^^^^^^^
>
> Seems to be a left-over from patch 9?

Yes, thanks for noticing, looks like there was a small rebase issue, the line got added
in one patch and removed in the next. Will fix in next spin.

Regards,
Jonas

>
> Regards,
>
> 	Hans
>
>>  
>>  void hantro_g1_h264_dec_run(struct hantro_ctx *ctx)
>>  {

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
