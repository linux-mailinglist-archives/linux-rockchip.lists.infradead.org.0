Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97BA89813C
	for <lists+linux-rockchip@lfdr.de>; Wed, 21 Aug 2019 19:28:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PyjA61RbONtqSDuPwITl1uWNQyiJrZrTYumA+vzQfkY=; b=EOuLTIaBgByyQ/
	xChv64JwPXZgfeXqgBpKFCTLs9Dd1mcy635o7pTfuz6XvvC33JqC2ELb+nOrpNuzEZu5fAZiK9Nny
	5hdAscSmP1sSnEGfQn7cdypffmNWrN8gY63hVFYXzgxPYE65xbnEMphmQlStUU18C8tx9tH8nDG9J
	IgyWqdeO4HEXrauT5fGq2ctIcAIl5rCYIHoCAmkHPjEYyXNEp4PRuzVTdk3MYuke7cCIB8euN6RoY
	la5+lesOEGjIgCVlzyh7W6W9TuSh3MMSVLw+s6P9e7Eqv80w515PP6VNWZeoEGHwlwVaAJmyfI6eq
	HceLOmQODH3ljZvs+/Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0UOq-00008c-Tg; Wed, 21 Aug 2019 17:27:56 +0000
Received: from mail-ve1eur01olkn0829.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::829]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0UOn-00007u-HV
 for linux-rockchip@lists.infradead.org; Wed, 21 Aug 2019 17:27:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DeRH78s6StyMHi1vPMS7xKhhux0rsitG4w4vlQxTzKfkbVHbgAv/qpIq3/w75NlirQyS4N3aUmsiOYJwaBqir0NFZ1r9oPpxu08S5+tzSOYw7tuyKgJqq7brw0tkQftWUDEENU3lHTDxOGLPXOH+0YMgxAcTjSvNjejhCY4iM404q32q+lpp9a/tXvBsH/B1k0c9Rc6j9QBI8LlvU41GJczmOGNVOyNxKZ7jO5dfA28aiVxKFtGMfYV44kOT/ku6iqSTUUUilgSIKEqLRPAODYEg8YwlCd2E1VELN8s4lXEASlbXqLDWyi2epaz7SxdK44FHnpx5/MD5DDUnX4xwUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=glWX/RJ/utZoHGCZhTO1BE7hX5gqOXGqfUGPT1sTmN0=;
 b=ck4xbTjbduxF2lBD4OpyTWDWOTaJ69CsRSApPTptjvc53orwm+enDz7LKaAbjnwUOCpE4b0qTf8curbYnvnxwhdOat7TlmgkxZPTaIE5dWp0nsGKhxIGLvOJLnlK5GYng4hTHGWZLsyfy+aCg1GwL8LVs3WcW1ruUSJO18ULuoSM0ghu/PSIfYvUcefaR6Kz8qkdwGjjQ8Pfe01hZ2kyPOY7BWT2yyvzWc0EUWERtx0jo7ucQ+E/w9Xp5UagF50NfzPb6N0GnxnBJQT6mDAaGd5hP5HseNMiuZ+iQY+13jhHIaryyvt+Imr++XhxrcyMBfrjfFRk8/kVhTTylwm40g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from VE1EUR01FT021.eop-EUR01.prod.protection.outlook.com
 (10.152.2.53) by VE1EUR01HT201.eop-EUR01.prod.protection.outlook.com
 (10.152.3.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2199.13; Wed, 21 Aug
 2019 17:27:47 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com (10.152.2.53) by
 VE1EUR01FT021.mail.protection.outlook.com (10.152.2.223) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.13 via Frontend Transport; Wed, 21 Aug 2019 17:27:47 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::a0ba:e766:2a23:2088]) by HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::a0ba:e766:2a23:2088%3]) with mapi id 15.20.2178.020; Wed, 21 Aug 2019
 17:27:47 +0000
From: Jonas Karlman <jonas@kwiboo.se>
To: "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Subject: [PATCH] media: hantro: Enable VP8 decoding on RK3328
Thread-Topic: [PATCH] media: hantro: Enable VP8 decoding on RK3328
Thread-Index: AQHVWEXAbuiwMpKTK0OtyOz+u3RpMA==
Date: Wed, 21 Aug 2019 17:27:47 +0000
Message-ID: <HE1PR06MB4011F3DB984CB3BFE210DB12ACAA0@HE1PR06MB4011.eurprd06.prod.outlook.com>
Accept-Language: sv-SE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR0902CA0009.eurprd09.prod.outlook.com
 (2603:10a6:3:e5::19) To HE1PR06MB4011.eurprd06.prod.outlook.com
 (2603:10a6:7:9c::32)
x-incomingtopheadermarker: OriginalChecksum:2F5F2A9495C1777DF11185D205B187942F05CF4B2DF281429480DA1AF526802E;
 UpperCasedChecksum:3ED5E9CE293436B5ED6B36A18CFF49D6F83F4F23F5A9D7351D4150856FC7C5D8;
 SizeAsReceived:7547; Count:48
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-tmn: [KDCaQEt0RBZ5hJ2WXuSpPwO9MK2ppmYW]
x-microsoft-original-message-id: <20190821172715.16909-1-jonas@kwiboo.se>
x-ms-publictraffictype: Email
x-incomingheadercount: 48
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031322404)(2017031323274)(2017031324274)(1601125500)(1603101475)(1701031045);
 SRVR:VE1EUR01HT201; 
x-ms-traffictypediagnostic: VE1EUR01HT201:
x-microsoft-antispam-message-info: GEWK2dxq/itMx8J5UYm03dKK9tsntUCH6TC6NB95mW4L81cvkGUhzAVUZ+KNak9w0cfecHdlMJkmK4ZiWAtgLD1OKxHsoWtKHTREZelARUmGRK5QI3JFmQCvzW40hp3hd/tTzS+yPElOlQckGF/LOw8Ecwdvp3+iywSZ7ZarORJ43NMPUyR8Kg2f2fGtQmeN
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 46fd3108-3a36-41fe-543c-08d7265ce22a
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2019 17:27:47.7211 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR01HT201
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_102753_583132_751567FB 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:829 listed in]
 [list.dnswl.org]
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
Cc: Jonas Karlman <jonas@kwiboo.se>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

RK3328 SoC has the same decoder IP block as RK3399,
lets enable VP8 decoding on RK3328.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/staging/media/hantro/rk3399_vpu_hw.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/hantro/rk3399_vpu_hw.c b/drivers/staging/media/hantro/rk3399_vpu_hw.c
index 414b1d3fbb1f..14d14bc6b12b 100644
--- a/drivers/staging/media/hantro/rk3399_vpu_hw.c
+++ b/drivers/staging/media/hantro/rk3399_vpu_hw.c
@@ -213,7 +213,7 @@ const struct hantro_variant rk3328_vpu_variant = {
 	.dec_offset = 0x400,
 	.dec_fmts = rk3399_vpu_dec_fmts,
 	.num_dec_fmts = ARRAY_SIZE(rk3399_vpu_dec_fmts),
-	.codec = HANTRO_MPEG2_DECODER,
+	.codec = HANTRO_MPEG2_DECODER | HANTRO_VP8_DECODER,
 	.codec_ops = rk3399_vpu_codec_ops,
 	.irqs = rk3328_irqs,
 	.num_irqs = ARRAY_SIZE(rk3328_irqs),
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
