Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CBB214A7ED
	for <lists+linux-rockchip@lfdr.de>; Mon, 27 Jan 2020 17:18:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UKwWCzC77SCriyMntsqFo1JgOOms1IqhN0/5xyhtC+o=; b=blf6SKnR9BB3+1
	aSW/rN6NymaQhCX++nriy2FPLrDXg6WiwjOSizKgNezwMZqZjavA5HBgSCfAx5+q28W4Emp+D4SiS
	ko+sDjUUPAjcugWEM7iaPVnZlSNoQ/UvTV8Sk+sq7Fj5PCCDuDn84uQBh23gCs5YfoJxETDrmWeja
	NcavakHPSLWPJnhr1IwlyQn1UZRUoAasFJz6cg5/izLUKmlTvZKCO0SogMObAjqQuf1aNS8qXlkel
	BZIieOa+dgr54Rimsd+RBJUUIISardskd9rf6oWNaSkG/wXq/TYxU5Sqd5D26xpTaHCWdCya4mQb/
	g21hEs9WVOo75kp7DKDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw75g-0003ZY-C9; Mon, 27 Jan 2020 16:18:20 +0000
Received: from mail-eopbgr40042.outbound.protection.outlook.com ([40.107.4.42]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw75c-0003Yt-TK
 for linux-rockchip@lists.infradead.org; Mon, 27 Jan 2020 16:18:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O4+Cpb7ah4mc7PTTPvPqUWy0JtmO82LGwQAAhBoCvmynBwgDlTji8tEksEoUQEEEUmblyMgqpV4Bq/Y3TMrvOb9ZfRRZcEEMymyH1iOmr41miYA7ckqIu9pCP9wpRRhFqF0F/gyXnkLgDSqR82HlmbnlLJ7d4CQggYrnL15ES5s090yGeMVVfWTG6uFD3twoD84cWTtB4FDy5QgG/+w1uhqUBeBXv4GDz9vDBwmigREQaYY3qdjcGTSjMLe278h8IB3WxGQdCvgHBaEbU8APkOE34hi8HCKXC/ZqbR6sRQp3jQAN8W78nQGQKQAgILK6r2taBuPepgCxB3fofuJ8uA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rpf3i8MnlA/X4E0Y1lItO4MWc+oS0Z8KhaSo2Gu/GW8=;
 b=eyAQCqoBqJbH0j/oy/fAzRKXIxUg6k9ku7EX4MAG7FOQKWb5jvarg16+Lx/8OuZ35VNIYmpPcVI1rnYIiDM+5YxOP/y9jz/Qbc6O2osasvhcdR7GX/UJExMsqoKP/hCCNeU6JAfPmozRBOcy9ztMi0NE6Lq6Pv/+soo0o7tktauhPRAnPIdXuRF8OsLY7kmJB3g/x//paPSqv95v68rTKDk9NOBUkYwQAdCnhh023pJvtHqUa0HHhczdNXfcPQllBCgLJGDm+YKWhZc5lG34pKLxD7spI7qr2iQuOK/el597ZD46RYTK1biEvh7pDbWhqOjXGJIDQGRF3hN3U97sfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nextfour.com; dmarc=pass action=none header.from=nextfour.com;
 dkim=pass header.d=nextfour.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=NextfourGroupOy.onmicrosoft.com;
 s=selector2-NextfourGroupOy-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rpf3i8MnlA/X4E0Y1lItO4MWc+oS0Z8KhaSo2Gu/GW8=;
 b=p1FCDOXqdWOslhHFU+RF+CfSoaeSKtqf8KFt523PNrTl70CTUkobEZuDJ5GfbNU5QviUtV+Lvo1re/uX+05PoAB/6+zclGLNn0IPlpulCfXN+k3P+5YgKUhtxwCg3MnpvHKlpNU40oCwGT9e6yBw1dIsGmOTeGDSczc9Vnq0PoA=
Received: from VI1PR03MB3775.eurprd03.prod.outlook.com (52.134.21.155) by
 VI1PR03MB4896.eurprd03.prod.outlook.com (20.178.15.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.24; Mon, 27 Jan 2020 16:18:11 +0000
Received: from VI1PR03MB3775.eurprd03.prod.outlook.com
 ([fe80::fdfe:b987:16ad:9de9]) by VI1PR03MB3775.eurprd03.prod.outlook.com
 ([fe80::fdfe:b987:16ad:9de9%5]) with mapi id 15.20.2665.017; Mon, 27 Jan 2020
 16:18:11 +0000
Received: from [192.168.1.121] (91.145.109.188) by
 HE1PR0202CA0008.eurprd02.prod.outlook.com (2603:10a6:3:8c::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.22 via Frontend Transport; Mon, 27 Jan 2020 16:18:10 +0000
From: =?utf-8?B?TWlrYSBQZW50dGlsw6Q=?= <mika.penttila@nextfour.com>
To: "hjc@rock-chips.com" <hjc@rock-chips.com>
Subject: Interfacing mipi-lvds bridge with rk3399
Thread-Topic: Interfacing mipi-lvds bridge with rk3399
Thread-Index: AQHV1S1exDZDNXtx80WTyob83jkbZQ==
Date: Mon, 27 Jan 2020 16:18:10 +0000
Message-ID: <2bf23a36-1b6c-c793-20f9-39aec71afc63@nextfour.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR0202CA0008.eurprd02.prod.outlook.com
 (2603:10a6:3:8c::18) To VI1PR03MB3775.eurprd03.prod.outlook.com
 (2603:10a6:803:2b::27)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mika.penttila@nextfour.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [91.145.109.188]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 956a7f2f-fca4-424a-fb7b-08d7a34480a3
x-ms-traffictypediagnostic: VI1PR03MB4896:
x-microsoft-antispam-prvs: <VI1PR03MB48963ED342C0EE41433ADB1B830B0@VI1PR03MB4896.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02951C14DC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(376002)(346002)(396003)(39840400004)(366004)(199004)(189003)(66946007)(66476007)(6916009)(6486002)(66556008)(5660300002)(31696002)(64756008)(66446008)(81166006)(52116002)(81156014)(8676002)(86362001)(8936002)(2906002)(36756003)(54906003)(4326008)(956004)(2616005)(31686004)(85182001)(508600001)(16526019)(16576012)(26005)(316002)(71200400001)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR03MB4896;
 H:VI1PR03MB3775.eurprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nextfour.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GJgFY0ilsljDNIqbmcg7ysmCOuT4FgWOzLUsDsGaXu8bSg1q3kDqxSw1Q8Btt8Nla/oDQXjIoqUvsgymEEwamu9xjytL03wSG/cArscvIQVgOkI27cLLb0bUS4Eah7bcxBjFEYhu8HrGMGEXt7QzHUlfuR2QKAZm11UjaQ6mAVlVMKe5yTiyYdgS30W0/3q/8gBu30UNxphD3DHAu+QuJN1hk2Uxz7S/SjZwtcU3E2YpKOfNKYsAS4MSIEiuby9JbYeVREvnLE7vKnDDAPueVFYnEkUQSIPYiLdv8cxR7JbxiMAHPX6mr55nk4nwkLRDP6rCjTpzgjQjnIYkFRxJ75c0ImnSMLNtLcRHT6OIunjgVjNGyjyuAsPCfqAkchOOZqCDYRq3TcaJ2PjRKTlnwu4/DE5840hc63dqbAw/OfCA8l8x5CCyxyP6QXJyR3wh
x-ms-exchange-antispam-messagedata: OAFKPqAPHHxXHhXuE1UfIFS0R0enmN56UnG+XJvNWhFrd5DZyDlV9rEO6gv9UbgA8SozC2IXCuvGedJcqHFnWgPFMvvsEDGNw2xTEQoRWzLhZQOlocUNc4fg1cKGxCxpYB7JMwn4QY3+Uvt2hHE7ng==
x-ms-exchange-transport-forked: True
Content-ID: <B660F7DC3638D6449B92F45E75C83E24@eurprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nextfour.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 956a7f2f-fca4-424a-fb7b-08d7a34480a3
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2020 16:18:11.0566 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 972e95c2-9290-4a02-8705-4014700ea294
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Hh/AKsHO6LvzfzfIwCz0NeRrlQrbW6pghfJUd5+4iVmPNNBYFdmAD8i7AZYHbuKopyyRK0AV1reSYg6RU1lAboULmwPtUPfeVZJ+RA5N5No=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR03MB4896
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_081817_003020_E0859BBC 
X-CRM114-Status: UNSURE (   6.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.42 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGksDQoNCldlIGFyZSBkZXZlbG9waW5nIGEgY3VzdG9tIGJvYXJkLCBpbiB3aGljaCB3ZSBhcmUg
dXNpbmcgdGhlIHJrMzM5OSBzb2MuIA0KV2UgaGF2ZSBMVkRTIGRpc3BsYXlzLCBhbmQgdXNlIFRJ
IFNONjVkc2k4NCBicmlkZ2UgYXMgYSBtaXBpLWx2ZHMgYnJpZGdlLg0KVGhlIGJyaWRnZSBkZW1h
bmRzIHRoZSBEU0kgZGF0YSBsYW5lcyBiZSBpbiBMUC0xMSBzdGF0ZSAoc3RvcCBzdGF0ZSkuIFdl
IA0KZGV2ZWxvcGVkIHN1cHBvcnQgZm9yIHRoZSBicmlkZ2UgYXMgYSBEUk0gYnJpZGdlIG1vZHVs
ZS4gSXQgZ2V0cyBjYWxsZWQgDQppbiB0aGUgcGxhY2VzIHdlIHdhbnQsIGJ1dCB0aGUgcHJvYmxl
bSBpcyB0aGUgZGF0YSBsYW5lcywgbm8gaW4gTFAtMTEuIA0KSW5zdGVhZCwgdGhleSBzZWVtIHRv
IGJlIGxvd2lzaCwgdW50aWwgZGF0YSBzdGFydHMgKHRoZXkgc2VlbSB0byB2aXNpdCANCkxQLTEx
IGEgYSBzaG9ydCB0aW1lLCBsaWtlIDVtcyBiZWZvcmUgZGF0YSBzdHJlYW0uIFRoaXMgaXMgbm90
IGVub3VnaCANCmFuZCBub3QgdW5kZXIgb3VyIGNvbnRyb2wuIFdlIHdvdWxkIGxpa2UgdG8gZGVt
YW5kIHRoZSBtaXBpIGRocHkgaW50byANCkxQLTExIChvciBtYWtlIHN1cmUgaXQgc3RheXMgdGhl
cmUgZnJvbSBwb3dlcnVwL3Jlc2V0KS4gQW5kIGFmdGVyIA0KY29uZmlndXJpbmcgYnJpZGdlLCBs
ZXQgdGhlIGRhdGEgbGVhdmUgTFAtMTEuDQoNCkRvY3VtZW50YXRpb24gc3RhdGVzIHRoYXQgdGhl
IGRhdGEgc2hvdWxkIGJlIExQLTExIHVwb24gcGh5IHJlc2V0LiBIb3cgDQpjb21lIGl0IGlzIG5v
dD8gQW5kLCB3aGlsZSBib290aW5nLCB3ZSBzZSBhIGNvdXBsZSBvZiBzZXQgbW9kZSBjYWxscywg
DQpkdXJpbmcgd2hpY2ggdGhlIHBoeSBpcyBjb25maWd1cmVkLiBEdXJpbmcgdGhlIHBoeSBpbml0
LCB0aGVyZSdzIGNvZGUgdG8gDQp3YWl0IGZvciB0aGUgcGh5IGVudGVyIHN0b3Agc3RhdGUuIEZp
cnN0IHRpbWUgdGhlIHBoeSBzdGF0dXMgc2F5cyBpdCBoYXMgDQplbnRlcmVkIHN0b3Agc3RhdGUu
IEJ1dCBzZWNvbmQgdGltZSB0aGUgd2FpdCB0aW1lb3V0cyAoYWZ0ZXIgMTBtcyBvciANCnNvKS4g
V2l0aCBvc2NpbGxvc2NvcGUgYW55dGhpbmcgbGlrZSBMUC0xMSBpc24ndCBvYnNlcnZlZC4NCg0K
SGFzIHNvbWVvbmUgc3VjY2Vzc2Z1bGx5IGludGVncmF0ZWQgU042NWRzaTh4IHdpdGggcmszMzk5
ID8gRG9lcyBzb21lb25lIA0KaGF2ZSBpbmZvcm1hdGlvbiBvbiBob3d0byBjb21tYW5kIHRoZSBw
aHkgd3J0IHN0b3Agc3RhdGVzIGFuZCBob3cgaXQgDQpzaG91bGQgYmVoYXZlPw0KDQpUaGFua3Mg
aW4gYWR2YW5jZSwNCk1pa2EgUGVudHRpbMOkDQpOZXh0Zm91cg0KDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
