Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D51ADF68
	for <lists+linux-rockchip@lfdr.de>; Mon,  9 Sep 2019 21:25:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m9o83ZfNYWp9Tv7zgbrhtTHRKJUFD1qp2ic83dVtVpA=; b=N3nzSDP/8YGKw7
	UhRS5jMKgyP0NSESTvPyBv7UQQkeOOYhofi+HzjCCYDXk8iPtK2PmileuPM9YpN7l+DWz2RroLM8N
	NWV+p64rkvawQitOscf7fpS8vxqZayQgmy2cp/RkBbv9EexeZwSyNQmmVZoaZAPSuO1WOuCtF5gY0
	H04hY2xFKR2PEQ8Q8ZNYDTWfKjhwN9d/ynP1c//3SwuKhvl4TnplQuIC58Mjl3838JTbtBVAd0m6e
	r19oSPjTVcV6+cTVKDkIzWTphRYsi3LuTNJprPBfDmgeXNLexmBkDV9SokunWBIxegNpcKHyKztoq
	Mgyy8m0Bo3a7JkGDmluw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7PHp-0006CG-4H; Mon, 09 Sep 2019 19:25:17 +0000
Received: from mail-oln040092069016.outbound.protection.outlook.com
 ([40.92.69.16] helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7PHk-0006BK-8V
 for linux-rockchip@lists.infradead.org; Mon, 09 Sep 2019 19:25:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QKwVkGVWtevmpsnX5SgOMsyKT6LLRAQ1mvA9V/5SiwrhtloLT1My2Ocue5xVfUEdju8iAhhEB5qfDSaZUbesWDV/OarnFhmS8JMpkczodEjGaVrWGvhOn96HiCQHQpR2PTupI5Xh14rTMYBdB5yg4AIV3Q/v4PH7C0CZREkrHje5GfvAt7AJXAzg8bUu9R3kEfVTIJQ+eZI5CXCpyNqXlPPuZYnPSXoSR0P670B0DM14QYkLBqbKIthQoPvWRrEpAXSRnObwHGcNuDQIC7CntZ5Ez5pHel0Xp/EDxBmHMKi6oO1Rouv7g4SXhO9wNYoPU4SqVtJO2W/rzpuqiNyJyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S3mmmWnTghCdUdvX37iI468w4pV1YIs13Ww5+8dNxus=;
 b=nnzxw9rKC93rUA6vGv3rKajhWWFFQguudHceuloVd+dTU8AANaTaUntBE5teVOSNm5IJhJymPWZc48AucoeMELITh3veRZRG3SD0zCAJwI/jLsOIa91NNtM9iyXH0KXvEw5G4fVt6JXc4+aAzJvFhY472JtChg++3+4h+8WpctJA5aI4pq06g4lfzVPyRs/RSdnjrI+OtoPn/DhCxfyH1sNWtkmA6TUmPJb/DSSPp5SqLYVuY25MOZy/A8RkXkRjREPHXfFpt7eHkU8lavH50N+5kajkwRrEH5dMEoc28ynpWVhzFmfZGB1eVWEy827ippByMrRwZ2O4rRI0D4y/Ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from VE1EUR02FT003.eop-EUR02.prod.protection.outlook.com
 (10.152.12.55) by VE1EUR02HT045.eop-EUR02.prod.protection.outlook.com
 (10.152.13.134) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2241.14; Mon, 9 Sep
 2019 19:25:06 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com (10.152.12.60) by
 VE1EUR02FT003.mail.protection.outlook.com (10.152.12.112) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2241.14 via Frontend Transport; Mon, 9 Sep 2019 19:25:06 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::59e6:329d:5fc7:5181]) by HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::59e6:329d:5fc7:5181%5]) with mapi id 15.20.2241.018; Mon, 9 Sep 2019
 19:25:06 +0000
From: Jonas Karlman <jonas@kwiboo.se>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH 01/12] media: hantro: Fix H264 max frmsize supported on
 RK3288
Thread-Topic: [PATCH 01/12] media: hantro: Fix H264 max frmsize supported on
 RK3288
Thread-Index: AQHVYMMqh0O1621DYkuOLEeadywFI6cbgeoAgAhFHwA=
Date: Mon, 9 Sep 2019 19:25:06 +0000
Message-ID: <HE1PR06MB401159D9A49FE4864CEF30F5ACB70@HE1PR06MB4011.eurprd06.prod.outlook.com>
References: <HE1PR06MB40117D0EE96E6FA638A04B78ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <HE1PR06MB4011EAB6F0965D47A20AF805ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <b7a43c96fa861de1dbbe969e3aaa4220e7e96793.camel@collabora.com>
In-Reply-To: <b7a43c96fa861de1dbbe969e3aaa4220e7e96793.camel@collabora.com>
Accept-Language: sv-SE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR0102CA0027.eurprd01.prod.exchangelabs.com
 (2603:10a6:7:14::40) To HE1PR06MB4011.eurprd06.prod.outlook.com
 (2603:10a6:7:9c::32)
x-incomingtopheadermarker: OriginalChecksum:C8BC4683345164D72083381983992A7B0E332B9B35DEFCFF7DE47E0954472DE0;
 UpperCasedChecksum:DE3B56E668BDC3905B551E22FDD7633CA327E09FF0B1F2D14B2BD0B24354B99C;
 SizeAsReceived:7998; Count:49
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [AT1tQaLXTq7HP+DF/epjReN1x0Ft5xAY]
x-microsoft-original-message-id: <2376bce6-066f-1184-2a71-f79c02f5cb50@kwiboo.se>
x-ms-publictraffictype: Email
x-incomingheadercount: 49
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031322404)(2017031323274)(2017031324274)(1601125500)(1603101475)(1701031045);
 SRVR:VE1EUR02HT045; 
x-ms-traffictypediagnostic: VE1EUR02HT045:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-message-info: oEDTeNLi3aL6WMwNZV5buoiS+6H8ku4dOaopQTSozD02JTxNrI7E4g5eckgqjsbS9iYcS+CHhtSZM0sPJqXCqtIGM9fAzMYTxCAoTQZ5m5/HbHdFvakynbhjhrn32r2F90EEt7pY5mTZtCmtdycdPEMCNrJQVjnDnBr8olJJTwr8ZuGmTlORIp20mHZ8x8Oa
x-ms-exchange-transport-forked: True
Content-ID: <E5F5A2A879876A45ADFDACE62684BCF4@eurprd06.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e58e504-290e-444b-b89a-08d7355b6ba7
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Sep 2019 19:25:06.4962 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR02HT045
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_122512_300983_C10CEC79 
X-CRM114-Status: GOOD (  16.22  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.69.16 listed in list.dnswl.org]
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

On 2019-09-04 15:07, Ezequiel Garcia wrote:
> Hello Jonas,
>
> Thank you for the patch.
>
> On Sun, 2019-09-01 at 12:45 +0000, Jonas Karlman wrote:
>> TRM specify supported image size 48x48 to 4096x2304 at step size 16 pixels,
>> change frmsize max_width/max_height to match TRM.
>>
> The RK3288 TRM v1.1 (2015-8-20) I have here mentions a maximum
> of 3840x2160.
>
> I must admit I haven't tested with actual content this size
> to verify it, have you checked it?

I can confirm that one of my test samples (PUPPIES BATH IN 4K) is 4096x2304 and can be decoded after this patch.
However the decoding speed is not optimal at 400Mhz, if I recall correctly you need to set the VPU1 clock to 600Mhz for 4K decoding on RK3288.

The RK3288 TRM vcodec chapter from [1], unknown revision and date, lists 48x48 to 4096x2304 step size 16 pixels under 25.5.1 H.264 decoder.

[1] http://www.t-firefly.com/download/firefly-rk3288/docs/TRM/rk3288-chapter-25-video-encoder-decoder-unit-(vcodec).pdf

Regards,
Jonas

>
> Thanks,
> Ezequiel
>  
>> Fixes: 760327930e10 ("media: hantro: Enable H264 decoding on rk3288")
>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
>> ---
>>  drivers/staging/media/hantro/rk3288_vpu_hw.c | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/staging/media/hantro/rk3288_vpu_hw.c b/drivers/staging/media/hantro/rk3288_vpu_hw.c
>> index 6bfcc47d1e58..ebb017b8a334 100644
>> --- a/drivers/staging/media/hantro/rk3288_vpu_hw.c
>> +++ b/drivers/staging/media/hantro/rk3288_vpu_hw.c
>> @@ -67,10 +67,10 @@ static const struct hantro_fmt rk3288_vpu_dec_fmts[] = {
>>  		.max_depth = 2,
>>  		.frmsize = {
>>  			.min_width = 48,
>> -			.max_width = 3840,
>> +			.max_width = 4096,
>>  			.step_width = H264_MB_DIM,
>>  			.min_height = 48,
>> -			.max_height = 2160,
>> +			.max_height = 2304,
>>  			.step_height = H264_MB_DIM,
>>  		},
>>  	},
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
