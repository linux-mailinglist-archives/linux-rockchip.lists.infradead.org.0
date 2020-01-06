Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DB401319CB
	for <lists+linux-rockchip@lfdr.de>; Mon,  6 Jan 2020 21:50:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8FbKgmjDFnzjVtHziR8AzlC+gPj6OAsbHX85SgVXedY=; b=RBSIR9Fel/Ba5A
	71sPvYVgptlEnNUOnyGUj6TEnLTxtdKfiOrne00Y5f0XrndwmT63fMq2iUxEtS2EKcyPitzpsfNhV
	4zGRtFf5Hm1trEPQwqng5PE0MXwlUggJQ6PTfYfU0TWEFXK1PzVeN/7NHTXqCy34y7bmIoHf+iCh8
	i4rFT60d3+RN/U63+O3lWMvIIS3d0SbEVIZPov59nJNLeqQtN7ydnwWpwuoT/qJbl9ov/ogu4cFRI
	h8FgvKjjXxWajnT9uGzblpbev9tDYXIwOjwZ4ISCO+UMfccdfLGwgb7He0DLuynyRVGseOxla8Fxb
	KTMrEDZiVtr2XaL/X01g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioZKi-0005e2-59; Mon, 06 Jan 2020 20:50:40 +0000
Received: from mail-oln040092072104.outbound.protection.outlook.com
 ([40.92.72.104] helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioZJb-0003RW-ND; Mon, 06 Jan 2020 20:49:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CTGtOHpCIjqvEW20jKHDItiMHIqATZb1FAx4axZfqGCiHyvhiinLp4sMMwDgVkq7dYL9E+4OJkEiR6USDcxee7T8wRWmB1BpeDfNcO7/h627ipvhRyfelIKUPwQlqsDkxwoqSh7DuISrMCRW36Lh1pM53Si9lZ8d8OqDSQCpPFNOdtJcEMSNDzfPJiE7CQoY++46vQbnNd90UnALSDu+CR48CDGWjiqjXJN3+tbN8RAW7VMqussBLKnDG9uX3O2KMECc9fTUIORsAvURkairAS01k91p6ayN83oeb2lHUzhu5pUBmJPbZIRc8T9iwlOMzhc4IyG1XEWTCHuimfA5Vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=77VAQ6ltsxf1vmmJvDLdeb07Dja0Us6jfV4fVQe4U6g=;
 b=juiMwu79bDq8aRV5ifTWmGd/QunsMIUx0IYWwBuFIUJ/oVvwJjtrwBi40SJ7EnOsVCKLC3tFolsEy4yFpBxavC2xZaaowLgX0cPPxXNy+tVL0XiYf0MP3YRO29d5zbZeJLuGEC0LugJju55+hCAsdgNzNdhFflEKlYHrx4f4KT/HHlmr7RKiU11LLda18ZF0c1SzW9tPFbN3N89an9jINDONdJbIBYGyODzr+LbYJYgojc2DIeXVmqPk3mriTOZO34AAziZUquOGn/pfADecnySbJ4TRLHBXKm2fPy5aCFtXaZXQKYQRec/q4sV3S3pSSscx0GEt1Hz0E/Muu5YZ1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from VE1EUR03FT047.eop-EUR03.prod.protection.outlook.com
 (10.152.18.56) by VE1EUR03HT174.eop-EUR03.prod.protection.outlook.com
 (10.152.19.85) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2602.11; Mon, 6 Jan
 2020 20:49:26 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com (10.152.18.51) by
 VE1EUR03FT047.mail.protection.outlook.com (10.152.19.218) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.11 via Frontend Transport; Mon, 6 Jan 2020 20:49:26 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::b957:6908:9f62:c28b]) by HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::b957:6908:9f62:c28b%5]) with mapi id 15.20.2602.015; Mon, 6 Jan 2020
 20:49:26 +0000
Received: from bionic.localdomain (98.128.173.80) by
 AM6PR0202CA0044.eurprd02.prod.outlook.com (2603:10a6:20b:3a::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2602.12 via Frontend
 Transport; Mon, 6 Jan 2020 20:49:24 +0000
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>
Subject: [PATCH 10/15] arm64: dts: rockchip: increase vop clock rate on rk3328
Thread-Topic: [PATCH 10/15] arm64: dts: rockchip: increase vop clock rate on
 rk3328
Thread-Index: AQHVxNLI2YBBKIutH0iqNWK3NiuMSg==
Date: Mon, 6 Jan 2020 20:49:25 +0000
Message-ID: <HE1PR06MB40111D34406A43C1472C4B3DAC3C0@HE1PR06MB4011.eurprd06.prod.outlook.com>
References: <HE1PR06MB4011254424EDB4485617513CAC3C0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <20200106204914.6001-1-jonas@kwiboo.se>
In-Reply-To: <20200106204914.6001-1-jonas@kwiboo.se>
Accept-Language: sv-SE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM6PR0202CA0044.eurprd02.prod.outlook.com
 (2603:10a6:20b:3a::21) To HE1PR06MB4011.eurprd06.prod.outlook.com
 (2603:10a6:7:9c::32)
x-incomingtopheadermarker: OriginalChecksum:F6A0113E209C19C1AC0E3B9BA6059377FE0A1BA6DAFCCC1FC9E6DFF6D5DD8E42;
 UpperCasedChecksum:40E4EED46AB85A325DD5358FDB91228939631B74F028AC975E6B3F15FBF5E7B5;
 SizeAsReceived:8189; Count:51
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-tmn: [KYN4liLaYG1opX/u099oZRxdPkq4XUs+]
x-microsoft-original-message-id: <20200106204914.6001-2-jonas@kwiboo.se>
x-ms-publictraffictype: Email
x-incomingheadercount: 51
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 5bd42f31-0839-4153-9c2b-08d792e9ea2e
x-ms-traffictypediagnostic: VE1EUR03HT174:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BBZByNdeeRdLfcVNBVcXl/LAqbRBFZKDgp0DQNfaUvfFGeZheGTQ12pL2Sc8sxZ0bBdn5GcAhsyo9N2y2zNvOGyofZIugS9ySNjN7iR7DIgH7SdkOSEfNCU4sQ8vLN2+jvFzoVeYIg871K6LcdD21HjGMTJR46lFHjL8oHDbNFsGcKKnXkLsnGZG++UdM5jt
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 5bd42f31-0839-4153-9c2b-08d792e9ea2e
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2020 20:49:25.9547 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR03HT174
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_124931_788519_FDE24B5B 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.72.104 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jonas Karlman <jonas@kwiboo.se>,
 David Airlie <airlied@linux.ie>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Zheng Yang <zhengyang@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The VOP on RK3328 needs to run at higher rate in order to
produce a proper 3840x2160 signal.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 91306ebed4da..ee4b6170a9e6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -786,8 +786,8 @@
 			<0>, <24000000>,
 			<24000000>, <24000000>,
 			<15000000>, <15000000>,
-			<100000000>, <100000000>,
-			<100000000>, <100000000>,
+			<300000000>, <100000000>,
+			<400000000>, <100000000>,
 			<50000000>, <100000000>,
 			<100000000>, <100000000>,
 			<50000000>, <50000000>,
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
