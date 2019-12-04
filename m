Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18504112EDF
	for <lists+linux-rockchip@lfdr.de>; Wed,  4 Dec 2019 16:44:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6nFz3phINXMmuKvadzjxgwmyFd2xj6Rh+maRgJKjEew=; b=BKRDnl7tnzncCm
	eP1MwYaqqtL26w3HqT+zjJeK31+eafdTPWgx6oR7jy5F5akz0ENsjaaeVbwYfbqRWwNjRpbSYULOR
	teSq8b4t5Ys3xjlc1PxXfW3ItK5QbZ3acVdxkck0Em/WsrVKTwTMp/Ye39JXtrMeJk8hOOOFTq/Ua
	q3yVln4M+D9t5w4aE1eIb9SojFKANgEZ1c4pBX7fL3SCf07PCvcAm9m/YgLfmqndtXdLhNXlMpXQN
	9PX+YfewcH2SNji+N36RajCLxx4Ay5nc2Qx9ILQkWIq/RSwVep/WCm5H9nKJQVNwSD6VS/QfhBN++
	7kwJX1umZlgK4iQJUh8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icWpi-0001Sj-5S; Wed, 04 Dec 2019 15:44:54 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icWpY-0001J9-9b
 for linux-rockchip@lists.infradead.org; Wed, 04 Dec 2019 15:44:47 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 16C7F20000E;
 Wed,  4 Dec 2019 15:44:36 +0000 (UTC)
Date: Wed, 4 Dec 2019 16:44:35 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Describe PX30 caches
Message-ID: <20191204164435.2dd1b4fe@xps13>
In-Reply-To: <CAMdYzYrEmTqvJ6m54EADxLDf70duCtdz3pesV3EZmt67=cbs5g@mail.gmail.com>
References: <20191204103940.22050-1-miquel.raynal@bootlin.com>
 <CAMdYzYrEmTqvJ6m54EADxLDf70duCtdz3pesV3EZmt67=cbs5g@mail.gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_074444_472318_B92D4744 
X-CRM114-Status: GOOD (  16.57  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.178.232 listed in wl.mailspike.net]
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
IDQgRGVjIDIwMTkgMTA6MzY6MTkKLTA1MDA6Cgo+IE9uIFdlZCwgRGVjIDQsIDIwMTkgYXQgNTo0
MCBBTSBNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPiB3cm90ZToKPiA+
Cj4gPiBQWDMwIFNvQ3MgZmVhdHVyZSA0IENvcnRleC1BMzUgQ1BVcyB3aXRoIGVhY2ggb2YgdGhl
bSBhIEwxIGRhdGEgYW5kCj4gPiBpbnN0cnVjdGlvbiBjYWNoZS4gQm90aCBhcmUgMzJraUIgd2lk
ZSAoUFgzMCBUUk0pIGFuZCBtYWRlIG9mIDY0LWJpdAo+ID4gbGluZXMgKEFSTSBDb3J0ZXgtQTM1
IG1hbnVhbCkuIEktY2FjaGUgaXMgMi13YXkgc2V0IGFzc29jaWF0aXZlIChBUk0KPiA+IENvcnRl
eC1BMzUgbWFudWFsKSwgRC1jYWNoZSBpcyA0LXdheSBzZXQgYXNzb2NpYXRpdmUgKEFSTQo+ID4g
Q29ydGV4LUEzNW1hbnVhbCkuCj4gPgo+ID4gQW4gTDIgY2FjaGUgaXMgcGxhY2VkIGFmdGVyIHRo
ZXNlIDQgTDEgY2FjaGVzIChQWDMwIFRSTSksIGlzIDI1NmtpQgo+ID4gd2lkZSAoUFgzMCBUUk0p
IGFuZCBtYWRlIG9mIDY0LWJpdCBsaW5lcyAoQVJNIENvcnRleC1BMzUgbWFudWFsKSBhbmQKPiA+
IGlzIDgtd2F5IHNldCBhc3NvY2lhdGl2ZSAoQVJNIENvcnRleC1BMzUgbWFudWFsKS4KPiA+Cj4g
PiBEZXNjcmliZSBhbGwgb2YgdGhlbSBpbiB0aGUgUFgzMCBEVFNJLgo+ID4KPiA+IFNpZ25lZC1v
ZmYtYnk6IE1pcXVlbCBSYXluYWwgPG1pcXVlbC5yYXluYWxAYm9vdGxpbi5jb20+Cj4gPiAtLS0K
PiA+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3B4MzAuZHRzaSB8IDM1ICsrKysrKysr
KysrKysrKysrKysrKysrKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDM1IGluc2VydGlvbnMoKykK
PiA+Cj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9weDMwLmR0
c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3B4MzAuZHRzaQo+ID4gaW5kZXggMWZk
MTJiZDA5ZTgzLi4wZTEwYTIyNGE4NGIgMTAwNjQ0Cj4gPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3B4MzAuZHRzaQo+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9weDMwLmR0c2kKPiA+IEBAIC00OCw2ICs0OCwxMyBAQAo+ID4gICAgICAgICAgICAgICAg
ICAgICAgICAgY3B1LWlkbGUtc3RhdGVzID0gPCZDUFVfU0xFRVAgJkNMVVNURVJfU0xFRVA+Owo+
ID4gICAgICAgICAgICAgICAgICAgICAgICAgZHluYW1pYy1wb3dlci1jb2VmZmljaWVudCA9IDw5
MD47Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgICBvcGVyYXRpbmctcG9pbnRzLXYyID0gPCZj
cHUwX29wcF90YWJsZT47Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICBpLWNhY2hlLXNpemUg
PSA8MHg4MDAwPjsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGktY2FjaGUtbGluZS1zaXpl
ID0gPDY0PjsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGktY2FjaGUtc2V0cyA9IDwyNTY+
Owo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgZC1jYWNoZS1zaXplID0gPDB4ODAwMD47Cj4g
PiArICAgICAgICAgICAgICAgICAgICAgICBkLWNhY2hlLWxpbmUtc2l6ZSA9IDw2ND47Cj4gPiAr
ICAgICAgICAgICAgICAgICAgICAgICBkLWNhY2hlLXNldHMgPSA8MTI4PjsKPiA+ICsgICAgICAg
ICAgICAgICAgICAgICAgIG5leHQtbGV2ZWwtY2FjaGUgPSA8JmwyPjsgIAo+IAo+IElmIHRoZSBp
LWNhY2hlIGlzIDItd2F5IGFzc29jaWF0aXZlIGFuZCB0aGUgZC1jYWNoZSBpcyA0LXdheSwgd291
bGRuJ3QKPiB0aGF0IG1lYW4gdGhlc2UgdHdvIHZhbHVlcyBhcmUgYmFja3dhcmRzPwoKV2hpY2gg
dmFsdWUgYXJlIHlvdSByZWZlcnJpbmcgdG8/IERvIHlvdSBtZWFuIGNhY2hlLXNldHM/IFRoZSBm
b2xsb3dpbmcKY2FsY3VsYXRpb24gaXMgbXkgdW5kZXJzdGFuZGluZyBvZiB0aGUgc2l0dWF0aW9u
IGJ1dCBpdCBpcyB0aGUgZmlyc3QKdGltZSBJIGFtIGRvaW5nIGl0IHNvIEkgbWlnaHQgYmUgdG90
YWxseSB3cm9uZy4KCk15IHVuZGVyc3RhbmRpbmcgaXMgdGhhdCBpZiB0aGVyZSBhcmUgMzI3Njgg
Y2FjaGUgYnl0ZXMgbWFkZSBvZiA2NC1ieXRlCmxpbmVzLCBzbyB0aGVyZSBhcmUgNTEyIGxpbmVz
IGluIGJvdGggY2FzZXMuCgpUaGVuLCBpZiB0aGUgaW5zdHJ1Y3Rpb24gY2FjaGUgaXMgMi13YXkg
YXNzb2NpYXRpdmUsIGl0IG1lYW5zIHRoZXJlIGFyZQo1MTIgLyAyID0gMjU2IHNldHMuIEZvciB0
aGUgZGF0YSBjYWNoZSAoNC13YXkpLCBpdCB3b3VsZCBiZSA1MTIgLyA0ID0KMTI4LiBBbSBJIHdy
b25nPwoKVGhhbmtzLApNaXF1w6hsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
