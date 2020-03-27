Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0045C195C2F
	for <lists+linux-rockchip@lfdr.de>; Fri, 27 Mar 2020 18:14:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LDzEcWYy+8+Uv7I40+wg9m314/DtGpAPbfvmaIjAbvQ=; b=iARHMhyVEdbOcG
	CUHs+FN0qmMlVvRdSE429SnWaEDM9GGLu3I4agWVy7EosY3uqE2/VrDTwWNtswDGrbem/m55IJuZ3
	6jKAIflzRMM36aRmAMNRvNyWzfO5TvX7TYTGG0fkeZWbOGqPqKEhfBAJ3kTdDC7MitCC9it9bNRZN
	6DrMOmgVugWPNhgp/g/pCSZgW1WYOFdyEEfWOkaZjzVvKPZMI3vfWzh+xVRve7PHAgb0ZuEMPBNDd
	DIklExHONxk4v1xI2Bb7zHuNRWJ8AbcYAB+pBD6xySnf7F2yQNW/O4So2LQCjn2NQPELLB9ASDwfj
	Tu+J12jgIl2PQRdA54eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHsZ3-0005Zb-Gs; Fri, 27 Mar 2020 17:14:37 +0000
Received: from static-213-198-238-194.adsl.eunet.rs ([213.198.238.194]
 helo=fx.arvanta.net)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHsYn-0005NQ-Qo
 for linux-rockchip@lists.infradead.org; Fri, 27 Mar 2020 17:14:24 +0000
Received: from arya.arvanta.net (arya.arvanta.net [10.5.1.6])
 by fx.arvanta.net (Postfix) with ESMTP id B42C73862;
 Fri, 27 Mar 2020 18:14:17 +0100 (CET)
Date: Fri, 27 Mar 2020 18:14:17 +0100
From: Milan =?utf-8?Q?P=2E_Stani=C4=87?= <mps@arvanta.net>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: PROBLEM: =?utf-8?Q?mmc=5Fselect=5Fhs40?=
 =?utf-8?B?MGVzIGZhaWxlZCwgZXJyb3IgLTExMOOAkOivt+azqOaEj++8jOmCruS7tg==?=
 =?utf-8?B?55SxbGludXgtbW1jLW93bmVyQHZnZXIua2VybmVsLm9yZ+S7o+WPkeOAkQ==?=
Message-ID: <20200327171417.GA4387@arya.arvanta.net>
References: <20200301220242.GA8276@arya.arvanta.net>
 <20200318214917.GA9112@arya.arvanta.net>
 <5922bbd7-e91b-d144-6d44-2632cbd11c78@rock-chips.com>
 <158bd6f5-2430-19bd-28ef-e18d67becaf3@arm.com>
 <20200321204652.GA21002@arya.arvanta.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200321204652.GA21002@arya.arvanta.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_101422_106706_4DFE4EFB 
X-CRM114-Status: GOOD (  25.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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

SGksCgpBbnlvbmUgbG9va2VkIGF0IHRoaXMgcHJvYmxlbT8KCk9yLCBpcyB0aGVyZSBiZXR0ZXIg
dXJsIG9yIG1haWxpbmcgbGlzdCB3aGVyZSBJIHNob3VsZCBzZW5kIHRoaXMgYnVnCnJlcG9ydD8K
Ck9yLCBjb3VsZCBzb21lb25lIHRlbGwgbWUgd2hhdCBJIGNvdWxkIHRyeSB0byBmaXggaXQsIHdo
aWNoIGZpbGUgYW5kCnBhcmFtZXRlcnMgdG8gY2hhbmdlPwoKT24gU2F0LCAyMDIwLTAzLTIxIGF0
IDIxOjQ2LCBNaWxhbiBQLiBTdGFuacSHIHdyb3RlOgo+IEhpLAo+IAo+IE9uIFRodSwgMjAyMC0w
My0xOSBhdCAxMjoyOCwgUm9iaW4gTXVycGh5IHdyb3RlOgo+ID4gSGkgU2hhd24sCj4gPiAKPiA+
IE9uIDIwMjAtMDMtMTkgMzoxMSBhbSwgU2hhd24gTGluIHdyb3RlOgo+ID4gPiBIaSBNaWxhbgo+
ID4gPiAKPiA+ID4gWytsaW51eC1yb2NrY2hpcCB0byBzZWUgaWYgc29tZW9uZSBoYXMgYSBTYW1z
dW5nIGNocm9tZWJvb2sgb25lIHBsdXMKPiA+ID4gYW5kIGNvdWxkIGNvbmZpcm0gaWYgaXQgd29y
a3NdCj4gPiAKPiA+IEZXSVcgSSd2ZSBhbHNvIHRyaWVkIHN1c3BlbmQgb24gbXkgTmFub1BDLVQ0
IGFuZCBzZWVuIHRoYXQgdGhlIGVNTUMgKGFsc28KPiA+IEhTNDAwLUVTKSBmYWlscyB0byBjb21l
IGJhY2sgcHJvcGVybHkgb24gcmVzdW1lICh0aHVzIHJlc3VtZSBuZXZlciBjb21wbGV0ZXMKPiA+
IGR1ZSB0byB0aGUgbWlzc2luZyByb290IGZpbGVzeXN0ZW0pLiBJSVJDIGl0IG1pZ2h0IGV2ZW4g
aGF2ZSBiZWVuCj4gPiByZXByb2R1Y2libGUgd2l0aCBzdXNwZW5kLXRvLWlkbGUsIGJ1dCBJJ2Qg
aGF2ZSB0byBkb3VibGUtY2hlY2sgdGhhdC4KPiAgCj4gSSBmb3Jnb3QgdG8gdGVsbCB0aGF0IGVt
bWMgd29ya2VkIHdpdGhvdXQgcHJvYmxlbSBvbiB0aGlzIG1hY2hpbmUgd2l0aAo+IENocm9tZU9T
IGtlcm5lbCA0LjQueHggZG93bmxvYWRlZCBmcm9tCj4gaHR0cHM6Ly9jaHJvbWl1bS5nb29nbGVz
b3VyY2UuY29tL2Nocm9taXVtb3MvdGhpcmRfcGFydHkva2VybmVsLysvY2hyb21lb3MtNC40Cj4g
YW5kIHdpdGggcGF0Y2hlcyBmcm9tCj4gaHR0cHM6Ly9naXRodWIuY29tL2FyY2hsaW51eGFybS9Q
S0dCVUlMRHMvdHJlZS9tYXN0ZXIvY29yZS9saW51eC1ncnUKPiBmb3IgYWJvdXQgdHdvIHllYXJz
IChpaXJjKS4KPiBQcm9ibGVtIHN0YXJ0ZWQgd2hlbiBJIHN3aXRjaGVkIHRvIG1haW5saW5lIGtl
cm5lbHMsIHNvbWV3aGVyZSBhcm91bmQKPiA1LjEueHgKPiAKPiA+IFJvYmluLgo+ID4gCj4gPiA+
IE9uIDIwMjAvMy8xOSA1OjQ5LCBNaWxhbiBQLiBTdGFuacSHIHdyb3RlOgo+ID4gPiA+IEhlbGxv
LAo+ID4gPiA+IAo+ID4gPiA+IFNvcnJ5IHRvIGFubm95IGFnYWluLCBidXQgY291bGQgeW91IHRl
bGwgbWUgaWYgSSBzZW50IHRoaXMgYnVnIHJlcG9ydAo+ID4gPiA+IHRvIHJpZ2h0IG1haWwgYWRk
cmVzcyBvciBJIHNob3VsZCBzZW5kIGl0IHNvbWV3aGVyZSBlbHNlLgo+ID4gPiA+IAo+ID4gPiA+
IEFsc28sIGRpZCBJIHNlbnQgYnVnIHJlcG9ydCBjb3JyZWN0bHkgb3IgSSBkaWQgc29tZSBtaXN0
YWtlcyB3aGljaAo+ID4gPiA+IGNhdXNlZCBpdCB0byBiZSBpZ25vcmVkLgo+ID4gPiA+IAo+ID4g
PiA+IC0tIFRJQSBPbiBTdW4sIDIwMjAtMDMtMDEgYXQgMjM6MDIsIE1pbGFuIFAuIFN0YW5pxIcg
d3JvdGU6Cj4gPiA+ID4gPiBIZWxsbywKPiA+ID4gPiA+IAo+ID4gPiA+ID4gSSdtIG5vdCBuYXRp
dmUgRW5nbGlzaCBzcGVha2VyIGFuZCBJJ20gc2VsZiB0YXVnaHQgaW4gRW5nbGlzaCBzbyBzb3Jy
eQo+ID4gPiA+ID4gaWYgZG8gbm90IHdyaXRlIG9yIGV4cHJlc3MgY29ycmVjdGx5LiBBbmQgc29y
cnkgaWYgSSBwb3N0ZWQgYnVnIHJlcG9ydAo+ID4gPiA+ID4gdG8gd3JvbmcgYWRkcmVzcy4KPiA+
ID4gPiA+IAo+ID4gPiA+ID4gSSdtIHJ1bm5pbmcgbGludXggNS42LjAtcmMzIHdpdGhvdXQgYW55
IHBhdGNoZXMgb24gU2Ftc3VuZyBjaHJvbWVib29rCj4gPiA+ID4gPiBvbmUgcGx1cywgQXJtNjQg
cm9ja2NoaXAgcmszMzk5IGJhc2VkIG1vZGVsIG5hbWU6Cj4gPiA+ID4gPiBNYWNoaW5lIG1vZGVs
OiBHb29nbGUgS2V2aW4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gSSBidWlsZCBrZXJuZWxzIGZyb20g
dXBzdHJlYW0gZ2l0Lmtlcm5lbC5vcmcgZm9yIHRoaXMgbWFjaGluZSBmb3Igc29tZQo+ID4gPiA+
ID4gdGltZSAoaWlyYywgZnJvbSA1LjIuMSBhbmQgdXApIGJ1dCBJJ20gZ2V0dGluZyBlcnJvciBt
ZXNzYWdlcyBpbiBrZXJuZWwKPiA+ID4gPiA+IGFmdGVyIG1hY2hpbmUgcmVzdW1lcyBmcm9tIHN1
c3BlbmQtdG8tcmFtLgo+ID4gPiAKPiA+ID4gSXQgc291bmRzIHRvIG1lIHN1c3BlbmQtdG8tcmFt
IG5ldmVyIHdvcmtzIGZvciB0aGlzIG1hY2hpbmUsIGF0IGxlYXN0Cj4gPiA+IHNpbmNlIDUuMi4x
LiBBbSBJIHJpZ2h0Pwo+ID4gPiAKPiA+ID4gPiA+IAo+ID4gPiA+ID4gZXhjZXJwdCBmcm9tIGRt
ZXNnIG91dHB1dDoKPiA+ID4gPiA+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gPiA+ID4gPiBSZXN0YXJ0aW5n
IHRhc2tzIC4uLiBkb25lLgo+ID4gPiA+ID4gUE06IHN1c3BlbmQgZXhpdAo+ID4gPiA+ID4gbW1j
X2hvc3QgbW1jMDogQnVzIHNwZWVkIChzbG90IDApID0gNDAwMDAwSHogKHNsb3QgcmVxIDQwMDAw
MEh6LAo+ID4gPiA+ID4gYWN0dWFsIDQwMDAwMEhaIGRpdiA9IDApCj4gPiA+ID4gPiBtbWMxOiBt
bWNfc2VsZWN0X2hzNDAwZXMgZmFpbGVkLCBlcnJvciAtMTEwCj4gPiA+ID4gPiBtbWMxOiBlcnJv
ciAtMTEwIGRvaW5nIHJ1bnRpbWUgcmVzdW1lCj4gPiA+ID4gPiBtbWMxOiBHb3QgZGF0YSBpbnRl
cnJ1cHQgMHgwMDAwMDAwMiBldmVuIHRob3VnaCBubyBkYXRhCj4gPiA+ID4gPiBvcGVyYXRpb24g
d2FzIGluIHByb2dyZXNzLgo+ID4gPiA+ID4gbW1jMTogc2RoY2k6ID09PT09PT09PT09PSBTREhD
SSBSRUdJU1RFUiBEVU1QID09PT09PT09PT09Cj4gPiA+ID4gPiBtbWMxOiBzZGhjaTogU3lzIGFk
ZHI6wqAgMHgwMDAwMDAwOCB8IFZlcnNpb246wqAgMHgwMDAwMTAwMgo+ID4gPiA+ID4gbW1jMTog
c2RoY2k6IEJsayBzaXplOsKgIDB4MDAwMDcyMDAgfCBCbGsgY250OsKgIDB4MDAwMDAwMDgKPiA+
ID4gPiA+IG1tYzE6IHNkaGNpOiBBcmd1bWVudDrCoCAweDAwMDAwMDAwIHwgVHJuIG1vZGU6IDB4
MDAwMDAwMjMKPiA+ID4gPiA+IG1tYzE6IHNkaGNpOiBQcmVzZW50OsKgwqAgMHgxZmZmMDAwMSB8
IEhvc3QgY3RsOiAweDAwMDAwMDM1Cj4gPiA+ID4gPiBtbWMxOiBzZGhjaTogUG93ZXI6wqDCoMKg
wqAgMHgwMDAwMDAwYiB8IEJsayBnYXA6wqAgMHgwMDAwMDA4MAo+ID4gPiA+ID4gbW1jMTogc2Ro
Y2k6IFdha2UtdXA6wqDCoCAweDAwMDAwMDAwIHwgQ2xvY2s6wqDCoMKgIDB4MDAwMGJjMDcKPiA+
ID4gPiA+IG1tYzE6IHNkaGNpOiBUaW1lb3V0OsKgwqAgMHgwMDAwMDAwZCB8IEludCBzdGF0OiAw
eDAwMDAwMDAwCj4gPiA+ID4gPiBtbWMxOiBzZGhjaTogSW50IGVuYWI6wqAgMHgwM2ZmMDAwYiB8
IFNpZyBlbmFiOiAweDAzZmYwMDBiCj4gPiA+ID4gPiBtbWMxOiBzZGhjaTogQUNtZCBzdGF0OiAw
eDAwMDAwMDAwIHwgU2xvdCBpbnQ6IDB4MDAwMDAwMDAKPiA+ID4gPiA+IG1tYzE6IHNkaGNpOiBD
YXBzOsKgwqDCoMKgwqAgMHg0NGVkYzg4MCB8IENhcHNfMTrCoMKgIDB4ODAxMDIwZjcKPiA+ID4g
PiA+IG1tYzE6IHNkaGNpOiBDbWQ6wqDCoMKgwqDCoMKgIDB4MDAwMDBjMWEgfCBNYXggY3Vycjog
MHgwMDAwMDAwMAo+ID4gPiA+ID4gbW1jMTogc2RoY2k6IFJlc3BbMF06wqDCoCAweDAwMDAwMDAw
IHwgUmVzcFsxXTrCoCAweDM3MzMwMGJkCj4gPiA+ID4gPiBtbWMxOiBzZGhjaTogUmVzcFsyXTrC
oMKgIDB4MzUzMDMwMzAgfCBSZXNwWzNdOsKgIDB4MDAwMDAwMDAKPiA+ID4gPiA+IG1tYzE6IHNk
aGNpOiBIb3N0IGN0bDI6IDB4MDAwMDAwMDAKPiA+ID4gPiA+IG1tYzE6IHNkaGNpOiBBRE1BIEVy
cjrCoCAweDAwMDAwMDAwIHwgQURNQSBQdHI6IDB4ZWQ0MWUyMDAKPiA+ID4gPiA+IC0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tCj4gPiA+ID4gPiAKPiA+ID4gPiA+IEkgaW52b2tlIHN1c3BlbmQtdG8tcmFtIGJ5IGBl
Y2hvIG1lbSA+IC9zeXMvcG93ZXIvc3RhdGVgIGZyb20gQUNQSSBwb3dlcgo+ID4gPiA+ID4gYW5k
IExJRCBidXR0b24gaGFuZGxlcnMuCj4gPiA+ID4gPiAKPiA+ID4gPiA+IFRoaXMgb25seSBoYXBw
ZW5zIHdoZW4gSSBib290IGFuZCB1c2UgaW50ZXJuYWwgZW1tYyBjYXJkIGFuZCBuZXZlciB3aGVu
Cj4gPiA+ID4gPiBib290IGFuZCB1c2UgZXh0ZXJuYWwgbW1jIGNhcmQuCj4gPiA+ID4gPiAKPiA+
ID4gPiA+IElmIHN1c3BlbmQtdG8tcmFtIGlzIG5vdCBpbnZva2VkIChtYWNoaW5lIGlzIGFsd2F5
cyBpbiBub3JtYWwgc3RhdGUpCj4gPiA+ID4gPiB0aGlzIHByb2JsZW0gbmV2ZXIgaGFwcGVuIChv
ciBJIG1pc3NlZCBpdCBzb21laG93KS4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gSSdtIGF0dGFjaGlu
ZyBrZXJuZWwgLmNvbmZpZyAoZmlsZSBjb25maWctNS42LjAtcmMzLTEtZ3J1LmNvbmYpIHdoaWNo
Cj4gPiA+ID4gPiB1c2UgdG8gYnVpbGQga2VybmVsLCBvdXRwdXQgb2YgdGhlIGBhd2sgLWYgc2Ny
aXB0cy92ZXJfbGludXhgIGFzIGZpbGUKPiA+ID4gPiA+IHZlcl9saW51eC50eHQgYW5kwqAgb3V0
cHV0IG9mIGRtZXNnIGFzIGZpbGUgbW1jLWVyci50eHQgKGZyb20gd2hpY2ggSQo+ID4gPiA+ID4g
ZGVsZXRlZCB3aWZpIGNvbm5lY3Rpb24gbG9ncykuCj4gPiA+ID4gPiAKPiA+ID4gPiA+IFNvcnJ5
IGlmIEkgZGlkIHNvbWV0aGluZyBiYWQgb3Igd3Jvbmcgd2l0aCB0aGlzIGJ1ZyByZXBvcnQsIEkg
ZG9uJ3QgaGF2ZQo+ID4gPiA+ID4gbXVjaCBleHBlcmllbmNlIHdpdGggYnVnIHJlcG9ydGluZywg
ZXNwZWNpYWxseSBmb3Iga2VybmVsLgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBJJ20gcmVhZHkgdG8g
c2VuZCB5b3UgbW9yZSBkYXRhLCBhbmQgaW52ZXN0aWdhdGUgdGhpcyBtb3JlLCBhcHBseQo+ID4g
PiA+ID4gcGF0Y2hlcyBhbmQgcmVidWlsZCBrZXJuZWwgb3Igd2hhdGV2ZXIgeW91IGFzayBtZSAo
b2YgY291cnNlIGlmIG15Cj4gPiA+ID4gPiB1bmRlcnN0YW5kaW5nIGFuZCBrbm93bGVkZ2UgaXMg
ZW5vdWdoIGZvciB0aGlzIGpvYikuCj4gPiA+ID4gPiAKPiA+ID4gPiA+IFRoYW5rIGluIGFkdmFu
Y2UKPiA+ID4gPiA+IAo+ID4gPiA+ID4gLS0gCj4gPiA+ID4gPiBLaW5kIHJlZ2FyZHMKPiA+ID4g
PiA+IAo+ID4gPiA+IFsuLi5dCj4gPiA+ID4gCj4gPiA+ID4gCj4gPiA+IAo+ID4gPiAKPiA+ID4g
Cj4gPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4g
PiA+IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+ID4gPiBMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCj4gPiA+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
