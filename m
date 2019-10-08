Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5FCCFC0E
	for <lists+linux-rockchip@lfdr.de>; Tue,  8 Oct 2019 16:12:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X/uHnCd2gSUDGLiqhCc8Fxh4uGDwhC/FeCexI5v2piI=; b=fakLYugVXO2rmK
	Hyuy2dkQfzastKy2JsRFloABIjcB+BWRQ3sXa2NWrOGXCPXddBj+vk/n4T0s9YzGyqYYbe+TNJ6jz
	2legRaA66hxRalnYWbgWIu/B8ESwoKClTgiP66u8/N7CLQ42SC3tuhUmTOKAvP/CzHX0OLvoygFEh
	gbUpRW3uVMwTxpXw9WJ9KqMHGrl6IysfWzXc0Bp3ShlGAZY7WJN1vqUMTW16q9TuCK6GvR4OlB6nf
	Ygno87oqzM3PJPE0XW9JussK5M5MfFXQUkLchgHg0PCMlslZpF6noFELUHE0oC0/E5bCkDhX/izvV
	7n5y56UWfbUBE6zsUDLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHqDz-0005HD-Oy; Tue, 08 Oct 2019 14:12:27 +0000
Received: from mail-oln040092067091.outbound.protection.outlook.com
 ([40.92.67.91] helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHqDv-0005Gf-SB
 for linux-rockchip@lists.infradead.org; Tue, 08 Oct 2019 14:12:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NlPExkRgL6GgtBUt6tAKl1E7DS6OayhU6PwmnrLtQklwq+w4XaQ/CQmVo0wtnC6fegmcVWrQ4bJxpD7sVZkOgm+NjTYoRYMtar1bESO6el0bTUfmHcL0hCvymSvY9ThJfLpNaFT8uDUCKi4ty/DJeLQ4s3IeNTcXgWJLI9GNrn941EfWbgiMAYIKrNGr7cJ8g9+PbsuHce/fv61+QkWwWqL0pncUmOqKxGimuFiHfzI8RJOL9vQlxtULqFkwcW8iDqzGnpLIz+WfI6EM5GzcXO/LjCmOdbNus38w15aTg1SVcorS30U/jw3uJLkXUAX4YlXxGb9fq64dU3BX4R3fIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BlZhZ6DUvhbUmRfdizhoGIvpuA2o4G6ZArFrtTIvP8k=;
 b=iEFDleA5xvbA+gyE1lLHi9WwaOTSRh5hBpW0QpuaeGs4ZLlncul2OlSuCUEl1PhYv4+RCSaLnAH/y0nx29bQCkq8Ex+kS8E0+DrivTD6+vXAxjUDML5VHrc0YPBUGMjYSwaRvZZu2LHyBvwd/mfG6Gi4BoRHMdHCtIYr1o2d9iapG4zIvow0kip7Q3IXoSRmrvX3i7bzJxHcDD2FUFE6jWMYXaN7PXzhPGID0eKidMmTyLp9Ok2TERr1i6IBJvsN7DXqE+7bGnZbaocbq1y2GdrF+kqYiXHG2ZfyxV2FeA2W5NUP9Fh07/k6tXWOAOPIYY6UZwk+IV5nYtzh89jjDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from VE1EUR02FT011.eop-EUR02.prod.protection.outlook.com
 (10.152.12.60) by VE1EUR02HT132.eop-EUR02.prod.protection.outlook.com
 (10.152.13.79) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2327.20; Tue, 8 Oct
 2019 14:12:20 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com (10.152.12.51) by
 VE1EUR02FT011.mail.protection.outlook.com (10.152.12.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2327.20 via Frontend Transport; Tue, 8 Oct 2019 14:12:20 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::5c5a:1160:a2e0:43d8]) by HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::5c5a:1160:a2e0:43d8%4]) with mapi id 15.20.2305.023; Tue, 8 Oct 2019
 14:12:20 +0000
From: Jonas Karlman <jonas@kwiboo.se>
To: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [PATCH v2 for 5.4 2/4] media: hantro: Fix H264 max frmsize
 supported on RK3288
Thread-Topic: [PATCH v2 for 5.4 2/4] media: hantro: Fix H264 max frmsize
 supported on RK3288
Thread-Index: AQHVfTc2RvTWvQQ6Z06gn22kTgvMXqdQN9WAgAARyQCAAEYFgIAAMH0AgAAFHICAAAUdgA==
Date: Tue, 8 Oct 2019 14:12:20 +0000
Message-ID: <HE1PR06MB4011B897EA5497659A19BCC6AC9A0@HE1PR06MB4011.eurprd06.prod.outlook.com>
References: <20191007174505.10681-1-ezequiel@collabora.com>
 <20191007174505.10681-3-ezequiel@collabora.com>
 <CAAFQd5BNu2ea3ei_imHmEwmdna0+iiSbQSv_SBsdHfP4Uh1h4Q@mail.gmail.com>
 <HE1PR06MB4011EC9E93ECBB6773252247AC9A0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <CAAFQd5CWoAP1psrEW6bVMkRmhFeTvFKtDSLjT7nefc2YiFovqQ@mail.gmail.com>
 <CAAFQd5AYCiKcA9pGc44L3gGHLPx6iMSb7KywkO8OqVv4gS8KvQ@mail.gmail.com>
 <CAAFQd5AQXGX_2gmKLfymH5mLG-uVh-v+XXtGXzbfzYzVVV42mA@mail.gmail.com>
In-Reply-To: <CAAFQd5AQXGX_2gmKLfymH5mLG-uVh-v+XXtGXzbfzYzVVV42mA@mail.gmail.com>
Accept-Language: sv-SE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR0802CA0024.eurprd08.prod.outlook.com
 (2603:10a6:3:bd::34) To HE1PR06MB4011.eurprd06.prod.outlook.com
 (2603:10a6:7:9c::32)
x-incomingtopheadermarker: OriginalChecksum:D9264EE44C9BBA1C3C6011B3BCA1A6C674403C17A193C976153EB9A155F18205;
 UpperCasedChecksum:EBE47D720E54C1965C40B6989CBEE2D73E4BF2991CD66B099D8DC625E8E616F6;
 SizeAsReceived:8553; Count:50
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [nYzaafeuMhtjNOccHZLbNFzcPtR56TrI]
x-microsoft-original-message-id: <a13d9d30-9c5d-2512-9a25-0b42d5495f49@kwiboo.se>
x-ms-publictraffictype: Email
x-incomingheadercount: 50
x-eopattributedmessage: 0
x-ms-traffictypediagnostic: VE1EUR02HT132:
x-ms-exchange-purlcount: 2
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rkI+XNDLm1r0OjqK9cXlOLRMEroubczgD6zEoq4J7nbyD+mOxoZe1Q9jAEbNwmK4adO19M0nNghcTbqmuyWCm75dfBOTYsajeuOkO9wIqw6HC5kjqBTk6pO9ZhwMogvRe79ELYdfoq2//XjrEDpZt4jIgoJ+mSMqj1WJhuqEnWjwqNWwfM0UyZh6hWpzdz73nPHtifZ33wpZAJZ/uP4OXa69kYIvuinQbYTifyFzNIw=
x-ms-exchange-transport-forked: True
Content-ID: <9ED18B5529866441AD1264E8026A38ED@eurprd06.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 1bdffa7d-e86e-472b-199f-08d74bf98824
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2019 14:12:20.2799 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR02HT132
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_071223_914810_6698C34D 
X-CRM114-Status: GOOD (  18.29  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.67.91 listed in list.dnswl.org]
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
Cc: "fbuergisser@chromium.org" <fbuergisser@chromium.org>,
 "kernel@collabora.com" <kernel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Douglas Anderson <dianders@chromium.org>, "open list:ARM/Rockchip
 SoC..." <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gMjAxOS0xMC0wOCAxNTo1MywgVG9tYXN6IEZpZ2Egd3JvdGU6DQo+IE9uIFR1ZSwgT2N0IDgs
IDIwMTkgYXQgMTA6MzUgUE0gVG9tYXN6IEZpZ2EgPHRmaWdhQGNocm9taXVtLm9yZz4gd3JvdGU6
DQo+PiBPbiBUdWUsIE9jdCA4LCAyMDE5IGF0IDc6NDIgUE0gVG9tYXN6IEZpZ2EgPHRmaWdhQGNo
cm9taXVtLm9yZz4gd3JvdGU6DQo+Pj4gT24gVHVlLCBPY3QgOCwgMjAxOSBhdCAzOjMxIFBNIEpv
bmFzIEthcmxtYW4gPGpvbmFzQGt3aWJvby5zZT4gd3JvdGU6DQo+Pj4+IE9uIDIwMTktMTAtMDgg
MDc6MjcsIFRvbWFzeiBGaWdhIHdyb3RlOg0KPj4+Pj4gSGkgRXplcXVpZWwsIEpvbmFzLA0KPj4+
Pj4NCj4+Pj4+IE9uIFR1ZSwgT2N0IDgsIDIwMTkgYXQgMjo0NiBBTSBFemVxdWllbCBHYXJjaWEg
PGV6ZXF1aWVsQGNvbGxhYm9yYS5jb20+IHdyb3RlOg0KPj4+Pj4+IEZyb206IEpvbmFzIEthcmxt
YW4gPGpvbmFzQGt3aWJvby5zZT4NCj4+Pj4+Pg0KPj4+Pj4+IFRSTSBzcGVjaWZ5IHN1cHBvcnRl
ZCBpbWFnZSBzaXplIDQ4eDQ4IHRvIDQwOTZ4MjMwNCBhdCBzdGVwIHNpemUgMTYgcGl4ZWxzLA0K
Pj4+Pj4+IGNoYW5nZSBmcm1zaXplIG1heF93aWR0aC9tYXhfaGVpZ2h0IHRvIG1hdGNoIFRSTS4N
Cj4+Pj4+Pg0KPj4+Pj4+IEZpeGVzOiA3NjAzMjc5MzBlMTAgKCJtZWRpYTogaGFudHJvOiBFbmFi
bGUgSDI2NCBkZWNvZGluZyBvbiByazMyODgiKQ0KPj4+Pj4+IFNpZ25lZC1vZmYtYnk6IEpvbmFz
IEthcmxtYW4gPGpvbmFzQGt3aWJvby5zZT4NCj4+Pj4+PiAtLS0NCj4+Pj4+PiB2MjoNCj4+Pj4+
PiAqIE5vIGNoYW5nZXMuDQo+Pj4+Pj4NCj4+Pj4+PiAgZHJpdmVycy9zdGFnaW5nL21lZGlhL2hh
bnRyby9yazMyODhfdnB1X2h3LmMgfCA0ICsrLS0NCj4+Pj4+PiAgMSBmaWxlIGNoYW5nZWQsIDIg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4+Pj4+Pg0KPj4+Pj4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL3JrMzI4OF92cHVfaHcuYyBiL2RyaXZlcnMv
c3RhZ2luZy9tZWRpYS9oYW50cm8vcmszMjg4X3ZwdV9ody5jDQo+Pj4+Pj4gaW5kZXggNmJmY2M0
N2QxZTU4Li5lYmIwMTdiOGEzMzQgMTAwNjQ0DQo+Pj4+Pj4gLS0tIGEvZHJpdmVycy9zdGFnaW5n
L21lZGlhL2hhbnRyby9yazMyODhfdnB1X2h3LmMNCj4+Pj4+PiArKysgYi9kcml2ZXJzL3N0YWdp
bmcvbWVkaWEvaGFudHJvL3JrMzI4OF92cHVfaHcuYw0KPj4+Pj4+IEBAIC02NywxMCArNjcsMTAg
QEAgc3RhdGljIGNvbnN0IHN0cnVjdCBoYW50cm9fZm10IHJrMzI4OF92cHVfZGVjX2ZtdHNbXSA9
IHsNCj4+Pj4+PiAgICAgICAgICAgICAgICAgLm1heF9kZXB0aCA9IDIsDQo+Pj4+Pj4gICAgICAg
ICAgICAgICAgIC5mcm1zaXplID0gew0KPj4+Pj4+ICAgICAgICAgICAgICAgICAgICAgICAgIC5t
aW5fd2lkdGggPSA0OCwNCj4+Pj4+PiAtICAgICAgICAgICAgICAgICAgICAgICAubWF4X3dpZHRo
ID0gMzg0MCwNCj4+Pj4+PiArICAgICAgICAgICAgICAgICAgICAgICAubWF4X3dpZHRoID0gNDA5
NiwNCj4+Pj4+PiAgICAgICAgICAgICAgICAgICAgICAgICAuc3RlcF93aWR0aCA9IEgyNjRfTUJf
RElNLA0KPj4+Pj4+ICAgICAgICAgICAgICAgICAgICAgICAgIC5taW5faGVpZ2h0ID0gNDgsDQo+
Pj4+Pj4gLSAgICAgICAgICAgICAgICAgICAgICAgLm1heF9oZWlnaHQgPSAyMTYwLA0KPj4+Pj4+
ICsgICAgICAgICAgICAgICAgICAgICAgIC5tYXhfaGVpZ2h0ID0gMjMwNCwNCj4+Pj4+IFRoaXMg
ZG9lc24ndCBtYXRjaCB0aGUgZGF0YXNoZWV0IEkgaGF2ZSwgd2hpY2ggaXMgUkszMjg4IERhdGFz
aGVldCBSZXYNCj4+Pj4+IDEuNCBhbmQgd2hpY2ggaGFzIHRoZSB2YWx1ZXMgYXMgaW4gY3VycmVu
dCBjb2RlLiBXaGF0J3MgdGhlIG9uZSB5b3UNCj4+Pj4+IGdvdCB0aGUgdmFsdWVzIGZyb20/DQo+
Pj4+IFRoZSBSSzMyODggVFJNIHZjb2RlYyBjaGFwdGVyIGZyb20gWzFdLCB1bmtub3duIHJldmlz
aW9uIGFuZCBkYXRlLCBsaXN0cyA0OHg0OCB0byA0MDk2eDIzMDQgc3RlcCBzaXplIDE2IHBpeGVs
cyB1bmRlciAyNS41LjEgSC4yNjQgZGVjb2Rlci4NCj4+Pj4NCj4+Pj4gSSBjYW4gYWxzbyBjb25m
aXJtIHRoYXQgb25lIG9mIG15IHRlc3Qgc2FtcGxlcyAoUFVQUElFUyBCQVRIIElOIDRLKSBpcyA0
MDk2eDIzMDQgYW5kIGNhbiBiZSBkZWNvZGVkIGFmdGVyIHRoaXMgcGF0Y2guDQo+Pj4+IEhvd2V2
ZXIgdGhlIGRlY29kaW5nIHNwZWVkIGlzIG5vdCBvcHRpbWFsIGF0IDQwME1oeiwgaWYgSSByZWNh
bGwgY29ycmVjdGx5IHlvdSBuZWVkIHRvIHNldCB0aGUgVlBVMSBjbG9jayB0byA2MDBNaHogZm9y
IDRLIGRlY29kaW5nIG9uIFJLMzI4OC4NCj4+Pj4NCj4+Pj4gSSBhbSBub3Qgc3VyZSBpZiBJIHNo
b3VsZCBpbmNsdWRlIGEgdjIgb2YgdGhpcyBwYXRjaCBpbiBteSB2MiBzZXJpZXMsIGFzLWlzIHRo
aXMgcGF0Y2ggZG8gbm90IGFwcGx5IG9uIG1hc3RlciAoSDI2NF9NQl9ESU0gaGFzIGNoYW5nZWQg
dG8gTUJfRElNIGluIG1hc3RlcikuDQo+Pj4+DQo+Pj4+IFsxXSBodHRwOi8vd3d3LnQtZmlyZWZs
eS5jb20vZG93bmxvYWQvZmlyZWZseS1yazMyODgvZG9jcy9UUk0vcmszMjg4LWNoYXB0ZXItMjUt
dmlkZW8tZW5jb2Rlci1kZWNvZGVyLXVuaXQtKHZjb2RlYykucGRmDQo+Pj4gSSBjaGVja2VkIHRo
ZSBSSzMyODggVFJNIFYxLjEgdG9vIGFuZCBpdCByZWZlcnMgdG8gMzg0MHgyMTYwQDI0ZnBzIGFz
DQo+Pj4gdGhlIG1heGltdW0uDQo+Pj4NCj4+PiBBcyBmb3IgcGVyZm9ybWFuY2UsIHdlJ3ZlIGFj
dHVhbGx5IGJlZW4gZ2V0dGluZyBhcm91bmQgMzMgZnBzIGF0IDQwMA0KPj4+IE1IeiB3aXRoIDM4
NDB4MjE2MCBvbiBvdXIgZGV2aWNlcyAodGhlIG9sZCBSSzMyODggQXN1cyBDaHJvbWVib29rDQo+
Pj4gRmxpcCkuDQo+Pj4NCj4+PiBJIGd1ZXNzIHdlIG1pZ2h0IHdhbnQgdG8gY2hlY2sgdGhhdCB3
aXRoIEhhbnRyby4NCj4+IENvdWxkIHlvdSBjaGVjayB0aGUgdmFsdWUgb2YgYml0cyAxMDowIGlu
IHJlZ2lzdGVyIGF0IDB4MGM4PyBUaGF0DQo+PiBzaG91bGQgYmUgdGhlIG1heGltdW0gc3VwcG9y
dGVkIHN0cmVhbSB3aWR0aCBpbiB0aGUgdW5pdHMgb2YgMTYNCj4+IHBpeGVscy4NCj4gQ29ycmVj
dGlvbjogVGhlIHVuaXQgaXMgMSBwaXhlbCBhbmQgdGhlcmUgYXJlIGFkZGl0aW9uYWwgMiBtb3N0
DQo+IHNpZ25pZmljYW50IGJpdHMgYXQgMHgwZDgsIDE1OjE0Lg0KDQpJIHdpbGwgY2hlY2sgdGhp
cyBsYXRlciB0b25pZ2h0IHdoZW4gSSBoYXZlIGFjY2VzcyB0byBteSBkZXZpY2VzLg0KVGhlIFBV
UFBJRVMgQkFUSCBJTiA0SyAoNDA5NngyMzA0KSBzYW1wbGUgZGVjb2RlZCB3aXRob3V0IGlzc3Vl
IHVzaW5nIHJvY2tjaGlwIDQuNCBCU1Aga2VybmVsIGFuZCBtcHAgbGFzdCB0aW1lIEkgdGVzdGVk
Lg0KDQpUaGUgdmNvZGVjIGRyaXZlciBpbiA0LjQgQlNQIGtlcm5lbCB1c2UgMzAwLzQwMCBNaHog
YXMgZGVmYXVsdCBjbG9jayByYXRlIGFuZCB3aWxsIGNoYW5nZSB0byA2MDAgTWh6IHdoZW4gd2lk
dGggaXMgb3ZlciAyNTYwLCBzZWUgWzFdOg0KwqAgcmFpc2UgZnJlcXVlbmN5IGZvciByZXNvbHV0
aW9uIGxhcmdlciB0aGFuIDE0NDBwIGF2Yw0KDQpbMV0gaHR0cHM6Ly9naXRodWIuY29tL3JvY2tj
aGlwLWxpbnV4L2tlcm5lbC9ibG9iL2RldmVsb3AtNC40L2RyaXZlcnMvdmlkZW8vcm9ja2NoaXAv
dmNvZGVjL3Zjb2RlY19zZXJ2aWNlLmMjTDI1NTEtTDI1NzANCg0KUmVnYXJkcywNCkpvbmFzDQoN
Cj4NCj4gQmVzdCByZWdhcmRzLA0KPiBUb21hc3oNCg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
