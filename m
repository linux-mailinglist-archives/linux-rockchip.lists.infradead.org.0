Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B95419BBB5
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 08:31:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ik27ySrq5DkUySzLlZZwGkB0A0j0TECk774HypO+wr4=; b=bQuXkhnTVpRbPvEMobPuXlBfv
	bfT6cl8bMUIzZSDSXSN1qkFc4lgObm2eGMsmCEBxtq+++XrhFXOedJxyPoJQpn5fJyPmFSfyP4tgq
	CDRjl0xheGXsPcbLO61fNajNTwKbp09eV3HZSrTvA5idQ2FUtLYrq7Np2M6q7QectSfBU8KePNYjR
	NE3ziN4LDHAB6DxzmgxOeEecZ1JNK0PhDOz/T73C++R4WfAJeVaL0V1EbH62uEmphcTuDE4AAJos9
	sstGhmPZv9qqZGgJxUgOwT1D4EzXIJNGp6qv1S/48EBuzv+PEQjVwmtPxtJgBeFE+2JBSktF4x3hP
	oZVeznMkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJtNx-0001vB-JV; Thu, 02 Apr 2020 06:31:29 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJtNm-0001p2-G9; Thu, 02 Apr 2020 06:31:21 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: myjosserand) with ESMTPSA id 64F16296F79
Subject: Re: [PATCH v2 1/2] soc: rockchip: Register a soc_device to retrieve
 revision
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
References: <20200401153513.423683-1-mylene.josserand@collabora.com>
 <20200401153513.423683-2-mylene.josserand@collabora.com>
 <5143930.cPWVAAQKI9@diego>
From: Mylene Josserand <mylene.josserand@collabora.com>
Message-ID: <aea600e2-7169-1bbc-252f-1bc77bd5b104@collabora.com>
Date: Thu, 2 Apr 2020 08:31:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <5143930.cPWVAAQKI9@diego>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_233119_053453_3921A8B6 
X-CRM114-Status: GOOD (  31.49  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: sboyd@kernel.org, mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org,
 geert@linux-m68k.org, kernel@collabora.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgSGVpa28sCgpPbiA0LzEvMjAgNjozNCBQTSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gSGkg
TXlsw6huZSwKPiAKPiBBbSBNaXR0d29jaCwgMS4gQXByaWwgMjAyMCwgMTc6MzU6MTIgQ0VTVCBz
Y2hyaWViIE15bMOobmUgSm9zc2VyYW5kOgo+PiBEZXRlcm1pbmUgd2hpY2ggcmV2aXNpb24gb2Yg
cmszMjg4IGJ5IGNoZWNraW5nIHRoZSBIRE1JIHZlcnNpb24uCj4+IEFjY29yZGluZyB0byB0aGUg
Um9ja2NoaXAgQlNQIGtlcm5lbC91LWJvb3QsIG9uIHJrMzI4OHcsIHRoZSBIRE1JCj4+IHJldmlz
aW9uIGVxdWFscyAweDFBIHdoaWNoIGlzIG5vdCB0aGUgY2FzZSBmb3IgdGhlIHJrMzI4OC4KPj4K
Pj4gQXMgdGhlc2UgU09DIGhhdmUgc29tZSBkaWZmZXJlbmNlcywgdGhpcyBkcml2ZXIgd2lsbCBo
ZWxwIHVzCj4+IHRvIGtub3cgb24gd2hpY2ggcmV2aXNpb24gd2UgYXJlIGJ5IHVzaW5nICdzb2Nf
ZGV2aWNlJyByZWdpc3RyYXRpb24KPj4gdG8gYmUgYWJsZSB0byB1c2UgJ3NvY19kZXZpY2VfbWF0
Y2gnIHRvIGRldGVjdCByazMyODgvcmszMjg4dy4KPj4KPj4gU2lnbmVkLW9mZi1ieTogTXlsw6hu
ZSBKb3NzZXJhbmQgPG15bGVuZS5qb3NzZXJhbmRAY29sbGFib3JhLmNvbT4KPiAKPiBJIGxpa2Ug
eW91ciBuZXcgYXBwcm9hY2ggcXVpdGUgYSBsb3QgOi0pCgpUaGFuayB5b3UsIEkgYW0gaGFwcHkg
dG8ga25vdyB0aGF0IDpECgo+IAo+IFRoZXJlIGFyZSBzb21lIHRoaW5ncyB3ZSBuZWVkIHRvIHRh
a2UgaW50byBhY2NvdW50IHRob3VnaCwgc2VlIGJlbG93LgoKU3VyZSwgbm8gcHJvYmxlbQoKPiAK
PiAKPj4gLS0tCj4+ICAgZHJpdmVycy9zb2Mvcm9ja2NoaXAvTWFrZWZpbGUgfCAgIDEgKwo+PiAg
IGRyaXZlcnMvc29jL3JvY2tjaGlwL3JrMzI4OC5jIHwgMTI1ICsrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysKPj4gICAyIGZpbGVzIGNoYW5nZWQsIDEyNiBpbnNlcnRpb25zKCspCj4+
ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvc29jL3JvY2tjaGlwL3JrMzI4OC5jCj4+Cj4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL3NvYy9yb2NrY2hpcC9NYWtlZmlsZSBiL2RyaXZlcnMvc29j
L3JvY2tjaGlwL01ha2VmaWxlCj4+IGluZGV4IGFmY2EwYTRjNGI3Mi4uOWRiZjEyOTEzNTEyIDEw
MDY0NAo+PiAtLS0gYS9kcml2ZXJzL3NvYy9yb2NrY2hpcC9NYWtlZmlsZQo+PiArKysgYi9kcml2
ZXJzL3NvYy9yb2NrY2hpcC9NYWtlZmlsZQo+PiBAQCAtMiw1ICsyLDYgQEAKPj4gICAjCj4+ICAg
IyBSb2NrY2hpcCBTb2MgZHJpdmVycwo+PiAgICMKPj4gK29iai0kKENPTkZJR19BUkNIX1JPQ0tD
SElQKSArPSByazMyODgubwo+PiAgIG9iai0kKENPTkZJR19ST0NLQ0hJUF9HUkYpICs9IGdyZi5v
Cj4+ICAgb2JqLSQoQ09ORklHX1JPQ0tDSElQX1BNX0RPTUFJTlMpICs9IHBtX2RvbWFpbnMubwo+
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zb2Mvcm9ja2NoaXAvcmszMjg4LmMgYi9kcml2ZXJzL3Nv
Yy9yb2NrY2hpcC9yazMyODguYwo+IAo+IEknZCByZWFsbHkgbGlrZSB0aGlzIHRvIGJlIGEgc29j
LmMgaW5zdGVhZCBvZiByazMyODguYyA7LSkKCkNvb2whIEkgd2lsbCBkbyB0aGF0IDopCgo+IAo+
IAo+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+PiBpbmRleCAwMDAwMDAwMDAwMDAuLjgzMzc5YmEy
YjMxYgo+PiAtLS0gL2Rldi9udWxsCj4+ICsrKyBiL2RyaXZlcnMvc29jL3JvY2tjaGlwL3JrMzI4
OC5jCj4+IEBAIC0wLDAgKzEsMTI1IEBACj4+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjog
R1BMLTIuMAo+PiArLyoKPj4gKyAqIENvcHlyaWdodCAyMDIwIENvbGxhYm9yYSBMdGQKPj4gKyAq
IEF1dGhvcjogTXlsZW5lIEpvc3NlcmFuZCA8bXlsZW5lLmpvc3NlcmFuZEBjb2xsYWJvcmEuY29t
Pgo+PiArICovCj4+ICsKPj4gKyNpbmNsdWRlIDxsaW51eC9pbml0Lmg+Cj4+ICsjaW5jbHVkZSA8
bGludXgvaW8uaD4KPj4gKyNpbmNsdWRlIDxsaW51eC9vZl9hZGRyZXNzLmg+Cj4+ICsjaW5jbHVk
ZSA8bGludXgvc3lzX3NvYy5oPgo+PiArI2luY2x1ZGUgPGxpbnV4L3NsYWIuaD4KPj4gKyNpbmNs
dWRlIDxsaW51eC9wbGF0Zm9ybV9kZXZpY2UuaD4KPj4gKyNpbmNsdWRlIDxsaW51eC9vZi5oPgo+
PiArCj4+ICsjZGVmaW5lIFJLMzI4OF9IRE1JX1JFVl9SRUcJMHgwNAo+PiArI2RlZmluZSBSSzMy
ODhXX0hETUlfUkVWCTB4MUEKPj4gKwo+PiArZW51bSByazMyODhfc29jX3JldiB7Cj4+ICsJUksz
Mjg4X1NPQ19SRVZfTk9UX0RFVEVDVCwKPj4gKwlSSzMyODhfU09DX1JFVl9SSzMyODgsCj4+ICsJ
UkszMjg4X1NPQ19SRVZfUkszMjg4VywKPj4gK307Cj4+ICsKPj4gK3N0YXRpYyBpbnQgcmszMjg4
X3JldmlzaW9uKHZvaWQpCj4+ICt7Cj4+ICsJc3RhdGljIGludCByZXZpc2lvbiA9IFJLMzI4OF9T
T0NfUkVWX05PVF9ERVRFQ1Q7Cj4+ICsJc3RydWN0IGRldmljZV9ub2RlICpkbjsKPj4gKwl2b2lk
IF9faW9tZW0gKmhkbWlfYmFzZTsKPj4gKwo+PiArCWlmIChyZXZpc2lvbiAhPSBSSzMyODhfU09D
X1JFVl9OT1RfREVURUNUKQo+PiArCQlyZXR1cm4gcmV2aXNpb247Cj4+ICsKPj4gKwlkbiA9IG9m
X2ZpbmRfY29tcGF0aWJsZV9ub2RlKE5VTEwsIE5VTEwsICJyb2NrY2hpcCxyazMyODgtZHctaGRt
aSIpOwo+PiArCWlmICghZG4pIHsKPj4gKwkJcHJfZXJyKCIlczogQ291bGRuJ3QgZmluZCBIRE1J
IG5vZGVcbiIsIF9fZnVuY19fKTsKPj4gKwkJcmV0dXJuIC1FSU5WQUw7Cj4+ICsJfQo+PiArCj4+
ICsJaGRtaV9iYXNlID0gb2ZfaW9tYXAoZG4sIDApOwo+PiArCW9mX25vZGVfcHV0KGRuKTsKPj4g
Kwo+PiArCWlmICghaGRtaV9iYXNlKSB7Cj4+ICsJCXByX2VycigiJXM6IENvdWxkbid0IG1hcCAl
cE9GIHJlZ3NcbiIsIF9fZnVuY19fLAo+PiArCQkgICAgICAgaGRtaV9iYXNlKTsKPj4gKwkJcmV0
dXJuIC1FTlhJTzsKPj4gKwl9Cj4gCj4gVGhlIHBvc3NpYmxlIHByb2JsZW0gSSBzZWUgaGVyZSBp
cyBjbG9ja2luZyBhbmQgcG93ZXItZG9tYWluIG9mIHRoZSBoZG1pCj4gY29udHJvbGxlciBpbiBj
b3JuZXItY2FzZXMuIEluIHRoZSBwYXN0IHdlIGFscmVhZHkgaGFkIGEgbG90IG9mIGZ1biB3aXRo
Cj4ga2V4ZWMsIHdoaWNoIGFsc28gaW5kaWNhdGVzIHRoYXQgcGVvcGxlIGFjdHVhbGx5IHVzZSBr
ZXhlYyBwcm9kdWN0aXZlbHkuCj4gCj4gU28gd2hpbGUgYWxsIGNsb2NrcyBhcmUgdW5nYXRlZCBh
bmQgYWxsIHBvd2VyLWRvbWFpbnMgYXJlIHBvd2VyZWQgb24gZmlyc3QKPiBib290LCBvbiBhIHN5
c3RlbSB3aXRob3V0IGdyYXBoaWNzIHRoZSBwY2xrK3Bvd2VyLWRvbWFpbiBjb3VsZCBiZSBvZmYg
d2hlbgo+IGRvaW5nIGEga2V4ZWMgaW50byBhIHNlY29uZCBrZXJuZWwsIHdoaWNoIHRoZW4gd291
bGQgcHJvYmFibHkgaGFuZyBoZXJlLgo+IAo+IAo+IE9mIGNvdXJzZSB3aXRoIHRoZSBoZG1pLXBj
bGsgYmVpbmcgc291cmNlZCBmcm9tIGhjbGtfdmlvIHdlIHJ1biBpbnRvIGEKPiBjaGlja2VuLWVn
Zy1wcm9ibGVtLCBhcyB3ZSBuZWVkIHBjbGtfaGRtaV9jdHJsIHRvIHJlZ2lzdGVyIGhjbGtfdmlv
IGF0IGFsbC4KPiAKPiBTbyBJIGd1ZXNzIG9uZSB3YXkgb3V0IG9mIHRoaXMgY291bGQgYmUgdG8K
PiAtIGFtZW5kIHJrMzI4OF9jbGtfc2h1dGRvd24oKSB0byBhbHNvIHVuZ2F0ZSB0aGUgaGRtaS1w
Y2xrIG9uIHNodXRkb3duCj4gLSBhZGQgYSBzaHV0ZG93biBtZWNoYW5pc20gdG8gdGhlIHBvd2Vy
LWRvbWFpbiBkcml2ZXIgc28gdGhhdCBpdCBjYW4KPiAgICBlbmFibGUgUERfVklPIG9uIHNodXRk
b3duCgpobSwgaW5kZWVkLCBJIHdpbGwgc2VuZCBhIHYzIGluY2x1ZGluZyB0aGF0LCB0aGFua3Mg
Zm9yIHRoZSBoaW50cyEKCj4gCj4+ICsKPj4gKwlpZiAocmVhZGxfcmVsYXhlZChoZG1pX2Jhc2Ug
KyBSSzMyODhfSERNSV9SRVZfUkVHKQo+PiArCSAgICA9PSBSSzMyODhXX0hETUlfUkVWKQo+IAo+
IG5pdDogYSBuaWNlciBsb29rIHdvdWxkIGJlIHNvbWV0aGluZyBsaWtlCj4gCXZhbCA9IHJlYWRs
X3JlbGF4ZWQoaGRtaV9iYXNlICsgUkszMjg4X0hETUlfUkVWX1JFRyk7Cj4gCWlmICh2YWwgPT0g
UkszMjg4V19IRE1JX1JFVikKCkkgd2lsbCBjaGFuZ2UgdGhhdC4KCj4gCj4+ICsJCXJldmlzaW9u
ID0gUkszMjg4X1NPQ19SRVZfUkszMjg4VzsKPj4gKwllbHNlCj4+ICsJCXJldmlzaW9uID0gUksz
Mjg4X1NPQ19SRVZfUkszMjg4Owo+PiArCj4+ICsJaW91bm1hcChoZG1pX2Jhc2UpOwo+PiArCj4+
ICsJcmV0dXJuIHJldmlzaW9uOwo+PiArfQo+PiArCj4+ICtzdGF0aWMgY29uc3QgY2hhciAqcmsz
Mjg4X3NvY2luZm9fcmV2aXNpb24odTMyIHJldikKPj4gK3sKPj4gKwljb25zdCBjaGFyICpzb2Nf
cmV2Owo+PiArCj4+ICsJc3dpdGNoIChyZXYpIHsKPj4gKwljYXNlIFJLMzI4OF9TT0NfUkVWX1JL
MzI4ODoKPj4gKwkJc29jX3JldiA9ICJSSzMyODgiOwo+PiArCQlicmVhazsKPj4gKwo+PiArCWNh
c2UgUkszMjg4X1NPQ19SRVZfUkszMjg4VzoKPj4gKwkJc29jX3JldiA9ICJSSzMyODh3IjsKPiAK
PiBjYW4gd2UgbWF5YmUgdXNlIGxvd2VyLWNhc2UgbGV0dGVycyBmb3IgYWxsIGhlcmU/CgpTdXJl
LCBubyBwcm9ibGVtLgoKPiAKPj4gKwkJYnJlYWs7Cj4+ICsKPj4gKwljYXNlIFJLMzI4OF9TT0Nf
UkVWX05PVF9ERVRFQ1Q6Cj4+ICsJCXNvY19yZXYgPSAiIjsKPj4gKwkJYnJlYWs7Cj4+ICsKPj4g
KwlkZWZhdWx0Ogo+PiArCQlzb2NfcmV2ID0gInVua25vd24iOwo+PiArCQlicmVhazsKPj4gKwl9
Cj4+ICsKPj4gKwlyZXR1cm4ga3N0cmR1cF9jb25zdChzb2NfcmV2LCBHRlBfS0VSTkVMKTsKPj4g
K30KPj4gKwo+PiArc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgcmszMjg4X3NvY19t
YXRjaFtdID0gewo+PiArCXsgLmNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszMjg4IiwgfSwKPj4g
Kwl7IH0KPj4gK307Cj4+ICsKPj4gK3N0YXRpYyBpbnQgX19pbml0IHJrMzI4OF9zb2NfaW5pdCh2
b2lkKQo+IAo+IGFzIG5vdGVkIGF0IHRoZSB0b3AsIEknZCByZWFsbHkgbGlrZSB0byBzZWUgdGhp
cyBtb3JlIGdlbmVyYWxpemVkIHNvIHRoYXQKPiBvdGhlciBzb2NzIGNhbiBqdXN0IGhvb2sgaW4g
dGhlcmUgd2l0aCBhIHJldmlzaW9uIGNhbGxiYWNrIGluIGEKPiByb2NrY2hpcF9zb2NfZGF0YSBz
dHJ1Y3QuCgpZZXMsIEkgd2lsbCBkbyEKCj4gCj4gCj4+ICt7Cj4+ICsJc3RydWN0IHNvY19kZXZp
Y2VfYXR0cmlidXRlICpzb2NfZGV2X2F0dHI7Cj4+ICsJc3RydWN0IHNvY19kZXZpY2UgKnNvY19k
ZXY7Cj4+ICsJc3RydWN0IGRldmljZV9ub2RlICpucDsKPj4gKwo+PiArCW5wID0gb2ZfZmluZF9t
YXRjaGluZ19ub2RlKE5VTEwsIHJrMzI4OF9zb2NfbWF0Y2gpOwo+PiArCWlmICghbnApCj4+ICsJ
CXJldHVybiAtRU5PREVWOwo+PiArCj4+ICsJc29jX2Rldl9hdHRyID0ga3phbGxvYyhzaXplb2Yo
KnNvY19kZXZfYXR0ciksIEdGUF9LRVJORUwpOwo+PiArCWlmICghc29jX2Rldl9hdHRyKQo+PiAr
CQlyZXR1cm4gLUVOT01FTTsKPj4gKwo+PiArCXNvY19kZXZfYXR0ci0+ZmFtaWx5ID0gIlJvY2tj
aGlwIjsKPj4gKwlzb2NfZGV2X2F0dHItPnNvY19pZCA9ICJSSzMyeHgiOwo+IAo+IG5pdDogcmsz
Mjg4IGluc3RlYWQgb2YgIjMyeHgiIHBsZWFzZQoKb2theQoKPiAKPj4gKwo+PiArCW5wID0gb2Zf
ZmluZF9ub2RlX2J5X3BhdGgoIi8iKTsKPj4gKwlvZl9wcm9wZXJ0eV9yZWFkX3N0cmluZyhucCwg
Im1vZGVsIiwgJnNvY19kZXZfYXR0ci0+bWFjaGluZSk7Cj4+ICsJb2Zfbm9kZV9wdXQobnApOwo+
PiArCj4+ICsJc29jX2Rldl9hdHRyLT5yZXZpc2lvbiA9IHJrMzI4OF9zb2NpbmZvX3JldmlzaW9u
KHJrMzI4OF9yZXZpc2lvbigpKTsKPj4gKwo+PiArCXNvY19kZXYgPSBzb2NfZGV2aWNlX3JlZ2lz
dGVyKHNvY19kZXZfYXR0cik7Cj4+ICsJaWYgKElTX0VSUihzb2NfZGV2KSkgewo+PiArCQlrZnJl
ZV9jb25zdChzb2NfZGV2X2F0dHItPnJldmlzaW9uKTsKPj4gKwkJa2ZyZWVfY29uc3Qoc29jX2Rl
dl9hdHRyLT5zb2NfaWQpOwo+PiArCQlrZnJlZShzb2NfZGV2X2F0dHIpOwo+PiArCQlyZXR1cm4g
UFRSX0VSUihzb2NfZGV2KTsKPj4gKwl9Cj4+ICsKPj4gKwlkZXZfaW5mbyhzb2NfZGV2aWNlX3Rv
X2RldmljZShzb2NfZGV2KSwgIlJvY2tjaGlwICVzICVzIGRldGVjdGVkXG4iLAo+PiArCQkgc29j
X2Rldl9hdHRyLT5zb2NfaWQsIHNvY19kZXZfYXR0ci0+cmV2aXNpb24pOwo+IAo+IG5pdDogZGV2
X2RiZyBzaG91bGQgYmUgZW5vdWdoLCB0aGF0IGluZm9ybWF0aW9uIGRvZXNuJ3QgcmVhbGx5IG1h
dHRlciBmb3IKPiBtb3N0IHBlb3BsZSwgYXMgaXQncyBvbmx5IHJlbGV2YW50IHRvIGNsb2NrIGlu
dGVybmFscy4KCnllcAoKVGhhbmsgeW91IGFnYWluIGZvciB0aGlzIHJldmlldyEKCkJlc3QgcmVn
YXJkcywKTXlsw6huZSBKb3NzZXJhbmQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
