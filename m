Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC4F1F5482
	for <lists+linux-rockchip@lfdr.de>; Wed, 10 Jun 2020 14:22:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lzUXczqj1ELWAAnSaQRcamM86NFzb6ZL1yJwb8Xwfr4=; b=uwP/OXo+D0L778
	7sSH7jp9d52iUrAk2pxR1ryIkdG4wtE73jNXM8oJ6HH4WV/JRdxCpnmBj9GhJpuYXVYYXUivDchjB
	jglf9jaz6LJjZHFb7DshvYiROwHlKCRpDQAGjkEwfe3ypAj93rsb7cuWXGg5MrIQVgO53n9KJqXAq
	bQ9M3/08N8zMrXEvNdQEhVVD6w//g186M5CLzvuofWA/uBrzcSXqkVyshCfIpA70rWZHvnjPrVg/S
	mHncVYz+WUSN5oVcBUDXa/Q0OgJP9JgfCmWxzxhKA5jQsfrj3XJx4v6s74RqUa688Wr4QP4Ml6oV6
	eoSA+PrVB1zcqdxgqXSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jizk7-0004de-D2; Wed, 10 Jun 2020 12:22:07 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jizk3-0004cF-9k; Wed, 10 Jun 2020 12:22:05 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 05ACI972011930; Wed, 10 Jun 2020 14:21:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=/0fHKN2gUr3BvZ+qmh6riaHvr688I0Gf9/GUjxrN1Ik=;
 b=y6EhStF/MGzzmMASdQxxu/YDH64LZ+/3ap5bDpaAzn+yWTP/BmNVIIrOqKaff8DdxzPt
 OLiVJqEtJygckKcmp8aW1LW/E5tblhw2wacXo2PYOz/rrBFTVM4E1ykR7fF1rbfLOQfE
 VoyUUiFFVKXgaLwjqcI3PR9lLq3nwKXR7CnuXTh1KStZ/Z9hTEsZm3itUfQqSts1V5lH
 YR0OPZ1ymhAwbqxU7S1TdEpxIZvBF5lPXXZkIfqAQjZ5TlYlYTST3LesoeGZdW2/5pDE
 M0nqHg1/WnYxaUjg8QhKqD2OxQgd/0TV7NGBFdbu/rM0Cx2BUMlAXWi3hXz7FYZEnPwz 6Q== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 31g0wvw066-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 10 Jun 2020 14:21:56 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id B1EE9100034;
 Wed, 10 Jun 2020 14:21:55 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 96B9C2B4878;
 Wed, 10 Jun 2020 14:21:55 +0200 (CEST)
Received: from SFHDAG6NODE1.st.com (10.75.127.16) by SFHDAG6NODE1.st.com
 (10.75.127.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 10 Jun
 2020 14:21:55 +0200
Received: from SFHDAG6NODE1.st.com ([fe80::8d96:4406:44e3:eb27]) by
 SFHDAG6NODE1.st.com ([fe80::8d96:4406:44e3:eb27%20]) with mapi id
 15.00.1473.003; Wed, 10 Jun 2020 14:21:55 +0200
From: Yannick FERTRE <yannick.fertre@st.com>
To: Adrian Ratiu <adrian.ratiu@collabora.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-rockchip@lists.infradead.org"
 <linux-rockchip@lists.infradead.org>, Laurent Pinchart
 <Laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v9 09/11] drm: bridge: dw-mipi-dsi: split low power cfg
 register into fields
Thread-Topic: [PATCH v9 09/11] drm: bridge: dw-mipi-dsi: split low power cfg
 register into fields
Thread-Index: AQHWPoY27moY0vpNAkiYkP5rHsTNkqjRpN+A
Date: Wed, 10 Jun 2020 12:21:55 +0000
Message-ID: <81f04df5-218c-7f1e-98eb-9dad9cdcfa48@st.com>
References: <20200609174959.955926-1-adrian.ratiu@collabora.com>
 <20200609174959.955926-10-adrian.ratiu@collabora.com>
In-Reply-To: <20200609174959.955926-10-adrian.ratiu@collabora.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.44]
Content-ID: <EA0E7DDA0D48934C9DA1E76493EFCCA9@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-10_07:2020-06-10,
 2020-06-10 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_052203_630040_E2171058 
X-CRM114-Status: GOOD (  22.42  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>, Heiko
 Stuebner <heiko@sntech.de>, Adrian Pop <pop.adrian61@gmail.com>,
 Jonas Karlman <jonas@kwiboo.se>, Philippe CORNU <philippe.cornu@st.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Andrzej Hajda <a.hajda@samsung.com>, "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@collabora.com" <kernel@collabora.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 Arnaud Ferraris <arnaud.ferraris@collabora.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgQWRyaWFuLA0KDQp0aGFua3MgZm9yIHRoZSBwYWNoOiB0ZXN0ZWQgb24gc3RtMzJtcDEuDQoN
ClRlc3RlZC1ieTogWWFubmljayBGZXJ0csOpIDx5YW5uaWNrLmZlcnRyZUBzdC5jb20+DQoNCk9u
IDYvOS8yMCA3OjQ5IFBNLCBBZHJpYW4gUmF0aXUgd3JvdGU6DQo+IEFjY29yZGluZyB0byB0aGUg
SG9zdCBSZWdpc3RlcnMgZG9jdW1lbnRhdGlvbiBmb3IgSU1YLCBTVE0gYW5kIFJLDQo+IHRoZSBM
UCBjZmcgcmVnaXN0ZXIgc2hvdWxkIG5vdCBiZSB3cml0dGVuIGVudGlyZWx5IGluIG9uZSBnbyBi
ZWNhdXNlDQo+IHNvbWUgYml0cyBhcmUgcmVzZXJ2ZWQgYW5kIHNob3VsZCBiZSBrZXB0IHRvIHJl
c2V0IHZhbHVlcywgZm9yIGVnLg0KPiBCSVQoMTUpIHdoaWNoIGlzIHJlc2VydmVkIGluIGFsbCB2
ZXJzaW9ucy4NCj4NCj4gVGhpcyBhbHNvIGNsZWFucyB1cCB0aGUgY29kZSBieSByZW1vdmluZyB0
aGUgdGhlIHVnbHkgZGVmaW5lcw0KPiBhbmQgbWFraW5nIGZpZWxkIHJhbmdlcyAmIHZhbHVlcyB3
cml0dGVuIG1vcmUgZXhwbGljaXQuDQo+DQo+IFRlc3RlZC1ieTogQWRyaWFuIFBvcCA8cG9wLmFk
cmlhbjYxQGdtYWlsLmNvbT4NCj4gVGVzdGVkLWJ5OiBBcm5hdWQgRmVycmFyaXMgPGFybmF1ZC5m
ZXJyYXJpc0Bjb2xsYWJvcmEuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBBZHJpYW4gUmF0aXUgPGFk
cmlhbi5yYXRpdUBjb2xsYWJvcmEuY29tPg0KPiAtLS0NCj4gTmV3IGluIHY2Lg0KPiAtLS0NCj4g
ICBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LW1pcGktZHNpLmMgfCAxMDUgKysr
KysrLS0tLS0tLS0tLS0tDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDMzIGluc2VydGlvbnMoKyksIDcy
IGRlbGV0aW9ucygtKQ0KPg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9z
eW5vcHN5cy9kdy1taXBpLWRzaS5jIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9k
dy1taXBpLWRzaS5jDQo+IGluZGV4IDcwZGYwNTc4Y2JlN2IuLjFlNDdkNDBiNWJlY2IgMTAwNjQ0
DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctbWlwaS1kc2kuYw0K
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LW1pcGktZHNpLmMNCj4g
QEAgLTEyMCw2MCArMTIwLDYgQEANCj4gICAjZGVmaW5lIERTSV9UT19DTlRfQ0ZHX1YxMDEJCTB4
NDANCj4gICAjZGVmaW5lIERTSV9QQ0tIRExfQ0ZHX1YxMDEJCTB4MTgNCj4gICANCj4gLSNkZWZp
bmUgTUFYX1JEX1BLVF9TSVpFX0xQCQlCSVQoMjQpDQo+IC0jZGVmaW5lIERDU19MV19UWF9MUAkJ
CUJJVCgxOSkNCj4gLSNkZWZpbmUgRENTX1NSXzBQX1RYX0xQCQkJQklUKDE4KQ0KPiAtI2RlZmlu
ZSBEQ1NfU1dfMVBfVFhfTFAJCQlCSVQoMTcpDQo+IC0jZGVmaW5lIERDU19TV18wUF9UWF9MUAkJ
CUJJVCgxNikNCj4gLSNkZWZpbmUgR0VOX0xXX1RYX0xQCQkJQklUKDE0KQ0KPiAtI2RlZmluZSBH
RU5fU1JfMlBfVFhfTFAJCQlCSVQoMTMpDQo+IC0jZGVmaW5lIEdFTl9TUl8xUF9UWF9MUAkJCUJJ
VCgxMikNCj4gLSNkZWZpbmUgR0VOX1NSXzBQX1RYX0xQCQkJQklUKDExKQ0KPiAtI2RlZmluZSBH
RU5fU1dfMlBfVFhfTFAJCQlCSVQoMTApDQo+IC0jZGVmaW5lIEdFTl9TV18xUF9UWF9MUAkJCUJJ
VCg5KQ0KPiAtI2RlZmluZSBHRU5fU1dfMFBfVFhfTFAJCQlCSVQoOCkNCj4gLSNkZWZpbmUgVEVB
Ul9GWF9FTgkJCUJJVCgwKQ0KPiAtDQo+IC0jZGVmaW5lIENNRF9NT0RFX0FMTF9MUAkJCShNQVhf
UkRfUEtUX1NJWkVfTFAgfCBcDQo+IC0JCQkJCSBEQ1NfTFdfVFhfTFAgfCBcDQo+IC0JCQkJCSBE
Q1NfU1JfMFBfVFhfTFAgfCBcDQo+IC0JCQkJCSBEQ1NfU1dfMVBfVFhfTFAgfCBcDQo+IC0JCQkJ
CSBEQ1NfU1dfMFBfVFhfTFAgfCBcDQo+IC0JCQkJCSBHRU5fTFdfVFhfTFAgfCBcDQo+IC0JCQkJ
CSBHRU5fU1JfMlBfVFhfTFAgfCBcDQo+IC0JCQkJCSBHRU5fU1JfMVBfVFhfTFAgfCBcDQo+IC0J
CQkJCSBHRU5fU1JfMFBfVFhfTFAgfCBcDQo+IC0JCQkJCSBHRU5fU1dfMlBfVFhfTFAgfCBcDQo+
IC0JCQkJCSBHRU5fU1dfMVBfVFhfTFAgfCBcDQo+IC0JCQkJCSBHRU5fU1dfMFBfVFhfTFApDQo+
IC0NCj4gLSNkZWZpbmUgRU5fVEVBUl9GWF9WMTAxCQkJQklUKDE0KQ0KPiAtI2RlZmluZSBEQ1Nf
TFdfVFhfTFBfVjEwMQkJQklUKDEyKQ0KPiAtI2RlZmluZSBHRU5fTFdfVFhfTFBfVjEwMQkJQklU
KDExKQ0KPiAtI2RlZmluZSBNQVhfUkRfUEtUX1NJWkVfTFBfVjEwMQkJQklUKDEwKQ0KPiAtI2Rl
ZmluZSBEQ1NfU1dfMlBfVFhfTFBfVjEwMQkJQklUKDkpDQo+IC0jZGVmaW5lIERDU19TV18xUF9U
WF9MUF9WMTAxCQlCSVQoOCkNCj4gLSNkZWZpbmUgRENTX1NXXzBQX1RYX0xQX1YxMDEJCUJJVCg3
KQ0KPiAtI2RlZmluZSBHRU5fU1JfMlBfVFhfTFBfVjEwMQkJQklUKDYpDQo+IC0jZGVmaW5lIEdF
Tl9TUl8xUF9UWF9MUF9WMTAxCQlCSVQoNSkNCj4gLSNkZWZpbmUgR0VOX1NSXzBQX1RYX0xQX1Yx
MDEJCUJJVCg0KQ0KPiAtI2RlZmluZSBHRU5fU1dfMlBfVFhfTFBfVjEwMQkJQklUKDMpDQo+IC0j
ZGVmaW5lIEdFTl9TV18xUF9UWF9MUF9WMTAxCQlCSVQoMikNCj4gLSNkZWZpbmUgR0VOX1NXXzBQ
X1RYX0xQX1YxMDEJCUJJVCgxKQ0KPiAtDQo+IC0jZGVmaW5lIENNRF9NT0RFX0FMTF9MUF9WMTAx
CQkoRENTX0xXX1RYX0xQX1YxMDEgfCBcDQo+IC0JCQkJCSBHRU5fTFdfVFhfTFBfVjEwMSB8IFwN
Cj4gLQkJCQkJIE1BWF9SRF9QS1RfU0laRV9MUF9WMTAxIHwgXA0KPiAtCQkJCQkgRENTX1NXXzJQ
X1RYX0xQX1YxMDEgfCBcDQo+IC0JCQkJCSBEQ1NfU1dfMVBfVFhfTFBfVjEwMSB8IFwNCj4gLQkJ
CQkJIERDU19TV18wUF9UWF9MUF9WMTAxIHwgXA0KPiAtCQkJCQkgR0VOX1NSXzJQX1RYX0xQX1Yx
MDEgfCBcDQo+IC0JCQkJCSBHRU5fU1JfMVBfVFhfTFBfVjEwMSB8IFwNCj4gLQkJCQkJIEdFTl9T
Ul8wUF9UWF9MUF9WMTAxIHwgXA0KPiAtCQkJCQkgR0VOX1NXXzJQX1RYX0xQX1YxMDEgfCBcDQo+
IC0JCQkJCSBHRU5fU1dfMVBfVFhfTFBfVjEwMSB8IFwNCj4gLQkJCQkJIEdFTl9TV18wUF9UWF9M
UF9WMTAxKQ0KPiAtDQo+ICAgI2RlZmluZSBEU0lfR0VOX0hEUgkJCTB4NmMNCj4gICAjZGVmaW5l
IERTSV9HRU5fUExEX0RBVEEJCTB4NzANCj4gICANCj4gQEAgLTI1Nyw3ICsyMDMsMTEgQEAgc3Ry
dWN0IGR3X21pcGlfZHNpIHsNCj4gICAJc3RydWN0IHJlZ21hcF9maWVsZAkqZmllbGRfZHBpX3Zz
eW5jX2FjdGl2ZV9sb3c7DQo+ICAgCXN0cnVjdCByZWdtYXBfZmllbGQJKmZpZWxkX2RwaV9oc3lu
Y19hY3RpdmVfbG93Ow0KPiAgIAlzdHJ1Y3QgcmVnbWFwX2ZpZWxkCSpmaWVsZF9jbWRfbW9kZV9h
Y2tfcnFzdF9lbjsNCj4gLQlzdHJ1Y3QgcmVnbWFwX2ZpZWxkCSpmaWVsZF9jbWRfbW9kZV9hbGxf
bHBfZW47DQo+ICsJc3RydWN0IHJlZ21hcF9maWVsZAkqZmllbGRfY21kX21vZGVfZ2VuX3N3X3Ny
X2VuOw0KPiArCXN0cnVjdCByZWdtYXBfZmllbGQJKmZpZWxkX2NtZF9tb2RlX2Rjc19zd19zcl9l
bjsNCj4gKwlzdHJ1Y3QgcmVnbWFwX2ZpZWxkCSpmaWVsZF9jbWRfbW9kZV9nZW5fbHdfZW47DQo+
ICsJc3RydWN0IHJlZ21hcF9maWVsZAkqZmllbGRfY21kX21vZGVfZGNzX2x3X2VuOw0KPiArCXN0
cnVjdCByZWdtYXBfZmllbGQJKmZpZWxkX2NtZF9tb2RlX21heF9yZF9wa3Rfc2l6ZTsNCj4gICAJ
c3RydWN0IHJlZ21hcF9maWVsZAkqZmllbGRfY21kX21vZGVfZW47DQo+ICAgCXN0cnVjdCByZWdt
YXBfZmllbGQJKmZpZWxkX2NtZF9wa3Rfc3RhdHVzOw0KPiAgIAlzdHJ1Y3QgcmVnbWFwX2ZpZWxk
CSpmaWVsZF92aWRfbW9kZV9lbjsNCj4gQEAgLTMxNSw3ICsyNjUsMTEgQEAgc3RydWN0IGR3X21p
cGlfZHNpX3ZhcmlhbnQgew0KPiAgIAlzdHJ1Y3QgcmVnX2ZpZWxkCWNmZ19kcGlfaHN5bmNfYWN0
aXZlX2xvdzsNCj4gICAJc3RydWN0IHJlZ19maWVsZAljZmdfY21kX21vZGVfZW47DQo+ICAgCXN0
cnVjdCByZWdfZmllbGQJY2ZnX2NtZF9tb2RlX2Fja19ycXN0X2VuOw0KPiAtCXN0cnVjdCByZWdf
ZmllbGQJY2ZnX2NtZF9tb2RlX2FsbF9scF9lbjsNCj4gKwlzdHJ1Y3QgcmVnX2ZpZWxkCWNmZ19j
bWRfbW9kZV9nZW5fc3dfc3JfZW47DQo+ICsJc3RydWN0IHJlZ19maWVsZAljZmdfY21kX21vZGVf
ZGNzX3N3X3NyX2VuOw0KPiArCXN0cnVjdCByZWdfZmllbGQJY2ZnX2NtZF9tb2RlX2dlbl9sd19l
bjsNCj4gKwlzdHJ1Y3QgcmVnX2ZpZWxkCWNmZ19jbWRfbW9kZV9kY3NfbHdfZW47DQo+ICsJc3Ry
dWN0IHJlZ19maWVsZAljZmdfY21kX21vZGVfbWF4X3JkX3BrdF9zaXplOw0KPiAgIAlzdHJ1Y3Qg
cmVnX2ZpZWxkCWNmZ19jbWRfcGt0X3N0YXR1czsNCj4gICAJc3RydWN0IHJlZ19maWVsZAljZmdf
dmlkX21vZGVfZW47DQo+ICAgCXN0cnVjdCByZWdfZmllbGQJY2ZnX3ZpZF9tb2RlX3R5cGU7DQo+
IEBAIC0zNjYsNyArMzIwLDExIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHdfbWlwaV9kc2lfdmFy
aWFudCBkd19taXBpX2RzaV92MTMwX3YxMzFfbGF5b3V0ID0gew0KPiAgIAkuY2ZnX2RwaV92c3lu
Y19hY3RpdmVfbG93ID0JUkVHX0ZJRUxEKERTSV9EUElfQ0ZHX1BPTCwgMSwgMSksDQo+ICAgCS5j
ZmdfZHBpX2hzeW5jX2FjdGl2ZV9sb3cgPQlSRUdfRklFTEQoRFNJX0RQSV9DRkdfUE9MLCAyLCAy
KSwNCj4gICAJLmNmZ19jbWRfbW9kZV9hY2tfcnFzdF9lbiA9CVJFR19GSUVMRChEU0lfQ01EX01P
REVfQ0ZHLCAxLCAxKSwNCj4gLQkuY2ZnX2NtZF9tb2RlX2FsbF9scF9lbiA9CVJFR19GSUVMRChE
U0lfQ01EX01PREVfQ0ZHLCA4LCAyNCksDQo+ICsJLmNmZ19jbWRfbW9kZV9nZW5fc3dfc3JfZW4g
PQlSRUdfRklFTEQoRFNJX0NNRF9NT0RFX0NGRywgOCwgMTMpLA0KPiArCS5jZmdfY21kX21vZGVf
Z2VuX2x3X2VuID0JUkVHX0ZJRUxEKERTSV9DTURfTU9ERV9DRkcsIDE0LCAxNCksDQo+ICsJLmNm
Z19jbWRfbW9kZV9kY3Nfc3dfc3JfZW4gPQlSRUdfRklFTEQoRFNJX0NNRF9NT0RFX0NGRywgMTYs
IDE4KSwNCj4gKwkuY2ZnX2NtZF9tb2RlX2Rjc19sd19lbiA9CVJFR19GSUVMRChEU0lfQ01EX01P
REVfQ0ZHLCAxOSwgMTkpLA0KPiArCS5jZmdfY21kX21vZGVfbWF4X3JkX3BrdF9zaXplID0JUkVH
X0ZJRUxEKERTSV9DTURfTU9ERV9DRkcsIDI0LCAyNCksDQo+ICAgCS5jZmdfY21kX21vZGVfZW4g
PQkJUkVHX0ZJRUxEKERTSV9NT0RFX0NGRywgMCwgMzEpLA0KPiAgIAkuY2ZnX2NtZF9wa3Rfc3Rh
dHVzID0JCVJFR19GSUVMRChEU0lfQ01EX1BLVF9TVEFUVVMsIDAsIDMxKSwNCj4gICAJLmNmZ192
aWRfbW9kZV9lbiA9CQlSRUdfRklFTEQoRFNJX01PREVfQ0ZHLCAwLCAzMSksDQo+IEBAIC00MTgs
NyArMzc2LDExIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHdfbWlwaV9kc2lfdmFyaWFudCBkd19t
aXBpX2RzaV92MTAxX2xheW91dCA9IHsNCj4gICAJLmNmZ19kcGlfdnN5bmNfYWN0aXZlX2xvdyA9
CVJFR19GSUVMRChEU0lfRFBJX0NGRywgNiwgNiksDQo+ICAgCS5jZmdfZHBpX2hzeW5jX2FjdGl2
ZV9sb3cgPQlSRUdfRklFTEQoRFNJX0RQSV9DRkcsIDcsIDcpLA0KPiAgIAkuY2ZnX2NtZF9tb2Rl
X2VuID0JCVJFR19GSUVMRChEU0lfQ01EX01PREVfQ0ZHX1YxMDEsIDAsIDApLA0KPiAtCS5jZmdf
Y21kX21vZGVfYWxsX2xwX2VuID0JUkVHX0ZJRUxEKERTSV9DTURfTU9ERV9DRkdfVjEwMSwgMSwg
MTIpLA0KPiArCS5jZmdfY21kX21vZGVfZ2VuX3N3X3NyX2VuID0JUkVHX0ZJRUxEKERTSV9DTURf
TU9ERV9DRkcsIDEsIDYpLA0KPiArCS5jZmdfY21kX21vZGVfZGNzX3N3X3NyX2VuID0JUkVHX0ZJ
RUxEKERTSV9DTURfTU9ERV9DRkcsIDcsIDkpLA0KPiArCS5jZmdfY21kX21vZGVfbWF4X3JkX3Br
dF9zaXplID0JUkVHX0ZJRUxEKERTSV9DTURfTU9ERV9DRkcsIDEwLCAxMCksDQo+ICsJLmNmZ19j
bWRfbW9kZV9nZW5fbHdfZW4gPQlSRUdfRklFTEQoRFNJX0NNRF9NT0RFX0NGRywgMTEsIDExKSwN
Cj4gKwkuY2ZnX2NtZF9tb2RlX2Rjc19sd19lbiA9CVJFR19GSUVMRChEU0lfQ01EX01PREVfQ0ZH
LCAxMiwgMTIpLA0KPiAgIAkuY2ZnX2NtZF9tb2RlX2Fja19ycXN0X2VuID0JUkVHX0ZJRUxEKERT
SV9DTURfTU9ERV9DRkdfVjEwMSwgMTMsIDEzKSwNCj4gICAJLmNmZ19jbWRfcGt0X3N0YXR1cyA9
CQlSRUdfRklFTEQoRFNJX0NNRF9QS1RfU1RBVFVTX1YxMDEsIDAsIDE0KSwNCj4gICAJLmNmZ192
aWRfbW9kZV9lbiA9CQlSRUdfRklFTEQoRFNJX1ZJRF9NT0RFX0NGR19WMTAxLCAwLCAwKSwNCj4g
QEAgLTU1NCwyMyArNTE2LDE4IEBAIHN0YXRpYyB2b2lkIGR3X21pcGlfbWVzc2FnZV9jb25maWco
c3RydWN0IGR3X21pcGlfZHNpICpkc2ksDQo+ICAgCQkJCSAgIGNvbnN0IHN0cnVjdCBtaXBpX2Rz
aV9tc2cgKm1zZykNCj4gICB7DQo+ICAgCWJvb2wgbHBtID0gbXNnLT5mbGFncyAmIE1JUElfRFNJ
X01TR19VU0VfTFBNOw0KPiAtCXUzMiBjbWRfbW9kZV9scCA9IDA7DQo+IC0NCj4gLQlzd2l0Y2gg
KGRzaS0+aHdfdmVyc2lvbikgew0KPiAtCWNhc2UgSFdWRVJfMTMwOg0KPiAtCWNhc2UgSFdWRVJf
MTMxOg0KPiAtCQljbWRfbW9kZV9scCA9IENNRF9NT0RFX0FMTF9MUDsNCj4gLQkJYnJlYWs7DQo+
IC0JY2FzZSBIV1ZFUl8xMDE6DQo+IC0JCWNtZF9tb2RlX2xwID0gQ01EX01PREVfQUxMX0xQX1Yx
MDE7DQo+IC0JCWJyZWFrOw0KPiAtCX0NCj4gICANCj4gICAJaWYgKG1zZy0+ZmxhZ3MgJiBNSVBJ
X0RTSV9NU0dfUkVRX0FDSykNCj4gICAJCXJlZ21hcF9maWVsZF93cml0ZShkc2ktPmZpZWxkX2Nt
ZF9tb2RlX2Fja19ycXN0X2VuLCAxKTsNCj4gICANCj4gLQlpZiAobHBtKQ0KPiAtCQlyZWdtYXBf
ZmllbGRfd3JpdGUoZHNpLT5maWVsZF9jbWRfbW9kZV9hbGxfbHBfZW4sIGNtZF9tb2RlX2xwKTsN
Cj4gKwlpZiAobHBtKSB7DQo+ICsJCXJlZ21hcF9maWVsZF93cml0ZShkc2ktPmZpZWxkX2NtZF9t
b2RlX2dlbl9zd19zcl9lbiwNCj4gKwkJCQkgICBFTkFCTEVfTE9XX1BPV0VSKTsNCj4gKwkJcmVn
bWFwX2ZpZWxkX3dyaXRlKGRzaS0+ZmllbGRfY21kX21vZGVfZGNzX3N3X3NyX2VuLCA3KTsNCj4g
KwkJcmVnbWFwX2ZpZWxkX3dyaXRlKGRzaS0+ZmllbGRfY21kX21vZGVfZ2VuX2x3X2VuLCAxKTsN
Cj4gKwkJcmVnbWFwX2ZpZWxkX3dyaXRlKGRzaS0+ZmllbGRfY21kX21vZGVfZGNzX2x3X2VuLCAx
KTsNCj4gKwkJcmVnbWFwX2ZpZWxkX3dyaXRlKGRzaS0+ZmllbGRfY21kX21vZGVfbWF4X3JkX3Br
dF9zaXplLCAxKTsNCj4gKwl9DQo+ICAgDQo+ICAgCXJlZ21hcF9maWVsZF93cml0ZShkc2ktPmZp
ZWxkX3BoeV90eHJlcXVlc3RjbGtocywgbHBtID8gMCA6IDEpOw0KPiAgIH0NCj4gQEAgLTEyNTYs
NyArMTIxMywxMSBAQCBzdGF0aWMgaW50IGR3X21pcGlfZHNpX3JlZ21hcF9maWVsZHNfaW5pdChz
dHJ1Y3QgZHdfbWlwaV9kc2kgKmRzaSkNCj4gICAJSU5JVF9GSUVMRChkcGlfdnN5bmNfYWN0aXZl
X2xvdyk7DQo+ICAgCUlOSVRfRklFTEQoZHBpX2hzeW5jX2FjdGl2ZV9sb3cpOw0KPiAgIAlJTklU
X0ZJRUxEKGNtZF9tb2RlX2Fja19ycXN0X2VuKTsNCj4gLQlJTklUX0ZJRUxEKGNtZF9tb2RlX2Fs
bF9scF9lbik7DQo+ICsJSU5JVF9GSUVMRChjbWRfbW9kZV9nZW5fc3dfc3JfZW4pOw0KPiArCUlO
SVRfRklFTEQoY21kX21vZGVfZGNzX3N3X3NyX2VuKTsNCj4gKwlJTklUX0ZJRUxEKGNtZF9tb2Rl
X2dlbl9sd19lbik7DQo+ICsJSU5JVF9GSUVMRChjbWRfbW9kZV9kY3NfbHdfZW4pOw0KPiArCUlO
SVRfRklFTEQoY21kX21vZGVfbWF4X3JkX3BrdF9zaXplKTsNCj4gICAJSU5JVF9GSUVMRChjbWRf
bW9kZV9lbik7DQo+ICAgCUlOSVRfRklFTEQoY21kX3BrdF9zdGF0dXMpOw0KPiAgIAlJTklUX0ZJ
RUxEKHZpZF9tb2RlX2VuKTsNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
