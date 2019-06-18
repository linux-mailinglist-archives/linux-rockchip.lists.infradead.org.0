Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7D4349E11
	for <lists+linux-rockchip@lfdr.de>; Tue, 18 Jun 2019 12:09:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=icNCuXWHcgPt21TFvEsp/2GwL/uG+aZZ9BirxHiy3S4=; b=Ia1sdZ7JtZEAjS
	cRYEmjDiA4vj115kT0DPiUwPxU2FwE2AJLuCez9s+PtX3TzkY6L16JsWRunn+TWNgHxxoS0nGb4S6
	rSwHVTz5Q7sF5JuzHFYMOkHHkPDXGYy/99GsvJHCtI4B8J3LGbAAPcPXRyqJ0u1Aey+WelrwruFmd
	Noo/Jsc+W83Lmcdw5pilsokcuqz4K2R8y6XrMSk8f1gieZYohhvppUbG1G+9x/vZnvrQXgCc/SkfZ
	OO/jKp/n1TXS9e3zj80SkiS5/8x/pWaaUgm8mKoXfp/CYLBPIa4nri3tdjth9Q+bC4N7pFN0nod0x
	8ewwjaxArl3Ac8mGEKqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdB3H-0000Sj-GP; Tue, 18 Jun 2019 10:09:19 +0000
Received: from lucky1.263xmail.com ([211.157.147.134])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdB3D-0000RE-CC
 for linux-rockchip@lists.infradead.org; Tue, 18 Jun 2019 10:09:17 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.252])
 by lucky1.263xmail.com (Postfix) with ESMTP id E62FE377FE;
 Tue, 18 Jun 2019 18:09:07 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 0
X-SKE-CHECKED: 0
X-ANTISPAM-LEVEL: 2
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P5770T140158834820864S1560852538535918_; 
 Tue, 18 Jun 2019 18:09:05 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <a6cdf774b864727ef7679c73fc1ac909>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: nick@khadas.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add support for Khadas
 Edge/Edge-V/Captain boards
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Jagan Teki <jagan@amarulasolutions.com>
References: <1558696796-10745-1-git-send-email-xieqinick@gmail.com>
 <1560756277-5928-1-git-send-email-xieqinick@gmail.com>
 <5ad4d842c462a19e6241fe620705381169d48318.camel@bootlin.com>
 <CAMty3ZA-wf7tRE=+38SujjXXNGC-pb-m9RzgxFBops6w5n9qzQ@mail.gmail.com>
 <196aa8982a2d9bc2fec5408fe4d84615bbfb2c2b.camel@bootlin.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <72551f4c-f7a3-1afa-a214-66bc9c5cf48d@rock-chips.com>
Date: Tue, 18 Jun 2019 18:08:58 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <196aa8982a2d9bc2fec5408fe4d84615bbfb2c2b.camel@bootlin.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_030915_769110_CDE0D3E1 
X-CRM114-Status: GOOD (  24.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.134 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: U-Boot-Denx <u-boot@lists.denx.de>, Simon Glass <sjg@chromium.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 nick@khadas.com, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 Nick Xie <xieqinick@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgUGF1bCwKCgpPbiAwNi8xOC8yMDE5IDA1OjAzIFBNLCBQYXVsIEtvY2lhbGtvd3NraSB3cm90
ZToKPiBIaSwKPgo+IE9uIFR1ZSwgMjAxOS0wNi0xOCBhdCAxNDoyNyArMDUzMCwgSmFnYW4gVGVr
aSB3cm90ZToKPj4gT24gVHVlLCBKdW4gMTgsIDIwMTkgYXQgMTo1NSBQTSBQYXVsIEtvY2lhbGtv
d3NraQo+PiA8cGF1bC5rb2NpYWxrb3dza2lAYm9vdGxpbi5jb20+IHdyb3RlOgo+Pj4gSGksCj4+
Pgo+Pj4gT24gTW9uLCAyMDE5LTA2LTE3IGF0IDE1OjI0ICswODAwLCB4aWVxaW5pY2tAZ21haWwu
Y29tIHdyb3RlOgo+Pj4+IEZyb206IE5pY2sgWGllIDxuaWNrQGtoYWRhcy5jb20+Cj4+PiBXYXMg
dGhpcyB0ZXN0ZWQgd2l0aCBTUEwgc3VwcG9ydD8gSSBkb24ndCBzZWUgRFJBTSBjb25maWd1cmF0
aW9uIGhlcmUKPj4+IHNvIGl0IHNlZW1zIHRoYXQgaXQgcmVsaWVzIG9uIHRoZSBub24tZnJlZSBy
b2NrY2hpcCBsb2FkZXIuCj4+Pgo+Pj4gSWYgdGhhdCBpcyB0aGUgY2FzZSwgY291bGQgeW91IHBs
ZWFzZSBpbmRpY2F0ZSB0aGF0IGluIHRoZSBjb21taXQKPj4+IG1lc3NhZ2U/Cj4+Pgo+Pj4gVG8g
bWFpbnRhaW5lcnM6IHBsZWFzZSBkbyBub3QgbWVyZ2UgdGhpcyBzZXJpZXMgYmVmb3JlIERSQU0g
aW5pdCBhbmQKPj4+IFNQTCBzdXBwb3J0IGlzIGF2YWlsYWJsZSBmb3IgdGhlc2UgYm9hcmRzLgo+
Pj4KPj4+IEl0IHNlZW1zIHRoYXQgb3RoZXIgUkszMzk5IGJvYXJkcyB3ZXJlIG1lcmdlZCB3aXRo
b3V0IFNQTCBzdXBwb3J0IGFuZAo+Pj4gc29mYXIsIEkgaGF2ZSB0aGUgZmVlbGluZyB0aGF0IG5v
Ym9keSBjYXJlZCB0byBleHBsYWluIGhvdyB3ZSBnb3QgaW50bwo+Pj4gdGhpcyBicm9rZW4gc2l0
dWF0aW9uLiBQbGVhc2UgZG9uJ3QgbWVyZ2UgYW55IG1vcmUgc3VjaCBib2FyZC4KPj4gZnlpOiBu
byByazMzOTkgYm9hcmRzIHdlcmUgbWVyZ2VkIHcvbyBTUEwuIGxwZGRyNCBib2FyZHMgd2VyZSBt
ZXJnZWQKPj4gd2l0aCBUUEwtZW5hYmxlZCAod2hpY2ggd2FzIGRpc2N1c3NlZCBvbiB0aGUgdGhy
ZWFkcywgaWYgeW91IHJlbWVtYmVyKQo+PiB3aXRoIGJlbG93IGJvb3QgY2hhaW4uCj4+Cj4+IHJr
YmluIChUUEwpIC0+IFNQTCAtPiBVLUJvb3QgcHJvcGVyCj4+Cj4+IFNhbWUgY2FzZSBmb3IgdGhp
cyBib2FyZCBhcyB3ZWxsLgo+IEhlcmUgaXMgYSBxdW90ZSBmcm9tIFBoaWxpcHAgVG9tc2ljaCBv
biB0aGUgdGhyZWFkIHdlIGRpc2N1c3NlZCB0aGlzOgo+Cj4gIiBPbiBzb21lIGJvYXJkcywgdGhl
cmUgd2lsbCBiZSBubyBUUEwgYW5kIG9ubHkgYSBTUEwgc3RhZ2UgdGhhdCB3aWxsCj4gaW5pdGlh
bGlzZSBEUkFNIChhcyB0aGUgbW92ZSB0byBoYXZpbmcgVFBMIG9uIHRoZSBSSzMzOTkgaXMgb3B0
aW9uYWwpLgo+Cj4gSSBhZ3JlZSB3aXRoIFBhdWwgdGhhdCB0aGUgRFJBTSBpbml0IHNob3VsZCBi
ZSBwYXJ0IG9mIFUtQm9vdCB3aGVuZXZlcgo+IHdlIGFkZCBuZXcgYm9hcmRzIGFuZCBtYWtlIGFu
IG9wZW4gRFJBTSBpbml0IGEgcHJlcmVxdWlzaXRlLiAiCj4KPiBTbyBldmVuIGlmIEkgZnJlcXVl
bnRseSBjb25mdXNlIFNQTCBhbmQgVFBMLCBpdCBkb2Vzbid0IGNoYW5nZSB0aGUgZmFjdAo+IHRo
YXQgbm8gYm9hcmQgc2hvdWxkIGJlIG1lcmdlZCB3aXRob3V0IHByb3BlciBEUkFNIGluaXQuCj4K
PiBQbGVhc2Ugc3RvcCBwdXNoaW5nIGZvciBtZXJnaW5nIHRoZXNlIGJvYXJkcy4gSSdtIG5vdCBz
dXJlIHdoYXQgd2UKPiBzaG91bGQgZG8gYWJvdXQgdGhlIGJvYXJkcyB0aGF0IHdlcmUgbWVyZ2Vk
IGFscmVhZHkgd2l0aG91dCBEUkFNIGluaXQsCj4gYnV0IG1heWJlIHRoZXkgc2hvdWxkIGJlIHJl
dmVydGVkLgpJIGRvbid0IHRoaW5rIHdlIGhhdmUgdG8gaGF2ZSBmdWxsIERSQU0gaW5pdCBzb3Vy
Y2UgY29kZSBmb3IgZWFjaApib2FyZCBiZWZvcmUgd2UgY2FuIG1lcmdlIGl0LCBJIGJlbGlldmUg
bW9zdCBvZiB0aGUgYm9hcmQgb24gVS1Cb290Cm1haW5saW5lIG5lZWQgdG8gcmVtb3ZlZCBkdWUg
dG8gdGhpcyBydWxlLiBUaGVyZSBhcmUgc28gbWFueSBib2FyZHMKZnJvbSBkaWZmZXJlbnQgdmVu
ZG9yIG5lZWQgYSBiaW5hcnkgbG9hZGVyIGJlZm9yZSBVLUJvb3QsIGFuZCBJIGNhbgpzZWUgb25s
eSB2ZXJ5IGZldyBkcml2ZXJzIGZvciBkcmFtIGF0IGRyaXZlci9yYW0vLCBhbmQgSSBiZWxpZXZl
IHJvY2tjaGlwCmlzIGFscmVhZHkgdGhlIG1vc3Qgb3BlbiB2ZW5kb3Igb24gdGhpcyBhcmVhLgoK
SSB3b24ndCB1c2UgdGhpcyBydWxlIHRvIHN0b3AgZGV2ZWxvcGVycyBjb250cmlidXRlIHRoZXJl
IHNvdXJjZSBjb2RlLApmb3IgYSBib2FyZCBzdXBwb3J0LCB3ZSBvbmx5IG5lZWQgdGhlIGJvYXJk
IHRvIGhhdmUgdGhlIGZ1bGwgZG9jdW1lbnRhdGlvbgphYm91dCBob3cgdG8gc2V0dXAgYW5kIGJv
b3Qgd2l0aCB1cHN0cmVhbSBVLUJvb3QuIGFuZCBJIHRoaW5rIHRoZQptb3N0IG9mIHBlb3BsZSBj
YXJlcyBtb3JlIGFib3V0IGZlYXR1cmVzIGluIFUtQm9vdCBwcm9wZXIuIEV2ZXJ5dGhpbmcKYmVm
b3JlIFUtQm9vdCBwcm9wZXIsIHlvdSBjYW4gdXNlIFRQTC9TUEwgb3IgYWx0ZXJuYXRpdmUgdG8g
dXNlIGJpbmFyeQpmcm9tIHZlbmRvciwgYXMgeW91IGNhbiBzZWUgYWxsIG92ZXIgdGhlIFUtQm9v
dCBtYWlubGluZSBub3csIGFsdGhvdWdoCndlIGVuY291cmFnZSBwZW9wbGUgdG8gdXNlIGZ1bGwg
b3BlbiBzb3VyY2UgVFBML1NQTC4KU3BlY2lmaWNhbGx5IGZvciBVLUJvb3QgUm9ja2NoaXAgcGxh
dGZvcm0sIEkgd291bGQgbGlrZSBwZW9wbGUgdG8Kc3VwcG9ydCBub3Qgb25seSBVLUJvb3QKcHJv
cGVyLCBidXQgYWxzbyBmb3IgZnVsbCBTUEwoQVRGLCBPUC1URUUgc3VwcG9ydCwgaXRiIGltYWdl
IGFuZCBvdGhlcgpmZWF0dXJlcykKc3VwcG9ydC4gQW5kIGZvciBEUkFNIGluaXQsCi0gaWYgdGhp
cyBiZWxvbmdzIHRvIFNQTCBmb3IgdGhpcyBib2FyZCwgeW91IG11c3QgaW1wbGVtZW50IGl0IG9y
IGVsc2UKU1BMIHdvbid0IHdvcms7Ci0gaWYgdGhpcyBkb2VzIG5vdCBiZWxvbmcgdG8gU1BMIGZv
ciB0aGlzIGJvYXJkLCB5b3UgbmVlZCBpbXBsZW1lbnQgZnVsbApmdW5jdGlvbiBTUEw7CsKgwqDC
oCBhbmQgeW91IGNhbiBlaXRoZXIgdG8gaGF2ZSBmdWxsIGZ1bmN0aW9uIFRQTCB3aXRoIERSQU0g
aW5pdCh3aGljaCBpcwpwcmVmZXJlZCkKwqDCoMKgIG9yIGFsdGVybmF0aXZlbHkgdXNlIGJpbmFy
eSBsb2FkZXIgZnJvbSB2ZW5kb3IuCgpJJ20gbm90IHN1cmUgaWYgeW91IGhhdmUgd3JpdGUgYSBu
ZXcgZHJhbSBkcml2ZXIgZm9yIGEgYm9hcmQsIGJ1dCBJIGtub3cKZXZlbiB0aGUgYm9hcmQgdmVu
ZG9yIG1heSBub3QgaGF2ZSB0aGUgY2FwYWJpbGl0eSB0byB3cml0ZSB0aGUgRFJBTQpkcml2ZXIs
IHNvIHRoaXMgc2hvdWxkIG5vdCBzdG9wIGRldmVsb3BlcnMgY29udHJpYnV0ZSB0byBhbGwgb3Ro
ZXIgOTklCmZlYXR1cmVzIG9uIFUtQm9vdC4KClRoYW5rcywKLSBLZXZlcgo+Cj4gQ2hlZXJzLAo+
Cj4gUGF1bAo+CgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
