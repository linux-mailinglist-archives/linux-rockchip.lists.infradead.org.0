Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A3417A44E
	for <lists+linux-rockchip@lfdr.de>; Thu,  5 Mar 2020 12:33:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qeXRV0YALJSKcUezp/Ld1rRjib/GZrwewTyvnpAauCw=; b=F6EkPpf2Q0Bfwo
	98s6GwDBMnQw528qepi/vvqAbn6urBEDNoSOIlVWK6YULGbQzDKURNnFVrZvpF+CPpoHIqG9dwZ5G
	iBCKRsLp9yaOUhWz7tMRgaSvfV4bpsLtsT449a5tBMzKT/nXM6raph/1s3vZoiVQIiKzg0n8F2ujQ
	A1iwI3fMtRNKmH0h2wGH0agbi8gCwln9+waSRKgDJcz2O8OsX82STjUgJA92OZ5lpikrfA2tBt3Td
	KRHFoYr0khShxRxEHJa+D5ANNvkaCyYRDpo367PNYcwgGyblCM9IXCUe43SxI+h25rgHSxjpeWwYH
	ojDyNDbPqIybI6dpigHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9okP-000437-Cm; Thu, 05 Mar 2020 11:33:01 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9okA-0003vA-Po; Thu, 05 Mar 2020 11:32:48 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 1DE352963E6
Message-ID: <8b993ec8ae9dccc6a8633cfe5e5b6d40d58ffbae.camel@collabora.com>
Subject: Re: [PATCH 1/2] ARM: Rockchip: Handle rk3288/rk3288w revision
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Date: Thu, 05 Mar 2020 08:32:35 -0300
In-Reply-To: <35989681.7qWAQounLj@diego>
References: <20200302155703.278421-1-mylene.josserand@collabora.com>
 <2221545.2vEflg7qi2@diego>
 <5fa8402863c7fb4171d8b2021a776b9ac0be1596.camel@collabora.com>
 <35989681.7qWAQounLj@diego>
Organization: Collabora
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_033247_098226_79171D2D 
X-CRM114-Status: GOOD (  38.05  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: =?ISO-8859-1?Q?Myl=E8ne?= Josserand <mylene.josserand@collabora.com>,
 sboyd@kernel.org, mturquette@baylibre.com, linux@armlinux.org.uk,
 linux-rockchip@lists.infradead.org, kernel@collabora.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gVGh1LCAyMDIwLTAzLTA1IGF0IDAxOjUxICswMTAwLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToK
PiBIaSBFemVxdWllbCwKPiAKPiBBbSBEb25uZXJzdGFnLCA1LiBNw6RyeiAyMDIwLCAwMTowMzoz
MCBDRVQgc2NocmllYiBFemVxdWllbCBHYXJjaWE6Cj4gPiBIaSBIZWlrbywKPiA+IAo+ID4gT24g
V2VkLCAyMDIwLTAzLTA0IGF0IDExOjU5ICswMTAwLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiA+
ID4gSGksCj4gPiA+IAo+ID4gPiBBbSBNb250YWcsIDIuIE3DpHJ6IDIwMjAsIDE2OjU3OjAyIENF
VCBzY2hyaWViIE15bMOobmUgSm9zc2VyYW5kOgo+ID4gPiA+IERldGVybWluZSB3aGljaCByZXZp
c2lvbiBvZiByazMyODggYnkgY2hlY2tpbmcgdGhlIEhETUkgdmVyc2lvbi4KPiA+ID4gPiBBY2Nv
cmRpbmcgdG8gdGhlIFJvY2tjaGlwIEJTUCBrZXJuZWwsIG9uIHJrMzI4OHcsIHRoZSBIRE1JCj4g
PiA+ID4gcmV2aXNpb24gZXF1YWxzIDB4MUEgd2hpY2ggaXMgbm90IHRoZSBjYXNlIGZvciB0aGUg
cmszMjg4IFsxXS4KPiA+ID4gPiAKPiA+ID4gPiBBcyB0aGVzZSBTT0MgaGF2ZSBzb21lIGRpZmZl
cmVuY2VzLCB0aGUgbmV3IGZ1bmN0aW9uCj4gPiA+ID4gJ3NvY19pc19yazMyODh3JyB3aWxsIGhl
bHAgdXMgdG8ga25vdyBvbiB3aGljaCByZXZpc2lvbgo+ID4gPiA+IHdlIGFyZS4KPiA+ID4gCj4g
PiA+IHdoYXQgaGFwcGVuZWQgdG8ganVzdCBoYXZpbmcgYSBkaWZmZXJlbnQgY29tcGF0aWJsZSBp
biB0aGUgZHRzPwo+ID4gPiBBa2EgZG9pbmcgYSAKPiA+ID4gCj4gPiA+IHJrMzI4OHcuZHRzaSB3
aXRoCj4gPiA+IAo+ID4gPiAjaW5jbHVkZSAicmszMjg4LmR0c2kiCj4gPiA+IAo+ID4gPiAmY3J1
IHsKPiA+ID4gCWNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszMjg4dy1jcnUiOwo+ID4gPiB9Cj4g
PiA+IAo+ID4gCj4gPiBJIGd1ZXNzIHlvdSBoYXZlIHNvbWV0aGluZyBsaWtlIHRoaXMgaW4gbWlu
ZDoKPiA+IAo+ID4gc3RhdGljIHZvaWQgX19pbml0IHJrMzI4OF9jbGtfaW5pdChzdHJ1Y3QgZGV2
aWNlX25vZGUgKm5wKQo+ID4gewo+ID4gICAgICAgICBfX3JrMzI4OF9jbGtfaW5pdChucCwgUksz
Mjg4X1NPQ19SRVZfUkszMjg4Vyk7Cj4gPiB9Cj4gPiBDTEtfT0ZfREVDTEFSRShyazMyODhfY3J1
LCAicm9ja2NoaXAscmszMjg4LWNydSIsIHJrMzI4OF9jbGtfaW5pdCk7Cj4gPiAKPiA+IHN0YXRp
YyB2b2lkIF9faW5pdCByazMyODh3X2Nsa19pbml0KHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnApCj4g
PiB7Cj4gPiAgICAgICAgIF9fcmszMjg4X2Nsa19pbml0KG5wLCBSSzMyODhfU09DX1JFVl9SSzMy
ODgpOwo+ID4gfQo+ID4gQ0xLX09GX0RFQ0xBUkUocmszMjg4X2NydSwgInJvY2tjaGlwLHJrMzI4
OHctY3J1IiwgcmszMjg4d19jbGtfaW5pdCk7Cj4gPiAKPiA+IEFuZCB0aGUgcmVzdCBpcyBtb3N0
bHkgdW50b3VjaGVkLCBleGNlcHQgdGhlIHJldmlzaW9uIGlzCj4gPiBubyBsb25nZXIgcXVlcmll
ZCBhbmQgaXMgbm93IHBhc3NlZCBieSB0aGUgRFQ/Cj4gCj4gRXNzZW50aWFsbHkgeWVzLCBidXQg
SSBndWVzcyBJIHdhcyBtb3JlIHRoaW5raW5nIGFsb25nIHRoZSBsaW5lcyBvZgo+IHRoZSByazMx
ODgvcmszMDY2YS9yazMxODhhIChkcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGstcmszMTg4LmMpCj4g
Cj4gCj4gPiBUaGlzIHdvdWxkIGJlIGNsZWFuZXIgZm9yIHRoZSBrZXJuZWwsIHdpdGggdGhlIG9i
dmlvdXMKPiA+IGRyYXdiYWNrIGJlaW5nIHRoYXQgeW91IG5vdyBoYXZlIHRvIG1haW50YWluCj4g
PiBhbm90aGVyIERUUy4KPiAKPiBSaWdodCBub3cgd2Ugd291bGQgZW5kIHVwIHdpdGggdGhlIHBy
ZXR0eSBtaW5pbWFsIGRldmljZXRyZWUKPiBoYXZpbmcganVzdCB0aGF0IGNydS4gU28gbm90IHZl
cnkgaW52YXNpdmUuCj4gCj4gCj4gPiBUaGlzIGNvdWxkIGJlIGFuIGluY29udmVuaWVuY2UuIEkg
YmVsaWV2ZQo+ID4gUkszMjg4VyBpcyBtZWFudCBhcyBhIGRpcmVjdCByZXBsYWNlbWVudCBmb3Ig
UkszMjg4LAo+ID4gc28gZm9sa3MgYnVpbGRpbmcgcHJvZHVjdHMgd291bGQgZXhwZWN0IHRvIGp1
c3QgdXNlCj4gPiBSSzMyODhXLCBhbmQgbm90IHJlYWxseSBib3RoZXIgd2l0aCBwYXNzaW5nIGEK
PiA+IGRpZmZlcmVudCBEVFMgb3Igd2hhdCBub3QuCj4gCj4gTm90IHN1cmUgSSBmb2xsb3cuIEFz
IGJlbG93LCBJIGRvbid0IHRoaW5rIGJvYXJkcyB3aWxsIG1hZ2ljYWxseSBzd2l0Y2gKPiBiZXR3
ZWVuIHNvYyB2YXJpYW50cywgc28gYSBib2FyZHMgZGV2aWNldHJlZSBzaG91bGQganVzdCBpbmNs
dWRlCj4gdGhlIHZhcmlhbnQgLSBlc3BlY2lhbGx5IGFzIEkgZG9uJ3QgcmVhbGx5IGtub3cgaG93
IG1hbnkKPiBhZGRpdGlvbmFsIG5ldyBib2FyZHMgd2Ugd2lsbCBzZWUgd2l0aCBpdCAocmszMjg4
IGJlaW5nIHF1aXRlIG9sZCBpdHNlbGYpLgo+IAoKSXQncyBub3QgYWJvdXQgbmV3IGJvYXJkcywg
YW55IGNvbXBhbnkgZG9lcyBzZWxscyBzb21lIFJLMzI4ODgtYmFzZWQgcHJvZHVjdCwKd2lsbCBl
dmVudHVhbGx5IHdhbnQgdG8gcHJvZHVjZSBzb21lIG1vcmUuCgpJZiBJIHVuZGVyc3RhbmQgY29y
cmVjdGx5LCBSSzMyODhXIGlzIHRoZSBTb0MgdGhhdCBSb2NrY2hpcCBpcyBub3cgb2ZmZXJpbmcs
CmFuZCBub3QgUkszMjg4IGFueW1vcmUuCgpTbywgaWYgeW91IGhhdmUgdG8gcHJvZHVjZSBhbm90
aGVyIGJhdGNoIG9mIF90aGUgc2FtZSBSSzMyODhfIHByb2R1Y3QsCnlvdSdsbCBoYXZlIHRvIHVz
ZSBSSzMyODhXLiBJbiBvdGhlciB3b3JkcywgdGhleSB3b3VsZCAianVzdCBzd2l0Y2giCmJldHdl
ZW4gU29DIHZhcmlhbnRzLgoKSW4gZmFjdCwgc3VjaCBhIGNhc2UgbW90aXZhdGVzIHRoZXNlIHBh
dGNoZXMgOi0pCgo+IAo+ID4gPiBJIHNvbWVob3cgZG9uJ3QgZXhwZWN0IGJvYXJkcyB0byBqdXN0
IHN3aXRjaCBiZXR3ZWVuIHNvYyB2YXJpYW50cwo+ID4gPiBvbiB0aGUgZmx5Lgo+ID4gPiAKPiA+
IAo+ID4gV2hpbGUgSSBhZ3JlZSB0aGV5IGFyZSBuYXN0eSwgcXVpcmtzIGxpa2UgdGhpcwo+ID4g
YXJlIG5vdCB1bmNvbW1vbi4KPiA+IAo+ID4gPiBBbHNvLCBkb2luZyB0aGluZ3MgaW4gbWFjaC1y
b2NrY2hpcCBpcyBub3QgdmVyeSBmdXR1cmUtcHJvb2Y6Cj4gPiA+IAo+ID4gCj4gPiBUaGVyZSBp
cyBhY3R1YWxseSBubyByZWFzb24gdG8ga2VlcCB0aGlzIGluIG1hY2gtcm9ja2NoaXAsIHJpZ2h0
Pwo+ID4gCj4gPiBUaGUgcXVpcmsgY291bGQgYmUgcGxhY2VkIGluIG90aGVyIHBsYWNlcy4gRm9y
IGluc3RhbmNlLAo+ID4gZGlyZWN0bHkgaW4gdGhlIGNsb2NrIGRyaXZlci4KPiAKPiBNYXBwaW5n
IHRoZSBoZG1pIGNvbnRyb2xsZXIgaW5zaWRlIHRoZSBjbG9jayBkcml2ZXIgdG8gcmVhZCBzb21l
ICJyYW5kb20iCj4gcmVnaXN0ZXIgdGhhdCBob3BlZnVsbHkgaW5kaWNhdGVzIGFuICh1bmRvY3Vt
ZW50ZWQpIGRpc3RpbmN0aW9uIGJldHdlZW4gc29jCj4gdmFyaWFudHMuCj4gCj4gU29tZWhvdyBq
dXN0IGhhdmluZyB0aGF0IG1pbmltYWwgZGV2aWNldHJlZSBmb3IgdGhlICJ3IiBzb3VuZHMKPiB3
YXkgY2xlYW5lciA7LSkgLgo+IAo+IAo+IEl0J3MgZGVmaW5pdGx5IGNvb2wgdG8gaGF2ZSBzdXBw
b3J0IGZvciB0aGUgcmszMjg4dyBidXQgSSBkb24ndCBsaWtlCj4gYWRkaW5nIGhhY2tzIGZvciBz
b21ldGhpbmcgdGhhdCBpcyBhZnRlciBhbGwgc29tZSBzb3J0IG9mIG5pY2hlIHByb2R1Y3QuCj4g
CgpXaHkgZG8geW91IHRoaW5rIGl0J3MgYSBuaWNoZSBwcm9kdWN0PwoKVGhhbmtzLApFemVxdWll
bAoKPiAKPiBIZWlrbwo+IAo+IAo+ID4gPiAoMSkgaGF2aW5nIHJhbmRvbSBzb2Mtc3BlY2lmaWMg
QVBJcyBzcGFubmluZyB0aGUga2VybmVsIGZlZWxzIHdyb25nLAo+ID4gPiAgICAgZXNwZWNpYWxs
eSBhcyBhdCBzb21lIHBvaW50IGl0IG1pZ2h0IG5vdCBiZSBjb250YWluZWQgdG8gb3VyIG93biBz
cGVjaWFsCj4gPiA+ICAgICBkcml2ZXJzIGxpa2UgdGhlIGNydS4gSSBjYW5ub3QgcmVhbGx5IHNl
ZSBwZW9wbGUgYmVpbmcgZW50aHVzaWFzdGljIGlmCj4gPiA+ICAgICBzb21ldGhpbmcgbGlrZSB0
aGlzIHdvdWxkIGJlIG5lZWRlZCBpbiBzYXkgdGhlIGNvcmUgQW5hbG9naXgtRFAgYnJpZGdlIDst
KQo+ID4gPiAoMikgSSBndWVzcyB0aGUgcmszMjg4dyB3aWxsIG5vdCBiZSB0aGUgbGFzdCBzb2Mg
ZG9pbmcgdGhpcyBhbmQgb24gYXJtNjQgeW91Cj4gPiA+ICAgICBjYW4ndCBkbyBpdCB0aGF0IHdh
eSwgYXMgdGhlcmUgaXMgbm8gbWFjaC1yb2NrY2hpcCB0aGVyZQo+ID4gPiAKPiA+ID4gU28gbXkg
cGVyc29uYWwgcHJlZmVyZW5jZSB3b3VsZCByZWFsbHkgd291bGQgYmUganVzdCBhIHNwZWNpZmlj
IGNvbXBhdGlibGUKPiA+ID4gZm9yIGFmZmVjdGVkIGlwIGJsb2Nrcy4KPiA+ID4gCj4gPiA+IEhl
aWtvCj4gPiA+IAo+ID4gPiA+IFsxXTpodHRwczovL2dpdGh1Yi5jb20vcm9ja2NoaXAtbGludXgv
dS1ib290L2Jsb2IvZjk5MmZlMzMzNGFhNTA5MGFjYjQ0ODI2MTk4MjYyOGI1YTNkMzdhNS9hcmNo
L2FybS9pbmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL2NwdS5oI0wzMC4uTDM0Cj4gPiA+ID4gCj4g
PiA+ID4gU2lnbmVkLW9mZi1ieTogTXlsw6huZSBKb3NzZXJhbmQgPG15bGVuZS5qb3NzZXJhbmRA
Y29sbGFib3JhLmNvbT4KPiA+ID4gPiAtLS0KPiA+ID4gPiAgYXJjaC9hcm0vbWFjaC1yb2NrY2hp
cC9yb2NrY2hpcC5jIHwgNDUgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ID4gPiA+
ICBpbmNsdWRlL3NvYy9yb2NrY2hpcC9yZXZpc2lvbi5oICAgfCAyMiArKysrKysrKysrKysrKysK
PiA+ID4gPiAgMiBmaWxlcyBjaGFuZ2VkLCA2NyBpbnNlcnRpb25zKCspCj4gPiA+ID4gIGNyZWF0
ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL3NvYy9yb2NrY2hpcC9yZXZpc2lvbi5oCj4gPiA+ID4gCj4g
PiA+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gtcm9ja2NoaXAvcm9ja2NoaXAuYyBiL2Fy
Y2gvYXJtL21hY2gtcm9ja2NoaXAvcm9ja2NoaXAuYwo+ID4gPiA+IGluZGV4IGY5Nzk3YTJiNWQw
ZC4uYjkwN2JhMzkwMDkzIDEwMDY0NAo+ID4gPiA+IC0tLSBhL2FyY2gvYXJtL21hY2gtcm9ja2No
aXAvcm9ja2NoaXAuYwo+ID4gPiA+ICsrKyBiL2FyY2gvYXJtL21hY2gtcm9ja2NoaXAvcm9ja2No
aXAuYwo+ID4gPiA+IEBAIC05LDEyICs5LDE0IEBACj4gPiA+ID4gICNpbmNsdWRlIDxsaW51eC9r
ZXJuZWwuaD4KPiA+ID4gPiAgI2luY2x1ZGUgPGxpbnV4L2luaXQuaD4KPiA+ID4gPiAgI2luY2x1
ZGUgPGxpbnV4L2lvLmg+Cj4gPiA+ID4gKyNpbmNsdWRlIDxsaW51eC9vZl9hZGRyZXNzLmg+Cj4g
PiA+ID4gICNpbmNsdWRlIDxsaW51eC9vZl9wbGF0Zm9ybS5oPgo+ID4gPiA+ICAjaW5jbHVkZSA8
bGludXgvaXJxY2hpcC5oPgo+ID4gPiA+ICAjaW5jbHVkZSA8bGludXgvY2xrLXByb3ZpZGVyLmg+
Cj4gPiA+ID4gICNpbmNsdWRlIDxsaW51eC9jbG9ja3NvdXJjZS5oPgo+ID4gPiA+ICAjaW5jbHVk
ZSA8bGludXgvbWZkL3N5c2Nvbi5oPgo+ID4gPiA+ICAjaW5jbHVkZSA8bGludXgvcmVnbWFwLmg+
Cj4gPiA+ID4gKyNpbmNsdWRlIDxzb2Mvcm9ja2NoaXAvcmV2aXNpb24uaD4KPiA+ID4gPiAgI2lu
Y2x1ZGUgPGFzbS9tYWNoL2FyY2guaD4KPiA+ID4gPiAgI2luY2x1ZGUgPGFzbS9tYWNoL21hcC5o
Pgo+ID4gPiA+ICAjaW5jbHVkZSA8YXNtL2hhcmR3YXJlL2NhY2hlLWwyeDAuaD4KPiA+ID4gPiBA
QCAtMjIsNiArMjQsNDkgQEAKPiA+ID4gPiAgI2luY2x1ZGUgInBtLmgiCj4gPiA+ID4gIAo+ID4g
PiA+ICAjZGVmaW5lIFJLMzI4OF9USU1FUjZfN19QSFlTIDB4ZmY4MTAwMDAKPiA+ID4gPiArI2Rl
ZmluZSBSSzMyODhfSERNSV9SRVZfUkVHCTB4MDQKPiA+ID4gPiArI2RlZmluZSBSSzMyODhXX0hE
TUlfUkVWCTB4MUEKPiA+ID4gPiArCj4gPiA+ID4gK3N0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2
aWNlX2lkIHJrMzI4OF9kdF9oZG1pX21hdGNoW10gX19pbml0Y29uc3QgPSB7Cj4gPiA+ID4gKwl7
IC5jb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzI4OC1kdy1oZG1pIiB9LAo+ID4gPiA+ICsJeyB9
Cj4gPiA+ID4gK307Cj4gPiA+ID4gKwo+ID4gPiA+ICtpbnQgcmszMjg4X2dldF9yZXZpc2lvbih2
b2lkKQo+ID4gPiA+ICt7Cj4gPiA+ID4gKwlzdGF0aWMgaW50IHJldmlzaW9uID0gUkszMjg4X1NP
Q19SRVZfVU5LTk9XTjsKPiA+ID4gPiArCXN0cnVjdCBkZXZpY2Vfbm9kZSAqZG47Cj4gPiA+ID4g
Kwl2b2lkIF9faW9tZW0gKmhkbWlfYmFzZTsKPiA+ID4gPiArCj4gPiA+ID4gKwlpZiAocmV2aXNp
b24gIT0gUkszMjg4X1NPQ19SRVZfVU5LTk9XTikKPiA+ID4gPiArCQlyZXR1cm4gcmV2aXNpb247
Cj4gPiA+ID4gKwo+ID4gPiA+ICsJZG4gPSBvZl9maW5kX21hdGNoaW5nX25vZGUoTlVMTCwgcmsz
Mjg4X2R0X2hkbWlfbWF0Y2gpOwo+ID4gPiA+ICsJaWYgKCFkbikgewo+ID4gPiA+ICsJCXByX2Vy
cigiJXM6IENvdWxkbid0IGZpbmQgSERNSSBub2RlXG4iLCBfX2Z1bmNfXyk7Cj4gPiA+ID4gKwkJ
cmV0dXJuIC1FSU5WQUw7Cj4gPiA+ID4gKwl9Cj4gPiA+ID4gKwo+ID4gPiA+ICsJaGRtaV9iYXNl
ID0gb2ZfaW9tYXAoZG4sIDApOwo+ID4gPiA+ICsJb2Zfbm9kZV9wdXQoZG4pOwo+ID4gPiA+ICsK
PiA+ID4gPiArCWlmICghaGRtaV9iYXNlKSB7Cj4gPiA+ID4gKwkJcHJfZXJyKCIlczogQ291bGRu
J3QgbWFwICVwT0YgcmVnc1xuIiwgX19mdW5jX18sCj4gPiA+ID4gKwkJICAgICAgIGhkbWlfYmFz
ZSk7Cj4gPiA+ID4gKwkJcmV0dXJuIC1FTlhJTzsKPiA+ID4gPiArCX0KPiA+ID4gPiArCj4gPiA+
ID4gKwlpZiAocmVhZGxfcmVsYXhlZChoZG1pX2Jhc2UgKyBSSzMyODhfSERNSV9SRVZfUkVHKSA9
PQo+ID4gPiA+ICsJICAgIFJLMzI4OFdfSERNSV9SRVYpCj4gPiA+ID4gKwkJcmV2aXNpb24gPSBS
SzMyODhfU09DX1JFVl9SSzMyODhXOwo+ID4gPiA+ICsJZWxzZQo+ID4gPiA+ICsJCXJldmlzaW9u
ID0gUkszMjg4X1NPQ19SRVZfUkszMjg4Owo+ID4gPiA+ICsKPiA+ID4gPiArCWlvdW5tYXAoaGRt
aV9iYXNlKTsKPiA+ID4gPiArCj4gPiA+ID4gKwlyZXR1cm4gcmV2aXNpb247Cj4gPiA+ID4gK30K
PiA+ID4gPiArRVhQT1JUX1NZTUJPTChyazMyODhfZ2V0X3JldmlzaW9uKTsKPiA+ID4gPiAgCj4g
PiA+ID4gIHN0YXRpYyB2b2lkIF9faW5pdCByb2NrY2hpcF90aW1lcl9pbml0KHZvaWQpCj4gPiA+
ID4gIHsKPiA+ID4gPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9zb2Mvcm9ja2NoaXAvcmV2aXNpb24u
aCBiL2luY2x1ZGUvc29jL3JvY2tjaGlwL3JldmlzaW9uLmgKPiA+ID4gPiBuZXcgZmlsZSBtb2Rl
IDEwMDY0NAo+ID4gPiA+IGluZGV4IDAwMDAwMDAwMDAwMC4uMjI2NDE5YzYwYWYwCj4gPiA+ID4g
LS0tIC9kZXYvbnVsbAo+ID4gPiA+ICsrKyBiL2luY2x1ZGUvc29jL3JvY2tjaGlwL3JldmlzaW9u
LmgKPiA+ID4gPiBAQCAtMCwwICsxLDIyIEBACj4gPiA+ID4gKy8qIFNQRFgtTGljZW5zZS1JZGVu
dGlmaWVyOiBHUEwtMi4wLW9ubHkgKi8KPiA+ID4gPiArLyoKPiA+ID4gPiArICogQ29weXJpZ2h0
IDIwMjAgQ29sbGFib3JhCj4gPiA+ID4gKyAqLwo+ID4gPiA+ICsKPiA+ID4gPiArI2lmbmRlZiBf
X1NPQ19ST0NLQ0hJUF9SRVZJU0lPTl9IX18KPiA+ID4gPiArI2RlZmluZSBfX1NPQ19ST0NLQ0hJ
UF9SRVZJU0lPTl9IX18KPiA+ID4gPiArCj4gPiA+ID4gK2VudW0gcmszMjg4X3NvY19yZXZpc2lv
biB7Cj4gPiA+ID4gKwlSSzMyODhfU09DX1JFVl9VTktOT1dOLAo+ID4gPiA+ICsJUkszMjg4X1NP
Q19SRVZfUkszMjg4LAo+ID4gPiA+ICsJUkszMjg4X1NPQ19SRVZfUkszMjg4VywKPiA+ID4gPiAr
fTsKPiA+ID4gPiArCj4gPiA+ID4gK2ludCByazMyODhfZ2V0X3JldmlzaW9uKHZvaWQpOwo+ID4g
PiA+ICsKPiA+ID4gPiArc3RhdGljIGlubGluZSBib29sIHNvY19pc19yazMyODh3KHZvaWQpCj4g
PiA+ID4gK3sKPiA+ID4gPiArCXJldHVybiByazMyODhfZ2V0X3JldmlzaW9uKCkgPT0gUkszMjg4
X1NPQ19SRVZfUkszMjg4VzsKPiA+ID4gPiArfQo+ID4gPiA+ICsKPiA+ID4gPiArI2VuZGlmIC8q
IF9fU09DX1JPQ0tDSElQX1JFVklTSU9OX0hfXyAqLwo+ID4gPiA+IAo+ID4gPiAKPiA+ID4gCj4g
PiA+IAo+ID4gCj4gPiAKPiAKPiAKPiAKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
