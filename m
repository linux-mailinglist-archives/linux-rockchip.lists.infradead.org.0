Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFD381A893B
	for <lists+linux-rockchip@lfdr.de>; Tue, 14 Apr 2020 20:22:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pG8l8Xekg8wiuxZFI2r8lgGEPt/LgQWiy+aL78qipBg=; b=MHnQckK6tz3lOm
	K41GYh4um8A8lfxc0OsuUoE4OThAlw3zrKzzYE2nLusgvXq2/8KdVcFSSvHv+sK+cTlTYlr/ntZJi
	NO3lnGThRpRuK35H3sGmrL6H52+GJYH9cHYrbRp8QNSI49/02+TSbN2ENYu4C+zRQinDuiJdOr9U6
	j0jLI6BWZKnCA7D1wWFEsOYodQhIur5zufuzCPVCbZoQmQkcIp70g9dePkX3UI/Pxr2R4sXTjf9Zb
	qcC/ItU2p0YeO3xMwDvQ1qbxAe82lHL1xPXmcAPrSfcxaYUay3RNlkF1MSVsdP1YrNZz5R2+eNYV7
	ZYxJtcTpbP8fL11M2cDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOQCx-0002Bl-0o; Tue, 14 Apr 2020 18:22:51 +0000
Received: from static-213-198-238-194.adsl.eunet.rs ([213.198.238.194]
 helo=fx.arvanta.net)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOQCt-0002Ad-05
 for linux-rockchip@lists.infradead.org; Tue, 14 Apr 2020 18:22:49 +0000
Received: from arya.arvanta.net (arya.arvanta.net [10.5.1.6])
 by fx.arvanta.net (Postfix) with ESMTP id 9C26049AD;
 Tue, 14 Apr 2020 20:22:42 +0200 (CEST)
Date: Tue, 14 Apr 2020 20:22:42 +0200
From: Milan =?utf-8?Q?P=2E_Stani=C4=87?= <mps@arvanta.net>
To: Enric Balletbo Serra <eballetbo@gmail.com>
Subject: Re: PROBLEM: [drm:analogix_dp_bridge_atomic_enable [analogix_dp]]
 *ERROR* Failed to disable psr -110
Message-ID: <20200414182242.GA1769@arya.arvanta.net>
References: <20200329203349.GA15121@arya.arvanta.net>
 <20200410095719.GA914@arya.arvanta.net>
 <CAFqH_53TsmtSFnUoWixsa4v6GvOi0Korv3p8BJfROhtW0Afw-Q@mail.gmail.com>
 <CAD=FV=WWx2KH+qKvGa5yQW7fZHQ_azd69Eza_Gvs18eQPvfHGg@mail.gmail.com>
 <20200410192926.GA24668@arya.arvanta.net>
 <CAD=FV=W-5FiZsj-u7V1Kzdo95RaqhE0FQf=nKt7EwyhT5A_RQw@mail.gmail.com>
 <CAFqH_50ftrsCZjazu_-DOcC4pqZf2UJ2N7e3HqWitz16jyUUOA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFqH_50ftrsCZjazu_-DOcC4pqZf2UJ2N7e3HqWitz16jyUUOA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_112247_271278_CEBECD91 
X-CRM114-Status: GOOD (  25.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Doug Anderson <dianders@chromium.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgRW5yaWMgYW5kIERvdWcsCgpZZXN0ZXJkYXkgSSBtYW5hZ2VkIHRvIGJ1aWxkIGNocm9tZU9T
IGtlcm5lbCB2ZXJzaW9uIDQuNC4xNzQgYW5kIGJvb3QKd2l0aCBpdCB3aXRob3V0IGFueSBzZXJp
b3VzIHByb2JsZW0uCgpDdXJyZW50IHVwdGltZSBpcyBvdmVyIDIxIGhvdXIgYW5kIGl0IHdvcmtz
IHdlbGwsIGkuZS4gd2l0aG91dCBwcm9ibGVtCnJlbGF0ZWQgdG8gcm9ja2NoaXAtZHAvYW5hbG9n
aXggZHJpdmVyLCBldmVuIGFmdGVyIHN1c3BlbmQtdG8tcmFtL3Jlc3VtZQpmZXcgdGltZXMuCgpJ
IHdpbGwgbGV0IGl0IGZldyBkYXlzIHRvIHdvcmsgd2l0aG91dCBzaHV0ZG93biAod2l0aG91dCBw
b3dlcm9mZiBvcgpyZWJvb3QpIHRvIHNlZSB3aWxsIGl0IHdvcmsgb3Igd2lsbCBhbnkgcHJvYmxl
bSBhcHBlYXIuCgooYmVzaWRlIHRoaXMgYW5hbG9naXggaXNzdWUsIGxvb2tzIGxpa2UgYWxzbyBl
bW1jIHdvcmtzIGZpbmUgd2l0aCB0aGlzCmtlcm5lbCwgYWx0aG91Z2ggaXQgZG9lc24ndCB3b3Jr
IGZpbmUgd2l0aCBtYWlubGluZSBrZXJuZWxzLiBidXQgdGhpcyBpcwpub3QgcmVsYXRlZCkuCgpJ
ZiB0aGUgbWFjaGluZSB3b3JrIGZvciB0aHJlZSBvciBtb3JlIGRheXMgd2l0aG91dCBwcm9ibGVt
IEkgd2lsbCByZXBvcnQKdG8geW91LiBNYXliZSBzb21lb25lIGV4cGVyaWVuY2VkIGluIHZpZGVv
L2dwdSBkcml2ZXJzIHByb2dyYW1taW5nIGNvdWxkCm1ha2UgZGlmZnMgYW5kIG1ha2UgaXQgdG8g
d29yayB3aXRoIG1haW5saW5lIGtlcm5lbHMuCgpUaGFuayB5b3UgaGVscAoKT24gVHVlLCAyMDIw
LTA0LTE0IGF0IDE4OjE3LCBFbnJpYyBCYWxsZXRibyBTZXJyYSB3cm90ZToKPiBIaSBEb3VnIGFu
ZCBNaWxhbiwKPiAKPiBUaGFua3MgZm9yIHByb3ZpZGluZyB0aGlzIGluZm9ybWF0aW9uLgo+IAo+
IE1pc3NhdGdlIGRlIERvdWcgQW5kZXJzb24gPGRpYW5kZXJzQGNocm9taXVtLm9yZz4gZGVsIGRp
YSBkbC4sIDEzCj4gZOKAmWFici4gMjAyMCBhIGxlcyAxNzoyMzoKPiA+Cj4gPiBIaSwKPiA+Cj4g
PiBPbiBGcmksIEFwciAxMCwgMjAyMCBhdCAxMjoyOSBQTSBNaWxhbiBQLiBTdGFuacSHIDxtcHNA
YXJ2YW50YS5uZXQ+IHdyb3RlOgo+ID4gPgo+ID4gPiBIaSwKPiA+ID4KPiA+ID4gT24gRnJpLCAy
MDIwLTA0LTEwIGF0IDA4OjI4LCBEb3VnIEFuZGVyc29uIHdyb3RlOgo+ID4gPiA+IEhpLAo+ID4g
PiA+Cj4gPiA+ID4gT24gRnJpLCBBcHIgMTAsIDIwMjAgYXQgNTo1NiBBTSBFbnJpYyBCYWxsZXRi
byBTZXJyYQo+ID4gPiA+IDxlYmFsbGV0Ym9AZ21haWwuY29tPiB3cm90ZToKPiA+ID4gPiA+Cj4g
PiA+ID4gPiBIaSBNaWxhbiwKPiA+ID4gPiA+Cj4gPiA+ID4gPiBSaWdodCwgdGhpcyBpcyBhbiBh
bm5veWluZyBpc3N1ZSBidXQgYWxzbyBrbm93biwgdW5mb3J0dW5hdGVseSwgSQo+ID4gPiA+ID4g
cGVyc29uYWxseSBkaWRuJ3QgaGF2ZSB0aW1lIHRvIGxvb2sgYXQuIGJ1dCBpdCBpcyBpbiBteSBU
T0RPLgo+ID4gPiA+Cj4gPiA+ID4gUmFuZG9tIHNob3QgaW4gdGhlIGRhcmssIGJ1dCBhbnkgY2hh
bmNlIHNvbWVob3cgeW91ciBQSFkgY2xvY2sgYW5kCj4gPiA+ID4gUENMSyBmb3IgdGhlIGVEUCBk
b24ndCBtYXRjaD8gIElmIHRoZXkgZG9uJ3QgdGhlbiAoSUlSQykgeW91J2xsIGdldAo+ID4gPiA+
IHJhbmRvbSBmYWlsdXJlcyB0byBhY2Nlc3MgZURQIHJlZ2lzdGVycy4KPiA+ID4gPgo+ID4gPiA+
IFNvbWUgaGlzdG9yeSBpbiA8aHR0cHM6Ly9jcnJldi5jb20vYy80MzMzOTM+LiAgSXQgbG9va3Mg
bGlrZSB0aGUKPiA+ID4gPiBjaGFuZ2VzIGluIHRoYXQgcGF0Y2ggYXJlIHVwc3RyZWFtIGJ1dCBp
ZiBzb21ldGhpbmcgZWxzZSBoYXBwZW5lZCB0bwo+ID4gPiA+IG1ha2UgeW91ciBQSFkgYW5kIFBD
TEsgbWlzbWF0Y2ggaXQgY291bGQgY2F1c2Ugc2ltaWxhciBzeW1wdG9tcy4KPiA+ID4gPgo+ID4g
PiA+IC4uLm9mIGNvdXJzZSBpdCdzIGFsd2F5cyBwb3NzaWJsZSAocHJvYmFibGUpIHRoYXQgaXQn
cyBzb21ldGhpbmcKPiA+ID4gPiBkaWZmZXJlbnQsIGJ1dCBzaW5jZSB0aGF0IHdhcyBzdWNoIGEg
d2VpcmQgYW5kIGhhcmQtdG8tdHJhY2stZG93bgo+ID4gPiA+IHByb2JsZW0gSSBmaWd1cmVkIEkn
ZCBhdCBsZWFzdCBtYWtlIHN1cmUgaXQgd2Fzbid0IHRoYXQuCj4gPiA+Cj4gPiA+IE5vdCBzdXJl
IEkgdW5kZXJzdG9vZCAoSSdtIG5vdCBncmFwaGljIGhhcmR3YXJlIHByb2dyYW1tZXIpIGJ1dCBJ
Cj4gPiA+IGNoYW5nZWQgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkuZHRzaSBm
aWxlIGFyb3VuZCBsaW5lCj4gPiA+IDEzNjcgKGN1cnJlbnQgbWFpbmxpbmUga2VybmVsKSwgdGhp
czoKPiA+ID4gICAgIGFzc2lnbmVkLWNsb2NrcyA9Cj4gPiA+ICAgICAgIDwmY3J1IFBMTF9HUExM
PiwgPCZjcnUgUExMX0NQTEw+LAo+ID4gPiAgICAgICA8JmNydSBQTExfTlBMTD4sCj4gPiA+ICAg
ICAgIDwmY3J1IEFDTEtfUEVSSUhQPiwgPCZjcnUgSENMS19QRVJJSFA+LAo+ID4gPiAgICAgICA8
JmNydSBQQ0xLX1BFUklIUD4sCj4gPiA+ICAgICAgIDwmY3J1IEFDTEtfUEVSSUxQMD4sIDwmY3J1
IEhDTEtfUEVSSUxQMD4sCj4gPiA+ICAgICAgIDwmY3J1IFBDTEtfUEVSSUxQMD4sIDwmY3J1IEFD
TEtfQ0NJPiwKPiA+ID4gICAgICAgPCZjcnUgSENMS19QRVJJTFAxPiwgPCZjcnUgUENMS19QRVJJ
TFAxPiwKPiA+ID4gICAgICAgPCZjcnUgQUNMS19WSU8+LCA8JmNydSBBQ0xLX0hEQ1A+LAo+ID4g
PiAgICAgICA8JmNydSBBQ0xLX0dJQ19QUkU+LAo+ID4gPiAgICAgICA8JmNydSBQQ0xLX0REUj47
Cj4gPiA+ICAgICBhc3NpZ25lZC1jbG9jay1yYXRlcyA9Cj4gPiA+ICAgICAgICA8NTk0MDAwMDAw
PiwgIDw4MDAwMDAwMDA+LAo+ID4gPiAgICAgICA8MTAwMDAwMDAwMD4sCj4gPiA+ICAgICAgICA8
MTUwMDAwMDAwPiwgICA8NzUwMDAwMDA+LAo+ID4gPiAgICAgICAgIDwzNzUwMDAwMD4sCj4gPiA+
ICAgICAgICA8MTAwMDAwMDAwPiwgIDwxMDAwMDAwMDA+LAo+ID4gPiAgICAgICAgIDw1MDAwMDAw
MD4sIDw2MDAwMDAwMDA+LAo+ID4gPiAgICAgICAgPDEwMDAwMDAwMD4sICAgPDUwMDAwMDAwPiwK
PiA+ID4gICAgICAgIDw0MDAwMDAwMDA+LCA8NDAwMDAwMDAwPiwKPiA+ID4gICAgICAgIDwyMDAw
MDAwMDA+LAo+ID4gPiAgICAgICAgPDIwMDAwMDAwMD47Cj4gPiA+Cj4gPiA+IGFuZCBjaGFuZ2Vk
ICA8NTk0MDAwMDAwPiB0byAgPDYwMDAwMDAwMD4KPiA+ID4gYnVpbGQga2VybmVsIGFuZCBpdCBi
b290cyBidXQgZGlzcGxheSBpcyBibGFuayBhZnRlciBib290Lgo+ID4KPiA+IEkgdGhpbmsga2V2
aW4gYWxyZWFkeSBvdmVycmlkZXMgdGhvc2UgY2xvY2tzIGluIGl0cyBkdHMuICBJIHdhcyBtb3Jl
Cj4gPiB0aGlua2luZyBvZiBsb29raW5nIGF0ICIvc3lzL2tlcm5lbC9kZWJ1Zy9jbGsvY2xrX3N1
bW1hcnkiIGFuZCBzZWVpbmcKPiA+IGlmIHRoZXJlIHdhcyBhIGNsb2NrIG1pc21hdGNoLgo+ID4K
PiAKPiBBbHRob3VnaCBJIGRvbid0IGRpc2NhcmQgdGhhdCB0aGlzIHdvdWxkIGJlIHRoZSBwcm9i
bGVtLCBJIHRoaW5rIGl0IGlzCj4gbW9yZSBhIHJhY2luZyBwcm9ibGVtIHdpdGggdGhlIHRyYWNr
aW5nIHN0YXR1cyBvZiB0aGUgY3J0YyBhY3RpdmUgYW5kCj4gc2VsZl9yZWZyZXNoX2FjdGl2ZSB2
YXJpYWJsZXMgZHVyaW5nIHRoZSBzdXNwZW5kIHBhdGggYW5kIFBTUi4gSS5lLCBpZgo+IEkgYXBw
bHkgdGhlIGZvbGxvd2luZyBwYXRjaCB3aGljaCBzZXRzIGEgZGVsYXkgb2YgMTAwbXMgaW4gdGhl
IGRlbGF5ZWQKPiBlbnRyeSB3b3JrIHRvIGVudHJ5IHRoZSBQU1Igc3RhdGUgKHNpbWlsYXIgdG8g
d2hhdCB3ZSBoYWQgYmVmb3JlIHRoZQo+IGNvbW1pdCBJIG1lbnRpb25lZCksIHN1c3BlbmQgcmVz
dW1lIHdvcmtzIGFzIGV4cGVjdGVkIGZvciBtZS4KPiAKPiBAQCAtMjE4LDcgKzIzNCw3IEBAIHZv
aWQgZHJtX3NlbGZfcmVmcmVzaF9oZWxwZXJfYWx0ZXJfc3RhdGUoc3RydWN0Cj4gZHJtX2F0b21p
Y19zdGF0ZSAqc3RhdGUpCj4gICAgICAgICAgICAgICAgIG11dGV4X3VubG9jaygmc3JfZGF0YS0+
YXZnX211dGV4KTsKPiAKPiAgICAgICAgICAgICAgICAgbW9kX2RlbGF5ZWRfd29yayhzeXN0ZW1f
d3EsICZzcl9kYXRhLT5lbnRyeV93b3JrLAo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIG1zZWNzX3RvX2ppZmZpZXMoZGVsYXkpKTsKPiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBtc2Vjc190b19qaWZmaWVzKDEwMCkpOwo+ICAgICAgICAgfQo+ICB9Cj4gCj4gU29t
ZSBtb3JlIGluZm8gaXMgdGhhdCBJIHdhcyBub3QgYWJsZSB0byByZXByb2R1Y2UgdGhlIHByb2Js
ZW0gYnkKPiB0cmlnZ2VyaW5nIGFuICdlY2hvIG1lbSA+IC9zeXMvcG93ZXIvc3RhdGUnIFRoZSBv
bmx5IHdheSBJIGNhbgo+IHJlcHJvZHVjZSB0aGUgaXNzdWUgaXMgZG9pbmcgYXMgJ3N5c3RlbWN0
bCBzdXBlbmQnIGNvbW1hbmQsIHdoaWNoIGlmIEkKPiBhbSBub3QgbWlzdGFrZW4gZG9lcyBhIERQ
TVMgb2ZmIGJlZm9yZSBzdXNwZW5kaW5nLgo+IAo+IC0gRW5yaWMKPiAKPiA+IC1Eb3VnCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
