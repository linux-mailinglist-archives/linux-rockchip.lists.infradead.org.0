Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA34A4968
	for <lists+linux-rockchip@lfdr.de>; Sun,  1 Sep 2019 14:46:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zy9eDBZXwXRn+ViLQR/CgY7CR0j2YIlAsu6S59PpQ+I=; b=oWWwXI1DtpKSx8
	YLgoEr/h+oEIql0UKm52dRahz7Klt7lUGWZnBq/Aofyyuk2cjYJNQNe5jBiES6YuczRhFs/zINQBZ
	JMZKO/XQEdM/O1n6QRIV0z53U78y+34geJGN0gDoI5ENf1sxJcGK0db5h8QT3PgXx3RPBorRnItxb
	OfAU376r+Izx3HMtLlnAFlsHwwHE6dq/YjhhROB6p7LtsXdjI4iUAxTKp/IM5b7TPiCJLBUEhkaPF
	2tyEtH0LV1wt7RGv3htv/DoQWSx2raVOxyn67TDnq6AaKmTq1ezVIBM210Eplt54L3l63BQmzPeTE
	4+26IaZllAIyDRMVa1Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4PFC-00013P-Aa; Sun, 01 Sep 2019 12:46:10 +0000
Received: from mail-oln040092066034.outbound.protection.outlook.com
 ([40.92.66.34] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4PEu-0000hE-Nf
 for linux-rockchip@lists.infradead.org; Sun, 01 Sep 2019 12:45:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IgPdZ65o9PUh0GU7XP0HjX1G0PPXSq7Onrq2HETUvptWXrknvl+Rh7CL9Hrc/tcWi/omJvY9SOaHXOBoY03toOob+DRaSjIBERmDHmcE5MtotbhtS3grEOHIV0rldREm6web9TtQdEByY3XmjWnCGRLUbgUIfeFvHspmj4yWPZTsvTuHUbg6ev7H61024f1CtemlNhttnVk/I3l80YrWstc6MBihauRt6IkGMFULabVjpW5BTmFV3QD9NzRNCfSM3vXPmBl3lu9upEwHfp0YmRdBHmmylpzilL6iaI1Cz3qbGfpu5lp8Jnx8kg5UwoB7Oh9XwFG34Y1EXmo8LCw8AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eeQvnvWDchEPDYP1XlV2FhNDP12tzl1tsCGA/GSddII=;
 b=ZJ64Eya7gRzKy30Ri10G/Fp2bj4L1iI5mMYZhop5RPRySa7+EOlueszaH0uDZpYn4ZxhfzIQBwNXlywLRhVRoWRHqtqhReUuNONP4W18irvjYbtC2mKLBqN0RwEeAJrTiovsChF1cmvW/63h/X+xfd6RPpjAjWoykpPGuu5tod367Q0cF2PqAZHAcD0OSy7kQfY5TQM4yUqR35L6emo/OE67kZus9wkbqqTX6QR+lGq6gmx9CsSGMe4ZH41MEHF4IgkQe9U0umkFF9ONmtbcj2y+XOf0Ir3gsYjKQ6mdEvb11aXtQ9ZI0VprmDq1DCFFVNCcgEudaFa9vi/Ee4tMlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from HE1EUR01FT057.eop-EUR01.prod.protection.outlook.com
 (10.152.0.55) by HE1EUR01HT092.eop-EUR01.prod.protection.outlook.com
 (10.152.0.224) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2220.16; Sun, 1 Sep
 2019 12:45:49 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com (10.152.0.52) by
 HE1EUR01FT057.mail.protection.outlook.com (10.152.0.208) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.16 via Frontend Transport; Sun, 1 Sep 2019 12:45:49 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::a0ba:e766:2a23:2088]) by HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::a0ba:e766:2a23:2088%3]) with mapi id 15.20.2199.021; Sun, 1 Sep 2019
 12:45:49 +0000
From: Jonas Karlman <jonas@kwiboo.se>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: [RFC 12/12] media: hantro: Enable H264 decoding on RK3328
Thread-Topic: [RFC 12/12] media: hantro: Enable H264 decoding on RK3328
Thread-Index: AQHVYMMuvZQ1uHpGmUOTBIxTdNJunA==
Date: Sun, 1 Sep 2019 12:45:49 +0000
Message-ID: <HE1PR06MB401121228D13FA596BE8ADDFACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
References: <HE1PR06MB40117D0EE96E6FA638A04B78ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <20190901124531.23645-1-jonas@kwiboo.se>
In-Reply-To: <20190901124531.23645-1-jonas@kwiboo.se>
Accept-Language: sv-SE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR05CA0343.eurprd05.prod.outlook.com
 (2603:10a6:7:92::38) To HE1PR06MB4011.eurprd06.prod.outlook.com
 (2603:10a6:7:9c::32)
x-incomingtopheadermarker: OriginalChecksum:DC266DF213D4E8D0C3D1E2D5093F387F19B067E3DACF8FC4F0FD73990B771076;
 UpperCasedChecksum:E97356B334C780799DD41F7BE53990FD24D9A7535924EA69093E283C4EFCFD1A;
 SizeAsReceived:7859; Count:50
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-tmn: [Bw5RG+BkWMYsEZmrCEi5JTjBEQh81nv2]
x-microsoft-original-message-id: <20190901124531.23645-12-jonas@kwiboo.se>
x-ms-publictraffictype: Email
x-incomingheadercount: 50
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031322404)(2017031323274)(2017031324274)(1601125500)(1603101475)(1701031045);
 SRVR:HE1EUR01HT092; 
x-ms-traffictypediagnostic: HE1EUR01HT092:
x-microsoft-antispam-message-info: Y9PxsReJX/uTvNX1wro58uPrZhxU5sMjtjaMPhDuFUBUo3xD04L6Ad8i3MIDn8b59KnUe+P0wGM+5FxiYBlItIg05QFanmQJzXKF6L3n2p4lFS4+wsypv+2Sv8oaxd7i3ZdQdi6BaBBJe+bM6R8bJRzStM68F09wZAxFWlOqGlKiSOnjAQnfCWvIx7l4Pz42
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 87e5dc36-64a0-491d-f921-08d72eda5107
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Sep 2019 12:45:49.6349 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1EUR01HT092
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_054552_825052_8EA1FB98 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.66.34 listed in list.dnswl.org]
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
 Jonas Karlman <jonas@kwiboo.se>,
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

RK3328 SoC has the same decoder IP block as RK3399,
lets enable H264 decoding on RK3328.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/staging/media/hantro/rk3399_vpu_hw.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/hantro/rk3399_vpu_hw.c b/drivers/staging/media/hantro/rk3399_vpu_hw.c
index 47ca51b75a0d..08b965129377 100644
--- a/drivers/staging/media/hantro/rk3399_vpu_hw.c
+++ b/drivers/staging/media/hantro/rk3399_vpu_hw.c
@@ -232,7 +232,8 @@ const struct hantro_variant rk3328_vpu_variant = {
 	.dec_offset = 0x400,
 	.dec_fmts = rk3399_vpu_dec_fmts,
 	.num_dec_fmts = ARRAY_SIZE(rk3399_vpu_dec_fmts),
-	.codec = HANTRO_MPEG2_DECODER | HANTRO_VP8_DECODER,
+	.codec = HANTRO_MPEG2_DECODER | HANTRO_VP8_DECODER |
+		 HANTRO_H264_DECODER,
 	.codec_ops = rk3399_vpu_codec_ops,
 	.irqs = rk3328_irqs,
 	.num_irqs = ARRAY_SIZE(rk3328_irqs),
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
