Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ABB3115648
	for <lists+linux-rockchip@lfdr.de>; Fri,  6 Dec 2019 18:16:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K0Eh6iQnTrbd/47SJsVrWJqGsGj2TbpYrNUj8bsI71w=; b=O+D8Vy+ZkNBCuz
	Hw9eSBs1zyzWpg0Irx//1RE9hoUGzRL/mot1HwVDYLc/Ho4Q8D9rChLm0f39K1DOmLnO1Y6tPzl/2
	UOOC8xwnr2hC1Uedf2h5wzcpI27Vll0fIkG0ObhFy/p1xgVIq/btmpU+T5xKyLjRebupY5wfuS8jO
	lwtdM6yqDFfqtrqZ+LJ6dgUSNVRokysX8qXqQ2wSzwNijN8NqQVLx/D3aovYONQvk8DgFrLqgCQ5n
	/y+BtJmH0aLL4+V9ytyTwM+rkGsUJShl+iqCE6d+LKFvTo7lznBRraZSRV0Zh5NOPnJwfC7UCbxXl
	Zn/uXS+YtHqans5spreg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idHDP-000232-9D; Fri, 06 Dec 2019 17:16:27 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idHDL-00022N-Mr
 for linux-rockchip@lists.infradead.org; Fri, 06 Dec 2019 17:16:25 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 1BE59C0002;
 Fri,  6 Dec 2019 17:16:19 +0000 (UTC)
Date: Fri, 6 Dec 2019 18:16:18 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Change RK809 PMIC interrupt polarity
Message-ID: <20191206181618.2dc472cb@xps13>
In-Reply-To: <22838931.IDdASOIBor@phil>
References: <20191206154247.28057-1-miquel.raynal@bootlin.com>
 <1601413.9zADmrJRdp@phil> <20191206173453.1b2f7844@xps13>
 <22838931.IDdASOIBor@phil>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_091624_019169_F5D771C9 
X-CRM114-Status: GOOD (  20.52  )
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
IDA2IERlYyAyMDE5IDE4OjA5OjAzCiswMTAwOgoKPiBIaSBNaXF1ZWwsCj4gCj4gQW0gRnJlaXRh
ZywgNi4gRGV6ZW1iZXIgMjAxOSwgMTc6MzQ6NTMgQ0VUIHNjaHJpZWIgTWlxdWVsIFJheW5hbDoK
PiA+IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+IHdyb3RlIG9uIEZyaSwgMDYgRGVj
IDIwMTkgMTc6MDE6NTgKPiA+ICswMTAwOiAgCj4gPiA+IEFtIEZyZWl0YWcsIDYuIERlemVtYmVy
IDIwMTksIDE2OjUyOjUwIENFVCBzY2hyaWViIE1pcXVlbCBSYXluYWw6ICAKPiA+ID4gPiBIZWlr
byBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPiB3cm90ZSBvbiBGcmksIDA2IERlYyAyMDE5IDE2
OjQ4OjAwCj4gPiA+ID4gKzAxMDA6ICAKPiA+ID4gPiA+IEFtIEZyZWl0YWcsIDYuIERlemVtYmVy
IDIwMTksIDE2OjQyOjQ3IENFVCBzY2hyaWViIE1pcXVlbCBSYXluYWw6ICAgIAo+ID4gPiA+ID4g
PiBQTUlDIGludGVycnVwdCBjYW4gYmUgYWN0aXZlIGhpZ2ggb3IgYWN0aXZlIGxvdyBkZXBlbmRp
bmcgb24gQklUKDEpIG9mCj4gPiA+ID4gPiA+IHRoZSBHUElPX0lOVF9DRkcgcGluLiBUaGUgZGVm
YXVsdCBpcyAweDEsIHdoaWNoIG1lYW5zIGFjdGl2ZQo+ID4gPiA+ID4gPiBoaWdoLiBDaGFuZ2Ug
dGhlIHBvbGFyaXR5IGluIHRoZSBkZXZpY2UgdHJlZSB0byByZWZsZWN0IHRoZSBkZWZhdWx0Cj4g
PiA+ID4gPiA+IHN0YXRlLgo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gV2l0aG91dCB0aGlzIGFu
ZCB3aXRoIHRoZSBjdXJyZW50IGNvZGUgYmFzZSwgdGhlIGludGVycnVwdCBuZXZlciBzdG9wcwo+
ID4gPiA+ID4gPiB0cmlnZ2VyaW5nIHdoaWxlIHRoZSBNRkQgZHJpdmVyIGRvZXMgbm90IHNlZSBh
bnl0aGluZyB0bwo+ID4gPiA+ID4gPiBjaGVjay9jbGVhci9tYXNrIHNvIGFmdGVyIDEwMDAwMCBz
cHVyaW91cyBJUlFzLCB0aGUga2VybmVsIHNpbXBseQo+ID4gPiA+ID4gPiBkZXNhY3RpdmF0ZXMg
dGhlIGludGVycnVwdDoKPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ICAgICAgICAgaXJxIDM2OiBu
b2JvZHkgY2FyZWQgKHRyeSBib290aW5nIHdpdGggdGhlICJpcnFwb2xsIiBvcHRpb24pCj4gPiA+
ID4gPiA+ICAgICAgICAgWy4uLl0KPiA+ID4gPiA+ID4gICAgICAgICBoYW5kbGVyczoKPiA+ID4g
PiA+ID4gICAgICAgICBbPChfX19fcHRydmFsX19fXyk+XSBpcnFfZGVmYXVsdF9wcmltYXJ5X2hh
bmRsZXIgdGhyZWFkZWQKPiA+ID4gPiA+ID4gCVs8KF9fX19wdHJ2YWxfX19fKT5dIHJlZ21hcF9p
cnFfdGhyZWFkCj4gPiA+ID4gPiA+ICAgICAgICAgRGlzYWJsaW5nIElSUSAjMzYKPiA+ID4gPiA+
ID4gCj4gPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IE1pcXVlbCBSYXluYWwgPG1pcXVlbC5yYXlu
YWxAYm9vdGxpbi5jb20+ICAgICAgCj4gPiA+ID4gPiAKPiA+ID4gPiA+ICpjb3VnaHMgc2xpZ2h0
bHkqCj4gPiA+ID4gPiAKPiA+ID4gPiA+IG1mZDogcms4MDg6IFNldCBSSzgxNyBpbnRlcnJ1cHQg
cG9sYXJpdHkgdG8gbG93Cj4gPiA+ID4gPiBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20v
bGludXgva2VybmVsL2dpdC9sZWUvbWZkLmdpdC9jb21taXQvZHJpdmVycy9tZmQvcms4MDguYz9o
PWZvci1tZmQtbmV4dCZpZD1kYmQxNmVmNTM0ODcwODQ4MTZhMjBmNjYyNDIzYWI1NDNhNzVmYzgz
Cj4gPiA+ID4gPiAKPiA+ID4gPiA+IFNob3VsZCBiZSBpbiB0aGUgY3VycmVudCBtZXJnZSB3aW5k
b3cgYWxyZWFkeSBJIGd1ZXNzIDstKSAgICAKPiA+ID4gPiAKPiA+ID4gPiBUaGlzIHRpbWUgSSBz
d2VhciBJIGNoZWNrZWQgeW91ciB0cmVlLiBCdXQgdGhpcyB0aW1lIHdlIGRpZCBub3QgZW5kZWQK
PiA+ID4gPiB3aXRoIHRoZSBzYW1lIGZpeCBzbyBJIG1pc3NlZCB0aGlzIG9uZSAqYWdhaW4qIDop
ICAgIAo+ID4gPiAKPiA+ID4gTm8gd29ycmllcyAuLi4gSSBndWVzcyBJIHNob3VsZCBjaGVjayB3
aGVyZSBJIGhpZCBhZGRpdGlvbmFsIHBhdGNoZXMgOy0pCj4gPiA+IAo+ID4gPiBTbyByaWdodCBu
b3cgcHgzMCBzdHVmZiBpcyBpbiB0aGUgdHJlZXM6Cj4gPiA+IC0gbWluZQo+ID4gPiAtIG1mZAo+
ID4gPiAtIHBoeSAoZmlyc3Qgcm91bmQgb2YgZHNpIHBoeSwgcmVmaW5lbWVudCBwZW5kaW5nIG9u
IHRoZSBsaXN0KQo+ID4gPiAtIG52bWVtIChmb3IgdGhlIG90cCBjb250cm9sbGVyKQo+ID4gPiAt
IGRybSAoZHJtL3JvY2tjaGlwOiB2b3A6IGFkZCB0aGUgZGVmaW5pdGlvbiBvZiBkY2xrX3BvbCkK
PiA+ID4gLSBjbGsKPiA+ID4gCj4gPiA+IGFuZCBwZW5kaW5nIG9uIGxpc3RzOgo+ID4gPiAtIGRy
bSAoZHNpIHN1cHBvcnQgKyB0aW1pbmdzKQo+ID4gPiAtIHBoeSAocmVmaW5lbWVudCBhcyBtZW50
aW9uZWQgYWJvdmUpCj4gPiA+IAo+ID4gPiBub3Qgc3VibWl0dGVkIHlldCBidXQgcGxhbm5pbmcg
dG8gZ2V0IHRoaXMgZG9uZSB0aGlzIHdlZWtlbmQ6Cj4gPiA+IC0gcGFuZWwgZHJpdmVyIGZvciBw
eDMwLWV2Ygo+ID4gPiAtIGRzaSBkZXZpY2V0cmVlIHN0dWZmICAKPiA+IAo+ID4gVGhhbmsgeW91
IHZlcnkgbXVjaCBmb3IgdGhlIGRldGFpbGVkIGxpc3QhIEkgd2lsbCBzb29uIHdvcmsgb24gdGhl
Cj4gPiBQTUlDIGF1ZGlvIHN1cHBvcnQgYW5kIG9uIHNlY3VyZSBib290LCBkbyBub3QgaGVzaXRh
dGUgdG8gcGluZyBtZSBpZgo+ID4geW91IHNlZSB0aGlzIGtpbmQgb2Ygd29yayBjb21pbmcgb24g
dGhlIG1haWxpbmcgbGlzdCEgIAo+IAo+IEkgdGhpbmsgaXQncyBvbmx5IHVzICh5b3UsIFBhdWwg
YW5kIG1lKSB3b3JraW5nIG9uIHB4MzAgbWFpbmxpbmUgc3R1ZmYsCj4gcmlnaHQgbm93IHNvIGl0
J3Mgb25seSB1cyB0aGF0IHNob3VsZCBwcm9iYWJseSBjb29yZGluYXRlIDotKQo+IAo+IFNlY3Vy
ZWJvb3QgYWxzbyBpcyBvZiBpbnRlcmVzdCB0byBteSBwcm9qZWN0LCBzbyBhIENjIHdvdWxkIGJl
IGFwcHJlY2lhdGVkIDstKQo+IAoKU3VyZSEgSXQncyBvbiBteSBEZWNlbWJlci9KYW51YXJ5IHRh
c2sgbGlzdC4KCkJUVywgdGhhbmtzIGZvciBhbGwgdGhlIHBhdGNoZXMgeW91IGFscmVhZHkgY29u
dHJpYnV0ZWQhCgpDaGVlcnMsCk1pcXXDqGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
