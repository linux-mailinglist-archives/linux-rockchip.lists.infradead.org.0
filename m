Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1958D44C
	for <lists+linux-rockchip@lfdr.de>; Wed, 14 Aug 2019 15:12:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TaseSbzETIj8OyGnX4cbEOY2k4sHjS1T426i8itzaC4=; b=MpD3zbHI5pts/Fsi6urp0B6ef
	l4SJXutasrSPyJ8mnKWRu4apky1FV8ayD8PJbDCJRNtyPBD87EejcmWCCOUoUHy2WRCyX6XXNdBzu
	3hUyAfFQitYUFhoRl8zsc/JYtGqTEBkif92QH3OPtnQNaYCdcAZ8xwOXvgYI+Z8j8gUgS86JoTIp5
	1ZMSfWEXHcnxfo7MX5qiTAG1Ex9ayXsN7LfteddCT+3+xQZZQMtZ5I7d000fepKqvTKhrqxY/y1/A
	1si01YUiiuM08VEYvOxyKekKTawuOuok64qeF0AuFlftUmPZ/X8rnmfZ1uxnPSQK/+XDU/60BeEvY
	9LyLR1IGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxt55-0006oR-Oa; Wed, 14 Aug 2019 13:12:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxt4p-0006bR-RD; Wed, 14 Aug 2019 13:12:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 55C9028;
 Wed, 14 Aug 2019 06:12:29 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D950B3F706;
 Wed, 14 Aug 2019 06:12:27 -0700 (PDT)
Subject: Re: kexec on rk3399
To: Vicente Bergas <vicencb@gmail.com>, Felipe Balbi <balbi@kernel.org>
References: <ebcb52be-2063-4e2c-9a09-fdcacb94f855@gmail.com>
 <c6993a1e-6fc2-44ab-b59e-152142e2ff4d@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <0408cb6c-1b16-eacb-d47e-17f4ff89e2b8@arm.com>
Date: Wed, 14 Aug 2019 14:12:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <c6993a1e-6fc2-44ab-b59e-152142e2ff4d@gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_061231_928368_98297C06 
X-CRM114-Status: GOOD (  21.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Matthias Brugger <mbrugger@suse.com>, Heiko Stuebner <heiko@sntech.de>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-usb@vger.kernel.org, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gMTQvMDgvMjAxOSAxMzo1MywgVmljZW50ZSBCZXJnYXMgd3JvdGU6Cj4gT24gTW9uZGF5LCBK
dWx5IDIyLCAyMDE5IDQ6MzE6MjcgUE0gQ0VTVCwgVmljZW50ZSBCZXJnYXMgd3JvdGU6Cj4+IEhp
LCBpIGhhdmUgYmVlbiBydW5uaW5nIGxpbnV4IG9uIHJrMzM5OSBib290ZWQgd2l0aCBrZXhlYyBm
aW5lIHVudGlsIDUuMgo+PiBGcm9tIDUuMiBvbndhcmRzLCB0aGVyZSBhcmUgbWVtb3J5IGNvcnJ1
cHRpb24gaXNzdWVzIGFzIHJlcG9ydGVkIGhlcmU6Cj4+IGh0dHA6Ly9sa21sLml1LmVkdS9oeXBl
cm1haWwvbGludXgva2VybmVsLzE5MDYuMi8wNzIxMS5odG1sCj4+IGtleGVjIGhhcyBiZWVuIGlk
ZW50aWZpZWQgYXMgdGhlIHByaW5jaXBhbCByZWFzb24gZm9yIHRoZSBpc3N1ZXMuCj4+Cj4+IEl0
IHR1cm5zIG91dCB0aGF0IGtleGVjIGhhcyBuZXZlciB3b3JrZWQgcmVsaWFibHkgb24gdGhpcyBw
bGF0Zm9ybSwKPj4gaSB3YXMganVzdCBsdWNreSB1bnRpbCByZWNlbnRseS4KPj4KPj4gUGxlYXNl
LCBjYW4geW91IHByb3ZpZGUgc29tZSBkaXJlY3Rpb25zIG9uIGhvdyB0byBkZWJ1ZyB0aGUgaXNz
dWU/Cj4gCj4gVGhhbmsgeW91IGFsbCBmb3IgeW91ciBzdWdnZXN0aW9ucyBvbiB3aGVyZSB0aGUg
aXNzdWUgY291bGQgYmUuCj4gCj4gSXQgc2VlbXMgdGhhdCBpdCB3YXMgdGhlIFVTQiBkcml2ZXIu
Cj4gTm93IHVzaW5nIHY1LjIuOCBib290ZWQgd2l0aCBrZXhlYyBmcm9tIHY1LjIuOCB3aXRoIGEg
d29ya2Fyb3VuZCBhbmQKPiBzbyBmYXIgc28gZ29vZC4gSXQgaXMgYmVpbmcgdGVzdGVkIG9uIHRo
ZSBTYXBwaGlyZSBib2FyZC4KPiAKPiBUaGUgd29ya2Fyb3VuZCBpczoKPiAtLS0gYS9kcml2ZXJz
L3VzYi9kd2MzL2R3YzMtb2Ytc2ltcGxlLmMKPiArKysgYi9kcml2ZXJzL3VzYi9kd2MzL2R3YzMt
b2Ytc2ltcGxlLmMKPiBAQCAtMTMzLDYgKzEzMywxMyBAQAo+ICDCoMKgwqDCoHJldHVybiAwOwo+
IH0KPiAKPiArc3RhdGljIHZvaWQgZHdjM19vZl9zaW1wbGVfc2h1dGRvd24oc3RydWN0IHBsYXRm
b3JtX2RldmljZSAqcGRldikKPiArewo+ICvCoMKgwqAgc3RydWN0IGR3YzNfb2Zfc2ltcGxlICpz
aW1wbGUgPSBwbGF0Zm9ybV9nZXRfZHJ2ZGF0YShwZGV2KTsKPiArCj4gK8KgwqDCoCByZXNldF9j
b250cm9sX2Fzc2VydChzaW1wbGUtPnJlc2V0cyk7Cj4gK30KPiArCj4gc3RhdGljIGludCBfX21h
eWJlX3VudXNlZCBkd2MzX29mX3NpbXBsZV9ydW50aW1lX3N1c3BlbmQoc3RydWN0IGRldmljZSAK
PiAqZGV2KQo+IHsKPiAgwqDCoMKgwqBzdHJ1Y3QgZHdjM19vZl9zaW1wbGXCoMKgwqAgKnNpbXBs
ZSA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwo+IEBAIC0xOTAsNiArMTk3LDcgQEAKPiBzdGF0aWMg
c3RydWN0IHBsYXRmb3JtX2RyaXZlciBkd2MzX29mX3NpbXBsZV9kcml2ZXIgPSB7Cj4gIMKgwqDC
oMKgLnByb2JlwqDCoMKgwqDCoMKgwqAgPSBkd2MzX29mX3NpbXBsZV9wcm9iZSwKPiAgwqDCoMKg
wqAucmVtb3ZlwqDCoMKgwqDCoMKgwqAgPSBkd2MzX29mX3NpbXBsZV9yZW1vdmUsCj4gK8KgwqDC
oCAuc2h1dGRvd27CoMKgwqAgPSBkd2MzX29mX3NpbXBsZV9zaHV0ZG93biwKPiAgwqDCoMKgwqAu
ZHJpdmVywqDCoMKgwqDCoMKgwqAgPSB7Cj4gIMKgwqDCoMKgwqDCoMKgIC5uYW1lwqDCoMKgID0g
ImR3YzMtb2Ytc2ltcGxlIiwKPiAgwqDCoMKgwqDCoMKgwqAgLm9mX21hdGNoX3RhYmxlID0gb2Zf
ZHdjM19zaW1wbGVfbWF0Y2gsCj4gCj4gSWYgdGhpcyBwYXRjaCBpcyBPSyBhZnRlciByZXZpZXcg
aSBjYW4gcmVzdWJtaXQgaXQgYXMgYSBwdWxsIHJlcXVlc3QuCj4gU2hvdWxkIGEgc2ltaWxhciBj
aGFuZ2UgYmUgYXBwbGllZCB0byBkcml2ZXJzL3VzYi9kd2MzL2NvcmUuYyA/CgpUaGlzIHBhcnRp
Y3VsYXIgY2hhbmdlIGxvb2tzIGxpa2UgaXQncyBpbXBsaWNpdGx5IHNwZWNpZmljIHRvIFJLMzM5
OSwgCndoaWNoIHdvdWxkbid0IGJlIGlkZWFsLiBQcmVzdW1hYmx5IGlmIHRoZSBjb3JlIGR3YzMg
ZHJpdmVyIGltcGxlbWVudGVkIApzaHV0ZG93biBjb3JyZWN0bHkgKGVjaG9pbmcgcGFydHMgb2Yg
ZHdjM19yZW1vdmUoKSwgSSBndWVzcykgdGhlbiB0aGUgCmdsdWUgbGF5ZXJzIHNob3VsZG4ndCBu
ZWVkIGFueXRoaW5nIHNwZWNpYWwgYW55d2F5LgoKUm9iaW4uCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
