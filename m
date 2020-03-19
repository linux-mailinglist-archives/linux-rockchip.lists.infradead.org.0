Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D7A218B3B8
	for <lists+linux-rockchip@lfdr.de>; Thu, 19 Mar 2020 13:49:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sc0BymnlzbjpmMY7I4j8su1uKChNXUoAMLwX+12G0D0=; b=q8a6hhvYAyGhsa
	DYnO0aIcxhVeuyd7hlMLGvrg/7OKva+gzIC+2K6fuHv9+2MsAynwvgJ4Sf1HjkzJxCFr02JP3TA2V
	MUUk07hoCykHqdBtGxqsMPNKQsRTzXAb+8B72mb9NN/lxerTQ/D/H7IWMHxfzN+mxH5gyxEparZBs
	1zEYO+IeXX9rleRXVCh0L5k05E73En+C8BTP2ajNNnBfviY7aDW5izu0O36mdv1zLEZo3lfkiGDiz
	wTUnHRCy4okLm0bcGUlspc/ipQ1ztqYZ7cJXX3pRPVL4tYzTNcMClTHiSSauhDzN+SLyEJLMM8M9K
	QIDRgRahqJc4TvTSL9xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEuc6-0005qn-1x; Thu, 19 Mar 2020 12:49:30 +0000
Received: from static-213-198-238-194.adsl.eunet.rs ([213.198.238.194]
 helo=fx.arvanta.net)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEuc2-0005qT-2I
 for linux-rockchip@lists.infradead.org; Thu, 19 Mar 2020 12:49:27 +0000
Received: from arya.arvanta.net (arya.arvanta.net [10.5.1.6])
 by fx.arvanta.net (Postfix) with ESMTP id D6DC56967;
 Thu, 19 Mar 2020 13:00:16 +0100 (CET)
Date: Thu, 19 Mar 2020 13:00:16 +0100
From: Milan =?utf-8?Q?P=2E_Stani=C4=87?= <mps@arvanta.net>
To: Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: PROBLEM: =?utf-8?Q?mmc=5Fselect=5Fhs40?=
 =?utf-8?B?MGVzIGZhaWxlZCwgZXJyb3IgLTExMOOAkOivt+azqOaEj++8jOmCruS7tg==?=
 =?utf-8?B?55SxbGludXgtbW1jLW93bmVyQHZnZXIua2VybmVsLm9yZ+S7o+WPkeOAkQ==?=
Message-ID: <20200319120016.GA31191@arya.arvanta.net>
References: <20200301220242.GA8276@arya.arvanta.net>
 <20200318214917.GA9112@arya.arvanta.net>
 <5922bbd7-e91b-d144-6d44-2632cbd11c78@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5922bbd7-e91b-d144-6d44-2632cbd11c78@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_054926_331131_91F73427 
X-CRM114-Status: GOOD (  24.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, linux-mmc@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgU2hhd24sCgpPbiBUaHUsIDIwMjAtMDMtMTkgYXQgMTE6MTEsIFNoYXduIExpbiB3cm90ZToK
PiBIaSBNaWxhbgo+IAo+IFsrbGludXgtcm9ja2NoaXAgdG8gc2VlIGlmIHNvbWVvbmUgaGFzIGEg
U2Ftc3VuZyBjaHJvbWVib29rIG9uZSBwbHVzCj4gYW5kIGNvdWxkIGNvbmZpcm0gaWYgaXQgd29y
a3NdCj4gCj4gT24gMjAyMC8zLzE5IDU6NDksIE1pbGFuIFAuIFN0YW5pxIcgd3JvdGU6Cj4gPiBI
ZWxsbywKPiA+IAo+ID4gU29ycnkgdG8gYW5ub3kgYWdhaW4sIGJ1dCBjb3VsZCB5b3UgdGVsbCBt
ZSBpZiBJIHNlbnQgdGhpcyBidWcgcmVwb3J0Cj4gPiB0byByaWdodCBtYWlsIGFkZHJlc3Mgb3Ig
SSBzaG91bGQgc2VuZCBpdCBzb21ld2hlcmUgZWxzZS4KPiA+IAo+ID4gQWxzbywgZGlkIEkgc2Vu
dCBidWcgcmVwb3J0IGNvcnJlY3RseSBvciBJIGRpZCBzb21lIG1pc3Rha2VzIHdoaWNoCj4gPiBj
YXVzZWQgaXQgdG8gYmUgaWdub3JlZC4KPiA+IAo+ID4gLS0gVElBIE9uIFN1biwgMjAyMC0wMy0w
MSBhdCAyMzowMiwgTWlsYW4gUC4gU3RhbmnEhyB3cm90ZToKPiA+ID4gSGVsbG8sCj4gPiA+IAo+
ID4gPiBJJ20gbm90IG5hdGl2ZSBFbmdsaXNoIHNwZWFrZXIgYW5kIEknbSBzZWxmIHRhdWdodCBp
biBFbmdsaXNoIHNvIHNvcnJ5Cj4gPiA+IGlmIGRvIG5vdCB3cml0ZSBvciBleHByZXNzIGNvcnJl
Y3RseS4gQW5kIHNvcnJ5IGlmIEkgcG9zdGVkIGJ1ZyByZXBvcnQKPiA+ID4gdG8gd3JvbmcgYWRk
cmVzcy4KPiA+ID4gCj4gPiA+IEknbSBydW5uaW5nIGxpbnV4IDUuNi4wLXJjMyB3aXRob3V0IGFu
eSBwYXRjaGVzIG9uIFNhbXN1bmcgY2hyb21lYm9vawo+ID4gPiBvbmUgcGx1cywgQXJtNjQgcm9j
a2NoaXAgcmszMzk5IGJhc2VkIG1vZGVsIG5hbWU6Cj4gPiA+IE1hY2hpbmUgbW9kZWw6IEdvb2ds
ZSBLZXZpbgo+ID4gPiAKPiA+ID4gSSBidWlsZCBrZXJuZWxzIGZyb20gdXBzdHJlYW0gZ2l0Lmtl
cm5lbC5vcmcgZm9yIHRoaXMgbWFjaGluZSBmb3Igc29tZQo+ID4gPiB0aW1lIChpaXJjLCBmcm9t
IDUuMi4xIGFuZCB1cCkgYnV0IEknbSBnZXR0aW5nIGVycm9yIG1lc3NhZ2VzIGluIGtlcm5lbAo+
ID4gPiBhZnRlciBtYWNoaW5lIHJlc3VtZXMgZnJvbSBzdXNwZW5kLXRvLXJhbS4KPiAKPiBJdCBz
b3VuZHMgdG8gbWUgc3VzcGVuZC10by1yYW0gbmV2ZXIgd29ya3MgZm9yIHRoaXMgbWFjaGluZSwg
YXQgbGVhc3QKPiBzaW5jZSA1LjIuMS4gQW0gSSByaWdodD8KClNvcnJ5IGlmIEkgd2FzIG5vdCBj
bGVhciBpbiBwcmV2aW91cyBtYWlsLiBzdXNwZW5kLXRvLXJhbSBhbmQgcmVzdW1lIHdvcmtzCmZp
bmUgaWYgdGhlIG1hY2hpbmUgZG9lc24ndCBtb3VudCBpbnRlcm5hbCBlbW1jIGNhcmQgdG8gdXNl
IGl0IGluIHdheS4KCklmIGl0IGJvb3RzIGZyb20gZXh0ZXJuYWwgbW1jIGNhcmQgb3Igc3NkIGRp
c2sgYXR0YWNoZWQgb3ZlciB1c2ItYwppbnRlcmZhY2UgYW5kIHVzZSByb290IGZpbGVzeXN0ZW0g
KG9yIGFueSBvdGhlciBmaWxlc3lzdGVtLCAvaG9tZSBmb3IKZXhhbXBsZSkgb24gdGhlbSAoZXh0
ZXJuYWwgbW1jIG9yIGRpc2sgb24gdXNiLWMpIGl0IGNhbiBnbyBudW1lcm91cwp0aW1lcyB0byBz
dXNwZW5kLXJlc3VtZSBjeWNsZXMgd2l0aG91dCBhbnkgcHJvYmxlbS4KCkJ1dCBpZiBhbnkgZmls
ZXN5c3RlbSBmcm9tIGVtbWMgbW91bnRlZCB0aGVuIGluIGNhbiBzdXNwZW5kIGFuZCBldmVuCnJl
c3VtZSwgYnV0IHdoZW4gcmVzdW1lZCBhZnRlciBzb21lIHJhbmRvbSB0aW1lIGl0IHN0YXJ0IHRv
IG1ha2UKcHJvYmxlbXM6IHByb2dyYW1zIHNlZ2ZhdWx0LCBjYW50IHJlYWQgb3Igd3JpdGUgZmls
ZXMgYW5kIHNpbWlsYXIKaXNzdWUuCgpBcyBJIHdyb3RlIGluIHByZXZpb3VzIG1haWwgSSBjYW4g
YXBwbHkgcGF0Y2hlcywgYnVpbGQga2VybmVsIGFuZAoobWF5YmUpIHR3ZWFrIHNvbWUgcGFyYW1l
dGVycyBpbiBrZXJuZWwgc291cmNlIChpZiBJIGtub3cgd2hpY2ggb25lCnNob3VsZCBoZWxwIG1l
KSB0byBoZWxwIHN1YnN5c3RlbSBkZXZlbG9wZXJzIHRvIGZpeCB0aGlzIHByb2JsZW0uCgotLSAK
dGhhbmtzCgo+ID4gPiBleGNlcnB0IGZyb20gZG1lc2cgb3V0cHV0Ogo+ID4gPiAtLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLQo+ID4gPiBSZXN0YXJ0aW5nIHRhc2tzIC4uLiBkb25lLgo+ID4gPiBQTTogc3VzcGVuZCBl
eGl0Cj4gPiA+IG1tY19ob3N0IG1tYzA6IEJ1cyBzcGVlZCAoc2xvdCAwKSA9IDQwMDAwMEh6IChz
bG90IHJlcSA0MDAwMDBIeiwgYWN0dWFsIDQwMDAwMEhaIGRpdiA9IDApCj4gPiA+IG1tYzE6IG1t
Y19zZWxlY3RfaHM0MDBlcyBmYWlsZWQsIGVycm9yIC0xMTAKPiA+ID4gbW1jMTogZXJyb3IgLTEx
MCBkb2luZyBydW50aW1lIHJlc3VtZQo+ID4gPiBtbWMxOiBHb3QgZGF0YSBpbnRlcnJ1cHQgMHgw
MDAwMDAwMiBldmVuIHRob3VnaCBubyBkYXRhIG9wZXJhdGlvbiB3YXMgaW4gcHJvZ3Jlc3MuCj4g
PiA+IG1tYzE6IHNkaGNpOiA9PT09PT09PT09PT0gU0RIQ0kgUkVHSVNURVIgRFVNUCA9PT09PT09
PT09PQo+ID4gPiBtbWMxOiBzZGhjaTogU3lzIGFkZHI6ICAweDAwMDAwMDA4IHwgVmVyc2lvbjog
IDB4MDAwMDEwMDIKPiA+ID4gbW1jMTogc2RoY2k6IEJsayBzaXplOiAgMHgwMDAwNzIwMCB8IEJs
ayBjbnQ6ICAweDAwMDAwMDA4Cj4gPiA+IG1tYzE6IHNkaGNpOiBBcmd1bWVudDogIDB4MDAwMDAw
MDAgfCBUcm4gbW9kZTogMHgwMDAwMDAyMwo+ID4gPiBtbWMxOiBzZGhjaTogUHJlc2VudDogICAw
eDFmZmYwMDAxIHwgSG9zdCBjdGw6IDB4MDAwMDAwMzUKPiA+ID4gbW1jMTogc2RoY2k6IFBvd2Vy
OiAgICAgMHgwMDAwMDAwYiB8IEJsayBnYXA6ICAweDAwMDAwMDgwCj4gPiA+IG1tYzE6IHNkaGNp
OiBXYWtlLXVwOiAgIDB4MDAwMDAwMDAgfCBDbG9jazogICAgMHgwMDAwYmMwNwo+ID4gPiBtbWMx
OiBzZGhjaTogVGltZW91dDogICAweDAwMDAwMDBkIHwgSW50IHN0YXQ6IDB4MDAwMDAwMDAKPiA+
ID4gbW1jMTogc2RoY2k6IEludCBlbmFiOiAgMHgwM2ZmMDAwYiB8IFNpZyBlbmFiOiAweDAzZmYw
MDBiCj4gPiA+IG1tYzE6IHNkaGNpOiBBQ21kIHN0YXQ6IDB4MDAwMDAwMDAgfCBTbG90IGludDog
MHgwMDAwMDAwMAo+ID4gPiBtbWMxOiBzZGhjaTogQ2FwczogICAgICAweDQ0ZWRjODgwIHwgQ2Fw
c18xOiAgIDB4ODAxMDIwZjcKPiA+ID4gbW1jMTogc2RoY2k6IENtZDogICAgICAgMHgwMDAwMGMx
YSB8IE1heCBjdXJyOiAweDAwMDAwMDAwCj4gPiA+IG1tYzE6IHNkaGNpOiBSZXNwWzBdOiAgIDB4
MDAwMDAwMDAgfCBSZXNwWzFdOiAgMHgzNzMzMDBiZAo+ID4gPiBtbWMxOiBzZGhjaTogUmVzcFsy
XTogICAweDM1MzAzMDMwIHwgUmVzcFszXTogIDB4MDAwMDAwMDAKPiA+ID4gbW1jMTogc2RoY2k6
IEhvc3QgY3RsMjogMHgwMDAwMDAwMAo+ID4gPiBtbWMxOiBzZGhjaTogQURNQSBFcnI6ICAweDAw
MDAwMDAwIHwgQURNQSBQdHI6IDB4ZWQ0MWUyMDAKPiA+ID4gLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiA+ID4g
Cj4gPiA+IEkgaW52b2tlIHN1c3BlbmQtdG8tcmFtIGJ5IGBlY2hvIG1lbSA+IC9zeXMvcG93ZXIv
c3RhdGVgIGZyb20gQUNQSSBwb3dlcgo+ID4gPiBhbmQgTElEIGJ1dHRvbiBoYW5kbGVycy4KPiA+
ID4gCj4gPiA+IFRoaXMgb25seSBoYXBwZW5zIHdoZW4gSSBib290IGFuZCB1c2UgaW50ZXJuYWwg
ZW1tYyBjYXJkIGFuZCBuZXZlciB3aGVuCj4gPiA+IGJvb3QgYW5kIHVzZSBleHRlcm5hbCBtbWMg
Y2FyZC4KPiA+ID4gCj4gPiA+IElmIHN1c3BlbmQtdG8tcmFtIGlzIG5vdCBpbnZva2VkIChtYWNo
aW5lIGlzIGFsd2F5cyBpbiBub3JtYWwgc3RhdGUpCj4gPiA+IHRoaXMgcHJvYmxlbSBuZXZlciBo
YXBwZW4gKG9yIEkgbWlzc2VkIGl0IHNvbWVob3cpLgo+ID4gPiAKPiA+ID4gSSdtIGF0dGFjaGlu
ZyBrZXJuZWwgLmNvbmZpZyAoZmlsZSBjb25maWctNS42LjAtcmMzLTEtZ3J1LmNvbmYpIHdoaWNo
Cj4gPiA+IHVzZSB0byBidWlsZCBrZXJuZWwsIG91dHB1dCBvZiB0aGUgYGF3ayAtZiBzY3JpcHRz
L3Zlcl9saW51eGAgYXMgZmlsZQo+ID4gPiB2ZXJfbGludXgudHh0IGFuZCAgb3V0cHV0IG9mIGRt
ZXNnIGFzIGZpbGUgbW1jLWVyci50eHQgKGZyb20gd2hpY2ggSQo+ID4gPiBkZWxldGVkIHdpZmkg
Y29ubmVjdGlvbiBsb2dzKS4KPiA+ID4gCj4gPiA+IFNvcnJ5IGlmIEkgZGlkIHNvbWV0aGluZyBi
YWQgb3Igd3Jvbmcgd2l0aCB0aGlzIGJ1ZyByZXBvcnQsIEkgZG9uJ3QgaGF2ZQo+ID4gPiBtdWNo
IGV4cGVyaWVuY2Ugd2l0aCBidWcgcmVwb3J0aW5nLCBlc3BlY2lhbGx5IGZvciBrZXJuZWwuCj4g
PiA+IAo+ID4gPiBJJ20gcmVhZHkgdG8gc2VuZCB5b3UgbW9yZSBkYXRhLCBhbmQgaW52ZXN0aWdh
dGUgdGhpcyBtb3JlLCBhcHBseQo+ID4gPiBwYXRjaGVzIGFuZCByZWJ1aWxkIGtlcm5lbCBvciB3
aGF0ZXZlciB5b3UgYXNrIG1lIChvZiBjb3Vyc2UgaWYgbXkKPiA+ID4gdW5kZXJzdGFuZGluZyBh
bmQga25vd2xlZGdlIGlzIGVub3VnaCBmb3IgdGhpcyBqb2IpLgo+ID4gPiAKPiA+ID4gVGhhbmsg
aW4gYWR2YW5jZQo+ID4gPiAKPiA+ID4gLS0KPiA+ID4gS2luZCByZWdhcmRzCj4gPiA+IAo+ID4g
Wy4uLl0KPiA+IAo+ID4gCj4gCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
