Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D10D9A4954
	for <lists+linux-rockchip@lfdr.de>; Sun,  1 Sep 2019 14:45:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=omtNH8rwyY6zW1jYJkCe0K7NQyxsWxPJCOyLjughpks=; b=e8phW0ZDCB/lw2
	Yz6ZLO2wYJ9dJTp1B+mxByrK1gSgSh9OWFWLAlTJ51sZ4qib8/+oxgo1eDqllQkWJetozT61AbBcU
	UkPUZ0Xmh+Sb2SCgfg13jTR50W+ahusk1ER+gT90HCP3b4TWcuw3eWSja1q1wnPnqJM1HgzWux7Jr
	6H2SEfm7IBDi3LeDoRxJ7D1yj0E6eNC5c3a6TuLf8jWduHMT7CC7y7EpoqwLZFZEB/F/wWDWMdmGv
	wyICvNa78wWxa4t+cv8W+6NVrDJcVKUxa0SNi7tB6V7Ot9Ng/2qvEcblgydZcA9etiRzSJrQzNrAx
	2LL1f3mO88dcoZk/1S6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4PEq-0000cM-E5; Sun, 01 Sep 2019 12:45:48 +0000
Received: from mail-oln040092064056.outbound.protection.outlook.com
 ([40.92.64.56] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4PEn-0000bF-3Y
 for linux-rockchip@lists.infradead.org; Sun, 01 Sep 2019 12:45:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OBSK2rq2OiV0kyVfEZy2X/hI8vU3CKkPOcUNviPYXgm17nuCzeAZftJHf+rIVdVNy/pgmkE6YB7UWzpw+PO0P/J9AtbDzS6ASMQEPr7Ae3hLiFy00NjRFrdrnJzxBl6DqZuW4Kg9bvuDkSI3OukLr0VLSi89jEq64PezAcPUFM2/vnMtlssWN4rniPcS6mlbMCGV9Ck0QLZOyYt9fvoTYb8GhfklOzBE+vGtFJtciYfPPxeid5Yg9mWDDlIvNuRpY/Nx2ov9gt2q4n84x57MbyWtiPRHnwMsfzx/cA7JYmuXv7z9mvzL0YTLwJUy+RjM48VKIIucJs9h7NGlAGSyFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D4ukeaVCKTejdAng2aRCJhqSKYl1N3NUk8PJ9ZbERWg=;
 b=XAH7gkvnhZqCvdLE8F11CClk9g/CNLjmJWnKfzw7FZ+y1030ByVEjRwUmEnWkHpFtXmcB6AShxmSb6eUIWCQcDXvWLd+YR12ERhECobK4eiugZxP3d83Jow6DBr5axKBHMKqOE1CZ8mCZHSHrIe0LQggJ2auAonIgUksRGIbnCp+FmSCtqeHuZA4jnmFeH0Fr/CSJjtaaRdrE1QcQR5E3LB7PXxX2OJV0t7CW3SJx7/NA2sG9TWObzmMgC0yo8BhyWZXm/yEZf5gNxOY6GI/joy2jgx96/OYWwmNNRh+dRq749nxhLdBdR6IkXnwIesegCvs3SqVIgZBas8L6AhC3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from HE1EUR01FT057.eop-EUR01.prod.protection.outlook.com
 (10.152.0.59) by HE1EUR01HT179.eop-EUR01.prod.protection.outlook.com
 (10.152.1.126) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2220.16; Sun, 1 Sep
 2019 12:45:42 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com (10.152.0.52) by
 HE1EUR01FT057.mail.protection.outlook.com (10.152.0.208) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.16 via Frontend Transport; Sun, 1 Sep 2019 12:45:42 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::a0ba:e766:2a23:2088]) by HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::a0ba:e766:2a23:2088%3]) with mapi id 15.20.2199.021; Sun, 1 Sep 2019
 12:45:42 +0000
From: Jonas Karlman <jonas@kwiboo.se>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH 01/12] media: hantro: Fix H264 max frmsize supported on RK3288
Thread-Topic: [PATCH 01/12] media: hantro: Fix H264 max frmsize supported on
 RK3288
Thread-Index: AQHVYMMqh0O1621DYkuOLEeadywFIw==
Date: Sun, 1 Sep 2019 12:45:42 +0000
Message-ID: <HE1PR06MB4011EAB6F0965D47A20AF805ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
References: <HE1PR06MB40117D0EE96E6FA638A04B78ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
In-Reply-To: <HE1PR06MB40117D0EE96E6FA638A04B78ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
Accept-Language: sv-SE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR05CA0343.eurprd05.prod.outlook.com
 (2603:10a6:7:92::38) To HE1PR06MB4011.eurprd06.prod.outlook.com
 (2603:10a6:7:9c::32)
x-incomingtopheadermarker: OriginalChecksum:E1514A37C9D7278A24BB76B869499CC712EEAC020295903F4667AD66EA69CB9B;
 UpperCasedChecksum:A39498921B4D99DDE39A7F21E962E48C962F0DD9140D19663927906015FF1C9A;
 SizeAsReceived:7893; Count:50
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-tmn: [o4Q4efZwGOCzGkqLZyqbZ4N9XKXGcIEW]
x-microsoft-original-message-id: <20190901124531.23645-1-jonas@kwiboo.se>
x-ms-publictraffictype: Email
x-incomingheadercount: 50
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119158)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031322404)(2017031323274)(2017031324274)(1601125500)(1603101475)(1701031045);
 SRVR:HE1EUR01HT179; 
x-ms-traffictypediagnostic: HE1EUR01HT179:
x-microsoft-antispam-message-info: YgCVmy2RPwkWaQX4FNXKpeMt2racTTL++JWw/1Jbcfww4hA9i3708AMmq1Y3XEnkFgh1L2pUVk7QyClhdI9srPhyxRSjN/M4OahzjJ1GlITWier2EVtn124RlV9/9W+SNyQjn/9hLMa3s35qLVQs1w5vMgKXMgYFaDLlIdMzO0o6+++qRpvLtKiZhTWgAhKd
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 7047456c-1e7a-41ad-3dca-08d72eda4c80
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Sep 2019 12:45:42.0190 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1EUR01HT179
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_054545_151713_BADFE53D 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.64.56 listed in list.dnswl.org]
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

TRM specify supported image size 48x48 to 4096x2304 at step size 16 pixels,
change frmsize max_width/max_height to match TRM.

Fixes: 760327930e10 ("media: hantro: Enable H264 decoding on rk3288")
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/staging/media/hantro/rk3288_vpu_hw.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/hantro/rk3288_vpu_hw.c b/drivers/staging/media/hantro/rk3288_vpu_hw.c
index 6bfcc47d1e58..ebb017b8a334 100644
--- a/drivers/staging/media/hantro/rk3288_vpu_hw.c
+++ b/drivers/staging/media/hantro/rk3288_vpu_hw.c
@@ -67,10 +67,10 @@ static const struct hantro_fmt rk3288_vpu_dec_fmts[] = {
 		.max_depth = 2,
 		.frmsize = {
 			.min_width = 48,
-			.max_width = 3840,
+			.max_width = 4096,
 			.step_width = H264_MB_DIM,
 			.min_height = 48,
-			.max_height = 2160,
+			.max_height = 2304,
 			.step_height = H264_MB_DIM,
 		},
 	},
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
