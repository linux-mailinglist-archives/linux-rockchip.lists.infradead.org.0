Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27899B1869
	for <lists+linux-rockchip@lfdr.de>; Fri, 13 Sep 2019 08:38:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mx0mOhFzHzk1/itTcua3q306UnPJ9prj53vIhEjUkyc=; b=hDxFTBhrICR4m1
	c3CRN38MxyGl9dtto6SUx1pfAvLIGn4tO818DKHEC/4VhjsgYUlau7DwKsObhmlKEFQwQ3B0ocLCN
	M9rOJBGXV/vUmmZuzCrqXi/I9WnZjmIynPoDqj74HeATL/4loXCvPDhUT1qLJpzY3VqySC2pBz1t8
	BP0z9xWu6xdkOBWoTMC8IRKoGd5lRCBdVOTPLwA19ZNCnSBhEH9jldxI4kt5R7qTqtIFOrBpfKo6C
	uIx7mbgcHuUxGLpN8EXGjxC4n+aPBM+hn/Y1B9wFAnqBkB0DggsxFZl5GTbkpX2xX6Uwvt3+Of8bC
	1VTDQaTmU3ClZi5nqmXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8fDS-0007v5-KH; Fri, 13 Sep 2019 06:37:58 +0000
Received: from mail-oln040092066080.outbound.protection.outlook.com
 ([40.92.66.80] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8fDN-0007uM-1q; Fri, 13 Sep 2019 06:37:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VBSdmeNZXooAjZ51uJTvtetiDMWDRjVx2w8zeyXt+9vMKmoyEzhu87ZiAQs63lNcXuNJjRh8sHH8DDEuxgaCdIx8JNoTZnFa/spwH6veygFo+m7FL30PRre9ITRQqEgoXEXcSkMvcZSxmAfgY9ybDOom/8hAl5cpqJesAuPBWmmpUv3WAJl7fICluM/mw2Q5ItahxzlZ22SBFbYKyXXDtavPtlx4SINgqXVKjpdiBu4XtbaXQK/qbxBHNYzBshbuRDSh9jNP2tTXWHulNwHoBGI6Ozhb8Hua5QKYDk+L5ag44JFfy5RGI0SyeJBRZRGyokk8MD9HjHKnRzsl2r757g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FD33I4CnbOoIZXTWQhSYLQGkzL5Eks5OfKuj/SoX+oU=;
 b=AKDCXepLAGFmIQwFw7zMa7z+aEKov6Nmt0uCq+rD+edwjWHRiJt2bEsRrW01MEV0AjGVzifcDUKCjarnq5O/awo0lkZOm0Q92fN8+EeS1V3KGUBZjaTVJP+wDDobnRNxMiiqAMW9ybpc1lFWirBicPBmLIEDF2omENZLUBzMXVupLlNPSpFVnQAWrGo+FVXUOnDTgX53Fj/WysASkhhjHoC3gm/Iknaz4vG1A3towtswvu46cV2sYwjy1fHz/LhQsJCWsiAJV0EgSnYb/2K4fy++BlZsAD+8fzvG8gnzFLISFBdn7OjYOErYS5Muycq3UHwT6UGZBnq+ZRTPGSHJ+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from HE1EUR01FT009.eop-EUR01.prod.protection.outlook.com
 (10.152.0.53) by HE1EUR01HT090.eop-EUR01.prod.protection.outlook.com
 (10.152.0.234) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2263.14; Fri, 13 Sep
 2019 06:37:48 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com (10.152.0.51) by
 HE1EUR01FT009.mail.protection.outlook.com (10.152.0.77) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.14 via Frontend Transport; Fri, 13 Sep 2019 06:37:48 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::59e6:329d:5fc7:5181]) by HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::59e6:329d:5fc7:5181%5]) with mapi id 15.20.2263.016; Fri, 13 Sep 2019
 06:37:48 +0000
From: Jonas Karlman <jonas@kwiboo.se>
To: Cheng-yi Chiang <cychiang@chromium.org>, Neil Armstrong
 <narmstrong@baylibre.com>
Subject: Re: [PATCH v3] drm: bridge/dw_hdmi: add audio sample channel status
 setting
Thread-Topic: [PATCH v3] drm: bridge/dw_hdmi: add audio sample channel status
 setting
Thread-Index: AQHVaHqty26Lc6bIMEuQg/gPSpfFtqcmqayAgAAIdgCAAAJWAIACdhEA
Date: Fri, 13 Sep 2019 06:37:48 +0000
Message-ID: <HE1PR06MB4011478532D8E127697565EDACB30@HE1PR06MB4011.eurprd06.prod.outlook.com>
References: <20190911082646.134347-1-cychiang@chromium.org>
 <1e2ec69d-e42d-4e1b-7ce9-d1620cfbb4c9@baylibre.com>
 <10668907.r1TyVuJQb1@jernej-laptop>
 <CAFv8NwJGa0HXsnv2MvJhknpr9PxUL3jH2HZLSLiSD5s_nHiQhQ@mail.gmail.com>
In-Reply-To: <CAFv8NwJGa0HXsnv2MvJhknpr9PxUL3jH2HZLSLiSD5s_nHiQhQ@mail.gmail.com>
Accept-Language: sv-SE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR05CA0260.eurprd05.prod.outlook.com
 (2603:10a6:3:fc::12) To HE1PR06MB4011.eurprd06.prod.outlook.com
 (2603:10a6:7:9c::32)
x-incomingtopheadermarker: OriginalChecksum:0A9513CBD2F7EFBB41B050733BF55EF66F9D864D7ECB34B3057B554020B662EA;
 UpperCasedChecksum:98CCC11B74229187E985D0A3744A897E90E9B90B12C7598B8F9F55302ADD9FA6;
 SizeAsReceived:8804; Count:49
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [Q06wjDO5ZboKchG8QcdX9Y8qbdDz3Llm]
x-microsoft-original-message-id: <f440f26b-17a5-4ef8-9882-2f65ba03a9e4@kwiboo.se>
x-ms-publictraffictype: Email
x-incomingheadercount: 49
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031322404)(2017031323274)(2017031324274)(1601125500)(1603101475)(1701031045);
 SRVR:HE1EUR01HT090; 
x-ms-traffictypediagnostic: HE1EUR01HT090:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-message-info: Jj85xVSsT8WAmd5FQNIXLMx33pIPEwgKoxPcYftzPK/Jjh9GswAwWwy+lkYJOVWlmyLRKxzMfWNDv7fqXoaoBFAobTaoOPeRInImOSo84hdaZcRg9VIwfXBIt6MmOkiq+mnP1rk0kqqvempZHxDtaF3VR5W6TqEriDZEKJ1OvzML5WW6CpYj2uWeP5isDsN9
x-ms-exchange-transport-forked: True
Content-ID: <508EFBAB81BC044FAAE4C9C07A95AA99@eurprd06.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ed19132-f45e-416c-780a-08d73814e4bf
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Sep 2019 06:37:48.8237 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1EUR01HT090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_233753_264832_E30AAA89 
X-CRM114-Status: GOOD (  20.38  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.66.80 listed in list.dnswl.org]
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
Cc: "moderated list:SOUND - SOC LAYER / DYNAMIC
 AUDIO POWER MANAGEM..." <alsa-devel@alsa-project.org>,
 Doug Anderson <dianders@chromium.org>,
 "kuninori.morimoto.gx@renesas.com" <kuninori.morimoto.gx@renesas.com>,
 David Airlie <airlied@linux.ie>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "cain.cai@rock-chips.com" <cain.cai@rock-chips.com>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Yakir Yang <ykk@rock-chips.com>, "sam@ravnborg.org" <sam@ravnborg.org>,
 Jerome Brunet <jbrunet@baylibre.com>, Xing Zheng <zhengxing@rock-chips.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Dylan Reid <dgreid@chromium.org>,
 "tzungbi@chromium.org" <tzungbi@chromium.org>,
 Jeffy Chen <jeffy.chen@rock-chips.com>,
 =?utf-8?B?6JSh5p6r?= <eddie.cai@rock-chips.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 =?utf-8?B?SmVybmVqIMWga3JhYmVj?= <jernej.skrabec@siol.net>,
 linux-kernel <linux-kernel@vger.kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 "kuankuan.y@gmail.com" <kuankuan.y@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gMjAxOS0wOS0xMSAxOTowMiwgQ2hlbmcteWkgQ2hpYW5nIHdyb3RlOg0KPiBPbiBUaHUsIFNl
cCAxMiwgMjAxOSBhdCAxMjo1NCBBTSBKZXJuZWogxaBrcmFiZWMgPGplcm5lai5za3JhYmVjQHNp
b2wubmV0PiB3cm90ZToNCj4+IERuZSBzcmVkYSwgMTEuIHNlcHRlbWJlciAyMDE5IG9iIDE4OjIz
OjU5IENFU1QgamUgTmVpbCBBcm1zdHJvbmcgbmFwaXNhbChhKToNCj4+PiBPbiAxMS8wOS8yMDE5
IDEwOjI2LCBDaGVuZy1ZaSBDaGlhbmcgd3JvdGU6DQo+Pj4+IEZyb206IFlha2lyIFlhbmcgPHlr
a0Byb2NrLWNoaXBzLmNvbT4NCj4+Pj4NCj4+Pj4gV2hlbiB0cmFuc21pdHRpbmcgSUVDNjA5ODUg
bGluZWFyIFBDTSBhdWRpbywgd2UgY29uZmlndXJlIHRoZQ0KPj4+PiBBZHVpbyBTYW1wbGUgQ2hh
bm5lbCBTdGF0dXMgaW5mb3JtYXRpb24gaW4gdGhlIElFQzYwOTU4IGZyYW1lLg0KPj4+PiBUaGUg
c3RhdHVzIGJpdCBpcyBhbHJlYWR5IGF2YWlsYWJsZSBpbiBpZWMuc3RhdHVzIG9mIGhkbWlfY29k
ZWNfcGFyYW1zLg0KPj4+Pg0KPj4+PiBUaGlzIGZpeCB0aGUgaXNzdWUgdGhhdCBhdWRpbyBkb2Vz
IG5vdCBjb21lIG91dCBvbiBzb21lIG1vbml0b3JzDQo+Pj4+IChlLmcuIExHIDIyQ1YyNDEpDQo+
Pj4+DQo+Pj4+IE5vdGUgdGhhdCB0aGVzZSByZWdpc3RlcnMgYXJlIG9ubHkgZm9yIGludGVyZmFj
ZXM6DQo+Pj4+IEkyUyBhdWRpbyBpbnRlcmZhY2UsIEdlbmVyYWwgUHVycG9zZSBBdWRpbyAoR1BB
KSwgb3IgQUhCIGF1ZGlvIERNQQ0KPj4+PiAoQUhCQVVERE1BKS4NCj4+Pj4gRm9yIFMvUERJRiBp
bnRlcmZhY2UgdGhpcyBpbmZvcm1hdGlvbiBjb21lcyBmcm9tIHRoZSBzdHJlYW0uDQo+Pj4+DQo+
Pj4+IEN1cnJlbnRseSB0aGlzIGZ1bmN0aW9uIGR3X2hkbWlfc2V0X2NoYW5uZWxfc3RhdHVzIGlz
IG9ubHkgY2FsbGVkDQo+Pj4+IGZyb20gZHctaGRtaS1pMnMtYXVkaW8gaW4gSTJTIHNldHVwLg0K
Pj4+Pg0KPj4+PiBTaWduZWQtb2ZmLWJ5OiBZYWtpciBZYW5nIDx5a2tAcm9jay1jaGlwcy5jb20+
DQo+Pj4+IFNpZ25lZC1vZmYtYnk6IENoZW5nLVlpIENoaWFuZyA8Y3ljaGlhbmdAY2hyb21pdW0u
b3JnPg0KPj4+PiAtLS0NCj4+Pj4NCj4+Pj4gQ2hhbmdlIGZyb20gdjIgdG8gdjM6DQo+Pj4+IDEu
IFJldXNlIHdoYXQgaXMgYWxyZWFkeSBzZXQgaW4gaWVjLnN0YXR1cyBpbiBod19wYXJhbS4NCj4+
Pj4gMi4gUmVtb3ZlIGFsbCB1c2VsZXNzIGRlZmluaXRpb24gb2YgcmVnaXN0ZXJzIGFuZCB2YWx1
ZXMuDQo+Pj4+IDMuIE5vdGUgdGhhdCB0aGUgb3JpZ2luYWwgc2FtcGxpbmcgZnJlcXVlbmN5IGlz
IG5vdCB3cml0dGVuIHRvDQo+Pj4+DQo+Pj4+ICAgIHRoZSBjaGFubmVsIHN0YXR1cyBhcyB3ZSBy
ZXVzZSBjcmVhdGVfaWVjOTU4X2NvbnN1bWVyIGluIHBjbV9pZWM5NTguYy4NCj4+Pj4gICAgV2l0
aG91dCB0aGF0IGl0IGNhbiBzdGlsbCBwbGF5IGF1ZGlvIGZpbmUuDQo+Pj4+DQo+Pj4+ICAuLi4v
ZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1oZG1pLWkycy1hdWRpby5jICAgfCAgMSArDQo+Pj4+ICBk
cml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LWhkbWkuYyAgICAgfCAyMCArKysrKysr
KysrKysrKysrKysrDQo+Pj4+ICBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LWhk
bWkuaCAgICAgfCAgMiArKw0KPj4+PiAgaW5jbHVkZS9kcm0vYnJpZGdlL2R3X2hkbWkuaCAgICAg
ICAgICAgICAgICAgIHwgIDEgKw0KPj4+PiAgNCBmaWxlcyBjaGFuZ2VkLCAyNCBpbnNlcnRpb25z
KCspDQo+Pj4+DQo+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9w
c3lzL2R3LWhkbWktaTJzLWF1ZGlvLmMNCj4+Pj4gYi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5
bm9wc3lzL2R3LWhkbWktaTJzLWF1ZGlvLmMgaW5kZXgNCj4+Pj4gMzRkOGU4Mzc1NTVmLi4yMGY0
ZjkyZGQ4NjYgMTAwNjQ0DQo+Pj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3Bz
eXMvZHctaGRtaS1pMnMtYXVkaW8uYw0KPj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdl
L3N5bm9wc3lzL2R3LWhkbWktaTJzLWF1ZGlvLmMNCj4+Pj4gQEAgLTEwMiw2ICsxMDIsNyBAQCBz
dGF0aWMgaW50IGR3X2hkbWlfaTJzX2h3X3BhcmFtcyhzdHJ1Y3QgZGV2aWNlICpkZXYsDQo+Pj4+
IHZvaWQgKmRhdGEsPg0KPj4+PiAgICAgfQ0KPj4+Pg0KPj4+PiAgICAgZHdfaGRtaV9zZXRfc2Ft
cGxlX3JhdGUoaGRtaSwgaHBhcm1zLT5zYW1wbGVfcmF0ZSk7DQo+Pj4+DQo+Pj4+ICsgICBkd19o
ZG1pX3NldF9jaGFubmVsX3N0YXR1cyhoZG1pLCBocGFybXMtPmllYy5zdGF0dXMpOw0KPj4+Pg0K
Pj4+PiAgICAgZHdfaGRtaV9zZXRfY2hhbm5lbF9jb3VudChoZG1pLCBocGFybXMtPmNoYW5uZWxz
KTsNCj4+Pj4gICAgIGR3X2hkbWlfc2V0X2NoYW5uZWxfYWxsb2NhdGlvbihoZG1pLCBocGFybXMt
DQo+Pj4gY2VhLmNoYW5uZWxfYWxsb2NhdGlvbik7DQo+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LWhkbWkuYw0KPj4+PiBiL2RyaXZlcnMvZ3B1L2Ry
bS9icmlkZ2Uvc3lub3BzeXMvZHctaGRtaS5jIGluZGV4DQo+Pj4+IGJkNjVkMDQ3OTY4My4uYWE3
ZWZkNGRhMWM4IDEwMDY0NA0KPj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9w
c3lzL2R3LWhkbWkuYw0KPj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lz
L2R3LWhkbWkuYw0KPj4+PiBAQCAtNTgyLDYgKzU4MiwyNiBAQCBzdGF0aWMgdW5zaWduZWQgaW50
IGhkbWlfY29tcHV0ZV9uKHVuc2lnbmVkIGludCBmcmVxLA0KPj4+PiB1bnNpZ25lZCBsb25nIHBp
eGVsX2Nsayk+DQo+Pj4+ICAgICByZXR1cm4gbjsNCj4+Pj4NCj4+Pj4gIH0NCj4+Pj4NCj4+Pj4g
Ky8qDQo+Pj4+ICsgKiBXaGVuIHRyYW5zbWl0dGluZyBJRUM2MDk1OCBsaW5lYXIgUENNIGF1ZGlv
LCB0aGVzZSByZWdpc3RlcnMgYWxsb3cgdG8NCj4+Pj4gKyAqIGNvbmZpZ3VyZSB0aGUgY2hhbm5l
bCBzdGF0dXMgaW5mb3JtYXRpb24gb2YgYWxsIHRoZSBjaGFubmVsIHN0YXR1cw0KPj4+PiArICog
Yml0cyBpbiB0aGUgSUVDNjA5NTggZnJhbWUuIEZvciB0aGUgbW9tZW50IHRoaXMgY29uZmlndXJh
dGlvbiBpcyBvbmx5DQo+Pj4+ICsgKiB1c2VkIHdoZW4gdGhlIEkyUyBhdWRpbyBpbnRlcmZhY2Us
IEdlbmVyYWwgUHVycG9zZSBBdWRpbyAoR1BBKSwNCj4+Pj4gKyAqIG9yIEFIQiBhdWRpbyBETUEg
KEFIQkFVRERNQSkgaW50ZXJmYWNlIGlzIGFjdGl2ZQ0KPj4+PiArICogKGZvciBTL1BESUYgaW50
ZXJmYWNlIHRoaXMgaW5mb3JtYXRpb24gY29tZXMgZnJvbSB0aGUgc3RyZWFtKS4NCj4+Pj4gKyAq
Lw0KPj4+PiArdm9pZCBkd19oZG1pX3NldF9jaGFubmVsX3N0YXR1cyhzdHJ1Y3QgZHdfaGRtaSAq
aGRtaSwNCj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgIHU4ICpjaGFubmVsX3N0YXR1
cykNCj4+Pj4gK3sNCj4+Pj4gKyAgIC8qDQo+Pj4+ICsgICAgKiBTZXQgY2hhbm5lbCBzdGF0dXMg
cmVnaXN0ZXIgZm9yIGZyZXF1ZW5jeSBhbmQgd29yZCBsZW5ndGguDQo+Pj4+ICsgICAgKiBVc2Ug
ZGVmYXVsdCB2YWx1ZXMgZm9yIG90aGVyIHJlZ2lzdGVycy4NCj4+Pj4gKyAgICAqLw0KPj4+PiAr
ICAgaGRtaV93cml0ZWIoaGRtaSwgY2hhbm5lbF9zdGF0dXNbM10sIEhETUlfRkNfQVVEU0NITkxT
Nyk7DQo+Pj4+ICsgICBoZG1pX3dyaXRlYihoZG1pLCBjaGFubmVsX3N0YXR1c1s0XSwgSERNSV9G
Q19BVURTQ0hOTFM4KTsNCj4+Pj4gK30NCj4+Pj4gK0VYUE9SVF9TWU1CT0xfR1BMKGR3X2hkbWlf
c2V0X2NoYW5uZWxfc3RhdHVzKTsNCj4+Pj4gKw0KPj4+Pg0KPj4+PiAgc3RhdGljIHZvaWQgaGRt
aV9zZXRfY2xrX3JlZ2VuZXJhdG9yKHN0cnVjdCBkd19oZG1pICpoZG1pLA0KPj4+Pg0KPj4+PiAg
ICAgdW5zaWduZWQgbG9uZyBwaXhlbF9jbGssIHVuc2lnbmVkIGludCBzYW1wbGVfcmF0ZSkNCj4+
Pj4NCj4+Pj4gIHsNCj4+Pj4NCj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9icmlk
Z2Uvc3lub3BzeXMvZHctaGRtaS5oDQo+Pj4+IGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5v
cHN5cy9kdy1oZG1pLmggaW5kZXgNCj4+Pj4gNjk4OGYxMmQ4OWQ5Li5mY2ZmNTA1OWRiMjQgMTAw
NjQ0DQo+Pj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctaGRtaS5o
DQo+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctaGRtaS5oDQo+
Pj4+IEBAIC0xNTgsNiArMTU4LDggQEANCj4+Pj4NCj4+Pj4gICNkZWZpbmUgSERNSV9GQ19TUERE
RVZJQ0VJTkYgICAgICAgICAgICAgICAgICAgIDB4MTA2Mg0KPj4+PiAgI2RlZmluZSBIRE1JX0ZD
X0FVRFNDT05GICAgICAgICAgICAgICAgICAgICAgICAgMHgxMDYzDQo+Pj4+ICAjZGVmaW5lIEhE
TUlfRkNfQVVEU1NUQVQgICAgICAgICAgICAgICAgICAgICAgICAweDEwNjQNCj4+Pj4NCj4+Pj4g
KyNkZWZpbmUgSERNSV9GQ19BVURTQ0hOTFM3ICAgICAgICAgICAgICAgICAgICAgIDB4MTA2ZQ0K
Pj4+PiArI2RlZmluZSBIRE1JX0ZDX0FVRFNDSE5MUzggICAgICAgICAgICAgICAgICAgICAgMHgx
MDZmDQo+Pj4+DQo+Pj4+ICAjZGVmaW5lIEhETUlfRkNfREFUQUNIMEZJTEwgICAgICAgICAgICAg
ICAgICAgICAweDEwNzANCj4+Pj4gICNkZWZpbmUgSERNSV9GQ19EQVRBQ0gxRklMTCAgICAgICAg
ICAgICAgICAgICAgIDB4MTA3MQ0KPj4+PiAgI2RlZmluZSBIRE1JX0ZDX0RBVEFDSDJGSUxMICAg
ICAgICAgICAgICAgICAgICAgMHgxMDcyDQo+Pj4+DQo+Pj4+IGRpZmYgLS1naXQgYS9pbmNsdWRl
L2RybS9icmlkZ2UvZHdfaGRtaS5oIGIvaW5jbHVkZS9kcm0vYnJpZGdlL2R3X2hkbWkuaA0KPj4+
PiBpbmRleCBjZjUyOGMyODk4NTcuLjRiM2U4NjNjNGY4YSAxMDA2NDQNCj4+Pj4gLS0tIGEvaW5j
bHVkZS9kcm0vYnJpZGdlL2R3X2hkbWkuaA0KPj4+PiArKysgYi9pbmNsdWRlL2RybS9icmlkZ2Uv
ZHdfaGRtaS5oDQo+Pj4+IEBAIC0xNTYsNiArMTU2LDcgQEAgdm9pZCBkd19oZG1pX3NldHVwX3J4
X3NlbnNlKHN0cnVjdCBkd19oZG1pICpoZG1pLCBib29sDQo+Pj4+IGhwZCwgYm9vbCByeF9zZW5z
ZSk7Pg0KPj4+PiAgdm9pZCBkd19oZG1pX3NldF9zYW1wbGVfcmF0ZShzdHJ1Y3QgZHdfaGRtaSAq
aGRtaSwgdW5zaWduZWQgaW50IHJhdGUpOw0KPj4+PiAgdm9pZCBkd19oZG1pX3NldF9jaGFubmVs
X2NvdW50KHN0cnVjdCBkd19oZG1pICpoZG1pLCB1bnNpZ25lZCBpbnQgY250KTsNCj4+Pj4NCj4+
Pj4gK3ZvaWQgZHdfaGRtaV9zZXRfY2hhbm5lbF9zdGF0dXMoc3RydWN0IGR3X2hkbWkgKmhkbWks
IHU4DQo+Pj4+ICpjaGFubmVsX3N0YXR1cyk7DQo+Pj4+DQo+Pj4+ICB2b2lkIGR3X2hkbWlfc2V0
X2NoYW5uZWxfYWxsb2NhdGlvbihzdHJ1Y3QgZHdfaGRtaSAqaGRtaSwgdW5zaWduZWQgaW50DQo+
Pj4+ICBjYSk7DQo+Pj4+ICB2b2lkIGR3X2hkbWlfYXVkaW9fZW5hYmxlKHN0cnVjdCBkd19oZG1p
ICpoZG1pKTsNCj4+Pj4gIHZvaWQgZHdfaGRtaV9hdWRpb19kaXNhYmxlKHN0cnVjdCBkd19oZG1p
ICpoZG1pKTsNCj4+PiBMb29rcyBmaW5lIGZvciBtZToNCj4+PiBSZXZpZXdlZC1ieTogTmVpbCBB
cm1zdHJvbmcgPG5hcm1zdHJvbmdAYmF5bGlicmUuY29tPg0KPj4+DQo+Pj4gSm9uYXMgPyBKZXJu
ZWogPyBSdXNzZWxsID8NCj4+IFBhdGNoIGl0c2VsZiBpcyBmaW5lLCBJJ20ganVzdCB3b25kZXJp
bmcgaWYgbW9yZSBpbmZvcm1hdGlvbiBzaG91bGQgYmUgY29waWVkDQo+PiBmcm9tIHN0YXR1cyBh
cnJheSB0byByZWdpc3RlcnMuIEJ1dCBJIHRoaW5rIHRoZXkgYXJlIG5vdCAxOjEgbWFwcGluZyBz
byBzb21lDQo+PiBtb3JlIHdvcmsgd291bGQgYmUgbmVlZGVkLiBBbnl3YXksIHBhdGNoIGlzOg0K
PiBIaSBKZXJuZWosDQo+IFllcyB5b3UgYXJlIHJpZ2h0LiBJIHdhcyB0aGlua2luZyBhYm91dCB0
aGUgc2FtZSB0aGluZy4NCj4gQnV0IHRoZXJlIGFyZSBhbHNvIHNvbWUgZmllbGRzIGluIHRoZSBJ
RUM2MDk1OCBzcGVjIG5vdCBtYXBwZWQgdG8gdGhlDQo+IHJlZ2lzdGVycyBvbiBkdy1oZG1pLg0K
PiBTbyBJIGVuZGVkIHVwIGp1c3Qgd3JpdGluZyB0aGUgdHdvIHJlZ2lzdGVycyBpbiB0aGUgb3Jp
Z2luYWwgeWtrJ3MNCj4gcGF0Y2gsIGFuZCBpZ25vcmluZyAib3JpZ2luYWwgc2FtcGxpbmcgZnJl
cXVlbmN5IiBsaWtlIHBjbV9pZWM5NTguDQo+IEl0IHR1cm5zIG91dCB0aGF0IGF1ZGlvIHBsYXlz
IGZpbmUgb24gbXkgTEcgbW9uaXRvci4gU28gSSBzdWdnZXN0IHdlDQo+IGNhbiBrZWVwIHRoaXMg
cGF0Y2ggYXMgc2ltcGxlIGFzIGl0IGlzLCBhbmQgYWRkIG1vcmUgcmVnaXN0ZXIgc2V0dGluZw0K
PiBpZiB3ZSBmaW5kIGlzc3VlLg0KPiBUaGFua3MhDQoNCkluIG15IG9sZCBtdWx0aS1jaGFubmVs
IGxwY20gcGF0Y2ggWzFdIEkgb25seSB3cm90ZSBzYW1wbGUgcmF0ZSB0byBGQ19BVURTQ0hOTFM3
Lg0KVGhpcyBpcyBtdWNoIGNsZWFuZXIgYW5kIHNpbXBsZXIsIGFuZCBzZXR0aW5nIEZDX0FVRFND
SE5MUzggZG9lcyBub3QgY2F1c2UgYW55DQpwcm9ibGVtcyB3aGVuIEkgdGVzdGVkIG9uIEFTVVMg
VGlua2VyIEJvYXJkIFMgKFJLMzI4OCkuDQoNClJldmlld2VkLWJ5OiBKb25hcyBLYXJsbWFuIDxq
b25hc0Brd2lib28uc2U+DQoNCg0KWzFdIGh0dHBzOi8vZ2l0aHViLmNvbS9Ld2lib28vbGludXgt
cm9ja2NoaXAvY29tbWl0LzRhZjllYmM1NjdjY2YwYTA4NTFmYTI2MDA5NzAyMWMyN2FlYmJiNmIN
Cg0KUmVnYXJkcywNCkpvbmFzDQoNCj4NCj4+DQo+PiBSZXZpZXdlZC1ieTogSmVybmVqIFNrcmFi
ZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0Pg0KPj4NCj4+IEJlc3QgcmVnYXJkcywNCj4+IEpl
cm5lag0KPj4NCj4+PiBJZiBpdCdzIG9rIGZvciB5b3UgSSdsbCBhcHBseSBpdC4NCj4+Pg0KPj4+
IE5laWwNCj4+Pg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
