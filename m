Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0862B14F930
	for <lists+linux-rockchip@lfdr.de>; Sat,  1 Feb 2020 18:46:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=H8MKuYjmhbtUgqrUqDLzUHtp0rOBIzy7Y4wCLuMt+Oo=; b=VkrbaLtZsWb9HhRLXOx/6ao/z
	s5AJr01eDKeaG+aXnk4kamOKKwRQ4fAVrYgW6J+GcdUx9+1A7Xb4ZrbYrbJuhmKLajGBd9grvMfOA
	0Wa7cvZ5+59ba2zCsCD3rKDhQLdSk1OQJjSrzOvb8N3zqrIgyHbqmstWBNUwLO5jFnYmFxKzbS6ON
	DA4lXB7BkiMd3HVxb6pg1n0pU9w1yI+mgC6pF2tgzj7co+thk0j8mzh0ZT+3jd0FvKFJM7imA1a0X
	gzYBT3BfZcDCkvgQ2sHi1mcYsF85r1+S6JBY/I2tbFxusXQaOuf5BHKeKsm90IYCN4OOFiP1MIvH5
	AQlW5tpeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixwqq-0006LF-4J; Sat, 01 Feb 2020 17:46:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixwqg-0006Fr-BC; Sat, 01 Feb 2020 17:46:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EF933101E;
 Sat,  1 Feb 2020 09:46:23 -0800 (PST)
Received: from [192.168.1.123] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 445113F68E;
 Sat,  1 Feb 2020 09:46:23 -0800 (PST)
Subject: Re: [PATCH] arm64: dts: rockchip: Fix rk3328-roc-cc sdmmcio-regulator
To: Adam Van Ymeren <adam@vany.ca>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <87imkryz5t.fsf@vany.ca>
 <7b9829b3-e2d2-95b1-03cb-1af7a3c6acad@arm.com>
 <4a6a9d81-c831-4167-7fbf-64805940fb6f@vany.ca>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <d8a8b696-268b-1ea8-7b5e-406a651011ff@arm.com>
Date: Sat, 1 Feb 2020 17:46:24 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <4a6a9d81-c831-4167-7fbf-64805940fb6f@vany.ca>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200201_094626_427993_BE1B2755 
X-CRM114-Status: GOOD (  17.39  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Heiko Stuebner <heiko@sntech.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gMjAyMC0wMi0wMSAzOjQxIHBtLCBBZGFtIFZhbiBZbWVyZW4gd3JvdGU6Cj4gCj4gT24gMjAy
MC0wMi0wMSA1OjUxIGEubS4sIFJvYmluIE11cnBoeSB3cm90ZToKPj4gSGkgQWRhbSwKPj4KPj4g
T24gMjAyMC0wMS0zMSAxMTozOCBwbSwgQWRhbSBWYW4gWW1lcmVuIHdyb3RlOgo+Pj4gV2l0aCB0
aGlzIGNoYW5nZSB0aGUga2VybmVsIHN1Y2Nlc3NmdWxseSBmaW5kcyB0aGUgU0QgQ2FyZCBhbmQg
Y2FuIGxvYWQKPj4+IGEgcm9vdGZzIGZyb20gaXQuwqAgVGVzdGVkIG9uIGhhcmR3YXJlLgo+Pj4K
Pj4+IFNpZ25lZC1vZmYtYnk6IEFkYW0gVmFuIFltZXJlbiA8YWRhbUB2YW55LmNhPgo+Pj4KPj4+
IGRpZmYgLXVwck4gLVggbGludXgtNS41L0RvY3VtZW50YXRpb24vZG9udGRpZmYKPj4+IGxpbnV4
LTUuNS1vcmlnL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LXJvYy1jYy5kdHMK
Pj4+IGxpbnV4LTUuNS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC1yb2MtY2Mu
ZHRzCj4+PiAtLS0gbGludXgtNS41LW9yaWcvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azMzMjgtcm9jLWNjLmR0cwo+Pj4gMjAyMC0wMS0yNiAxOToyMzowMy4wMDAwMDAwMDAgLTA1MDAK
Pj4+ICsrKyBsaW51eC01LjUvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMjgtcm9j
LWNjLmR0cwo+Pj4gMjAyMC0wMS0zMSAxNjoyNjozNS4zNzcwNzU0MTkgLTA1MDAKPj4+IEBAIC00
NCw3ICs0NCw3IEBACj4+PiAgwqAgwqDCoMKgwqDCoCB2Y2Nfc2Rpbzogc2RtbWNpby1yZWd1bGF0
b3Igewo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoCBjb21wYXRpYmxlID0gInJlZ3VsYXRvci1ncGlv
IjsKPj4+IC3CoMKgwqDCoMKgwqDCoCBncGlvcyA9IDwmZ3JmX2dwaW8gMCBHUElPX0FDVElWRV9I
SUdIPjsKPj4+ICvCoMKgwqDCoMKgwqDCoCBncGlvcyA9IDwmZ3BpbzAgUktfUEQxIEdQSU9fQUNU
SVZFX0hJR0g+Owo+Pgo+PiBHaXZlbiB0aGF0IHRoZSBSSzMzMjggZGF0YXNoZWV0IGhhcyBubyBt
ZW50aW9uIG9mIEdQSU8wX0QxIGV4aXN0aW5nIGF0Cj4+IGFsbCwgaG93IHN1cmUgYXJlIHlvdSB0
aGF0IHRoaXMgaXMgY29ycmVjdCAtIGhhdmUgeW91IHRlc3RlZCBjYXJkcyBpbgo+PiBib3RoIDMu
M1YgYW5kIDEuOFYgKFVIUy0xKSBzaWduYWxsaW5nIG1vZGVzPwo+Pgo+PiBUaGUgUk9DLVJLMzMy
OC1DQyBzY2hlbWF0aWNzIHNob3cgR1BJT19NVVRFIGJlaW5nIHVzZWQgdG8gYmlhcyB0aGUKPj4g
ZmVlZGJhY2sgcGluIG9mIGFuIGFkanVzdGFibGUgcmVndWxhdG9yIHN1cHBseWluZyB0aGUgU0RN
TUMwIEkvTwo+PiBkb21haW4sIHNvIGl0IHNlZW1zIG1vcmUgbGlrZWx5IHRoYXQgdGhlIHBpbiBp
cyBjb3JyZWN0IGJ1dCB0aGUgc3RhdGVzCj4+IChvciB0aGUgcG9sYXJpdHkpIGFyZSBiYWNrd2Fy
ZHMuCj4gCj4gCj4gSG1tIHllYWggYWZ0ZXIgcmVhZGluZyB0aGUgc2NoZW1hdGljcyB0aGlzIGRv
ZXNuJ3QgbWFrZSBzZW5zZS7CoCBJIHRvb2sKPiBpdCBmcm9tIHRoZSB2ZW5kb3JzIHNvdXJjZSB0
cmVlWzFdLCBhbmQgaXQgZGVmaW5pdGVseSBhbGxvd2VkIG15IHN5c3RlbQo+IHRvIGJvb3Qgd2hl
biBpdCB3b3VsZG4ndCBiZWZvcmUsIGJ1dCBJIG9ubHkgdHJpZWQgYSAzLjNWIGNhcmQuwqAgSSds
bCB0cnkKPiBqdXN0IGNoYW5naW5nIHRoZSBwb2xhcml0eS7CoCBJJ2xsIGFsc28gZmluZCBhIFVI
Uy0xIGNhcmQgYW5kIHRlc3QgdGhhdCwKPiBhbnkgYWR2aWNlIG9uIGhvdyB0byB2ZXJpZnkgdGhh
dCBpdCdzIHJ1bm5pbmcgaW4gdGhlIDEuOFYgbW9kZT8KCk15IHByZWZlcnJlZCBtZXRob2QgaXMg
dG8gc3RpY2sgYSBtZXRlciBvbiBlaXRoZXIgdGhlIHVTRCBzb2NrZXQgcGlucyBvciAKdGhlIHJl
Z3VsYXRvciBpdHNlbGYgYW5kIHdpZ2dsZSB0aGUgR1BJTyBmcm9tIHVzZXJzcGFjZSwgYnV0IHBy
ZWZlcmFibHkgCm9ubHkgaWYgdGhlIGJvYXJkIGNhbiBydW4gd2l0aG91dCBhIGNhcmQgaW5zZXJ0
ZWQuCgpUaGF0IHNhaWQsIEkganVzdCBzdWRkZW5seSByZW1lbWJlcmVkIGFib3V0IHJlZ3VsYXRv
ciBHUElPcyBiZWluZyBxdWlya3kgCmZvciBsZWdhY3kgQUJJIHJlYXNvbnMgLSBJJ20gbm93IDk5
JSBzdXJlIHRoYXQgeW91IHNob3VsZCBzaW1wbHkgbmVlZCB0byAKYWRkIHRoZSAiZW5hYmxlLWFj
dGl2ZS1oaWdoIiBwcm9wZXJ0eSB0byBtYWtlIGl0IGFjdHVhbGx5IHdvcmsgYXMgZXhwZWN0ZWQu
CgpSb2Jpbi4KCj4KPiBbMV0KPiBodHRwczovL2dpdGh1Yi5jb20vRmlyZWZseVRlYW0va2VybmVs
L2Jsb2IvcmszMzI4L2ZpcmVmbHkvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMjgt
ZmlyZWZseS1jb3JlLmR0c2kjTDg5Cj4gCj4gCj4gVGhhbmtzIGZvciB0aGUgcmV2aWV3IQo+IAo+
IC1BZGFtCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
