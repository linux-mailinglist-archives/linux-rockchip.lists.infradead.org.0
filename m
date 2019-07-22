Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 133C870773
	for <lists+linux-rockchip@lfdr.de>; Mon, 22 Jul 2019 19:36:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oAIPer/o67dAIncWxAKY8EPO8Bh45q8tuXtF05AwuLI=; b=tskihdJ6o4fpP+6R5rRESCDCo
	vpmSUjHxy2n60ea8V7MJg+vDexuZ0InEw8II4lZokoJ0LR/T6xR5yVGedlDCEPpDgrsZfIB4lLrc+
	PlDhdK8YhZNEVRBydZpv5pocAmuTxEhkRTE4tzqzCjuCOTnHmVj0IP03DC7rteU+ZmwDZyABQGInA
	Rm/bkbyOI6tCj4cyPaaAZmLuQE6sOuwVtPe67WzikwZkFtGnKjPsoiPQfsxbnCLaU1sqtY9BLrIF9
	VzqMhlOF1H90z4N+CsYk54E+q7R8xbZ9UG4RokhJ3eRl0OpodjiypIfzldeUUMaTyLKgteOS9zhda
	rYv3CroVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpcE8-0007Ug-Bv; Mon, 22 Jul 2019 17:35:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpcDO-0006Qe-DF; Mon, 22 Jul 2019 17:35:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B60C0337;
 Mon, 22 Jul 2019 10:35:03 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AF3373F694;
 Mon, 22 Jul 2019 10:35:02 -0700 (PDT)
Subject: Re: kexec on rk3399
To: Vicente Bergas <vicencb@gmail.com>, Marc Zyngier <marc.zyngier@arm.com>
References: <ebcb52be-2063-4e2c-9a09-fdcacb94f855@gmail.com>
 <91c53121-9041-e8a2-97a2-5b5626e24c6e@arm.com>
 <d5959b93-40ce-455c-877e-c661a3f22351@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <8f71e7de-7eaf-58c7-6471-c8eb01e656ce@arm.com>
Date: Mon, 22 Jul 2019 18:35:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <d5959b93-40ce-455c-877e-c661a3f22351@gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_103510_665583_7DF0B76F 
X-CRM114-Status: GOOD (  19.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Matthias Brugger <mbrugger@suse.com>, Heiko Stuebner <heiko@sntech.de>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gMjIvMDcvMjAxOSAxODowNSwgVmljZW50ZSBCZXJnYXMgd3JvdGU6Cj4gT24gTW9uZGF5LCBK
dWx5IDIyLCAyMDE5IDQ6NTQ6NDEgUE0gQ0VTVCwgTWFyYyBaeW5naWVyIHdyb3RlOgo+PiBPbiAy
Mi8wNy8yMDE5IDE1OjMxLCBWaWNlbnRlIEJlcmdhcyB3cm90ZToKPj4+IEhpLCBpIGhhdmUgYmVl
biBydW5uaW5nIGxpbnV4IG9uIHJrMzM5OSBib290ZWQgd2l0aCBrZXhlYyBmaW5lIHVudGlsIDUu
Mgo+Pj4gRnJvbSA1LjIgb253YXJkcywgdGhlcmUgYXJlIG1lbW9yeSBjb3JydXB0aW9uIGlzc3Vl
cyBhcyByZXBvcnRlZCBoZXJlOgo+Pj4gaHR0cDovL2xrbWwuaXUuZWR1L2h5cGVybWFpbC9saW51
eC9rZXJuZWwvMTkwNi4yLzA3MjExLmh0bWwKPj4+IGtleGVjIGhhcyBiZWVuIGlkZW50aWZpZWQg
YXMgdGhlIHByaW5jaXBhbCByZWFzb24gZm9yIHRoZSBpc3N1ZXMuCj4+Pgo+Pj4gSXQgdHVybnMg
b3V0IHRoYXQga2V4ZWMgaGFzIG5ldmVyIHdvcmtlZCByZWxpYWJseSBvbiB0aGlzIHBsYXRmb3Jt
LCAuLi4KPj4KPj4gTm90IHRoZSBtb3N0IHRydXN0ZWQgdmVyc2lvbiwgYnV0IGhleSwgd2h5IG5v
dC4uLgo+Pgo+Pj4gwqAyLi0gS2V4ZWMgaW50byB2NS4yLjIKPj4+IMKgMy4tIFRoZSBrZXJuZWwg
cmVwb3J0cyBub3RoaW5nIChlYXJseWNvbiBub3QgZW5hYmxlZCkgYW5kIGRvZXMgbm90IAo+Pj4g
Ym9vdC4KPj4+IFRoZSBzYW1lIGtlcm5lbCB2NS4yLjIgd29ya3MgZmluZSB3aGVuIGJvb3RlZCB3
aXRob3V0IGtleGVjLgo+Pgo+PiBDYW4geW91IHBsZWFzZSBlbmFibGUgZWFybHljb24gYW5kIGxl
dCB1cyBrbm93IGhvdyBmYXIgaXQgZ29lcz8gWW91cgo+PiBwcmV2aW91cyByZXBvcnRzIGhpbnRp
bmcgYXQgcnVudGltZSBtZW1vcnkgY29ycnVwdGlvbiwgYnV0IHRoaXMgc2VlbXMgdG8KPj4gYmUg
bXVjaCBtb3JlIHJhZGljYWwuLi4KPiAKPiBEZXRhaWxzIG9uIHByZXZpb3VzIGVtYWlsLCBidXQg
YmFzaWNhbGx5LCBlYXJseWNvbiBhZmZlY3RzIHJlcHJvZHVjaWJpbGl0eS4KPiAKPiBJZiBpdCBp
cyBhIHJ1bnRpbWUgbWVtb3J5IGNvcnJ1cHRpb24sIHdoYXQgYXJlIHdlIGh1bnRpbmcgZm9yPyBh
biBpc3N1ZSBpbgo+IHRoZSBrZXJuZWwgYmVmb3JlIGtleGVjIG9yIGluIHRoZSBrZXJuZWwgYWZ0
ZXIga2V4ZWM/CgpUaGUgb2J2aW91cyBjdWxwcml0IHdvdWxkIGJlIERNQSBkZXZpY2VzIGxlZnQg
cnVubmluZyBieSB0aGUgZmlyc3QgCmtlcm5lbCBzY3JpYmJsaW5nIG92ZXIgdGhlIHNlY29uZCBr
ZXJuZWwncyBtZW1vcnkgYmVmb3JlIGl0J3MgaGFkIHRoZSAKY2hhbmNlIHRvIHJlc2V0IHRoZW0u
IFNpbmNlIGJvb3QtdGltZSBtZW1vcnkgYWxsb2NhdGlvbiBwYXR0ZXJucyB0ZW5kIHRvIApiZSBy
ZWxhdGl2ZWx5IHJlcGVhdGFibGUgZm9yIGEgZ2l2ZW4gcGxhdGZvcm0gYW5kIGtlcm5lbCBjb25m
aWd1cmF0aW9uLCAKInJhbmRvbSIgbWF5IHdlbGwgbG9vayBhIGxvdCBsZXNzIHJhbmRvbSB0aGFu
IHlvdSBtaWdodCBleHBlY3QsIGFuZCBpdCAKd291bGRuJ3QgYmUgdW5oZWFyZCBvZiBmb3IgZS5n
LiB0aGUgc2Vjb25kIGtlcm5lbCB0byBtb3N0bHkgYWxsb2NhdGUgaXRzIApkZW50cnkgY2FjaGUg
ZnJvbSB0aGUgc2FtZSBhcmVhIHRoZSBmaXJzdCBrZXJuZWwgd2FzIG1vc3RseSBwdXR0aW5nIGEg
Cm5ldHdvcmsgUnggZGVzY3JpcHRvciByaW5nLgoKUm9iaW4uCgo+IAo+PiBGV0lXLCBJIHdhcyBh
YmxlIHRvIGtleGVjIHVzaW5nIDUuMi1yY3ggKGZvciB2YWx1ZXMgb2YgeCBhcm91bmQgNikgb24g
YQo+PiBOYW5vUEMtVDQsIHVzaW5nIGEgbWFpbmxpbmUgdS1ib290IGFuZCBmaXJtd2FyZS4KPj4K
Pj4gVGhhbmtzLAo+Pgo+PiDCoMKgwqDCoE0uCj4gCj4gUmVnYXJkcywKPiAgwqBWaWNlbsOnLgo+
IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4g
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Cj4gTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
