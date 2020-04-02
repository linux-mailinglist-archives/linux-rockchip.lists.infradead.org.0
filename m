Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DE0C19C061
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 13:45:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UOaCorw38+dE+5NXh78c/ayZDG3O9HHli7gidl625uM=; b=bGvxuAMDvyHAuNuntMRdIR8te
	LeW7XuaJSSX1lp1RuN4Eh8TCmB+QNTgOGnB6f/0v/TWEw9mP/Y0UcQgjDzLsq/ahJjLghAVJUlJBR
	bdNrNbf1zG10KldiuJftyGLsS9qr9aDDonqkILAqCUymPJbbrm1f3uunWOWJyS+Q3qJYQtd1KkID5
	G4oEKMdRp8Vn5loTYQwUhybfZMfsxRSTOACjtC7l1LZjiAe1TZHrYxgP8ZJK8Ah2cCXP1+vQpkOVu
	cRf3+DtC1heO4np6mub41wZvtaZS+Gc65N2Si5s6RZSaa+rfnyF0adqkvRt+Css/r2PQz/h+o3pXX
	a3W28wUpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJyI8-0005P0-SW; Thu, 02 Apr 2020 11:45:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJyI0-0005Il-S6; Thu, 02 Apr 2020 11:45:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8D98C1045;
 Thu,  2 Apr 2020 04:45:38 -0700 (PDT)
Received: from [10.57.59.199] (unknown [10.57.59.199])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 209B43F68F;
 Thu,  2 Apr 2020 04:45:36 -0700 (PDT)
Subject: Re: [PATCH v2 1/2] soc: rockchip: Register a soc_device to retrieve
 revision
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 =?UTF-8?Q?Myl=c3=a8ne_Josserand?= <mylene.josserand@collabora.com>
References: <20200401153513.423683-1-mylene.josserand@collabora.com>
 <20200401153513.423683-2-mylene.josserand@collabora.com>
 <5143930.cPWVAAQKI9@diego>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <4844d3ba-87fa-51f4-0a56-3131e390589a@arm.com>
Date: Thu, 2 Apr 2020 12:45:34 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <5143930.cPWVAAQKI9@diego>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_044540_995624_F76947A6 
X-CRM114-Status: GOOD (  27.68  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: sboyd@kernel.org, mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org,
 geert@linux-m68k.org, kernel@collabora.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gMjAyMC0wNC0wMSA1OjM0IHBtLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKWy4uLl0KPiBUaGUg
cG9zc2libGUgcHJvYmxlbSBJIHNlZSBoZXJlIGlzIGNsb2NraW5nIGFuZCBwb3dlci1kb21haW4g
b2YgdGhlIGhkbWkKPiBjb250cm9sbGVyIGluIGNvcm5lci1jYXNlcy4gSW4gdGhlIHBhc3Qgd2Ug
YWxyZWFkeSBoYWQgYSBsb3Qgb2YgZnVuIHdpdGgKPiBrZXhlYywgd2hpY2ggYWxzbyBpbmRpY2F0
ZXMgdGhhdCBwZW9wbGUgYWN0dWFsbHkgdXNlIGtleGVjIHByb2R1Y3RpdmVseS4KPiAKPiBTbyB3
aGlsZSBhbGwgY2xvY2tzIGFyZSB1bmdhdGVkIGFuZCBhbGwgcG93ZXItZG9tYWlucyBhcmUgcG93
ZXJlZCBvbiBmaXJzdAo+IGJvb3QsIG9uIGEgc3lzdGVtIHdpdGhvdXQgZ3JhcGhpY3MgdGhlIHBj
bGsrcG93ZXItZG9tYWluIGNvdWxkIGJlIG9mZiB3aGVuCj4gZG9pbmcgYSBrZXhlYyBpbnRvIGEg
c2Vjb25kIGtlcm5lbCwgd2hpY2ggdGhlbiB3b3VsZCBwcm9iYWJseSBoYW5nIGhlcmUuCgpKdXN0
IHRvIGJlIHRoYXQgZ3V5LCBob3cgYWJvdXQga2R1bXAsIHdoZXJlIGVudHJ5IHRvIHRoZSBzZWNv
bmQga2VybmVsIAppcyBwcmVkaWNhdGVkIG9uIHRoZXJlICpub3QqIGJlaW5nIGEgbmljZSBjbGVh
biBzaHV0ZG93bj8gOykKCklNTyByZWx5aW5nIG9uIGFueSBwYXJ0aWN1bGFyIGJvb3Rsb2FkZXIg
YmVoYXZpb3VyIGluIHRoZSBrZXJuZWwgaXMgCmZhaXJseSBmcmFnaWxlIC0gVS1Cb290IGhhcyBh
IGxvdCBtb3JlIGxhdGl0dWRlIGluIGFzc3VtaW5nIGl0J3MgcnVubmluZyAKc3RyYWlnaHQgb3V0
IG9mIHJlc2V0IHRoYW4gTGludXggZG9lcy4gSWYgd2UncmUgbm90IGdvaW5nIHRvIHRydXN0IHRo
ZSAKRFQgdG8gY29ycmVjdGx5IGRlc2NyaWJlIHRoZSBTb0MgdmFyaWFudCBpbiB0aGUgZmlyc3Qg
cGxhY2UsIHRoZW4gaXQncyAKc29tZXdoYXQgcXVlc3Rpb25hYmxlIHdoZXRoZXIgd2Ugc2hvdWxk
IHRydXN0IGl0IGZvciBpbmRpcmVjdGx5IAppZGVudGlmeWluZyB0aGUgU29DIHZhcmlhbnQgZWl0
aGVyIC0gaXQgd291bGQgc2VlbSBhIGxvdCBtb3JlIHJvYnVzdCB0byAKanVzdCBtYXAgdGhlIGtu
b3duIHBoeXNpY2FsIGFkZHJlc3NlcyB0byBydW4gYSBjYW5uZWQgc2VxdWVuY2Ugb2YgCnJlZ2lz
dGVyIHdyaXRlcyB0aGF0IHB1dHMgdGhpbmdzIGluIGEga25vd24tZ29vZCBzdGF0ZSAob24gdGhl
IGJhc2lzIAp0aGF0IHRoaXMgaGFzIHRvIHJ1biBiZWZvcmUgdGhlICdyZWFsJyBkcml2ZXJzIGZv
ciB0aG9zZSB0aGluZ3MgYXJlIHVwLCAKYW5kIHRodXMgY2FuJ3QgaW50ZXJmZXJlIHdpdGggdGhl
bSkuCgpSb2Jpbi4KCj4gT2YgY291cnNlIHdpdGggdGhlIGhkbWktcGNsayBiZWluZyBzb3VyY2Vk
IGZyb20gaGNsa192aW8gd2UgcnVuIGludG8gYQo+IGNoaWNrZW4tZWdnLXByb2JsZW0sIGFzIHdl
IG5lZWQgcGNsa19oZG1pX2N0cmwgdG8gcmVnaXN0ZXIgaGNsa192aW8gYXQgYWxsLgo+IAo+IFNv
IEkgZ3Vlc3Mgb25lIHdheSBvdXQgb2YgdGhpcyBjb3VsZCBiZSB0bwo+IC0gYW1lbmQgcmszMjg4
X2Nsa19zaHV0ZG93bigpIHRvIGFsc28gdW5nYXRlIHRoZSBoZG1pLXBjbGsgb24gc2h1dGRvd24K
PiAtIGFkZCBhIHNodXRkb3duIG1lY2hhbmlzbSB0byB0aGUgcG93ZXItZG9tYWluIGRyaXZlciBz
byB0aGF0IGl0IGNhbgo+ICAgIGVuYWJsZSBQRF9WSU8gb24gc2h1dGRvd24KPiAKPj4gKwo+PiAr
CWlmIChyZWFkbF9yZWxheGVkKGhkbWlfYmFzZSArIFJLMzI4OF9IRE1JX1JFVl9SRUcpCj4+ICsJ
ICAgID09IFJLMzI4OFdfSERNSV9SRVYpCj4gCj4gbml0OiBhIG5pY2VyIGxvb2sgd291bGQgYmUg
c29tZXRoaW5nIGxpa2UKPiAJdmFsID0gcmVhZGxfcmVsYXhlZChoZG1pX2Jhc2UgKyBSSzMyODhf
SERNSV9SRVZfUkVHKTsKPiAJaWYgKHZhbCA9PSBSSzMyODhXX0hETUlfUkVWKQo+IAo+PiArCQly
ZXZpc2lvbiA9IFJLMzI4OF9TT0NfUkVWX1JLMzI4OFc7Cj4+ICsJZWxzZQo+PiArCQlyZXZpc2lv
biA9IFJLMzI4OF9TT0NfUkVWX1JLMzI4ODsKPj4gKwo+PiArCWlvdW5tYXAoaGRtaV9iYXNlKTsK
Pj4gKwo+PiArCXJldHVybiByZXZpc2lvbjsKPj4gK30KPj4gKwo+PiArc3RhdGljIGNvbnN0IGNo
YXIgKnJrMzI4OF9zb2NpbmZvX3JldmlzaW9uKHUzMiByZXYpCj4+ICt7Cj4+ICsJY29uc3QgY2hh
ciAqc29jX3JldjsKPj4gKwo+PiArCXN3aXRjaCAocmV2KSB7Cj4+ICsJY2FzZSBSSzMyODhfU09D
X1JFVl9SSzMyODg6Cj4+ICsJCXNvY19yZXYgPSAiUkszMjg4IjsKPj4gKwkJYnJlYWs7Cj4+ICsK
Pj4gKwljYXNlIFJLMzI4OF9TT0NfUkVWX1JLMzI4OFc6Cj4+ICsJCXNvY19yZXYgPSAiUkszMjg4
dyI7Cj4gCj4gY2FuIHdlIG1heWJlIHVzZSBsb3dlci1jYXNlIGxldHRlcnMgZm9yIGFsbCBoZXJl
Pwo+IAo+PiArCQlicmVhazsKPj4gKwo+PiArCWNhc2UgUkszMjg4X1NPQ19SRVZfTk9UX0RFVEVD
VDoKPj4gKwkJc29jX3JldiA9ICIiOwo+PiArCQlicmVhazsKPj4gKwo+PiArCWRlZmF1bHQ6Cj4+
ICsJCXNvY19yZXYgPSAidW5rbm93biI7Cj4+ICsJCWJyZWFrOwo+PiArCX0KPj4gKwo+PiArCXJl
dHVybiBrc3RyZHVwX2NvbnN0KHNvY19yZXYsIEdGUF9LRVJORUwpOwo+PiArfQo+PiArCj4+ICtz
dGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCByazMyODhfc29jX21hdGNoW10gPSB7Cj4+
ICsJeyAuY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazMyODgiLCB9LAo+PiArCXsgfQo+PiArfTsK
Pj4gKwo+PiArc3RhdGljIGludCBfX2luaXQgcmszMjg4X3NvY19pbml0KHZvaWQpCj4gCj4gYXMg
bm90ZWQgYXQgdGhlIHRvcCwgSSdkIHJlYWxseSBsaWtlIHRvIHNlZSB0aGlzIG1vcmUgZ2VuZXJh
bGl6ZWQgc28gdGhhdAo+IG90aGVyIHNvY3MgY2FuIGp1c3QgaG9vayBpbiB0aGVyZSB3aXRoIGEg
cmV2aXNpb24gY2FsbGJhY2sgaW4gYQo+IHJvY2tjaGlwX3NvY19kYXRhIHN0cnVjdC4KPiAKPiAK
Pj4gK3sKPj4gKwlzdHJ1Y3Qgc29jX2RldmljZV9hdHRyaWJ1dGUgKnNvY19kZXZfYXR0cjsKPj4g
KwlzdHJ1Y3Qgc29jX2RldmljZSAqc29jX2RldjsKPj4gKwlzdHJ1Y3QgZGV2aWNlX25vZGUgKm5w
Owo+PiArCj4+ICsJbnAgPSBvZl9maW5kX21hdGNoaW5nX25vZGUoTlVMTCwgcmszMjg4X3NvY19t
YXRjaCk7Cj4+ICsJaWYgKCFucCkKPj4gKwkJcmV0dXJuIC1FTk9ERVY7Cj4+ICsKPj4gKwlzb2Nf
ZGV2X2F0dHIgPSBremFsbG9jKHNpemVvZigqc29jX2Rldl9hdHRyKSwgR0ZQX0tFUk5FTCk7Cj4+
ICsJaWYgKCFzb2NfZGV2X2F0dHIpCj4+ICsJCXJldHVybiAtRU5PTUVNOwo+PiArCj4+ICsJc29j
X2Rldl9hdHRyLT5mYW1pbHkgPSAiUm9ja2NoaXAiOwo+PiArCXNvY19kZXZfYXR0ci0+c29jX2lk
ID0gIlJLMzJ4eCI7Cj4gCj4gbml0OiByazMyODggaW5zdGVhZCBvZiAiMzJ4eCIgcGxlYXNlCj4g
Cj4+ICsKPj4gKwlucCA9IG9mX2ZpbmRfbm9kZV9ieV9wYXRoKCIvIik7Cj4+ICsJb2ZfcHJvcGVy
dHlfcmVhZF9zdHJpbmcobnAsICJtb2RlbCIsICZzb2NfZGV2X2F0dHItPm1hY2hpbmUpOwo+PiAr
CW9mX25vZGVfcHV0KG5wKTsKPj4gKwo+PiArCXNvY19kZXZfYXR0ci0+cmV2aXNpb24gPSByazMy
ODhfc29jaW5mb19yZXZpc2lvbihyazMyODhfcmV2aXNpb24oKSk7Cj4+ICsKPj4gKwlzb2NfZGV2
ID0gc29jX2RldmljZV9yZWdpc3Rlcihzb2NfZGV2X2F0dHIpOwo+PiArCWlmIChJU19FUlIoc29j
X2RldikpIHsKPj4gKwkJa2ZyZWVfY29uc3Qoc29jX2Rldl9hdHRyLT5yZXZpc2lvbik7Cj4+ICsJ
CWtmcmVlX2NvbnN0KHNvY19kZXZfYXR0ci0+c29jX2lkKTsKPj4gKwkJa2ZyZWUoc29jX2Rldl9h
dHRyKTsKPj4gKwkJcmV0dXJuIFBUUl9FUlIoc29jX2Rldik7Cj4+ICsJfQo+PiArCj4+ICsJZGV2
X2luZm8oc29jX2RldmljZV90b19kZXZpY2Uoc29jX2RldiksICJSb2NrY2hpcCAlcyAlcyBkZXRl
Y3RlZFxuIiwKPj4gKwkJIHNvY19kZXZfYXR0ci0+c29jX2lkLCBzb2NfZGV2X2F0dHItPnJldmlz
aW9uKTsKPiAKPiBuaXQ6IGRldl9kYmcgc2hvdWxkIGJlIGVub3VnaCwgdGhhdCBpbmZvcm1hdGlv
biBkb2Vzbid0IHJlYWxseSBtYXR0ZXIgZm9yCj4gbW9zdCBwZW9wbGUsIGFzIGl0J3Mgb25seSBy
ZWxldmFudCB0byBjbG9jayBpbnRlcm5hbHMuCj4gCj4gCj4gSGVpa28KPiAKPiAKPiAKPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IExpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdAo+IExpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
