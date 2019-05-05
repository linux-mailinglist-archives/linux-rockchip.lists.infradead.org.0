Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9FBD13CA8
	for <lists+linux-rockchip@lfdr.de>; Sun,  5 May 2019 03:29:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=K/FgJJORgl8vK5itkge2MNUDqRWyzEiif5M3HtFvOno=; b=Pkrb76XA9PwuPYj/pgTU04DBs
	tXH2SkkbAP9iiimcKQr02ZBGH3B8k+QmogxRNro+RRMM8MTZZ4Wpf8QsMzAK7a5gBJ082i4YlxsQF
	XMwQY3EXm451RCjp4RI7H5pcbmLrYMn+7/pco6JVt17DvY9VycxuvtX8bsR5gqxKRwAjhdhNdEZ5u
	0vQoZhl2D+caN1eZFW2ljQ/hE0Z7dBTBto60BB2yF5UH+yH1z3rYnoEjRKAPGmfz4vtrmLFym/sbZ
	yRMdiFI2UCZLRT47GQy5itTkeOahwKXsH9ppgZ6ZCNUrCgHX6ntdUpLmwYGqhKmUlYc4Wz2SGfiYS
	4eiCnhanw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hN5yD-0002jg-S4; Sun, 05 May 2019 01:29:37 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hN5xr-0002Qz-Rh; Sun, 05 May 2019 01:29:17 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 May 2019 18:29:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,431,1549958400"; d="scan'208";a="146324031"
Received: from allen-box.sh.intel.com (HELO [10.239.159.136])
 ([10.239.159.136])
 by fmsmga008.fm.intel.com with ESMTP; 04 May 2019 18:29:11 -0700
Subject: Re: [RFC 2/7] iommu/vt-d: Remove iova handling code from non-dma ops
 path
To: Tom Murphy <tmurphy@arista.com>, iommu@lists.linux-foundation.org
References: <20190504132327.27041-1-tmurphy@arista.com>
 <20190504132327.27041-3-tmurphy@arista.com>
 <bf35694d-3ff4-0df7-0802-b0e87a9a0d47@linux.intel.com>
From: Lu Baolu <baolu.lu@linux.intel.com>
Message-ID: <9405cd93-fc16-822e-0b34-4ba2229f176d@linux.intel.com>
Date: Sun, 5 May 2019 09:22:47 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <bf35694d-3ff4-0df7-0802-b0e87a9a0d47@linux.intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_182915_966278_E46B326F 
X-CRM114-Status: GOOD (  14.76  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Heiko Stuebner <heiko@sntech.de>, kvm@vger.kernel.org,
 Will Deacon <will.deacon@arm.com>, linux-tegra@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, linux-s390@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-rockchip@lists.infradead.org,
 Kukjin Kim <kgene@kernel.org>, Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Andy Gross <andy.gross@linaro.org>, Marc Zyngier <marc.zyngier@arm.com>,
 linux-arm-msm@vger.kernel.org, Alex Williamson <alex.williamson@redhat.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 David Brown <david.brown@linaro.org>, David Woodhouse <dwmw2@infradead.org>,
 linux-kernel@vger.kernel.org, murphyt7@tcd.ie,
 Robin Murphy <robin.murphy@arm.com>, baolu.lu@linux.intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGksCgpPbiA1LzUvMTkgOToxOSBBTSwgTHUgQmFvbHUgd3JvdGU6Cj4gSGksCj4gCj4gT24gNS80
LzE5IDk6MjMgUE0sIFRvbSBNdXJwaHkgdmlhIGlvbW11IHdyb3RlOgo+PiBAQCAtNDE4MSw1OCAr
NDE2OCwzNyBAQCBzdGF0aWMgaW50IGludGVsX2lvbW11X21lbW9yeV9ub3RpZmllcihzdHJ1Y3Qg
Cj4+IG5vdGlmaWVyX2Jsb2NrICpuYiwKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHVuc2lnbmVkIGxvbmcgdmFsLCB2b2lkICp2KQo+PiDCoCB7Cj4+
IMKgwqDCoMKgwqAgc3RydWN0IG1lbW9yeV9ub3RpZnkgKm1ocCA9IHY7Cj4+IC3CoMKgwqAgdW5z
aWduZWQgbG9uZyBsb25nIHN0YXJ0LCBlbmQ7Cj4+IC3CoMKgwqAgdW5zaWduZWQgbG9uZyBzdGFy
dF92cGZuLCBsYXN0X3ZwZm47Cj4+ICvCoMKgwqAgdW5zaWduZWQgbG9uZyBzdGFydF92cGZuID0g
bW1fdG9fZG1hX3BmbihtaHAtPnN0YXJ0X3Bmbik7Cj4+ICvCoMKgwqAgdW5zaWduZWQgbG9uZyBs
YXN0X3ZwZm4gPSBtbV90b19kbWFfcGZuKG1ocC0+c3RhcnRfcGZuICsKPj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgbWhwLT5ucl9wYWdlcyAtIDEpOwo+PiDCoMKgwqDCoMKgIHN3aXRjaCAodmFs
KSB7Cj4+IMKgwqDCoMKgwqAgY2FzZSBNRU1fR09JTkdfT05MSU5FOgo+PiAtwqDCoMKgwqDCoMKg
wqAgc3RhcnQgPSBtaHAtPnN0YXJ0X3BmbiA8PCBQQUdFX1NISUZUOwo+PiAtwqDCoMKgwqDCoMKg
wqAgZW5kID0gKChtaHAtPnN0YXJ0X3BmbiArIG1ocC0+bnJfcGFnZXMpIDw8IFBBR0VfU0hJRlQp
IC0gMTsKPj4gLcKgwqDCoMKgwqDCoMKgIGlmIChpb21tdV9kb21haW5faWRlbnRpdHlfbWFwKHNp
X2RvbWFpbiwgc3RhcnQsIGVuZCkpIHsKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcHJfd2Fy
bigiRmFpbGVkIHRvIGJ1aWxkIGlkZW50aXR5IG1hcCBmb3IgWyVsbHgtJWxseF1cbiIsCj4+IC3C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RhcnQsIGVuZCk7Cj4+ICvCoMKgwqDCoMKg
wqDCoCBpZiAoaW9tbXVfZG9tYWluX2lkZW50aXR5X21hcChzaV9kb21haW4sIHN0YXJ0X3ZwZm4s
Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBsYXN0X3ZwZm4pKSB7
Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHByX3dhcm4oIkZhaWxlZCB0byBidWlsZCBpZGVu
dGl0eSBtYXAgZm9yIFslbHgtJWx4XVxuIiwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBzdGFydF92cGZuLCBsYXN0X3ZwZm4pOwo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCByZXR1cm4gTk9USUZZX0JBRDsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIH0KPj4gwqDCoMKgwqDC
oMKgwqDCoMKgIGJyZWFrOwo+IAo+IEFjdHVhbGx5IHdlIGRvbid0IG5lZWQgdG8gdXBkYXRlIHRo
ZSBzaV9kb21haW4gaWYgaW9tbXUgaGFyZHdhcmUKPiBzdXBwb3J0cyBwYXNzLXRocm91Z2ggbW9k
ZS4gVGhpcyBzaG91bGQgYmUgbWFkZSBpbiBhIHNlcGFyYXRlZCBwYXRjaAo+IGFueXdheS4KCk9o
ISBwbGVhc2UgaWdub3JlIGl0LgoKVGhpcyBjYWxsYmFjayBpcyBvbmx5IHJlZ2lzdGVyZWQgd2hl
biBoYXJkd2FyZSBkb2Vzbid0IHN1cHBvcnQgcGFzcwp0aHJvdWdoIG1vZGUuCgogICAgICAgICBp
ZiAoc2lfZG9tYWluICYmICFod19wYXNzX3Rocm91Z2gpCiAgICAgICAgICAgICAgICAgcmVnaXN0
ZXJfbWVtb3J5X25vdGlmaWVyKCZpbnRlbF9pb21tdV9tZW1vcnlfbmIpOwoKQmVzdCByZWdhcmRz
LApMdSBCYW9sdQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
