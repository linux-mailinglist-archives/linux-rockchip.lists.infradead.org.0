Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 180A5157C7A
	for <lists+linux-rockchip@lfdr.de>; Mon, 10 Feb 2020 14:37:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jIeoBizT97t1At7tBJUR9pXOlbXw08Qo7X0vPx/ro9o=; b=CqYZyRk5Q1QDiHVrFXZPHPGig
	kSYhsiQBtb6043cMEweDiBlEJWV/aPs+bX38uxm2en+mbx4NE1aw0VLQEkT6q6XkCQtNY+yqcer5s
	mVF3cd97K/qjloGEInI1WBa7E0Uu2Kh2xiHQvHOHqhh/Na5gG9LpU0ejePIazyItR4aoWu25V1gFU
	80yWebs8Mv2VlB+BStLDOTygiN4KiomIX6vz7KRoMc2LZPJynsquO27acCOf+c+cBzkMb4goGycFO
	gnG8HLP1kjanIAUi37Y7YTxj3Z61utO5H8ecz1iDIewbQDCcd4uyylNwOa5AS9twUNFPbJDEnDka1
	x2RrSgH0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j19G3-0004kn-LH; Mon, 10 Feb 2020 13:37:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j19Fq-0004YB-U5; Mon, 10 Feb 2020 13:37:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E11E31FB;
 Mon, 10 Feb 2020 05:37:34 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 265C53F68E;
 Mon, 10 Feb 2020 05:37:34 -0800 (PST)
Subject: Re: [PATCH] arm64: dts: rockchip: Fix rk3328-roc-cc sdmmcio-regulator
To: Adam Van Ymeren <adam@vany.ca>, Peter Geis <pgwipeout@gmail.com>
References: <87imkryz5t.fsf@vany.ca>
 <7b9829b3-e2d2-95b1-03cb-1af7a3c6acad@arm.com>
 <4a6a9d81-c831-4167-7fbf-64805940fb6f@vany.ca>
 <d8a8b696-268b-1ea8-7b5e-406a651011ff@arm.com>
 <510d310b-30af-7b24-d472-907bc6b2ef46@vany.ca>
 <CAMdYzYo5V2rHE6Axx9p67n3FcCFpQ5TA+m7kqaE3Uqn6d0QUhw@mail.gmail.com>
 <7b36198e-25c0-4f3b-d871-6bd5aaf619d8@vany.ca>
 <CAMdYzYp_dVjn18-6gy5MVpuGcOpf26eaPitfNZhARCixfrtYCA@mail.gmail.com>
 <2f863743-f5fd-7702-ac22-762dbca834cb@vany.ca>
 <CAMdYzYopKjRpVnyq2k84XZK0kmR_ZBH8KNjVyPz3upQjx0rLJQ@mail.gmail.com>
 <88ee95cc-4160-a1b2-ae38-6a1146cc2dde@vany.ca>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <fc529695-ccd7-f1b5-ebf5-8241fec3a24a@arm.com>
Date: Mon, 10 Feb 2020 13:37:32 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <88ee95cc-4160-a1b2-ae38-6a1146cc2dde@vany.ca>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_053739_059383_96052707 
X-CRM114-Status: GOOD (  29.63  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
 Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gMDkvMDIvMjAyMCAxOjA3IGFtLCBBZGFtIFZhbiBZbWVyZW4gd3JvdGU6Cj4gR290IGl0IHdv
cmtpbmcuIFJvYmluIHlvdSB3ZXJlIHJpZ2h0LCBpdCBqdXN0IG5lZWRlZCBlbmFibGUtYWN0aXZl
LWhpZ2g7Cj4gYWRkZWQgdG8gdGhlIHJlZ3VsYXRvciwgdXBkYXRlZCBwYXRjaCBhdCB0aGUgZW5k
IG9mIHRoaXMgbWVzc2FnZS4KCldlaXJkLi4uIGFmdGVyIG15IGluaXRpYWwgZXhjaXRlbWVudCBJ
IHdlbnQgYmFjayBhbmQgbG9va2VkIG1vcmUgY2xvc2VseSAKYXQgdGhlIGJpbmRpbmcgYW5kIGdw
aW9saWItb2YgY29kZSwgb25seSB0byByZWFsaXNlIHRoYXQgdGhhdCBwcm9wZXJ0eSAKaXMgb25s
eSBzdXBwb3NlZCB0byBhcHBseSB0byBzcGVjaWZpYyAnZW5hYmxlJyBHUElPcyAob2Ygd2hpY2gg
dGhlcmUgYXJlIApub25lIGhlcmUgc2luY2UgaXQncyBhbHdheXMtb24pLCBhbmQgdGhhdCB0aGUg
J3N0YXRlJyBHUElPcyB3ZXJlIGEgCnNlcGFyYXRlIHRoaW5nIGFuZCBJJ2QganVtcGVkIHRvIHRo
ZSB3cm9uZyBjb25jbHVzaW9uLiBTbyBub3cgSSdtIGRvdWJseSAKc3VycHJpc2VkIHRoYXQgaXQg
YWN0dWFsbHkgbWFrZXMgYSBkaWZmZXJlbmNlIDovCgo+IEkgd2VudCBiYWNrIG92ZXIgbXkgY29u
ZmlnIHdpdGggYSBmaW5lIHRvb3RoIGNvbWIgYW5kIGZvdW5kIGEgZmV3Cj4gcm9ja2NoaXAgZHJp
dmVycyBJIHdhcyBtaXNzaW5nIGluY2x1ZGluZyBQSU5DVFJMX1JLODA1IHdoaWNoIHNlZW1zCj4g
cmVsYXRlZCBidXQgSSBob25lc3RseSBjYW4ndCBmaWd1cmUgb3V0IGhvdy7CoCBJIHdpbGwgdHJ5
IHRvIG5hcnJvdyBkb3duCj4gd2hpY2ggc3BlY2lmaWMgZHJpdmVyIHdhcyBtaXNzaW5nLsKgIEl0
IHdhcyBvZGQgYmVjYXVzZSBpdCB3b3VsZCBmaW5kIHRoZQo+IG1tYyBob3N0IGJ1dCBqdXN0IGZh
aWwgbm90aWNlIHRoYXQgYSBjYXJkIHdhcyBwcmVzZW50LsKgIEl0IHNlZW1lZCB0byBzZXQKPiB0
aGUgcmVnaXN0ZXIgY29ycmVjdGx5IGFuZCBpZGVudGlmeSB0aGUgbW1jIGhvc3QsIGJ1dCBmYWls
ZWQgdG8gbm90aWNlCj4gYW55IGNhcmQgcHJlc2VudC4KClBJTkNUUkxfUks4MDUgc2hvdWxkIG9u
bHkgYmUgZm9yIHRoZSBjb3VwbGUgb2YgR1BJTyBwaW5zIG9uIHRoZSBQTUlDIAppdHNlbGYgd2hp
Y2ggSUlSQyB0aGUgcmVmZXJlbmNlIGRlc2lnbiB1c2VzIGZvciB0aGUgZXRoZXJuZXQgTEVEcywg
c28gSSAKd291bGRuJ3QgZXhwZWN0IGl0IHRvIGJlIHJlbGV2YW50LgoKVGhvc2Ugc3ltcHRvbXMg
bWFrZSBzZW5zZSBmb3IgdGhlIHZvbHRhZ2VzIGJlaW5nIGJhY2t3YXJkcyAob3IganVzdCAKc3R1
Y2sgYXQgMS44VikgdGhvdWdoIC0gd2hlbiB0aGUgSS9PIGRvbWFpbiBpcyBjb25maWd1cmVkIHRv
IGV4cGVjdCAKMy4zViwgMS44ViBpcyB0b28gbG93IHRvIHJlZ2lzdGVyIGFzIGEgbG9naWMgaGln
aCwgc28gTGludXggd2lsbCBhbHdheXMgCnRoaW5rIHRoYXQgc29tZXRoaW5nIGlzIGluc2VydGVk
IGluIHRoZSBzbG90LCBidXQgbm90IHRhbGtpbmcgYmFjay4KClJvYmluLgoKPiBJIGhhdmVuJ3Qg
eWV0IHRlc3RlZCB0aGlzIHdpdGggYSBoaWdoIHNwZWVkIGNhcmQgeWV0IHRvIHZlcmlmeSAxLjh2
Cj4gc2lnbmFsaW5nIHdvcmtzIGJ1dCBJJ2xsIGZpbmQgb25lIGFuZCBnaXZlIGl0IGEgc2hvdC4K
PiAKPiBUaGFua3MgYSB0b24gdG8gYm90aCBvZiB5b3VyIGZvciB0aGUgaGVscAo+IAo+IAo+IE9u
IDIwMjAtMDItMDUgMTo0MyBwLm0uLCBQZXRlciBHZWlzIHdyb3RlOgo+Pj4+IEZpcnN0IHF1ZXN0
aW9uLCB3aGljaCBrZXJuZWwgYXJlIHlvdSBydW5uaW5nPwo+Pj4+IEN1cnJlbnQgbWFpbmxpbmUg
KDUuNC4xNykgd29ya3Mgb3V0IG9mIHRoZSBib3ggZm9yIHRoZSByazMzMjgtcm9jLWNjLgo+Pj4g
Tm90IGZyb20gbXkgZXhwZXJpZW5jZS4gIEknbSB0cnlpbmcgNS41LCBidXQgSSBhbHNvIHRyaWVk
IGEgZnJlc2ggYnVpbGQKPj4+IG90IDUuNC4xNyBhbmQgbmVpdGhlciB3aWxsIGxvYWQgZnJvbSB0
aGUgc2RjYXJkIGluIHRoZWlyIGRlZmF1bHQKPj4+IGNvbmZpZ3VyYXRpb24uICBJZiB5b3UgaGF2
ZSB0aGlzIHdvcmtpbmcgY2FuIHlvdSBzaGFyZSB5b3VyIGtlcm5lbCBjb25maWc/Cj4+IENvbnNp
ZGVyaW5nIGFsbCBvZiB0aGUgY29tcG9uZW50cyB0byBib290IG9mZiBlbW1jICh3aGljaCB5b3Ug
YXJlCj4+IGNsZWFybHkgZG9pbmcgc2luY2UgeW91IGJvb3QgYXQgYWxsKSBhcmUgdGhlIHNhbWUg
YXMgdGhlIG9uZXMgcmVxdWlyZWQKPj4gZm9yIHNkbW1jIEkgZG91YnQgaXQncyBhIGNvbmZpZ3Vy
YXRpb24gaXNzdWUuCj4+IEJ1dCB0byBhbnN3ZXIgeW91ciBxdWVzdGlvbiwgSSB1c2VkIHRoZSBk
ZWZjb25maWcsIHN0cmlwcGVkIGFsbCBvZiB0aGUKPj4gbm9uIHJvY2tjaGlwIGNvbXBvbmVudHMg
b3V0LCBhbmQgbWFkZSB0aGUgYmFzZSBkcml2ZXJzIGJ1aWx0aW4uCj4gCj4gU28gSSB3YXNuJ3Qg
Ym9vdGluZyBvZmYgb2YgZW1tYy7CoCBJIHdhcyBib290aW5nIGZyb20gdGhlIHNkY2FyZCwgaXQK
PiB3b3VsZCB3b3JrIHNvIGxvbmcgYXMgSSBwcmV2ZW50ZWQgdGhlIGtlcm5lbCBmcm9tIHRyeWlu
ZyB0byBpbml0aWFsaXplCj4gdGhlIHZjY19zZGlvIHJlZ3VsYXRvciAoYnkgcmVtb3ZpbmcgaXQg
b3IgY2hhbmdpbmcgdGhlIGdwaW8gcGluKSwKPiBwcmVzdW1hYmx5IGFzIHUtYm9vdCBsZWZ0IGl0
IGluIGEgcmVhc29uYWJsZSBzdGF0ZS4KPiAKPj4gTWFrZXMgc2Vuc2UuIElmIEkgcmVtb3ZlIHZj
Y19zZGlvIGZyb20gdGhlIGRldmljZSB0cmVlLCBhbmQgcmVtb3ZlIHRoZQo+Pj4gdnFtbWMgZW50
cnkgZnJvbSB0aGUgc2RtbWMgbm9kZSwgdGhlbiB0aGUga2VybmVsIGNvbnRpbnVlcyB0byBib290
LiAgSW4KPj4+IHRoYXQgY2FzZSBJIGhhdmUKPj4+Cj4+PiAjIGNhdCAvc3lzL2tlcm5lbC9kZWJ1
Zy9yZWdtYXAvZHVtbXktc3lzY29uXEBmZjEwMDAwMC9yZWdpc3RlcnMgfCBncmVwIDQyOAo+Pj4K
Pj4+IDQyODogMDAwMGY4MDAKPj4gQXMgaXQgc2hvdWxkIGJlLCB0aGlzIHNob3VsZCBtZWFuIHlv
dXIgbXV0ZSBwaW4gaXMgb2ZmIChkZWZhdWx0IHN0YXRlKQo+PiBhbmQgdGhlIHZxbW1jIHZvbHRh
Z2Ugc2hvdWxkIGJlIDMuM3YuCj4gCj4gR290Y2hhLsKgIEkgYWxzbyBtYW5hZ2VkIHRvIHZlcmlm
eSB0aGlzIHdvcmtzIGFzIGV4cGVjdGVkIG9uIG15IGJvYXJkCj4gd2l0aCBhIG11bHRpbWV0ZXIg
YW5kIHRvZ2dsaW5nIHRoZSByZWdpc3RlciBmcm9tIHRoZSB1LWJvb3Qgc2hlbGwuCj4gCj4+Cj4+
PiAjIGNhdCAvc3lzL2tlcm5lbC9kZWJ1Zy9tbWMxL2lvcwo+Pj4gY2xvY2s6ICAgICAgICAwIEh6
Cj4+PiB2ZGQ6ICAgICAgICAwIChpbnZhbGlkKQo+Pj4gYnVzIG1vZGU6ICAgIDIgKHB1c2gtcHVs
bCkKPj4+IGNoaXAgc2VsZWN0OiAgICAwIChkb24ndCBjYXJlKQo+Pj4gcG93ZXIgbW9kZTogICAg
MCAob2ZmKQo+Pj4gYnVzIHdpZHRoOiAgICAwICgxIGJpdHMpCj4+PiB0aW1pbmcgc3BlYzogICAg
MCAobGVnYWN5KQo+Pj4gc2lnbmFsIHZvbHRhZ2U6ICAgIDAgKDMuMzAgVikKPj4+IGRyaXZlciB0
eXBlOiAgICAwIChkcml2ZXIgdHlwZSBCKQo+PiBJdCdzIG5vdCBkZXRlY3RpbmcgYW55dGhpbmcg
YXQgYWxsLgo+PiBZb3Ugc2F5IHlvdSBib290ZWQgb2ZmIHRoaXMgY2FyZD8KPiBTbyB0aGlzIGlz
IGJvb3Rpbmcgd2hlbiBJIGRpc2FibGVkIHZjY19zZGlvIGFuZCBqdXN0IGxlZnQgaXQgaW4gdGhl
Cj4gc3RhdGUgdGhhdCB1LWJvb3QgbGVmdCBpdCBpbiwgd2hpY2ggaXMgcHJvYmFibHkgd2hlcmUg
dGhlIG5vbnNlbnNpY2FsCj4gb3V0cHV0IGNvbWVzIGZyb20uCj4+Cj4+IENvdWxkIHlvdSBydW4g
YSBgZG1lc2cgfCBncmVwIG1tY2AgYW5kIHNlbmQgYWxsIHRoZSByZXN1bHRzPwo+IAo+IEhlcmUn
cyBhIHNsaWdodGx5IHNjcnViYmVkIGxvZyBvZiBvbmUgb2YgbXkgZmFpbGVkIGJvb3RzLsKgIEkg
bGVmdCBpbiBteQo+IHRyYWNlcyBvZiByZWdpc3RlciB3cml0ZXMgdG8gNDI4IGFuZCBncGlvLXJl
Z3VsYXRvciBzdGF0ZSBjaGFuZ2VzLgo+IAo+IFvCoMKgwqAgMC4wMDAwMDBdIEtlcm5lbCBjb21t
YW5kIGxpbmU6IGVhcmx5Y29uPXVhcnQ4MjUwLG1taW8zMiwweGZmMTMwMDAwCj4gY29uc29sZT10
dHlTMiwxNTAwMDAwIHJ3IHJvb3Q9L2Rldi9tbWNibGswcDUgaW5pdD0vc2Jpbi9pbml0Cj4ga2dk
Ym9jPXR0eVMyLDE1MDAwMDAgZHluYW1pY19kZWJ1Zy52ZXJib3NlPTEgbG9nbGV2ZWw9NyBkeW5k
Ymc9Im1vZHVsZQo+IGR3X21tYyArcCA7IG1vZHVsZSBkd19tbWNfcm9ja2NoaXAgK3AgOyBtb2R1
bGUgbW1jX2NvcmUgK3AiCj4gPHNuaXA+Cj4gW8KgwqDCoCAwLjc5Mzc1MF0gZHdtbWNfcm9ja2No
aXAgZmY1MDAwMDAuZHdtbWM6IElETUFDIHN1cHBvcnRzIDMyLWJpdAo+IGFkZHJlc3MgbW9kZS4K
PiBbwqDCoMKgIDAuNzk0NDAyXSBkd21tY19yb2NrY2hpcCBmZjUwMDAwMC5kd21tYzogVXNpbmcg
aW50ZXJuYWwgRE1BIGNvbnRyb2xsZXIuCj4gW8KgwqDCoCAwLjc5ODU4Ml0gZHdtbWNfcm9ja2No
aXAgZmY1MDAwMDAuZHdtbWM6IFZlcnNpb24gSUQgaXMgMjcwYQo+IFvCoMKgwqAgMC44MDExOTRd
IGR3bW1jX3JvY2tjaGlwIGZmNTAwMDAwLmR3bW1jOiBEVyBNTUMgY29udHJvbGxlciBhdCBpcnEK
PiAyOSwzMiBiaXQgaG9zdCBkYXRhIHdpZHRoLDI1NiBkZWVwIGZpZm8KPiBbwqDCoMKgIDAuODE1
NDM3XSBkd21tY19yb2NrY2hpcCBmZjUyMDAwMC5kd21tYzogSURNQUMgc3VwcG9ydHMgMzItYml0
Cj4gYWRkcmVzcyBtb2RlLgo+IFvCoMKgwqAgMC44MjAyNzNdIGR3bW1jX3JvY2tjaGlwIGZmNTIw
MDAwLmR3bW1jOiBWZXJzaW9uIElEIGlzIDI3MGEKPiBbwqDCoMKgIDAuODIyOTA0XSBkd21tY19y
b2NrY2hpcCBmZjUyMDAwMC5kd21tYzogRFcgTU1DIGNvbnRyb2xsZXIgYXQgaXJxCj4gMzAsMzIg
Yml0IGhvc3QgZGF0YSB3aWR0aCwyNTYgZGVlcCBmaWZvCj4gW8KgwqDCoCAwLjgyNTUyN10gbW1j
X2hvc3QgbW1jMDogY2FyZCBpcyBub24tcmVtb3ZhYmxlLgo+IFvCoMKgwqAgMC44Mzg3NzBdIG1t
Y19ob3N0IG1tYzA6IEJ1cyBzcGVlZCAoc2xvdCAwKSA9IDQwMDAwMEh6IChzbG90IHJlcQo+IDQw
MDAwMEh6LCBhY3R1YWwgNDAwMDAwSFogZGl2ID0gMCkKPiBbwqDCoMKgIDAuODg4ODg2XSBBREFN
VlkgUmVnbWFwIHdyaXRlIDQyOCA8PSAyZjgwMgo+IFvCoMKgwqAgMC45MDQyMThdIGR3bW1jX3Jv
Y2tjaGlwIGZmNTAwMDAwLmR3bW1jOiBJRE1BQyBzdXBwb3J0cyAzMi1iaXQKPiBhZGRyZXNzIG1v
ZGUuCj4gW8KgwqDCoCAwLjkwNDg3MF0gZHdtbWNfcm9ja2NoaXAgZmY1MDAwMDAuZHdtbWM6IFVz
aW5nIGludGVybmFsIERNQSBjb250cm9sbGVyLgo+IFvCoMKgwqAgMC45MDkwNTVdIGR3bW1jX3Jv
Y2tjaGlwIGZmNTAwMDAwLmR3bW1jOiBWZXJzaW9uIElEIGlzIDI3MGEKPiBbwqDCoMKgIDAuOTEx
NjM3XSBkd21tY19yb2NrY2hpcCBmZjUwMDAwMC5kd21tYzogRFcgTU1DIGNvbnRyb2xsZXIgYXQg
aXJxCj4gMjksMzIgYml0IGhvc3QgZGF0YSB3aWR0aCwyNTYgZGVlcCBmaWZvCj4gW8KgwqDCoCAw
LjkxMzk1NF0gQURBTVZZIFNldHRpbmcgZ3BpbyByZWd1bGF0b3IgdG8gdmFsdWUgMzMwMDAwMCBz
dGF0ZSAwCj4gW8KgwqDCoCAwLjkxNDUwM10gQURBTVZZIFJlZ21hcCB3cml0ZSA0MjggPD0gMmY4
MDAKPiBbwqDCoMKgIDAuOTI3NjEyXSBtbWNfaG9zdCBtbWMxOiBCdXMgc3BlZWQgKHNsb3QgMCkg
PSA0MDAwMDBIeiAoc2xvdCByZXEKPiA0MDAwMDBIeiwgYWN0dWFsIDQwMDAwMEhaIGRpdiA9IDAp
Cj4gW8KgwqDCoCAwLjk1MDE2MF0gVkZTOiBDYW5ub3Qgb3BlbiByb290IGRldmljZSAibW1jYmxr
MHA1IiBvcgo+IHVua25vd24tYmxvY2soMCwwKTogZXJyb3IgLTYKPiAKPiAKPiAKPiBGaW5hbGx5
IGhlcmUncyBhbiB1cGRhdGVkIHBhdGNoIGZvciB0aGUgZGV2aWNlIHRyZWUgd2l0aCBSb2Jpbidz
Cj4gb3JpZ2luYWwgc3VnZ2VzdGlvbi4KPiAKPiAKPiBJbmRleDogbGludXgtNS41L2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LXJvYy1jYy5kdHMKPiA9PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09Cj4gLS0t
IGxpbnV4LTUuNS5vcmlnL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LXJvYy1j
Yy5kdHMKPiArKysgbGludXgtNS41L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4
LXJvYy1jYy5kdHMKPiBAQCAtNDUsNiArNDUsNyBAQAo+ICAgCXZjY19zZGlvOiBzZG1tY2lvLXJl
Z3VsYXRvciB7Cj4gICAJCWNvbXBhdGlibGUgPSAicmVndWxhdG9yLWdwaW8iOwo+ICAgCQlncGlv
cyA9IDwmZ3JmX2dwaW8gMCBHUElPX0FDVElWRV9ISUdIPjsKPiArICAgICAgICAgICAgICAgIGVu
YWJsZS1hY3RpdmUtaGlnaDsKPiAgIAkJc3RhdGVzID0gPDE4MDAwMDAgMHgxCj4gICAJCQkgIDMz
MDAwMDAgMHgwPjsKPiAgIAkJcmVndWxhdG9yLW5hbWUgPSAidmNjX3NkaW8iOwo+IAo+IAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
