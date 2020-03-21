Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B88A418E486
	for <lists+linux-rockchip@lfdr.de>; Sat, 21 Mar 2020 21:47:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NokCnHBOxmz54iUmsk+FAp97KfqM6iL4djArhFlsCYs=; b=MfKQEa8iC3qQNu
	t18MSKKDe7M0wTIVa9c5OXzPrkJu4r0hmbROWSeZok6WhTR2zvE5rTzwZlvaLM6rvQfQPpxgNpgGn
	Q1w+aSXwGQqIE1YnLt/gr410s1W17UDVl69miSBhn1u0XbWTOmDAjpiMNIb4MjXOhx1BOO0ZHd/6u
	omrk4c/LN9eHrWqffOOhTfzgCEaDiFxQejfadXdEhhi3mHV3KPPSZ9xoyT3qEAfg/c8OIvHvTY+V+
	tef/PrWlx/Uzp4i2lIrmKeKgi/P820eGCiRqt+vQoV0+OXDPVc+gXnP8KofrnQaOx/fN3jSJkZvM/
	vx9IGloo81vriAWHVOEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFl1K-0000UI-GZ; Sat, 21 Mar 2020 20:47:02 +0000
Received: from static-213-198-238-194.adsl.eunet.rs ([213.198.238.194]
 helo=fx.arvanta.net)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFl1F-0000TD-SW
 for linux-rockchip@lists.infradead.org; Sat, 21 Mar 2020 20:47:00 +0000
Received: from arya.arvanta.net (arya.arvanta.net [10.5.1.6])
 by fx.arvanta.net (Postfix) with ESMTP id 2EB22421F;
 Sat, 21 Mar 2020 21:46:52 +0100 (CET)
Date: Sat, 21 Mar 2020 21:46:52 +0100
From: Milan =?utf-8?Q?P=2E_Stani=C4=87?= <mps@arvanta.net>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: PROBLEM: =?utf-8?Q?mmc=5Fselect=5Fhs40?=
 =?utf-8?B?MGVzIGZhaWxlZCwgZXJyb3IgLTExMOOAkOivt+azqOaEj++8jOmCruS7tg==?=
 =?utf-8?B?55SxbGludXgtbW1jLW93bmVyQHZnZXIua2VybmVsLm9yZ+S7o+WPkeOAkQ==?=
Message-ID: <20200321204652.GA21002@arya.arvanta.net>
References: <20200301220242.GA8276@arya.arvanta.net>
 <20200318214917.GA9112@arya.arvanta.net>
 <5922bbd7-e91b-d144-6d44-2632cbd11c78@rock-chips.com>
 <158bd6f5-2430-19bd-28ef-e18d67becaf3@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158bd6f5-2430-19bd-28ef-e18d67becaf3@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200321_134658_181846_159AD5A6 
X-CRM114-Status: GOOD (  22.32  )
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
 Shawn Lin <shawn.lin@rock-chips.com>, linux-mmc@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGksCgpPbiBUaHUsIDIwMjAtMDMtMTkgYXQgMTI6MjgsIFJvYmluIE11cnBoeSB3cm90ZToKPiBI
aSBTaGF3biwKPiAKPiBPbiAyMDIwLTAzLTE5IDM6MTEgYW0sIFNoYXduIExpbiB3cm90ZToKPiA+
IEhpIE1pbGFuCj4gPiAKPiA+IFsrbGludXgtcm9ja2NoaXAgdG8gc2VlIGlmIHNvbWVvbmUgaGFz
IGEgU2Ftc3VuZyBjaHJvbWVib29rIG9uZSBwbHVzCj4gPiBhbmQgY291bGQgY29uZmlybSBpZiBp
dCB3b3Jrc10KPiAKPiBGV0lXIEkndmUgYWxzbyB0cmllZCBzdXNwZW5kIG9uIG15IE5hbm9QQy1U
NCBhbmQgc2VlbiB0aGF0IHRoZSBlTU1DIChhbHNvCj4gSFM0MDAtRVMpIGZhaWxzIHRvIGNvbWUg
YmFjayBwcm9wZXJseSBvbiByZXN1bWUgKHRodXMgcmVzdW1lIG5ldmVyIGNvbXBsZXRlcwo+IGR1
ZSB0byB0aGUgbWlzc2luZyByb290IGZpbGVzeXN0ZW0pLiBJSVJDIGl0IG1pZ2h0IGV2ZW4gaGF2
ZSBiZWVuCj4gcmVwcm9kdWNpYmxlIHdpdGggc3VzcGVuZC10by1pZGxlLCBidXQgSSdkIGhhdmUg
dG8gZG91YmxlLWNoZWNrIHRoYXQuCiAKSSBmb3Jnb3QgdG8gdGVsbCB0aGF0IGVtbWMgd29ya2Vk
IHdpdGhvdXQgcHJvYmxlbSBvbiB0aGlzIG1hY2hpbmUgd2l0aApDaHJvbWVPUyBrZXJuZWwgNC40
Lnh4IGRvd25sb2FkZWQgZnJvbQpodHRwczovL2Nocm9taXVtLmdvb2dsZXNvdXJjZS5jb20vY2hy
b21pdW1vcy90aGlyZF9wYXJ0eS9rZXJuZWwvKy9jaHJvbWVvcy00LjQKYW5kIHdpdGggcGF0Y2hl
cyBmcm9tCmh0dHBzOi8vZ2l0aHViLmNvbS9hcmNobGludXhhcm0vUEtHQlVJTERzL3RyZWUvbWFz
dGVyL2NvcmUvbGludXgtZ3J1CmZvciBhYm91dCB0d28geWVhcnMgKGlpcmMpLgpQcm9ibGVtIHN0
YXJ0ZWQgd2hlbiBJIHN3aXRjaGVkIHRvIG1haW5saW5lIGtlcm5lbHMsIHNvbWV3aGVyZSBhcm91
bmQKNS4xLnh4Cgo+IFJvYmluLgo+IAo+ID4gT24gMjAyMC8zLzE5IDU6NDksIE1pbGFuIFAuIFN0
YW5pxIcgd3JvdGU6Cj4gPiA+IEhlbGxvLAo+ID4gPiAKPiA+ID4gU29ycnkgdG8gYW5ub3kgYWdh
aW4sIGJ1dCBjb3VsZCB5b3UgdGVsbCBtZSBpZiBJIHNlbnQgdGhpcyBidWcgcmVwb3J0Cj4gPiA+
IHRvIHJpZ2h0IG1haWwgYWRkcmVzcyBvciBJIHNob3VsZCBzZW5kIGl0IHNvbWV3aGVyZSBlbHNl
Lgo+ID4gPiAKPiA+ID4gQWxzbywgZGlkIEkgc2VudCBidWcgcmVwb3J0IGNvcnJlY3RseSBvciBJ
IGRpZCBzb21lIG1pc3Rha2VzIHdoaWNoCj4gPiA+IGNhdXNlZCBpdCB0byBiZSBpZ25vcmVkLgo+
ID4gPiAKPiA+ID4gLS0gVElBIE9uIFN1biwgMjAyMC0wMy0wMSBhdCAyMzowMiwgTWlsYW4gUC4g
U3RhbmnEhyB3cm90ZToKPiA+ID4gPiBIZWxsbywKPiA+ID4gPiAKPiA+ID4gPiBJJ20gbm90IG5h
dGl2ZSBFbmdsaXNoIHNwZWFrZXIgYW5kIEknbSBzZWxmIHRhdWdodCBpbiBFbmdsaXNoIHNvIHNv
cnJ5Cj4gPiA+ID4gaWYgZG8gbm90IHdyaXRlIG9yIGV4cHJlc3MgY29ycmVjdGx5LiBBbmQgc29y
cnkgaWYgSSBwb3N0ZWQgYnVnIHJlcG9ydAo+ID4gPiA+IHRvIHdyb25nIGFkZHJlc3MuCj4gPiA+
ID4gCj4gPiA+ID4gSSdtIHJ1bm5pbmcgbGludXggNS42LjAtcmMzIHdpdGhvdXQgYW55IHBhdGNo
ZXMgb24gU2Ftc3VuZyBjaHJvbWVib29rCj4gPiA+ID4gb25lIHBsdXMsIEFybTY0IHJvY2tjaGlw
IHJrMzM5OSBiYXNlZCBtb2RlbCBuYW1lOgo+ID4gPiA+IE1hY2hpbmUgbW9kZWw6IEdvb2dsZSBL
ZXZpbgo+ID4gPiA+IAo+ID4gPiA+IEkgYnVpbGQga2VybmVscyBmcm9tIHVwc3RyZWFtIGdpdC5r
ZXJuZWwub3JnIGZvciB0aGlzIG1hY2hpbmUgZm9yIHNvbWUKPiA+ID4gPiB0aW1lIChpaXJjLCBm
cm9tIDUuMi4xIGFuZCB1cCkgYnV0IEknbSBnZXR0aW5nIGVycm9yIG1lc3NhZ2VzIGluIGtlcm5l
bAo+ID4gPiA+IGFmdGVyIG1hY2hpbmUgcmVzdW1lcyBmcm9tIHN1c3BlbmQtdG8tcmFtLgo+ID4g
Cj4gPiBJdCBzb3VuZHMgdG8gbWUgc3VzcGVuZC10by1yYW0gbmV2ZXIgd29ya3MgZm9yIHRoaXMg
bWFjaGluZSwgYXQgbGVhc3QKPiA+IHNpbmNlIDUuMi4xLiBBbSBJIHJpZ2h0Pwo+ID4gCj4gPiA+
ID4gCj4gPiA+ID4gZXhjZXJwdCBmcm9tIGRtZXNnIG91dHB1dDoKPiA+ID4gPiAtLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLQo+ID4gPiA+IFJlc3RhcnRpbmcgdGFza3MgLi4uIGRvbmUuCj4gPiA+ID4gUE06IHN1c3Bl
bmQgZXhpdAo+ID4gPiA+IG1tY19ob3N0IG1tYzA6IEJ1cyBzcGVlZCAoc2xvdCAwKSA9IDQwMDAw
MEh6IChzbG90IHJlcSA0MDAwMDBIeiwKPiA+ID4gPiBhY3R1YWwgNDAwMDAwSFogZGl2ID0gMCkK
PiA+ID4gPiBtbWMxOiBtbWNfc2VsZWN0X2hzNDAwZXMgZmFpbGVkLCBlcnJvciAtMTEwCj4gPiA+
ID4gbW1jMTogZXJyb3IgLTExMCBkb2luZyBydW50aW1lIHJlc3VtZQo+ID4gPiA+IG1tYzE6IEdv
dCBkYXRhIGludGVycnVwdCAweDAwMDAwMDAyIGV2ZW4gdGhvdWdoIG5vIGRhdGEKPiA+ID4gPiBv
cGVyYXRpb24gd2FzIGluIHByb2dyZXNzLgo+ID4gPiA+IG1tYzE6IHNkaGNpOiA9PT09PT09PT09
PT0gU0RIQ0kgUkVHSVNURVIgRFVNUCA9PT09PT09PT09PQo+ID4gPiA+IG1tYzE6IHNkaGNpOiBT
eXMgYWRkcjrCoCAweDAwMDAwMDA4IHwgVmVyc2lvbjrCoCAweDAwMDAxMDAyCj4gPiA+ID4gbW1j
MTogc2RoY2k6IEJsayBzaXplOsKgIDB4MDAwMDcyMDAgfCBCbGsgY250OsKgIDB4MDAwMDAwMDgK
PiA+ID4gPiBtbWMxOiBzZGhjaTogQXJndW1lbnQ6wqAgMHgwMDAwMDAwMCB8IFRybiBtb2RlOiAw
eDAwMDAwMDIzCj4gPiA+ID4gbW1jMTogc2RoY2k6IFByZXNlbnQ6wqDCoCAweDFmZmYwMDAxIHwg
SG9zdCBjdGw6IDB4MDAwMDAwMzUKPiA+ID4gPiBtbWMxOiBzZGhjaTogUG93ZXI6wqDCoMKgwqAg
MHgwMDAwMDAwYiB8IEJsayBnYXA6wqAgMHgwMDAwMDA4MAo+ID4gPiA+IG1tYzE6IHNkaGNpOiBX
YWtlLXVwOsKgwqAgMHgwMDAwMDAwMCB8IENsb2NrOsKgwqDCoCAweDAwMDBiYzA3Cj4gPiA+ID4g
bW1jMTogc2RoY2k6IFRpbWVvdXQ6wqDCoCAweDAwMDAwMDBkIHwgSW50IHN0YXQ6IDB4MDAwMDAw
MDAKPiA+ID4gPiBtbWMxOiBzZGhjaTogSW50IGVuYWI6wqAgMHgwM2ZmMDAwYiB8IFNpZyBlbmFi
OiAweDAzZmYwMDBiCj4gPiA+ID4gbW1jMTogc2RoY2k6IEFDbWQgc3RhdDogMHgwMDAwMDAwMCB8
IFNsb3QgaW50OiAweDAwMDAwMDAwCj4gPiA+ID4gbW1jMTogc2RoY2k6IENhcHM6wqDCoMKgwqDC
oCAweDQ0ZWRjODgwIHwgQ2Fwc18xOsKgwqAgMHg4MDEwMjBmNwo+ID4gPiA+IG1tYzE6IHNkaGNp
OiBDbWQ6wqDCoMKgwqDCoMKgIDB4MDAwMDBjMWEgfCBNYXggY3VycjogMHgwMDAwMDAwMAo+ID4g
PiA+IG1tYzE6IHNkaGNpOiBSZXNwWzBdOsKgwqAgMHgwMDAwMDAwMCB8IFJlc3BbMV06wqAgMHgz
NzMzMDBiZAo+ID4gPiA+IG1tYzE6IHNkaGNpOiBSZXNwWzJdOsKgwqAgMHgzNTMwMzAzMCB8IFJl
c3BbM106wqAgMHgwMDAwMDAwMAo+ID4gPiA+IG1tYzE6IHNkaGNpOiBIb3N0IGN0bDI6IDB4MDAw
MDAwMDAKPiA+ID4gPiBtbWMxOiBzZGhjaTogQURNQSBFcnI6wqAgMHgwMDAwMDAwMCB8IEFETUEg
UHRyOiAweGVkNDFlMjAwCj4gPiA+ID4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiA+ID4gPiAKPiA+ID4gPiBJ
IGludm9rZSBzdXNwZW5kLXRvLXJhbSBieSBgZWNobyBtZW0gPiAvc3lzL3Bvd2VyL3N0YXRlYCBm
cm9tIEFDUEkgcG93ZXIKPiA+ID4gPiBhbmQgTElEIGJ1dHRvbiBoYW5kbGVycy4KPiA+ID4gPiAK
PiA+ID4gPiBUaGlzIG9ubHkgaGFwcGVucyB3aGVuIEkgYm9vdCBhbmQgdXNlIGludGVybmFsIGVt
bWMgY2FyZCBhbmQgbmV2ZXIgd2hlbgo+ID4gPiA+IGJvb3QgYW5kIHVzZSBleHRlcm5hbCBtbWMg
Y2FyZC4KPiA+ID4gPiAKPiA+ID4gPiBJZiBzdXNwZW5kLXRvLXJhbSBpcyBub3QgaW52b2tlZCAo
bWFjaGluZSBpcyBhbHdheXMgaW4gbm9ybWFsIHN0YXRlKQo+ID4gPiA+IHRoaXMgcHJvYmxlbSBu
ZXZlciBoYXBwZW4gKG9yIEkgbWlzc2VkIGl0IHNvbWVob3cpLgo+ID4gPiA+IAo+ID4gPiA+IEkn
bSBhdHRhY2hpbmcga2VybmVsIC5jb25maWcgKGZpbGUgY29uZmlnLTUuNi4wLXJjMy0xLWdydS5j
b25mKSB3aGljaAo+ID4gPiA+IHVzZSB0byBidWlsZCBrZXJuZWwsIG91dHB1dCBvZiB0aGUgYGF3
ayAtZiBzY3JpcHRzL3Zlcl9saW51eGAgYXMgZmlsZQo+ID4gPiA+IHZlcl9saW51eC50eHQgYW5k
wqAgb3V0cHV0IG9mIGRtZXNnIGFzIGZpbGUgbW1jLWVyci50eHQgKGZyb20gd2hpY2ggSQo+ID4g
PiA+IGRlbGV0ZWQgd2lmaSBjb25uZWN0aW9uIGxvZ3MpLgo+ID4gPiA+IAo+ID4gPiA+IFNvcnJ5
IGlmIEkgZGlkIHNvbWV0aGluZyBiYWQgb3Igd3Jvbmcgd2l0aCB0aGlzIGJ1ZyByZXBvcnQsIEkg
ZG9uJ3QgaGF2ZQo+ID4gPiA+IG11Y2ggZXhwZXJpZW5jZSB3aXRoIGJ1ZyByZXBvcnRpbmcsIGVz
cGVjaWFsbHkgZm9yIGtlcm5lbC4KPiA+ID4gPiAKPiA+ID4gPiBJJ20gcmVhZHkgdG8gc2VuZCB5
b3UgbW9yZSBkYXRhLCBhbmQgaW52ZXN0aWdhdGUgdGhpcyBtb3JlLCBhcHBseQo+ID4gPiA+IHBh
dGNoZXMgYW5kIHJlYnVpbGQga2VybmVsIG9yIHdoYXRldmVyIHlvdSBhc2sgbWUgKG9mIGNvdXJz
ZSBpZiBteQo+ID4gPiA+IHVuZGVyc3RhbmRpbmcgYW5kIGtub3dsZWRnZSBpcyBlbm91Z2ggZm9y
IHRoaXMgam9iKS4KPiA+ID4gPiAKPiA+ID4gPiBUaGFuayBpbiBhZHZhbmNlCj4gPiA+ID4gCj4g
PiA+ID4gLS0gCj4gPiA+ID4gS2luZCByZWdhcmRzCj4gPiA+ID4gCj4gPiA+IFsuLi5dCj4gPiA+
IAo+ID4gPiAKPiA+IAo+ID4gCj4gPiAKPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4gPiBMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKPiA+IExp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPiA+IGh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
