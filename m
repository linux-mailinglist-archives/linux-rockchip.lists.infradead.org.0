Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7193F13F0
	for <lists+linux-rockchip@lfdr.de>; Wed,  6 Nov 2019 11:29:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YsgIo+2rhc7mYyYmogc8U5gD88rn6VwH1ga0Ri/WoJs=; b=oEz9u+sYHCl2ra
	/8XC5lGrf39BKILms6NvSrgyf4NSl4d4MTWaNyq4ZHBHrCguKf5++3M3feCtEhXSXcGPWHAudRGuO
	d7MI99HjR22mckrjN6lpmkzk6G4hUJWUnX/+8p76Vxtt4scgKkiJAzUfxZLV511oPa2vIXDxgvlI0
	8kh5tSRERoiZEraT1O3WLZ4IaEFEmiWdR3Jjbve8pIUj0Fi2XvrcQG/dNVutSVx+mQlJXxj2zuyhj
	q5cy9ydUR40kbl6x/S7OH8+i7Lcx4yZVuwNw+cL5YOvSz3orBjfHADXl6TIURZtimRbW51xhX7CB+
	HJac39rTYpWtooaNo4jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSIYh-0004hm-Qv; Wed, 06 Nov 2019 10:29:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSIYe-0004hR-T9
 for linux-rockchip@lists.infradead.org; Wed, 06 Nov 2019 10:29:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0FC667A7;
 Wed,  6 Nov 2019 02:29:00 -0800 (PST)
Received: from e110455-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C02AD3F6C4;
 Wed,  6 Nov 2019 02:28:59 -0800 (PST)
Received: by e110455-lin.cambridge.arm.com (Postfix, from userid 1000)
 id 7A0CE682956; Wed,  6 Nov 2019 10:28:58 +0000 (GMT)
Date: Wed, 6 Nov 2019 10:28:58 +0000
From: Liviu Dudau <liviu.dudau@arm.com>
To: Daniel Stone <daniels@collabora.com>
Subject: Re: [PATCHv2 1/4] drm/arm: Factor out generic afbc helpers
Message-ID: <20191106102858.gg2gjx7vhdo72sai@e110455-lin.cambridge.arm.com>
References: <2485717.1SzL54aMiy@e123338-lin>
 <20191104221228.3588-1-andrzej.p@collabora.com>
 <20191104221228.3588-2-andrzej.p@collabora.com>
 <f4aa14e89852c9ef46ade10e8eccdb66b1adc052.camel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f4aa14e89852c9ef46ade10e8eccdb66b1adc052.camel@collabora.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_022901_023372_D0F6133F 
X-CRM114-Status: GOOD (  26.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Ayan Halder <Ayan.Halder@arm.com>, kernel@collabora.com,
 Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sandy Huang <hjc@rock-chips.com>, Maxime Ripard <mripard@kernel.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 linux-rockchip@lists.infradead.org, James Wang <james.qian.wang@arm.com>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 Mihail Atanassov <mihail.atanassov@arm.com>, Sean Paul <sean@poorly.run>,
 Brian Starkey <brian.starkey@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgQW5kcnplaiwKCk9uIFR1ZSwgTm92IDA1LCAyMDE5IGF0IDExOjI2OjM2UE0gKzAwMDAsIERh
bmllbCBTdG9uZSB3cm90ZToKPiBIaSBBbmRyemVqLAo+IFRoYW5rcyBmb3IgdGFraW5nIHRoaXMg
b24hIEl0J3MgbG9va2luZyBiZXR0ZXIgdGhhbiB2MSBmb3Igc3VyZS4gQSBmZXcKPiB0aGluZ3Mg
YmVsb3c6Cj4gCj4gT24gTW9uLCAyMDE5LTExLTA0IGF0IDIzOjEyICswMTAwLCBBbmRyemVqIFBp
ZXRyYXNpZXdpY3ogd3JvdGU6Cj4gPiArYm9vbCBkcm1fYWZiY19jaGVja19vZmZzZXQoc3RydWN0
IGRybV9kZXZpY2UgKmRldiwKPiA+ICsJCQkgICBjb25zdCBzdHJ1Y3QgZHJtX21vZGVfZmJfY21k
MiAqbW9kZV9jbWQpCj4gPiArewo+ID4gKwlpZiAobW9kZV9jbWQtPm9mZnNldHNbMF0gIT0gMCkg
ewo+ID4gKwkJRFJNX0RFQlVHX0tNUygiQUZCQyBidWZmZXJzJyBwbGFuZSBvZmZzZXQgc2hvdWxk
IGJlCj4gPiAwXG4iKTsKPiA+ICsJCXJldHVybiBmYWxzZTsKPiA+ICsJfQo+ID4gKwo+ID4gKwly
ZXR1cm4gdHJ1ZTsKPiA+ICt9Cj4gPiArRVhQT1JUX1NZTUJPTF9HUEwoZHJtX2FmYmNfY2hlY2tf
b2Zmc2V0KTsKPiAKPiBJcyB0aGlzIGFjdHVhbGx5IHVuaXZlcnNhbGx5IHRydWU/IElmIHRoZSBv
ZmZzZXQgaXMgc3VmZmljaWVudGx5Cj4gYWxpZ25lZCBmb3IgKGUuZy4pIERNQSB0cmFuc2ZlcnMg
dG8gc3VjY2VlZCwgaXMgdGhlcmUgYW55IHJlYXNvbiB3aHkgaXQKPiBtdXN0IGJlIHplcm8/Cj4g
Cj4gPiArYm9vbCBkcm1fYWZiY19jaGVja19zaXplX2FsaWduKHN0cnVjdCBkcm1fZGV2aWNlICpk
ZXYsCj4gPiArCQkJICAgICAgIGNvbnN0IHN0cnVjdCBkcm1fbW9kZV9mYl9jbWQyICptb2RlX2Nt
ZCkKPiA+ICt7Cj4gPiArCXN3aXRjaCAobW9kZV9jbWQtPm1vZGlmaWVyWzBdICYKPiA+IEFGQkNf
Rk9STUFUX01PRF9CTE9DS19TSVpFX01BU0spIHsKPiA+ICsJY2FzZSBBRkJDX0ZPUk1BVF9NT0Rf
QkxPQ0tfU0laRV8xNngxNjoKPiA+ICsJCWlmICgobW9kZV9jbWQtPndpZHRoICUgMTYpIHx8ICht
b2RlX2NtZC0+aGVpZ2h0ICUgMTYpKQo+ID4gewo+IAo+IFRoaXMgaXMgYSBkZWFsYnJlYWtlciBm
b3IgbWFueSByZXNvbHV0aW9uczogZm9yIGV4YW1wbGUsIDEzNjZ4NzY4IGlzbid0Cj4gY2xlYW5s
eSBkaXZpc2libGUgYnkgMTYgaW4gd2lkdGguIFNvIHRoaXMgbWVhbnMgdGhhdCB3ZSB3b3VsZCBo
YXZlIHRvCj4gZWl0aGVyIHVzZSBhIGxhcmdlciBidWZmZXIgYW5kIGNyb3AsIG9yIHNjYWxlLCBv
ciBzb21ldGhpbmcuCj4gCj4gTm8gdXNlcnNwYWNlIGlzIHByZXBhcmVkIHRvIGFsaWduIGZiIHdp
ZHRoL2hlaWdodCB0byB0aWxlIGRpbWVuc2lvbnMKPiBsaWtlIHRoaXMsIHNvIHRoaXMgY2hlY2sg
d2lsbCBiYXNpY2FsbHkgZmFpbCBldmVyeXdoZXJlLgoKSSBhZ3JlZSB3aXRoIERhbmllbCwgZm9y
IEFGQkNfRk9STUFUX01PRF9CTE9DS19TSVpFX3h4eHggeW91IG5lZWQgdG8gY2hlY2sgdGhhdCB0
aGUKYWxsb2NhdGVkIGZyYW1lYnVmZmVyJ3Mgd2lkdGggYW5kIGhlaWdodCBhcmUgZGl2aXNpYmxl
IGJ5IGJsb2NrIHNpemUsIG5vdCB3aGF0IHRoZQpyZXNvbHV0aW9uIG9mIHRoZSBtb2RlIGlzLgoK
QmVzdCByZWdhcmRzLApMaXZpdQoKPiAKPiBIb3dldmVyLCBvdmVyYWxsb2NhdGlvbiByZWxhdGl2
ZSB0byB0aGUgZGVjbGFyZWQgd2lkdGgvaGVpZ2h0IGlzbid0IGEKPiBwcm9ibGVtIGF0IGFsbC4g
SW4gb3JkZXIgdG8gZGVhbCB3aXRoIGhvcml6b250YWwgYWxpZ25tZW50LCB5b3Ugc2ltcGx5Cj4g
bmVlZCB0byBlbnN1cmUgdGhhdCB0aGUgc3RyaWRlIGlzIGEgbXVsdGlwbGUgb2YgdGhlIHRpbGUg
d2lkdGg7IGZvcgo+IHZlcnRpY2FsIGFycmFuZ2VtZW50LCB0aGF0IHRoZSBidWZmZXIgaXMgbGFy
Z2UgZW5vdWdoIHRvIGNvbnRhaW4KPiBzdWZmaWNpZW50ICdsaW5lcycgdG8gdGhlIG5leHQgdGls
ZSBib3VuZGFyeS4KPiAKPiBpLmUuIHJhdGhlciB0aGFuIGNoZWNraW5nIHdpZHRoL2hlaWdodCwg
eW91IHNob3VsZCBjaGVjazoKPiAgICogZmJfc3RyaWRlID49IChBTElHTihmYl93aWR0aCwgdGls
ZV93aWR0aCksIGJwcCkKPiAgICogYnVmX3NpemUgPj0gZmJfc3RyaWRlICogQUxJR04oZmJfaGVp
Z2h0LCB0aWxlX2hlaWdodCkKPiAKPiBUaGlzIG1heSBmb3JjZSB1cyB0byBkbyBzb21lIHNpbGx5
IGNyb3BwaW5nIGdhbWVzIGluc2lkZSB0aGUgUm9ja2NoaXAKPiBLTVMgZHJpdmVyLCBidXQgSSBm
ZWVsIGl0IGJlYXRzIHRoZSBhbHRlcm5hdGl2ZSBvZiBicmVha2luZyB1c2Vyc3BhY2UuCj4gCj4g
PiArCQkJRFJNX0RFQlVHX0tNUygKPiA+ICsJCQkJIkFGQkMgYnVmZmVyIG11c3QgYmUgYWxpZ25l
ZCB0byAxNgo+ID4gcGl4ZWxzXG4iCj4gPiArCQkJKTsKPiA+ICsJCQlyZXR1cm4gZmFsc2U7Cj4g
PiArCQl9Cj4gPiArCQlicmVhazsKPiA+ICsJY2FzZSBBRkJDX0ZPUk1BVF9NT0RfQkxPQ0tfU0la
RV8zMng4Ogo+ID4gKwkJLyogZmFsbCB0aHJvdWdoICovCj4gCj4gSXQncyBhbHNvIGluY29uZ3J1
b3VzIHRoYXQgMzJ4OCBpcyB1bnN1cHBvcnRlZCBoZXJlLCBidXQgaGFzIGEgc2VjdGlvbgo+IGlu
IGdldF9zdXBlcmJsa193aDsgcGxlYXNlIGhhcm1vbmlzZSB0aGVtIHNvIHRoaXMgc2VjdGlvbiBl
aXRoZXIgZG9lcwo+IHRoZSBjaGVja3MgYXMgYWJvdmUsIG9yIHRoYXQgZ2V0X3N1cGVyYmxrX3do
IGRvZXNuJ3Qgc3VwcG9ydCAzMng4Cj4gZWl0aGVyLgo+IAo+ID4gK2Jvb2wgZHJtX2FmYmNfY2hl
Y2tfZmJfc2l6ZV9yZXQodTMyIHBpdGNoLCBpbnQgYnBwLAo+ID4gKwkJCQl1MzIgdywgdTMyIGgs
IHUzMiBzdXBlcmJsa193LCB1MzIKPiA+IHN1cGVyYmxrX2gsCj4gPiArCQkJCXNpemVfdCBzaXpl
LCB1MzIgb2Zmc2V0LCB1MzIgaGRyX2FsaWduLAo+ID4gKwkJCQl1MzIgKnBheWxvYWRfb2ZmLCB1
MzIgKnRvdGFsX3NpemUpCj4gPiArewo+ID4gKwlpbnQgbl9zdXBlcmJsa3MgPSAwOwo+ID4gKwl1
MzIgc3VwZXJibGtfc3ogPSAwOwo+ID4gKwl1MzIgYWZiY19zaXplID0gMDsKPiAKPiBQbGVhc2Ug
ZG9uJ3QgaW5pdGlhbGlzZSB0aGUgYWJvdmUgdGhyZWUgdmFyaWFibGVzLCBnaXZlbiB0aGF0IHlv
dSBnbyBvbgo+IHRvIGltbWVkaWF0ZWx5IGNoYW5nZSB0aGVpciB2YWx1ZXMuIEluIHRoaXMgY2Fz
ZSwgaW5pdGlhbGlzaW5nIHRvIHplcm8KPiBjYW4gb25seSBoaWRlIGxlZ2l0aW1hdGUgdW5pbml0
aWFsaXNlZC12YXJpYWJsZS11c2Ugd2FybmluZ3MuCj4gCj4gPiArCW5fc3VwZXJibGtzID0gKHcg
LyBzdXBlcmJsa193KSAqIChoIC8gc3VwZXJibGtfaCk7Cj4gPiArCXN1cGVyYmxrX3N6ID0gKGJw
cCAqIHN1cGVyYmxrX3cgKiBzdXBlcmJsa19oKSAvIEJJVFNfUEVSX0JZVEU7Cj4gPiArCWFmYmNf
c2l6ZSA9IEFMSUdOKG5fc3VwZXJibGtzICogQUZCQ19IRUFERVJfU0laRSwgaGRyX2FsaWduKTsK
PiA+ICsJKnBheWxvYWRfb2ZmID0gYWZiY19zaXplOwo+ID4gKwo+ID4gKwlhZmJjX3NpemUgKz0g
bl9zdXBlcmJsa3MgKiBBTElHTihzdXBlcmJsa19zeiwKPiA+IEFGQkNfU1VQRVJCTEtfQUxJR05N
RU5UKTsKPiA+ICsJKnRvdGFsX3NpemUgPSBhZmJjX3NpemUgKyBvZmZzZXQ7Cj4gCj4gR2VuZXJh
bGx5IHRoZXNlIGFyZSByZWZlcnJlZCB0byBhcyAndGlsZXMnIHJhdGhlciB0aGFuICdzdXBlcmJs
b2NrcycsCj4gZ2l2ZW4gdGhhdCBJIHdvdWxkIG9ubHkgZXhwZWN0IG9uZSBzdXBlcmJsb2NrIHBl
ciBidWZmZXIsIGJ1dCBpZiB0aGF0J3MKPiB0aGUgdGVybWlub2xvZ3kgQUZCQyB1c2VzIHRoZW4g
aXQgbWlnaHQgYmUgYmV0dGVyIHRvIHN0aWNrIHdpdGggaXQuCj4gCj4gPiArCWlmICgodyAqIGJw
cCkgIT0gKHBpdGNoICogQklUU19QRVJfQllURSkpIHsKPiA+ICsJCURSTV9ERUJVR19LTVMoIklu
dmFsaWQgdmFsdWUgb2YgKHBpdGNoICogQklUU19QRVJfQllURSkKPiA+ICg9JXUpIHNob3VsZCBi
ZSBzYW1lIGFzIHdpZHRoICg9JXUpICogYnBwICg9JXUpXG4iLAo+ID4gKwkJCSAgICAgIHBpdGNo
ICogQklUU19QRVJfQllURSwgdywgYnBwCj4gPiArCQkpOwo+ID4gKwkJcmV0dXJuIGZhbHNlOwo+
ID4gKwl9Cj4gCj4gSGF2aW5nIGEgdG9vLXNtYWxsIHBpdGNoIGlzIG9idmlvdXNseSBhIHByb2Js
ZW0gYW5kIHdlIHNob3VsZCByZWplY3QKPiBpdC4gQnV0IGlzIGhhdmluZyBhIHRvby1sYXJnZSBw
aXRjaCByZWFsbHkgYSBwcm9ibGVtOyBkb2VzIGl0IG5lZWQgdG8KPiBiZSBhbiBleGFjdCBtYXRj
aCwgb3IgY2FuIHdlIHN1cHBvcnQgdGhlIGNhc2Ugd2hlcmUgdGhlIHBpdGNoIGlzIHRvbwo+IGxh
cmdlIGJ1dCBhbHNvIHRpbGUtYWxpZ25lZD8gSWYgd2UgY2FuLCBpdCB3b3VsZCBiZSB2ZXJ5IGdv
b2QgdG8KPiBzdXBwb3J0IHRoYXQuCj4gCj4gQ2hlZXJzLAo+IERhbmllbAo+IAoKLS0gCj09PT09
PT09PT09PT09PT09PT09CnwgSSB3b3VsZCBsaWtlIHRvIHwKfCBmaXggdGhlIHdvcmxkLCAgfAp8
IGJ1dCB0aGV5J3JlIG5vdCB8CnwgZ2l2aW5nIG1lIHRoZSAgIHwKIFwgc291cmNlIGNvZGUhICAv
CiAgLS0tLS0tLS0tLS0tLS0tCiAgICDCr1xfKOODhClfL8KvCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
