Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D096B129376
	for <lists+linux-rockchip@lfdr.de>; Mon, 23 Dec 2019 10:04:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FvHywKmEscCZCwG1rPd+BN8CbG7/L4lHMuQLezDMve8=; b=shee66yLgY023p
	0BW1uTEelBmVp8XgjaOtdSGHIMwKpIXUdJKbedbclR+NaEwui8W+Ol3S8gTP8gFZ3QHqrR0GawOTV
	60KcFkDZy0Thn+YU81o/hlRacnYnrhkjhLwfCTL7BeQVn+Oxi+7B92hQaujQDVn9LQtFRJnCIzXZ7
	0dmBYh2OPGrR3edFqjegp2eJiSTsOeZor5R4eJex4Hg/J76QmSgPCK/oDH/d3S2wkAgVSqSzl+/82
	3p4Ui3UqmcAvCVEG/Iad7Q/o44Ye2D56b5/1HEfwB4SJpLrtuXPUsKZX4TybvtKZsKCBLTATn0rHG
	aeCXhlfjPh395g1OhUKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijJdD-0008C2-P5; Mon, 23 Dec 2019 09:04:03 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijJdC-0008Bs-At
 for linux-rockchip@bombadil.infradead.org; Mon, 23 Dec 2019 09:04:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RstlLIQZjhRNJg5vYT/DdlwWii42xYMZnrsSP57hIyg=; b=jTMh1IEJc3UxVaxBv5s1D8kkzL
 c32u2bNcFZp8tKLMdeE4N94qXjaFG8lCvcjocWv+gsmUx9nytjqrBV0LcU47bBSaScXfgJ2jUbAg6
 7JYhbhCHEqOQeit85/WuDizEbILGtWPo64nG1unxrBh2B6BCBMVIAmk8cCv4ZTCB/2B+ROlMkAA52
 xOfXr22xG2V/DmylfUxrKdAIEwSymnmoRRR49duqLqXyQKTrbZ2NWVUHWD5O28FmSviaT37XBgBPP
 V25l8qJ1djEaqHlE9UhG/ekUHbso+rV0h/2EYSKONYWV2ADh4WfrYIWLzn2Tf+ETCp7N1SH87S/Qt
 mCg+UTtA==;
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijJdb-0006BV-67
 for linux-rockchip@lists.infradead.org; Mon, 23 Dec 2019 09:04:29 +0000
X-Originating-IP: 90.76.211.102
Received: from xps13 (lfbn-tou-1-1151-102.w90-76.abo.wanadoo.fr
 [90.76.211.102]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id C0EFA1BF206;
 Mon, 23 Dec 2019 09:03:21 +0000 (UTC)
Date: Mon, 23 Dec 2019 10:03:20 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Describe PX30 caches
Message-ID: <20191223100320.3b852485@xps13>
In-Reply-To: <1982322.8UTTk47u2F@diego>
References: <20191204103940.22050-1-miquel.raynal@bootlin.com>
 <1982322.8UTTk47u2F@diego>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_090427_308164_5492E8D4 
X-CRM114-Status: GOOD (  20.19  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.201 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgSGVpa28sCgpIZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250ZWNoLmRlPiB3cm90ZSBvbiBGcmks
IDIwIERlYyAyMDE5IDAxOjU1OjU4CiswMTAwOgoKPiBBbSBNaXR0d29jaCwgNC4gRGV6ZW1iZXIg
MjAxOSwgMTE6Mzk6NDAgQ0VUIHNjaHJpZWIgTWlxdWVsIFJheW5hbDoKPiA+IFBYMzAgU29DcyBm
ZWF0dXJlIDQgQ29ydGV4LUEzNSBDUFVzIHdpdGggZWFjaCBvZiB0aGVtIGEgTDEgZGF0YSBhbmQK
PiA+IGluc3RydWN0aW9uIGNhY2hlLiBCb3RoIGFyZSAzMmtpQiB3aWRlIChQWDMwIFRSTSkgYW5k
IG1hZGUgb2YgNjQtYml0Cj4gPiBsaW5lcyAoQVJNIENvcnRleC1BMzUgbWFudWFsKS4gSS1jYWNo
ZSBpcyAyLXdheSBzZXQgYXNzb2NpYXRpdmUgKEFSTQo+ID4gQ29ydGV4LUEzNSBtYW51YWwpLCBE
LWNhY2hlIGlzIDQtd2F5IHNldCBhc3NvY2lhdGl2ZSAoQVJNCj4gPiBDb3J0ZXgtQTM1bWFudWFs
KS4KPiA+IAo+ID4gQW4gTDIgY2FjaGUgaXMgcGxhY2VkIGFmdGVyIHRoZXNlIDQgTDEgY2FjaGVz
IChQWDMwIFRSTSksIGlzIDI1NmtpQgo+ID4gd2lkZSAoUFgzMCBUUk0pIGFuZCBtYWRlIG9mIDY0
LWJpdCBsaW5lcyAoQVJNIENvcnRleC1BMzUgbWFudWFsKSBhbmQKPiA+IGlzIDgtd2F5IHNldCBh
c3NvY2lhdGl2ZSAoQVJNIENvcnRleC1BMzUgbWFudWFsKS4KPiA+IAo+ID4gRGVzY3JpYmUgYWxs
IG9mIHRoZW0gaW4gdGhlIFBYMzAgRFRTSS4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogTWlxdWVs
IFJheW5hbCA8bWlxdWVsLnJheW5hbEBib290bGluLmNvbT4KPiA+IC0tLQo+ID4gIGFyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcHgzMC5kdHNpIHwgMzUgKysrKysrKysrKysrKysrKysrKysr
KysrKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgMzUgaW5zZXJ0aW9ucygrKQo+ID4gCj4gPiBkaWZm
IC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9weDMwLmR0c2kgYi9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3B4MzAuZHRzaQo+ID4gaW5kZXggMWZkMTJiZDA5ZTgzLi4w
ZTEwYTIyNGE4NGIgMTAwNjQ0Cj4gPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3B4MzAuZHRzaQo+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9weDMwLmR0
c2kKPiA+IEBAIC00OCw2ICs0OCwxMyBAQAo+ID4gIAkJCWNwdS1pZGxlLXN0YXRlcyA9IDwmQ1BV
X1NMRUVQICZDTFVTVEVSX1NMRUVQPjsKPiA+ICAJCQlkeW5hbWljLXBvd2VyLWNvZWZmaWNpZW50
ID0gPDkwPjsKPiA+ICAJCQlvcGVyYXRpbmctcG9pbnRzLXYyID0gPCZjcHUwX29wcF90YWJsZT47
Cj4gPiArCQkJaS1jYWNoZS1zaXplID0gPDB4ODAwMD47Cj4gPiArCQkJaS1jYWNoZS1saW5lLXNp
emUgPSA8NjQ+Owo+ID4gKwkJCWktY2FjaGUtc2V0cyA9IDwyNTY+Owo+ID4gKwkJCWQtY2FjaGUt
c2l6ZSA9IDwweDgwMDA+Owo+ID4gKwkJCWQtY2FjaGUtbGluZS1zaXplID0gPDY0PjsKPiA+ICsJ
CQlkLWNhY2hlLXNldHMgPSA8MTI4PjsKPiA+ICsJCQluZXh0LWxldmVsLWNhY2hlID0gPCZsMj47
Cj4gPiAgCQl9Owo+ID4gIAo+ID4gIAkJY3B1MTogY3B1QDEgewo+ID4gQEAgLTYwLDYgKzY3LDEz
IEBACj4gPiAgCQkJY3B1LWlkbGUtc3RhdGVzID0gPCZDUFVfU0xFRVAgJkNMVVNURVJfU0xFRVA+
Owo+ID4gIAkJCWR5bmFtaWMtcG93ZXItY29lZmZpY2llbnQgPSA8OTA+Owo+ID4gIAkJCW9wZXJh
dGluZy1wb2ludHMtdjIgPSA8JmNwdTBfb3BwX3RhYmxlPjsKPiA+ICsJCQlpLWNhY2hlLXNpemUg
PSA8MHg4MDAwPjsKPiA+ICsJCQlpLWNhY2hlLWxpbmUtc2l6ZSA9IDw2ND47Cj4gPiArCQkJaS1j
YWNoZS1zZXRzID0gPDI1Nj47Cj4gPiArCQkJZC1jYWNoZS1zaXplID0gPDB4ODAwMD47Cj4gPiAr
CQkJZC1jYWNoZS1saW5lLXNpemUgPSA8NjQ+Owo+ID4gKwkJCWQtY2FjaGUtc2V0cyA9IDwxMjg+
Owo+ID4gKwkJCW5leHQtbGV2ZWwtY2FjaGUgPSA8JmwyPjsKPiA+ICAJCX07Cj4gPiAgCj4gPiAg
CQljcHUyOiBjcHVAMiB7Cj4gPiBAQCAtNzIsNiArODYsMTMgQEAKPiA+ICAJCQljcHUtaWRsZS1z
dGF0ZXMgPSA8JkNQVV9TTEVFUCAmQ0xVU1RFUl9TTEVFUD47Cj4gPiAgCQkJZHluYW1pYy1wb3dl
ci1jb2VmZmljaWVudCA9IDw5MD47Cj4gPiAgCQkJb3BlcmF0aW5nLXBvaW50cy12MiA9IDwmY3B1
MF9vcHBfdGFibGU+Owo+ID4gKwkJCWktY2FjaGUtc2l6ZSA9IDwweDgwMDA+Owo+ID4gKwkJCWkt
Y2FjaGUtbGluZS1zaXplID0gPDY0PjsKPiA+ICsJCQlpLWNhY2hlLXNldHMgPSA8MjU2PjsKPiA+
ICsJCQlkLWNhY2hlLXNpemUgPSA8MHg4MDAwPjsKPiA+ICsJCQlkLWNhY2hlLWxpbmUtc2l6ZSA9
IDw2ND47Cj4gPiArCQkJZC1jYWNoZS1zZXRzID0gPDEyOD47Cj4gPiArCQkJbmV4dC1sZXZlbC1j
YWNoZSA9IDwmbDI+Owo+ID4gIAkJfTsKPiA+ICAKPiA+ICAJCWNwdTM6IGNwdUAzIHsKPiA+IEBA
IC04NCw2ICsxMDUsMTMgQEAKPiA+ICAJCQljcHUtaWRsZS1zdGF0ZXMgPSA8JkNQVV9TTEVFUCAm
Q0xVU1RFUl9TTEVFUD47Cj4gPiAgCQkJZHluYW1pYy1wb3dlci1jb2VmZmljaWVudCA9IDw5MD47
Cj4gPiAgCQkJb3BlcmF0aW5nLXBvaW50cy12MiA9IDwmY3B1MF9vcHBfdGFibGU+Owo+ID4gKwkJ
CWktY2FjaGUtc2l6ZSA9IDwweDgwMDA+Owo+ID4gKwkJCWktY2FjaGUtbGluZS1zaXplID0gPDY0
PjsKPiA+ICsJCQlpLWNhY2hlLXNldHMgPSA8MjU2PjsKPiA+ICsJCQlkLWNhY2hlLXNpemUgPSA8
MHg4MDAwPjsKPiA+ICsJCQlkLWNhY2hlLWxpbmUtc2l6ZSA9IDw2ND47Cj4gPiArCQkJZC1jYWNo
ZS1zZXRzID0gPDEyOD47Cj4gPiArCQkJbmV4dC1sZXZlbC1jYWNoZSA9IDwmbDI+Owo+ID4gIAkJ
fTsKPiA+ICAKPiA+ICAJCWlkbGUtc3RhdGVzIHsKPiA+IEBAIC0xMDcsNiArMTM1LDEzIEBACj4g
PiAgCQkJCW1pbi1yZXNpZGVuY3ktdXMgPSA8MjAwMD47Cj4gPiAgCQkJfTsKPiA+ICAJCX07Cj4g
PiArCj4gPiArCQlsMjogbDItY2FjaGUgewo+ID4gKwkJCWNvbXBhdGlibGUgPSAiY2FjaGUiOwo+
ID4gKwkJCWNhY2hlLXNpemUgPSA8MHg0MDAwMD47Cj4gPiArCQkJY2FjaGUtbGluZS1zaXplID0g
PDY0PjsKPiA+ICsJCQljYWNoZS1zZXRzID0gPDUxMj47Cj4gPiArCQl9Owo+ID4gIAl9OyAgCj4g
Cj4gTG9va3MgbGlrZSBSb2IgZGlkIGFuc3dlciBteSB1bnNwb2tlbiBxdWVzdGlvbiwgY2l0aW5n
IGhpcyByZXBseSB0bwo+IAkiYXJtNjQ6IGR0czogYW1hem9uOiBhZGQgQW1hem9uJ3MgQW5uYXB1
cm5hIExhYnMgQWxwaW5lIHYzIHN1cHBvcnQiIFswXQo+IAo+ICJXZSBvbmx5IGRlZmluZSBjYWNo
ZSBhdHRyaWJ1dGVzIGlmIG5vdCBkaXNjb3ZlcmFibGUgb3IgdGhlIGNhY2hlIElEIAo+IHJlZ2lz
dGVycyBhcmUgd3JvbmcgYW5kIHlvdSBuZWVkIHRvIG92ZXJyaWRlIHdoYXQncyBkaXNjb3ZlcmFi
bGUuIgo+IAo+IFNvIHVubGVzcyB0aGUgY2FjaGUgaW5mb3JtYXRpb24gcmVhZCBkdXJpbmcgYm9v
dCBpcyB3cm9uZywgaXQgbG9va3MKPiBsaWtlIHdlIGRvbid0IG5lZWQgdGhpcy4KCldlbGwsIEkg
YWN0dWFsbHkgbWV0IHRoZToKCiAgICAgICAgICJVbmFibGUgdG8gZGV0ZWN0IGNhY2hlIGhpZXJh
cmNoeSBmb3IgQ1BVIDx4PiIKCndhcm5pbmcgaW4gdGhlIGRtZXNnLiBEbyB5b3Uga25vdyBhbnl0
aGluZyBhYm91dCBjYWNoZSBJRCByZWdpc3RlcnM/CgpUaGVyZSBpcyBzb21lIGtpbmQgb2YgImkt
Y2FjaGUiIGluZm9zIFtUUk0gcGFnZSAzOTFdIGJ1dCBpdCBkb2Vzbid0CnNlZW0gZW5vdWdoIHRv
IGRlc2NyaWJlIHRoZSBjYWNoZSBoaWVyYXJjaHkuCgo+IAo+IEhlaWtvCj4gCj4gCj4gWzBdIGh0
dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gvMTEyNzk3MDUvCgpUaGFua3MsCk1pcXXD
qGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
