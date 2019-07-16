Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E63C6A967
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 15:18:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=r1l1odCpcw1Nkq4J5RCK/HsfsT6nk3xiamqBlqLzz9w=; b=KIoox7TRlRdJi48fn1OwQZZlj
	PGtsKBCurGcidaP1eY6FMdb2JFoVhspxeyw/AC8kirS+idqWp42DiAfNIPMJ26XMaKxIYFRQSxgCy
	2JC4ZpdYBTuTRVODvJb2omLH3q0d0I4nUmU3K/AWUAYwcNdfQ/2+7f0s9zveAiBKZdQWgrMbOsqWP
	eS8nXpAxyR/cjqSC6B+TAC9hHg5UNbju/vSqZsXDMHxgGaTDwazG5EdYdaiY0rX6klF8zoXO3ZlTo
	zcBiFBeNYee2G6nSwblYvqarh/Uw1OUtar/FnxsKIz1MTvdUk8RJyDy0NkUEPisF4/ikWL09ZRtEW
	lRsbNAeoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnNLe-00048H-IA; Tue, 16 Jul 2019 13:18:26 +0000
Received: from regular1.263xmail.com ([211.150.70.198])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnNLa-00047E-ON
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 13:18:24 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.134])
 by regular1.263xmail.com (Postfix) with ESMTP id 9659E252;
 Tue, 16 Jul 2019 21:18:20 +0800 (CST)
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
 P10510T140412975036160S1563283093499479_; 
 Tue, 16 Jul 2019 21:18:21 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <b8f2036d03945f4e6c811e1e6dd5a61e>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 42/57] ram: rk3399: Handle data training via ops
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-43-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <2bfdcda7-f19c-fed3-af15-e89533d2272f@rock-chips.com>
Date: Tue, 16 Jul 2019 21:18:11 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-43-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_061823_215934_61EB99A5 
X-CRM114-Status: GOOD (  18.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.198 listed in list.dnswl.org]
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

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU3LCBKYWdhbiBUZWtpIHdyb3RlOgo+IGRhdGEgdHJhaW5p
bmcgY2FuIGJlIGV2ZW4gcmVxdWlyZWQgZm9yIGxwZGRyNCBhbmQgd2UKPiBuZWVkIHRvIGtlZXAg
dGhlIGxwZGRyNCBjb2RlIHRvIGNvbXBpbGUgb25seSBmb3IgcmVsZXZhbnQKPiBib2FyZHMgd2hp
Y2ggZG8gc3VwcG9ydCBscGRkcjQuCj4KPiBGb3IgdGhpcyByZXF1aXJlbWVudCwgYW5kIGZvciBj
b2RlIHJlYWRhYmlsaXR5IGhhbmRsZQo+IGRhdGEgdHJhaW5pbmcgdmlhIHNkcmFtX3JrMzM5OV9v
cHMgYW5kIHNhbWUgd2lsbCB1cGRhdGUKPiBpbiBmdXR1cmUgd2hpbGUgc3VwcG9ydGluZyBscGRk
cjQgY29kZS4KPgo+IFNpZ25lZC1vZmYtYnk6IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1
dGlvbnMuY29tPgoKUmV2aWV3ZWQtYnk6IEtldmVyIFlhbmcgPEtldmVyLnlhbmdAcm9jay1jaGlw
cy5jb20+CgpUaGFua3MsCiDCoC0gS2V2ZXIKPiAtLS0KPiAgIGRyaXZlcnMvcmFtL3JvY2tjaGlw
L3NkcmFtX3JrMzM5OS5jIHwgNDMgKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0KPiAgIDEg
ZmlsZSBjaGFuZ2VkLCAzMyBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkKPgo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYyBiL2RyaXZlcnMvcmFt
L3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jCj4gaW5kZXggMWFhYWViNWI4OC4uZGEwMWYwODczMiAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYwo+ICsrKyBi
L2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jCj4gQEAgLTY1LDExICs2NSwxNyBA
QCBzdHJ1Y3QgZHJhbV9pbmZvIHsKPiAgIAlzdHJ1Y3QgcmszMzk5X3BtdWNydSAqcG11Y3J1Owo+
ICAgCXN0cnVjdCByazMzOTlfcG11c2dyZl9yZWdzICpwbXVzZ3JmOwo+ICAgCXN0cnVjdCByazMz
OTlfZGRyX2NpY19yZWdzICpjaWM7Cj4gKwljb25zdCBzdHJ1Y3Qgc2RyYW1fcmszMzk5X29wcyAq
b3BzOwo+ICAgI2VuZGlmCj4gICAJc3RydWN0IHJhbV9pbmZvIGluZm87Cj4gICAJc3RydWN0IHJr
MzM5OV9wbXVncmZfcmVncyAqcG11Z3JmOwo+ICAgfTsKPiAgIAo+ICtzdHJ1Y3Qgc2RyYW1fcmsz
Mzk5X29wcyB7Cj4gKwlpbnQgKCpkYXRhX3RyYWluaW5nKShzdHJ1Y3QgZHJhbV9pbmZvICpkcmFt
LCB1MzIgY2hhbm5lbCwgdTggcmFuaywKPiArCQkJICAgICBzdHJ1Y3QgcmszMzk5X3NkcmFtX3Bh
cmFtcyAqc2RyYW0pOwo+ICt9Owo+ICsKPiAgICNpZiBkZWZpbmVkKENPTkZJR19UUExfQlVJTEQp
IHx8IFwKPiAgIAkoIWRlZmluZWQoQ09ORklHX1RQTCkgJiYgZGVmaW5lZChDT05GSUdfU1BMX0JV
SUxEKSkKPiAgIAo+IEBAIC0xNDY0LDYgKzE0NzAsMjMgQEAgc3RhdGljIHZvaWQgZHJhbV9hbGxf
Y29uZmlnKHN0cnVjdCBkcmFtX2luZm8gKmRyYW0sCj4gICAJY2xyc2V0Yml0c19sZTMyKCZkcmFt
LT5jcnUtPmdsYl9yc3RfY29uLCAweDMsIDB4Myk7Cj4gICB9Cj4gICAKPiArc3RhdGljIGludCBk
ZWZhdWx0X2RhdGFfdHJhaW5pbmcoc3RydWN0IGRyYW1faW5mbyAqZHJhbSwgdTMyIGNoYW5uZWws
IHU4IHJhbmssCj4gKwkJCQkgc3RydWN0IHJrMzM5OV9zZHJhbV9wYXJhbXMgKnBhcmFtcykKPiAr
ewo+ICsJdTggdHJhaW5pbmdfZmxhZyA9IFBJX1JFQURfR0FURV9UUkFJTklORzsKPiArCj4gKwkv
Kgo+ICsJICogTFBERFIzIENBIHRyYWluaW5nIG1zdXQgYmUgdHJpZ2dlciBiZWZvcmUKPiArCSAq
IG90aGVyIHRyYWluaW5nLgo+ICsJICogRERSMyBpcyBub3QgaGF2ZSBDQSB0cmFpbmluZy4KPiAr
CSAqLwo+ICsKPiArCWlmIChwYXJhbXMtPmJhc2UuZHJhbXR5cGUgPT0gTFBERFIzKQo+ICsJCXRy
YWluaW5nX2ZsYWcgfD0gUElfQ0FfVFJBSU5JTkc7Cj4gKwo+ICsJcmV0dXJuIGRhdGFfdHJhaW5p
bmcoZHJhbSwgY2hhbm5lbCwgcGFyYW1zLCB0cmFpbmluZ19mbGFnKTsKPiArfQo+ICsKPiAgIHN0
YXRpYyBpbnQgc3dpdGNoX3RvX3BoeV9pbmRleDEoc3RydWN0IGRyYW1faW5mbyAqZHJhbSwKPiAg
IAkJCQljb25zdCBzdHJ1Y3QgcmszMzk5X3NkcmFtX3BhcmFtcyAqcGFyYW1zKQo+ICAgewo+IEBA
IC0xNjI2LDcgKzE2NDksNiBAQCBzdGF0aWMgaW50IHNkcmFtX2luaXQoc3RydWN0IGRyYW1faW5m
byAqZHJhbSwKPiAgIHsKPiAgIAl1bnNpZ25lZCBjaGFyIGRyYW10eXBlID0gcGFyYW1zLT5iYXNl
LmRyYW10eXBlOwo+ICAgCXVuc2lnbmVkIGludCBkZHJfZnJlcSA9IHBhcmFtcy0+YmFzZS5kZHJf
ZnJlcTsKPiAtCXUzMiB0cmFpbmluZ19mbGFnID0gUElfUkVBRF9HQVRFX1RSQUlOSU5HOwo+ICAg
CWludCBjaGFubmVsLCBjaCwgcmFuazsKPiAgIAlpbnQgcmV0Owo+ICAgCj4gQEAgLTE2NTQsMTYg
KzE2NzYsMTIgQEAgc3RhdGljIGludCBzZHJhbV9pbml0KHN0cnVjdCBkcmFtX2luZm8gKmRyYW0s
Cj4gICAKPiAgIAkJCXBhcmFtcy0+Y2hbY2hdLmNhcF9pbmZvLnJhbmsgPSByYW5rOwo+ICAgCj4g
LQkJCS8qCj4gLQkJCSAqIExQRERSMyBDQSB0cmFpbmluZyBtc3V0IGJlIHRyaWdnZXIgYmVmb3Jl
Cj4gLQkJCSAqIG90aGVyIHRyYWluaW5nLgo+IC0JCQkgKiBERFIzIGlzIG5vdCBoYXZlIENBIHRy
YWluaW5nLgo+IC0JCQkgKi8KPiAtCQkJaWYgKHBhcmFtcy0+YmFzZS5kcmFtdHlwZSA9PSBMUERE
UjMpCj4gLQkJCQl0cmFpbmluZ19mbGFnIHw9IFBJX0NBX1RSQUlOSU5HOwo+IC0KPiAtCQkJaWYg
KCEoZGF0YV90cmFpbmluZyhkcmFtLCBjaCwgcGFyYW1zLCB0cmFpbmluZ19mbGFnKSkpCj4gKwkJ
CXJldCA9IGRyYW0tPm9wcy0+ZGF0YV90cmFpbmluZyhkcmFtLCBjaCwgcmFuaywgcGFyYW1zKTsK
PiArCQkJaWYgKCFyZXQpIHsKPiArCQkJCWRlYnVnKCIlczogZGF0YSB0cmFpbmVkIGZvciByYW5r
ICVkLCBjaCAlZFxuIiwKPiArCQkJCSAgICAgIF9fZnVuY19fLCByYW5rLCBjaCk7Cj4gICAJCQkJ
YnJlYWs7Cj4gKwkJCX0KPiAgIAkJfQo+ICAgCQkvKiBDb21wdXRlZCByYW5rIHdpdGggYXNzb2Np
YXRlZCBjaGFubmVsIG51bWJlciAqLwo+ICAgCQlwYXJhbXMtPmNoW2NoXS5jYXBfaW5mby5yYW5r
ID0gcmFuazsKPiBAQCAtMTc0Myw2ICsxNzYxLDEwIEBAIHN0YXRpYyBpbnQgY29udl9vZl9wbGF0
ZGF0YShzdHJ1Y3QgdWRldmljZSAqZGV2KQo+ICAgfQo+ICAgI2VuZGlmCj4gICAKPiArc3RhdGlj
IGNvbnN0IHN0cnVjdCBzZHJhbV9yazMzOTlfb3BzIHJrMzM5OV9vcHMgPSB7Cj4gKwkuZGF0YV90
cmFpbmluZyA9IGRlZmF1bHRfZGF0YV90cmFpbmluZywKPiArfTsKPiArCj4gICBzdGF0aWMgaW50
IHJrMzM5OV9kbWNfaW5pdChzdHJ1Y3QgdWRldmljZSAqZGV2KQo+ICAgewo+ICAgCXN0cnVjdCBk
cmFtX2luZm8gKnByaXYgPSBkZXZfZ2V0X3ByaXYoZGV2KTsKPiBAQCAtMTc2MCw2ICsxNzgyLDcg
QEAgc3RhdGljIGludCByazMzOTlfZG1jX2luaXQoc3RydWN0IHVkZXZpY2UgKmRldikKPiAgIAkJ
cmV0dXJuIHJldDsKPiAgICNlbmRpZgo+ICAgCj4gKwlwcml2LT5vcHMgPSAmcmszMzk5X29wczsK
PiAgIAlwcml2LT5jaWMgPSBzeXNjb25fZ2V0X2ZpcnN0X3JhbmdlKFJPQ0tDSElQX1NZU0NPTl9D
SUMpOwo+ICAgCXByaXYtPmdyZiA9IHN5c2Nvbl9nZXRfZmlyc3RfcmFuZ2UoUk9DS0NISVBfU1lT
Q09OX0dSRik7Cj4gICAJcHJpdi0+cG11Z3JmID0gc3lzY29uX2dldF9maXJzdF9yYW5nZShST0NL
Q0hJUF9TWVNDT05fUE1VR1JGKTsKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
