Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4949A130F5D
	for <lists+linux-rockchip@lfdr.de>; Mon,  6 Jan 2020 10:25:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vO8Y7F7RWWUQ1iqNWjakRx2+kHpLExIVCZPKExLjwz0=; b=jlO3pYWz6ZYbe/+yT2aVfj9AG
	e/ml0kLY795UpeTFWo/Pg5Sx+1afiJuGCQ5bSKOL8TdXyzdesy8rADKoXdedVS9ZO36Gd0EYLVInW
	bOH2vCRFQHUqw3Bv+Qr6AzDo2O9KfH27JxmbWoBfJxLab8hqXVjqjw1xzdj0oteMsSSVIimhEmwiP
	nFqlfEXpEjyiJyKPsc53VvH8ZC3uVsoEiHy8NbaslTZJN1CzUnCcKy9xDQI/2ggkZdwwyi55TgfNl
	Ub6SODh2Fbj2l4X6XX5DNdYeeECzdKhG8KsO9QzxedVsifOI/zzi82irtD6jBePk0Tj77UyNpwIEr
	VrmUOPdSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioOdP-0005Wt-4Y; Mon, 06 Jan 2020 09:25:15 +0000
Received: from regular1.263xmail.com ([211.150.70.205])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioOdE-0004Lx-TK
 for linux-rockchip@lists.infradead.org; Mon, 06 Jan 2020 09:25:06 +0000
Received: from localhost (unknown [192.168.167.235])
 by regular1.263xmail.com (Postfix) with ESMTP id 13DD1400;
 Mon,  6 Jan 2020 17:25:01 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.9] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P25948T140047810557696S1578302700171915_; 
 Mon, 06 Jan 2020 17:25:00 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <19e471dcb3fb5e5f0e1381fb083bdc56>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 4/5] rockchip: Add common reset cause
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20191229190726.29266-1-jagan@amarulasolutions.com>
 <20191229190726.29266-5-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <19b60114-b3d1-147b-4ef5-25e82bd4a5ff@rock-chips.com>
Date: Mon, 6 Jan 2020 17:24:59 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191229190726.29266-5-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_012505_297445_25FEB789 
X-CRM114-Status: GOOD (  20.94  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.205 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: u-boot@lists.denx.de, linux-amarula@amarulasolutions.com,
 Akash Gajjar <akash@openedev.com>, linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvMTIvMzAg5LiK5Y2IMzowNywgSmFnYW4gVGVraSB3cm90ZToKPiBBZGQgY3B1IHJl
c2V0IGNhdXNlIGluIGNvbW1vbiBjcHUtaW5mbyBmaWxlLgo+Cj4gVGhpcyB3b3VsZCBoZWxwIHRv
IHByaW50IHRoZSByZXNldCBjYXVzZSBmb3IKPiB2YXJpb3VzIHJlc2V0cy4KPgo+IFJpZ2h0IG5v
dyBpdCBzdXBwb3J0IHJrMzI4OCwgcmszMzk5LiByZXN0IG9mIHJvY2tjaGlwCj4gcGxhdGZvcm1z
IGRvZXNuJ3QgaGF2ZSByZXNldCBjYXVzZSBzdXBwb3J0IHllIGJ1dCB0aGlzCj4gY29kZSBpcyBt
b3JlIGZlYXNpYmxlIHRvIGV4dGVuZCB0aGUgc2FtZS4KPgo+IFNpZ25lZC1vZmYtYnk6IEphZ2Fu
IFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFu
ZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKLSBLZXZlcgo+IC0tLQo+ICAg
YXJjaC9hcm0vaW5jbHVkZS9hc20vYXJjaC1yb2NrY2hpcC9jcnUuaCAgICAgIHwgMTIgKysrKysK
PiAgIC4uLi9pbmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL2NydV9yazMyODguaCAgICB8IDE0ICst
LS0tLQo+ICAgYXJjaC9hcm0vbWFjaC1yb2NrY2hpcC9jcHUtaW5mby5jICAgICAgICAgICAgIHwg
NDkgKysrKysrKysrKysrKysrKysrKwo+ICAgYXJjaC9hcm0vbWFjaC1yb2NrY2hpcC9yazMyODgv
cmszMjg4LmMgICAgICAgIHwgMzkgLS0tLS0tLS0tLS0tLS0tCj4gICA0IGZpbGVzIGNoYW5nZWQs
IDYyIGluc2VydGlvbnMoKyksIDUyIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2FyY2gv
YXJtL2luY2x1ZGUvYXNtL2FyY2gtcm9ja2NoaXAvY3J1LmggYi9hcmNoL2FybS9pbmNsdWRlL2Fz
bS9hcmNoLXJvY2tjaGlwL2NydS5oCj4gaW5kZXggNWVkM2ZiZmQwNy4uZTFkZDlhODljMiAxMDA2
NDQKPiAtLS0gYS9hcmNoL2FybS9pbmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL2NydS5oCj4gKysr
IGIvYXJjaC9hcm0vaW5jbHVkZS9hc20vYXJjaC1yb2NrY2hpcC9jcnUuaAo+IEBAIC0xMyw0ICsx
MywxNiBAQAo+ICAgIyBpbmNsdWRlIDxhc20vYXJjaC1yb2NrY2hpcC9jcnVfcmszMzk5Lmg+Cj4g
ICAjZW5kaWYKPiAgIAo+ICsvKiBDUlVfR0xCX1JTVF9TVCAqLwo+ICtlbnVtIHsKPiArCUdMQl9Q
T1JfUlNULAo+ICsJRlNUX0dMQl9SU1RfU1QJCT0gQklUKDApLAo+ICsJU05EX0dMQl9SU1RfU1QJ
CT0gQklUKDEpLAo+ICsJRlNUX0dMQl9UU0FEQ19SU1RfU1QJPSBCSVQoMiksCj4gKwlTTkRfR0xC
X1RTQURDX1JTVF9TVAk9IEJJVCgzKSwKPiArCUZTVF9HTEJfV0RUX1JTVF9TVAk9IEJJVCg0KSwK
PiArCVNORF9HTEJfV0RUX1JTVF9TVAk9IEJJVCg1KSwKPiArCUdMQl9SU1RfU1RfTUFTSwkJPSBH
RU5NQVNLKDUsIDApLAo+ICt9Owo+ICsKPiAgICNlbmRpZiAvKiBfUk9DS0NISVBfQ0xPQ0tfSCAq
Lwo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9pbmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL2NydV9y
azMyODguaCBiL2FyY2gvYXJtL2luY2x1ZGUvYXNtL2FyY2gtcm9ja2NoaXAvY3J1X3JrMzI4OC5o
Cj4gaW5kZXggN2FhNmVmZTQ2Yy4uNDEyYjczZTU1ZiAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9p
bmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL2NydV9yazMyODguaAo+ICsrKyBiL2FyY2gvYXJtL2lu
Y2x1ZGUvYXNtL2FyY2gtcm9ja2NoaXAvY3J1X3JrMzI4OC5oCj4gQEAgLTUxLDcgKzUxLDcgQEAg
c3RydWN0IHJvY2tjaGlwX2NydSB7Cj4gICAJdTMyIGNydV9nbGJfY250X3RoOwo+ICAgCXUzMiBj
cnVfZ2xiX3JzdF9jb247Cj4gICAJdTMyIHJlc2VydmVkMzsKPiAtCXUzMiBjcnVfZ2xiX3JzdF9z
dDsKPiArCXUzMiBnbGJfcnN0X3N0Owo+ICAgCXUzMiByZXNlcnZlZDQ7Cj4gICAJdTMyIGNydV9z
ZG1tY19jb25bMl07Cj4gICAJdTMyIGNydV9zZGlvMF9jb25bMl07Cj4gQEAgLTIyNywxNiArMjI3
LDQgQEAgZW51bSB7Cj4gICAJQ0xLRl9NQVNLCQk9IDB4MWZmZiA8PCBDTEtGX1NISUZULAo+ICAg
fTsKPiAgIAo+IC0vKiBDUlVfR0xCX1JTVF9TVCAqLwo+IC1lbnVtIHsKPiAtCUdMQl9QT1JfUlNU
LAo+IC0JRlNUX0dMQl9SU1RfU1QJCT0gQklUKDApLAo+IC0JU05EX0dMQl9SU1RfU1QJCT0gQklU
KDEpLAo+IC0JRlNUX0dMQl9UU0FEQ19SU1RfU1QJPSBCSVQoMiksCj4gLQlTTkRfR0xCX1RTQURD
X1JTVF9TVAk9IEJJVCgzKSwKPiAtCUZTVF9HTEJfV0RUX1JTVF9TVAk9IEJJVCg0KSwKPiAtCVNO
RF9HTEJfV0RUX1JTVF9TVAk9IEJJVCg1KSwKPiAtCUdMQl9SU1RfU1RfTUFTSwkJPSBHRU5NQVNL
KDUsIDApLAo+IC19Owo+IC0KPiAgICNlbmRpZgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9tYWNo
LXJvY2tjaGlwL2NwdS1pbmZvLmMgYi9hcmNoL2FybS9tYWNoLXJvY2tjaGlwL2NwdS1pbmZvLmMK
PiBpbmRleCA5YmNjYmQ0ZjY4Li40YjBlOTkyOTlhIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL21h
Y2gtcm9ja2NoaXAvY3B1LWluZm8uYwo+ICsrKyBiL2FyY2gvYXJtL21hY2gtcm9ja2NoaXAvY3B1
LWluZm8uYwo+IEBAIC01LDEwICs1LDU5IEBACj4gICAgKi8KPiAgIAo+ICAgI2luY2x1ZGUgPGNv
bW1vbi5oPgo+ICsjaW5jbHVkZSA8YXNtL2lvLmg+Cj4gKyNpbmNsdWRlIDxhc20vYXJjaC1yb2Nr
Y2hpcC9jbG9jay5oPgo+ICsjaW5jbHVkZSA8YXNtL2FyY2gtcm9ja2NoaXAvY3J1Lmg+Cj4gKyNp
bmNsdWRlIDxhc20vYXJjaC1yb2NrY2hpcC9oYXJkd2FyZS5oPgo+ICsjaW5jbHVkZSA8bGludXgv
ZXJyLmg+Cj4gKwo+ICtzdGF0aWMgY2hhciAqZ2V0X3Jlc2V0X2NhdXNlKHZvaWQpCj4gK3sKPiAr
CXN0cnVjdCByb2NrY2hpcF9jcnUgKmNydSA9IHJvY2tjaGlwX2dldF9jcnUoKTsKPiArCWNoYXIg
KmNhdXNlID0gTlVMTDsKPiArCj4gKwlpZiAoSVNfRVJSKGNydSkpCj4gKwkJcmV0dXJuIGNhdXNl
Owo+ICsKPiArCXN3aXRjaCAoY3J1LT5nbGJfcnN0X3N0KSB7Cj4gKwljYXNlIEdMQl9QT1JfUlNU
Ogo+ICsJCWNhdXNlID0gIlBPUiI7Cj4gKwkJYnJlYWs7Cj4gKwljYXNlIEZTVF9HTEJfUlNUX1NU
Ogo+ICsJY2FzZSBTTkRfR0xCX1JTVF9TVDoKPiArCQljYXVzZSA9ICJSU1QiOwo+ICsJCWJyZWFr
Owo+ICsJY2FzZSBGU1RfR0xCX1RTQURDX1JTVF9TVDoKPiArCWNhc2UgU05EX0dMQl9UU0FEQ19S
U1RfU1Q6Cj4gKwkJY2F1c2UgPSAiVEhFUk1BTCI7Cj4gKwkJYnJlYWs7Cj4gKwljYXNlIEZTVF9H
TEJfV0RUX1JTVF9TVDoKPiArCWNhc2UgU05EX0dMQl9XRFRfUlNUX1NUOgo+ICsJCWNhdXNlID0g
IldET0ciOwo+ICsJCWJyZWFrOwo+ICsJZGVmYXVsdDoKPiArCQljYXVzZSA9ICJ1bmtub3duIHJl
c2V0IjsKPiArCX0KPiArCj4gKwkvKioKPiArCSAqIHJlc2V0X3JlYXNvbiBlbnYgaXMgdXNlZCBi
eSByazMyODgsIGR1ZSB0byBzcGVjaWFsIHVzZSBjYXNlCj4gKwkgKiB0byBmaWd1cmUgaXQgdGhl
IGJvb3QgYmVoYXZpb3IuIHNvIGtlZXAgdGhpcyBhcyBpdCBpcy4KPiArCSAqLwo+ICsJZW52X3Nl
dCgicmVzZXRfcmVhc29uIiwgY2F1c2UpOwo+ICsKPiArCS8qCj4gKwkgKiBDbGVhciBnbGJfcnN0
X3N0LCBzbyB3ZSBjYW4gZGV0ZXJtaW5lIHRoZSBsYXN0IHJlc2V0IGNhdXNlCj4gKwkgKiBmb3Ig
Zm9sbG93aW5nIHJlc2V0cy4KPiArCSAqLwo+ICsJcmtfY2xycmVnKCZjcnUtPmdsYl9yc3Rfc3Qs
IEdMQl9SU1RfU1RfTUFTSyk7Cj4gKwo+ICsJcmV0dXJuIGNhdXNlOwo+ICt9Cj4gICAKPiAgIGlu
dCBwcmludF9jcHVpbmZvKHZvaWQpCj4gICB7Cj4gICAJcHJpbnRmKCJTb0M6IFJvY2tjaGlwICVz
XG4iLCBDT05GSUdfU1lTX1NPQyk7Cj4gKwlwcmludGYoIlJlc2V0IGNhdXNlOiAlc1xuIiwgZ2V0
X3Jlc2V0X2NhdXNlKCkpOwo+ICAgCj4gICAJLyogVE9ETyBwcmludCBvcGVyYXRpbmcgdGVtcGFy
YXR1cmUgYW5kIGNsb2NrICovCj4gICAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC1yb2Nr
Y2hpcC9yazMyODgvcmszMjg4LmMgYi9hcmNoL2FybS9tYWNoLXJvY2tjaGlwL3JrMzI4OC9yazMy
ODguYwo+IGluZGV4IDQ3ZWU1ZDQ0MGIuLjE4ZWE3ZjM1ZmIgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9h
cm0vbWFjaC1yb2NrY2hpcC9yazMyODgvcmszMjg4LmMKPiArKysgYi9hcmNoL2FybS9tYWNoLXJv
Y2tjaGlwL3JrMzI4OC9yazMyODguYwo+IEBAIC0xMDIsNDMgKzEwMiw2IEBAIHZvaWQgYm9hcmRf
ZGVidWdfdWFydF9pbml0KHZvaWQpCj4gICB9Cj4gICAjZW5kaWYKPiAgIAo+IC1zdGF0aWMgdm9p
ZCByazMyODhfZGV0ZWN0X3Jlc2V0X3JlYXNvbih2b2lkKQo+IC17Cj4gLQlzdHJ1Y3Qgcm9ja2No
aXBfY3J1ICpjcnUgPSByb2NrY2hpcF9nZXRfY3J1KCk7Cj4gLQljb25zdCBjaGFyICpyZWFzb247
Cj4gLQo+IC0JaWYgKElTX0VSUihjcnUpKQo+IC0JCXJldHVybjsKPiAtCj4gLQlzd2l0Y2ggKGNy
dS0+Y3J1X2dsYl9yc3Rfc3QpIHsKPiAtCWNhc2UgR0xCX1BPUl9SU1Q6Cj4gLQkJcmVhc29uID0g
IlBPUiI7Cj4gLQkJYnJlYWs7Cj4gLQljYXNlIEZTVF9HTEJfUlNUX1NUOgo+IC0JY2FzZSBTTkRf
R0xCX1JTVF9TVDoKPiAtCQlyZWFzb24gPSAiUlNUIjsKPiAtCQlicmVhazsKPiAtCWNhc2UgRlNU
X0dMQl9UU0FEQ19SU1RfU1Q6Cj4gLQljYXNlIFNORF9HTEJfVFNBRENfUlNUX1NUOgo+IC0JCXJl
YXNvbiA9ICJUSEVSTUFMIjsKPiAtCQlicmVhazsKPiAtCWNhc2UgRlNUX0dMQl9XRFRfUlNUX1NU
Ogo+IC0JY2FzZSBTTkRfR0xCX1dEVF9SU1RfU1Q6Cj4gLQkJcmVhc29uID0gIldET0ciOwo+IC0J
CWJyZWFrOwo+IC0JZGVmYXVsdDoKPiAtCQlyZWFzb24gPSAidW5rbm93biByZXNldCI7Cj4gLQl9
Cj4gLQo+IC0JZW52X3NldCgicmVzZXRfcmVhc29uIiwgcmVhc29uKTsKPiAtCj4gLQkvKgo+IC0J
ICogQ2xlYXIgY3J1X2dsYl9yc3Rfc3QsIHNvIHdlIGNhbiBkZXRlcm1pbmUgdGhlIGxhc3QgcmVz
ZXQgY2F1c2UKPiAtCSAqIGZvciBmb2xsb3dpbmcgcmVzZXRzLgo+IC0JICovCj4gLQlya19jbHJy
ZWcoJmNydS0+Y3J1X2dsYl9yc3Rfc3QsIEdMQl9SU1RfU1RfTUFTSyk7Cj4gLX0KPiAtCj4gICBf
X3dlYWsgaW50IHJrMzI4OF9ib2FyZF9sYXRlX2luaXQodm9pZCkKPiAgIHsKPiAgIAlyZXR1cm4g
MDsKPiBAQCAtMTQ2LDggKzEwOSw2IEBAIF9fd2VhayBpbnQgcmszMjg4X2JvYXJkX2xhdGVfaW5p
dCh2b2lkKQo+ICAgCj4gICBpbnQgcmtfYm9hcmRfbGF0ZV9pbml0KHZvaWQpCj4gICB7Cj4gLQly
azMyODhfZGV0ZWN0X3Jlc2V0X3JlYXNvbigpOwo+IC0KPiAgIAlyZXR1cm4gcmszMjg4X2JvYXJk
X2xhdGVfaW5pdCgpOwo+ICAgfQo+ICAgCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
