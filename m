Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00D691F548A
	for <lists+linux-rockchip@lfdr.de>; Wed, 10 Jun 2020 14:22:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e57PFXma7aty3AiUguGZTdKNuAHGOcH045n7RaqIMAY=; b=qF0RFf7SZ7WNxe
	HeTerDHo4ICHxW0GVJ5h+cyZv39TLbRPBKBp79YJTarv80joXWy5OdR3KW7r44IvXTGc/HNdMNhmi
	McLM5UuIcxz4k18a+O5vfHa57qLM6J4UgeyUIgtZT25UBip6qG50z+uxZMvGo6Y8Jsp8eNzzThLar
	LgzzHXhYADGY2bwUSs7M+OUF203BgP0hFrEi3Teq2gX3thTFmQxEhN9NOuYDT7p4minuDzSutEP/K
	cY8vrK2pC4qeRATL3QmsZbKWOis5UlDiVvdCGkdfSIt0j0keIilZhFKGOFczMt+BtY0qHLKKZX87H
	6bVQHYWOgaXTFgS+ZU1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jizkT-0004vs-JO; Wed, 10 Jun 2020 12:22:29 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jizkI-0004o9-3q; Wed, 10 Jun 2020 12:22:20 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 05ACH9O9025176; Wed, 10 Jun 2020 14:22:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=Ogt7kzdY+2u4HiQMwxF0C/6ggbmSoaxy/EAlQct2Trk=;
 b=yW/pR62pcvAr+WT+FnE5474MdUVzpX+SupEdiB5AXPQ5h/x2D5zkQ4yLnH4v4FqTLx+c
 C3GElqXURNjT4HlKppybYEEXALEVzG2iAructlOvIylJcznOBXc1hYwpHweROBVZO/mm
 I2muRfWfpHSb3RMqzp4IIsbd2mV2pzvxUJaB6QcXlA+xjgIHBuk6vumVsSNUM1x/yqTE
 USdbSY364zHhrXCncqiRpdptsSFO3t7v3il0NiDROYWE8Z7HcMWPQ9kE2WVHP2I3xk2G
 scxCGQM/nQiBKlnsdlDFXKIowuWvrcKMsmyXIOj6ZO/+cp9/veBfqz9UzIAy8arxh90U Yw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 31jppntq1t-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 10 Jun 2020 14:22:11 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 9F8B810002A;
 Wed, 10 Jun 2020 14:22:10 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 34BF92B9C66;
 Wed, 10 Jun 2020 14:22:08 +0200 (CEST)
Received: from SFHDAG6NODE1.st.com (10.75.127.16) by SFHDAG6NODE2.st.com
 (10.75.127.17) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 10 Jun
 2020 14:22:07 +0200
Received: from SFHDAG6NODE1.st.com ([fe80::8d96:4406:44e3:eb27]) by
 SFHDAG6NODE1.st.com ([fe80::8d96:4406:44e3:eb27%20]) with mapi id
 15.00.1473.003; Wed, 10 Jun 2020 14:22:07 +0200
From: Yannick FERTRE <yannick.fertre@st.com>
To: Adrian Ratiu <adrian.ratiu@collabora.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-rockchip@lists.infradead.org"
 <linux-rockchip@lists.infradead.org>, Laurent Pinchart
 <Laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v9 10/11] drm: bridge: dw-mipi-dsi: fix bad register field
 offsets
Thread-Topic: [PATCH v9 10/11] drm: bridge: dw-mipi-dsi: fix bad register
 field offsets
Thread-Index: AQHWPoY3sOkL2THKq0y5LpEfOytE3qjRpO2A
Date: Wed, 10 Jun 2020 12:22:07 +0000
Message-ID: <673a3961-d5ef-b7cd-4301-43c1c2786ed1@st.com>
References: <20200609174959.955926-1-adrian.ratiu@collabora.com>
 <20200609174959.955926-11-adrian.ratiu@collabora.com>
In-Reply-To: <20200609174959.955926-11-adrian.ratiu@collabora.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.44]
Content-ID: <13E4D089CC2D1740B364E43D624E547D@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-10_07:2020-06-10,
 2020-06-10 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_052218_467526_9294B666 
X-CRM114-Status: GOOD (  17.53  )
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
RFNJIEhvc3QgUmVnaXN0ZXJzIHNlY3Rpb25zIGF2YWlsYWJsZSBpbiB0aGUgSU1YLA0KPiBTVE0g
YW5kIFJLIHJlZiBtYW51YWxzIGZvciAxLjAxLCAxLjMwIGFuZCAxLjMxLCB0aGUgcmVnaXN0ZXIg
ZmllbGRzDQo+IGFyZSBzbWFsbGVyIG9yIGJpZ2dlciB0aGFuIHdoYXQncyBjb2RlZCBpbiB0aGUg
ZHJpdmVyLCBsZWFkaW5nIHRvDQo+IHIvdyBpbiByZXNlcnZlZCBzcGFjZXMgd2hpY2ggbWlnaHQg
Y2F1c2UgdW5kZWZpbmVkIGJlaGF2aW91cnMuDQo+DQo+IFRlc3RlZC1ieTogQWRyaWFuIFBvcCA8
cG9wLmFkcmlhbjYxQGdtYWlsLmNvbT4NCj4gVGVzdGVkLWJ5OiBBcm5hdWQgRmVycmFyaXMgPGFy
bmF1ZC5mZXJyYXJpc0Bjb2xsYWJvcmEuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBBZHJpYW4gUmF0
aXUgPGFkcmlhbi5yYXRpdUBjb2xsYWJvcmEuY29tPg0KPiAtLS0NCj4gTmV3IGluIHY2Lg0KPiAt
LS0NCj4gICBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LW1pcGktZHNpLmMgfCA0
NiArKysrKysrKystLS0tLS0tLS0tDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDIzIGluc2VydGlvbnMo
KyksIDIzIGRlbGV0aW9ucygtKQ0KPg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2Jy
aWRnZS9zeW5vcHN5cy9kdy1taXBpLWRzaS5jIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5v
cHN5cy9kdy1taXBpLWRzaS5jDQo+IGluZGV4IDFlNDdkNDBiNWJlY2IuLmQyNzQyMTZjNWE3YzIg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctbWlwaS1k
c2kuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LW1pcGktZHNp
LmMNCj4gQEAgLTMxNiw3ICszMTYsNyBAQCBzdHJ1Y3QgZHdfbWlwaV9kc2lfdmFyaWFudCB7DQo+
ICAgc3RhdGljIGNvbnN0IHN0cnVjdCBkd19taXBpX2RzaV92YXJpYW50IGR3X21pcGlfZHNpX3Yx
MzBfdjEzMV9sYXlvdXQgPSB7DQo+ICAgCS5jZmdfZHBpX2NvbG9yX2NvZGluZyA9CQlSRUdfRklF
TEQoRFNJX0RQSV9DT0xPUl9DT0RJTkcsIDAsIDMpLA0KPiAgIAkuY2ZnX2RwaV8xOGxvb3NlbHlf
ZW4gPQkJUkVHX0ZJRUxEKERTSV9EUElfQ09MT1JfQ09ESU5HLCA4LCA4KSwNCj4gLQkuY2ZnX2Rw
aV92aWQgPQkJCVJFR19GSUVMRChEU0lfRFBJX1ZDSUQsIDAsIDIpLA0KPiArCS5jZmdfZHBpX3Zp
ZCA9CQkJUkVHX0ZJRUxEKERTSV9EUElfVkNJRCwgMCwgMSksDQo+ICAgCS5jZmdfZHBpX3ZzeW5j
X2FjdGl2ZV9sb3cgPQlSRUdfRklFTEQoRFNJX0RQSV9DRkdfUE9MLCAxLCAxKSwNCj4gICAJLmNm
Z19kcGlfaHN5bmNfYWN0aXZlX2xvdyA9CVJFR19GSUVMRChEU0lfRFBJX0NGR19QT0wsIDIsIDIp
LA0KPiAgIAkuY2ZnX2NtZF9tb2RlX2Fja19ycXN0X2VuID0JUkVHX0ZJRUxEKERTSV9DTURfTU9E
RV9DRkcsIDEsIDEpLA0KPiBAQCAtMzI1LDI5ICszMjUsMjkgQEAgc3RhdGljIGNvbnN0IHN0cnVj
dCBkd19taXBpX2RzaV92YXJpYW50IGR3X21pcGlfZHNpX3YxMzBfdjEzMV9sYXlvdXQgPSB7DQo+
ICAgCS5jZmdfY21kX21vZGVfZGNzX3N3X3NyX2VuID0JUkVHX0ZJRUxEKERTSV9DTURfTU9ERV9D
RkcsIDE2LCAxOCksDQo+ICAgCS5jZmdfY21kX21vZGVfZGNzX2x3X2VuID0JUkVHX0ZJRUxEKERT
SV9DTURfTU9ERV9DRkcsIDE5LCAxOSksDQo+ICAgCS5jZmdfY21kX21vZGVfbWF4X3JkX3BrdF9z
aXplID0JUkVHX0ZJRUxEKERTSV9DTURfTU9ERV9DRkcsIDI0LCAyNCksDQo+IC0JLmNmZ19jbWRf
bW9kZV9lbiA9CQlSRUdfRklFTEQoRFNJX01PREVfQ0ZHLCAwLCAzMSksDQo+IC0JLmNmZ19jbWRf
cGt0X3N0YXR1cyA9CQlSRUdfRklFTEQoRFNJX0NNRF9QS1RfU1RBVFVTLCAwLCAzMSksDQo+IC0J
LmNmZ192aWRfbW9kZV9lbiA9CQlSRUdfRklFTEQoRFNJX01PREVfQ0ZHLCAwLCAzMSksDQo+ICsJ
LmNmZ19jbWRfbW9kZV9lbiA9CQlSRUdfRklFTEQoRFNJX01PREVfQ0ZHLCAwLCAwKSwNCj4gKwku
Y2ZnX2NtZF9wa3Rfc3RhdHVzID0JCVJFR19GSUVMRChEU0lfQ01EX1BLVF9TVEFUVVMsIDAsIDYp
LA0KPiArCS5jZmdfdmlkX21vZGVfZW4gPQkJUkVHX0ZJRUxEKERTSV9NT0RFX0NGRywgMCwgMCks
DQo+ICAgCS5jZmdfdmlkX21vZGVfdHlwZSA9CQlSRUdfRklFTEQoRFNJX1ZJRF9NT0RFX0NGRywg
MCwgMSksDQo+ICAgCS5jZmdfdmlkX21vZGVfbG93X3Bvd2VyID0JUkVHX0ZJRUxEKERTSV9WSURf
TU9ERV9DRkcsIDgsIDEzKSwNCj4gICAJLmNmZ192aWRfbW9kZV92cGdfZW4gPQkJUkVHX0ZJRUxE
KERTSV9WSURfTU9ERV9DRkcsIDE2LCAxNiksDQo+ICAgCS5jZmdfdmlkX21vZGVfdnBnX2hvcml6
ID0JUkVHX0ZJRUxEKERTSV9WSURfTU9ERV9DRkcsIDI0LCAyNCksDQo+IC0JLmNmZ192aWRfcGt0
X3NpemUgPQkJUkVHX0ZJRUxEKERTSV9WSURfUEtUX1NJWkUsIDAsIDEwKSwNCj4gLQkuY2ZnX3Zp
ZF9oc2FfdGltZSA9CQlSRUdfRklFTEQoRFNJX1ZJRF9IU0FfVElNRSwgMCwgMzEpLA0KPiAtCS5j
ZmdfdmlkX2hicF90aW1lID0JCVJFR19GSUVMRChEU0lfVklEX0hCUF9USU1FLCAwLCAzMSksDQo+
IC0JLmNmZ192aWRfaGxpbmVfdGltZSA9CQlSRUdfRklFTEQoRFNJX1ZJRF9ITElORV9USU1FLCAw
LCAzMSksDQo+IC0JLmNmZ192aWRfdnNhX3RpbWUgPQkJUkVHX0ZJRUxEKERTSV9WSURfVlNBX0xJ
TkVTLCAwLCAzMSksDQo+IC0JLmNmZ192aWRfdmJwX3RpbWUgPQkJUkVHX0ZJRUxEKERTSV9WSURf
VkJQX0xJTkVTLCAwLCAzMSksDQo+IC0JLmNmZ192aWRfdmZwX3RpbWUgPQkJUkVHX0ZJRUxEKERT
SV9WSURfVkZQX0xJTkVTLCAwLCAzMSksDQo+IC0JLmNmZ192aWRfdmFjdGl2ZV90aW1lID0JCVJF
R19GSUVMRChEU0lfVklEX1ZBQ1RJVkVfTElORVMsIDAsIDMxKSwNCj4gKwkuY2ZnX3ZpZF9wa3Rf
c2l6ZSA9CQlSRUdfRklFTEQoRFNJX1ZJRF9QS1RfU0laRSwgMCwgMTMpLA0KPiArCS5jZmdfdmlk
X2hzYV90aW1lID0JCVJFR19GSUVMRChEU0lfVklEX0hTQV9USU1FLCAwLCAxMSksDQo+ICsJLmNm
Z192aWRfaGJwX3RpbWUgPQkJUkVHX0ZJRUxEKERTSV9WSURfSEJQX1RJTUUsIDAsIDExKSwNCj4g
KwkuY2ZnX3ZpZF9obGluZV90aW1lID0JCVJFR19GSUVMRChEU0lfVklEX0hMSU5FX1RJTUUsIDAs
IDE0KSwNCj4gKwkuY2ZnX3ZpZF92c2FfdGltZSA9CQlSRUdfRklFTEQoRFNJX1ZJRF9WU0FfTElO
RVMsIDAsIDkpLA0KPiArCS5jZmdfdmlkX3ZicF90aW1lID0JCVJFR19GSUVMRChEU0lfVklEX1ZC
UF9MSU5FUywgMCwgOSksDQo+ICsJLmNmZ192aWRfdmZwX3RpbWUgPQkJUkVHX0ZJRUxEKERTSV9W
SURfVkZQX0xJTkVTLCAwLCA5KSwNCj4gKwkuY2ZnX3ZpZF92YWN0aXZlX3RpbWUgPQkJUkVHX0ZJ
RUxEKERTSV9WSURfVkFDVElWRV9MSU5FUywgMCwgMTMpLA0KPiAgIAkuY2ZnX3BoeV90eHJlcXVl
c3RjbGtocyA9CVJFR19GSUVMRChEU0lfTFBDTEtfQ1RSTCwgMCwgMCksDQo+IC0JLmNmZ19waHlf
YnRhX3RpbWUgPQkJUkVHX0ZJRUxEKERTSV9CVEFfVE9fQ05ULCAwLCAzMSksDQo+IC0JLmNmZ19w
aHlfbWF4X3JkX3RpbWUgPQkJUkVHX0ZJRUxEKERTSV9QSFlfVE1SX0NGRywgMCwgMTUpLA0KPiAr
CS5jZmdfcGh5X2J0YV90aW1lID0JCVJFR19GSUVMRChEU0lfQlRBX1RPX0NOVCwgMCwgMTUpLA0K
PiArCS5jZmdfcGh5X21heF9yZF90aW1lID0JCVJFR19GSUVMRChEU0lfUEhZX1RNUl9DRkcsIDAs
IDE0KSwNCj4gICAJLmNmZ19waHlfbHAyaHNfdGltZSA9CQlSRUdfRklFTEQoRFNJX1BIWV9UTVJf
Q0ZHLCAxNiwgMjMpLA0KPiAgIAkuY2ZnX3BoeV9oczJscF90aW1lID0JCVJFR19GSUVMRChEU0lf
UEhZX1RNUl9DRkcsIDI0LCAzMSksDQo+IC0JLmNmZ19waHlfbWF4X3JkX3RpbWVfdjEzMSA9CVJF
R19GSUVMRChEU0lfUEhZX1RNUl9SRF9DRkcsIDAsIDE1KSwNCj4gLQkuY2ZnX3BoeV9scDJoc190
aW1lX3YxMzEgPQlSRUdfRklFTEQoRFNJX1BIWV9UTVJfQ0ZHLCAwLCAxNSksDQo+IC0JLmNmZ19w
aHlfaHMybHBfdGltZV92MTMxID0JUkVHX0ZJRUxEKERTSV9QSFlfVE1SX0NGRywgMTYsIDMxKSwN
Cj4gKwkuY2ZnX3BoeV9tYXhfcmRfdGltZV92MTMxID0JUkVHX0ZJRUxEKERTSV9QSFlfVE1SX1JE
X0NGRywgMCwgMTQpLA0KPiArCS5jZmdfcGh5X2xwMmhzX3RpbWVfdjEzMSA9CVJFR19GSUVMRChE
U0lfUEhZX1RNUl9DRkcsIDAsIDkpLA0KPiArCS5jZmdfcGh5X2hzMmxwX3RpbWVfdjEzMSA9CVJF
R19GSUVMRChEU0lfUEhZX1RNUl9DRkcsIDE2LCAyNSksDQo+ICAgCS5jZmdfcGh5X2Nsa2xwMmhz
X3RpbWUgPQlSRUdfRklFTEQoRFNJX1BIWV9UTVJfTFBDTEtfQ0ZHLCAwLCAxNSksDQo+ICAgCS5j
ZmdfcGh5X2Nsa2hzMmxwX3RpbWUgPQlSRUdfRklFTEQoRFNJX1BIWV9UTVJfTFBDTEtfQ0ZHLCAx
NiwgMzEpLA0KPiAgIAkuY2ZnX3BoeV90ZXN0Y2xyID0JCVJFR19GSUVMRChEU0lfUEhZX1RTVF9D
VFJMMCwgMCwgMCksDQo+IEBAIC0zNjEsMTEgKzM2MSwxMSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0
IGR3X21pcGlfZHNpX3ZhcmlhbnQgZHdfbWlwaV9kc2lfdjEzMF92MTMxX2xheW91dCA9IHsNCj4g
ICAJLmNmZ19wY2toZGxfY2ZnID0JCVJFR19GSUVMRChEU0lfUENLSERMX0NGRywgMCwgNCksDQo+
ICAgCS5jZmdfaHN0eF90aW1lb3V0X2NvdW50ZXIgPQlSRUdfRklFTEQoRFNJX1RPX0NOVF9DRkcs
IDE2LCAzMSksDQo+ICAgCS5jZmdfbHByeF90aW1lb3V0X2NvdW50ZXIgPQlSRUdfRklFTEQoRFNJ
X1RPX0NOVF9DRkcsIDAsIDE1KSwNCj4gLQkuY2ZnX2ludF9zdGF0MCA9CQlSRUdfRklFTEQoRFNJ
X0lOVF9TVDAsIDAsIDMxKSwNCj4gLQkuY2ZnX2ludF9zdGF0MSA9CQlSRUdfRklFTEQoRFNJX0lO
VF9TVDEsIDAsIDMxKSwNCj4gLQkuY2ZnX2ludF9tYXNrMCA9CQlSRUdfRklFTEQoRFNJX0lOVF9N
U0swLCAwLCAzMSksDQo+IC0JLmNmZ19pbnRfbWFzazEgPQkJUkVHX0ZJRUxEKERTSV9JTlRfTVNL
MSwgMCwgMzEpLA0KPiAtCS5jZmdfZ2VuX2hkciA9CQkJUkVHX0ZJRUxEKERTSV9HRU5fSERSLCAw
LCAzMSksDQo+ICsJLmNmZ19pbnRfc3RhdDAgPQkJUkVHX0ZJRUxEKERTSV9JTlRfU1QwLCAwLCAy
MCksDQo+ICsJLmNmZ19pbnRfc3RhdDEgPQkJUkVHX0ZJRUxEKERTSV9JTlRfU1QxLCAwLCAxMiks
DQo+ICsJLmNmZ19pbnRfbWFzazAgPQkJUkVHX0ZJRUxEKERTSV9JTlRfTVNLMCwgMCwgMjApLA0K
PiArCS5jZmdfaW50X21hc2sxID0JCVJFR19GSUVMRChEU0lfSU5UX01TSzEsIDAsIDEyKSwNCj4g
KwkuY2ZnX2dlbl9oZHIgPQkJCVJFR19GSUVMRChEU0lfR0VOX0hEUiwgMCwgMjMpLA0KPiAgIAku
Y2ZnX2dlbl9wYXlsb2FkID0JCVJFR19GSUVMRChEU0lfR0VOX1BMRF9EQVRBLCAwLCAzMSksDQo+
ICAgfTsNCj4gICANCj4gQEAgLTM4Miw3ICszODIsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGR3
X21pcGlfZHNpX3ZhcmlhbnQgZHdfbWlwaV9kc2lfdjEwMV9sYXlvdXQgPSB7DQo+ICAgCS5jZmdf
Y21kX21vZGVfZ2VuX2x3X2VuID0JUkVHX0ZJRUxEKERTSV9DTURfTU9ERV9DRkcsIDExLCAxMSks
DQo+ICAgCS5jZmdfY21kX21vZGVfZGNzX2x3X2VuID0JUkVHX0ZJRUxEKERTSV9DTURfTU9ERV9D
RkcsIDEyLCAxMiksDQo+ICAgCS5jZmdfY21kX21vZGVfYWNrX3Jxc3RfZW4gPQlSRUdfRklFTEQo
RFNJX0NNRF9NT0RFX0NGR19WMTAxLCAxMywgMTMpLA0KPiAtCS5jZmdfY21kX3BrdF9zdGF0dXMg
PQkJUkVHX0ZJRUxEKERTSV9DTURfUEtUX1NUQVRVU19WMTAxLCAwLCAxNCksDQo+ICsJLmNmZ19j
bWRfcGt0X3N0YXR1cyA9CQlSRUdfRklFTEQoRFNJX0NNRF9QS1RfU1RBVFVTX1YxMDEsIDAsIDYp
LA0KPiAgIAkuY2ZnX3ZpZF9tb2RlX2VuID0JCVJFR19GSUVMRChEU0lfVklEX01PREVfQ0ZHX1Yx
MDEsIDAsIDApLA0KPiAgIAkuY2ZnX3ZpZF9tb2RlX3R5cGUgPQkJUkVHX0ZJRUxEKERTSV9WSURf
TU9ERV9DRkdfVjEwMSwgMSwgMiksDQo+ICAgCS5jZmdfdmlkX21vZGVfbG93X3Bvd2VyID0JUkVH
X0ZJRUxEKERTSV9WSURfTU9ERV9DRkdfVjEwMSwgMywgOCksDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
