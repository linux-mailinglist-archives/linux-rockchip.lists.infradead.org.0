Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AD296A950
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 15:13:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gddaf4Vn1Do8lmEjyBXQv0//cOcO39U+D+/yFjacz9o=; b=rtPRaZ8OY3ZAJywjMAzIn54uI
	gbGuOCOK4beMjTLMUH1Mv1U06F2tijEKlnAEBR0x5o1VqIxcTxZ2kf+szwSJO6fOhpM/uQlxY4mnd
	vkdQILOPli056kK6IGQRoBmnKP/JlgHw21CEcrlRcB4zilQTq/jafxv8uKw+oyLJ+6SEbhi3Y1MaU
	YJ4RxMt7x2OhE07RjhM8HdO3KK7u5JpQgmYb52D9ifgu/7Mvun03hfJu1CdH36n84z8QmaskmyHwt
	3+y1eeMS2v9PupFhZ2C153a+Utnm2ymMOoUYm2rq6xCcVznvV7M6Jxcw851+vp6kpsLgnkgV4HzCY
	YRX7QHA7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnNGy-0001mo-8B; Tue, 16 Jul 2019 13:13:36 +0000
Received: from regular1.263xmail.com ([211.150.70.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnNGu-0001mF-OK
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 13:13:34 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.252])
 by regular1.263xmail.com (Postfix) with ESMTP id BFF97782;
 Tue, 16 Jul 2019 21:13:30 +0800 (CST)
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
 P29801T140087641753344S1563282806371998_; 
 Tue, 16 Jul 2019 21:13:28 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <f46d0a8c144a2632466e372080e8a80a>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 29/57] ram: rk3399: Configure PHY RX_CM_INPUT for lpddr4
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-30-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <85ccc97b-541c-7c3e-4cf2-2e2c40eb7a2c@rock-chips.com>
Date: Tue, 16 Jul 2019 21:13:27 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-30-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_061332_973739_29CAFC2A 
X-CRM114-Status: GOOD (  12.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.196 listed in list.dnswl.org]
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

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU3LCBKYWdhbiBUZWtpIHdyb3RlOgo+IENvbmZpZ3VyZSBQ
SFkgUlhfQ01fSU5QVVQgZm9yIGxwZGRyNCBkdXJpbmcgcGh5IElPIGNvbmZpZy4KPgo+IFNpZ25l
ZC1vZmYtYnk6IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+IFNpZ25l
ZC1vZmYtYnk6IFlvdU1pbiBDaGVuIDxjeW1Acm9jay1jaGlwcy5jb20+CgpSZXZpZXdlZC1ieTog
S2V2ZXIgWWFuZyA8S2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKIMKgLSBLZXZl
cgo+IC0tLQo+ICAgZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMgfCAyMiArKysr
KysrKysrKysrKysrKysrKysrCj4gICAxIGZpbGUgY2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKQo+
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jIGIvZHJp
dmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMKPiBpbmRleCBjMDJmOTM2ZjJhLi4yYWIx
MGRhNTNmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5j
Cj4gKysrIGIvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMKPiBAQCAtMzksNiAr
MzksNyBAQAo+ICAgI2RlZmluZSBQSFlfQk9PU1ROX0VOCQkweDEKPiAgICNkZWZpbmUgUEhZX1NM
RVdQX0VOCQkweDEKPiAgICNkZWZpbmUgUEhZX1NMRVdOX0VOCQkweDEKPiArI2RlZmluZSBQSFlf
UlhfQ01fSU5QVVQJCTB4MQo+ICAgCj4gICAjZGVmaW5lIENSVV9TRlRSU1RfRERSX0NUUkwoY2gs
IG4pCSgoMHgxIDw8ICg4ICsgMTYgKyAoY2gpICogNCkpIHwgXAo+ICAgCQkJCQkoKG4pIDw8ICg4
ICsgKGNoKSAqIDQpKSkKPiBAQCAtMzg0LDYgKzM4NSwyNyBAQCBzdGF0aWMgaW50IHBoeV9pb19j
b25maWcoY29uc3Qgc3RydWN0IGNoYW5faW5mbyAqY2hhbiwKPiAgIAkvKiBQSFlfOTM5IFBIWV9Q
QURfQ1NfRFJJVkUgKi8KPiAgIAljbHJzZXRiaXRzX2xlMzIoJmRlbmFsaV9waHlbOTM5XSwgMHgz
IDw8IDE3LCBzcGVlZCA8PCAxNyk7Cj4gICAKPiArCWlmIChJU19FTkFCTEVEKENPTkZJR19SQU1f
UkszMzk5X0xQRERSNCkpIHsKPiArCQkvKiBSWF9DTV9JTlBVVCAqLwo+ICsJCXJlZ192YWx1ZSA9
IFBIWV9SWF9DTV9JTlBVVDsKPiArCQkvKiBQSFlfOTI0IFBIWV9QQURfRkRCS19EUklWRSAqLwo+
ICsJCWNscnNldGJpdHNfbGUzMigmZGVuYWxpX3BoeVs5MjRdLCAweDEgPDwgMTQsIHJlZ192YWx1
ZSA8PCAxNCk7Cj4gKwkJLyogUEhZXzkyNiBQSFlfUEFEX0RBVEFfRFJJVkUgKi8KPiArCQljbHJz
ZXRiaXRzX2xlMzIoJmRlbmFsaV9waHlbOTI2XSwgMHgxIDw8IDExLCByZWdfdmFsdWUgPDwgMTEp
Owo+ICsJCS8qIFBIWV85MjcgUEhZX1BBRF9EUVNfRFJJVkUgKi8KPiArCQljbHJzZXRiaXRzX2xl
MzIoJmRlbmFsaV9waHlbOTI3XSwgMHgxIDw8IDEzLCByZWdfdmFsdWUgPDwgMTMpOwo+ICsJCS8q
IFBIWV85MjggUEhZX1BBRF9BRERSX0RSSVZFICovCj4gKwkJY2xyc2V0Yml0c19sZTMyKCZkZW5h
bGlfcGh5WzkyOF0sIDB4MSA8PCAxOSwgcmVnX3ZhbHVlIDw8IDE5KTsKPiArCQkvKiBQSFlfOTI5
IFBIWV9QQURfQ0xLX0RSSVZFICovCj4gKwkJY2xyc2V0Yml0c19sZTMyKCZkZW5hbGlfcGh5Wzky
OV0sIDB4MSA8PCAyMSwgcmVnX3ZhbHVlIDw8IDIxKTsKPiArCQkvKiBQSFlfOTM1IFBIWV9QQURf
Q0tFX0RSSVZFICovCj4gKwkJY2xyc2V0Yml0c19sZTMyKCZkZW5hbGlfcGh5WzkzNV0sIDB4MSA8
PCAxOSwgcmVnX3ZhbHVlIDw8IDE5KTsKPiArCQkvKiBQSFlfOTM3IFBIWV9QQURfUlNUX0RSSVZF
ICovCj4gKwkJY2xyc2V0Yml0c19sZTMyKCZkZW5hbGlfcGh5WzkzN10sIDB4MSA8PCAxOSwgcmVn
X3ZhbHVlIDw8IDE5KTsKPiArCQkvKiBQSFlfOTM5IFBIWV9QQURfQ1NfRFJJVkUgKi8KPiArCQlj
bHJzZXRiaXRzX2xlMzIoJmRlbmFsaV9waHlbOTM5XSwgMHgxIDw8IDE5LCByZWdfdmFsdWUgPDwg
MTkpOwo+ICsJfQo+ICsKPiAgIAlyZXR1cm4gMDsKPiAgIH0KPiAgIAoKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
