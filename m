Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B59841130A0
	for <lists+linux-rockchip@lfdr.de>; Wed,  4 Dec 2019 18:17:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dkXDMECrgcLvNYLcMn7NSfIs6UFAryS2sbRAre6Fy0Q=; b=LQmiPmwjtaEl7D
	ELrYbGppnf49no1LSjOpbUw3OK35H/Y1iwTUJtfh/Ojs5eZJ5izIM5NwjphPUGME8XYPCCRiyzU00
	OfXkD2/gsq2XKJsuI5endFkejF02e2qvl6WiOEA3ZJmLpB2PjdhTKyuxibDvbxCe9SN93PNW8XlPG
	V7KUWOTQDgU2/xBRoCw5OmpPLzkqX8/STxGzXfn4C8H8BnS/Lj4/YlOaipp+gh+fQbCC95CdCGHFb
	jqS5LJZeUw9D7s+057HJuQl60uYD6zUTVtcIlzWGq58pxbE9l/JpH6jyec3dqv6+Id+invR2xOcDE
	Rrsz67pBskgdCLNWJoVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icYH9-0003Z9-Nh; Wed, 04 Dec 2019 17:17:19 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icYH6-0003Yg-9S
 for linux-rockchip@lists.infradead.org; Wed, 04 Dec 2019 17:17:18 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id C0461240006;
 Wed,  4 Dec 2019 17:17:07 +0000 (UTC)
Date: Wed, 4 Dec 2019 18:17:06 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Describe PX30 caches
Message-ID: <20191204181706.0421c4f7@xps13>
In-Reply-To: <CAMdYzYoUo_M+qEp3HRsEGrGJDa73JACfH38HG7aY6C8NrQi=5A@mail.gmail.com>
References: <20191204103940.22050-1-miquel.raynal@bootlin.com>
 <CAMdYzYrEmTqvJ6m54EADxLDf70duCtdz3pesV3EZmt67=cbs5g@mail.gmail.com>
 <20191204164435.2dd1b4fe@xps13>
 <CAMdYzYoUo_M+qEp3HRsEGrGJDa73JACfH38HG7aY6C8NrQi=5A@mail.gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_091716_605868_5E47077B 
X-CRM114-Status: GOOD (  21.19  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Heiko Stuebner <heiko@sntech.de>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgUGV0ZXIsCgpQZXRlciBHZWlzIDxwZ3dpcGVvdXRAZ21haWwuY29tPiB3cm90ZSBvbiBXZWQs
IDQgRGVjIDIwMTkgMTI6MTQ6NDAKLTA1MDA6Cgo+IE9uIFdlZCwgRGVjIDQsIDIwMTkgYXQgMTA6
NDQgQU0gTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBib290bGluLmNvbT4gd3JvdGU6Cj4g
Pgo+ID4gSGkgUGV0ZXIsCj4gPgo+ID4gUGV0ZXIgR2VpcyA8cGd3aXBlb3V0QGdtYWlsLmNvbT4g
d3JvdGUgb24gV2VkLCA0IERlYyAyMDE5IDEwOjM2OjE5Cj4gPiAtMDUwMDoKPiA+ICAKPiA+ID4g
T24gV2VkLCBEZWMgNCwgMjAxOSBhdCA1OjQwIEFNIE1pcXVlbCBSYXluYWwgPG1pcXVlbC5yYXlu
YWxAYm9vdGxpbi5jb20+IHdyb3RlOiAgCj4gPiA+ID4KPiA+ID4gPiBQWDMwIFNvQ3MgZmVhdHVy
ZSA0IENvcnRleC1BMzUgQ1BVcyB3aXRoIGVhY2ggb2YgdGhlbSBhIEwxIGRhdGEgYW5kCj4gPiA+
ID4gaW5zdHJ1Y3Rpb24gY2FjaGUuIEJvdGggYXJlIDMya2lCIHdpZGUgKFBYMzAgVFJNKSBhbmQg
bWFkZSBvZiA2NC1iaXQKPiA+ID4gPiBsaW5lcyAoQVJNIENvcnRleC1BMzUgbWFudWFsKS4gSS1j
YWNoZSBpcyAyLXdheSBzZXQgYXNzb2NpYXRpdmUgKEFSTQo+ID4gPiA+IENvcnRleC1BMzUgbWFu
dWFsKSwgRC1jYWNoZSBpcyA0LXdheSBzZXQgYXNzb2NpYXRpdmUgKEFSTQo+ID4gPiA+IENvcnRl
eC1BMzVtYW51YWwpLgo+ID4gPiA+Cj4gPiA+ID4gQW4gTDIgY2FjaGUgaXMgcGxhY2VkIGFmdGVy
IHRoZXNlIDQgTDEgY2FjaGVzIChQWDMwIFRSTSksIGlzIDI1NmtpQgo+ID4gPiA+IHdpZGUgKFBY
MzAgVFJNKSBhbmQgbWFkZSBvZiA2NC1iaXQgbGluZXMgKEFSTSBDb3J0ZXgtQTM1IG1hbnVhbCkg
YW5kCj4gPiA+ID4gaXMgOC13YXkgc2V0IGFzc29jaWF0aXZlIChBUk0gQ29ydGV4LUEzNSBtYW51
YWwpLgo+ID4gPiA+Cj4gPiA+ID4gRGVzY3JpYmUgYWxsIG9mIHRoZW0gaW4gdGhlIFBYMzAgRFRT
SS4KPiA+ID4gPgo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IE1pcXVlbCBSYXluYWwgPG1pcXVlbC5y
YXluYWxAYm9vdGxpbi5jb20+Cj4gPiA+ID4gLS0tCj4gPiA+ID4gIGFyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcHgzMC5kdHNpIHwgMzUgKysrKysrKysrKysrKysrKysrKysrKysrKysKPiA+
ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDM1IGluc2VydGlvbnMoKykKPiA+ID4gPgo+ID4gPiA+IGRp
ZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3B4MzAuZHRzaSBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcHgzMC5kdHNpCj4gPiA+ID4gaW5kZXggMWZkMTJiZDA5
ZTgzLi4wZTEwYTIyNGE4NGIgMTAwNjQ0Cj4gPiA+ID4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9weDMwLmR0c2kKPiA+ID4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3B4MzAuZHRzaQo+ID4gPiA+IEBAIC00OCw2ICs0OCwxMyBAQAo+ID4gPiA+ICAgICAg
ICAgICAgICAgICAgICAgICAgIGNwdS1pZGxlLXN0YXRlcyA9IDwmQ1BVX1NMRUVQICZDTFVTVEVS
X1NMRUVQPjsKPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICBkeW5hbWljLXBvd2VyLWNv
ZWZmaWNpZW50ID0gPDkwPjsKPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICBvcGVyYXRp
bmctcG9pbnRzLXYyID0gPCZjcHUwX29wcF90YWJsZT47Cj4gPiA+ID4gKyAgICAgICAgICAgICAg
ICAgICAgICAgaS1jYWNoZS1zaXplID0gPDB4ODAwMD47Cj4gPiA+ID4gKyAgICAgICAgICAgICAg
ICAgICAgICAgaS1jYWNoZS1saW5lLXNpemUgPSA8NjQ+Owo+ID4gPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgIGktY2FjaGUtc2V0cyA9IDwyNTY+Owo+ID4gPiA+ICsgICAgICAgICAgICAgICAg
ICAgICAgIGQtY2FjaGUtc2l6ZSA9IDwweDgwMDA+Owo+ID4gPiA+ICsgICAgICAgICAgICAgICAg
ICAgICAgIGQtY2FjaGUtbGluZS1zaXplID0gPDY0PjsKPiA+ID4gPiArICAgICAgICAgICAgICAg
ICAgICAgICBkLWNhY2hlLXNldHMgPSA8MTI4PjsKPiA+ID4gPiArICAgICAgICAgICAgICAgICAg
ICAgICBuZXh0LWxldmVsLWNhY2hlID0gPCZsMj47ICAKPiA+ID4KPiA+ID4gSWYgdGhlIGktY2Fj
aGUgaXMgMi13YXkgYXNzb2NpYXRpdmUgYW5kIHRoZSBkLWNhY2hlIGlzIDQtd2F5LCB3b3VsZG4n
dAo+ID4gPiB0aGF0IG1lYW4gdGhlc2UgdHdvIHZhbHVlcyBhcmUgYmFja3dhcmRzPyAgCj4gPgo+
ID4gV2hpY2ggdmFsdWUgYXJlIHlvdSByZWZlcnJpbmcgdG8/IERvIHlvdSBtZWFuIGNhY2hlLXNl
dHM/IFRoZSBmb2xsb3dpbmcKPiA+IGNhbGN1bGF0aW9uIGlzIG15IHVuZGVyc3RhbmRpbmcgb2Yg
dGhlIHNpdHVhdGlvbiBidXQgaXQgaXMgdGhlIGZpcnN0Cj4gPiB0aW1lIEkgYW0gZG9pbmcgaXQg
c28gSSBtaWdodCBiZSB0b3RhbGx5IHdyb25nLgo+ID4KPiA+IE15IHVuZGVyc3RhbmRpbmcgaXMg
dGhhdCBpZiB0aGVyZSBhcmUgMzI3NjggY2FjaGUgYnl0ZXMgbWFkZSBvZiA2NC1ieXRlCj4gPiBs
aW5lcywgc28gdGhlcmUgYXJlIDUxMiBsaW5lcyBpbiBib3RoIGNhc2VzLgo+ID4KPiA+IFRoZW4s
IGlmIHRoZSBpbnN0cnVjdGlvbiBjYWNoZSBpcyAyLXdheSBhc3NvY2lhdGl2ZSwgaXQgbWVhbnMg
dGhlcmUgYXJlCj4gPiA1MTIgLyAyID0gMjU2IHNldHMuIEZvciB0aGUgZGF0YSBjYWNoZSAoNC13
YXkpLCBpdCB3b3VsZCBiZSA1MTIgLyA0ID0KPiA+IDEyOC4gQW0gSSB3cm9uZz8gIAo+IAo+IEFw
b2xvZ2llcywgeW91IGFyZSBjb3JyZWN0LCBpdCB3YXMgSSB3aG8gd2FzIG1pc3Rha2VuLgoKTm8g
cHJvYmxlbSwgSSB3YXMgbm90IDEwMCUgc3VyZSBlaXRoZXIuIFRoYW5rcyBmb3IgdGhlIHJldmll
dyBhbnl3YXkhCgpDaGVlcnMsCk1pcXXDqGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
