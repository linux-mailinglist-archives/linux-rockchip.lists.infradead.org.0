Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 508E6115583
	for <lists+linux-rockchip@lfdr.de>; Fri,  6 Dec 2019 17:35:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WjUWrk2byAcDKldgLBULmkWFZKg4HlXgNqJgyUriPQU=; b=eWfgs1cvCyS3xy
	kvnzLsupcLldD70b2/w4VgidxY70naSFNi4xKxi/7BoxT0AN58bODVVR59/SVwy8KkhvxiqmWHTVx
	bO7HiLtKj3MhR2DkygyZF7I8OR/z7pm/nYTHAKgXMKhvqmktRJoeGkveNlUgsmaXnesSyY0Sde7X/
	C0AolyCKlKVs30Rj6V0pb0YHPC0tiBdDJSEZpSbRCOs5rJ0LYcX1V1pR7R21rKRIqX9XJwznNnplT
	HeV0xHPZ6AAxKqOmea5DaWHxlksVTWr9M2wAOrOLSRDyVgoYqXPNsFGKaUYaDhisaZGHUy/nKn1Qw
	/3wX8BWIcp2LDkFag9Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idGZP-0000UX-Vi; Fri, 06 Dec 2019 16:35:07 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idGZM-0008DH-3P
 for linux-rockchip@lists.infradead.org; Fri, 06 Dec 2019 16:35:06 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 814C6C0009;
 Fri,  6 Dec 2019 16:34:54 +0000 (UTC)
Date: Fri, 6 Dec 2019 17:34:53 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Change RK809 PMIC interrupt polarity
Message-ID: <20191206173453.1b2f7844@xps13>
In-Reply-To: <1601413.9zADmrJRdp@phil>
References: <20191206154247.28057-1-miquel.raynal@bootlin.com>
 <3285991.EbEXlA3CnX@phil> <20191206165250.5877dec8@xps13>
 <1601413.9zADmrJRdp@phil>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_083504_306876_BB98B9BB 
X-CRM114-Status: GOOD (  18.51  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgSGVpa28sCgpIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPiB3cm90ZSBvbiBGcmks
IDA2IERlYyAyMDE5IDE3OjAxOjU4CiswMTAwOgoKPiBBbSBGcmVpdGFnLCA2LiBEZXplbWJlciAy
MDE5LCAxNjo1Mjo1MCBDRVQgc2NocmllYiBNaXF1ZWwgUmF5bmFsOgo+ID4gSGkgSGVpa28sCj4g
PiAKPiA+IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+IHdyb3RlIG9uIEZyaSwgMDYg
RGVjIDIwMTkgMTY6NDg6MDAKPiA+ICswMTAwOgo+ID4gICAKPiA+ID4gSGkgTWlxdWVsLAo+ID4g
PiAKPiA+ID4gQW0gRnJlaXRhZywgNi4gRGV6ZW1iZXIgMjAxOSwgMTY6NDI6NDcgQ0VUIHNjaHJp
ZWIgTWlxdWVsIFJheW5hbDogIAo+ID4gPiA+IFBNSUMgaW50ZXJydXB0IGNhbiBiZSBhY3RpdmUg
aGlnaCBvciBhY3RpdmUgbG93IGRlcGVuZGluZyBvbiBCSVQoMSkgb2YKPiA+ID4gPiB0aGUgR1BJ
T19JTlRfQ0ZHIHBpbi4gVGhlIGRlZmF1bHQgaXMgMHgxLCB3aGljaCBtZWFucyBhY3RpdmUKPiA+
ID4gPiBoaWdoLiBDaGFuZ2UgdGhlIHBvbGFyaXR5IGluIHRoZSBkZXZpY2UgdHJlZSB0byByZWZs
ZWN0IHRoZSBkZWZhdWx0Cj4gPiA+ID4gc3RhdGUuCj4gPiA+ID4gCj4gPiA+ID4gV2l0aG91dCB0
aGlzIGFuZCB3aXRoIHRoZSBjdXJyZW50IGNvZGUgYmFzZSwgdGhlIGludGVycnVwdCBuZXZlciBz
dG9wcwo+ID4gPiA+IHRyaWdnZXJpbmcgd2hpbGUgdGhlIE1GRCBkcml2ZXIgZG9lcyBub3Qgc2Vl
IGFueXRoaW5nIHRvCj4gPiA+ID4gY2hlY2svY2xlYXIvbWFzayBzbyBhZnRlciAxMDAwMDAgc3B1
cmlvdXMgSVJRcywgdGhlIGtlcm5lbCBzaW1wbHkKPiA+ID4gPiBkZXNhY3RpdmF0ZXMgdGhlIGlu
dGVycnVwdDoKPiA+ID4gPiAKPiA+ID4gPiAgICAgICAgIGlycSAzNjogbm9ib2R5IGNhcmVkICh0
cnkgYm9vdGluZyB3aXRoIHRoZSAiaXJxcG9sbCIgb3B0aW9uKQo+ID4gPiA+ICAgICAgICAgWy4u
Ll0KPiA+ID4gPiAgICAgICAgIGhhbmRsZXJzOgo+ID4gPiA+ICAgICAgICAgWzwoX19fX3B0cnZh
bF9fX18pPl0gaXJxX2RlZmF1bHRfcHJpbWFyeV9oYW5kbGVyIHRocmVhZGVkCj4gPiA+ID4gCVs8
KF9fX19wdHJ2YWxfX19fKT5dIHJlZ21hcF9pcnFfdGhyZWFkCj4gPiA+ID4gICAgICAgICBEaXNh
YmxpbmcgSVJRICMzNgo+ID4gPiA+IAo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IE1pcXVlbCBSYXlu
YWwgPG1pcXVlbC5yYXluYWxAYm9vdGxpbi5jb20+ICAgIAo+ID4gPiAKPiA+ID4gKmNvdWdocyBz
bGlnaHRseSoKPiA+ID4gCj4gPiA+IG1mZDogcms4MDg6IFNldCBSSzgxNyBpbnRlcnJ1cHQgcG9s
YXJpdHkgdG8gbG93Cj4gPiA+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9r
ZXJuZWwvZ2l0L2xlZS9tZmQuZ2l0L2NvbW1pdC9kcml2ZXJzL21mZC9yazgwOC5jP2g9Zm9yLW1m
ZC1uZXh0JmlkPWRiZDE2ZWY1MzQ4NzA4NDgxNmEyMGY2NjI0MjNhYjU0M2E3NWZjODMKPiA+ID4g
Cj4gPiA+IFNob3VsZCBiZSBpbiB0aGUgY3VycmVudCBtZXJnZSB3aW5kb3cgYWxyZWFkeSBJIGd1
ZXNzIDstKSAgCj4gPiAKPiA+IFRoaXMgdGltZSBJIHN3ZWFyIEkgY2hlY2tlZCB5b3VyIHRyZWUu
IEJ1dCB0aGlzIHRpbWUgd2UgZGlkIG5vdCBlbmRlZAo+ID4gd2l0aCB0aGUgc2FtZSBmaXggc28g
SSBtaXNzZWQgdGhpcyBvbmUgKmFnYWluKiA6KSAgCj4gCj4gTm8gd29ycmllcyAuLi4gSSBndWVz
cyBJIHNob3VsZCBjaGVjayB3aGVyZSBJIGhpZCBhZGRpdGlvbmFsIHBhdGNoZXMgOy0pCj4gCj4g
U28gcmlnaHQgbm93IHB4MzAgc3R1ZmYgaXMgaW4gdGhlIHRyZWVzOgo+IC0gbWluZQo+IC0gbWZk
Cj4gLSBwaHkgKGZpcnN0IHJvdW5kIG9mIGRzaSBwaHksIHJlZmluZW1lbnQgcGVuZGluZyBvbiB0
aGUgbGlzdCkKPiAtIG52bWVtIChmb3IgdGhlIG90cCBjb250cm9sbGVyKQo+IC0gZHJtIChkcm0v
cm9ja2NoaXA6IHZvcDogYWRkIHRoZSBkZWZpbml0aW9uIG9mIGRjbGtfcG9sKQo+IC0gY2xrCj4g
Cj4gYW5kIHBlbmRpbmcgb24gbGlzdHM6Cj4gLSBkcm0gKGRzaSBzdXBwb3J0ICsgdGltaW5ncykK
PiAtIHBoeSAocmVmaW5lbWVudCBhcyBtZW50aW9uZWQgYWJvdmUpCj4gCj4gbm90IHN1Ym1pdHRl
ZCB5ZXQgYnV0IHBsYW5uaW5nIHRvIGdldCB0aGlzIGRvbmUgdGhpcyB3ZWVrZW5kOgo+IC0gcGFu
ZWwgZHJpdmVyIGZvciBweDMwLWV2Ygo+IC0gZHNpIGRldmljZXRyZWUgc3R1ZmYKClRoYW5rIHlv
dSB2ZXJ5IG11Y2ggZm9yIHRoZSBkZXRhaWxlZCBsaXN0ISBJIHdpbGwgc29vbiB3b3JrIG9uIHRo
ZQpQTUlDIGF1ZGlvIHN1cHBvcnQgYW5kIG9uIHNlY3VyZSBib290LCBkbyBub3QgaGVzaXRhdGUg
dG8gcGluZyBtZSBpZgp5b3Ugc2VlIHRoaXMga2luZCBvZiB3b3JrIGNvbWluZyBvbiB0aGUgbWFp
bGluZyBsaXN0IQoKVGhhbmtzLApNaXF1w6hsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
