Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68717900FC
	for <lists+linux-rockchip@lfdr.de>; Fri, 16 Aug 2019 13:56:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zesah5ASk0Y145ExXrpevJCNwMqFT5ikjK+gEzzFowk=; b=TOa5YzuPBKDnXh
	zYty6PrdR/E/AYKHdEoTkcme6rJszOTqsP+OwNzS7qEkYPKtNwjPZ5iLWwJ2nzXxkG6Wjv6nOIUCi
	2AJxE1YH+DlxWnsxO5lYx886ZPqR3J8o1rR5RqCjiYzbGjUS0OjGhpkiaAOVymyQe55svOJ2vCmv5
	QdCZuL9Mb4ezkiY+kO6FjLTaktQQxnVJhNFYQvOt7umTYmvn0ESi+QHECnsSWQy2LwMc8O6N9n1yS
	VOaLhDn0PD4CbLCCv0GC3zd/MI0STNaiW9gAr/FNsbD2eMP4vMVfYfmKVlsp5rqc+JNh6nQ+I0YpO
	fZ2UGE1pr0wbxvfTSFGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyaqW-0002Zd-2R; Fri, 16 Aug 2019 11:56:40 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyaqT-0002Z9-0Y
 for linux-rockchip@lists.infradead.org; Fri, 16 Aug 2019 11:56:38 +0000
Received: from [88.128.80.55] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hyaqQ-0000O0-Ff; Fri, 16 Aug 2019 13:56:35 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Andrius =?utf-8?B?xaB0aWtvbmFz?= <andrius@stikonas.eu>
Subject: Re: [PATCH] arm64: dts: rockchip: Enable internal SPI flash for
 RockPro64.
Date: Fri, 16 Aug 2019 13:56:23 +0200
Message-ID: <3189741.LD3pXP1jMj@phil>
In-Reply-To: <20190811211108.28071-1-andrius@stikonas.eu>
References: <20190811211108.28071-1-andrius@stikonas.eu>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_045637_208924_6B2DA761 
X-CRM114-Status: GOOD (  15.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgQW5kcml1cywKCkkgZGlkIGFwcGx5IHRoaXMgcGF0Y2ggZm9yIDUuNCAuLi4gd2l0aCBhIGJp
ZyBidXQgLi4uCk1lYW5pbmcgSSBkaWQgcXVpdGUgYSBudW1iZXIgb2YgY2hhbmdlcyBhcyBkZXNj
cmliZWQgYmVsb3cKYW5kIHdvdWxkIGFzayB5b3UgdG8ga2VlcCB0aGVtIGluIG1pbmQgZm9yIGZ1
dHVyZSBwYXRjaGVzLgoKU28gdGhlcmUgaXMgbm8gbmVlZCB0byByZXNlbmQgYSBmaXhlZCB2ZXJz
aW9uIG9mIHRoaXMgcGF0Y2guCgooMSkgUGxlYXNlIGFsc28gaW5jbHVkZSBvdGhlciBsaXN0cywg
c2NyaXB0cy9nZXRfbWFpbnRhaW5lci5wbCBpcyBhIGdvb2QKc3RhcnRpbmcgcG9pbnQuIGxpbnV4
LXJvY2tjaGlwIGFsb25lIGZlZWxzIGxpa2UgaGlkaW5nIHRoZSBwYXRjaCA7LSkgLgoKQW0gU29u
bnRhZywgMTEuIEF1Z3VzdCAyMDE5LCAyMzoxMTowOCBDRVNUIHNjaHJpZWIgQW5kcml1cyDFoHRp
a29uYXM6CgooMikgUGxlYXNlIGFsd2F5cyBwcm92aWRlIGEgcGF0Y2ggZGVzY3JpcHRvbiBvZiBz
b21lIHNvcnQsIEkgZGlkIGdvIHdpdGgKCSJUaGUgcm9ja3BybzY0IGNvbnRhaW5zIGEgbm9yLWZs
YXNoIGNoaXAgY29ubmVjdGVkIHRvIHNwaTEuIgoKPiBTaWduZWQtb2ZmLWJ5OiBBbmRyaXVzIMWg
dGlrb25hcyA8YW5kcml1c0BzdGlrb25hcy5ldT4KPiAtLS0KPiAgYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0cyB8IDE0ICsrKysrKysrKysrKysrCj4gIDEg
ZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2twcm82NC5kdHMgYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrcHJvNjQuZHRzCj4gaW5kZXggZWI1NTk0MDYyMDA2
Li5hYmM5N2IyYzFmMTggMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazMzOTktcm9ja3BybzY0LmR0cwo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszMzk5LXJvY2twcm82NC5kdHMKPiBAQCAtNjExLDYgKzYxMSwyMCBAQAo+ICAJc3RhdHVz
ID0gIm9rYXkiOwo+ICB9Owo+ICAKPiArJnNwaTEgewoKKDMpIHBsZWFzZSBzb3J0IG5vZGVzIGFs
cGhhYmV0aWNhbGx5LCBzbyBoZXJlIHRoaXMgc2hvdWxkIGJlIGJldHdlZW4KJnNkaW8gYW5kICZ0
Y3BoeTAKCig0KSBBbGwgaW5kZW50YXRpb24gb2YgdGhlIGxpbmVzIGJlbG93IHdhcyBkb25lIHdp
dGggc3BhY2VzLCBwbGVhc2UgdXNlIHRhYnMuCgo+ICsgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+
ICsgICAgICAgbWF4LWZyZXEgPSA8MTAwMDAwMDA+OwoKCig1KSBUaGlzIHByb3BlcnR5IGlzIG5v
dCBwYXJ0IG9mIGFueSBiaW5kaW5nIGFuZCBhbHNvIG5vdCB1c2VkLCBzbyBkcm9wcGVkCgo+ICsK
PiArICAgICAgIGZsYXNoQDAgewo+ICsgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gImplZGVj
LHNwaS1ub3IiOwo+ICsgICAgICAgICAgICAgICAjYWRkcmVzcy1jZWxscyA9IDwxPjsKPiArICAg
ICAgICAgICAgICAgI3NpemUtY2VsbHMgPSA8MT47CgooNikgVGhlcmUgaXMgbm8gbmVlZCBhdCBh
bGwgZm9yIHRoZSAjZm9vLWNlbGxzIGhlcmUsIHRoZXkncmUgbm90IHBhcnQgb2YgdGhlCmJpbmRp
bmcgYW5kIGFsc28gbm90IHVzZWQuCgo+ICsgICAgICAgICAgICAgICByZWcgPSA8MD47Cj4gKyAg
ICAgICAgICAgICAgIHNwaS1tYXgtZnJlcXVlbmN5ID0gPDEwMDAwMDAwPjsKPiArICAgICAgIH07
Cj4gK307Cj4gKwo+ICsKCig3KSBQbGVhc2UgbWFrZSBzdXJlIHRvIG5vdCBpbmNsdWRlIGRvdWJs
ZSBlbXB0eSBsaW5lcywgdGhpcyBzaG91bGQgb25seSBiZQpvbmUgYmV0d2VlbiBub2Rlcy4KCgpU
aGFua3MKSGVpa28KCj4gICZzZG1tYyB7Cj4gIAlidXMtd2lkdGggPSA8ND47Cj4gIAljYXAtbW1j
LWhpZ2hzcGVlZDsKPiAKCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
