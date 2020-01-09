Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A52BA13536C
	for <lists+linux-rockchip@lfdr.de>; Thu,  9 Jan 2020 07:58:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wd8YwmoZZAdGpU74wW15BH0alal53Nrz0YlrktmZFG0=; b=BzAiT2aRUZFihF
	aYDqV4i813ltHTcHb1gVw4Dlxp0cW5V1Q/9TFnWOQ+UAEfq9cNY5vY1w7xqhpG1WLkG243T+CCFx7
	4ZBObYT3yWNfi3CLfHvqYYImwdYgQ4lPnUb+3G8OLPhS4FdzyhqJdj5GL0EW0Vay+n+8yWUctncBa
	dv1uW6XN4DT6rIRpcIu9SPeW+am2+RpjUCrZUkSOrKcj5tqWkld26uICV8dRV4AmXTFT+BICrz7C5
	NeVfFnuzYFEZINZQyvmlr/B9EHHMPVUEcgkmpGL34upRcydaeILuAYbnWHMlvt/zEtmPbj12eCFCm
	70YwnsDfJi3CtEGwnqTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipRmO-0008SQ-NJ; Thu, 09 Jan 2020 06:58:52 +0000
Received: from mail.manjaro.org ([176.9.38.148] helo=manjaro.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipRmH-0008KY-2z; Thu, 09 Jan 2020 06:58:46 +0000
Received: from localhost (localhost [127.0.0.1])
 by manjaro.org (Postfix) with ESMTP id 4F46036E4E03;
 Thu,  9 Jan 2020 07:58:43 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at manjaro.org
Received: from manjaro.org ([127.0.0.1])
 by localhost (manjaro.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id INa9G9XjTyTz; Thu,  9 Jan 2020 07:58:40 +0100 (CET)
Subject: Re: [PATCH 1/1] drm/rockchip: fix integer type used for storing dp
 data rate and lane count
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Tobias Schramm <t.schramm@manjaro.org>
References: <20200108223949.355975-1-t.schramm@manjaro.org>
 <20200108223949.355975-2-t.schramm@manjaro.org> <2028959.b8b8FNkPgY@diego>
From: Tobias Schramm <t.schramm@manjaro.org>
Message-ID: <2b02f9e1-5aa0-9d21-16e4-251fffbb736a@manjaro.org>
Date: Thu, 9 Jan 2020 07:56:05 +0100
MIME-Version: 1.0
In-Reply-To: <2028959.b8b8FNkPgY@diego>
Content-Language: en-US-large
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_225845_279327_B46AA362 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.38.148 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

QW0gMDkuMDEuMjAgdW0gMDE6MTUgc2NocmllYiBIZWlrbyBTdMO8Ym5lcjoKPiBBbSBNaXR0d29j
aCwgOC4gSmFudWFyIDIwMjAsIDIzOjM5OjQ5IENFVCBzY2hyaWViIFRvYmlhcyBTY2hyYW1tOgo+
PiBjb21taXQgMjU4OWM0MDI1ZjEzICgiZHJtL3JvY2tjaGlwOiBBdm9pZCBkcm1fZHBfbGluayBo
ZWxwZXJzIikgY2hhbmdlcwo+PiB0aGUgdHlwZSBvZiB2YXJpYWJsZXMgdXNlZCB0byBzdG9yZSB0
aGUgZGlzcGxheSBwb3J0IGRhdGEgcmF0ZSBhbmQKPj4gbnVtYmVyIG9mIGxhbmVzIHRvIHU4LiBI
b3dldmVyIHU4IGlzIG5vdCBzdWZmaWNpZW50IHRvIHN0b3JlIHRoZSBsaW5rCj4+IGRhdGEgcmF0
ZSBvZiB0aGUgZGlzcGxheSBwb3J0Lgo+PiBUaGlzIGNvbW1pdCByZXZlcnRzIHRoZSB0eXBlIG9m
IGJvdGggdGhlIG51bWJlciBvZiBsYW5lcyBhbmQgdGhlIGRhdGEKPj4gcmF0ZSB0byB1bnNpZ25l
ZCBpbnQuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFRvYmlhcyBTY2hyYW1tIDx0LnNjaHJhbW1AbWFu
amFyby5vcmc+Cj4+IC0tLQo+PiAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2Nkbi1kcC1jb3Jl
LmggfCA0ICsrLS0KPj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRp
b25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvY2RuLWRw
LWNvcmUuaCBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9jZG4tZHAtY29yZS5oCj4+IGluZGV4
IDgzYzQ1ODY2NjViNC4uODA2Y2IwYjA4OTgyIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vcm9ja2NoaXAvY2RuLWRwLWNvcmUuaAo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2No
aXAvY2RuLWRwLWNvcmUuaAo+PiBAQCAtOTQsOCArOTQsOCBAQCBzdHJ1Y3QgY2RuX2RwX2Rldmlj
ZSB7Cj4+ICAJc3RydWN0IHZpZGVvX2luZm8gdmlkZW9faW5mbzsKPj4gIAlzdHJ1Y3QgY2RuX2Rw
X3BvcnQgKnBvcnRbTUFYX1BIWV07Cj4+ICAJdTggcG9ydHM7Cj4+IC0JdTggbWF4X2xhbmVzOwo+
PiAtCXU4IG1heF9yYXRlOwo+PiArCXVuc2lnbmVkIGludCBtYXhfbGFuZXM7Cj4gCj4gYWx0aG91
Z2ggSSB3b3VsZCB0aGluayB1OCBzaG91bGQgYmUgZW5vdWdoIGZvciBtYXhfbGFuZXM/Cj4gVGhl
cmUgc2hvdWxkbid0IGJlIGJlIG1vcmUgdGhhbiAyNTUgZHAgbGFuZXM/CgpUcnVlLiBJJ2xsIHRl
c3QgYW5kIHNlbmQgYSB2Mi4KClRoYW5rcywgVG9iaWFzCgo+IAo+IEhlaWtvCj4gCj4+ICsJdW5z
aWduZWQgaW50IG1heF9yYXRlOwo+PiAgCXU4IGxhbmVzOwo+PiAgCWludCBhY3RpdmVfcG9ydDsK
Pj4gIAo+Pgo+IAo+IAo+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gZHJpLWRldmVsIG1haWxpbmcgbGlzdAo+IGRyaS1kZXZlbEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2RyaS1kZXZlbAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
