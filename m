Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E2C1C46E1
	for <lists+linux-rockchip@lfdr.de>; Mon,  4 May 2020 21:14:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3VyNstuPwFe9s9C/bvkTo267nmw4exNvpzRMtdpLPS0=; b=m0x7LV+C47IjW9
	xpCpEvYnBB5j/++JuuBzQZd43unpEMb6K6iTy5gcyFPy+nuH5e8iJZg6Ec2SK3hbUAU3pxLbCYbs2
	FUFynRsrboDl0c7JbyuHavC7/EgWCChgaBh3sQaWfoYN/Kfm23dbt7lBI/R6FkVDgly6wCH7KMghz
	9UwX/YhqztPk8ZgNKU2bQEA6Ubq5RsSklMwmqD0iIvqi+7Bs70Zji/aTTG+C3o0AMC6dJmqzciHyr
	t+tI17J79wnsTqSDY40i4XOcNuwjdItWLfGjJ+2QfdeAQGQjbd5mZ0MD4A/PtsnrbpuXkfDmtzP+m
	nlVsny9BMiOxDr84LD/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVgXU-0000EN-6S; Mon, 04 May 2020 19:14:04 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVgXQ-0000DJ-IT
 for linux-rockchip@lists.infradead.org; Mon, 04 May 2020 19:14:02 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 53FBB2A0E46;
 Mon,  4 May 2020 20:13:58 +0100 (BST)
Date: Mon, 4 May 2020 21:13:54 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Subject: Re: [PATCH v2 2/3] media: uapi: Add VP9 stateless decoder controls
Message-ID: <20200504211354.5b8cafd4@collabora.com>
In-Reply-To: <98946a03023451d44c2ebb2da719fa7dd3e530f6.camel@collabora.com>
References: <20200410115113.31728-1-ezequiel@collabora.com>
 <20200410115113.31728-3-ezequiel@collabora.com>
 <9126475c-275d-71ab-0308-6ae85e22446b@xs4all.nl>
 <bf475e70cca6f9ebf645aed51276e57668eaf43b.camel@collabora.com>
 <20200502203707.402ea3cd@collabora.com>
 <db9fa91be8084fe9c87f263a4a97dc38d46f9bd1.camel@collabora.com>
 <e53824aed3eeb27419e5399576cce028f0ba8203.camel@collabora.com>
 <98946a03023451d44c2ebb2da719fa7dd3e530f6.camel@collabora.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_121400_780460_82805FA9 
X-CRM114-Status: GOOD (  23.32  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 linux-rockchip@lists.infradead.org,
 Jeffrey Kardatzke <jkardatzke@chromium.org>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gTW9uLCAwNCBNYXkgMjAyMCAxNDozODoyMyAtMDQwMApOaWNvbGFzIER1ZnJlc25lIDxuaWNv
bGFzLmR1ZnJlc25lQGNvbGxhYm9yYS5jb20+IHdyb3RlOgoKPiBMZSBsdW5kaSAwNCBtYWkgMjAy
MCDDoCAxNDowMSAtMDQwMCwgTmljb2xhcyBEdWZyZXNuZSBhIMOpY3JpdCA6Cj4gPiBMZSBzYW1l
ZGkgMDIgbWFpIDIwMjAgw6AgMTk6NTUgLTAzMDAsIEV6ZXF1aWVsIEdhcmNpYSBhIMOpY3JpdCA6
ICAKPiA+ID4gK05pY29sYXMKPiA+ID4gCj4gPiA+IE9uIFNhdCwgMjAyMC0wNS0wMiBhdCAyMDoz
NyArMDIwMCwgQm9yaXMgQnJlemlsbG9uIHdyb3RlOiAgCj4gPiA+ID4gT24gRnJpLCAwMSBNYXkg
MjAyMCAxMzo1Nzo0OSAtMDMwMAo+ID4gPiA+IEV6ZXF1aWVsIEdhcmNpYSA8ZXplcXVpZWxAY29s
bGFib3JhLmNvbT4gd3JvdGU6Cj4gPiA+ID4gICAKPiA+ID4gPiA+ID4gPiArCj4gPiA+ID4gPiA+
ID4gKy4uIHRhYnVsYXJjb2x1bW5zOjogfHB7MS41Y219fHB7Ni4zY219fHB7OS40Y219fAo+ID4g
PiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4gPiArLi4gZmxhdC10YWJsZTo6IGVudW0gdjRsMl92cDlf
cmVzZXRfZnJhbWVfY29udGV4dAo+ID4gPiA+ID4gPiA+ICsgICAgOmhlYWRlci1yb3dzOiAgMAo+
ID4gPiA+ID4gPiA+ICsgICAgOnN0dWItY29sdW1uczogMAo+ID4gPiA+ID4gPiA+ICsgICAgOndp
ZHRoczogICAgICAgMSAyCj4gPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiA+ICsgICAgKiAtIGBg
VjRMMl9WUDlfUkVTRVRfRlJBTUVfQ1RYX05PTkVgYAo+ID4gPiA+ID4gPiA+ICsgICAgICAtIERv
IG5vdCByZXNldCBhbnkgZnJhbWUgY29udGV4dC4KPiA+ID4gPiA+ID4gPiArICAgICogLSBgYFY0
TDJfVlA5X1JFU0VUX0ZSQU1FX0NUWF9OT05FX0FMVGBgCj4gPiA+ID4gPiA+ID4gKyAgICAgIC0g
RG8gbm90IHJlc2V0IGFueSBmcmFtZSBjb250ZXh0LiBUaGlzIGlzIGFuIGFsdGVybmF0aXZlIHZh
bHVlIGZvcgo+ID4gPiA+ID4gPiA+ICsgICAgICAgIFY0TDJfVlA5X1JFU0VUX0ZSQU1FX0NUWF9O
T05FLiAgICAKPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IEFkZCBgYCBhcm91bmQgVjRMMl9WUDlf
UkVTRVRfRlJBTUVfQ1RYX05PTkUuCj4gPiA+ID4gPiA+ICAgICAKPiA+ID4gPiA+IAo+ID4gPiA+
ID4gSG0sIG5vdyB0aGF0IEkgbG9vayBjbG9zZXIsIHdoYXQncyB0aGUgcG9pbnQKPiA+ID4gPiA+
IG9mIGhhdmluZyB0aGUgTk9ORV9BTFQgaW4gb3VyIHVBUEkgaWYgaXQKPiA+ID4gPiA+IGhhcyBz
YW1lIG1lYW5pbmcgYXMgTk9ORT8KPiA+ID4gPiA+IAo+ID4gPiA+ID4gSSB0aGluayBpdCBjYW4g
YmUgcmVtb3ZlZC4gIAo+ID4gPiA+IAo+ID4gPiA+IFRoZSBpbnRlbnQgd2FzIHRvIG1hdGNoIHRo
ZSBzcGVjIHNvIHRoYXQgb25lIGNhbiBwYXNzIHRoZSB2YWx1ZQo+ID4gPiA+IGV4dHJhY3RlZCBm
cm9tIHRoZSBiaXRzdHJlYW0gZGlyZWN0bHkuICAKPiA+IAo+ID4gcmVzZXRfZnJhbWVfY29udGV4
dHNwZWNpZmllcyB3aGV0aGVyIHRoZSBmcmFtZSBjb250ZXh0IHNob3VsZCBiZSByZXNldAo+ID4g
dG8gZGVmYXVsdCB2YWx1ZXM6Cj4gPiAgIOKIkiAwIG9yIDEgbWVhbnMgZG8gbm90IHJlc2V0IGFu
eSBmcmFtZSBjb250ZXh0Cj4gPiAgIOKIkiAyIHJlc2V0cyBqdXN0IHRoZSBjb250ZXh0IHNwZWNp
ZmllZCBpbiB0aGUgZnJhbWUgaGVhZGVyCj4gPiAgIOKIkiAzIHJlc2V0cyBhbGwgY29udAo+ID4g
Cj4gPiBCdXQgYXJlbid0IHdlIGdvaW5nIHRvbyBmYXIgYnkgbWFraW5nIHRoaXMgYW4gZW11bSA/
IEluIE1pY3Jvc2ZvdCBEWFZBLAo+ID4gd2UgcGFzcyB0aGF0IHZhbHVlIHdpdGhvdXQgaW50ZXJw
cmV0aW5nIGl0IGluIHVzZXJzcGFjZS4gRm9yIHRoZQo+ID4gZm9sbG93aW5nIFJLVkRFQywgaXQg
aXMgKHN1c3BpY2lvdXNseSA/KSBpZ25vcmVkLiBNYXliZSBqdXN0IHBhc3NpbmcKPiA+IG92ZXIg
dGhlIHZhbHVlIHdvdWxkIG1ha2UgbW9yZSBzZW5zZSwgbGVzcyB3b3JrID8gIAo+IAo+IEkgaGF2
ZSBsb29rZWQgZGVlcGVyLiBTbyBiYXNpY2FsbHkgd2hlbiAyIGFuZCAzLCB0aGF0IG5lZWRzIHRv
IGJlIGRvbmUKPiBieSB1c2Vyc3BhY2UgaXMgc2V0IGJhY2sgdGhlIGFzc29jaWF0ZWQgcHJvYnMg
YXJyYXlzIHRvIHRoZWlyIGRlZmF1bHQKPiB2YWx1ZXMgKHNlZSBzZWN0aW9uIDEwLjUgb3IgdGhl
IHNwZWMpLgo+IAo+IGh0dHBzOi8vZ2l0aHViLmNvbS9yb2NrY2hpcC1saW51eC9tcHAvYmxvYi9k
ZXZlbG9wL21wcC9jb2RlYy9kZWMvdnA5L3ZwOWRfcGFyc2VyLmMjTDEwMjEKPiAKPiBJdCBzZWVt
cyB0aGF0IGZvciBib3RoIFZBQVBJIEFuZCBEWFZBLCB0aGUgZHJpdmVycyB0YWtlcyBjYXJlIG9m
IHRoYXQKPiByZXNldC4gU28gSSdkIGxpa2UgdG8gYXNrLCBzaGFsbCB3ZSBjb2RlIHRoZXNlIGRl
ZmF1bHRzIGluc2lkZSB0aGUKPiBkcml2ZXIgPyBJIHRoaW5rIHdlIGRvIHNpbWlsYXIgdGhpbmdz
IGluIEpQRUcgc2lkZS4gQnV0IGlmIHdlIGtlZXAgaXQKPiB0aGUgd2F5IGl0IGlzLCB0aGlzIHNo
b3VsZCBiZSBzdHJpY3RseSBkb2N1bWVudGVkLCBvdGhlcndpc2UgYW55b25lCj4gcG9ydGluZyBm
cm9tIERYVkEgb3IgVkFBUEkgd2lsbCBiZSB0cmlja2VkIGJ5IHRoaXMuCgpJSVJDLCBzb21lIGJv
b2sga2VlcGluZyBoYWQgdG8gYmUgZG9uZSBpbiB1c2Vyc3BhY2UgYW55d2F5LCBzbyBJIGRpZG4n
dApmZWVsIHRoZSBuZWVkIGZvciByZXNldHRpbmcgcHJvYmUgY29udGV4dCBpbiBrZXJuZWwgc3Bh
Y2UgKHR0J3MgYWx3YXlzCmhhcmQgdG8gZHJhdyBhIGNsZWFyIGxpbmUgb2Ygd2hhdCBzaG91bGQg
YmUgZG9uZSBpbiB1c2Vyc3BhY2UgYW5kIHdoYXQKc2hvdWxkIGJlIGF1dG9tYXRlZCBieSBrZXJu
ZWwgZHJpdmVycyBmb3IgdGhvc2Ugc3RhdGVsZXNzIGRlY29kZXJzKS4KSSBzdXNwZWN0IHNvbWUg
ZW5naW5lcyBoYXZlIGhhcmR3YXJlIHByb2JzIGNvbnRleHRzLCBhbmQgaW4gdGhhdCBjYXNlLAp5
b3UnZCBoYXZlIHRvIHJlc2V0IHRob3NlIHdoZW4gdGhpcyBmaWVsZCBpcyBzZXQgdG8gMiBvciAz
LCBidXQgdGhhdCdzCm5vdCB0aGUgY2FzZSBoZXJlLgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
