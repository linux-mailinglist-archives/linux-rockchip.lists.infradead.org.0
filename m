Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66598185B9F
	for <lists+linux-rockchip@lfdr.de>; Sun, 15 Mar 2020 10:44:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+wMN5Pc+4zVOvsqYTYuAd8kzRzOtI5nnEMK5JRmX1FY=; b=SPIebS6jtKtoxnrHmRrNzM/yH
	sdmrE/63V61m7ungDNYgv6xfxgttxpgeXhn99EU7ghgou+xygqL1xI2bBuEfUPZCuMn/7QMmGmIfN
	rUd6OqxbGHjY7Xvujodts6FC/D3FtCTmesQq55Tu0gIi0W952YKnzjJ/MA+HxKwb20LNBsJO0fySe
	1MuxygxLFqkkAHcx1fLBP0mTES4zpbxIrmJTmreIUJvMajqyxKPycOPrLhpHhtK10dcrnt0TcNPSV
	eLrBrSs2d5P5CJMmrDa7TafiFq1YixWlj1AcDLMs3Q55cogYWNLu/mXaa+R3mR06cIUBpIsfQ5dZX
	EK7No81Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDPos-00017x-7n; Sun, 15 Mar 2020 09:44:30 +0000
Received: from www1102.sakura.ne.jp ([219.94.129.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDPof-0000yR-5C; Sun, 15 Mar 2020 09:44:19 +0000
Received: from fsav101.sakura.ne.jp (fsav101.sakura.ne.jp [27.133.134.228])
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 02F9iDJp004785;
 Sun, 15 Mar 2020 18:44:13 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
Received: from www1102.sakura.ne.jp (219.94.129.142)
 by fsav101.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav101.sakura.ne.jp);
 Sun, 15 Mar 2020 18:44:13 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav101.sakura.ne.jp)
Received: from [192.168.1.2] (121.252.232.153.ap.dti.ne.jp [153.232.252.121])
 (authenticated bits=0)
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id 02F9iDK0004781
 (version=TLSv1.2 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
 Sun, 15 Mar 2020 18:44:13 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
Subject: Re: [PATCH] ARM: dts: rockchip: use DMA channels for UARTs of
 TinkerBoard
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
References: <20200314142327.25568-1-katsuhiro@katsuster.net>
 <2930126.sCcUyySgUU@diego>
From: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Message-ID: <0b36bf84-0e7b-7287-a094-9fd2f33167ee@katsuster.net>
Date: Sun, 15 Mar 2020 18:44:13 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <2930126.sCcUyySgUU@diego>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_024417_429056_1749AAE8 
X-CRM114-Status: GOOD (  18.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGVsbG8gSGVpa28sCgo+IFRoaXMgYmVsb25ncyBpbiByazMyODguZHRzaSwgYXMgdGhpcyBpcyBk
ZWZpbml0bHkgbm90IGJvYXJkLXNwZWNpZmljLCBhcwo+IHRoZSBkbWEtdWFydCBjb25uZWN0aW9u
IGlzIGRvbmUgaW5zaWRlIHRoZSBzb2MuCj4gCj4gQXQgbGVhc3Qgb24gYXJtNjQgKHJrMzMyOCwg
cHgzMCwgcHJvYmFibHkgbW9yZSkgd2UgYWxyZWFkeSBoYXZlIHRoZQo+IHVhcnQgZG1hcyBpbiB0
aGUgY29yZSBkdHNpIHdpdGhvdXQgYW55IHByb2JsZW1zLgo+IAo+IElzIHRoZXJlIGFueSByZWFz
b24gd2h5IHlvdSBvbmx5IGRpZCBhZGQgaXQgdG8gdGhlIHRpbmtlciBib2FyZCBvbmx5PwoKVGhl
cmUgaXMgbm8gc3BlY2lhbCByZWFzb24uIFNpbXBseSBJIGRvbid0IGhhdmUgYW5kIG5vdCB0ZXN0
ZWQgb24gb3RoZXIKYm9hcmRzIG9mIFJLMzI4OC4gQnV0IEkgaG9wZSB0aGVzZSBETUEgc2V0dGlu
Z3MgY2FuIHdvcmsgY29ycmVjdGx5IG9uCm90aGVyIGJvYXJkcy4KCkknbGwgcmVzZW5kIHBhdGNo
IGZvciByazMyODguZHRzaS4KCkJlc3QgUmVnYXJkcywKS2F0c3VoaXJvIFN1enVraQoKCk9uIDIw
MjAvMDMvMTUgMDowOSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gSGksCj4gCj4gQW0gU2Ftc3Rh
ZywgMTQuIE3DpHJ6IDIwMjAsIDE1OjIzOjI3IENFVCBzY2hyaWViIEthdHN1aGlybyBTdXp1a2k6
Cj4+IFRoaXMgcGF0Y2ggZW5hYmxlcyB0byB1c2UgRE1BQyBmb3IgYWxsIFVBUlRzIHRoYXQgYXJl
IGNvbm5lY3RlZCB0bwo+PiBkbWFjX3BlcmkgY29yZSBmb3IgVGlua2VyQm9hcmQuCj4+Cj4+IE9u
bHkgdWFydDIgaXMgY29ubmVjdGVkIGRpZmZlcmVudCBETUFDIChkbWFjX2J1c19zKSBzbyBrZWVw
IGN1cnJlbnQKPj4gc2V0dGluZ3Mgb24gdGhpcyBwYXRjaC4KPiAKPiBUaGlzIGJlbG9uZ3MgaW4g
cmszMjg4LmR0c2ksIGFzIHRoaXMgaXMgZGVmaW5pdGx5IG5vdCBib2FyZC1zcGVjaWZpYywgYXMK
PiB0aGUgZG1hLXVhcnQgY29ubmVjdGlvbiBpcyBkb25lIGluc2lkZSB0aGUgc29jLgo+IAo+IEF0
IGxlYXN0IG9uIGFybTY0IChyazMzMjgsIHB4MzAsIHByb2JhYmx5IG1vcmUpIHdlIGFscmVhZHkg
aGF2ZSB0aGUKPiB1YXJ0IGRtYXMgaW4gdGhlIGNvcmUgZHRzaSB3aXRob3V0IGFueSBwcm9ibGVt
cy4KPiAKPiBJcyB0aGVyZSBhbnkgcmVhc29uIHdoeSB5b3Ugb25seSBkaWQgYWRkIGl0IHRvIHRo
ZSB0aW5rZXIgYm9hcmQgb25seT8KPiAKPiAKPiBIZWlrbwo+IAo+IAo+PiBTaWduZWQtb2ZmLWJ5
OiBLYXRzdWhpcm8gU3V6dWtpIDxrYXRzdWhpcm9Aa2F0c3VzdGVyLm5ldD4KPj4gLS0tCj4+ICAg
YXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LXRpbmtlci5kdHNpIHwgOCArKysrKysrKwo+PiAgIDEg
ZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJt
L2Jvb3QvZHRzL3JrMzI4OC10aW5rZXIuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL3JrMzI4OC10
aW5rZXIuZHRzaQo+PiBpbmRleCAzMTI1ODJjMWJkMzcuLjZlZmFiZWFmM2M2ZCAxMDA2NDQKPj4g
LS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LXRpbmtlci5kdHNpCj4+ICsrKyBiL2FyY2gv
YXJtL2Jvb3QvZHRzL3JrMzI4OC10aW5rZXIuZHRzaQo+PiBAQCAtNDkxLDEwICs0OTEsMTQgQEAg
JnRzYWRjIHsKPj4gICB9Owo+PiAgIAo+PiAgICZ1YXJ0MCB7Cj4+ICsJZG1hcyA9IDwmZG1hY19w
ZXJpIDE+LCA8JmRtYWNfcGVyaSAyPjsKPj4gKwlkbWEtbmFtZXMgPSAidHgiLCAicngiOwo+PiAg
IAlzdGF0dXMgPSAib2theSI7Cj4+ICAgfTsKPj4gICAKPj4gICAmdWFydDEgewo+PiArCWRtYXMg
PSA8JmRtYWNfcGVyaSAzPiwgPCZkbWFjX3BlcmkgND47Cj4+ICsJZG1hLW5hbWVzID0gInR4Iiwg
InJ4IjsKPj4gICAJc3RhdHVzID0gIm9rYXkiOwo+PiAgIH07Cj4+ICAgCj4+IEBAIC01MDMsMTAg
KzUwNywxNCBAQCAmdWFydDIgewo+PiAgIH07Cj4+ICAgCj4+ICAgJnVhcnQzIHsKPj4gKwlkbWFz
ID0gPCZkbWFjX3BlcmkgNz4sIDwmZG1hY19wZXJpIDg+Owo+PiArCWRtYS1uYW1lcyA9ICJ0eCIs
ICJyeCI7Cj4+ICAgCXN0YXR1cyA9ICJva2F5IjsKPj4gICB9Owo+PiAgIAo+PiAgICZ1YXJ0NCB7
Cj4+ICsJZG1hcyA9IDwmZG1hY19wZXJpIDk+LCA8JmRtYWNfcGVyaSAxMD47Cj4+ICsJZG1hLW5h
bWVzID0gInR4IiwgInJ4IjsKPj4gICAJc3RhdHVzID0gIm9rYXkiOwo+PiAgIH07Cj4+ICAgCj4+
Cj4gCj4gCj4gCj4gCj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
