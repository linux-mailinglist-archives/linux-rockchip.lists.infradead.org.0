Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 651392C5A6
	for <lists+linux-rockchip@lfdr.de>; Tue, 28 May 2019 13:45:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C4wfmcfP9NWO66X4aeJNgeb1A7GInXKrcNkCGz/CmpE=; b=mJyZxSfBtLlMml
	HQZgczSEEM8Rxry4Z6QZSM8acfb6DUI6t2lKYSN/TSHYhOswFZe9iMglqwMIjverTJOsbZd274pyO
	fVTV0m8jlKaFwd8kU9amq3/151CZfJ5ccAecKO9Qc2l58HhwKdjLH/Tr5TZ52wFUgv1z5ZoqIW4hG
	LANJqpLKxtH+7149I+vzXcu/EfSMVcqeZPQ3XVwE1WjtUGNY/644yRd2EBb//yFxy+SnNuJsznHwo
	jIGGuireXb4AAUa5+I/pIWEzyGHAniRr7coJl/O9buuMQTL+cWQkVUXm1gEjAt6DGWGLHfw/V8Y4h
	lklGB+L2kb2cfydRFO/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVaXz-0002Qf-Eu; Tue, 28 May 2019 11:45:39 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVaXw-0002Nx-Vh
 for linux-rockchip@lists.infradead.org; Tue, 28 May 2019 11:45:38 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 May 2019 04:45:36 -0700
X-ExtLoop1: 1
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.198])
 ([10.237.72.198])
 by fmsmga006.fm.intel.com with ESMTP; 28 May 2019 04:45:31 -0700
Subject: Re: [PATCH 2/3] mmc: core: API for temporarily disabling
 auto-retuning due to errors
To: Arend Van Spriel <arend.vanspriel@broadcom.com>,
 Douglas Anderson <dianders@chromium.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>
References: <20190517225420.176893-1-dianders@chromium.org>
 <20190517225420.176893-3-dianders@chromium.org>
 <05af228c-139b-2b7f-f626-36fb34634be5@broadcom.com>
 <4f39e152-04ba-a64e-985a-df93e6d15ff8@intel.com>
 <aa8e526f-b382-f3b7-74a5-e0fee09ae096@broadcom.com>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <2d6fa51d-27af-4f90-2bd6-144112ce75ad@intel.com>
Date: Tue, 28 May 2019 14:45:16 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <aa8e526f-b382-f3b7-74a5-e0fee09ae096@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_044537_034142_55BD3D81 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Madhan Mohan R <madhanmohan.r@cypress.com>,
 Ritesh Harjani <riteshh@codeaurora.org>, Martin Hicks <mort@bork.org>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, briannorris@chromium.org,
 linux-mmc@vger.kernel.org, Double Lo <double.lo@cypress.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Avri Altman <avri.altman@wdc.com>, mka@chromium.org,
 Wright Feng <wright.feng@cypress.com>, Jiong Wu <lohengrin1024@gmail.com>,
 Shawn Lin <shawn.lin@rock-chips.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gMjgvMDUvMTkgMjoyMSBQTSwgQXJlbmQgVmFuIFNwcmllbCB3cm90ZToKPiAKPiAKPiBPbiA1
LzI4LzIwMTkgMTI6MDQgUE0sIEFkcmlhbiBIdW50ZXIgd3JvdGU6Cj4+IE9uIDI2LzA1LzE5IDk6
NDIgUE0sIEFyZW5kIFZhbiBTcHJpZWwgd3JvdGU6Cj4+PiBPbiA1LzE4LzIwMTkgMTI6NTQgQU0s
IERvdWdsYXMgQW5kZXJzb24gd3JvdGU6Cj4+Pj4gTm9ybWFsbHkgd2hlbiB0aGUgTU1DIGNvcmUg
c2VlcyBhbiAiLUVJTFNFUSIgZXJyb3IgcmV0dXJuZWQgYnkgYSBob3N0Cj4+Pj4gY29udHJvbGxl
ciB0aGVuIGl0IHdpbGwgdHJpZ2dlciBhIHJldHVuaW5nIG9mIHRoZSBjYXJkLsKgIFRoaXMgaXMK
Pj4+PiBnZW5lcmFsbHkgYSBnb29kIGlkZWEuCj4+Pgo+Pj4gUHJvYmFibHkgYSBxdWVzdGlvbiBm
b3IgQWRyaWFuLCBidXQgaG93IGlzIHRoaXMgcmV0dW5pbmcgc2NoZWR1bGVkLiBJIHJlY2FsbAo+
Pj4gc2VlaW5nIHNvbWV0aGluZyBpbiBtbWNfcmVxdWVzdF9kb25lLiBIb3cgYWJvdXQgZGVmZXJy
aW5nIHRoZSByZXR1bmluZyB1cG9uCj4+PiBhIHJlbGVhc2UgaG9zdCBvciBpcyB0aGF0IHRvbyBz
ZGlvIHNwZWNpZmljLgo+Pgo+PiBCZWxvdyBpcyB3aGF0IEkgaGF2ZSBiZWVuIGNhcnJ5aW5nIHRo
ZSBsYXN0IDQgeWVhcnMuwqAgQnV0IGFjY29yZGluZyB0bwo+PiBEb3VnbGFzJwo+PiBwYXRjaCwg
dGhlIHJlbGVhc2Ugd291bGQgbmVlZCB0byBiZSBmdXJ0aGVyIGRvd24uwqAgU2VlIDJuZCBkaWZm
IGJlbG93Lgo+PiBXb3VsZCB0aGF0IHdvcms/Cj4gCj4gVGhhdCBtYWtlcyBzZW5zZS4gVGhlIGxv
b3AgaXMgbmVlZGVkIGJlY2F1c2UgdGhlIGRldmljZSBjYW4gYmUgYSBiaXQgYm9uZQo+IGhlYWRl
ZC4gU28gaW5kZWVkIGFmdGVyIHRoZSBsb29wIHRoZSBkZXZpY2Ugc2hvdWxkIGJlIGF3YWtlIGFu
ZCBhYmxlIHRvCj4gaGFuZGxlIENNRDE5LgoKV2hhdCBpZiB0dW5pbmcgaXMgbmVlZGVkIHRvIHJl
YWQgU0JTRElPX0ZVTkMxX1NMRUVQQ1NSIHN1Y2Nlc3NmdWxseT8KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
