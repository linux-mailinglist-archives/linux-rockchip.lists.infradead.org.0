Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 697411130E5
	for <lists+linux-rockchip@lfdr.de>; Wed,  4 Dec 2019 18:37:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2dMpupAbdnQRd/3HX1z4V2lCAmNN64BgWWf5zEiGe5k=; b=BUTOOfI1tPec5a
	Yd+udh5vHNp+zpmfYv4DXka2FUtQm7DQTYsArXB9W9ilBCY+G0LVAsdCJOAVKqQmxaUiuUr1uXchD
	u6XtEOZQn0xdQ+Kkidl9IOe5wBFvuQBqZAXVkU4pMxUFkYtElJv41MChN+chvZRUhfXlwnJSV3+7b
	9h69r8UBMFKTl+y6/wVagFycNXcjfn6O2YQXFrRpVGFaSXHXN6nk4/3X4C3g+XuiAxR4Oj/wDKbUg
	m8H8fcEEwg7xnem9XQ2QuyO7J3PlJpseztwb8MCOJryRMuovTfIpq7h+BZaJlGWaj9u3v2eLdWKXt
	YQIio2lZ/70hNk915ilQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icYaC-0002Q9-Qq; Wed, 04 Dec 2019 17:37:00 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icYa1-0002HV-Si; Wed, 04 Dec 2019 17:36:51 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id A618F240002;
 Wed,  4 Dec 2019 17:36:47 +0000 (UTC)
Date: Wed, 4 Dec 2019 18:36:46 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Move xin32k fixed-clock out of
 PX30 DTSI
Message-ID: <20191204183646.2f7f6e7f@xps13>
In-Reply-To: <2665233.YyXs6BPQ7y@diego>
References: <20191204171537.14163-1-miquel.raynal@bootlin.com>
 <2665233.YyXs6BPQ7y@diego>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_093650_064240_09F5B703 
X-CRM114-Status: GOOD (  15.35  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgSGVpa28sCgpIZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250ZWNoLmRlPiB3cm90ZSBvbiBXZWQs
IDA0IERlYyAyMDE5IDE4OjMxOjQ2CiswMTAwOgoKPiBIaSBNaXF1ZWwsCj4gCj4gQW0gTWl0dHdv
Y2gsIDQuIERlemVtYmVyIDIwMTksIDE4OjE1OjM3IENFVCBzY2hyaWViIE1pcXVlbCBSYXluYWw6
Cj4gPiBUaGlzIGNsb2NrIGhhcyBub3RoaW5nIHRvIGRvIGluIHRoZSBQWDMwIERUU0kgYXMgaXQg
aXMgc3VwcG9zZWQgdG8gYmUKPiA+IGFuIGlucHV0IG9mIHRoZSBTb0MuIE1vdmluZyBpdCB0byB0
aGUgRVZCIERUUyAob25seSBib2FyZCBmaWxlIHVzaW5nCj4gPiB0aGlzIERUU0kpIG1ha2VzIG1v
cmUgc2Vuc2UuIEFsc28sIHdoZW4gdGhpcyBjbG9jayBpcyBub3QgYSBmaXhlZAo+ID4gY2xvY2sg
YW5kIGNvbWVzIGZyb20gZWcuIGEgUE1JQyB0aGUgc2l0dWF0aW9uIGNhbiBiZSBkZXNjcmliZWQg
Y2xlYW5seQo+ID4gaW4gdGhlIGRldmljZSB0cmVlIChhdm9pZHMgaGF2aW5nIHRvIGRlbGV0ZSB0
aGUgZml4ZWQtY2xvY2sgbm9kZQo+ID4gZmlyc3QpLgo+ID4gCj4gPiBUaGlzIGNsb2NrIGlzIG5v
dCBtYW5kYXRvcnkgdG8gYm9vdCBzbyBpdCBzaG91bGQgbm90IGJyZWFrIGV4aXN0aW5nCj4gPiB1
c2Vycy4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5h
bEBib290bGluLmNvbT4gIAo+IAo+IFNvcnJ5IGZvbyBiZWluZyB0aGUgYmVhcmVyIG9mIGJhZCBu
ZXdzIGFnYWluLCBidXQgdGhhdCBpc3N1ZSBnb3QgYWxyZWFkeQo+IGZpeGVkIGJ5OgoKSGUgaGUs
IG5vIHByb2JsZW0gOikgSSB3YXMgbm90IGFjdHVhbGx5IGxvb2tpbmcgYXQgdGhlIHJpZ2h0IGJy
YW5jaAoodjUuNS1hcm1zb2MvZHRzNjQpLgoKPiBhcm02NDogZHRzOiByb2NrY2hpcDogcmVtb3Zl
IHN0YXRpYyB4aW4zMmsgZnJvbSBweDMwCj4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2Nt
L2xpbnV4L2tlcm5lbC9naXQvbW1pbmQvbGludXgtcm9ja2NoaXAuZ2l0L2NvbW1pdC8/aD12NS41
LWFybXNvYy9kdHM2NCZpZD0wMDUxOTEzN2Y3ZDRmYzE5ZmYyN2YzZDNmNGZjNDViNWIyMjJhZTgy
Cj4gCj4gYXJtNjQ6IGR0czogcm9ja2NoaXA6IGZpeCB0aGUgcHgzMC1ldmIgcG93ZXIgdHJlZQo+
IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L21taW5kL2xp
bnV4LXJvY2tjaGlwLmdpdC9jb21taXQvP2g9djUuNS1hcm1zb2MvZHRzNjQmaWQ9OTE1YjZhOGI1
NGE2ZDQzNjg4NWE0NTg4NjdlNTlmYjIwZmM2MzU2ZAo+IAo+IAo+IE9uIG1vc3QvYWxsIFJvY2tj
aGlwIHRoZSB4aW4zMmsgY2xvY2sgaXMgYWN0dWFsbHkgcHJvdmlkZWQgYnkgdGhlIGJvYXJkcwo+
IHBtaWMgLSB0aGUgcms4MDkgaW4gdGhpcyBjYXNlLgoKVGhhbmtzIGZvciB0aGUgY29uZmlybWF0
aW9uIQpNaXF1w6hsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
