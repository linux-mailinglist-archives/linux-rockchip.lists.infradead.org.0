Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75EE06A94E
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 15:13:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YfxQX8AAXiymi8EPIUh6qixDu7FrG/hES2Kesob+eFc=; b=kpo0uElEJNiGz3KNF8zubqCkR
	4mlaUJVDjCzIYQARbF8Gv94ABym1mV+R4HLZ8cmtI7T72DNYmmz06qYFM7K0o1aoMWgVli5DLJB9x
	hygIT4YPeFm6P3Vz0x1SxA1gkwMCaazCPoqW/vTj2sJJEacsz2Mr/YIOcUJdpZCL3ymAMmbe5oGfz
	PAWjZWAvJB6mW9BSvbiGaChD4nJnRboWLZQXYnCE6EfRa6hvLOCgTITDCbA4YoZAhqglIFn17Z6Gr
	LwnoQVC9QhIPKpXUZt+gnOYl+/rLZpKj+oAFMkL2QFnIxyuoSejsuTtjpSPelNEpWSwuC2IMPDqYt
	Zw5SpPiCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnNGU-0001gF-Lg; Tue, 16 Jul 2019 13:13:06 +0000
Received: from regular1.263xmail.com ([211.150.70.205])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnNGR-0001fO-0o
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 13:13:04 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.252])
 by regular1.263xmail.com (Postfix) with ESMTP id 08A1C3A8;
 Tue, 16 Jul 2019 21:13:00 +0800 (CST)
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
 P29801T140086387664640S1563282775760063_; 
 Tue, 16 Jul 2019 21:12:58 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <3a5417e8470768ab63db7db533ce4ffc>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 27/57] ram: rk3399: Configure BOOSTP_EN, BOOSTN_EN for
 lpddr4
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-28-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <c3c45bb0-3003-0eb2-51fd-758fe9e9d891@rock-chips.com>
Date: Tue, 16 Jul 2019 21:12:57 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-28-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_061303_261670_13C62F9A 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.205 listed in list.dnswl.org]
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

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU3LCBKYWdhbiBUZWtpIHdyb3RlOgo+IENvbmZpZ3VyZSBC
T09TVFBfRU4sIEJPT1NUTl9FTiBmb3IgbHBkZHI0IGR1cmluZyBwaHkgSU8gY29uZmlnLgo+Cj4g
U2lnbmVkLW9mZi1ieTogSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+Cj4g
U2lnbmVkLW9mZi1ieTogWW91TWluIENoZW4gPGN5bUByb2NrLWNoaXBzLmNvbT4KClJldmlld2Vk
LWJ5OiBLZXZlciBZYW5nIDxLZXZlci55YW5nQHJvY2stY2hpcHMuY29tPgoKVGhhbmtzLAogwqAt
IEtldmVyCj4gLS0tCj4gICBkcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYyB8IDI0
ICsrKysrKysrKysrKysrKysrKysrKysrKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDI0IGluc2VydGlv
bnMoKykKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTku
YyBiL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jCj4gaW5kZXggNzYyNTUwNjQ1
OC4uYTllMDkyYzM5ZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9y
azMzOTkuYwo+ICsrKyBiL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jCj4gQEAg
LTM1LDYgKzM1LDkgQEAKPiAgICNkZWZpbmUgUEhZX0RSVl9PRFRfNDAJCTB4ZQo+ICAgI2RlZmlu
ZSBQSFlfRFJWX09EVF8zNF8zCTB4Zgo+ICAgCj4gKyNkZWZpbmUgUEhZX0JPT1NUUF9FTgkJMHgx
Cj4gKyNkZWZpbmUgUEhZX0JPT1NUTl9FTgkJMHgxCj4gKwo+ICAgI2RlZmluZSBDUlVfU0ZUUlNU
X0REUl9DVFJMKGNoLCBuKQkoKDB4MSA8PCAoOCArIDE2ICsgKGNoKSAqIDQpKSB8IFwKPiAgIAkJ
CQkJKChuKSA8PCAoOCArIChjaCkgKiA0KSkpCj4gICAjZGVmaW5lIENSVV9TRlRSU1RfRERSX1BI
WShjaCwgbikJKCgweDEgPDwgKDkgKyAxNiArIChjaCkgKiA0KSkgfCBcCj4gQEAgLTMxMiw2ICsz
MTUsMjcgQEAgc3RhdGljIGludCBwaHlfaW9fY29uZmlnKGNvbnN0IHN0cnVjdCBjaGFuX2luZm8g
KmNoYW4sCj4gICAJLyogUEhZXzkzOSBQSFlfUEFEX0NTX0RSSVZFICovCj4gICAJY2xyc2V0Yml0
c19sZTMyKCZkZW5hbGlfcGh5WzkzOV0sIDB4NyA8PCAxNCwgbW9kZV9zZWwgPDwgMTQpOwo+ICAg
Cj4gKwlpZiAoSVNfRU5BQkxFRChDT05GSUdfUkFNX1JLMzM5OV9MUEREUjQpKSB7Cj4gKwkJLyog
Qk9PU1RQX0VOICYgQk9PU1ROX0VOICovCj4gKwkJcmVnX3ZhbHVlID0gKChQSFlfQk9PU1RQX0VO
IDw8IDQpIHwgUEhZX0JPT1NUTl9FTik7Cj4gKwkJLyogUEhZXzkyNSBQSFlfUEFEX0ZEQktfRFJJ
VkUyICovCj4gKwkJY2xyc2V0Yml0c19sZTMyKCZkZW5hbGlfcGh5WzkyNV0sIDB4ZmYgPDwgOCwg
cmVnX3ZhbHVlIDw8IDgpOwo+ICsJCS8qIFBIWV85MjYgUEhZX1BBRF9EQVRBX0RSSVZFICovCj4g
KwkJY2xyc2V0Yml0c19sZTMyKCZkZW5hbGlfcGh5WzkyNl0sIDB4ZmYgPDwgMTIsIHJlZ192YWx1
ZSA8PCAxMik7Cj4gKwkJLyogUEhZXzkyNyBQSFlfUEFEX0RRU19EUklWRSAqLwo+ICsJCWNscnNl
dGJpdHNfbGUzMigmZGVuYWxpX3BoeVs5MjddLCAweGZmIDw8IDE0LCByZWdfdmFsdWUgPDwgMTQp
Owo+ICsJCS8qIFBIWV85MjggUEhZX1BBRF9BRERSX0RSSVZFICovCj4gKwkJY2xyc2V0Yml0c19s
ZTMyKCZkZW5hbGlfcGh5WzkyOF0sIDB4ZmYgPDwgMjAsIHJlZ192YWx1ZSA8PCAyMCk7Cj4gKwkJ
LyogUEhZXzkyOSBQSFlfUEFEX0NMS19EUklWRSAqLwo+ICsJCWNscnNldGJpdHNfbGUzMigmZGVu
YWxpX3BoeVs5MjldLCAweGZmIDw8IDIyLCByZWdfdmFsdWUgPDwgMjIpOwo+ICsJCS8qIFBIWV85
MzUgUEhZX1BBRF9DS0VfRFJJVkUgKi8KPiArCQljbHJzZXRiaXRzX2xlMzIoJmRlbmFsaV9waHlb
OTM1XSwgMHhmZiA8PCAyMCwgcmVnX3ZhbHVlIDw8IDIwKTsKPiArCQkvKiBQSFlfOTM3IFBIWV9Q
QURfUlNUX0RSSVZFICovCj4gKwkJY2xyc2V0Yml0c19sZTMyKCZkZW5hbGlfcGh5WzkzN10sIDB4
ZmYgPDwgMjAsIHJlZ192YWx1ZSA8PCAyMCk7Cj4gKwkJLyogUEhZXzkzOSBQSFlfUEFEX0NTX0RS
SVZFICovCj4gKwkJY2xyc2V0Yml0c19sZTMyKCZkZW5hbGlfcGh5WzkzOV0sIDB4ZmYgPDwgMjAs
IHJlZ192YWx1ZSA8PCAyMCk7Cj4gKwl9Cj4gKwo+ICAgCS8qIHNwZWVkIHNldHRpbmcgKi8KPiAg
IAlpZiAocGFyYW1zLT5iYXNlLmRkcl9mcmVxIDwgNDAwKQo+ICAgCQlzcGVlZCA9IDB4MDsKCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
