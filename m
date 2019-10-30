Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA4AE940C
	for <lists+linux-rockchip@lfdr.de>; Wed, 30 Oct 2019 01:18:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hguG+awv5rocfjSrXJIZ3CX38fw7xRWGrp+HYW8V/EY=; b=Rfj5wah+kCONcNylJyDgBW7HJ
	gP2phiCDdKjmEQDtfz/DzUjWO7W3TZfb+OnRuZ88nccZQtANOcL5fP4UJv3T6/lV0PhdDYPoWzCA6
	KkeNatsPJjQPi8AAADNnob3huezI0nIlqSr8yu9jPsdxRRW+ImGrN+MzW37zpTCZm4U4kyAPaJ5oZ
	CIOFBBf9KObXAgg+IrMtmGVV/Pyketfbf6AYU8yPHXeKhkkmx6St4tLhE5omTv7wwQHT0IWvmr74Y
	J5Tc7CU6E4Ssz3ero8tBsk6zgGvnQcGEeyZyIx9DYwxkg7ghSS1cvKPzw5ugJfwcI2s4qnK9HixDB
	b3x80LSkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPbgg-0003Mg-2G; Wed, 30 Oct 2019 00:18:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPbgc-0003Lq-NP
 for linux-rockchip@lists.infradead.org; Wed, 30 Oct 2019 00:18:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ADC361FB;
 Tue, 29 Oct 2019 17:18:03 -0700 (PDT)
Received: from [192.168.1.124] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B6C2E3F71E;
 Tue, 29 Oct 2019 17:18:02 -0700 (PDT)
Subject: Re: [PATCH 0/5] add rk3328 usb3 phy driver
From: Robin Murphy <robin.murphy@arm.com>
To: Peter Geis <pgwipeout@gmail.com>, heiko@sntech.de, kishon@ti.com
References: <20191028182254.30739-1-pgwipeout@gmail.com>
 <5230f80c-9684-72e0-8f96-602428a9e655@arm.com>
Message-ID: <9e5546de-f5b6-7f60-96d0-612249e832ce@arm.com>
Date: Wed, 30 Oct 2019 00:17:56 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <5230f80c-9684-72e0-8f96-602428a9e655@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_171806_850923_F163D10C 
X-CRM114-Status: GOOD (  18.98  )
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
Cc: katsuhiro@katsuster.net, linux-rockchip@lists.infradead.org,
 linux-usb@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gMjAxOS0xMC0yOCA2OjQxIHBtLCBSb2JpbiBNdXJwaHkgd3JvdGU6Cj4gT24gMjgvMTAvMjAx
OSAxODoyMiwgUGV0ZXIgR2VpcyB3cm90ZToKPj4gSXQgdG9vayBhIGxvdCBtb3JlIGVmZm9ydCB0
aGFuIG9yaWdpbmFsbHkgYW50aWNpcGF0ZWQsIGJ1dCBoZXJlIGl0IGlzLgo+PiBUaGlzIGlzIHRo
ZSBkcml2ZXIgZnJvbSBbMF0sIHVwZGF0ZWQgdG8gd29yayB3aXRoIHRoZSBjdXJyZW50IGtlcm5l
bC4KPj4gSSd2ZSB0ZXN0ZWQgaXQgb24gdGhlIHJrMzMyOC1yb2MtY2MgYm9hcmQsIGJvdGggdXNi
IDIuMCBhbmQgdXNiIDMuMAo+PiBkZXZpY2VzIGRldGVjdCBvbiBob3RwbHVnLgo+IAo+IFRoYW5r
cyBQZXRlciwgSSdsbCB0cnkgdG8gZ2l2ZSB0aGlzIGEgZ28gb24gbXkgYm94IGZvciBjb25maXJt
YXRpb24uCgpPSywgSSBob29rZWQgaXQgdXAgd2l0aCBhIHZidXMtZHJ2LWdwaW8gaGFja2VkIGlu
IC0gVVNCIDIuMCAKdW5wbHVnL3JlcGx1ZyBkb2VzIGluZGVlZCB3b3JrIGZpbmUsIGJ1dCBpdCB0
YWtlcyBhIHdoaWxlIHRvIGFja25vd2xlZGdlIAphbiB1bnBsdWcgb2YgYSBVU0IgMy4wIGRldmlj
ZSwgYW5kIHRocm93cyBhIGJ1bmNoIG9mIGVycm9ycyBldmVyeSB0aW1lOgoKWyAgMjg4LjIyOTU2
OF0gdXNiIHVzYjQtcG9ydDE6IENhbm5vdCBlbmFibGUuIE1heWJlIHRoZSBVU0IgY2FibGUgaXMg
YmFkPwpbICAyOTAuODA5NTk5XSB1c2IgdXNiNC1wb3J0MTogQ2Fubm90IGVuYWJsZS4gTWF5YmUg
dGhlIFVTQiBjYWJsZSBpcyBiYWQ/ClsgIDI5My4zODk1OTRdIHVzYiB1c2I0LXBvcnQxOiBDYW5u
b3QgZW5hYmxlLiBNYXliZSB0aGUgVVNCIGNhYmxlIGlzIGJhZD8KWyAgMjk1Ljk2OTYwMF0gdXNi
IHVzYjQtcG9ydDE6IENhbm5vdCBlbmFibGUuIE1heWJlIHRoZSBVU0IgY2FibGUgaXMgYmFkPwpb
ICAyOTUuOTcwNDE4XSB1c2IgNC0xOiBVU0IgZGlzY29ubmVjdCwgZGV2aWNlIG51bWJlciAxMApb
ICAyOTkuMjA5NjMxXSB1c2IgdXNiNC1wb3J0MTogQ2Fubm90IGVuYWJsZS4gTWF5YmUgdGhlIFVT
QiBjYWJsZSBpcyBiYWQ/ClsgIDMwMS43ODk2NTVdIHVzYiB1c2I0LXBvcnQxOiBDYW5ub3QgZW5h
YmxlLiBNYXliZSB0aGUgVVNCIGNhYmxlIGlzIGJhZD8KWyAgMzAxLjc5MDUzNF0gdXNiIHVzYjQt
cG9ydDE6IGF0dGVtcHQgcG93ZXIgY3ljbGUKCihhbHRob3VnaCBuZXcgZGV2aWNlcyBhcmUgc3Rp
bGwgZGV0ZWN0ZWQgT0sgZXZlbnR1YWxseSkKClJvYmluLgoKPiBPbmUgcXVpY2sgY29tbWVudCBp
cyB0aGF0IGl0IG1pZ2h0IGJlIHdvcnRoIGltcG9ydGluZyB0aGUgdmVyc2lvbiBmcm9tIAo+IFJv
Y2tjaGlwJ3Mgb3duIGtlcm5lbCB0cmVlLCBhcyB0aGF0IGluY2x1ZGVzIHRoaXMgYWRkaXRpb25h
bCBwYXRjaCB3aGljaCAKPiBsb29rcyBsaWtlIGEgd2VsY29tZSBpbXByb3ZlbWVudDoKPiAKPiBo
dHRwczovL2dpdGh1Yi5jb20vcm9ja2NoaXAtbGludXgva2VybmVsL2NvbW1pdC8xMmVmYTlhY2Fk
NjViNGMzMjU2NjgzYzFjY2Q3Njk2ODdiZTNjYTU2I2RpZmYtYjYzMTdiMzQyNWFjMDU0YmU1NTFh
YmRjZGE5MTBiNjggCj4gCj4gCj4gQWxzbywgYXMgaXQncyBhIG5ldyBwaHkgZHJpdmVyLCB3ZSBz
aG91bGQga2VlcCBLaXNob24gKCtjYykgaW4gdGhlIGxvb3AgCj4gYXMgdGhlIHN1YnN5c3RlbSBt
YWludGFpbmVyLgo+IAo+IFJvYmluLgo+IAo+PiBbMF0gCj4+IGh0dHBzOi8vZ2l0aHViLmNvbS9G
aXJlZmx5VGVhbS9rZXJuZWwvY29tbWl0cy9yb2MtcmszMzI4LWNjL2RyaXZlcnMvcGh5L3JvY2tj
aGlwL3BoeS1yb2NrY2hpcC1pbm5vLXVzYjMuYyAKPj4KPj4KPj4gUGV0ZXIgR2VpcyAoNSk6Cj4+
IMKgwqAgcGh5OiByb2NrY2hpcDogYWRkIGlubm8tdXNiMyBwaHkgZHJpdmVyCj4+IMKgwqAgZHQt
YmluZGluZ3M6IGNsZWFuIHVwIHJvY2tjaGlwIGdyZiBiaW5kaW5nIGRvY3VtZW50Cj4+IMKgwqAg
RG9jdW1lbnRhdGlvbjogYmluZGluZ3M6IGFkZCBkdCBkb2N1bWVudGF0aW9uIGZvciByb2NrY2hp
cCB1c2IzIHBoeQo+PiDCoMKgIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBhZGQgdXNiMyB0byByazMz
MjggZGV2aWNldHJlZQo+PiDCoMKgIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBlbmFibGUgdXNiMyBv
biByazMzMjgtcm9jLWNjCj4+Cj4+IMKgIC4uLi9iaW5kaW5ncy9waHkvcGh5LXJvY2tjaGlwLWlu
bm8tdXNiMy55YW1swqAgfMKgIDE1NyArKysKPj4gwqAgLi4uL2RldmljZXRyZWUvYmluZGluZ3Mv
c29jL3JvY2tjaGlwL2dyZi50eHTCoCB8wqDCoMKgIDggKy0KPj4gwqAgLi4uL2RldmljZXRyZWUv
YmluZGluZ3MvdXNiL3JvY2tjaGlwLGR3YzMudHh0IHzCoMKgwqAgOSArLQo+PiDCoCAuLi4vYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LXJvYy1jYy5kdHMgfMKgwqAgMjEgKwo+PiDCoCBh
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC5kdHNpwqDCoMKgwqDCoCB8wqDCoCA3
MiArKwo+PiDCoCBkcml2ZXJzL3BoeS9yb2NrY2hpcC9LY29uZmlnwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCB8wqDCoMKgIDkgKwo+PiDCoCBkcml2ZXJzL3BoeS9yb2NrY2hpcC9N
YWtlZmlsZcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgwqAgMSArCj4+IMKg
IGRyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1pbm5vLXVzYjMuYyB8IDExMDcgKysr
KysrKysrKysrKysrKysKPj4gwqAgOCBmaWxlcyBjaGFuZ2VkLCAxMzc4IGluc2VydGlvbnMoKyks
IDYgZGVsZXRpb25zKC0pCj4+IMKgIGNyZWF0ZSBtb2RlIDEwMDY0NCAKPj4gRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9waHktcm9ja2NoaXAtaW5uby11c2IzLnlhbWwKPj4g
wqAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1p
bm5vLXVzYjMuYwo+Pgo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4gTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Cj4gTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
