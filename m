Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DDEE6A957
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 15:15:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=765snrcBDwBMdm1QpGDH051uEJUrd4xCedok52YPk3c=; b=T7nnUHqUiAZEiRhKzv9YTS4TX
	sLkf3V3/K6WlTN63P3/isVfTjRVw96dYuYLDEKj2LhEb0ogUvQgvBnF7C0WMWOg7xq3zd0h0n/+M5
	+VNBjb3MPGOdD/C98ngIlJ3hRSNgniHdsLXvnhSSJ7ggA8GNyIEiGQ+oqjaqoF/OQeICqFOUMfVgF
	Jfs2K5MVSxgnwwGLER4gvpDQ77apmGfT3sKBy2rgSG02cJzs6pqX+9IXsGAHcyXOxeOqUyLLPXRE7
	0mJOyNgMe+OifdAE+A0kO4Fjf7f92NZKXa3leZtM6ze/kjt/C+bGRnLOUGWx7S+xJr63T1eXAe/J9
	VctIPTv6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnNIR-0002Vj-2B; Tue, 16 Jul 2019 13:15:07 +0000
Received: from regular1.263xmail.com ([211.150.70.204])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnNIM-00021c-Lx
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 13:15:04 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.252])
 by regular1.263xmail.com (Postfix) with ESMTP id 9F1A1191;
 Tue, 16 Jul 2019 21:15:00 +0800 (CST)
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
 P29801T140087528515328S1563282896842308_; 
 Tue, 16 Jul 2019 21:14:58 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <3837528b25f24393200a1580ff287e67>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 33/57] ram: rk3399: Add IO settings
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-34-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <62e550bb-9443-f2ec-db8e-1fbc37b65b03@rock-chips.com>
Date: Tue, 16 Jul 2019 21:14:58 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-34-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_061503_106198_95717422 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.204 listed in list.dnswl.org]
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

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU3LCBKYWdhbiBUZWtpIHdyb3RlOgo+IEFkZCBJTyBzZXR0
aW5ncyBmb3IgZHJhbSBjdGwgYW5kIHBoeS4KPgo+IElPIHNldHRpbmdzIGFyZSB1c2VmdWwgZm9y
IGNvbmZpZ3VyaW5nIGN0bCwgcGh5IG9kdCwgdnJlZiwKPiBtcjUsIG1vZGUgc2VsZWN0IGFuZCBv
dGhlciBuZWVkZWQgaW5wdXQgb3V0cHV0IG9wZXJhdGlvbnMKPiBmb3IgbHBkZHI0IG9yIGFueSBv
dGhlciBkcmFtdHlwZSBzZHJhbS4KPgo+IFJpZ2h0IG5vdywgdGhpcyBwYXRjaCBhZGRlZCBJTyBz
ZXR0aW5nIGZvciBhbGwgc3VwcG9ydGVkCj4gc2RyYW0gZnJlcXVlbmNpZXMuCj4KPiBTaWduZWQt
b2ZmLWJ5OiBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KPiBTaWduZWQt
b2ZmLWJ5OiBZb3VNaW4gQ2hlbiA8Y3ltQHJvY2stY2hpcHMuY29tPgoKUmV2aWV3ZWQtYnk6IEtl
dmVyIFlhbmcgPEtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+CgpUaGFua3MsCiDCoC0gS2V2ZXIK
PiAtLS0KPiAgIGRyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jIHwgMTA0ICsrKysr
KysrKysrKysrKysrKysrKysrKysrKysKPiAgIDEgZmlsZSBjaGFuZ2VkLCAxMDQgaW5zZXJ0aW9u
cygrKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5j
IGIvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMKPiBpbmRleCAzNTlhYjBiODI2
Li45NWQ5ZjNhODhiIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3Jr
MzM5OS5jCj4gKysrIGIvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMKPiBAQCAt
ODAsNiArODAsMTEwIEBAIHN0cnVjdCByb2NrY2hpcF9kbWNfcGxhdCB7Cj4gICAJc3RydWN0IHJl
Z21hcCAqbWFwOwo+ICAgfTsKPiAgIAo+ICtzdHJ1Y3QgaW9fc2V0dGluZyB7Cj4gKwl1MzIgbWh6
Owo+ICsJdTMyIG1yNTsKPiArCS8qIGRyYW0gc2lkZSAqLwo+ICsJdTMyIGRxX29kdDsKPiArCXUz
MiBjYV9vZHQ7Cj4gKwl1MzIgcGRkczsKPiArCXUzMiBkcV92cmVmOwo+ICsJdTMyIGNhX3ZyZWY7
Cj4gKwkvKiBwaHkgc2lkZSAqLwo+ICsJdTMyIHJkX29kdDsKPiArCXUzMiB3cl9kcV9kcnY7Cj4g
Kwl1MzIgd3JfY2FfZHJ2Owo+ICsJdTMyIHdyX2NrY3NfZHJ2Owo+ICsJdTMyIHJkX29kdF9lbjsK
PiArCXUzMiByZF92cmVmOwo+ICt9IGxwZGRyNF9pb19zZXR0aW5nW10gPSB7Cj4gKwl7Cj4gKwkJ
NTAgKiBNSHosCj4gKwkJMCwKPiArCQkvKiBkcmFtIHNpZGUgKi8KPiArCQkwLAkvKiBkcV9vZHQ7
ICovCj4gKwkJMCwJLyogY2Ffb2R0OyAqLwo+ICsJCTYsCS8qIHBkZHM7ICovCj4gKwkJMHg3MiwJ
LyogZHFfdnJlZjsgKi8KPiArCQkweDcyLAkvKiBjYV92cmVmOyAqLwo+ICsJCS8qIHBoeSBzaWRl
ICovCj4gKwkJUEhZX0RSVl9PRFRfSElfWiwJLyogcmRfb2R0OyAqLwo+ICsJCVBIWV9EUlZfT0RU
XzQwLAkvKiB3cl9kcV9kcnY7ICovCj4gKwkJUEhZX0RSVl9PRFRfNDAsCS8qIHdyX2NhX2Rydjsg
Ki8KPiArCQlQSFlfRFJWX09EVF80MCwJLyogd3JfY2tjc19kcnY7ICovCj4gKwkJMCwJLyogcmRf
b2R0X2VuOyovCj4gKwkJNDEsCS8qIHJkX3ZyZWY7ICh1bml0ICUsIHJhbmdlIDMuMyUgLSA0OC43
JSkgKi8KPiArCX0sCj4gKwl7Cj4gKwkJNjAwICogTUh6LAo+ICsJCTAsCj4gKwkJLyogZHJhbSBz
aWRlICovCj4gKwkJMSwJLyogZHFfb2R0OyAqLwo+ICsJCTAsCS8qIGNhX29kdDsgKi8KPiArCQk2
LAkvKiBwZGRzOyAqLwo+ICsJCTB4NzIsCS8qIGRxX3ZyZWY7ICovCj4gKwkJMHg3MiwJLyogY2Ff
dnJlZjsgKi8KPiArCQkvKiBwaHkgc2lkZSAqLwo+ICsJCVBIWV9EUlZfT0RUX0hJX1osCS8qIHJk
X29kdDsgKi8KPiArCQlQSFlfRFJWX09EVF80OCwJLyogd3JfZHFfZHJ2OyAqLwo+ICsJCVBIWV9E
UlZfT0RUXzQwLAkvKiB3cl9jYV9kcnY7ICovCj4gKwkJUEhZX0RSVl9PRFRfNDAsCS8qIHdyX2Nr
Y3NfZHJ2OyAqLwo+ICsJCTAsCS8qIHJkX29kdF9lbjsgKi8KPiArCQkzMiwJLyogcmRfdnJlZjsg
KHVuaXQgJSwgcmFuZ2UgMy4zJSAtIDQ4LjclKSAqLwo+ICsJfSwKPiArCXsKPiArCQk4MDAgKiBN
SHosCj4gKwkJMCwKPiArCQkvKiBkcmFtIHNpZGUgKi8KPiArCQkxLAkvKiBkcV9vZHQ7ICovCj4g
KwkJMCwJLyogY2Ffb2R0OyAqLwo+ICsJCTEsCS8qIHBkZHM7ICovCj4gKwkJMHg3MiwJLyogZHFf
dnJlZjsgKi8KPiArCQkweDcyLAkvKiBjYV92cmVmOyAqLwo+ICsJCS8qIHBoeSBzaWRlICovCj4g
KwkJUEhZX0RSVl9PRFRfNDAsCS8qIHJkX29kdDsgKi8KPiArCQlQSFlfRFJWX09EVF80OCwJLyog
d3JfZHFfZHJ2OyAqLwo+ICsJCVBIWV9EUlZfT0RUXzQwLAkvKiB3cl9jYV9kcnY7ICovCj4gKwkJ
UEhZX0RSVl9PRFRfNDAsCS8qIHdyX2NrY3NfZHJ2OyAqLwo+ICsJCTEsCS8qIHJkX29kdF9lbjsg
Ki8KPiArCQkxNywJLyogcmRfdnJlZjsgKHVuaXQgJSwgcmFuZ2UgMy4zJSAtIDQ4LjclKSAqLwo+
ICsJfSwKPiArCXsKPiArCQk5MzMgKiBNSHosCj4gKwkJMCwKPiArCQkvKiBkcmFtIHNpZGUgKi8K
PiArCQkzLAkvKiBkcV9vZHQ7ICovCj4gKwkJMCwJLyogY2Ffb2R0OyAqLwo+ICsJCTYsCS8qIHBk
ZHM7ICovCj4gKwkJMHg1OSwJLyogZHFfdnJlZjsgMzIlICovCj4gKwkJMHg3MiwJLyogY2FfdnJl
ZjsgKi8KPiArCQkvKiBwaHkgc2lkZSAqLwo+ICsJCVBIWV9EUlZfT0RUX0hJX1osCS8qIHJkX29k
dDsgKi8KPiArCQlQSFlfRFJWX09EVF80OCwJLyogd3JfZHFfZHJ2OyAqLwo+ICsJCVBIWV9EUlZf
T0RUXzQwLAkvKiB3cl9jYV9kcnY7ICovCj4gKwkJUEhZX0RSVl9PRFRfNDAsCS8qIHdyX2NrY3Nf
ZHJ2OyAqLwo+ICsJCTAsCS8qIHJkX29kdF9lbjsgKi8KPiArCQkzMiwJLyogcmRfdnJlZjsgKHVu
aXQgJSwgcmFuZ2UgMy4zJSAtIDQ4LjclKSAqLwo+ICsJfSwKPiArCXsKPiArCQkxMDY2ICogTUh6
LAo+ICsJCTAsCj4gKwkJLyogZHJhbSBzaWRlICovCj4gKwkJNiwJLyogZHFfb2R0OyAqLwo+ICsJ
CTAsCS8qIGNhX29kdDsgKi8KPiArCQkxLAkvKiBwZGRzOyAqLwo+ICsJCTB4MTAsCS8qIGRxX3Zy
ZWY7ICovCj4gKwkJMHg3MiwJLyogY2FfdnJlZjsgKi8KPiArCQkvKiBwaHkgc2lkZSAqLwo+ICsJ
CVBIWV9EUlZfT0RUXzQwLAkvKiByZF9vZHQ7ICovCj4gKwkJUEhZX0RSVl9PRFRfNjAsCS8qIHdy
X2RxX2RydjsgKi8KPiArCQlQSFlfRFJWX09EVF80MCwJLyogd3JfY2FfZHJ2OyAqLwo+ICsJCVBI
WV9EUlZfT0RUXzQwLAkvKiB3cl9ja2NzX2RydjsgKi8KPiArCQkxLAkvKiByZF9vZHRfZW47ICov
Cj4gKwkJMTcsCS8qIHJkX3ZyZWY7ICh1bml0ICUsIHJhbmdlIDMuMyUgLSA0OC43JSkgKi8KPiAr
CX0sCj4gK307Cj4gKwo+ICAgc3RhdGljIHZvaWQgKmdldF9kZHJjMF9jb24oc3RydWN0IGRyYW1f
aW5mbyAqZHJhbSwgdTggY2hhbm5lbCkKPiAgIHsKPiAgIAlyZXR1cm4gKGNoYW5uZWwgPT0gMCkg
PyAmZHJhbS0+Z3JmLT5kZHJjMF9jb24wIDogJmRyYW0tPmdyZi0+ZGRyYzBfY29uMTsKCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
