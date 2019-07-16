Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC2066A322
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 09:43:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=c883/qQOF15y7WSNKhr0b+CxEXc7nxLY7MoCdyK4YmU=; b=HJa1AmFOe9Mzvl/7TWT/4wh1v
	x+j7zFz0qWohTop8EI0Jg35mDgHcyIRPcquvIGJqeMPvmwMKdtinzHQ1gyknDICWlz7P8lkHly3S1
	aoiYDhOmE9dJCmibYJ6EOdHg8QIgLqhavKQOF7UF+sFFNmBnr/D0n1kJ2ZG5UUdlefd5TVn0Ex2yj
	+f6oa8p0vq4Mo9NQtEFl89hVxE3AGFFDp7JN1C1Bf6Ks9/du3gmCyFPAGLYOtLg5Cq3S0FZlGGu65
	sEbMBGphQ279MnXnoFJolxv4cZHC/A3EfrC+hRXPBQl/tpALMOMQPYjB/uAgJI1WCRqG58V2GPlIT
	KIivS6piQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnI7F-00074h-Na; Tue, 16 Jul 2019 07:43:13 +0000
Received: from regular1.263xmail.com ([211.150.70.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnI7B-000744-DI
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 07:43:11 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.140])
 by regular1.263xmail.com (Postfix) with ESMTP id C0FE87FD;
 Tue, 16 Jul 2019 15:43:07 +0800 (CST)
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
 P10266T140147265894144S1563262985225066_; 
 Tue, 16 Jul 2019 15:43:06 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <83e00565669363a3ec5ba300d17972e4>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 12/18] ram: rockchip: debug: Get the cs capacity
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190715182856.21688-1-jagan@amarulasolutions.com>
 <20190715182856.21688-13-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <9aefe906-ea3c-e715-0d36-6c4a8f080f9c@rock-chips.com>
Date: Tue, 16 Jul 2019 15:43:05 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190715182856.21688-13-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_004309_782635_46DC7411 
X-CRM114-Status: GOOD (  15.63  )
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

Ck9uIDIwMTkvNy8xNiDkuIrljYgyOjI4LCBKYWdhbiBUZWtpIHdyb3RlOgo+IEFkZCBjb2RlIHRv
IGdldCB0aGUgY2hhbm5lbCBjYXBhY2l0eSwgdGhpcyB3b3VsZCBoZWxwIHRvCj4gcHJpbnQgdGhl
IGNhcGFjaXR5IG9mIHNwZWNpZmljIGNoYW5uZWwuCj4KPiBIZXJlIGlzIHNhbXBsZSBwcmludCBv
biBMUEREUjQsIDUwTUh6IGNoYW5uZWwgMAo+IEJXPTMyIENvbD0xMCBCaz04IENTMCBSb3c9MTUg
Q1MxIFJvdz0xNSBDUz0yIERpZSBCVz0xNiBTaXplPTIwNDhNQgo+Cj4gU2lnbmVkLW9mZi1ieTog
SmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+Cj4gU2lnbmVkLW9mZi1ieTog
WW91TWluIENoZW4gPGN5bUByb2NrLWNoaXBzLmNvbT4KClJldmlld2VkLWJ5OiBLZXZlciBZYW5n
IDxLZXZlci55YW5nQHJvY2stY2hpcHMuY29tPgoKVGhhbmtzLAogwqAtIEtldmVyCj4gLS0tCj4g
ICBkcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9kZWJ1Zy5jIHwgNDYgKysrKysrKysrKysrKysr
KysrKysrKysrKysrKystCj4gICAxIGZpbGUgY2hhbmdlZCwgNDUgaW5zZXJ0aW9ucygrKSwgMSBk
ZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX2Rl
YnVnLmMgYi9kcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9kZWJ1Zy5jCj4gaW5kZXggNjlhNmY5
NGE3My4uMTllOTIyNWMxMiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJh
bV9kZWJ1Zy5jCj4gKysrIGIvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fZGVidWcuYwo+IEBA
IC0zMywxMCArMzMsNDYgQEAgdm9pZCBzZHJhbV9wcmludF9kcmFtX3R5cGUodW5zaWduZWQgY2hh
ciBkcmFtdHlwZSkKPiAgIAl9Cj4gICB9Cj4gICAKPiArLyoqCj4gKyAqIGNzICA9IDAsIGNzMAo+
ICsgKiBjcyAgPSAxLCBjczEKPiArICogY3MgPT4gMiwgY3MwK2NzMQo+ICsgKiBub3RlOiBpdCBk
aWRuJ3QgY29uc2lkZXIgYWJvdXQgcm93XzNfNAo+ICsgKi8KPiArdTY0IHNkcmFtX2dldF9jc19j
YXAoc3RydWN0IHNkcmFtX2NhcF9pbmZvICpjYXBfaW5mbywgdTMyIGNzLCB1MzIgZHJhbV90eXBl
KQo+ICt7Cj4gKwl1MzIgYmc7Cj4gKwl1NjQgY2FwWzJdOwo+ICsKPiArCWlmIChkcmFtX3R5cGUg
PT0gRERSNCkKPiArCQkvKiBERFI0IDhiaXQgZHJhbSBCRyA9IDIoNGJhbmsgZ3JvdXBzKSwKPiAr
CQkgKiAxNmJpdCBkcmFtIEJHID0gMSAoMiBiYW5rIGdyb3VwcykKPiArCQkgKi8KPiArCQliZyA9
IChjYXBfaW5mby0+ZGJ3ID09IDApID8gMiA6IDE7Cj4gKwllbHNlCj4gKwkJYmcgPSAwOwo+ICsK
PiArCWNhcFswXSA9IDFsbHUgPDwgKGNhcF9pbmZvLT5idyArIGNhcF9pbmZvLT5jb2wgKwo+ICsJ
CSBiZyArIGNhcF9pbmZvLT5iayArIGNhcF9pbmZvLT5jczBfcm93KTsKPiArCj4gKwlpZiAoY2Fw
X2luZm8tPnJhbmsgPT0gMikKPiArCQljYXBbMV0gPSAxbGx1IDw8IChjYXBfaW5mby0+YncgKyBj
YXBfaW5mby0+Y29sICsKPiArCQkJIGJnICsgY2FwX2luZm8tPmJrICsgY2FwX2luZm8tPmNzMV9y
b3cpOwo+ICsJZWxzZQo+ICsJCWNhcFsxXSA9IDA7Cj4gKwo+ICsJaWYgKGNzID09IDApCj4gKwkJ
cmV0dXJuIGNhcFswXTsKPiArCWVsc2UgaWYgKGNzID09IDEpCj4gKwkJcmV0dXJuIGNhcFsxXTsK
PiArCWVsc2UKPiArCQlyZXR1cm4gKGNhcFswXSArIGNhcFsxXSk7Cj4gK30KPiArCj4gICB2b2lk
IHNkcmFtX3ByaW50X2Rkcl9pbmZvKHN0cnVjdCBzZHJhbV9jYXBfaW5mbyAqY2FwX2luZm8sCj4g
ICAJCQkgIHN0cnVjdCBzZHJhbV9iYXNlX3BhcmFtcyAqYmFzZSkKPiAgIHsKPiAtCXUzMiBiZzsK
PiArCXUzMiBiZywgY2FwOwo+ICAgCj4gICAJYmcgPSAoY2FwX2luZm8tPmRidyA9PSAwKSA/IDIg
OiAxOwo+ICAgCj4gQEAgLTcxLDQgKzEwNywxMiBAQCB2b2lkIHNkcmFtX3ByaW50X2Rkcl9pbmZv
KHN0cnVjdCBzZHJhbV9jYXBfaW5mbyAqY2FwX2luZm8sCj4gICAKPiAgIAlwcmludGFzY2lpKCIg
RGllIEJXPSIpOwo+ICAgCXByaW50ZGVjKDggPDwgY2FwX2luZm8tPmRidyk7Cj4gKwo+ICsJY2Fw
ID0gc2RyYW1fZ2V0X2NzX2NhcChjYXBfaW5mbywgMywgYmFzZS0+ZHJhbXR5cGUpOwo+ICsJaWYg
KGNhcF9pbmZvLT5yb3dfM180KQo+ICsJCWNhcCA9IGNhcCAqIDMgLyA0Owo+ICsKPiArCXByaW50
YXNjaWkoIiBTaXplPSIpOwo+ICsJcHJpbnRkZWMoY2FwID4+IDIwKTsKPiArCXByaW50YXNjaWko
Ik1CXG4iKTsKPiAgIH0KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
