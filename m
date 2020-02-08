Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 093AC1563E5
	for <lists+linux-rockchip@lfdr.de>; Sat,  8 Feb 2020 11:49:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KKXH9wtQpv2xuABAsY1+pM64EU1JJHZ3CzXb7Oy+1Gs=; b=tSgy7W++X0vE8M
	m3tpvUVA/zrZnJ60qjDs/R7NdsLn7DJ6dgFjnBuZz6Kf5eAmx63ffbJvos93WAI7JMSaB4JrXIT/h
	V6/8Q1yRbzLEvsZz3t5k/HuchjlW8YQrGa/UnAz7el0XLXivSoj7mWUyzcM6T4bf/2CuPIRVDlLxN
	jR8ApWET/VE4p3P1rMV9w/gSSKtuohMCX1wVL0FcYwx58/37znL0Wq9CEE8+XV7Lz8dNdsbQlLXjr
	/D6ei6t5fe1NVk7vrUMkaMgGbF059NV9llmMCCdvoushgMANikYYeaVoBxh/o4UXw83KwK8E5KoQq
	H/24V3pe4v3/mDgc8Ggg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0Nff-00089R-GY; Sat, 08 Feb 2020 10:49:07 +0000
Received: from mail-db8eur05on2064.outbound.protection.outlook.com
 ([40.107.20.64] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0Nfb-00088O-Ps
 for linux-rockchip@lists.infradead.org; Sat, 08 Feb 2020 10:49:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j62iWEAvBdGupTLdRY4q1mrc3bpxzwuouPMv9Py2Dyh8Y+jZsw69lUbB+sK3X+uvcYe6217HsSwDY222biC52AVFFvjgEdJsC1xFF6qvZmccGIS6FNXM6FBZmqsU5LGpQ/gyazc/5kb8u7p4tHE/j0F8IT21OGAf9DEWyxwg+wpNWvKTxFg+jy2TZiRc7L7IS6VrKBkCneqEOWKtQzj2wUyEOAi1/kdfbdjSe8r/qFkYOL9KHlohq06vVsWqK9opDFQy+g0Lqxcgo2WX9mbWfx8bWngGsBYeTUMrxYrVPU1C2N7HAlPGgyg+1CDHjrJl+ZzeueH9/nsaCzgZjj2UKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fRgvaf4eW4Zb1bjgFcri3UcbkIJxBr42Ke4ZKduJsMA=;
 b=RU+IPtcqCWfBeq1CXhv+wUvmtn4vROwdw7Y+uSFVXHHK4JyeObqvNKCdU+v9ord4xLvk+4KIIbaARZ3i3kt1m2edqGMpM5sCHztYIJoClmSVBCtelL2mywkHf8lfSLJ3f1UK26QKUgTK3lcpobgC34HTYOIn9vjbnN3WUpE1wGjKiO6X5JhlWz8+Dwd0dzyXONsnlpnYvyuuewr76oxw4uueRqUcuKH7QL4PiHJ3vAA0vXYuRqJJzfWpJn9mEjaPzdewnxHR5T/UulFDrkFVUB03tAZ2n4PSVRm3vXGTxYd2NfkVdZnsWTJmnuFntm+zwck0kMfdixM7wZSgHzWFzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nextfour.com; dmarc=pass action=none header.from=nextfour.com;
 dkim=pass header.d=nextfour.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=NextfourGroupOy.onmicrosoft.com;
 s=selector2-NextfourGroupOy-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fRgvaf4eW4Zb1bjgFcri3UcbkIJxBr42Ke4ZKduJsMA=;
 b=nF3eV/78fu47MfwgdJstkp9uw4tIXGvbEKWC+4V2wmtNFFhUuuqrkh8dOV/bOIoYvM3HWwYc4HBmAf6mi2PIkc7monzjQrtojTtNkZ8lBYpyhhSqCgwTC0tJFe7TdpfNXl0oMx2DZdpmkeg33Sz0UKdGubecZtYLdqxe/sjnLuc=
Received: from VI1PR03MB3775.eurprd03.prod.outlook.com (52.134.21.155) by
 VI1PR03MB6285.eurprd03.prod.outlook.com (10.186.161.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.24; Sat, 8 Feb 2020 10:48:58 +0000
Received: from VI1PR03MB3775.eurprd03.prod.outlook.com
 ([fe80::ed88:2188:604c:bfcc]) by VI1PR03MB3775.eurprd03.prod.outlook.com
 ([fe80::ed88:2188:604c:bfcc%7]) with mapi id 15.20.2707.024; Sat, 8 Feb 2020
 10:48:57 +0000
Received: from [192.168.1.121] (91.145.109.188) by
 HE1PR0202CA0016.eurprd02.prod.outlook.com (2603:10a6:3:8c::26) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.21 via Frontend Transport; Sat, 8 Feb 2020 10:48:56 +0000
From: =?utf-8?B?TWlrYSBQZW50dGlsw6Q=?= <mika.penttila@nextfour.com>
To: "heiko@sntech.de" <heiko@sntech.de>, "hjc@rock-chips.com"
 <hjc@rock-chips.com>
Subject: rk3399 mipi dsi 1 for primary display
Thread-Topic: rk3399 mipi dsi 1 for primary display
Thread-Index: AQHV3m1dt9jMyBOcikOhODaM49tf+w==
Date: Sat, 8 Feb 2020 10:48:57 +0000
Message-ID: <845421b7-20b6-d599-c13e-b395e55c0706@nextfour.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR0202CA0016.eurprd02.prod.outlook.com
 (2603:10a6:3:8c::26) To VI1PR03MB3775.eurprd03.prod.outlook.com
 (2603:10a6:803:2b::27)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mika.penttila@nextfour.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [91.145.109.188]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ed3d9702-aa6e-43f6-5ed9-08d7ac847f9e
x-ms-traffictypediagnostic: VI1PR03MB6285:
x-microsoft-antispam-prvs: <VI1PR03MB628560D6E5095B6FDF04CC2C831F0@VI1PR03MB6285.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 03077579FF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(39830400003)(346002)(396003)(136003)(366004)(199004)(189003)(4744005)(5660300002)(52116002)(66446008)(64756008)(66946007)(66556008)(66476007)(4326008)(6486002)(8676002)(81156014)(2906002)(81166006)(31686004)(8936002)(508600001)(36756003)(2616005)(956004)(31696002)(16576012)(86362001)(110136005)(186003)(16526019)(316002)(71200400001)(26005)(85182001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR03MB6285;
 H:VI1PR03MB3775.eurprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nextfour.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +Ije8eZnDD9E3ADAkoIZDo8dzFdTzx9xQnjLtgNlmSsaFxutYZf1z8LLz22QiFm9D8/M018+Z7/H3mMAkwbzgy79eY+C3jZEp9ruwjr0yZkM/JqLY53Ddxx65qZ2TuJmFsltyG/KbrDgPbv41b1ts4givJ959ZREEb9GHBXyXjItYWQBPc7ILz730olCtmopjTiV6Pb0JAkSXmtfruy1lAQ6vJedyZf0FNo0qADqIBdxXmBm0X8TSYHM0GqT999lBA1BIr6s3R6hxVBgTAX/zzQ29jeWrYgVRhUpONvodCGPkXOtLyeel30uFKF5t2Pql2vaG9tE6svxne3cSKlaaFHQRJNYqSQfFnJCPgGcsJXS0Zmdjrn6Tzc6TAA4nWkiWRqX70MHe8mLo/IFOaZjRgeqUECXUTxPkFLMUqEx6l/PJObwoi39bi0FLjOgS27a
x-ms-exchange-antispam-messagedata: FC6iZ6M5CzWRZqyWY7DJFa7GYieAvzoaih9fUwSg9cJ19TVsIeVPLwyddm4F+4JNABfQJcAW+Mp0dF0kE5j3wdLZFOrhJ6Jiw+ueJlWjbZkmKpPM2zs7WxlHteNlonaHDwJa9uBjrT2uhYBCQXz15w==
x-ms-exchange-transport-forked: True
Content-ID: <39821083F77B524B822EA29D17C2B01E@eurprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nextfour.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ed3d9702-aa6e-43f6-5ed9-08d7ac847f9e
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Feb 2020 10:48:57.5359 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 972e95c2-9290-4a02-8705-4014700ea294
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: geEQy/MetXoMNK0lXT2soMAh3jZLOZIWYxK10Y8nKeVZpGOdavn9jRfpQX5ibjdCW+cTbfu114nnJLLvgxiofUb0pnw67jzOJdhI7FWKCq0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR03MB6285
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200208_024903_896256_ADF6C730 
X-CRM114-Status: UNSURE (   4.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkhDQoNCldlIGFyZSBzdHJ1Z2dsaW5nIHRvIGdldCBSSzMzOTkgTUlQSSBEU0kgMSBpbnRlcmZh
Y2Ugd29yayBhcyBhbiANCmluZGVwZW5kZW50IGRpc3BsYXkgb3V0cHV0LiBXZSB3b3VsZCBsaWtl
IGEgdHdvIGRpc3BsYXkgc29sdXRpb24sIHdpdGggDQppbmRlcGVuZGVudCBvdXRwdXRzIGluIGRz
aTAgYW5kIGRzaTEuDQpOb3csIHRoZSBkc2kwIHdvcmtzIGZpbmUuIEFuZCB0b2dldGhlciBkc2kw
IGFuZCBoZG1pIHdvcmtzIGZpbmUuIEJ1dCANCndoZW4gaGRtaSBzd2l0Y2hlZCB0byBkc2kxLCBv
bmx5IGRzaTAgd29ya3MuIFNvLCBpcyBpdCBwb3NzaWJsZSB0byBkcml2ZSANCmRzaTEgaW5kZXBl
bmRlbnRseT8NCg0KV2UgZm91bmQgc29tZSBjYXNlcyB3aXRoIGR1YWwgbWlwaSBzZXR1cHMgKGxp
a2UgZHNpMCBhbmQgZHNpMSBvdXRwdXQgdG8gDQpvbmUgcGFuZWwpLCBidXQgbm8gb25lIHNlZW1z
IHRvIHVzZSBkc2kxIG9uIGl0cyBvd24/IFNvLCB3ZSB3b3VsZCANCmFwcHJlY2lhdGUgdG8ga25v
dywgaXMgdGhpcyBraW5kIG9mIHNldHVwIHBvc3NpYmxlPw0KDQpUaGFua3MsDQpNaWthIFBlbnR0
aWzDpA0KTmV4dGZvdXINCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
