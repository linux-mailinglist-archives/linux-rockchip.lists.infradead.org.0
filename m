Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6506310E0E9
	for <lists+linux-rockchip@lfdr.de>; Sun,  1 Dec 2019 07:28:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=giFOMahZ8NTnDQYUgYd7t25J4d9W12CPvHl9G0juTbM=; b=RAF5xOZ4TtFImp
	3TDrAzw5CzEkiknpAr/VikAMqH1zLxoaa91B7DmP1d/QKm4oRabJOXbIQ1dqZsvQQCqcmZoBcCZY4
	xWcSiQXJoEp7Xp+5subQDx7Vn5kILv0R5/6OvcmT02rLWlacF00F6t6jW3KrSiWpECDzSQl8Lsxd2
	MUwpRRZqeR100bQqk6sO8TSTcEPwpsAtAQvm4wbtnbu66J/wb9CtD/Pxf/Eqpttu35cIwrlijruTo
	2vG5KMcGFULZbzTTGYQ/1MxYWlcC3ca+JMju9s0Yc2uFpmGdm6lfWBRXsJDeZ2VWpO2o6PHvocs/L
	I2EOvqtZht2KOQMD810g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibIil-00058D-RR; Sun, 01 Dec 2019 06:28:39 +0000
Received: from mail-oln040092255032.outbound.protection.outlook.com
 ([40.92.255.32] helo=APC01-HK2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibIii-00057w-HP
 for linux-rockchip@lists.infradead.org; Sun, 01 Dec 2019 06:28:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lz3f03b0jjN4ZN8oiMZNFuCLZ7vACya9uzy89utWzqgYc+XQZmlJ8U/xhWbHiKs9DCBrRI4gTmlCEYFof9f5lazI+R/7cE5qcFG2VW+t3wSROm2WZFvfaOc2ROYbHoA78SdFCrzHJDS2MIgpcTG7ygzlvIID1dTdl85lnJ00ArFK79av1hmwLqgbm2ht9JYqpvn3qpTzgFKkNh8FFUGX1XHISCUpqjC20585tbGbFjbzIx5gQF9/GYECT1W9nCYX2X0Jse9PzZSymuKdcBBr0SuYD9q1zNwxF1IMseH3QzHAxEep41scF3AIx5PVmWss0vogc8zLhpb5gsIUdCjcqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DV/lHGZPT93M0o0Y5kGxGFv7AbqQs/Vi2Qq2iqq4/6U=;
 b=YksbT9uWgsPFgTajLo648Rj5EgoLlckXY7aY8Ft8s9XsfsyuntxtjuunC8CgPQTRFIB5jL66IXmdc5M7t/2GQI4rJyeQ2WiwmHdIzsMGGSSitdWzHtoAvdRLW5b8hiTxItelPE9ciAYMbWaHyqp5QHUMLJVqt8WdMLQt6mnMNGf4RveAZJJ4FJhUNfsci87AnqQ0uyHBGhTsfyINI7bQnWKit77IeyFJSvW/o4Q7fF2jfa9owhkPrLaQr0NHv82QImJ98AUgk8hygEbf6aFRLGWDZreCF0xyy+etgfn1kBrVLRolMdVBTG9kudVawArB8mDSpqpQiQzZeJNq2vMF1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DV/lHGZPT93M0o0Y5kGxGFv7AbqQs/Vi2Qq2iqq4/6U=;
 b=hUoGyCIYOL92XEezITp9KIuVnQ8HqNqYYRbmkLVhLzI7aoeE/dzwrGFu8fS3+X+kiqBr/DFSWd38dGFsewU1Ay3zEgXyNo8e9b0qONEl8x0EWpYW64vYsum2qUs6xJ+KIcTIB3pBPjlQbZ45Jjie6IigW/gYx++vIuAf6sONtESoOlyZ7N6jUbDO7elTRMCFUIYS8zpSS+Z1h/3deq300edcC3og5GAxITELdz7aCBMEdWrTPR6P9w546dr3SaP36uDPIYLzhLktCiZwpMBjiJJJCZhf+AvbwDHj304QSVI60beD0uNLCFOMa7Bgttd9Z8SGZ9qhACcKRV5n/GQ2qQ==
Received: from SG2APC01FT025.eop-APC01.prod.protection.outlook.com
 (10.152.250.55) by SG2APC01HT183.eop-APC01.prod.protection.outlook.com
 (10.152.251.47) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2474.17; Sun, 1 Dec
 2019 06:28:27 +0000
Received: from HK2PR02MB4004.apcprd02.prod.outlook.com (10.152.250.55) by
 SG2APC01FT025.mail.protection.outlook.com (10.152.250.187) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.17 via Frontend Transport; Sun, 1 Dec 2019 06:28:26 +0000
Received: from HK2PR02MB4004.apcprd02.prod.outlook.com
 ([fe80::c0ad:cbbd:a01d:af02]) by HK2PR02MB4004.apcprd02.prod.outlook.com
 ([fe80::c0ad:cbbd:a01d:af02%4]) with mapi id 15.20.2495.014; Sun, 1 Dec 2019
 06:28:26 +0000
From: "redchenjs@live.com" <redchenjs@live.com>
To: "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Subject: [PATCH] ARM: dts: rockchip: Add missing cpu operating points for
 rk3288-tinker
Thread-Topic: [PATCH] ARM: dts: rockchip: Add missing cpu operating points for
 rk3288-tinker
Thread-Index: AQHVqBCK2LkN/gVZlU+Gr2YY8ZocCw==
Date: Sun, 1 Dec 2019 06:28:26 +0000
Message-ID: <HK2PR02MB400422CB598E1183226C6A4CC9400@HK2PR02MB4004.apcprd02.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK2PR04CA0047.apcprd04.prod.outlook.com
 (2603:1096:202:14::15) To HK2PR02MB4004.apcprd02.prod.outlook.com
 (2603:1096:202:22::15)
x-incomingtopheadermarker: OriginalChecksum:75F62178337A83F8A788ED3DA90E280F15D9EC18781B9769CC8B43E359057B78;
 UpperCasedChecksum:9B94128974284B3EB28016EEE3B101F275A3DD031E52F0C3C12830F02D401EC4;
 SizeAsReceived:7191; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [41Lv4vQeFHnENeQL7iXSVhWp+LqN7OaUvcYiP98MxdDMXy504cvuFw==]
x-microsoft-original-message-id: <20191201062824.GA40800@Home-PC>
x-ms-publictraffictype: Email
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 3e87b48e-92aa-4c58-eb1d-08d77627ac78
x-ms-traffictypediagnostic: SG2APC01HT183:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: r937TM7LktyzoIVewaaIXGmfDxUpehM5+1DO4rpGDFNtL+S1gmVx1dSZoqcNkM7YzGyqNg1WG2RnMWTS6v9oPc6x49f7aC9cURmlPQn8HQb+t3c3y7co5VllZUArL0aWmZE8HH6tqRI/UHv8aTy8KgSwtso6NxC+yjgkLjk2pMT8dFmdo6s8pUpypqUVAShq
x-ms-exchange-transport-forked: True
Content-ID: <F7BA2F754A170D4E943AE4F4A8564248@apcprd02.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e87b48e-92aa-4c58-eb1d-08d77627ac78
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Dec 2019 06:28:26.7581 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2APC01HT183
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191130_222836_771185_2CCB894F 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.255.32 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (redchenjs[at]live.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The generic operating points specified in rk3288.dtsi are specified by
Rockchip as conservative and for all cases.

The Tinker Board / S devices use a special chip variant called rk3288-c
and use different operating points with a higher max frequency.

So add the missing operating points for Tinker Board / S devices, also
increase the regulator-max-microvolt to 1400000 so that the cpu can
operate at 1.8 GHz.

Signed-off-by: Jack Chen <redchenjs@live.com>
---
 arch/arm/boot/dts/rk3288-tinker.dtsi | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3288-tinker.dtsi b/arch/arm/boot/dts/rk3288-tinker.dtsi
index 81e4e953d4a4..09e83b3d5e7d 100644
--- a/arch/arm/boot/dts/rk3288-tinker.dtsi
+++ b/arch/arm/boot/dts/rk3288-tinker.dtsi
@@ -113,6 +113,17 @@
 	cpu0-supply = <&vdd_cpu>;
 };
 
+&cpu_opp_table {
+	opp-1704000000 {
+		opp-hz = /bits/ 64 <1704000000>;
+		opp-microvolt = <1350000>;
+	};
+	opp-1800000000 {
+		opp-hz = /bits/ 64 <1800000000>;
+		opp-microvolt = <1400000>;
+	};
+};
+
 &gmac {
 	assigned-clocks = <&cru SCLK_MAC>;
 	assigned-clock-parents = <&ext_gmac>;
@@ -175,7 +186,7 @@
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <750000>;
-				regulator-max-microvolt = <1350000>;
+				regulator-max-microvolt = <1400000>;
 				regulator-name = "vdd_arm";
 				regulator-ramp-delay = <6000>;
 				regulator-state-mem {
-- 
2.24.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
