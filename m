Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75A356A2F4
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 09:31:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GP9goCEbiy29NPKZyBWLyxUXW9Tqtvg1asOtcEWvei4=; b=CnGKvbq+wbl1sgfCnfX7F80oF
	/+SyEEJ6uVPpDfhjpPIEzpuzCXHpRi6J1UeRg0mmlAPHZTPhslHbdtYWKEu7D+Uhsl39wpbrNjmqw
	qBZV3DFMW2dzp/fxcRGBIEfk09wPvUOvYvb0iJu1AjMNdFn4LZgaDGf6DscrnDwgL/5GbU3JBaCeh
	tnp2tjsP3O+78Nw9Oipmg/GqGQ2KA0nI+SDgl07HRnaKDKTyn/MDD4KkVXwNIHK9alLytVWZC/zHG
	Kl+ue9VkMHdIITY6fyJjfeiRlJQSQrDe+PyRn/FjNx9LYdWj4AmVX0iHt7flk12/Zd9PrrY9CxUdP
	dwpWA3H7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnHvr-0002oE-KJ; Tue, 16 Jul 2019 07:31:27 +0000
Received: from regular1.263xmail.com ([211.150.70.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnHvj-0002nW-T3
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 07:31:25 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.171])
 by regular1.263xmail.com (Postfix) with ESMTP id F2B5C7F1;
 Tue, 16 Jul 2019 15:31:17 +0800 (CST)
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
 P29958T140670780483328S1563262276154024_; 
 Tue, 16 Jul 2019 15:31:16 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <477d768d25e21bdb1da3ead8b07f5494>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 08/15] ram: rk3399:
 s/ca_tsel_wr_select_p/tsel_wr_select_ca_p
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190715182110.21336-1-jagan@amarulasolutions.com>
 <20190715182110.21336-9-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <014f4ea5-042a-f473-c0c0-0c01564c4196@rock-chips.com>
Date: Tue, 16 Jul 2019 15:31:16 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190715182110.21336-9-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_003123_978887_AA41DA8E 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.196 listed in list.dnswl.org]
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
c2VsX3dyX3NlbGVjdF9wIHRvIHRzZWxfd3Jfc2VsZWN0X2NhX3AgYmFzZWQKPiBvbiB0aGUgYnNw
IGNvZGUuCj4KPiBObyBmdW5jdGlvbmFsaXR5IGNoYW5nZS4KPgo+IFNpZ25lZC1vZmYtYnk6IEph
Z2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFlv
dU1pbiBDaGVuIDxjeW1Acm9jay1jaGlwcy5jb20+CgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8
S2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKIMKgLSBLZXZlcgo+IC0tLQo+ICAg
ZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMgfCAxMCArKysrKy0tLS0tCj4gICAx
IGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jIGIvZHJpdmVycy9yYW0v
cm9ja2NoaXAvc2RyYW1fcmszMzk5LmMKPiBpbmRleCBiZGI0NmEwMTI4Li44YTk4M2Y5YmIxIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jCj4gKysrIGIv
ZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMKPiBAQCAtMTYwLDE0ICsxNjAsMTQg
QEAgc3RhdGljIHZvaWQgc2V0X2RzX29kdChjb25zdCBzdHJ1Y3QgY2hhbl9pbmZvICpjaGFuLAo+
ICAgCj4gICAJdTMyIHRzZWxfaWRsZV9lbiwgdHNlbF93cl9lbiwgdHNlbF9yZF9lbjsKPiAgIAl1
MzIgdHNlbF9pZGxlX3NlbGVjdF9wLCB0c2VsX3dyX3NlbGVjdF9kcV9wLCB0c2VsX3JkX3NlbGVj
dF9wOwo+IC0JdTMyIGNhX3RzZWxfd3Jfc2VsZWN0X3AsIHRzZWxfd3Jfc2VsZWN0X2NhX247Cj4g
Kwl1MzIgdHNlbF93cl9zZWxlY3RfY2FfcCwgdHNlbF93cl9zZWxlY3RfY2FfbjsKPiAgIAl1MzIg
dHNlbF9pZGxlX3NlbGVjdF9uLCB0c2VsX3dyX3NlbGVjdF9kcV9uLCB0c2VsX3JkX3NlbGVjdF9u
Owo+ICAgCXUzMiByZWdfdmFsdWU7Cj4gICAKPiAgIAlpZiAocGFyYW1zLT5iYXNlLmRyYW10eXBl
ID09IExQRERSNCkgewo+ICAgCQl0c2VsX3JkX3NlbGVjdF9wID0gUEhZX0RSVl9PRFRfSElfWjsK
PiAgIAkJdHNlbF93cl9zZWxlY3RfZHFfcCA9IFBIWV9EUlZfT0RUXzQwOwo+IC0JCWNhX3RzZWxf
d3Jfc2VsZWN0X3AgPSBQSFlfRFJWX09EVF80MDsKPiArCQl0c2VsX3dyX3NlbGVjdF9jYV9wID0g
UEhZX0RSVl9PRFRfNDA7Cj4gICAJCXRzZWxfaWRsZV9zZWxlY3RfcCA9IFBIWV9EUlZfT0RUX0hJ
X1o7Cj4gICAKPiAgIAkJdHNlbF9yZF9zZWxlY3RfbiA9IFBIWV9EUlZfT0RUXzI0MDsKPiBAQCAt
MTc3LDcgKzE3Nyw3IEBAIHN0YXRpYyB2b2lkIHNldF9kc19vZHQoY29uc3Qgc3RydWN0IGNoYW5f
aW5mbyAqY2hhbiwKPiAgIAl9IGVsc2UgaWYgKHBhcmFtcy0+YmFzZS5kcmFtdHlwZSA9PSBMUERE
UjMpIHsKPiAgIAkJdHNlbF9yZF9zZWxlY3RfcCA9IFBIWV9EUlZfT0RUXzI0MDsKPiAgIAkJdHNl
bF93cl9zZWxlY3RfZHFfcCA9IFBIWV9EUlZfT0RUXzM0XzM7Cj4gLQkJY2FfdHNlbF93cl9zZWxl
Y3RfcCA9IFBIWV9EUlZfT0RUXzQ4Owo+ICsJCXRzZWxfd3Jfc2VsZWN0X2NhX3AgPSBQSFlfRFJW
X09EVF80ODsKPiAgIAkJdHNlbF9pZGxlX3NlbGVjdF9wID0gUEhZX0RSVl9PRFRfMjQwOwo+ICAg
Cj4gICAJCXRzZWxfcmRfc2VsZWN0X24gPSBQSFlfRFJWX09EVF9ISV9aOwo+IEBAIC0xODcsNyAr
MTg3LDcgQEAgc3RhdGljIHZvaWQgc2V0X2RzX29kdChjb25zdCBzdHJ1Y3QgY2hhbl9pbmZvICpj
aGFuLAo+ICAgCX0gZWxzZSB7Cj4gICAJCXRzZWxfcmRfc2VsZWN0X3AgPSBQSFlfRFJWX09EVF8y
NDA7Cj4gICAJCXRzZWxfd3Jfc2VsZWN0X2RxX3AgPSBQSFlfRFJWX09EVF8zNF8zOwo+IC0JCWNh
X3RzZWxfd3Jfc2VsZWN0X3AgPSBQSFlfRFJWX09EVF8zNF8zOwo+ICsJCXRzZWxfd3Jfc2VsZWN0
X2NhX3AgPSBQSFlfRFJWX09EVF8zNF8zOwo+ICAgCQl0c2VsX2lkbGVfc2VsZWN0X3AgPSBQSFlf
RFJWX09EVF8yNDA7Cj4gICAKPiAgIAkJdHNlbF9yZF9zZWxlY3RfbiA9IFBIWV9EUlZfT0RUXzI0
MDsKPiBAQCAtMjI4LDcgKzIyOCw3IEBAIHN0YXRpYyB2b2lkIHNldF9kc19vZHQoY29uc3Qgc3Ry
dWN0IGNoYW5faW5mbyAqY2hhbiwKPiAgIAljbHJzZXRiaXRzX2xlMzIoJmRlbmFsaV9waHlbMzkx
XSwgMHhmZmZmZmYsIHJlZ192YWx1ZSk7Cj4gICAKPiAgIAkvKiBwaHlfYWRyX3RzZWxfc2VsZWN0
XyA4Yml0cyBERU5BTElfUEhZXzU0NC82NzIvODAwIG9mZnNldF8wICovCj4gLQlyZWdfdmFsdWUg
PSB0c2VsX3dyX3NlbGVjdF9jYV9uIHwgKGNhX3RzZWxfd3Jfc2VsZWN0X3AgPDwgMHg0KTsKPiAr
CXJlZ192YWx1ZSA9IHRzZWxfd3Jfc2VsZWN0X2NhX24gfCAodHNlbF93cl9zZWxlY3RfY2FfcCA8
PCAweDQpOwo+ICAgCWNscnNldGJpdHNfbGUzMigmZGVuYWxpX3BoeVs1NDRdLCAweGZmLCByZWdf
dmFsdWUpOwo+ICAgCWNscnNldGJpdHNfbGUzMigmZGVuYWxpX3BoeVs2NzJdLCAweGZmLCByZWdf
dmFsdWUpOwo+ICAgCWNscnNldGJpdHNfbGUzMigmZGVuYWxpX3BoeVs4MDBdLCAweGZmLCByZWdf
dmFsdWUpOwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
