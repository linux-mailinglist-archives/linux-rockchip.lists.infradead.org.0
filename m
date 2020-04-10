Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB601A44D1
	for <lists+linux-rockchip@lfdr.de>; Fri, 10 Apr 2020 11:57:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QT8ma2/YffeDulFxfcjmPhIvXT8E7ortkn8vRwSDLM4=; b=XQGIJobjvJ1awc
	ksR7+DFCjziLfDUN5iaEPp+31akkz3tHLDR/hI0htxiobrUQ6aUVWMSpl1rxIzNNOm3RN7MWFjKNY
	9bUZlWxvuulTkvOn9FVi5cxjCwq0DWynHwBQGEH8A7JDSiCTnyVJtN1okoTPaLZb4KIZROzlDQI3Y
	gakM9zTYwianp1FNeDVEHlMQ9+UVQxoBcHisOrFx9dbQgluvYvXF1YD5e+vH6tERM+4elOnNcIE9i
	HdS5iBzPQMcBYPmxEatPxwBcqQyKuNtbsMG1hvaZolRzEQ66W4NOuGaIfCkSDKtJojhohMfgwPCza
	j25C6nu/BXdkKbbrGEfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMqPf-0005L6-Ei; Fri, 10 Apr 2020 09:57:27 +0000
Received: from static-213-198-238-194.adsl.eunet.rs ([213.198.238.194]
 helo=fx.arvanta.net)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMqPb-0005KR-SR
 for linux-rockchip@lists.infradead.org; Fri, 10 Apr 2020 09:57:25 +0000
Received: from arya.arvanta.net (arya.arvanta.net [10.5.1.6])
 by fx.arvanta.net (Postfix) with ESMTP id AFE9E474C
 for <linux-rockchip@lists.infradead.org>;
 Fri, 10 Apr 2020 11:57:19 +0200 (CEST)
Date: Fri, 10 Apr 2020 11:57:19 +0200
From: Milan =?utf-8?Q?P=2E_Stani=C4=87?= <mps@arvanta.net>
To: linux-rockchip@lists.infradead.org
Subject: Re: PROBLEM: [drm:analogix_dp_bridge_atomic_enable [analogix_dp]]
 *ERROR* Failed to disable psr -110
Message-ID: <20200410095719.GA914@arya.arvanta.net>
References: <20200329203349.GA15121@arya.arvanta.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200329203349.GA15121@arya.arvanta.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_025724_112979_FEC7BBD3 
X-CRM114-Status: GOOD (  13.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGVsbG8sCgpEb2VzIGFueW9uZSBoYXZlL2tub3cgYW55dGhpbmcgd2hpY2ggY291bGQgaGVscCB3
aXRoIHRoaXMgcHJvYmxlbSBvcgpwb2ludCBtZSB3aGVyZSBJIGNhbiBsb29rIHRvIGZpbmQgc29s
dXRpb24gZm9yIHRoaXMgc2VyaW91cyBpc3N1ZS4KClRJQQoKT24gU3VuLCAyMDIwLTAzLTI5IGF0
IDIyOjMzLCBNaWxhbiBQLiBTdGFuacSHIHdyb3RlOgo+IFsgUGxlYXNlIGtlZXAgbWUgaW4gQ2Ms
IEknbSBub3Qgc3Vic2NyaWJlZCB0byB0aGlzIG1haWxpbmcgbGlzdCBdCj4gCj4gWyBJIHBvc3Rl
ZCB0aGlzIGJ1ZyByZXBvcnQgdG8gZHJpLWRldmVsQGZyZWVkZXNrdG9wLm9yZyBoZXJlOgo+ICAg
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvYXJjaGl2ZXMvZHJpLWRldmVsLzIwMjAtTWFy
Y2gvMjU5ODMyLmh0bWwKPiAgIG9uIFRodSBNYXIgMTkgMjA6MDE6MTkgVVRDIDIwMjAgYnV0IGRp
ZG4ndCByZWNlaXZlZCBhbnkgYW5zd2VyLiBTbwo+ICAgcmVwb3N0aW5nIGhlcmUgaW4gYSBob3Bl
IHRoYXQgc29tZW9uZSB3aWxsIGhlbHAgXQo+IAo+IEhlbGxvLAo+IAo+IFRoaXMgaXMgb25lIG9m
IGZpcnN0IGJ1ZyByZXBvcnQgdG8gbGludXgga2VybmVsLCBzbyBzb3JyeSBpZiBJIGRvCj4gc29t
ZXRoaW5nIHdyb25nIG9yIGluYXBwcm9wcmlhdGUuIEFuZCBJJ20gc2VsZiB0YXVnaHQgaW4gRW5n
bGlzaCBzbwo+IHNvcnJ5IGlmIGRvIG5vdCB3cml0ZSBvciBleHByZXNzIGNvcnJlY3RseS4KPiAK
PiBJJ20gcnVubmluZyBsaW51eCA1LjYuMC1yYzMgd2l0aG91dCBhbnkgcGF0Y2hlcyBvbiBTYW1z
dW5nIGNocm9tZWJvb2sKPiBvbmUgcGx1cywgQXJtNjQgcm9ja2NoaXAgcmszMzk5IGJhc2VkIG1v
ZGVsIG5hbWU6Cj4gTWFjaGluZSBtb2RlbDogR29vZ2xlIEtldmluCj4gCj4gSSBidWlsZCBrZXJu
ZWxzIGZyb20gdXBzdHJlYW0gZ2l0Lmtlcm5lbC5vcmcgZm9yIHRoaXMgbWFjaGluZSBmb3Igc29t
ZQo+IHRpbWUgKGlpcmMsIGZyb20gNS40LjEgYW5kIHVwKSBidXQgSSdtIGdldHRpbmcgZXJyb3Ig
bWVzc2FnZXMgaW4ga2VybmVsCj4gYWJvdXQgJ3BzcicgcmVsYXRlZCB0byBhbmFsb2dpeCBkcml2
ZXIsIHdoaWNoIEkgc2VlIHdpdGggYGRtZXNnYC4KPiAKPiBUaGlzIGJ1ZyBhcHBlYXJzIGluIGBk
bWVzZ2Agb3V0cHV0IGZldyB0aW1lcyBvbiBhIGRheXMgYnV0IHJhbmRvbWx5IGFuZAo+IEkgY2Fu
J3QgZmluZCBhbnkgY29ycmVsYXRpb24gb2YgdGhlIHdvcmsgd2l0aCBtYWNoaW5lIGFuZCBhcHBl
YXJhbmNlIG9mCj4gdGhpcyBidWcuCj4gCj4gSSBoYXZlIG5vIGV4cGVyaWVuY2Ugd2l0aCB3aXRo
IHZpZGVvIGRyaXZlcnMgc28gZG9uJ3Qga25vdyBob3cgdG8gZGVidWcKPiB0aGlzIHByb2JsZW0g
bW9yZSBkZWVwbHkuCj4gCj4gSSdtIGF0dGFjaGluZyBrZXJuZWwgLmNvbmZpZyAoZmlsZSBjb25m
aWctNS42LjAtcmMzLTEtZ3J1LmNvbmYpIHdoaWNoIEkKPiB1c2UgdG8gYnVpbGQga2VybmVsLCBv
dXRwdXQgb2YgdGhlIGBhd2sgLWYgc2NyaXB0cy92ZXJfbGludXhgIGFzIGZpbGUKPiB2ZXJfbGlu
dXgudHh0IGFuZCAgb3V0cHV0IG9mIGRtZXNnIGFzIGZpbGUgZG1lc2ctYnIzLnR4dCAoZnJvbSB3
aGljaCBJCj4gZGVsZXRlZCBvbmx5IHdpZmkgYXNzb2NpYXRpb24gbG9nKS4KPiAKPiBTb3JyeSBh
Z2FpbiBpZiBJIGRpZCBzb21ldGhpbmcgYmFkIG9yIHdyb25nIHdpdGggdGhpcyBidWcgcmVwb3J0
Lgo+IAo+IEknbSByZWFkeSB0byBzZW5kIHlvdSBtb3JlIGRhdGEsIGFuZCBpbnZlc3RpZ2F0ZSB0
aGlzIG1vcmUsIGFwcGx5Cj4gcGF0Y2hlcyBhbmQgcmVidWlsZCBrZXJuZWwgb3Igd2hhdGV2ZXIg
eW91IGFzayBtZSAob2YgY291cnNlIGlmIG15Cj4gdW5kZXJzdGFuZGluZyBhbmQga25vd2xlZGdl
IGlzIGVub3VnaCBmb3IgdGhpcyBqb2IpLgo+IAo+IFRoYW5rIGluIGFkdmFuY2UKPiAKWy4uLl0K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
