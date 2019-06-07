Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BD5F38BAF
	for <lists+linux-rockchip@lfdr.de>; Fri,  7 Jun 2019 15:32:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Subject:References:In-Reply-To:
	Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hMNDSFKYWRrulC2cHf3BA9EBeLnEoA9cRNgGo49WOPc=; b=QxmxVSuGk5Z2qDVpdI34Rkn7E
	wW1HxeDSo0GbsDLnMpzIbHgvi5Kuplmcx9kGnWkCR8q9yB5rhyRSOtwbx6uPYdyiDp9mwaeK6IBYx
	Xrp4BhFTyuJbXrCfFTyGjzpRFR8O9Qd8xA7DBzbB117ECtkSf4A3KtWCRXS5YPzBPI4iVVeKBDyR7
	Pd2D4v8mgLLHO9VXDNKOj0/SrxQvWCVK98VGJR672+MrL6NnPqoQay3cl3dncP8dPGA3OfPp8/vp8
	P+kj3ZGEzx2CV022r9veRjx6fD1yFS7DG0xUzT0oBefMLk4ivZ4sIQ1BVPABFG0m4cGtY3Rym/mVB
	u+UyJXrBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZEyt-0003Cv-5P; Fri, 07 Jun 2019 13:32:31 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZEyq-0003CZ-5l
 for linux-rockchip@lists.infradead.org; Fri, 07 Jun 2019 13:32:29 +0000
Received: by mail-ed1-x541.google.com with SMTP id g13so3069015edu.5
 for <linux-rockchip@lists.infradead.org>; Fri, 07 Jun 2019 06:32:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:date:message-id:in-reply-to:references:user-agent
 :subject:mime-version:content-transfer-encoding;
 bh=JFFl0hGcf6iXTgGWhmFXyXBsFiYNsrS1BSNNsA7L3uk=;
 b=J8BWELCflWlt9mhbRHhPeEUuozGyv2cRoexw/Djro8OZPtu/YgdzZaM7bjR9wlVEtQ
 EF9RPfC+QQFEqGrzKbEw2AWVO2K76+ctKE9dd8oPwClR6/PSrywuUPUSEQ+S1NKSPJS0
 0Q18WLRMHQRoigeE4Deob/gwfSx6wi3dBGts4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:subject:mime-version
 :content-transfer-encoding;
 bh=JFFl0hGcf6iXTgGWhmFXyXBsFiYNsrS1BSNNsA7L3uk=;
 b=Zh9BxPxpH021h02zf6uxC8vWa+hJmyNtFGwa1AecXrrpRt/5eqNW9Q1aolpx0P6LCJ
 c2x2VsMKGMZP9Qvi8dJ1axUn/h/No99gvcludBZTaAjtP7qGHDBFsUOeL3sqfeBrdmGR
 tsxFnWwAbQ9COCnGlRBlM893Zq5MbkWlQ+YkZ1SgTXVYCSBkdx/Amy0BaORm6fgMgQDO
 UI3X84aAUUcgMDX2oOE7ioyL9DxnCHbct25TwyLRAUB9A0HVgoNsazQ80BECGi57TnIJ
 sNrETcGFKYv+RUP9Dl8d1/aYTWvBk7D0awK9wn+XHWmDJ3boZ/mabM+m9Qwbka9k8L+7
 Y6ag==
X-Gm-Message-State: APjAAAVTjCt0gB++53pHFNTe3t4/3vLXa8XRorcmUBtjpcJvAFog7lrk
 UXSzWmyZm+JVa6STgruzOWJyjQ==
X-Google-Smtp-Source: APXvYqzb/6yVC5RrnRvUzD09ZH/2vf9pPWOsfx1+agyAhSxgyz9uMxv9L0pZhmieVY2c6iivXH+tbQ==
X-Received: by 2002:a50:cdd0:: with SMTP id h16mr56291052edj.249.1559914346683; 
 Fri, 07 Jun 2019 06:32:26 -0700 (PDT)
Received: from [192.168.178.17] (f140230.upc-f.chello.nl. [80.56.140.230])
 by smtp.gmail.com with ESMTPSA id y2sm554410edc.26.2019.06.07.06.32.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 07 Jun 2019 06:32:25 -0700 (PDT)
From: Arend Van Spriel <arend.vanspriel@broadcom.com>
To: Adrian Hunter <adrian.hunter@intel.com>,
 Doug Anderson <dianders@chromium.org>
Date: Fri, 07 Jun 2019 15:32:20 +0200
Message-ID: <16b3223dea0.2764.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
In-Reply-To: <ff0e7b7a-6a58-8bec-b182-944a8b64236d@intel.com>
References: <20190603183740.239031-1-dianders@chromium.org>
 <20190603183740.239031-4-dianders@chromium.org>
 <42fc30b1-adab-7fa8-104c-cbb7855f2032@intel.com>
 <CAD=FV=UPfCOr-syAbVZ-FjHQy7bgQf5BS5pdV-Bwd3hquRqEGg@mail.gmail.com>
 <16b305a7110.2764.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
 <ff0e7b7a-6a58-8bec-b182-944a8b64236d@intel.com>
User-Agent: AquaMail/1.20.0-1451 (build: 102000001)
Subject: Re: [PATCH v2 3/3] brcmfmac: sdio: Disable auto-tuning around
 commands expected to fail
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_063228_219926_1E1C12DD 
X-CRM114-Status: GOOD (  15.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gSnVuZSA3LCAyMDE5IDI6NDA6MDQgUE0gQWRyaWFuIEh1bnRlciA8YWRyaWFuLmh1bnRlckBp
bnRlbC5jb20+IHdyb3RlOgoKPiBPbiA3LzA2LzE5IDg6MTIgQU0sIEFyZW5kIFZhbiBTcHJpZWwg
d3JvdGU6Cj4+IE9uIEp1bmUgNiwgMjAxOSAxMTozNzoyMiBQTSBEb3VnIEFuZGVyc29uIDxkaWFu
ZGVyc0BjaHJvbWl1bS5vcmc+IHdyb3RlOgo+Pj4KPj4+IEluIHRoZSBjYXNlIG9mIGR3X21tYywg
d2hpY2ggSSdtIG1vc3QgZmFtaWxpYXIgd2l0aCwgd2UgZG9uJ3QgaGF2ZSBhbnkKPj4+IHNvcnQg
b2YgYXV0b21hdGVkIG9yIHRpbWVkLWJhc2VkIHJldHVuaW5nLsKgIC4uLnNvIHdlJ2xsIG9ubHkg
cmUtdHVuZQo+Pj4gd2hlbiB3ZSBzZWUgdGhlIENSQyBlcnJvci7CoCBJZiBJJ20gdW5kZXJzdGFu
ZGluZyB0aGluZ3MgY29ycmVjdGx5IHRoZW4KPj4+IHRoYXQgZm9yIGR3X21tYyBteSBzb2x1dGlv
biBhbmQgeW91cnMgYmVoYXZlIHRoZSBzYW1lLsKgIFRoYXQgbWVhbnMgdGhlCj4+PiBkaWZmZXJl
bmNlIGlzIGhvdyB3ZSBkZWFsIHdpdGggb3RoZXIgcmV0dW5pbmcgcmVxdWVzdHMsIGVpdGhlciBv
bmVzCj4+PiB0aGF0IGNvbWUgYWJvdXQgYmVjYXVzZSBvZiBhbiBpbnRlcnJ1cHQgdGhhdCB0aGUg
aG9zdCBjb250cm9sbGVyCj4+PiBwcm92aWRlZCBvciBiZWNhdXNlIG9mIGEgdGltZXIuwqAgRGlk
IEkgZ2V0IHRoYXQgcmlnaHQ/Cj4+IAo+PiBSaWdodC4KPj4gCj4+PiAuLi5hbmQgSSBndWVzcyB0
aGUgcmVhc29uIHdlIGhhdmUgdG8gZGVhbCBzcGVjaWFsbHkgd2l0aCB0aGVzZSBjYXNlcwo+Pj4g
aXMgYmVjYXVzZSBhbnkgdGltZSB0aGF0IFNESU8gY2FyZCBpcyAic2xlZXBpbmciIHdlIGRvbid0
IHdhbnQgdG8KPj4+IHJldHVuZSBiZWNhdXNlIGl0IHdvbid0IHdvcmsuwqAgUmlnaHQ/wqAgTk9U
RTogdGhlIHNvbHV0aW9uIHRoYXQgd291bGQKPj4+IGNvbWUgdG8gbXkgbWluZCBmaXJzdCB0byBz
b2x2ZSB0aGlzIHdvdWxkIGJlIHRvIGhvbGQgdGhlIHJldHVuaW5nIGZvcgo+Pj4gdGhlIHdob2xl
IHRpbWUgdGhhdCB0aGUgY2FyZCB3YXMgc2xlZXBpbmcgYW5kIHRoZW4gcmVsZWFzZSBpdCBvbmNl
IHRoZQo+Pj4gY2FyZCB3YXMgYXdha2UgYWdhaW4uwqAgLi4uYnV0IEkgZ3Vlc3Mgd2UgZG9uJ3Qg
dHJ1bHkgbmVlZCB0byBkbyB0aGF0Cj4+PiBiZWNhdXNlIHR1bmluZyBvbmx5IGhhcHBlbnMgYXMg
YSBzaWRlIGVmZmVjdCBvZiBzZW5kaW5nIGEgY29tbWFuZCB0bwo+Pj4gdGhlIGNhcmQgYW5kIHRo
ZSBvbmx5IGNvbW1hbmQgd2Ugc2VuZCB0byB0aGUgY2FyZCBpcyB0aGUgIndha2UgdXAiCj4+PiBj
b21tYW5kLsKgIFRoYXQncyB3aHkgeW91ciBzb2x1dGlvbiB0byBob2xkIHR1bmluZyB3aGlsZSBz
ZW5kaW5nIHRoZQo+Pj4gIndha2UgdXAiIGNvbW1hbmQgd29ya3MsIHJpZ2h0Pwo+PiAKPj4gWXVw
Lgo+PiAKPj4+IC0tLQo+Pj4KPj4+IE9LLCBzbyBhc3N1bWluZyBhbGwgdGhlIGFib3ZlIGlzIGNv
cnJlY3QsIEkgZmVlbCBsaWtlIHdlJ3JlIGFjdHVhbGx5Cj4+PiBzb2x2aW5nIHR3byBwcm9ibGVt
cyBhbmQgaW4gZmFjdCBJIGJlbGlldmUgd2UgYWN0dWFsbHkgbmVlZCBib3RoIG91cgo+Pj4gYXBw
cm9hY2hlcyB0byBzb2x2ZSBldmVyeXRoaW5nIGNvcnJlY3RseS7CoCBXaXRoIGp1c3QgeW91ciBw
YXRjaCBpbgo+Pj4gcGxhY2UgdGhlcmUncyBhIHByb2JsZW0gYmVjYXVzZSB3ZSB3aWxsIGNsb2Ji
ZXIgYW55IGV4dGVybmFsIHJldHVuaW5nCj4+PiByZXF1ZXN0cyB0aGF0IGhhcHBlbmVkIHdoaWxl
IHdlIHdlcmUgd2FraW5nIHVwIHRoZSBjYXJkLsKgIEFLQSwgaW1hZ2luZQo+Pj4gdGhpczoKPj4+
Cj4+PiBBKSBicmNtZl9zZGlvX2tzb19jb250cm9sKG9uPVRydWUpIGdldHMgY2FsbGVkOyBuZWVk
X3JldHVuZSBzdGFydHMgYXMgMAo+Pj4KPj4+IEIpIFdlIGNhbGwgc2Rpb19yZXR1bmVfaG9sZF9u
b3coKQo+Pj4KPj4+IEMpIEEgcmV0dW5pbmcgdGltZXIgZ29lcyBvZmYgb3IgdGhlIFNEIEhvc3Qg
Y29udHJvbGxlciB0ZWxscyB1cyB0byByZXR1bmUKPj4+Cj4+PiBEKSBXZSBnZXQgdG8gdGhlIGVu
ZCBvZiBicmNtZl9zZGlvX2tzb19jb250cm9sKCkgYW5kIGNsZWFyIHRoZSAicmV0dW5lCj4+PiBu
ZWVkZWQiIHNpbmNlIG5lZWRfcmV0dW5lIHdhcyAwIGF0IHRoZSBzdGFydC4KPj4+Cj4+PiAuLi5z
byB3ZSBkcm9wcGVkIHRoZSByZXR1bmluZyByZXF1ZXN0IGZyb20gQyksIHJpZ2h0Pwo+Pj4KPj4+
Cj4+PiBXaGF0IHdlIHRydWx5IG5lZWQgaXM6Cj4+Pgo+Pj4gMS4gQ1JDIGVycm9ycyBzaG91bGRu
J3QgdHJpZ2dlciBhIHJldHVuaW5nIHJlcXVlc3Qgd2hlbiB3ZSdyZSBpbgo+Pj4gYnJjbWZfc2Rp
b19rc29fY29udHJvbCgpCj4+Pgo+Pj4gMi4gQSBzZXBhcmF0ZSBwYXRjaCB0aGF0IGhvbGRzIGFu
eSByZXR1bmluZyByZXF1ZXN0cyB3aGlsZSB0aGUgU0RJTwo+Pj4gY2FyZCBpcyBvZmYuwqAgVGhp
cyBwYXRjaCBfc2hvdWxkbid0XyBkbyBhbnkgY2xlYXJpbmcgb2YgcmV0dW5pbmcKPj4+IHJlcXVl
c3RzLCBqdXN0IGRlZmVyIHRoZW0uCj4+Pgo+Pj4KPj4+IERvZXMgdGhhdCBtYWtlIHNlbnNlIHRv
IHlvdT/CoCBJZiBzbywgSSBjYW4gdHJ5IHRvIGNvZGUgaXQgdXAuLi4KPj4gCj4+IEZXSVcgaXQg
ZG9lcyBtYWtlIHNlbnNlIHRvIG1lLiBIb3dldmVyLCBJIGFtIHN0aWxsIG5vdCBzdXJlIGlmIG91
ciBzZGlvCj4+IGhhcmR3YXJlIHN1cHBvcnRzIHJldHVuaW5nLiBIYXZlIHRvIHRyYWNrIGRvd24g
YW4gYXNpYyBkZXNpZ25lciB3aG8gY2FuIHRlbGwKPj4gb3IgZGl2ZSBpbnRvIHZoZGwgbXlzZWxm
Lgo+Cj4gVGhlIGNhcmQgc3VwcG9ydHMgcmUtdHVuaW5nIGlmIGlzIGhhbmRsZXMgQ01EMTksIHdo
aWNoIGl0IGRvZXMuICBJdCBpcyBub3QKPiB0aGUgY2FyZCB0aGF0IGRvZXMgYW55IHR1bmluZywg
b25seSB0aGUgaG9zdC4gIFRoZSBjYXJkIGp1c3QgaGVscHMgYnkKPiBwcm92aWRpbmcgYSBrbm93
biBkYXRhIHBhdHRlcm4gaW4gcmVzcG9uc2UgdG8gQ01EMTkuICBJdCBjYW4gYmUgdGhhdCBhIGNh
cmQKPiBwcm92aWRlcyBnb29kIGVub3VnaCBzaWduYWxzIHRoYXQgdGhlIGhvc3Qgc2hvdWxkIG5v
dCBuZWVkIHRvIHJlLXR1bmUuICBJCj4gZG9uJ3Qga25vdyBpZiB0aGF0IGNhbiBiZSBhZmZlY3Rl
ZCBieSB0aGUgYm9hcmQgZGVzaWduIHRob3VnaC4KClJpZ2h0LiBJIGtub3cgaXQgc3VwcG9ydHMg
aW5pdGlhbCB0dW5pbmcsIGJ1dCBJJ20gbm90IHN1cmUgYWJvdXQgc3Vic2VxdWVudCAKcmV0dW5p
bmcgaW5pdGlhdGVkIGJ5IHRoZSBob3N0IGNvbnRyb2xsZXIuCgpSZWdhcmRzLApBcmVuZAoKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
