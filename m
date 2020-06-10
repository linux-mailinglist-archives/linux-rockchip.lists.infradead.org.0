Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 047571F5BB4
	for <lists+linux-rockchip@lfdr.de>; Wed, 10 Jun 2020 21:00:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CtIx59PHHm/gf4VWsQ3oR5E5itryeLGW0UQroM0Hc8A=; b=ElDWpoP+P9PfHDj8YJ5nVoQyo
	4+cPPFy7sRp4MHbqfUVHArFCkjhrZi8UGqq7iIHuejmIq9QUMLOtirWNljwxgsBZyPx7eFxQF2SO+
	KD0B/5ByIZJdE6ecrzLkSJRzUeW7/mfSgQHAqrk+WFFcKpZ7Ep2hBvkg/ryy57jn4Em+d//W+h39R
	rXZ1s56bz3RVh0bNBge8rj2alNYc1f2ad3lGSx6RT9UY+4tOiuPeIuCT46pTslJaWAc2NALm9dDPg
	FyxqPIfXky0SK+B6pE8m82JkaSmtGyFRTKn3/Wn00pYG2/d81IRwmsxjR/PEGjWDYaPnqXh8oPjmC
	OZp4fMGHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj5xs-00037S-B3; Wed, 10 Jun 2020 19:00:44 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj5xP-00024V-5o
 for linux-rockchip@lists.infradead.org; Wed, 10 Jun 2020 19:00:18 +0000
Received: from [IPv6:2003:cb:871f:5b00:9cc4:c525:7ca2:283]
 (p200300cb871f5b009cc4c5257ca20283.dip0.t-ipconnect.de
 [IPv6:2003:cb:871f:5b00:9cc4:c525:7ca2:283])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 727F72A0328;
 Wed, 10 Jun 2020 20:00:11 +0100 (BST)
Subject: Re: [PATCH v2 1/4] media: staging: rkisp1: rsz: supported formats are
 the isp's src formats, not sink formats
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: Tomasz Figa <tfiga@chromium.org>
References: <20200609152825.24772-1-dafna.hirschfeld@collabora.com>
 <20200609152825.24772-2-dafna.hirschfeld@collabora.com>
 <20200610171511.GD201868@chromium.org>
 <bf42a283-7aa5-330e-8a50-8bf7680cbd1f@collabora.com>
Message-ID: <bb5576b1-7bfb-7911-004c-8fa1b4e1603c@collabora.com>
Date: Wed, 10 Jun 2020 21:00:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <bf42a283-7aa5-330e-8a50-8bf7680cbd1f@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_120015_509691_EEE1C123 
X-CRM114-Status: GOOD (  22.06  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mchehab@kernel.org, dafna3@gmail.com, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com,
 kernel@collabora.com, ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

CgpPbiAxMC4wNi4yMCAyMDozNiwgRGFmbmEgSGlyc2NoZmVsZCB3cm90ZToKPiAKPiAKPiBPbiAx
MC4wNi4yMCAxOToxNSwgVG9tYXN6IEZpZ2Egd3JvdGU6Cj4+IEhpIERhZm5hLAo+Pgo+PiBPbiBU
dWUsIEp1biAwOSwgMjAyMCBhdCAwNToyODoyMlBNICswMjAwLCBEYWZuYSBIaXJzY2hmZWxkIHdy
b3RlOgo+Pj4gVGhlIHJraXNwMV9yZXNpemVyJ3MgZW51bSBjYWxsYmFjayAncmtpc3AxX3Jzel9l
bnVtX21idXNfY29kZScKPj4+IGNhbGxzIHRoZSBlbnVtIGNhbGxiYWNrIG9mIHRoZSAncmtpc3Ax
X2lzcCcgb24gaXQncyB2aWRlbyBzaW5rIHBhZC4KPj4+IFRoaXMgaXMgYSBidWcsIHRoZSByZXNp
emVyIHNob3VsZCBzdXBwb3J0IHRoZSBzYW1lIGZvcm1hdHMKPj4+IHN1cHBvcnRlZCBieSB0aGUg
J3JraXNwMV9pc3AnIG9uIHRoZSBzb3VyY2UgcGFkIChub3QgdGhlIHNpbmsgcGFkKS4KPj4+Cj4+
PiBGaXhlczogNTZlM2IyOWY5ZjZiICJtZWRpYTogc3RhZ2luZzogcmtpc3AxOiBhZGQgc3RyZWFt
aW5nIHBhdGhzIgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IERhZm5hIEhpcnNjaGZlbGQgPGRhZm5h
LmhpcnNjaGZlbGRAY29sbGFib3JhLmNvbT4KPj4+IEFja2VkLWJ5OiBIZWxlbiBLb2lrZSA8aGVs
ZW4ua29pa2VAY29sbGFib3JhLmNvbT4KPj4+IC0tLQo+Pj4gwqAgZHJpdmVycy9zdGFnaW5nL21l
ZGlhL3JraXNwMS9ya2lzcDEtcmVzaXplci5jIHwgNCArKy0tCj4+PiDCoCAxIGZpbGUgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Pj4KPj4KPj4gVGhhbmsgeW91IGZv
ciB0aGUgcGF0Y2guIFBsZWFzZSBzZWUgbXkgY29tbWVudHMgaW5saW5lLgo+Pgo+Pj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya2lzcDEvcmtpc3AxLXJlc2l6ZXIuYyBiL2Ry
aXZlcnMvc3RhZ2luZy9tZWRpYS9ya2lzcDEvcmtpc3AxLXJlc2l6ZXIuYwo+Pj4gaW5kZXggZDA0
OTM3NDQxM2RjLi5kNjRjMDY0YmRiMWQgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcv
bWVkaWEvcmtpc3AxL3JraXNwMS1yZXNpemVyLmMKPj4+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9t
ZWRpYS9ya2lzcDEvcmtpc3AxLXJlc2l6ZXIuYwo+Pj4gQEAgLTQzNyw4ICs0MzcsOCBAQCBzdGF0
aWMgaW50IHJraXNwMV9yc3pfZW51bV9tYnVzX2NvZGUoc3RydWN0IHY0bDJfc3ViZGV2ICpzZCwK
Pj4+IMKgwqDCoMKgwqAgdTMyIHBhZCA9IGNvZGUtPnBhZDsKPj4+IMKgwqDCoMKgwqAgaW50IHJl
dDsKPj4+IC3CoMKgwqAgLyogc3VwcG9ydGVkIG1idXMgY29kZXMgYXJlIHRoZSBzYW1lIGluIGlz
cCBzaW5rIHBhZCAqLwo+Pj4gLcKgwqDCoCBjb2RlLT5wYWQgPSBSS0lTUDFfSVNQX1BBRF9TSU5L
X1ZJREVPOwo+Pj4gK8KgwqDCoCAvKiBzdXBwb3J0ZWQgbWJ1cyBjb2RlcyBhcmUgdGhlIHNhbWUg
aW4gaXNwIHZpZGVvIHNyYyBwYWQgKi8KPj4+ICvCoMKgwqAgY29kZS0+cGFkID0gUktJU1AxX0lT
UF9QQURfU09VUkNFX1ZJREVPOwo+Pj4gwqDCoMKgwqDCoCByZXQgPSB2NGwyX3N1YmRldl9jYWxs
KCZyc3otPnJraXNwMS0+aXNwLnNkLCBwYWQsIGVudW1fbWJ1c19jb2RlLAo+Pj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAmZHVtbXlfY2ZnLCBjb2RlKTsKPj4KPj4g
QWN0dWFsbHksIGlzIHRoaXMgcmVhbGx5IHRoZSB0cnVlPyBBRkFJUiB0aGUgSVNQIGl0c2VsZiBj
YW4gb25seSBvdXRwdXQKPj4gZWl0aGVyIEJheWVyIG9yIFlVViA0OjI6Mi4gVGhlIHJlc2l6ZXIg
Y2FuIHRha2UgWVVWIDQ6MjoyIGF0IGl0cyBpbnB1dAo+PiBhbmQgb3V0cHV0IFlVViA0OjQ6NCwg
NDoyOjIgYW5kIDQ6MjowLiBCYXllciBjYXB0dXJlIGlzIGhhbmRsZWQgd2l0aAo+PiByZXNpemVy
IGJ5cGFzcyBtb2RlLiBXZSBoYXZlbid0IHRlc3RlZCB0aGF0LCBidXQgaWYgaW1wbGVtZW50ZWQs
IGl0Cj4+IHNob3VsZCBwcm9iYWJseSBiZSBkb25lIGJ5IGV4cG9zaW5nIGEgbGluayBiZXR3ZWVu
IHRoZSBJU1AgZW50aXR5IGFuZCBhCj4+IHZpZGVvIG5vZGUgZGlyZWN0bHksIHdpdGhvdXQgdGhl
IHJlc2l6ZXIgaW52b2x2ZWQuCj4+Cj4+IFdEWVQ/Cj4gCj4gV2UgY2FuIGFsc28gaW1wbGVtZW50
IGl0IHRoYXQgd2F5LiBPbmx5IHRoZSBtYWlucGF0aCBuZWVkcwo+IGEgZGlyZWN0IGxpbmsgZnJv
bSB0aGUgaXNwIHNpbmNlIHNlbGZwYXRoIGRvZXMgbm90IHN1cHBvcnQgYmF5ZXIgZm9ybWF0cy4K
PiBJdCBtYWtlcyBpdCBlYXNpZXIgb24gdXNlcnNwYWNlIGZvciBiYXllciBmb3JtYXRzIHNpbmNl
IGl0IGRvZXMgbm90IGhhdmUgdG8KPiBjb25maWd1cmUgdGhlIHJlc2l6ZXIuCj4gT24gdGhlIG90
aGVyIGhhbmQgaWYgdGhlIGZvcm1hdCBpcyBZVVYgaXQgaGFzIHRoZSBvcHRpb24KPiB0byBlaXRo
ZXIgdXNlIHRoZSB0aGUgcmVzaXplciBvciBub3QuCj4gCj4gVGhhbmtzLAo+IERhZm5hCgpBbnl3
YXksIHRoaXMgaXMgYSB0d28gbGluZSBidWcgZml4LCBzbyBJIHRoaW5rIHRoaXMgcGF0Y2ggY2Fu
IGZpcnN0IGJlCmFjY2VwdGVkIGFuZCB0aGVuIGlmIHdlIGNob29zZSB0byBjaGFuZ2UgdGhlIHRv
cG9sb2d5IHRoaXMgY2FuIGJlIGRvbmUKaW4gYSBzZXBhcmF0ZSBwYXRjaHNldC4KClRoYW5rcywK
RGFmbmEKCgoKPiAKPj4KPj4gQmVzdCByZWdhcmRzLAo+PiBUb21hc3oKPj4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
