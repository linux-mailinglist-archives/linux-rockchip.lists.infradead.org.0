Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E304D2A5
	for <lists+linux-rockchip@lfdr.de>; Thu, 20 Jun 2019 18:02:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/X4N2LYgwGRk5BTD/DMoVfoMeH6UHl7jiznT1a4AM9U=; b=DHa61B1DIINdTk
	ju9eIvpBk21H7dpgqy+VnEaG3H6c+K0uLMKlE8PiemrhlnUx5/ziLvgEevpYIw8lcJWohdDfb275Y
	JJrqxyQo7mx2yNXFM4+H0i2BLt/nxZRhWBy0LMzUn9YXtnQZb6qSrDAqpLMZdgelDbSBQFc7EVZdH
	szZCRXDBxo4owNvm6NlciUpaLywhfKN9MIbTiPI2yMeD4Ds8mAooIUTi3CT4qbYPpUzBkg5Qy8P3X
	qbaNTCjQIiKze7cRReL0AOTEHxcQ/T0IplIHa2wyipe/uA2g9gQuXaUVxIjXju+LQF6cLMI8yqR4+
	BlJPPylRzVuzt5/VUezw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdzWW-0000cD-6L; Thu, 20 Jun 2019 16:02:52 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdzWS-0000b9-9N
 for linux-rockchip@lists.infradead.org; Thu, 20 Jun 2019 16:02:50 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id C8986286303
Message-ID: <fdb859f24673ffcec603d0a119c7c566929691ad.camel@collabora.com>
Subject: Re: [PATCH 2/3] drm/rockchip: Add optional support for CRTC gamma LUT
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Date: Thu, 20 Jun 2019 13:02:32 -0300
In-Reply-To: <31857290.5uKucqQp3M@diego>
References: <20190618213406.7667-1-ezequiel@collabora.com>
 <CAKb7UvgvY0tJDV9A=4+8=iqraziyt8SGF-QrX=M8jz+R+5JC=A@mail.gmail.com>
 <20372cd5e56d67b8e896c2d94b3d0d136cc2886e.camel@collabora.com>
 <31857290.5uKucqQp3M@diego>
Organization: Collabora
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_090248_596334_951FEBD1 
X-CRM114-Status: GOOD (  24.91  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Jacopo Mondi <jacopo@jmondi.org>,
 Rob Herring <robh+dt@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Sandy Huang <hjc@rock-chips.com>, dri-devel <dri-devel@lists.freedesktop.org>,
 Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Sean Paul <seanpaul@chromium.org>, kernel@collabora.com,
 Ilia Mirkin <imirkin@alum.mit.edu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gV2VkLCAyMDE5LTA2LTE5IGF0IDAwOjE4ICswMjAwLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToK
PiBBbSBNaXR0d29jaCwgMTkuIEp1bmkgMjAxOSwgMDA6MDk6NTcgQ0VTVCBzY2hyaWViIEV6ZXF1
aWVsIEdhcmNpYToKPiA+IE9uIFR1ZSwgMjAxOS0wNi0xOCBhdCAxNzo0NyAtMDQwMCwgSWxpYSBN
aXJraW4gd3JvdGU6Cj4gPiA+IE9uIFR1ZSwgSnVuIDE4LCAyMDE5IGF0IDU6NDMgUE0gRXplcXVp
ZWwgR2FyY2lhIDxlemVxdWllbEBjb2xsYWJvcmEuY29tPiB3cm90ZToKPiA+ID4gPiBBZGQgYW4g
b3B0aW9uYWwgQ1JUQyBnYW1tYSBMVVQgc3VwcG9ydCwgYW5kIGVuYWJsZSBpdCBvbiBSSzMyODgu
Cj4gPiA+ID4gVGhpcyBpcyBjdXJyZW50bHkgZW5hYmxlZCB2aWEgYSBzZXBhcmF0ZSBhZGRyZXNz
IHJlc291cmNlLAo+ID4gPiA+IHdoaWNoIG5lZWRzIHRvIGJlIHNwZWNpZmllZCBpbiB0aGUgZGV2
aWNldHJlZS4KPiA+ID4gPiAKPiA+ID4gPiBUaGUgYWRkcmVzcyByZXNvdXJjZSBpcyByZXF1aXJl
ZCBiZWNhdXNlIG9uIHNvbWUgU29Dcywgc3VjaCBhcwo+ID4gPiA+IFJLMzI4OCwgdGhlIExVVCBh
ZGRyZXNzIGlzIGFmdGVyIHRoZSBNTVUgYWRkcmVzcywgYW5kIHRoZSBsYXR0ZXIKPiA+ID4gPiBp
cyBzdXBwb3J0ZWQgYnkgYSBkaWZmZXJlbnQgZHJpdmVyLiBUaGlzIHByZXZlbnRzIHRoZSBEUk0g
ZHJpdmVyCj4gPiA+ID4gZnJvbSByZXF1ZXN0aW5nIGFuIGVudGlyZSByZWdpc3RlciBzcGFjZS4K
PiA+ID4gPiAKPiA+ID4gPiBUaGUgY3VycmVudCBpbXBsZW1lbnRhdGlvbiB3b3JrcyBmb3IgUkdC
IDEwLWJpdCB0YWJsZXMsIGFzIHRoYXQKPiA+ID4gPiBpcyB3aGF0IHNlZW1zIHRvIHdvcmsgb24g
UkszMjg4Lgo+ID4gPiA+IAo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEV6ZXF1aWVsIEdhcmNpYSA8
ZXplcXVpZWxAY29sbGFib3JhLmNvbT4KPiA+ID4gPiAtLS0KPiA+ID4gPiBDaGFuZ2VzIGZyb20g
UkZDOgo+ID4gPiA+ICogUmVxdWVzdCAoYW4gb3B0aW9uYWwpIGFkZHJlc3MgcmVzb3VyY2UgZm9y
IHRoZSBMVVQuCj4gPiA+ID4gKiBEcm9wIHN1cHBvcnQgZm9yIFJLMzM5OSwgd2hpY2ggZG9lc24n
dCBzZWVtIHRvIHdvcmsKPiA+ID4gPiAgIG91dCBvZiB0aGUgYm94IGFuZCBuZWVkcyBtb3JlIHJl
c2VhcmNoLgo+ID4gPiA+ICogU3VwcG9ydCBwYXNzLXRocnUgc2V0dGluZyB3aGVuIEdBTU1BX0xV
VCBpcyBOVUxMLgo+ID4gPiA+ICogQWRkIGEgY2hlY2sgZm9yIHRoZSBnYW1tYSBzaXplLCBhcyBz
dWdnZXN0ZWQgYnkgSWxpYS4KPiA+ID4gPiAqIE1vdmUgZ2FtbWEgc2V0dGluZyB0byBhdG9taWNf
Y29tbWl0X3RhaWwsIGFzIHBvaW50ZWQKPiA+ID4gPiAgIG91dCBieSBKYWNvcG8vTGF1cmVudCwg
aXMgdGhlIGNvcnJlY3Qgd2F5Lgo+ID4gPiA+IC0tLQo+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jIGIvZHJpdmVycy9ncHUvZHJt
L3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AuYwo+ID4gPiA+IGluZGV4IDEyZWQ1MjY1YTkwYi4u
NWI2ZWRiZTI2NzNmIDEwMDY0NAo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hp
cC9yb2NrY2hpcF9kcm1fdm9wLmMKPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2No
aXAvcm9ja2NoaXBfZHJtX3ZvcC5jCj4gPiA+ID4gK3N0YXRpYyB2b2lkIHZvcF9jcnRjX2dhbW1h
X3NldChzdHJ1Y3Qgdm9wICp2b3AsIHN0cnVjdCBkcm1fY3J0YyAqY3J0YywKPiA+ID4gPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGRybV9jcnRjX3N0YXRlICpvbGRfc3Rh
dGUpCj4gPiA+ID4gK3sKPiA+ID4gPiArICAgICAgIGludCBpZGxlLCByZXQsIGk7Cj4gPiA+ID4g
Kwo+ID4gPiA+ICsgICAgICAgc3Bpbl9sb2NrKCZ2b3AtPnJlZ19sb2NrKTsKPiA+ID4gPiArICAg
ICAgIFZPUF9SRUdfU0VUKHZvcCwgY29tbW9uLCBkc3BfbHV0X2VuLCAwKTsKPiA+ID4gPiArICAg
ICAgIHZvcF9jZmdfZG9uZSh2b3ApOwo+ID4gPiA+ICsgICAgICAgc3Bpbl91bmxvY2soJnZvcC0+
cmVnX2xvY2spOwo+ID4gPiA+ICsKPiA+ID4gPiArICAgICAgIHJldCA9IHJlYWR4X3BvbGxfdGlt
ZW91dCh2b3BfZHNwX2x1dF9pc19lbmFibGUsIHZvcCwKPiA+ID4gPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICBpZGxlLCAhaWRsZSwgNSwgMzAgKiAxMDAwKTsKPiA+ID4gPiArICAgICAgIGlm
IChyZXQpCj4gPiA+ID4gKyAgICAgICAgICAgICAgIHJldHVybjsKPiA+ID4gPiArCj4gPiA+ID4g
KyAgICAgICBzcGluX2xvY2soJnZvcC0+cmVnX2xvY2spOwo+ID4gPiA+ICsKPiA+ID4gPiArICAg
ICAgIGlmIChjcnRjLT5zdGF0ZS0+Z2FtbWFfbHV0KSB7Cj4gPiA+ID4gKyAgICAgICAgICAgICAg
IGlmICghb2xkX3N0YXRlLT5nYW1tYV9sdXQgfHwgKGNydGMtPnN0YXRlLT5nYW1tYV9sdXQtPmJh
c2UuaWQgIT0KPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgb2xkX3N0YXRlLT5nYW1tYV9sdXQtPmJhc2UuaWQpKQo+ID4gPiA+ICsgICAgICAgICAg
ICAgICAgICAgICAgIHZvcF9jcnRjX3dyaXRlX2dhbW1hX2x1dCh2b3AsIGNydGMpOwo+ID4gPiA+
ICsgICAgICAgfSBlbHNlIHsKPiA+ID4gPiArICAgICAgICAgICAgICAgZm9yIChpID0gMDsgaSA8
IGNydGMtPmdhbW1hX3NpemU7IGkrKykgewo+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAg
IHUzMiB3b3JkOwo+ID4gPiA+ICsKPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICB3b3Jk
ID0gKGkgPDwgMjApIHwgKGkgPDwgMTApIHwgaTsKPiA+ID4gPiArICAgICAgICAgICAgICAgICAg
ICAgICB3cml0ZWwod29yZCwgdm9wLT5sdXRfcmVncyArIGkgKiA0KTsKPiA+ID4gPiArICAgICAg
ICAgICAgICAgfQo+ID4gPiAKPiA+ID4gTm90ZSAtIEknbSBub3QgaW4gYW55IHdheSBmYW1pbGlh
ciB3aXRoIHRoZSBoYXJkd2FyZSwgc28gdGFrZSB3aXRoIGEKPiA+ID4gZ3JhaW4gb2Ygc2FsdCAt
LQo+ID4gPiAKPiA+ID4gQ291bGQgeW91IGp1c3QgbGVhdmUgZHNwX2x1dF9lbiB0dXJuZWQgb2Zm
IGluIHRoaXMgY2FzZT8KPiA+ID4gCj4gPiAKPiA+IFRoYXQgd2FzIHRoZSBmaXJzdCB0aGluZyBJ
IHRyaWVkIDotKQo+ID4gCj4gPiBJdCBzZWVtcyBkc3BfbHV0X2VuIGlzIG5vdCB0byBlbmFibGUg
dGhlIENSVEMgZ2FtbWEgTFVUIHN0YWdlLAo+ID4gYnV0IHRvIGVuYWJsZSB3cml0aW5nIHRoZSBn
YW1tYSBMVVQgdG8gdGhlIGludGVybmFsIFJBTS4KPiAKPiBJIGd1ZXNzIHRoYXQgd2FyYW50cyBh
IGNvZGUgY29tbWVudCBzdGF0aW5nIHRoaXMsIHNvIHdlIGRvbid0IGVuZAo+IHVwIHdpdGggd2Vs
bC1tZWFudCBjbGVhbnVwIHBhdGNoZXMgaW4gdGhlIGZ1dHVyZSA6LSkgLgo+IAoKU3VyZSwgbWFr
ZXMgc2Vuc2UuCgpBbnkgb3RoZXIgZmVlZGJhY2sgYXNpZGUgZnJvbSB0aGlzPwoKVGhhbmtzLApF
emVxdWllbAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
