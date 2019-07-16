Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A8C6A307
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 09:36:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TjFB/yx0D6kBuRR/XHRhpWvBI0dP/VHP3C++5lhuAoY=; b=BFAlt58q/ha3CdJ6/RCL5D+Ri
	525dqkwoQtXETSVY7gMLnBs5Vi36kXRItSKimG4O6eJg42ARfquRchVYk2NzDRLhJRZUiPtq+a0yT
	HMDknJBTJf+lgCI2qdU9JnDjY+0fy9YB98tHCaBVjYKRfuWmDX0gV67uns5OXRB7kGCptIYrB6nF1
	bkOEESN6PZox9s5BOwBKzi21RkrOGfEkz59C+TNWGNSPamRjGJ+k5UCtNRCVQUbUngi4SM2I4Eh6f
	y1JCm8f/8VeUw6+hKE42gKD0kK3L841PMmtSSLbEfv3XhICuX3oBjk584JSsZcQUbbt3c9ogm0PwC
	a3oY2QHYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnI0E-0004ti-8u; Tue, 16 Jul 2019 07:35:58 +0000
Received: from regular1.263xmail.com ([211.150.70.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnI0A-0004sV-Q8
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 07:35:56 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.29])
 by regular1.263xmail.com (Postfix) with ESMTP id 0D7F249D;
 Tue, 16 Jul 2019 15:30:59 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.12.9] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P21432T140685829187328S1563262256429176_; 
 Tue, 16 Jul 2019 15:30:57 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <6588ec903ebe16386be7d54da8e4cab4>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 07/15] ram: rk3399:
 s/ca_tsel_wr_select_n/tsel_wr_select_ca_n
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190715182110.21336-1-jagan@amarulasolutions.com>
 <20190715182110.21336-8-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <6d5e13d5-3bd6-355e-e6b0-de3398ddddf4@rock-chips.com>
Date: Tue, 16 Jul 2019 15:30:57 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190715182110.21336-8-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_003555_162927_8FE1BA40 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.201 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvNy8xNiDkuIrljYgyOjIxLCBKYWdhbiBUZWtpIHdyb3RlOgo+IFJlbmFtZSBjYV90
c2VsX3dyX3NlbGVjdF9uIHRvIHRzZWxfd3Jfc2VsZWN0X2NhX24gYmFzZWQKPiBvbiB0aGUgYnNw
IGNvZGUuCj4KPiBObyBmdW5jdGlvbmFsaXR5IGNoYW5nZS4KPgo+IFNpZ25lZC1vZmYtYnk6IEph
Z2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFlv
dU1pbiBDaGVuIDxjeW1Acm9jay1jaGlwcy5jb20+CgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8
S2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKIMKgLSBLZXZlcgo+IC0tLQo+ICAg
ZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMgfCAxMCArKysrKy0tLS0tCj4gICAx
IGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jIGIvZHJpdmVycy9yYW0v
cm9ja2NoaXAvc2RyYW1fcmszMzk5LmMKPiBpbmRleCAzZWMzMmJkYmMwLi5iZGI0NmEwMTI4IDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jCj4gKysrIGIv
ZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMKPiBAQCAtMTYwLDcgKzE2MCw3IEBA
IHN0YXRpYyB2b2lkIHNldF9kc19vZHQoY29uc3Qgc3RydWN0IGNoYW5faW5mbyAqY2hhbiwKPiAg
IAo+ICAgCXUzMiB0c2VsX2lkbGVfZW4sIHRzZWxfd3JfZW4sIHRzZWxfcmRfZW47Cj4gICAJdTMy
IHRzZWxfaWRsZV9zZWxlY3RfcCwgdHNlbF93cl9zZWxlY3RfZHFfcCwgdHNlbF9yZF9zZWxlY3Rf
cDsKPiAtCXUzMiBjYV90c2VsX3dyX3NlbGVjdF9wLCBjYV90c2VsX3dyX3NlbGVjdF9uOwo+ICsJ
dTMyIGNhX3RzZWxfd3Jfc2VsZWN0X3AsIHRzZWxfd3Jfc2VsZWN0X2NhX247Cj4gICAJdTMyIHRz
ZWxfaWRsZV9zZWxlY3RfbiwgdHNlbF93cl9zZWxlY3RfZHFfbiwgdHNlbF9yZF9zZWxlY3RfbjsK
PiAgIAl1MzIgcmVnX3ZhbHVlOwo+ICAgCj4gQEAgLTE3Miw3ICsxNzIsNyBAQCBzdGF0aWMgdm9p
ZCBzZXRfZHNfb2R0KGNvbnN0IHN0cnVjdCBjaGFuX2luZm8gKmNoYW4sCj4gICAKPiAgIAkJdHNl
bF9yZF9zZWxlY3RfbiA9IFBIWV9EUlZfT0RUXzI0MDsKPiAgIAkJdHNlbF93cl9zZWxlY3RfZHFf
biA9IFBIWV9EUlZfT0RUXzQwOwo+IC0JCWNhX3RzZWxfd3Jfc2VsZWN0X24gPSBQSFlfRFJWX09E
VF80MDsKPiArCQl0c2VsX3dyX3NlbGVjdF9jYV9uID0gUEhZX0RSVl9PRFRfNDA7Cj4gICAJCXRz
ZWxfaWRsZV9zZWxlY3RfbiA9IFBIWV9EUlZfT0RUXzI0MDsKPiAgIAl9IGVsc2UgaWYgKHBhcmFt
cy0+YmFzZS5kcmFtdHlwZSA9PSBMUEREUjMpIHsKPiAgIAkJdHNlbF9yZF9zZWxlY3RfcCA9IFBI
WV9EUlZfT0RUXzI0MDsKPiBAQCAtMTgyLDcgKzE4Miw3IEBAIHN0YXRpYyB2b2lkIHNldF9kc19v
ZHQoY29uc3Qgc3RydWN0IGNoYW5faW5mbyAqY2hhbiwKPiAgIAo+ICAgCQl0c2VsX3JkX3NlbGVj
dF9uID0gUEhZX0RSVl9PRFRfSElfWjsKPiAgIAkJdHNlbF93cl9zZWxlY3RfZHFfbiA9IFBIWV9E
UlZfT0RUXzM0XzM7Cj4gLQkJY2FfdHNlbF93cl9zZWxlY3RfbiA9IFBIWV9EUlZfT0RUXzQ4Owo+
ICsJCXRzZWxfd3Jfc2VsZWN0X2NhX24gPSBQSFlfRFJWX09EVF80ODsKPiAgIAkJdHNlbF9pZGxl
X3NlbGVjdF9uID0gUEhZX0RSVl9PRFRfSElfWjsKPiAgIAl9IGVsc2Ugewo+ICAgCQl0c2VsX3Jk
X3NlbGVjdF9wID0gUEhZX0RSVl9PRFRfMjQwOwo+IEBAIC0xOTIsNyArMTkyLDcgQEAgc3RhdGlj
IHZvaWQgc2V0X2RzX29kdChjb25zdCBzdHJ1Y3QgY2hhbl9pbmZvICpjaGFuLAo+ICAgCj4gICAJ
CXRzZWxfcmRfc2VsZWN0X24gPSBQSFlfRFJWX09EVF8yNDA7Cj4gICAJCXRzZWxfd3Jfc2VsZWN0
X2RxX24gPSBQSFlfRFJWX09EVF8zNF8zOwo+IC0JCWNhX3RzZWxfd3Jfc2VsZWN0X24gPSBQSFlf
RFJWX09EVF8zNF8zOwo+ICsJCXRzZWxfd3Jfc2VsZWN0X2NhX24gPSBQSFlfRFJWX09EVF8zNF8z
Owo+ICAgCQl0c2VsX2lkbGVfc2VsZWN0X24gPSBQSFlfRFJWX09EVF8yNDA7Cj4gICAJfQo+ICAg
Cj4gQEAgLTIyOCw3ICsyMjgsNyBAQCBzdGF0aWMgdm9pZCBzZXRfZHNfb2R0KGNvbnN0IHN0cnVj
dCBjaGFuX2luZm8gKmNoYW4sCj4gICAJY2xyc2V0Yml0c19sZTMyKCZkZW5hbGlfcGh5WzM5MV0s
IDB4ZmZmZmZmLCByZWdfdmFsdWUpOwo+ICAgCj4gICAJLyogcGh5X2Fkcl90c2VsX3NlbGVjdF8g
OGJpdHMgREVOQUxJX1BIWV81NDQvNjcyLzgwMCBvZmZzZXRfMCAqLwo+IC0JcmVnX3ZhbHVlID0g
Y2FfdHNlbF93cl9zZWxlY3RfbiB8IChjYV90c2VsX3dyX3NlbGVjdF9wIDw8IDB4NCk7Cj4gKwly
ZWdfdmFsdWUgPSB0c2VsX3dyX3NlbGVjdF9jYV9uIHwgKGNhX3RzZWxfd3Jfc2VsZWN0X3AgPDwg
MHg0KTsKPiAgIAljbHJzZXRiaXRzX2xlMzIoJmRlbmFsaV9waHlbNTQ0XSwgMHhmZiwgcmVnX3Zh
bHVlKTsKPiAgIAljbHJzZXRiaXRzX2xlMzIoJmRlbmFsaV9waHlbNjcyXSwgMHhmZiwgcmVnX3Zh
bHVlKTsKPiAgIAljbHJzZXRiaXRzX2xlMzIoJmRlbmFsaV9waHlbODAwXSwgMHhmZiwgcmVnX3Zh
bHVlKTsKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
