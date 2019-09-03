Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 000B1A73F4
	for <lists+linux-rockchip@lfdr.de>; Tue,  3 Sep 2019 21:47:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ISso4hdS3x/ZBLu9tnTRw6iBbR3xmDTSy21xyqeZKRU=; b=BmC/K3WFYS8iYr
	vG0vk/m5vm42gMbhcXTTXMEln1nt60WLo7w/CgqwTIKUTqBsKNssIaEwV+LQdAXT0BAfgWwmRI/Gn
	p2VAO/YrZ9P4tU4Yg8H8It+ASIVHlX8Jr+L7cbRKdqKp3W2hXuJy/CAQeXzaaDo+ST0KpHobLX3/r
	SY1eF1iw69o+SugW4JObRGHOGc2v6RakPo81gBryrxkTvEs4AYvYO5FbOA77VoYKzLE9teX69+GRc
	b63D6Re1n6dkM9kKxIkWIBHIGCmg4R3LrrghhtdS+ay4JY/RZ2bD8qzb8NHV+ask0R+e0AdCtk1hc
	EAq7/Chb16WG03n3F/Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Elz-0000Ou-V8; Tue, 03 Sep 2019 19:47:28 +0000
Received: from mail-oln040092067016.outbound.protection.outlook.com
 ([40.92.67.16] helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Elv-0000Ns-Qz
 for linux-rockchip@lists.infradead.org; Tue, 03 Sep 2019 19:47:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h9+dZxpAw8V2ttg8idaWBKcM2L30pPBM6Y/aaNqZoNm+beC/iXKOflNAfu36csPFJQV1uUu2dzP+YeE9w+qM22y8eHPLWqkdP/+pb0Azps3ocuzEOXRH8a9qWn1EwYhwnn/CsUi3F1kZXNv2I+kL8F9XBkSis+ReJmjuKg0u5viUerC8vQQMOUinAEKP/6gm6z+oLJuq80x9xn05Zjp2KpJbAID2PRIb/0YwCrvG0vQGmGybiHjFbzFbR1AFnsR4eo9B5v9Daap62FIH8LumFyexjMGw0o2lDAzE2aYvcDmG3A0wLatUIPh5GaHqf4tc/9jpruWMOFD2bllwLTwD+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cl1OXlmmrsJ2YDkl5Z0ssofFqBYMWQdd8Lkby8mKeMA=;
 b=B/SOMva7aMKQhh381QL/FUrf5kaxgY5Gc3OpxMSNmmX+a3nRDSDJUW/VkX9772mb6C1fhecTdR4fsZa9rDDJMEMx8sxO2V85W7vY0ay/SlXliJ7pbckU7sveehE8tS5u5jnvz7sFM8AcPLVEOFXHlpvCiojmKDP/yV1ckSWqr1EWXCGqZoTQwNvXh4VQE4zjUO2fpjM1Ax1IJmOXYKE91Z0jViEse2KZGYin+7xoQxx2RB8duP9kddRg0JC97IfVT73qt4BNRJU9/zXFqrO/UOHUq8UEFA2WuhcFEERWbPsIZJarYBiJP0yFs4k6aWSiOJCbB3DMseT7L5aOaXe/aQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from VE1EUR02FT042.eop-EUR02.prod.protection.outlook.com
 (10.152.12.59) by VE1EUR02HT179.eop-EUR02.prod.protection.outlook.com
 (10.152.13.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2220.16; Tue, 3 Sep
 2019 19:47:20 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com (10.152.12.60) by
 VE1EUR02FT042.mail.protection.outlook.com (10.152.13.70) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2220.16 via Frontend Transport; Tue, 3 Sep 2019 19:47:20 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::59e6:329d:5fc7:5181]) by HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::59e6:329d:5fc7:5181%5]) with mapi id 15.20.2241.014; Tue, 3 Sep 2019
 19:47:20 +0000
From: Jonas Karlman <jonas@kwiboo.se>
To: Philipp Zabel <p.zabel@pengutronix.de>, Ezequiel Garcia
 <ezequiel@collabora.com>
Subject: Re: [RFC 08/12] media: hantro: Fix H264 decoding of field encoded
 content
Thread-Topic: [RFC 08/12] media: hantro: Fix H264 decoding of field encoded
 content
Thread-Index: AQHVYMMtmxM+aDjHykiwJVJ++y1ATacZ840AgAALdwCAABCDAIAAT7qA
Date: Tue, 3 Sep 2019 19:47:20 +0000
Message-ID: <HE1PR06MB4011B532327D629753FDDAC1ACB90@HE1PR06MB4011.eurprd06.prod.outlook.com>
References: <HE1PR06MB40117D0EE96E6FA638A04B78ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <20190901124531.23645-1-jonas@kwiboo.se>
 <HE1PR06MB4011EA39133818A85768B91FACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <1567516908.5229.7.camel@pengutronix.de>
 <DB6PR06MB4007C0F89BAEC6F9F1F2AA18ACB90@DB6PR06MB4007.eurprd06.prod.outlook.com>
 <1567522916.5229.11.camel@pengutronix.de>
In-Reply-To: <1567522916.5229.11.camel@pengutronix.de>
Accept-Language: sv-SE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR0701CA0076.eurprd07.prod.outlook.com
 (2603:10a6:3:64::20) To HE1PR06MB4011.eurprd06.prod.outlook.com
 (2603:10a6:7:9c::32)
x-incomingtopheadermarker: OriginalChecksum:D53387E6826E5AF0FA56790C2CBA3BACE09CE5526C135CD1E4C55E3AA1665949;
 UpperCasedChecksum:AB48C5586087F8077F1CEC97158477431274A375D420079B40355BEDBF107EED;
 SizeAsReceived:8134; Count:49
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [2gyRvBEhlEh4hznG3I6TgOsrpeZcnVXD]
x-microsoft-original-message-id: <b009afbc-a744-91de-831e-05f564169977@kwiboo.se>
x-ms-publictraffictype: Email
x-incomingheadercount: 49
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031322404)(2017031323274)(2017031324274)(1601125500)(1603101475)(1701031045);
 SRVR:VE1EUR02HT179; 
x-ms-traffictypediagnostic: VE1EUR02HT179:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-message-info: GG6H0U3iXZf21heWY7qLMoYZAR3PZFI+XKs8rQh/W35f5huy4jR/o306pwYFqwOohVZ4buvwxi8LPfI/It7b2p9/VBsAieyOgfAxiFBn0q8qESKbvlj1q4pqIPQRzJQ8xRu7vnwwOzsf6sQpYlE+CmR9m1DnXboZ5O+ytSQoKDaA+rvgoiz7BLmD5eMzFhK/
x-ms-exchange-transport-forked: True
Content-ID: <8B9B4FC940397F45B2963825C07C19B1@eurprd06.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: ae754e25-ee48-46b0-493e-08d730a7881a
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2019 19:47:20.1437 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR02HT179
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_124723_879176_96D3F23F 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.67.16 listed in list.dnswl.org]
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
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 2019-09-03 17:01, Philipp Zabel wrote:
> On Tue, 2019-09-03 at 14:02 +0000, Jonas Karlman wrote:
>> On 2019-09-03 15:21, Philipp Zabel wrote:
>>> On Sun, 2019-09-01 at 12:45 +0000, Jonas Karlman wrote:
>>>> This need code cleanup and formatting
>>>>
>>>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
>>> The previous patches all work, but this patch breaks decoding of
>>> progressive content for me (i.MX8MQ with FFmpeg based on Ezequiel's
>>> branch).
>> Please try with ffmpeg based on my v4l2-request-hwaccel-4.0.4-hantro branch at [1],
>> up to and including the commit "HACK: add dpb flags for reference usage and field picture".
>> That commit adds code to set reference flags needed by the changes in this patch.
>>
>> There is probably also some other minor difference between our two ffmpeg branches.
>> I have not observed any issues with progressive content with this patch and my ffmpeg branch (on a RK3288 device).
>> Some H264 reference samples do have visual issues after this patch, however all my real world samples does seem to work.
>>
>> My branch use libudev to probe media/video devices and needs to be configured with:
>> --enable-v4l2-request --enable-libudev --enable-libdrm
>>
>> [1] https://github.com/Kwiboo/FFmpeg/commits/v4l2-request-hwaccel-4.0.4-hantro
> I hadn't realized that this is a backwards incompatible change. With
> your branch rebased onto n4.2, and this patch applied, decoding seems to
> work.

Nor did I, thanks for testing and verifying, I will try to reduce breaking changes in a v2.

Regards,
Jonas

>
> regards
> Philipp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
