Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55DB21AE5C4
	for <lists+linux-rockchip@lfdr.de>; Fri, 17 Apr 2020 21:26:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3/NzoEAEtBwzZQVBLTRNLGPxv6MS63ta97k4lkcvrCk=; b=q4hrm36KLmgk9V
	OOXRPt1aWq5WTUvudY1UiA9Kf5boUZJPqRISXkdhmpWUpTFc+eOvQ7WgJCQ9JvS5CO/+NXe5MUlzH
	59joc2KkdkqPrfrWJNGHC/szWWu7AIilBHN0PsDufPLlgL3TwIPjFTmF8DXsRICH2v0XTztWtnZ4p
	FRlm8jY/zRDEvQyG60lCF1dLgqdWuEuhO9CTkMm5YsmqWZocnlwMXu2kY6VueF1H2fApDAIyoJmON
	C3TpTz+NriISQ81BAj0qHCdwvhJEU6jWCrXzXkNhMYb7fiJ89YLikWGm0WYZHpV1pDJmbGpadFvuW
	mc0squcpsCaXEmGyW8nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPWd7-0007ox-1i; Fri, 17 Apr 2020 19:26:25 +0000
Received: from static-213-198-238-194.adsl.eunet.rs ([213.198.238.194]
 helo=fx.arvanta.net)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPWd1-0007o2-Kr
 for linux-rockchip@lists.infradead.org; Fri, 17 Apr 2020 19:26:23 +0000
Received: from arya.arvanta.net (arya.arvanta.net [10.5.1.6])
 by fx.arvanta.net (Postfix) with ESMTP id DA1314B73;
 Fri, 17 Apr 2020 21:26:14 +0200 (CEST)
Date: Fri, 17 Apr 2020 21:26:14 +0200
From: Milan =?utf-8?Q?P=2E_Stani=C4=87?= <mps@arvanta.net>
To: Enric Balletbo Serra <eballetbo@gmail.com>
Subject: Re: PROBLEM: [drm:analogix_dp_bridge_atomic_enable [analogix_dp]]
 *ERROR* Failed to disable psr -110
Message-ID: <20200417192614.GA8457@arya.arvanta.net>
References: <20200329203349.GA15121@arya.arvanta.net>
 <20200410095719.GA914@arya.arvanta.net>
 <CAFqH_53TsmtSFnUoWixsa4v6GvOi0Korv3p8BJfROhtW0Afw-Q@mail.gmail.com>
 <CAD=FV=WWx2KH+qKvGa5yQW7fZHQ_azd69Eza_Gvs18eQPvfHGg@mail.gmail.com>
 <20200410192926.GA24668@arya.arvanta.net>
 <CAD=FV=W-5FiZsj-u7V1Kzdo95RaqhE0FQf=nKt7EwyhT5A_RQw@mail.gmail.com>
 <CAFqH_50ftrsCZjazu_-DOcC4pqZf2UJ2N7e3HqWitz16jyUUOA@mail.gmail.com>
 <20200414182242.GA1769@arya.arvanta.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414182242.GA1769@arya.arvanta.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_122619_914449_8BA42AB7 
X-CRM114-Status: GOOD (  28.68  )
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

SGkgRW5yaWMgYW5kIERvdWcsIGFuZCBhbGwsCgpPbiBUdWUsIDIwMjAtMDQtMTQgYXQgMjA6MjIs
IE1pbGFuIFAuIFN0YW5pxIcgd3JvdGU6Cj4gSGkgRW5yaWMgYW5kIERvdWcsCj4gCj4gWWVzdGVy
ZGF5IEkgbWFuYWdlZCB0byBidWlsZCBjaHJvbWVPUyBrZXJuZWwgdmVyc2lvbiA0LjQuMTc0IGFu
ZCBib290Cj4gd2l0aCBpdCB3aXRob3V0IGFueSBzZXJpb3VzIHByb2JsZW0uCj4gCj4gQ3VycmVu
dCB1cHRpbWUgaXMgb3ZlciAyMSBob3VyIGFuZCBpdCB3b3JrcyB3ZWxsLCBpLmUuIHdpdGhvdXQg
cHJvYmxlbQo+IHJlbGF0ZWQgdG8gcm9ja2NoaXAtZHAvYW5hbG9naXggZHJpdmVyLCBldmVuIGFm
dGVyIHN1c3BlbmQtdG8tcmFtL3Jlc3VtZQo+IGZldyB0aW1lcy4KPiAKPiBJIHdpbGwgbGV0IGl0
IGZldyBkYXlzIHRvIHdvcmsgd2l0aG91dCBzaHV0ZG93biAod2l0aG91dCBwb3dlcm9mZiBvcgo+
IHJlYm9vdCkgdG8gc2VlIHdpbGwgaXQgd29yayBvciB3aWxsIGFueSBwcm9ibGVtIGFwcGVhci4K
PiAKPiAoYmVzaWRlIHRoaXMgYW5hbG9naXggaXNzdWUsIGxvb2tzIGxpa2UgYWxzbyBlbW1jIHdv
cmtzIGZpbmUgd2l0aCB0aGlzCj4ga2VybmVsLCBhbHRob3VnaCBpdCBkb2Vzbid0IHdvcmsgZmlu
ZSB3aXRoIG1haW5saW5lIGtlcm5lbHMuIGJ1dCB0aGlzIGlzCj4gbm90IHJlbGF0ZWQpLgo+IAo+
IElmIHRoZSBtYWNoaW5lIHdvcmsgZm9yIHRocmVlIG9yIG1vcmUgZGF5cyB3aXRob3V0IHByb2Js
ZW0gSSB3aWxsIHJlcG9ydAo+IHRvIHlvdS4gTWF5YmUgc29tZW9uZSBleHBlcmllbmNlZCBpbiB2
aWRlby9ncHUgZHJpdmVycyBwcm9ncmFtbWluZyBjb3VsZAo+IG1ha2UgZGlmZnMgYW5kIG1ha2Ug
aXQgdG8gd29yayB3aXRoIG1haW5saW5lIGtlcm5lbHMuCgpJIGJ1aWx0IGNocm9tZU9TIGtlcm5l
bCA0LjQuMTc0IGFuZCBhZnRlciB0aHJlZSBkYXlzIGl0IHdvcmtzIGZpbmUKcmVnYXJkaW5nIHRo
aXMgcHJvYmxlbSB3aXRoIGFuYWxvZ2l4IGJyaWRnZS4KCldvdWxkIGJlIG5pY2UgaWYgc29tZW9u
ZSB3aXRoIEdQVS9EUk0gcHJvZ3JhbW1pbmcga25vd2xlZGdlIHdvdWxkIGxvb2sKYXQgZGlmZmVy
ZW5jZXMgYmV0d2VlbiB0aGlzIGNocm9tZU9TIGtlcm5lbCBhbmQgbWFpbmxpbmUgdG8gZmluZCB3
aGF0IGlzCmNhdXNlIG9mIHRoZSBwcm9ibGVtLgoKSSB3aWxsIHRyeSB0byBidWlsZCBtYWlubGlu
ZSBrZXJuZWxzIGdvaW5nIGJhY2t3YXJkIGJ5IG1ham9yIHZlcnNpb24KKDUuNCwgNS4zLCA1LjIg
YW5kIHNvIG9uKSB0byB0cnkgdG8gc2VlIGlmIG9uZSBvZiB0aGUgcHJldmlvdXMgZG9lc24ndApo
YXZlIHRoaXMgcHJvYmxlbS4gVGhpcyB3aWxsIHRha2Ugc29tZSB0aW1lIGJlY2F1c2UgcHJvYmxl
bSBhcHBlYXJzCnJhbmRvbWx5LCBzb21ldGltZXMgZmV3IG1pbnV0ZXMgc3RyYWlnaHQgYWZ0ZXIg
Ym9vdCBidXQgc29tZXRpbWVzIGFmdGVyCmRheSBvciB0d28uCgotLSAKUmVnYXJkcwoKPiBUaGFu
ayB5b3UgaGVscAo+IAo+IE9uIFR1ZSwgMjAyMC0wNC0xNCBhdCAxODoxNywgRW5yaWMgQmFsbGV0
Ym8gU2VycmEgd3JvdGU6Cj4gPiBIaSBEb3VnIGFuZCBNaWxhbiwKPiA+IAo+ID4gVGhhbmtzIGZv
ciBwcm92aWRpbmcgdGhpcyBpbmZvcm1hdGlvbi4KPiA+IAo+ID4gTWlzc2F0Z2UgZGUgRG91ZyBB
bmRlcnNvbiA8ZGlhbmRlcnNAY2hyb21pdW0ub3JnPiBkZWwgZGlhIGRsLiwgMTMKPiA+IGTigJlh
YnIuIDIwMjAgYSBsZXMgMTc6MjM6Cj4gPiA+Cj4gPiA+IEhpLAo+ID4gPgo+ID4gPiBPbiBGcmks
IEFwciAxMCwgMjAyMCBhdCAxMjoyOSBQTSBNaWxhbiBQLiBTdGFuacSHIDxtcHNAYXJ2YW50YS5u
ZXQ+IHdyb3RlOgo+ID4gPiA+Cj4gPiA+ID4gSGksCj4gPiA+ID4KPiA+ID4gPiBPbiBGcmksIDIw
MjAtMDQtMTAgYXQgMDg6MjgsIERvdWcgQW5kZXJzb24gd3JvdGU6Cj4gPiA+ID4gPiBIaSwKPiA+
ID4gPiA+Cj4gPiA+ID4gPiBPbiBGcmksIEFwciAxMCwgMjAyMCBhdCA1OjU2IEFNIEVucmljIEJh
bGxldGJvIFNlcnJhCj4gPiA+ID4gPiA8ZWJhbGxldGJvQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPiA+
ID4gPiA+Cj4gPiA+ID4gPiA+IEhpIE1pbGFuLAo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBSaWdo
dCwgdGhpcyBpcyBhbiBhbm5veWluZyBpc3N1ZSBidXQgYWxzbyBrbm93biwgdW5mb3J0dW5hdGVs
eSwgSQo+ID4gPiA+ID4gPiBwZXJzb25hbGx5IGRpZG4ndCBoYXZlIHRpbWUgdG8gbG9vayBhdC4g
YnV0IGl0IGlzIGluIG15IFRPRE8uCj4gPiA+ID4gPgo+ID4gPiA+ID4gUmFuZG9tIHNob3QgaW4g
dGhlIGRhcmssIGJ1dCBhbnkgY2hhbmNlIHNvbWVob3cgeW91ciBQSFkgY2xvY2sgYW5kCj4gPiA+
ID4gPiBQQ0xLIGZvciB0aGUgZURQIGRvbid0IG1hdGNoPyAgSWYgdGhleSBkb24ndCB0aGVuIChJ
SVJDKSB5b3UnbGwgZ2V0Cj4gPiA+ID4gPiByYW5kb20gZmFpbHVyZXMgdG8gYWNjZXNzIGVEUCBy
ZWdpc3RlcnMuCj4gPiA+ID4gPgo+ID4gPiA+ID4gU29tZSBoaXN0b3J5IGluIDxodHRwczovL2Ny
cmV2LmNvbS9jLzQzMzM5Mz4uICBJdCBsb29rcyBsaWtlIHRoZQo+ID4gPiA+ID4gY2hhbmdlcyBp
biB0aGF0IHBhdGNoIGFyZSB1cHN0cmVhbSBidXQgaWYgc29tZXRoaW5nIGVsc2UgaGFwcGVuZWQg
dG8KPiA+ID4gPiA+IG1ha2UgeW91ciBQSFkgYW5kIFBDTEsgbWlzbWF0Y2ggaXQgY291bGQgY2F1
c2Ugc2ltaWxhciBzeW1wdG9tcy4KPiA+ID4gPiA+Cj4gPiA+ID4gPiAuLi5vZiBjb3Vyc2UgaXQn
cyBhbHdheXMgcG9zc2libGUgKHByb2JhYmxlKSB0aGF0IGl0J3Mgc29tZXRoaW5nCj4gPiA+ID4g
PiBkaWZmZXJlbnQsIGJ1dCBzaW5jZSB0aGF0IHdhcyBzdWNoIGEgd2VpcmQgYW5kIGhhcmQtdG8t
dHJhY2stZG93bgo+ID4gPiA+ID4gcHJvYmxlbSBJIGZpZ3VyZWQgSSdkIGF0IGxlYXN0IG1ha2Ug
c3VyZSBpdCB3YXNuJ3QgdGhhdC4KPiA+ID4gPgo+ID4gPiA+IE5vdCBzdXJlIEkgdW5kZXJzdG9v
ZCAoSSdtIG5vdCBncmFwaGljIGhhcmR3YXJlIHByb2dyYW1tZXIpIGJ1dCBJCj4gPiA+ID4gY2hh
bmdlZCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS5kdHNpIGZpbGUgYXJvdW5k
IGxpbmUKPiA+ID4gPiAxMzY3IChjdXJyZW50IG1haW5saW5lIGtlcm5lbCksIHRoaXM6Cj4gPiA+
ID4gICAgIGFzc2lnbmVkLWNsb2NrcyA9Cj4gPiA+ID4gICAgICAgPCZjcnUgUExMX0dQTEw+LCA8
JmNydSBQTExfQ1BMTD4sCj4gPiA+ID4gICAgICAgPCZjcnUgUExMX05QTEw+LAo+ID4gPiA+ICAg
ICAgIDwmY3J1IEFDTEtfUEVSSUhQPiwgPCZjcnUgSENMS19QRVJJSFA+LAo+ID4gPiA+ICAgICAg
IDwmY3J1IFBDTEtfUEVSSUhQPiwKPiA+ID4gPiAgICAgICA8JmNydSBBQ0xLX1BFUklMUDA+LCA8
JmNydSBIQ0xLX1BFUklMUDA+LAo+ID4gPiA+ICAgICAgIDwmY3J1IFBDTEtfUEVSSUxQMD4sIDwm
Y3J1IEFDTEtfQ0NJPiwKPiA+ID4gPiAgICAgICA8JmNydSBIQ0xLX1BFUklMUDE+LCA8JmNydSBQ
Q0xLX1BFUklMUDE+LAo+ID4gPiA+ICAgICAgIDwmY3J1IEFDTEtfVklPPiwgPCZjcnUgQUNMS19I
RENQPiwKPiA+ID4gPiAgICAgICA8JmNydSBBQ0xLX0dJQ19QUkU+LAo+ID4gPiA+ICAgICAgIDwm
Y3J1IFBDTEtfRERSPjsKPiA+ID4gPiAgICAgYXNzaWduZWQtY2xvY2stcmF0ZXMgPQo+ID4gPiA+
ICAgICAgICA8NTk0MDAwMDAwPiwgIDw4MDAwMDAwMDA+LAo+ID4gPiA+ICAgICAgIDwxMDAwMDAw
MDAwPiwKPiA+ID4gPiAgICAgICAgPDE1MDAwMDAwMD4sICAgPDc1MDAwMDAwPiwKPiA+ID4gPiAg
ICAgICAgIDwzNzUwMDAwMD4sCj4gPiA+ID4gICAgICAgIDwxMDAwMDAwMDA+LCAgPDEwMDAwMDAw
MD4sCj4gPiA+ID4gICAgICAgICA8NTAwMDAwMDA+LCA8NjAwMDAwMDAwPiwKPiA+ID4gPiAgICAg
ICAgPDEwMDAwMDAwMD4sICAgPDUwMDAwMDAwPiwKPiA+ID4gPiAgICAgICAgPDQwMDAwMDAwMD4s
IDw0MDAwMDAwMDA+LAo+ID4gPiA+ICAgICAgICA8MjAwMDAwMDAwPiwKPiA+ID4gPiAgICAgICAg
PDIwMDAwMDAwMD47Cj4gPiA+ID4KPiA+ID4gPiBhbmQgY2hhbmdlZCAgPDU5NDAwMDAwMD4gdG8g
IDw2MDAwMDAwMDA+Cj4gPiA+ID4gYnVpbGQga2VybmVsIGFuZCBpdCBib290cyBidXQgZGlzcGxh
eSBpcyBibGFuayBhZnRlciBib290Lgo+ID4gPgo+ID4gPiBJIHRoaW5rIGtldmluIGFscmVhZHkg
b3ZlcnJpZGVzIHRob3NlIGNsb2NrcyBpbiBpdHMgZHRzLiAgSSB3YXMgbW9yZQo+ID4gPiB0aGlu
a2luZyBvZiBsb29raW5nIGF0ICIvc3lzL2tlcm5lbC9kZWJ1Zy9jbGsvY2xrX3N1bW1hcnkiIGFu
ZCBzZWVpbmcKPiA+ID4gaWYgdGhlcmUgd2FzIGEgY2xvY2sgbWlzbWF0Y2guCj4gPiA+Cj4gPiAK
PiA+IEFsdGhvdWdoIEkgZG9uJ3QgZGlzY2FyZCB0aGF0IHRoaXMgd291bGQgYmUgdGhlIHByb2Js
ZW0sIEkgdGhpbmsgaXQgaXMKPiA+IG1vcmUgYSByYWNpbmcgcHJvYmxlbSB3aXRoIHRoZSB0cmFj
a2luZyBzdGF0dXMgb2YgdGhlIGNydGMgYWN0aXZlIGFuZAo+ID4gc2VsZl9yZWZyZXNoX2FjdGl2
ZSB2YXJpYWJsZXMgZHVyaW5nIHRoZSBzdXNwZW5kIHBhdGggYW5kIFBTUi4gSS5lLCBpZgo+ID4g
SSBhcHBseSB0aGUgZm9sbG93aW5nIHBhdGNoIHdoaWNoIHNldHMgYSBkZWxheSBvZiAxMDBtcyBp
biB0aGUgZGVsYXllZAo+ID4gZW50cnkgd29yayB0byBlbnRyeSB0aGUgUFNSIHN0YXRlIChzaW1p
bGFyIHRvIHdoYXQgd2UgaGFkIGJlZm9yZSB0aGUKPiA+IGNvbW1pdCBJIG1lbnRpb25lZCksIHN1
c3BlbmQgcmVzdW1lIHdvcmtzIGFzIGV4cGVjdGVkIGZvciBtZS4KPiA+IAo+ID4gQEAgLTIxOCw3
ICsyMzQsNyBAQCB2b2lkIGRybV9zZWxmX3JlZnJlc2hfaGVscGVyX2FsdGVyX3N0YXRlKHN0cnVj
dAo+ID4gZHJtX2F0b21pY19zdGF0ZSAqc3RhdGUpCj4gPiAgICAgICAgICAgICAgICAgbXV0ZXhf
dW5sb2NrKCZzcl9kYXRhLT5hdmdfbXV0ZXgpOwo+ID4gCj4gPiAgICAgICAgICAgICAgICAgbW9k
X2RlbGF5ZWRfd29yayhzeXN0ZW1fd3EsICZzcl9kYXRhLT5lbnRyeV93b3JrLAo+ID4gLSAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgbXNlY3NfdG9famlmZmllcyhkZWxheSkpOwo+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbXNlY3NfdG9famlmZmllcygxMDApKTsK
PiA+ICAgICAgICAgfQo+ID4gIH0KPiA+IAo+ID4gU29tZSBtb3JlIGluZm8gaXMgdGhhdCBJIHdh
cyBub3QgYWJsZSB0byByZXByb2R1Y2UgdGhlIHByb2JsZW0gYnkKPiA+IHRyaWdnZXJpbmcgYW4g
J2VjaG8gbWVtID4gL3N5cy9wb3dlci9zdGF0ZScgVGhlIG9ubHkgd2F5IEkgY2FuCj4gPiByZXBy
b2R1Y2UgdGhlIGlzc3VlIGlzIGRvaW5nIGFzICdzeXN0ZW1jdGwgc3VwZW5kJyBjb21tYW5kLCB3
aGljaCBpZiBJCj4gPiBhbSBub3QgbWlzdGFrZW4gZG9lcyBhIERQTVMgb2ZmIGJlZm9yZSBzdXNw
ZW5kaW5nLgo+ID4gCj4gPiAtIEVucmljCj4gPiAKPiA+ID4gLURvdWcKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
