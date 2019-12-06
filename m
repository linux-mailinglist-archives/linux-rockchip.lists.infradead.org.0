Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A72981154A4
	for <lists+linux-rockchip@lfdr.de>; Fri,  6 Dec 2019 16:53:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EuwnQUeTxUHG++0CunooNgmEt/ypNp6J+cOSIgr8J/g=; b=uXqj8jmJnjRI97
	6KkzTqdl/F17OG2d3ZMEBIkbM+VURUC4+NuzKb3A8jNuu0B+fDpxNBMOSwGjo8b4yOTABlghlFX6K
	cLAll08px6IQT8hJXxaT+WLTlq9t7gHI/pM2NTTxojABDUBg1jP+fJJ61H4CYxPNwVRA/qqCLcV7L
	qGzsEmKVyNvEu0IRE1Umf91oKxVNnz5SJwKJWYIlghnbDmM9tjAv78r5K64iCeB4+hQ13QvWp/LU6
	19eqJVl207bwSPW5l0IilcFWYnfJ5Qs7F69pO3XhZzti9Dr92toI3H1cRlbsRP3WO+GUl9lB92D/B
	G73jSgP9AnKb/FDouiGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idFuj-0000mN-Nb; Fri, 06 Dec 2019 15:53:05 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idFug-0000m1-Vv
 for linux-rockchip@lists.infradead.org; Fri, 06 Dec 2019 15:53:04 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 15AF0E0015;
 Fri,  6 Dec 2019 15:52:51 +0000 (UTC)
Date: Fri, 6 Dec 2019 16:52:50 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Change RK809 PMIC interrupt polarity
Message-ID: <20191206165250.5877dec8@xps13>
In-Reply-To: <3285991.EbEXlA3CnX@phil>
References: <20191206154247.28057-1-miquel.raynal@bootlin.com>
 <3285991.EbEXlA3CnX@phil>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_075303_163777_52CD1750 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.196 listed in wl.mailspike.net]
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
IDA2IERlYyAyMDE5IDE2OjQ4OjAwCiswMTAwOgoKPiBIaSBNaXF1ZWwsCj4gCj4gQW0gRnJlaXRh
ZywgNi4gRGV6ZW1iZXIgMjAxOSwgMTY6NDI6NDcgQ0VUIHNjaHJpZWIgTWlxdWVsIFJheW5hbDoK
PiA+IFBNSUMgaW50ZXJydXB0IGNhbiBiZSBhY3RpdmUgaGlnaCBvciBhY3RpdmUgbG93IGRlcGVu
ZGluZyBvbiBCSVQoMSkgb2YKPiA+IHRoZSBHUElPX0lOVF9DRkcgcGluLiBUaGUgZGVmYXVsdCBp
cyAweDEsIHdoaWNoIG1lYW5zIGFjdGl2ZQo+ID4gaGlnaC4gQ2hhbmdlIHRoZSBwb2xhcml0eSBp
biB0aGUgZGV2aWNlIHRyZWUgdG8gcmVmbGVjdCB0aGUgZGVmYXVsdAo+ID4gc3RhdGUuCj4gPiAK
PiA+IFdpdGhvdXQgdGhpcyBhbmQgd2l0aCB0aGUgY3VycmVudCBjb2RlIGJhc2UsIHRoZSBpbnRl
cnJ1cHQgbmV2ZXIgc3RvcHMKPiA+IHRyaWdnZXJpbmcgd2hpbGUgdGhlIE1GRCBkcml2ZXIgZG9l
cyBub3Qgc2VlIGFueXRoaW5nIHRvCj4gPiBjaGVjay9jbGVhci9tYXNrIHNvIGFmdGVyIDEwMDAw
MCBzcHVyaW91cyBJUlFzLCB0aGUga2VybmVsIHNpbXBseQo+ID4gZGVzYWN0aXZhdGVzIHRoZSBp
bnRlcnJ1cHQ6Cj4gPiAKPiA+ICAgICAgICAgaXJxIDM2OiBub2JvZHkgY2FyZWQgKHRyeSBib290
aW5nIHdpdGggdGhlICJpcnFwb2xsIiBvcHRpb24pCj4gPiAgICAgICAgIFsuLi5dCj4gPiAgICAg
ICAgIGhhbmRsZXJzOgo+ID4gICAgICAgICBbPChfX19fcHRydmFsX19fXyk+XSBpcnFfZGVmYXVs
dF9wcmltYXJ5X2hhbmRsZXIgdGhyZWFkZWQKPiA+IAlbPChfX19fcHRydmFsX19fXyk+XSByZWdt
YXBfaXJxX3RocmVhZAo+ID4gICAgICAgICBEaXNhYmxpbmcgSVJRICMzNgo+ID4gCj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPiAgCj4g
Cj4gKmNvdWdocyBzbGlnaHRseSoKPiAKPiBtZmQ6IHJrODA4OiBTZXQgUks4MTcgaW50ZXJydXB0
IHBvbGFyaXR5IHRvIGxvdwo+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9r
ZXJuZWwvZ2l0L2xlZS9tZmQuZ2l0L2NvbW1pdC9kcml2ZXJzL21mZC9yazgwOC5jP2g9Zm9yLW1m
ZC1uZXh0JmlkPWRiZDE2ZWY1MzQ4NzA4NDgxNmEyMGY2NjI0MjNhYjU0M2E3NWZjODMKPiAKPiBT
aG91bGQgYmUgaW4gdGhlIGN1cnJlbnQgbWVyZ2Ugd2luZG93IGFscmVhZHkgSSBndWVzcyA7LSkK
ClRoaXMgdGltZSBJIHN3ZWFyIEkgY2hlY2tlZCB5b3VyIHRyZWUuIEJ1dCB0aGlzIHRpbWUgd2Ug
ZGlkIG5vdCBlbmRlZAp3aXRoIHRoZSBzYW1lIGZpeCBzbyBJIG1pc3NlZCB0aGlzIG9uZSAqYWdh
aW4qIDopCgo+IAo+IEhhdmluZyB0aGlzIGNvbnNpc3RlbnQgb3ZlciBhbGwgcms4eHggc2VlbWVk
IG5pY2VyLgoKSSdtIGZpbmUgd2l0aCB0aGlzIGFwcHJvYWNoIHRvby4KClRoYW5rcywKTWlxdcOo
bAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
