Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFAB0CF2C0
	for <lists+linux-rockchip@lfdr.de>; Tue,  8 Oct 2019 08:31:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tGpGcGlBaT5TsVJ4XD8smo2lgxfJS6TocSTLYwQkUeg=; b=IGUjp0mTka4hVp
	WXn7vKeeqt1m/YNh9sa8pgip6ZeC++PhZk6O4bldWEUlC0GUb3HtHN4BftXRRhnIeuS5gaLXQ4tJB
	m3XfswWApp+AlU6F0KAr5X8IdPmOrM2K01HK2qVUAubgF2DU+FM916GSZA2SSACx7SfEbJGwSEc/c
	eYZq22Nq51mzYfAsXealiJEGKNEplTBTqUrZCDh4+ZPBhml/Oys6i3L7i46fnOAvPT4xux+rO9SGg
	DktfVX+e7cMBWcLfTGcLt4gQgLZKkKwJlV0vi2+CjPubmsH5pf/aMNurq6cjhVtAKNxOM1IB36u3N
	U+LtP3un092Ljz1VgIXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHj26-0004PD-SZ; Tue, 08 Oct 2019 06:31:42 +0000
Received: from mail-oln040092065026.outbound.protection.outlook.com
 ([40.92.65.26] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHj23-0004Ni-FD
 for linux-rockchip@lists.infradead.org; Tue, 08 Oct 2019 06:31:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pe9w1z2MReSrkD3k+eVAbiVsRmD5RmFQmLVqxu9rug0JdxwJa9dMD+4BvpMBA9n5fSyDIQv7RdeNtZWQa+dJJtm9+WNJwxH1NoUQ6AeDcSJOFu3GXaKvH3YtkCDHpNXW6F/mkxKp1gIc77KV4ZelV6IedVEgDqrwE+/1w0MlE6unbk28vWO4OE5c+lV6pJYy2ON/CkDRoeNpnDVNZrRxkj2fF/+2vvJHcIHM6WaZ3BEY3sHbig28fsP9Cmevj4dmH4s+9v9WOl7Wxo/JysfyspJRRN6D+2pABvwXG6a3Z+qFFLAH5HIswWzEPf6LUMWS0FJQdj4537eBeiZtaMCjQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6gqdEB80K9SoY3kDFPxpeKqjNS4mjj8KPbgJPb7lotU=;
 b=m9bejfKdpqUegC7XqcBZfLrs+rp7jGDzirjd2TZpOCcwIw+UYAYqe0uJdb4n3cWzGgDwYkvBb+6P/O9CofG1YiOBn6fXmmNsL5LGbQS4+TH1K1KakZOfrgG+uX/ClNmH+tBYHvZy36PgN0lgBwkWkWHcBLTX/Dnjzj9bgDEVwOk5IZpz7ISMBee+q2u3bN1X8aAD2xkPCxSojOj5PSx9ERMAf6jZo9pK7rQVXd4lKLfseX/2vRaAiAWQ7QzQ4suUz6nolcKzT/y1PpVqHvDtDdtLjrJExM06iq8L14rQc7Z1UB6l53XDC48L8LqEA/ZQv13OigloielH+GlwulQ/Jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from VE1EUR01FT008.eop-EUR01.prod.protection.outlook.com
 (10.152.2.54) by VE1EUR01HT037.eop-EUR01.prod.protection.outlook.com
 (10.152.3.128) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2327.20; Tue, 8 Oct
 2019 06:31:34 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com (10.152.2.51) by
 VE1EUR01FT008.mail.protection.outlook.com (10.152.2.67) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2327.20 via Frontend Transport; Tue, 8 Oct 2019 06:31:34 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::5c5a:1160:a2e0:43d8]) by HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::5c5a:1160:a2e0:43d8%4]) with mapi id 15.20.2305.023; Tue, 8 Oct 2019
 06:31:34 +0000
From: Jonas Karlman <jonas@kwiboo.se>
To: Tomasz Figa <tfiga@chromium.org>, Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH v2 for 5.4 2/4] media: hantro: Fix H264 max frmsize
 supported on RK3288
Thread-Topic: [PATCH v2 for 5.4 2/4] media: hantro: Fix H264 max frmsize
 supported on RK3288
Thread-Index: AQHVfTc2RvTWvQQ6Z06gn22kTgvMXqdQN9WAgAARyQA=
Date: Tue, 8 Oct 2019 06:31:34 +0000
Message-ID: <HE1PR06MB4011EC9E93ECBB6773252247AC9A0@HE1PR06MB4011.eurprd06.prod.outlook.com>
References: <20191007174505.10681-1-ezequiel@collabora.com>
 <20191007174505.10681-3-ezequiel@collabora.com>
 <CAAFQd5BNu2ea3ei_imHmEwmdna0+iiSbQSv_SBsdHfP4Uh1h4Q@mail.gmail.com>
In-Reply-To: <CAAFQd5BNu2ea3ei_imHmEwmdna0+iiSbQSv_SBsdHfP4Uh1h4Q@mail.gmail.com>
Accept-Language: sv-SE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR0102CA0059.eurprd01.prod.exchangelabs.com
 (2603:10a6:7:7d::36) To HE1PR06MB4011.eurprd06.prod.outlook.com
 (2603:10a6:7:9c::32)
x-incomingtopheadermarker: OriginalChecksum:281F0C36E430B8F36F04439000A3DBC16333D9CC187911F94A78B18B22AD256B;
 UpperCasedChecksum:C1A417F2D729E2DCD15B2C0D6BA3B5B330B226231AFD8AD3B0733E810954AA92;
 SizeAsReceived:8242; Count:50
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [lvFo+0uTl8sYwypXXBa2TCKeqijFnHGw]
x-microsoft-original-message-id: <1489a28d-66d8-7ef5-538a-578f47991801@kwiboo.se>
x-ms-publictraffictype: Email
x-incomingheadercount: 50
x-eopattributedmessage: 0
x-ms-traffictypediagnostic: VE1EUR01HT037:
x-ms-exchange-purlcount: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Vx6jkpNRG82vqj8k7nXsxg9kNuWK2eNTRoXBV5gVT7SP8OJ1vSLgnmZVs+gbYNeDJUo0DnFLYNcQy97Z4FfteR48lE+vCW3pFRRjq4QUTAG5Y/VlP9r2bHqOR/LQKDYFXM7kA2/XpoIQGe0keP3YvRopCWhpkFa0hDKDhyC6FtdD/0F53ur8w38q+V91yxocDgkjxZKunetW+hPfx0DGdLRoYxBDiOsc/YIFoPi0eoA=
x-ms-exchange-transport-forked: True
Content-ID: <10B199680F83BE4F8A7AF0D78CC0BF51@eurprd06.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: a4c415ce-de24-44a9-8a39-08d74bb929e3
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2019 06:31:34.2993 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR01HT037
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_233139_505845_A9385EA4 
X-CRM114-Status: GOOD (  16.33  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.65.26 listed in list.dnswl.org]
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Douglas Anderson <dianders@chromium.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 2019-10-08 07:27, Tomasz Figa wrote:
> Hi Ezequiel, Jonas,
>
> On Tue, Oct 8, 2019 at 2:46 AM Ezequiel Garcia <ezequiel@collabora.com> wrote:
>> From: Jonas Karlman <jonas@kwiboo.se>
>>
>> TRM specify supported image size 48x48 to 4096x2304 at step size 16 pixels,
>> change frmsize max_width/max_height to match TRM.
>>
>> Fixes: 760327930e10 ("media: hantro: Enable H264 decoding on rk3288")
>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
>> ---
>> v2:
>> * No changes.
>>
>>  drivers/staging/media/hantro/rk3288_vpu_hw.c | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/staging/media/hantro/rk3288_vpu_hw.c b/drivers/staging/media/hantro/rk3288_vpu_hw.c
>> index 6bfcc47d1e58..ebb017b8a334 100644
>> --- a/drivers/staging/media/hantro/rk3288_vpu_hw.c
>> +++ b/drivers/staging/media/hantro/rk3288_vpu_hw.c
>> @@ -67,10 +67,10 @@ static const struct hantro_fmt rk3288_vpu_dec_fmts[] = {
>>                 .max_depth = 2,
>>                 .frmsize = {
>>                         .min_width = 48,
>> -                       .max_width = 3840,
>> +                       .max_width = 4096,
>>                         .step_width = H264_MB_DIM,
>>                         .min_height = 48,
>> -                       .max_height = 2160,
>> +                       .max_height = 2304,
> This doesn't match the datasheet I have, which is RK3288 Datasheet Rev
> 1.4 and which has the values as in current code. What's the one you
> got the values from?

The RK3288 TRM vcodec chapter from [1], unknown revision and date, lists 48x48 to 4096x2304 step size 16 pixels under 25.5.1 H.264 decoder.

I can also confirm that one of my test samples (PUPPIES BATH IN 4K) is 4096x2304 and can be decoded after this patch.
However the decoding speed is not optimal at 400Mhz, if I recall correctly you need to set the VPU1 clock to 600Mhz for 4K decoding on RK3288.

I am not sure if I should include a v2 of this patch in my v2 series, as-is this patch do not apply on master (H264_MB_DIM has changed to MB_DIM in master).

[1] http://www.t-firefly.com/download/firefly-rk3288/docs/TRM/rk3288-chapter-25-video-encoder-decoder-unit-(vcodec).pdf

Regards,
Jonas

>
> Best regards,
> Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
