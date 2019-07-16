Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 271D86A97C
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 15:21:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MATdygiIZWcSaQKfSaoHLCEjTBCFk7rqPkSn7NIV7c4=; b=jf73DNkqXOr7fip6tPYFOr9Ph
	Exj2SL586iIPq+w3KRJvxlm7bdiCCAlhARPb16dpTsVDzQSM0gDABEQWZOuRcmh+lS+Tv1eHIXDpP
	jg8UfTCRn4W4uebozWlyPAWbxUZc9IEoZCsbtgZJvl7XzhuAHLeYoTFeIdyBqN7DdfStfwx4/snt+
	Rcl5cZi6fIsGG1nsVDDQIMCu6xNKDKIDfrXUBJAROkehcPNdRFXMTZIDalAIpOb33V5A330jnMjp6
	t9ALeyPYBKQVHPq/jd08wJoj8AayCgLvMsadx63wMp0ofMXyycKpwND6lR0/D6rNLb4RogJkQ0EGh
	OIqWSSN3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnNO5-0005tT-86; Tue, 16 Jul 2019 13:20:57 +0000
Received: from regular1.263xmail.com ([211.150.70.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnNO1-0005sf-KC
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 13:20:55 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.103])
 by regular1.263xmail.com (Postfix) with ESMTP id 9B380679;
 Tue, 16 Jul 2019 21:20:51 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P8795T139711072937728S1563283241957998_; 
 Tue, 16 Jul 2019 21:20:49 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <5acca3f8de14ec03bd25766a43e4894b>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 51/57] ram: rk3399: Add set_rate sdram rk3399 ops
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-52-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <f3607c00-c5db-0513-b0c4-b6bec5390e83@rock-chips.com>
Date: Tue, 16 Jul 2019 21:20:42 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-52-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_062054_066962_F6B5184B 
X-CRM114-Status: GOOD (  15.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.195 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU3LCBKYWdhbiBUZWtpIHdyb3RlOgo+IEREUiBzZXQgcmF0
ZSBjYW4gYmUgZXZlbiByZXF1aXJlZCBmb3IgbHBkZHI0IGFuZCB3ZQo+IG5lZWQgdG8ga2VlcCB0
aGUgbHBkZHI0IGNvZGUgdG8gY29tcGlsZSBvbmx5IGZvciByZWxldmFudAo+IGJvYXJkcyB3aGlj
aCBkbyBzdXBwb3J0IGxwZGRyNC4KPgo+IEZvciB0aGlzIHJlcXVpcmVtZW50LCBhbmQgZm9yIGNv
ZGUgcmVhZGFiaWxpdHkgaGFuZGxlCj4gZGF0YSB0cmFpbmluZyB2aWEgc2RyYW1fcmszMzk5X29w
cyB3aXRoIC5zZXRfcmF0ZSBhbmQKPiBzYW1lIHdpbGwgdXBkYXRlIGluIGZ1dHVyZSB3aGlsZSBz
dXBwb3J0aW5nIGxwZGRyNCBjb2RlLgo+Cj4gU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVraSA8amFn
YW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+CgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8S2V2ZXIu
eWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKIMKgLSBLZXZlcgo+IC0tLQo+ICAgZHJpdmVy
cy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMgfCAxMSArKysrKysrKy0tLQo+ICAgMSBmaWxl
IGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYyBiL2RyaXZlcnMvcmFtL3JvY2tj
aGlwL3NkcmFtX3JrMzM5OS5jCj4gaW5kZXggNjIzNjg1ZTNjNS4uYzNkNzY2NWVhMiAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYwo+ICsrKyBiL2RyaXZl
cnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jCj4gQEAgLTc0LDYgKzc0LDggQEAgc3RydWN0
IGRyYW1faW5mbyB7Cj4gICBzdHJ1Y3Qgc2RyYW1fcmszMzk5X29wcyB7Cj4gICAJaW50ICgqZGF0
YV90cmFpbmluZykoc3RydWN0IGRyYW1faW5mbyAqZHJhbSwgdTMyIGNoYW5uZWwsIHU4IHJhbmss
Cj4gICAJCQkgICAgIHN0cnVjdCByazMzOTlfc2RyYW1fcGFyYW1zICpzZHJhbSk7Cj4gKwlpbnQg
KCpzZXRfcmF0ZSkoc3RydWN0IGRyYW1faW5mbyAqZHJhbSwKPiArCQkJY29uc3Qgc3RydWN0IHJr
MzM5OV9zZHJhbV9wYXJhbXMgKnBhcmFtcyk7Cj4gICB9Owo+ICAgCj4gICAjaWYgZGVmaW5lZChD
T05GSUdfVFBMX0JVSUxEKSB8fCBcCj4gQEAgLTk0OCw2ICs5NTAsNyBAQCBzdGF0aWMgaW50IHBj
dGxfY2ZnKHN0cnVjdCBkcmFtX2luZm8gKmRyYW0sIGNvbnN0IHN0cnVjdCBjaGFuX2luZm8gKmNo
YW4sCj4gICAJcmV0dXJuIDA7Cj4gICB9Cj4gICAKPiArI2lmICFkZWZpbmVkKENPTkZJR19SQU1f
UkszMzk5X0xQRERSNCkKPiAgIHN0YXRpYyB2b2lkIHNlbGVjdF9wZXJfY3NfdHJhaW5pbmdfaW5k
ZXgoY29uc3Qgc3RydWN0IGNoYW5faW5mbyAqY2hhbiwKPiAgIAkJCQkJIHUzMiByYW5rKQo+ICAg
ewo+IEBAIC0xMzY4LDYgKzEzNzEsNyBAQCBzdGF0aWMgaW50IGRhdGFfdHJhaW5pbmcoc3RydWN0
IGRyYW1faW5mbyAqZHJhbSwgdTMyIGNoYW5uZWwsCj4gICAKPiAgIAlyZXR1cm4gMDsKPiAgIH0K
PiArI2VuZGlmCj4gICAKPiAgIHN0YXRpYyB2b2lkIHNldF9kZHJjb25maWcoY29uc3Qgc3RydWN0
IGNoYW5faW5mbyAqY2hhbiwKPiAgIAkJCSAgY29uc3Qgc3RydWN0IHJrMzM5OV9zZHJhbV9wYXJh
bXMgKnBhcmFtcywKPiBAQCAtMTQ4Nyw3ICsxNDkxLDYgQEAgc3RhdGljIGludCBkZWZhdWx0X2Rh
dGFfdHJhaW5pbmcoc3RydWN0IGRyYW1faW5mbyAqZHJhbSwgdTMyIGNoYW5uZWwsIHU4IHJhbmss
Cj4gICAKPiAgIAlyZXR1cm4gZGF0YV90cmFpbmluZyhkcmFtLCBjaGFubmVsLCBwYXJhbXMsIHRy
YWluaW5nX2ZsYWcpOwo+ICAgfQo+IC0jZW5kaWYKPiAgIAo+ICAgc3RhdGljIGludCBzd2l0Y2hf
dG9fcGh5X2luZGV4MShzdHJ1Y3QgZHJhbV9pbmZvICpkcmFtLAo+ICAgCQkJCWNvbnN0IHN0cnVj
dCByazMzOTlfc2RyYW1fcGFyYW1zICpwYXJhbXMpCj4gQEAgLTE1MzQsNyArMTUzNyw4IEBAIHN0
YXRpYyBpbnQgc3dpdGNoX3RvX3BoeV9pbmRleDEoc3RydWN0IGRyYW1faW5mbyAqZHJhbSwKPiAg
IAlyZXR1cm4gMDsKPiAgIH0KPiAgIAo+IC0jaWYgZGVmaW5lZChDT05GSUdfUkFNX1JLMzM5OV9M
UEREUjQpCj4gKyNlbHNlCj4gKwo+ICAgc3RhdGljIHUzMiBnZXRfZGRyX3N0cmlkZShzdHJ1Y3Qg
cmszMzk5X3BtdXNncmZfcmVncyAqcG11c2dyZikKPiAgIHsKPiAgIAlyZXR1cm4gKChyZWFkbCgm
cG11c2dyZi0+c29jX2NvbjQpID4+IDEwKSAmIDB4MUYpOwo+IEBAIC0xOTM4LDcgKzE5NDIsNyBA
QCBzdGF0aWMgaW50IHNkcmFtX2luaXQoc3RydWN0IGRyYW1faW5mbyAqZHJhbSwKPiAgIAo+ICAg
CXBhcmFtcy0+YmFzZS5zdHJpZGUgPSBjYWxjdWxhdGVfc3RyaWRlKHBhcmFtcyk7Cj4gICAJZHJh
bV9hbGxfY29uZmlnKGRyYW0sIHBhcmFtcyk7Cj4gLQlzd2l0Y2hfdG9fcGh5X2luZGV4MShkcmFt
LCBwYXJhbXMpOwo+ICsJZHJhbS0+b3BzLT5zZXRfcmF0ZShkcmFtLCBwYXJhbXMpOwo+ICAgCj4g
ICAJZGVidWcoIkZpbmlzaCBTRFJBTSBpbml0aWFsaXphdGlvbi4uLlxuIik7Cj4gICAJcmV0dXJu
IDA7Cj4gQEAgLTE5ODYsNiArMTk5MCw3IEBAIHN0YXRpYyBpbnQgY29udl9vZl9wbGF0ZGF0YShz
dHJ1Y3QgdWRldmljZSAqZGV2KQo+ICAgc3RhdGljIGNvbnN0IHN0cnVjdCBzZHJhbV9yazMzOTlf
b3BzIHJrMzM5OV9vcHMgPSB7Cj4gICAjaWYgIWRlZmluZWQoQ09ORklHX1JBTV9SSzMzOTlfTFBE
RFI0KQo+ICAgCS5kYXRhX3RyYWluaW5nID0gZGVmYXVsdF9kYXRhX3RyYWluaW5nLAo+ICsJLnNl
dF9yYXRlID0gc3dpdGNoX3RvX3BoeV9pbmRleDEsCj4gICAjZWxzZQo+ICAgCS5kYXRhX3RyYWlu
aW5nID0gbHBkZHI0X21yX2RldGVjdCwKPiAgICNlbmRpZgoKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
