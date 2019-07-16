Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4AA6A321
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 09:42:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HQu3/dw7A0Yg3X9t6iS/nhy6nYAyv+x+QLG62nSqVZo=; b=MbfPTHByADqn9z9KYaQGPy5Hk
	n6HYKEfCBpZU1ONhwe2aya/FVXqprB+bdoDIWPNBF2gThD1lsnxFPsFDx+fo5Mf+XjFqSJeDins5D
	8dJKngww7fuTwRbVF8JWbmhQseRO6tjzUWQ9M+RlElInDAUsc3YcWJkPobUZ1UWlM1x9LL8fAOFcW
	RhMw5n236tS0WHl8tmc199uQPwQ7jr6kKJsBNRXonszOSIr4zxw2N4KWGeVPb0c5X8bPC5ZbhQZ6p
	oSab7GNnrHVIHNvOInY1x/fVV9F4JmsI2UhjUUQ3T4dp9LQq8SPifBqq7k2/msL900UgtuLjerN2E
	TU5qpU2eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnI6y-00071n-P0; Tue, 16 Jul 2019 07:42:56 +0000
Received: from regular1.263xmail.com ([211.150.70.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnI6u-00071T-CY
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 07:42:54 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.193])
 by regular1.263xmail.com (Postfix) with ESMTP id EA761336;
 Tue, 16 Jul 2019 15:42:50 +0800 (CST)
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
 P31290T139635911010048S1563262968925480_; 
 Tue, 16 Jul 2019 15:42:49 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <744e6108a8aac0302274f2c523d0dff2>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 11/18] ram: rockchip: debug: Add sdram_print_ddr_info
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190715182856.21688-1-jagan@amarulasolutions.com>
 <20190715182856.21688-12-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <0f8b9b7b-da21-6e28-389c-d0e20010c477@rock-chips.com>
Date: Tue, 16 Jul 2019 15:42:48 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190715182856.21688-12-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_004252_755598_28D710C0 
X-CRM114-Status: GOOD (  13.20  )
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

Ck9uIDIwMTkvNy8xNiDkuIrljYgyOjI4LCBKYWdhbiBUZWtpIHdyb3RlOgo+IEFkZCBzZHJhbSBk
ZHIgaW5mbyBwcmludCBzdXBwb3J0LCB0aGlzIHdvdWxkIGhlbHAgdG8KPiBvYnNlcnZlIHRoZSBz
ZHJhbSBiYXNlIHBhcmFtZXRlcnMuCj4KPiBIZXJlIGlzIHNhbXBsZSBwcmludCBvbiBMUEREUjQs
IDUwTUh6IGNoYW5uZWwgMAo+IEJXPTMyIENvbD0xMCBCaz04IENTMCBSb3c9MTUgQ1MxIFJvdz0x
NSBDUz0yIERpZSBCVz0xNgo+Cj4gU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVraSA8amFnYW5AYW1h
cnVsYXNvbHV0aW9ucy5jb20+Cj4gU2lnbmVkLW9mZi1ieTogWW91TWluIENoZW4gPGN5bUByb2Nr
LWNoaXBzLmNvbT4KClJldmlld2VkLWJ5OiBLZXZlciBZYW5nIDxLZXZlci55YW5nQHJvY2stY2hp
cHMuY29tPgoKVGhhbmtzLAogwqAtIEtldmVyCj4gLS0tCj4gICAuLi4vaW5jbHVkZS9hc20vYXJj
aC1yb2NrY2hpcC9zZHJhbV9jb21tb24uaCAgfCAgNyArKysrCj4gICBkcml2ZXJzL3JhbS9yb2Nr
Y2hpcC9zZHJhbV9kZWJ1Zy5jICAgICAgICAgICAgfCA0MCArKysrKysrKysrKysrKysrKysrCj4g
ICAyIGZpbGVzIGNoYW5nZWQsIDQ3IGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9hcmNo
L2FybS9pbmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL3NkcmFtX2NvbW1vbi5oIGIvYXJjaC9hcm0v
aW5jbHVkZS9hc20vYXJjaC1yb2NrY2hpcC9zZHJhbV9jb21tb24uaAo+IGluZGV4IDE3MWIyMzNm
OTUuLmNmYmI1MTE4NDMgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0vaW5jbHVkZS9hc20vYXJjaC1y
b2NrY2hpcC9zZHJhbV9jb21tb24uaAo+ICsrKyBiL2FyY2gvYXJtL2luY2x1ZGUvYXNtL2FyY2gt
cm9ja2NoaXAvc2RyYW1fY29tbW9uLmgKPiBAQCAtOTcsOCArOTcsMTUgQEAgaW50IGRyYW1faW5p
dCh2b2lkKTsKPiAgIGlubGluZSB2b2lkIHNkcmFtX3ByaW50X2RyYW1fdHlwZSh1bnNpZ25lZCBj
aGFyIGRyYW10eXBlKQo+ICAgewo+ICAgfQo+ICsKPiAraW5saW5lIHZvaWQgc2RyYW1fcHJpbnRf
ZGRyX2luZm8oc3RydWN0IHNkcmFtX2NhcF9pbmZvICpjYXBfaW5mbywKPiArCQkJCSBzdHJ1Y3Qg
c2RyYW1fYmFzZV9wYXJhbXMgKmJhc2UpCj4gK3sKPiArfQo+ICAgI2Vsc2UKPiAgIHZvaWQgc2Ry
YW1fcHJpbnRfZHJhbV90eXBlKHVuc2lnbmVkIGNoYXIgZHJhbXR5cGUpOwo+ICt2b2lkIHNkcmFt
X3ByaW50X2Rkcl9pbmZvKHN0cnVjdCBzZHJhbV9jYXBfaW5mbyAqY2FwX2luZm8sCj4gKwkJCSAg
c3RydWN0IHNkcmFtX2Jhc2VfcGFyYW1zICpiYXNlKTsKPiAgICNlbmRpZiAvKiBDT05GSUdfUkFN
X1JPQ0tDSElQX0RFQlVHICovCj4gICAKPiAgICNlbmRpZgo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3JhbS9yb2NrY2hpcC9zZHJhbV9kZWJ1Zy5jIGIvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1f
ZGVidWcuYwo+IGluZGV4IGMxM2UxNDBmYTUuLjY5YTZmOTRhNzMgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fZGVidWcuYwo+ICsrKyBiL2RyaXZlcnMvcmFtL3JvY2tj
aGlwL3NkcmFtX2RlYnVnLmMKPiBAQCAtMzIsMyArMzIsNDMgQEAgdm9pZCBzZHJhbV9wcmludF9k
cmFtX3R5cGUodW5zaWduZWQgY2hhciBkcmFtdHlwZSkKPiAgIAkJYnJlYWs7Cj4gICAJfQo+ICAg
fQo+ICsKPiArdm9pZCBzZHJhbV9wcmludF9kZHJfaW5mbyhzdHJ1Y3Qgc2RyYW1fY2FwX2luZm8g
KmNhcF9pbmZvLAo+ICsJCQkgIHN0cnVjdCBzZHJhbV9iYXNlX3BhcmFtcyAqYmFzZSkKPiArewo+
ICsJdTMyIGJnOwo+ICsKPiArCWJnID0gKGNhcF9pbmZvLT5kYncgPT0gMCkgPyAyIDogMTsKPiAr
Cj4gKwlzZHJhbV9wcmludF9kcmFtX3R5cGUoYmFzZS0+ZHJhbXR5cGUpOwo+ICsKPiArCXByaW50
YXNjaWkoIiwgIik7Cj4gKwlwcmludGRlYyhiYXNlLT5kZHJfZnJlcSk7Cj4gKwlwcmludGFzY2lp
KCJNSHpcbiIpOwo+ICsKPiArCXByaW50YXNjaWkoIkJXPSIpOwo+ICsJcHJpbnRkZWMoOCA8PCBj
YXBfaW5mby0+YncpOwo+ICsKPiArCXByaW50YXNjaWkoIiBDb2w9Iik7Cj4gKwlwcmludGRlYyhj
YXBfaW5mby0+Y29sKTsKPiArCj4gKwlwcmludGFzY2lpKCIgQms9Iik7Cj4gKwlwcmludGRlYygw
eDEgPDwgY2FwX2luZm8tPmJrKTsKPiArCWlmIChiYXNlLT5kcmFtdHlwZSA9PSBERFI0KSB7Cj4g
KwkJcHJpbnRhc2NpaSgiIEJHPSIpOwo+ICsJCXByaW50ZGVjKDEgPDwgYmcpOwo+ICsJfQo+ICsK
PiArCXByaW50YXNjaWkoIiBDUzAgUm93PSIpOwo+ICsJcHJpbnRkZWMoY2FwX2luZm8tPmNzMF9y
b3cpOwo+ICsJaWYgKGNhcF9pbmZvLT5yYW5rID4gMSkgewo+ICsJCXByaW50YXNjaWkoIiBDUzEg
Um93PSIpOwo+ICsJCXByaW50ZGVjKGNhcF9pbmZvLT5jczFfcm93KTsKPiArCX0KPiArCj4gKwlw
cmludGFzY2lpKCIgQ1M9Iik7Cj4gKwlwcmludGRlYyhjYXBfaW5mby0+cmFuayk7Cj4gKwo+ICsJ
cHJpbnRhc2NpaSgiIERpZSBCVz0iKTsKPiArCXByaW50ZGVjKDggPDwgY2FwX2luZm8tPmRidyk7
Cj4gK30KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
