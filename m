Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F16311AC36
	for <lists+linux-rockchip@lfdr.de>; Wed, 11 Dec 2019 14:40:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/4vgQnhtViZQSdYo6INgtAW1br53bKyZmGqAUufrVf4=; b=mp+lYP6N1JcUgc
	uHKp3j7PTPgCjf7RykR9oGAxU6NZGbGPZd+6ud1xAxX5hsoWTDxVwZZRoxGirNp+xYQPiHnic/efM
	fIA0UXnurlQyOds+zXGHqyc1zA/O6EKOZkWxEv6YgikRxunydJoR3/p1O/66UdRohWfHH6+GC8tDb
	6S9xYiib165+cYJWMq3SO7Fby0gzqori8KVNR0OHJ2B0JLlqdWflP4EcNEh6MGxb3lcVQcYvWsGNg
	TpdHXPKCHOZSYzW2W6pXXecvZVjrsvaa9prVpw4NHu5ItIr4zQxjBB66dBuTXFixZxLRKNFeIRIKe
	0EjLVe3hmYxwKwK5bmMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if2ED-0005QG-En; Wed, 11 Dec 2019 13:40:33 +0000
Received: from vegas.theobroma-systems.com ([144.76.126.164]
 helo=mail.theobroma-systems.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if2E9-0005FM-8e
 for linux-rockchip@lists.infradead.org; Wed, 11 Dec 2019 13:40:31 +0000
Received: from ip092042140082.rev.nessus.at ([92.42.140.82]:54201
 helo=[10.4.9.214]) by mail.theobroma-systems.com with esmtpsa
 (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256) (Exim 4.80)
 (envelope-from <philipp.tomsich@theobroma-systems.com>)
 id 1if2Dz-0007mD-Px; Wed, 11 Dec 2019 14:40:19 +0100
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3601.0.10\))
Subject: Re: [PATCH 1/2] Revert "rockchip: spi: fix off-by-one in chunk size
 computation"
From: Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
In-Reply-To: <20191211132623.430-2-jagan@amarulasolutions.com>
Date: Wed, 11 Dec 2019 14:40:19 +0100
Message-Id: <1E12E6D7-5401-4EF5-9D74-DFC6F8216799@theobroma-systems.com>
References: <20191211132623.430-1-jagan@amarulasolutions.com>
 <20191211132623.430-2-jagan@amarulasolutions.com>
To: Jagan Teki <jagan@amarulasolutions.com>
X-Mailer: Apple Mail (2.3601.0.10)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_054029_490903_CA2050A3 
X-CRM114-Status: GOOD (  16.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: u-boot@lists.denx.de, Simon Glass <sjg@chromium.org>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 Kever Yang <kever.yang@rock-chips.com>, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Cgo+IE9uIDExLjEyLjIwMTksIGF0IDE0OjI2LCBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29s
dXRpb25zLmNvbT4gd3JvdGU6Cj4gCj4gVGhlIG1heGltdW0gdHJhbnNmZXIgbGVuZ3RoIChpbiBh
IHNpbmdsZSB0cmFuc2FjdGlvbikgZm9yIHRoZSBSb2NrY2hpcAo+IFNQSSBjb250cm9sbGVyIGlz
IDY0S2ZyYW1lcyAoaS5lLiAweDEwMDAwIGZyYW1lcykgb2YgOGJpdCBvciAxNmJpdAo+IGZyYW1l
cyBhbmQgaXMgZW5jb2RlZCBhcyAobnVtX2ZyYW1lcyAtIDEpIGluIENUUkxSMS4KPiAKPiBTbyB0
aGUgMHgxMDAwMCBpcyBvZmZzZXQgdmFsdWUgZm9yIDY0SyBidXQgdGhlIGFjdHVhbCBzaXplIHZh
bHVlIHdvdWxkCj4gYmUgJ21pbnVzIDEnIGZyb20gMHgxMDAwMC4KCk5BSy4gUGxlYXNlIHNlZSAy
IGNvZGUgbGluZXMgYmVsb3cgeW91ciBjaGFuZ2UgdG8gc2VlIHRoYXQgdGhlIOKAnG1pbnVzIDHi
gJ0KaXMgYXBwbGllZCB0aGVyZeKApiBzbyBhIHRvZG8gb2YgMHgxMDAwMCB3aWxsIHdyaXRlIDB4
ZmZmZiB0byByZWdzLT5jdHJscjEuCgpUaGUgcHJvYmxlbSBtdXN0IGJlIHNvbWV3aGVyZSBlbHNl
IGFuZCB0aGlzIHBhdGNoIHdpbGwgb25seSBtYXNrIHRoZQp1bmRlcmx5aW5nIGlzc3VlLgoKPiAK
PiBXaXRoIHRoZSBleGlzdGluZyBjb2RlIG9mIDB4MTAwMDAgdHJhbnNmZXIgbGVuZ3RoIGxlYWRz
IHRvIHJlYWQKPiBmYWlsdXJlIHdoZW4gd2UgdHJ5IHRvIHJlYWQgdGhlIGZsYXNoIHdpdGggPiAw
eDEwMDAwIHNpemUgbGlrZSwKPiAKPiAxLiBzZiByZWFkIGZhaWx1cmUgd2hlbiB3aXRoID4gMHgx
MDAwMAo+IAo+IDIuIEJvb3QgZnJvbSBTUEkgZmxhc2ggZmFpbGVkIGR1cmluZyBzcGlfZmxhc2hf
cmVhZCBjYWxsIGluCj4gICBjb21tb24vc3BsL3NwbF9zcGkuYwo+IAo+IE9ic2VydmVkIGFuZCBU
ZXN0ZWQgaW4KPiAtIFJvY2twcm82NCB3aXRoIEdpZ2FkZXZpY2UgZmxhc2gKPiAtIFJPQy1SSzMz
OTktUEMgd2l0aCBXaW5ib25kIGZsYXNoCj4gCj4gVGhpcyByZXZlcnRzIGNvbW1pdCBlNjQ3ZGVj
ZGQ5M2M3NDA4NzQxMzI5NDMyZjI2NzU4ZmJlYzA0YzdhLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEph
Z2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+IC0tLQo+IGRyaXZlcnMvc3Bp
L3JrX3NwaS5jIHwgMiArLQo+IDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxl
dGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3NwaS9ya19zcGkuYyBiL2RyaXZlcnMv
c3BpL3JrX3NwaS5jCj4gaW5kZXggYzA0NTM1YWM0NC4uZDlhMzEwY2U4MCAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL3NwaS9ya19zcGkuYwo+ICsrKyBiL2RyaXZlcnMvc3BpL3JrX3NwaS5jCj4gQEAg
LTQ1MSw3ICs0NTEsNyBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3NwaV94ZmVyKHN0cnVjdCB1ZGV2
aWNlICpkZXYsIHVuc2lnbmVkIGludCBiaXRsZW4sCj4gCj4gCS8qIFRoaXMgaXMgdGhlIG9yaWdp
bmFsIDhiaXQgcmVhZGVyL3dyaXRlciBjb2RlICovCj4gCXdoaWxlIChsZW4gPiAwKSB7Cj4gLQkJ
aW50IHRvZG8gPSBtaW4obGVuLCAweDEwMDAwKTsKPiArCQlpbnQgdG9kbyA9IG1pbihsZW4sIDB4
ZmZmZik7Cj4gCj4gCQlya3NwaV9lbmFibGVfY2hpcChyZWdzLCBmYWxzZSk7Cj4gCQl3cml0ZWwo
dG9kbyAtIDEsICZyZWdzLT5jdHJscjEpOwo+IC0tIAo+IDIuMTguMC4zMjEuZ2ZmYzZmYTBlMwo+
IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
