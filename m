Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0AED38A7D
	for <lists+linux-rockchip@lfdr.de>; Fri,  7 Jun 2019 14:40:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dSseWcki+TQNrxYABEmgzinq17r+xtvEFrRiVLyNXis=; b=X3HSxkV8sZamJ2
	IkXubzH8ulR2bCaRNjmKIkspho7JJR0jJtqSf1ApokekHeH1iTVAfqf/XvFOfSJSfMoq6paKR3oYB
	HSHVdzJ3dVEHUes+MkRiwNTwoXOX2FhxueCoGTboKSv1bm/pl7kd0fjX4nFZd6D1QadjUEb8Ilfdn
	TtrWkWR5OCE5LeinnZ367g4hK5KXu57HovDTuhTeMPAyu+PxHoM8jUHaln2mPijaCT+N34g1X2nfo
	+S4pN4UvT0oh/zG1++zDm7xkqibXsOs8cKEW92fGE5AU2tD/6HuNPewg6ul7aoQvbaF406M8S8O8G
	K9+DafBvG+URGDS0mkRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZEAF-00020K-88; Fri, 07 Jun 2019 12:40:11 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZEAB-0001RU-NG
 for linux-rockchip@lists.infradead.org; Fri, 07 Jun 2019 12:40:09 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jun 2019 05:40:03 -0700
X-ExtLoop1: 1
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.198])
 ([10.237.72.198])
 by orsmga007.jf.intel.com with ESMTP; 07 Jun 2019 05:39:55 -0700
Subject: Re: [PATCH v2 3/3] brcmfmac: sdio: Disable auto-tuning around
 commands expected to fail
To: Arend Van Spriel <arend.vanspriel@broadcom.com>,
 Doug Anderson <dianders@chromium.org>
References: <20190603183740.239031-1-dianders@chromium.org>
 <20190603183740.239031-4-dianders@chromium.org>
 <42fc30b1-adab-7fa8-104c-cbb7855f2032@intel.com>
 <CAD=FV=UPfCOr-syAbVZ-FjHQy7bgQf5BS5pdV-Bwd3hquRqEGg@mail.gmail.com>
 <16b305a7110.2764.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <ff0e7b7a-6a58-8bec-b182-944a8b64236d@intel.com>
Date: Fri, 7 Jun 2019 15:38:43 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <16b305a7110.2764.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_054007_836689_31A511BB 
X-CRM114-Status: GOOD (  18.68  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
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
Cc: Madhan Mohan R <madhanmohan.r@cypress.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, YueHaibing <yuehaibing@huawei.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 "David S. Miller" <davem@davemloft.net>, netdev <netdev@vger.kernel.org>,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>,
 Brian Norris <briannorris@chromium.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 brcm80211-dev-list.pdl@broadcom.com, Double Lo <double.lo@cypress.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Naveen Gupta <naveen.gupta@cypress.com>,
 Wright Feng <wright.feng@cypress.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 brcm80211-dev-list <brcm80211-dev-list@cypress.com>,
 Kalle Valo <kvalo@codeaurora.org>, Franky Lin <franky.lin@broadcom.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gNy8wNi8xOSA4OjEyIEFNLCBBcmVuZCBWYW4gU3ByaWVsIHdyb3RlOgo+IE9uIEp1bmUgNiwg
MjAxOSAxMTozNzoyMiBQTSBEb3VnIEFuZGVyc29uIDxkaWFuZGVyc0BjaHJvbWl1bS5vcmc+IHdy
b3RlOgo+Pgo+PiBJbiB0aGUgY2FzZSBvZiBkd19tbWMsIHdoaWNoIEknbSBtb3N0IGZhbWlsaWFy
IHdpdGgsIHdlIGRvbid0IGhhdmUgYW55Cj4+IHNvcnQgb2YgYXV0b21hdGVkIG9yIHRpbWVkLWJh
c2VkIHJldHVuaW5nLsKgIC4uLnNvIHdlJ2xsIG9ubHkgcmUtdHVuZQo+PiB3aGVuIHdlIHNlZSB0
aGUgQ1JDIGVycm9yLsKgIElmIEknbSB1bmRlcnN0YW5kaW5nIHRoaW5ncyBjb3JyZWN0bHkgdGhl
bgo+PiB0aGF0IGZvciBkd19tbWMgbXkgc29sdXRpb24gYW5kIHlvdXJzIGJlaGF2ZSB0aGUgc2Ft
ZS7CoCBUaGF0IG1lYW5zIHRoZQo+PiBkaWZmZXJlbmNlIGlzIGhvdyB3ZSBkZWFsIHdpdGggb3Ro
ZXIgcmV0dW5pbmcgcmVxdWVzdHMsIGVpdGhlciBvbmVzCj4+IHRoYXQgY29tZSBhYm91dCBiZWNh
dXNlIG9mIGFuIGludGVycnVwdCB0aGF0IHRoZSBob3N0IGNvbnRyb2xsZXIKPj4gcHJvdmlkZWQg
b3IgYmVjYXVzZSBvZiBhIHRpbWVyLsKgIERpZCBJIGdldCB0aGF0IHJpZ2h0Pwo+IAo+IFJpZ2h0
Lgo+IAo+PiAuLi5hbmQgSSBndWVzcyB0aGUgcmVhc29uIHdlIGhhdmUgdG8gZGVhbCBzcGVjaWFs
bHkgd2l0aCB0aGVzZSBjYXNlcwo+PiBpcyBiZWNhdXNlIGFueSB0aW1lIHRoYXQgU0RJTyBjYXJk
IGlzICJzbGVlcGluZyIgd2UgZG9uJ3Qgd2FudCB0bwo+PiByZXR1bmUgYmVjYXVzZSBpdCB3b24n
dCB3b3JrLsKgIFJpZ2h0P8KgIE5PVEU6IHRoZSBzb2x1dGlvbiB0aGF0IHdvdWxkCj4+IGNvbWUg
dG8gbXkgbWluZCBmaXJzdCB0byBzb2x2ZSB0aGlzIHdvdWxkIGJlIHRvIGhvbGQgdGhlIHJldHVu
aW5nIGZvcgo+PiB0aGUgd2hvbGUgdGltZSB0aGF0IHRoZSBjYXJkIHdhcyBzbGVlcGluZyBhbmQg
dGhlbiByZWxlYXNlIGl0IG9uY2UgdGhlCj4+IGNhcmQgd2FzIGF3YWtlIGFnYWluLsKgIC4uLmJ1
dCBJIGd1ZXNzIHdlIGRvbid0IHRydWx5IG5lZWQgdG8gZG8gdGhhdAo+PiBiZWNhdXNlIHR1bmlu
ZyBvbmx5IGhhcHBlbnMgYXMgYSBzaWRlIGVmZmVjdCBvZiBzZW5kaW5nIGEgY29tbWFuZCB0bwo+
PiB0aGUgY2FyZCBhbmQgdGhlIG9ubHkgY29tbWFuZCB3ZSBzZW5kIHRvIHRoZSBjYXJkIGlzIHRo
ZSAid2FrZSB1cCIKPj4gY29tbWFuZC7CoCBUaGF0J3Mgd2h5IHlvdXIgc29sdXRpb24gdG8gaG9s
ZCB0dW5pbmcgd2hpbGUgc2VuZGluZyB0aGUKPj4gIndha2UgdXAiIGNvbW1hbmQgd29ya3MsIHJp
Z2h0Pwo+IAo+IFl1cC4KPiAKPj4gLS0tCj4+Cj4+IE9LLCBzbyBhc3N1bWluZyBhbGwgdGhlIGFi
b3ZlIGlzIGNvcnJlY3QsIEkgZmVlbCBsaWtlIHdlJ3JlIGFjdHVhbGx5Cj4+IHNvbHZpbmcgdHdv
IHByb2JsZW1zIGFuZCBpbiBmYWN0IEkgYmVsaWV2ZSB3ZSBhY3R1YWxseSBuZWVkIGJvdGggb3Vy
Cj4+IGFwcHJvYWNoZXMgdG8gc29sdmUgZXZlcnl0aGluZyBjb3JyZWN0bHkuwqAgV2l0aCBqdXN0
IHlvdXIgcGF0Y2ggaW4KPj4gcGxhY2UgdGhlcmUncyBhIHByb2JsZW0gYmVjYXVzZSB3ZSB3aWxs
IGNsb2JiZXIgYW55IGV4dGVybmFsIHJldHVuaW5nCj4+IHJlcXVlc3RzIHRoYXQgaGFwcGVuZWQg
d2hpbGUgd2Ugd2VyZSB3YWtpbmcgdXAgdGhlIGNhcmQuwqAgQUtBLCBpbWFnaW5lCj4+IHRoaXM6
Cj4+Cj4+IEEpIGJyY21mX3NkaW9fa3NvX2NvbnRyb2wob249VHJ1ZSkgZ2V0cyBjYWxsZWQ7IG5l
ZWRfcmV0dW5lIHN0YXJ0cyBhcyAwCj4+Cj4+IEIpIFdlIGNhbGwgc2Rpb19yZXR1bmVfaG9sZF9u
b3coKQo+Pgo+PiBDKSBBIHJldHVuaW5nIHRpbWVyIGdvZXMgb2ZmIG9yIHRoZSBTRCBIb3N0IGNv
bnRyb2xsZXIgdGVsbHMgdXMgdG8gcmV0dW5lCj4+Cj4+IEQpIFdlIGdldCB0byB0aGUgZW5kIG9m
IGJyY21mX3NkaW9fa3NvX2NvbnRyb2woKSBhbmQgY2xlYXIgdGhlICJyZXR1bmUKPj4gbmVlZGVk
IiBzaW5jZSBuZWVkX3JldHVuZSB3YXMgMCBhdCB0aGUgc3RhcnQuCj4+Cj4+IC4uLnNvIHdlIGRy
b3BwZWQgdGhlIHJldHVuaW5nIHJlcXVlc3QgZnJvbSBDKSwgcmlnaHQ/Cj4+Cj4+Cj4+IFdoYXQg
d2UgdHJ1bHkgbmVlZCBpczoKPj4KPj4gMS4gQ1JDIGVycm9ycyBzaG91bGRuJ3QgdHJpZ2dlciBh
IHJldHVuaW5nIHJlcXVlc3Qgd2hlbiB3ZSdyZSBpbgo+PiBicmNtZl9zZGlvX2tzb19jb250cm9s
KCkKPj4KPj4gMi4gQSBzZXBhcmF0ZSBwYXRjaCB0aGF0IGhvbGRzIGFueSByZXR1bmluZyByZXF1
ZXN0cyB3aGlsZSB0aGUgU0RJTwo+PiBjYXJkIGlzIG9mZi7CoCBUaGlzIHBhdGNoIF9zaG91bGRu
J3RfIGRvIGFueSBjbGVhcmluZyBvZiByZXR1bmluZwo+PiByZXF1ZXN0cywganVzdCBkZWZlciB0
aGVtLgo+Pgo+Pgo+PiBEb2VzIHRoYXQgbWFrZSBzZW5zZSB0byB5b3U/wqAgSWYgc28sIEkgY2Fu
IHRyeSB0byBjb2RlIGl0IHVwLi4uCj4gCj4gRldJVyBpdCBkb2VzIG1ha2Ugc2Vuc2UgdG8gbWUu
IEhvd2V2ZXIsIEkgYW0gc3RpbGwgbm90IHN1cmUgaWYgb3VyIHNkaW8KPiBoYXJkd2FyZSBzdXBw
b3J0cyByZXR1bmluZy4gSGF2ZSB0byB0cmFjayBkb3duIGFuIGFzaWMgZGVzaWduZXIgd2hvIGNh
biB0ZWxsCj4gb3IgZGl2ZSBpbnRvIHZoZGwgbXlzZWxmLgoKVGhlIGNhcmQgc3VwcG9ydHMgcmUt
dHVuaW5nIGlmIGlzIGhhbmRsZXMgQ01EMTksIHdoaWNoIGl0IGRvZXMuICBJdCBpcyBub3QKdGhl
IGNhcmQgdGhhdCBkb2VzIGFueSB0dW5pbmcsIG9ubHkgdGhlIGhvc3QuICBUaGUgY2FyZCBqdXN0
IGhlbHBzIGJ5CnByb3ZpZGluZyBhIGtub3duIGRhdGEgcGF0dGVybiBpbiByZXNwb25zZSB0byBD
TUQxOS4gIEl0IGNhbiBiZSB0aGF0IGEgY2FyZApwcm92aWRlcyBnb29kIGVub3VnaCBzaWduYWxz
IHRoYXQgdGhlIGhvc3Qgc2hvdWxkIG5vdCBuZWVkIHRvIHJlLXR1bmUuICBJCmRvbid0IGtub3cg
aWYgdGhhdCBjYW4gYmUgYWZmZWN0ZWQgYnkgdGhlIGJvYXJkIGRlc2lnbiB0aG91Z2guCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
