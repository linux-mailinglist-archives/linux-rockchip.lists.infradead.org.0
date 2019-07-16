Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5F246A95A
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 15:16:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vjNziSEBP+7DG2zIqefS4yN5MXCs8kRvcES832+lQ0M=; b=nIjnwGz0ih7lU1zm3MakkNqC6
	Vs1jvE9Fd+sAPIQNJCzxhFWD2GjK3QpkB2ao/khJpOI6jTl/ofIjV0GPGC+ynH5qf6T1Iay+2jAWO
	JYOdUcpEGLUX3rWlcdDfJPqFXlDDewMees2uwKTn46Ca2vK/W8PqNrVKBR1p2mo7F5Ovu2nFYfU3q
	0Yp64cHsLZpJfG4TRyMqeclLBhpU+w0gnmn9ADWGWbgdPFQgnpl0Uc2z7Smtwc2Xcwc2+qH6K+Kkl
	1ptpoEcgyT+id3erwxaAGsgsF33vZr/BG1u9Hki0+wtt+jDGj/owS864jjTeBqEcMrySh6uQjnq6v
	iVa2kccFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnNJH-0003Q6-06; Tue, 16 Jul 2019 13:15:59 +0000
Received: from regular1.263xmail.com ([211.150.70.199])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnNJC-0003PQ-Je
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 13:15:56 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.141])
 by regular1.263xmail.com (Postfix) with ESMTP id CFCCE3C7;
 Tue, 16 Jul 2019 21:15:52 +0800 (CST)
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
 P28302T140709787051776S1563282941755150_; 
 Tue, 16 Jul 2019 21:15:50 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <6d1656a86818ee45870b979826d7a0bb>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 36/57] ram: rk3399: Configure soc odt support
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-37-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <ec6896c0-13b8-5add-60c0-8838c80ba81c@rock-chips.com>
Date: Tue, 16 Jul 2019 21:15:41 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-37-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_061555_088217_478DB7C8 
X-CRM114-Status: GOOD (  15.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.199 listed in list.dnswl.org]
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

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU3LCBKYWdhbiBUZWtpIHdyb3RlOgo+IENUTCAxNDUsIDE0
NiwgMTU5LCAxNjAgcmVnaXN0ZXJzIGFyZSB1c2VkIHRvIGNvbmZpZ3VyZQo+IHNvYyBvZHQgb24g
cmszMzk5Lgo+Cj4gVGhlc2Ugc29jIG9kdCB2YWx1ZXMgYXJlIHVwZGF0ZWQgZnJvbSBDUzBfTVIy
Ml9WQUwgYW5kCj4gQ1MxX01SMjJfVkFMIGFuZCBmb3IgbHBkZHI0IHRoZXNlIHZhbHVlcyBPUmVk
IHdpdGgKPiB0c2VsX3JkX3NlbGVjdF9uLgo+Cj4gU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVraSA8
amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+Cj4gU2lnbmVkLW9mZi1ieTogWW91TWluIENoZW4g
PGN5bUByb2NrLWNoaXBzLmNvbT4KClJldmlld2VkLWJ5OiBLZXZlciBZYW5nIDxLZXZlci55YW5n
QHJvY2stY2hpcHMuY29tPgoKVGhhbmtzLAogwqAtIEtldmVyCj4gLS0tCj4gICBkcml2ZXJzL3Jh
bS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYyB8IDQ5ICsrKysrKysrKysrKysrKysrKysrKysrKysr
KystCj4gICAxIGZpbGUgY2hhbmdlZCwgNDggaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jIGIvZHJp
dmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMKPiBpbmRleCBjMzhlYTFkMjg0Li5lMGJl
OWQyNDg1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5j
Cj4gKysrIGIvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMKPiBAQCAtNDAsNiAr
NDAsOCBAQAo+ICAgI2RlZmluZSBQSFlfU0xFV1BfRU4JCTB4MQo+ICAgI2RlZmluZSBQSFlfU0xF
V05fRU4JCTB4MQo+ICAgI2RlZmluZSBQSFlfUlhfQ01fSU5QVVQJCTB4MQo+ICsjZGVmaW5lIENT
MF9NUjIyX1ZBTAkJMAo+ICsjZGVmaW5lIENTMV9NUjIyX1ZBTAkJMwo+ICAgCj4gICAjZGVmaW5l
IENSVV9TRlRSU1RfRERSX0NUUkwoY2gsIG4pCSgoMHgxIDw8ICg4ICsgMTYgKyAoY2gpICogNCkp
IHwgXAo+ICAgCQkJCQkoKG4pIDw8ICg4ICsgKGNoKSAqIDQpKSkKPiBAQCAtNTU0LDcgKzU1Niw3
IEBAIHN0YXRpYyB2b2lkIHNldF9kc19vZHQoY29uc3Qgc3RydWN0IGNoYW5faW5mbyAqY2hhbiwK
PiAgIAkJICAgICAgIGNvbnN0IHN0cnVjdCByazMzOTlfc2RyYW1fcGFyYW1zICpwYXJhbXMsIHUz
MiBtcjUpCj4gICB7Cj4gICAJdTMyICpkZW5hbGlfcGh5ID0gY2hhbi0+cHVibC0+ZGVuYWxpX3Bo
eTsKPiAtCj4gKwl1MzIgKmRlbmFsaV9jdGwgPSBjaGFuLT5wY3RsLT5kZW5hbGlfY3RsOwo+ICAg
CXUzMiB0c2VsX2lkbGVfZW4sIHRzZWxfd3JfZW4sIHRzZWxfcmRfZW47Cj4gICAJdTMyIHRzZWxf
aWRsZV9zZWxlY3RfcCwgdHNlbF9yZF9zZWxlY3RfcDsKPiAgIAl1MzIgdHNlbF9pZGxlX3NlbGVj
dF9uLCB0c2VsX3JkX3NlbGVjdF9uOwo+IEBAIC01NjIsNiArNTY0LDcgQEAgc3RhdGljIHZvaWQg
c2V0X2RzX29kdChjb25zdCBzdHJ1Y3QgY2hhbl9pbmZvICpjaGFuLAo+ICAgCXUzMiB0c2VsX3dy
X3NlbGVjdF9kcV9uLCB0c2VsX3dyX3NlbGVjdF9jYV9uOwo+ICAgCXUzMiB0c2VsX2NrY3Nfc2Vs
ZWN0X3AsIHRzZWxfY2tjc19zZWxlY3RfbjsKPiAgIAlzdHJ1Y3QgaW9fc2V0dGluZyAqaW8gPSBO
VUxMOwo+ICsJdTMyIHNvY19vZHQgPSAwOwo+ICAgCXUzMiByZWdfdmFsdWU7Cj4gICAKPiAgIAlp
ZiAocGFyYW1zLT5iYXNlLmRyYW10eXBlID09IExQRERSNCkgewo+IEBAIC01ODEsNiArNTg0LDM1
IEBAIHN0YXRpYyB2b2lkIHNldF9kc19vZHQoY29uc3Qgc3RydWN0IGNoYW5faW5mbyAqY2hhbiwK
PiAgIAo+ICAgCQl0c2VsX2NrY3Nfc2VsZWN0X3AgPSBpby0+d3JfY2tjc19kcnY7Cj4gICAJCXRz
ZWxfY2tjc19zZWxlY3RfbiA9IFBIWV9EUlZfT0RUXzM0XzM7Cj4gKwkJc3dpdGNoICh0c2VsX3Jk
X3NlbGVjdF9uKSB7Cj4gKwkJY2FzZSBQSFlfRFJWX09EVF8yNDA6Cj4gKwkJCXNvY19vZHQgPSAx
Owo+ICsJCQlicmVhazsKPiArCQljYXNlIFBIWV9EUlZfT0RUXzEyMDoKPiArCQkJc29jX29kdCA9
IDI7Cj4gKwkJCWJyZWFrOwo+ICsJCWNhc2UgUEhZX0RSVl9PRFRfODA6Cj4gKwkJCXNvY19vZHQg
PSAzOwo+ICsJCQlicmVhazsKPiArCQljYXNlIFBIWV9EUlZfT0RUXzYwOgo+ICsJCQlzb2Nfb2R0
ID0gNDsKPiArCQkJYnJlYWs7Cj4gKwkJY2FzZSBQSFlfRFJWX09EVF80ODoKPiArCQkJc29jX29k
dCA9IDU7Cj4gKwkJCWJyZWFrOwo+ICsJCWNhc2UgUEhZX0RSVl9PRFRfNDA6Cj4gKwkJCXNvY19v
ZHQgPSA2Owo+ICsJCQlicmVhazsKPiArCQljYXNlIFBIWV9EUlZfT0RUXzM0XzM6Cj4gKwkJCXNv
Y19vZHQgPSA2Owo+ICsJCQlwcmludGYoIiVzOiBVbmFibGUgdG8gc3VwcG9ydCBMUEREUjQgTVIy
MiBTb2MgT0RUXG4iLAo+ICsJCQkgICAgICAgX19mdW5jX18pOwo+ICsJCQlicmVhazsKPiArCQlj
YXNlIFBIWV9EUlZfT0RUX0hJX1o6Cj4gKwkJZGVmYXVsdDoKPiArCQkJc29jX29kdCA9IDA7Cj4g
KwkJCWJyZWFrOwo+ICsJCX0KPiAgIAl9IGVsc2UgaWYgKHBhcmFtcy0+YmFzZS5kcmFtdHlwZSA9
PSBMUEREUjMpIHsKPiAgIAkJdHNlbF9yZF9zZWxlY3RfcCA9IFBIWV9EUlZfT0RUXzI0MDsKPiAg
IAkJdHNlbF9yZF9zZWxlY3RfbiA9IFBIWV9EUlZfT0RUX0hJX1o7Cj4gQEAgLTYyMSw2ICs2NTMs
MjEgQEAgc3RhdGljIHZvaWQgc2V0X2RzX29kdChjb25zdCBzdHJ1Y3QgY2hhbl9pbmZvICpjaGFu
LAo+ICAgCXRzZWxfd3JfZW4gPSAwOwo+ICAgCXRzZWxfaWRsZV9lbiA9IDA7Cj4gICAKPiArCS8q
IEYwXzAgKi8KPiArCWNscnNldGJpdHNfbGUzMigmZGVuYWxpX2N0bFsxNDVdLCAweEZGIDw8IDE2
LAo+ICsJCQkoc29jX29kdCB8IChDUzBfTVIyMl9WQUwgPDwgMykpIDw8IDE2KTsKPiArCS8qIEYy
XzAsIEYxXzAgKi8KPiArCWNscnNldGJpdHNfbGUzMigmZGVuYWxpX2N0bFsxNDZdLCAweEZGMDBG
RiwKPiArCQkJKChzb2Nfb2R0IHwgKENTMF9NUjIyX1ZBTCA8PCAzKSkgPDwgMTYpIHwKPiArCQkJ
KHNvY19vZHQgfCAoQ1MwX01SMjJfVkFMIDw8IDMpKSk7Cj4gKwkvKiBGMF8xICovCj4gKwljbHJz
ZXRiaXRzX2xlMzIoJmRlbmFsaV9jdGxbMTU5XSwgMHhGRiA8PCAxNiwKPiArCQkJKHNvY19vZHQg
fCAoQ1MxX01SMjJfVkFMIDw8IDMpKSA8PCAxNik7Cj4gKwkvKiBGMl8xLCBGMV8xICovCj4gKwlj
bHJzZXRiaXRzX2xlMzIoJmRlbmFsaV9jdGxbMTYwXSwgMHhGRjAwRkYsCj4gKwkJCSgoc29jX29k
dCB8IChDUzFfTVIyMl9WQUwgPDwgMykpIDw8IDE2KSB8Cj4gKwkJCShzb2Nfb2R0IHwgKENTMV9N
UjIyX1ZBTCA8PCAzKSkpOwo+ICsKPiAgIAkvKgo+ICAgCSAqIHBoeV9kcV90c2VsX3NlbGVjdF9Y
IDI0Yml0cyBERU5BTElfUEhZXzYvMTM0LzI2Mi8zOTAgb2Zmc2V0XzAKPiAgIAkgKiBzZXRzIHRl
cm1pbmF0aW9uIHZhbHVlcyBmb3IgcmVhZC9pZGxlIGN5Y2xlcyBhbmQgZHJpdmUgc3RyZW5ndGgK
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
