Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A9819C71A
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 18:31:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SoiwrbxelwoELwjJCq2xmFNQjIQmQ5aNiE51s2sthdw=; b=XJYs41OyDlBP+T
	jvuY2sK9gGIbFhZ/73hmkduZ9D6pjOFHFYab2ZSB/Srxhwre9inS04APBySu1269iTGPpVrGIkH+v
	xqoQzq4XrAlOhVXvEjZOVCA9DqmLUjxnLFfkSmQiImaCH/N9EPjL7X2JKvMeB0gQIcpYOtkFacTeo
	mJ5H97GZmV1vooulNB7d7x+OM9LRWpE6vJngO4TrXEgOITPFPQOaeSEpyQaWhYCQf05G9vVSBMrk0
	S9slSJluJmAPP8d/oVjdkHYXsBd2j5Clx7zFpGFyFllbzeiidokighgQuT5oIXmfr6Tgy9BGsfzgC
	F/iNgFoSBfN7wZZ1EBqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK2ko-0004Qq-Va; Thu, 02 Apr 2020 16:31:42 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK2kk-0004PH-KQ
 for linux-rockchip@lists.infradead.org; Thu, 02 Apr 2020 16:31:40 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 0D2C6297DC3
Message-ID: <530189e1af69fb04168cf1237aa2990895e471dd.camel@collabora.com>
Subject: Re: [PATCH 1/3] rkisp1: Get rid of unused variable warning
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Robin Murphy <robin.murphy@arm.com>, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Date: Thu, 02 Apr 2020 13:31:27 -0300
In-Reply-To: <b994a6fe-865b-d5c4-7f3f-ed6b1815f37f@arm.com>
References: <20200401213721.24173-1-ezequiel@collabora.com>
 <20200401213721.24173-2-ezequiel@collabora.com>
 <b994a6fe-865b-d5c4-7f3f-ed6b1815f37f@arm.com>
Organization: Collabora
User-Agent: Evolution 3.36.0-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_093138_798881_A6A7797A 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Hans Verkuil <hverkuil@xs4all.nl>, kernel@collabora.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gVGh1LCAyMDIwLTA0LTAyIGF0IDEwOjQ3ICswMTAwLCBSb2JpbiBNdXJwaHkgd3JvdGU6Cj4g
T24gMjAyMC0wNC0wMSAxMDozNyBwbSwgRXplcXVpZWwgR2FyY2lhIHdyb3RlOgo+ID4gSWYgQ09O
RklHX09GIGlzIG5vdCBzZWxlY3RlZCwgdGhlIGNvbXBpbGVyIHdpbGwgY29tcGxhaW46Cj4gPiAK
PiA+IGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya2lzcDEvcmtpc3AxLWRldi5jOiBJbiBmdW5jdGlv
biDigJhya2lzcDFfcHJvYmXigJk6Cj4gPiBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmtpc3AxL3Jr
aXNwMS1kZXYuYzo0NTc6MjI6IHdhcm5pbmc6IHVudXNlZCB2YXJpYWJsZSDigJhub2Rl4oCZIFst
V3VudXNlZC12YXJpYWJsZV0KPiA+ICAgIDQ1NyB8ICBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5vZGUg
PSBwZGV2LT5kZXYub2Zfbm9kZTsKPiA+IAo+ID4gUmV3b3JrIHRoZSBjb2RlIHNsaWdodGx5IGFu
ZCBtYWtlIHRoZSBjb21waWxlciBoYXBweS4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogRXplcXVp
ZWwgR2FyY2lhIDxlemVxdWllbEBjb2xsYWJvcmEuY29tPgo+ID4gLS0tCj4gPiAgIGRyaXZlcnMv
c3RhZ2luZy9tZWRpYS9ya2lzcDEvcmtpc3AxLWRldi5jIHwgMyArLS0KPiA+ICAgMSBmaWxlIGNo
YW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAyIGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3JraXNwMS9ya2lzcDEtZGV2LmMgYi9kcml2ZXJzL3N0
YWdpbmcvbWVkaWEvcmtpc3AxL3JraXNwMS1kZXYuYwo+ID4gaW5kZXggYjFiM2MwNThlOTU3Li41
ZTdlNzk3YWFkNzEgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmtpc3Ax
L3JraXNwMS1kZXYuYwo+ID4gKysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3JraXNwMS9ya2lz
cDEtZGV2LmMKPiA+IEBAIC00NTQsNyArNDU0LDYgQEAgc3RhdGljIHZvaWQgcmtpc3AxX2RlYnVn
X2luaXQoc3RydWN0IHJraXNwMV9kZXZpY2UgKnJraXNwMSkKPiA+ICAgCj4gPiAgIHN0YXRpYyBp
bnQgcmtpc3AxX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPiAgIHsKPiA+
IC0Jc3RydWN0IGRldmljZV9ub2RlICpub2RlID0gcGRldi0+ZGV2Lm9mX25vZGU7Cj4gPiAgIAlj
b25zdCBzdHJ1Y3Qgcmtpc3AxX21hdGNoX2RhdGEgKmNsa19kYXRhOwo+ID4gICAJY29uc3Qgc3Ry
dWN0IG9mX2RldmljZV9pZCAqbWF0Y2g7Cj4gPiAgIAlzdHJ1Y3QgZGV2aWNlICpkZXYgPSAmcGRl
di0+ZGV2Owo+ID4gQEAgLTQ2Myw3ICs0NjIsNyBAQCBzdGF0aWMgaW50IHJraXNwMV9wcm9iZShz
dHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4gICAJdW5zaWduZWQgaW50IGk7Cj4gPiAg
IAlpbnQgcmV0LCBpcnE7Cj4gPiAgIAo+ID4gLQltYXRjaCA9IG9mX21hdGNoX25vZGUocmtpc3Ax
X29mX21hdGNoLCBub2RlKTsKPiA+ICsJbWF0Y2ggPSBvZl9tYXRjaF9ub2RlKHJraXNwMV9vZl9t
YXRjaCwgcGRldi0+ZGV2Lm9mX25vZGUpOwo+IAo+IEZXSVcgeW91IGNvdWxkIGNsZWFuIHVwICJt
YXRjaCIgdG9vIGJ5IHVzaW5nIG9mX2RldmljZV9nZXRfbWF0Y2hfZGF0YSgpLgo+IAoKQWgsIHRo
YXQncyBuaWNlci4KClRoYW5rcywKRXplcXVpZWwKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
