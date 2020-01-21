Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 469FB143EBE
	for <lists+linux-rockchip@lfdr.de>; Tue, 21 Jan 2020 14:59:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0GMSqitXDN9OPCB3CuYF+d7atcM/DCfuoglmsw5WQVM=; b=GZv9hpqmjKGziL
	Hqm4OeG551kHP6E75i4T0AY25oA6YLahTHU+pfpASXtbwUZIm19vyuYawsnocGXA5PE+Ok9tQVUVP
	joT66hROjq8QENUaVBbiSUI54vbnZx/M4kllPNpTtLRX0QXiVqalFXpzjdADZOIH2ZFATfKWFPQoM
	toGmcyNu8rEAiaihJsV0Sy66qFwnC3OjSDZkZww7m5j1UIchS1f9henZQePwvXS2hGtGKU1HK4Bi7
	XKYPne90UD4nTBzHBalGboyTEwgqihTeRj/cnO0LqehDm1r/Ilxel7jUp8fzWPtBLroeJI6Wyzcfl
	Et3fpiV1uLD06H/zWG4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itu46-0007At-VR; Tue, 21 Jan 2020 13:59:35 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itu3t-000723-EG; Tue, 21 Jan 2020 13:59:23 +0000
X-Originating-IP: 90.76.211.102
Received: from xps13 (lfbn-tou-1-1151-102.w90-76.abo.wanadoo.fr
 [90.76.211.102]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id B446B60016;
 Tue, 21 Jan 2020 13:59:08 +0000 (UTC)
Date: Tue, 21 Jan 2020 14:59:07 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: fix px30 lvds ports
Message-ID: <20200121145907.7fef0316@xps13>
In-Reply-To: <20200121134510.3893487-1-heiko@sntech.de>
References: <20200121134510.3893487-1-heiko@sntech.de>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_055921_616701_4B6F341B 
X-CRM114-Status: GOOD (  14.81  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgSGVpa28sCgpIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPiB3cm90ZSBvbiBUdWUs
IDIxIEphbiAyMDIwIDE0OjQ1OjEwCiswMTAwOgoKPiBGcm9tOiBIZWlrbyBTdHVlYm5lciA8aGVp
a28uc3R1ZWJuZXJAdGhlb2Jyb21hLXN5c3RlbXMuY29tPgo+IAo+IFRoZSBsdmRzIGNvbnRyb2xs
ZXIgaGFzIHR3byBwb3J0cy4gcG9ydEAwIGZvciB0aGUgY29ubmVjdGlvbgo+IHRvIHRoZSBkaXNw
bGF5IGNvbnRyb2xsZXIocykgYW5kIHBvcnRAMSBmb3IgdGhlIGNvbm5lY3Rpb24gdG8KPiB0aGUg
cGFuZWwsIHNvIHNob3VsZCBoYXZlIGEgcG9ydHMgbm9kZSBjb3ZlcmluZyB0aGUgcG9ydEB4IG5v
ZGVzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrby5zdHVlYm5lckB0
aGVvYnJvbWEtc3lzdGVtcy5jb20+Cj4gLS0tCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcHgzMC5kdHNpIHwgMjMgKysrKysrKysrKysrKystLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDE0IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcHgzMC5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9weDMwLmR0c2kKPiBpbmRleCA5YjFjOTIxMzIwMDcuLjM3ZTAxNDQ0NDIxNCAx
MDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3B4MzAuZHRzaQo+ICsr
KyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcHgzMC5kdHNpCj4gQEAgLTQyMSwxOSAr
NDIxLDI0IEBAIGx2ZHM6IGx2ZHMgewo+ICAJCQlyb2NrY2hpcCxvdXRwdXQgPSAibHZkcyI7Cj4g
IAkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gIAo+IC0JCQlwb3J0QDAgewo+IC0JCQkJcmVnID0g
PDA+Owo+ICsJCQlwb3J0cyB7Cj4gIAkJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKPiAgCQkJCSNz
aXplLWNlbGxzID0gPDA+Owo+ICAKPiAtCQkJCWx2ZHNfdm9wYl9pbjogZW5kcG9pbnRAMCB7Cj4g
KwkJCQlwb3J0QDAgewo+ICAJCQkJCXJlZyA9IDwwPjsKPiAtCQkJCQlyZW1vdGUtZW5kcG9pbnQg
PSA8JnZvcGJfb3V0X2x2ZHM+Owo+IC0JCQkJfTsKPiAtCj4gLQkJCQlsdmRzX3ZvcGxfaW46IGVu
ZHBvaW50QDEgewo+IC0JCQkJCXJlZyA9IDwxPjsKPiAtCQkJCQlyZW1vdGUtZW5kcG9pbnQgPSA8
JnZvcGxfb3V0X2x2ZHM+Owo+ICsJCQkJCSNhZGRyZXNzLWNlbGxzID0gPDE+Owo+ICsJCQkJCSNz
aXplLWNlbGxzID0gPDA+Owo+ICsKPiArCQkJCQlsdmRzX3ZvcGJfaW46IGVuZHBvaW50QDAgewo+
ICsJCQkJCQlyZWcgPSA8MD47Cj4gKwkJCQkJCXJlbW90ZS1lbmRwb2ludCA9IDwmdm9wYl9vdXRf
bHZkcz47Cj4gKwkJCQkJfTsKPiArCj4gKwkJCQkJbHZkc192b3BsX2luOiBlbmRwb2ludEAxIHsK
PiArCQkJCQkJcmVnID0gPDE+Owo+ICsJCQkJCQlyZW1vdGUtZW5kcG9pbnQgPSA8JnZvcGxfb3V0
X2x2ZHM+Owo+ICsJCQkJCX07Cj4gIAkJCQl9Owo+ICAJCQl9Owo+ICAJCX07CgpJIGRvbid0IGtu
b3cgdGhlIGV4YWN0IHJ1bGUgYnV0IHRoaXMgc2VlbXMgY2xlYW5lciBpbmRlZWQuCgpSZXZpZXdl
ZC1ieTogTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBib290bGluLmNvbT4KCgpUaGFua3Ms
Ck1pcXXDqGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
