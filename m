Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6784F11402
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 May 2019 09:16:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0gf2Bd1MSgvi6CJmFDJG518CYV+stj1rCV0Lb8hpllY=; b=jKgMfMOU0Vba2+
	d+2O9T/GC0zw1UN3u2tgsD/afVj0sh5QekqJA56ooLII9/yOTDB0qoChS2Zuc1FomjMWFRE+hnbyt
	TG78HRbRJ7zIPp7MdmKxrYfWmtXVdWIjMeSXQPVEQruoze9mQpfX6A8aRjTP0/W/JEV5N69rMBXJc
	fUf22W8VKLCCa/CCGwKWNezbbgp2u3Q4lH8psIuAKH1tbHLe5uVQpBJ2y3Y/nBbKuUCvOqMFqu+e4
	ZQgWYjhUyEASwev3WKarxCjB9caZj391eO8l8kpXx5DC1HajsfTPpr0LZ5FTqs6kp8dfe/1UbytLU
	XixTLvugqgQn3ul29xZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM5xW-0004l1-9u; Thu, 02 May 2019 07:16:46 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM5xT-0004ki-Di
 for linux-rockchip@lists.infradead.org; Thu, 02 May 2019 07:16:45 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 4150D27124E;
 Thu,  2 May 2019 08:16:41 +0100 (BST)
Date: Thu, 2 May 2019 09:16:38 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2 1/3] pwm: rockchip: Don't update the state for the
 caller of pwm_apply_state()
Message-ID: <20190502091638.0f5a40b0@collabora.com>
In-Reply-To: <CAD=FV=U71u39ZHkBBfAXVAP=_hY-bAw3L7JdhC=36jkUVxPOmQ@mail.gmail.com>
References: <20190312214605.10223-1-u.kleine-koenig@pengutronix.de>
 <20190312214605.10223-2-u.kleine-koenig@pengutronix.de>
 <1707507.TOMHpQGrZ7@phil>
 <CAD=FV=WZHouhGcxOgNG3006XajJQaAp0uq9WjeKRikQx1ru4TA@mail.gmail.com>
 <20190408143914.uucb5dwafq3cnsmk@pengutronix.de>
 <CA+ASDXO=szekU97iTDK9vqWjT+JtAKeCNTyoY=8aSi5d+v4mkA@mail.gmail.com>
 <20190429065613.n52uwgys5eugmssd@pengutronix.de>
 <CAD=FV=U71u39ZHkBBfAXVAP=_hY-bAw3L7JdhC=36jkUVxPOmQ@mail.gmail.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_001643_724304_E26CA956 
X-CRM114-Status: GOOD (  28.42  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: linux-pwm <linux-pwm@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Brian Norris <briannorris@chromium.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 Sascha Hauer <kernel@pengutronix.de>,
 Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gTW9uLCAyOSBBcHIgMjAxOSAxMTowNDoyMCAtMDcwMApEb3VnIEFuZGVyc29uIDxkaWFuZGVy
c0BjaHJvbWl1bS5vcmc+IHdyb3RlOgoKPiBIaSwKPiAKPiBPbiBTdW4sIEFwciAyOCwgMjAxOSBh
dCAxMTo1NiBQTSBVd2UgS2xlaW5lLUvDtm5pZwo+IDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9u
aXguZGU+IHdyb3RlOgo+ID4KPiA+IE9uIFRodSwgQXByIDE4LCAyMDE5IGF0IDA1OjI3OjA1UE0g
LTA3MDAsIEJyaWFuIE5vcnJpcyB3cm90ZTogIAo+ID4gPiBIaSwKPiA+ID4KPiA+ID4gSSdtIG5v
dCBzdXJlIGlmIEknbSBtaXNyZWFkaW5nIHlvdSwgYnV0IEkgdGhvdWdodCBJJ2QgYWRkIGhlcmUg
YmVmb3JlCj4gPiA+IHRoaXMgZXhwaXJlcyBvdXQgb2YgbXkgaW5ib3g6Cj4gPiA+Cj4gPiA+IE9u
IE1vbiwgQXByIDgsIDIwMTkgYXQgNzozOSBBTSBVd2UgS2xlaW5lLUvDtm5pZwo+ID4gPiA8dS5r
bGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPiB3cm90ZTogIAo+ID4gPiA+IE15IGludGVudGlv
biBoZXJlIGlzIG1vcmUgdG8gbWFrZSBhbGwgZHJpdmVycyBiZWhhdmUgdGhlIHNhbWUgd2F5IGFu
ZAo+ID4gPiA+IGJlY2F1c2Ugb25seSB0d28gZHJpdmVycyB1cGRhdGVkIHRoZSBwd21fc3RhdGUg
dGhpcyB3YXMgdGhlIHZhcmlhbnQgSQo+ID4gPiA+IHJlbW92ZWQuICAKPiA+ID4KPiA+ID4gVG8g
YmUgY2xlYXIsIHRoaXMgcGF0Y2ggb24gaXRzIG93biBpcyBwcm9iYWJseSBicmVha2luZyB0aGlu
Z3MuIEp1c3QKPiA+ID4gYmVjYXVzZSB0aGUgb3RoZXIgZHJpdmVycyBkb24ndCBpbXBsZW1lbnQg
dGhlIGRvY3VtZW50ZWQgYmVoYXZpb3IKPiA+ID4gZG9lc24ndCBtZWFuIHlvdSBzaG91bGQgYnJl
YWsgdGhpcyBkcml2ZXIuIE1heWJlIHRoZSBvdGhlcnMganVzdAo+ID4gPiBhcmVuJ3QgdXNlZCBp
biBwcmVjaXNlIGVub3VnaCBzY2VuYXJpb3Mgd2hlcmUgdGhpcyBtYXR0ZXJzLgo+ID4gPiAgCj4g
PiA+ID4gV2hlbiB5b3Ugc2F5IHRoYXQgdGhlIGNhbGxlciBtaWdodCBhY3R1YWxseSBjYXJlIGFi
b3V0IHRoZSBleGFjdAo+ID4gPiA+IHBhcmFtZXRlcnMgSSBmdWxseSBhZ3JlZS4gSW4gdGhpcyBj
YXNlIGhvd2V2ZXIgdGhlIGNvbnN1bWVyIHNob3VsZCBiZQo+ID4gPiA+IGFibGUgdG8ga25vdyB0
aGUgcmVzdWx0IGJlZm9yZSBhY3R1YWxseSBhcHBseWluZyBpdC4gU28gaWYgeW91IGRvCj4gPiA+
ID4KPiA+ID4gPiAgICAgICAgIHB3bV9hcHBseV9zdGF0ZShwd20sIHsgLnBlcmlvZCA9IDE3LCAu
ZHV0eV9jeWNsZSA9IDEyLCAuLi59KQo+ID4gPiA+Cj4gPiA+ID4gYW5kIHRoaXMgcmVzdWx0cyBp
biAucGVyaW9kID0gMTAwIGFuZCAuZHV0eV9jeWNsZSA9IDAgdGhlbiBwcm9iYWJseSB0aGUKPiA+
ID4gPiBiYWQgdGhpbmdzIHlvdSB3YW50IHRvIGtub3cgYWJvdXQgYWxyZWFkeSBoYXBwZW5kLiBT
byBteSBpZGVhIGlzIGEgbmV3Cj4gPiA+ID4gZnVuY3Rpb24gcHdtX3JvdW5kX3N0YXRlKCkgdGhh
dCBkb2VzIHRoZSBhZGFwdGlvbnMgdG8gcHdtX3N0YXRlIHdpdGhvdXQKPiA+ID4gPiBhcHBseWlu
ZyBpdCB0byB0aGUgaGFyZHdhcmUuIEFmdGVyIHRoYXQgcHdtX2FwcGx5X3N0YXRlIGNvdWxkIGRv
IHRoZQo+ID4gPiA+IGZvbGxvd2luZzoKPiA+ID4gPgo+ID4gPiA+ICAgICAgICAgcnN0YXRlID0g
cHdtX3JvdW5kX3N0YXRlKHB3bSwgc3RhdGUpCj4gPiA+ID4gICAgICAgICBwd20uYXBwbHkocHdt
LCBzdGF0ZSkKPiA+ID4gPiAgICAgICAgIGdzdGF0ZSA9IHB3bV9nZXRfc3RhdGUocHdtKQo+ID4g
PiA+Cj4gPiA+ID4gICAgICAgICBpZiByc3RhdGUgIT0gZ3N0YXRlOgo+ID4gPiA+ICAgICAgICAg
ICAgICAgICB3YXJuIGFib3V0IHByb2JsZW1zICAKPiA+ID4KPiA+ID4gRm9yIG91ciBjYXNlICh3
ZSdyZSB1c2luZyB0aGlzIHdpdGggcHdtLXJlZ3VsYXRvciksIEkgZG9uJ3QgcmVjYWxsIFsqXQo+
ID4gPiB3ZSBuZWVkIHRvIGJlIDEwMCUgcHJlY2lzZSBhYm91dCB0aGUgcGVyaW9kLCBidXQgd2Ug
ZG8gbmVlZCB0byBiZSBhcwo+ID4gPiBwcmVjaXNlIGFzIHBvc3NpYmxlIHdpdGggdGhlIGR1dHk6
cGVyaW9kIHJhdGlvIC0tIHNvIG9uY2Ugd2UgZ2V0IHRoZQo+ID4gPiAiZmVlZGJhY2siIGZyb20g
dGhlIHVuZGVybHlpbmcgUFdNIGRyaXZlciB3aGF0IHRoZSByZWFsIHBlcmlvZCB3aWxsCj4gPiA+
IGJlLCB3ZSBhZGp1c3QgdGhlIGR1dHkgYXBwcm9wcmlhdGVseS4gIAo+ID4KPiA+IEkgYWRtaXQg
dGhhdCBJIGRpZG4ndCB1bmRlcnN0b29kIHRoZSB3aG9sZSBzaXR1YXRpb24gYW5kIChzb21lKSB0
aGluZ3MKPiA+IGFyZSB3b3JzZSB3aXRoIG15IHBhdGNoZXMgYXBwbGllZC4gSSBzdGlsbCB0aGlu
ayB0aGF0IGNoYW5naW5nIHRoZQo+ID4gY2FsbGVyJ3Mgc3RhdGUgdmFyaWFibGUgaXMgYmFkIGRl
c2lnbiwgYnV0IG9mIGNvdXJzZSBwd21fZ2V0X3N0YXRlCj4gPiBzaG91bGQgcmV0dXJuIHRoZSBj
dXJyZW50bHkgaW1wbGVtZW50ZWQgY29uZmlndXJhdGlvbi4gIAo+IAo+IFJlZ2FyZGxlc3Mgb2Yg
dGhlIHByb3MgYW5kIGNvbnMgb2YgdGhlIGN1cnJlbnQgc2l0dWF0aW9uLCBob3BlZnVsbHkKPiB3
ZSdyZSBpbiBhZ3JlZW1lbnQgdGhhdCB3ZSBzaG91bGRuJ3QgYnJlYWsgZXhpc3RpbmcgdXNlcnM/
ICBJbiBnZW5lcmFsCj4gSSdsbCBwcm9iYWJseSBzdGF5IG91dCBvZiB0aGUgZGViYXRlIGFzIGxv
bmcgYXMgd2UgZW5kIHNvbWV3aGVyZSB0aGF0Cj4gcHdtX3JlZ3VsYXRvciBpcyBhYmxlIHRvIHNv
bWVob3cga25vdyB0aGUgYWN0dWFsIHN0YXRlIHRoYXQgaXQKPiBwcm9ncmFtbWVkIGludG8gdGhl
IGhhcmR3YXJlLgo+IAo+ICtCb3JpcyB0b28gaW4gY2FzZSBoZSBoYXMgYW55IGNvbW1lbnRzLgoK
V2VsbCwgdGhlIHB3bV9yb3VuZF9zdGF0ZSgpIGFwcHJvYWNoIHNvdW5kcyBva2F5IHRvIG1lLCB0
aG91Z2ggSSBkb24ndApyZWFsbHkgc2VlIHdoeSBpdCdzIHdyb25nIHRvIGFkanVzdCB0aGUgc3Rh
dGUgaW4gcHdtX2FwcGx5X3N0YXRlKCkKKGp1c3QgbGlrZSBjbGtfc2V0X3JhdGUoKSB3aWxsIHJv
dW5kIHRoZSByYXRlIGZvciB5b3UgYnkgaW50ZXJuYWxseQpjYWxsaW5nIGNsa19yb3VuZF9yYXRl
KCkgYmVmb3JlIGFwcGx5aW5nIHRoZSBjb25maWcpLiBOb3RlIHRoYXQKcHdtX2NvbmZpZygpIGlz
IGRvaW5nIGV4YWN0bHkgdGhlIHNhbWU6IGl0IGFkanVzdHMgdGhlIGNvbmZpZyB0byBIVwpjYXBz
LCBleGNlcHRzIGluIHRoYXQgY2FzZSB5b3UgZG9uJ3Qga25vdyBpdC4KCkkgZG8gdW5kZXJzdGFu
ZCB0aGF0IHNvbWUgdXNlcnMgbWlnaHQgd2FudCB0byBjaGVjayBob3cgdGhlIEhXIHdpbGwKYWRq
dXN0IHRoZSBwZXJpb2QvZHV0eSBiZWZvcmUgYXBwbHlpbmcgdGhlIG5ldyBzZXR1cCwgYW5kIGlu
IHRoYXQKcmVnYXJkLCBoYXZpbmcgcHdtX3JvdW5kX3JhdGUoKSBpcyBhIGdvb2QgdGhpbmcuIEJ1
dCBpbiBhbnkgY2FzZSwgaXQncwpoYXJkIGZvciB0aGUgdXNlciB0byBkZWNpZGUgaG93IHRvIGFk
anVzdCB0aGluZ3MgdG8gZ2V0IHdoYXQgaXQgd2FudHMKKHNob3VsZCBoZSBpbmNyZWFzZS9kZWNy
ZWFzZSB0aGUgcGVyaW9kL2R1dHk/KS4KCk15IGltcHJlc3Npb24gaXMgdGhhdCBtb3N0IHVzZXJz
IGNhcmUgYWJvdXQgdGhlIGR1dHkvcGVyaW9kIHJhdGlvIHdpdGgKbGl0dGxlIGludGVyZXN0IGlu
IGFjY3VyYXRlIHBlcmlvZCBzZXR0aW5ncyAoYXMgbG9uZyBhcyBpdCdzIGNsb3NlCmVub3VnaCB0
byB3aGF0IHRoZXkgZXhwZWN0IG9mIGNvdXJzZSkuIEZvciB0aGUgcm91bmQtdXAvZG93bi9jbG9z
ZXN0CmFzcGVjdCwgSSBndWVzcyB0aGF0J3MgYWxzbyBzb21ldGhpbmcgd2UgY2FuIHBhc3MgdG8g
dGhlIG5ldyBBUEkuIFNvLApyYXRoZXIgdGhhbiBwYXNzaW5nIGl0IGEgZHV0eSBpbiBucywgbWF5
YmUgd2UgY291bGQgcGFzcyBpdCBhIHJhdGlvCihwZXJjZW50IGlzIHByb2JhYmx5IG5vdCBwcmVj
aXNlIGVub3VnaCBmb3Igc29tZSB1c2UgY2FzZXMsIHNvIHdlIGNvdWxkCm1ha2UgaXQgcGVyLW1p
bGxpb24pLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
