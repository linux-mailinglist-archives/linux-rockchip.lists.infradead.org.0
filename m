Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 115711319CC
	for <lists+linux-rockchip@lfdr.de>; Mon,  6 Jan 2020 21:50:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E0XEq3AUtMj5z4h3aCHHlvrTd9Eiy1LyUfQI+ZgIalE=; b=idKf1pBDm2pKKN
	F9uK9RLn07AGoKdnc/MahvcQDaCP7wc+CuvfIWk+J6RSxJafqR1rC/7TRXAvqv3Pkqyo/VpqTH1Dl
	ksQzhZhtVyKZT4TPBFiCxafDpA6lMauS/KlWShio2OBD4M2brvIe4eQgpwml0sIUpU22lBQQEhjUz
	miTCvd+eN3gme6oIVxwV8WEmiTsaluHvsUJtZV7hDbPShunCe7mLA+x8nok61R2Hq1/oBldzKx04J
	MeJD/ILDTYGq6tXq/jvKtxZ50dOROPFB5wVSqTQg2augTk6alLFMjfnayft3QyqBdH6yt3/hIdHSb
	9txX3a+ZyUMa6SFl8v+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioZKg-0005cw-CI; Mon, 06 Jan 2020 20:50:38 +0000
Received: from mail-ve1eur03olkn082e.outbound.protection.outlook.com
 ([2a01:111:f400:fe09::82e]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioZJZ-0003Qa-2d; Mon, 06 Jan 2020 20:49:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=msWN/3gWc5nN2DGPLL+uTlbBpao0dP1XdxgOY8whoXWg6edbzrJrmC5Ucs/4qVsVJ8qlr76iWZkINLjovA1wn6rZRzP8B9IJiy3uYiSJtHZP2ieyOhB0SPgTeqPo2v+50hKJ8l64uWRawwmml/sE7PcUqS6t9bcpQxn6j4suxU+YRrQuD4o/7gZUtRqStUqTBjLHIYbk0j+1ZIT69gG2pOCAiUl12CZmkbAJ64n5SNVoj59+TBOD7SQ2eSUFLsCB8ARAsoqG20Eptqzlcoejo+zgGOyDIgpn8zS+I+YQPJ0N9OzS+L6NZF2hjgWy/2WOHTZ3JEUivsfOq5ZQJ8zTTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H8h6i2lE4L79B2OzEob02aGKetmxzm9ZjnF+1jPOmGw=;
 b=fP1zd53e+hBujA+tpJLkFXuM2YadEQEWHMzCPNDWN1x9XEv4IarC+9dlgFfIYBXkN0hftAGp9ve7lpRUQN5NQLhz5RhcCpYYl7P5+yvkjmqEh7IC9x+H9TNYVf49/UMna5b9BllFlDQnBPgw9L6Cm9jv+aS1QY/d0NkNHnPbkGs1X9aG2yaCs/YV4mqq9P0e7brDOHZZXQEYANHDrGLPEX8/OkGHBq9qIgF9G2+f5jEeJ5ONJaSrwWxiis/zQufGrnsmFBfvq+z11iNU/UigwUvpeHISaHRrExPdIy/0o+m7e/tWd1+b59vYH3Gv6xKwC4lSs6UVp6MNobJiauxUng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from VE1EUR03FT047.eop-EUR03.prod.protection.outlook.com
 (10.152.18.58) by VE1EUR03HT161.eop-EUR03.prod.protection.outlook.com
 (10.152.19.126) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2602.11; Mon, 6 Jan
 2020 20:49:25 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com (10.152.18.51) by
 VE1EUR03FT047.mail.protection.outlook.com (10.152.19.218) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.11 via Frontend Transport; Mon, 6 Jan 2020 20:49:24 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::b957:6908:9f62:c28b]) by HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::b957:6908:9f62:c28b%5]) with mapi id 15.20.2602.015; Mon, 6 Jan 2020
 20:49:24 +0000
Received: from bionic.localdomain (98.128.173.80) by
 AM6PR0202CA0044.eurprd02.prod.outlook.com (2603:10a6:20b:3a::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2602.12 via Frontend
 Transport; Mon, 6 Jan 2020 20:49:23 +0000
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>
Subject: [PATCH 09/15] clk: rockchip: set parent rate for DCLK_VOP clock on
 rk3228
Thread-Topic: [PATCH 09/15] clk: rockchip: set parent rate for DCLK_VOP clock
 on rk3228
Thread-Index: AQHVxNLHacXNFUslzEyifyZGfuh7tQ==
Date: Mon, 6 Jan 2020 20:49:24 +0000
Message-ID: <HE1PR06MB401178AA52E982D0DC237338AC3C0@HE1PR06MB4011.eurprd06.prod.outlook.com>
References: <HE1PR06MB4011254424EDB4485617513CAC3C0@HE1PR06MB4011.eurprd06.prod.outlook.com>
In-Reply-To: <HE1PR06MB4011254424EDB4485617513CAC3C0@HE1PR06MB4011.eurprd06.prod.outlook.com>
Accept-Language: sv-SE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM6PR0202CA0044.eurprd02.prod.outlook.com
 (2603:10a6:20b:3a::21) To HE1PR06MB4011.eurprd06.prod.outlook.com
 (2603:10a6:7:9c::32)
x-incomingtopheadermarker: OriginalChecksum:110011F3A9C1BD70C5B00E947A81EB950704B06B1734E20D180BF5E3DE20A457;
 UpperCasedChecksum:E7FDDD854CAA2E5B39E1C757530F6FCFD776B364C699F4D7CF1E8AF0616E6AA1;
 SizeAsReceived:8216; Count:51
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-tmn: [eyFyHUd+p/8/xYO8zF6YKsprj1iScnge]
x-microsoft-original-message-id: <20200106204914.6001-1-jonas@kwiboo.se>
x-ms-publictraffictype: Email
x-incomingheadercount: 51
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 031b4704-6e52-4219-56a5-08d792e9e973
x-ms-traffictypediagnostic: VE1EUR03HT161:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fyravQYXY9cpBv6d7xAD3OC9HSHXaqExWHsWmsHErBv/qAIRBX46ZVMPmOKyMVIwlAFAnY/QHr8WY5e3lYM7qIUA0UkAKvN7Ss29/rYue8jnYH7+EOzgw+ewvfAFcgy2i8yr4FyNOidDAQtQOR+rvo5JkJMKccEwFVcn+U1ESa0Y1lp+ZqqFzdour7bH23xO
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 031b4704-6e52-4219-56a5-08d792e9e973
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2020 20:49:24.2757 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR03HT161
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_124929_126607_2BDB57DD 
X-CRM114-Status: GOOD (  11.65  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe09:0:0:0:82e listed in]
 [list.dnswl.org]
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

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/clk/rockchip/clk-rk3228.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-rk3228.c b/drivers/clk/rockchip/clk-rk3228.c
index d17cfb7a3ff4..25f79af22cb8 100644
--- a/drivers/clk/rockchip/clk-rk3228.c
+++ b/drivers/clk/rockchip/clk-rk3228.c
@@ -410,7 +410,7 @@ static struct rockchip_clk_branch rk3228_clk_branches[] __initdata = {
 			RK2928_CLKSEL_CON(29), 0, 3, DFLAGS),
 	DIV(0, "sclk_vop_pre", "sclk_vop_src", 0,
 			RK2928_CLKSEL_CON(27), 8, 8, DFLAGS),
-	MUX(DCLK_VOP, "dclk_vop", mux_dclk_vop_p, 0,
+	MUX(DCLK_VOP, "dclk_vop", mux_dclk_vop_p, CLK_SET_RATE_PARENT | CLK_SET_RATE_NO_REPARENT,
 			RK2928_CLKSEL_CON(27), 1, 1, MFLAGS),
 
 	FACTOR(0, "xin12m", "xin24m", 0, 1, 2),
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
