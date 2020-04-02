Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 260D619BEDD
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 11:48:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=g89Q8u1UvJ9hNE2CsvPGSQwck+Y2HfnsXX1eZzT2Ha8=; b=rULLa6MJ+iXoxKzJk0QM7Y22j
	A1+lJCEv+FVJ6ovKdRfYsrxw653txS7KIner7mXyZF4UCnvcfY6BsU3h1VKRcT2Gq+DEjb4r30CCZ
	C7pVjSm1RyMQawqnHItXp9I3zrvBtfirfiObEkFciNC8kR5TiUuFFfqic31FnApGrbHig8mPT/Q9d
	h1Q/BAGPRwQom7TLcUF6r1gpo+XcfskiUALlBIuCv3KMBiVM6i9xiMQCRFsF8jSRzuRs3g0EGi+K9
	yUnCAqNg+puiR/irK4Oee3O3pnD0MHiAvjXbcsjJDlHY53hiFf/B2XJx/SLRHNIWLsgtJTjR7BgfA
	9MO5OGCDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJwSG-0005U5-8U; Thu, 02 Apr 2020 09:48:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJwSC-0005Th-Kz
 for linux-rockchip@lists.infradead.org; Thu, 02 Apr 2020 09:48:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BB46E31B;
 Thu,  2 Apr 2020 02:48:03 -0700 (PDT)
Received: from [10.57.59.199] (unknown [10.57.59.199])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B477A3F71E;
 Thu,  2 Apr 2020 02:48:01 -0700 (PDT)
Subject: Re: [PATCH 1/3] rkisp1: Get rid of unused variable warning
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20200401213721.24173-1-ezequiel@collabora.com>
 <20200401213721.24173-2-ezequiel@collabora.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <b994a6fe-865b-d5c4-7f3f-ed6b1815f37f@arm.com>
Date: Thu, 2 Apr 2020 10:47:58 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200401213721.24173-2-ezequiel@collabora.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_024804_729930_5CCD2134 
X-CRM114-Status: GOOD (  16.47  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Hans Verkuil <hverkuil@xs4all.nl>, kernel@collabora.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gMjAyMC0wNC0wMSAxMDozNyBwbSwgRXplcXVpZWwgR2FyY2lhIHdyb3RlOgo+IElmIENPTkZJ
R19PRiBpcyBub3Qgc2VsZWN0ZWQsIHRoZSBjb21waWxlciB3aWxsIGNvbXBsYWluOgo+IAo+IGRy
aXZlcnMvc3RhZ2luZy9tZWRpYS9ya2lzcDEvcmtpc3AxLWRldi5jOiBJbiBmdW5jdGlvbiDigJhy
a2lzcDFfcHJvYmXigJk6Cj4gZHJpdmVycy9zdGFnaW5nL21lZGlhL3JraXNwMS9ya2lzcDEtZGV2
LmM6NDU3OjIyOiB3YXJuaW5nOiB1bnVzZWQgdmFyaWFibGUg4oCYbm9kZeKAmSBbLVd1bnVzZWQt
dmFyaWFibGVdCj4gICAgNDU3IHwgIHN0cnVjdCBkZXZpY2Vfbm9kZSAqbm9kZSA9IHBkZXYtPmRl
di5vZl9ub2RlOwo+IAo+IFJld29yayB0aGUgY29kZSBzbGlnaHRseSBhbmQgbWFrZSB0aGUgY29t
cGlsZXIgaGFwcHkuCj4gCj4gU2lnbmVkLW9mZi1ieTogRXplcXVpZWwgR2FyY2lhIDxlemVxdWll
bEBjb2xsYWJvcmEuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9zdGFnaW5nL21lZGlhL3JraXNwMS9y
a2lzcDEtZGV2LmMgfCAzICstLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAy
IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmtp
c3AxL3JraXNwMS1kZXYuYyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya2lzcDEvcmtpc3AxLWRl
di5jCj4gaW5kZXggYjFiM2MwNThlOTU3Li41ZTdlNzk3YWFkNzEgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9zdGFnaW5nL21lZGlhL3JraXNwMS9ya2lzcDEtZGV2LmMKPiArKysgYi9kcml2ZXJzL3N0
YWdpbmcvbWVkaWEvcmtpc3AxL3JraXNwMS1kZXYuYwo+IEBAIC00NTQsNyArNDU0LDYgQEAgc3Rh
dGljIHZvaWQgcmtpc3AxX2RlYnVnX2luaXQoc3RydWN0IHJraXNwMV9kZXZpY2UgKnJraXNwMSkK
PiAgIAo+ICAgc3RhdGljIGludCBya2lzcDFfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAq
cGRldikKPiAgIHsKPiAtCXN0cnVjdCBkZXZpY2Vfbm9kZSAqbm9kZSA9IHBkZXYtPmRldi5vZl9u
b2RlOwo+ICAgCWNvbnN0IHN0cnVjdCBya2lzcDFfbWF0Y2hfZGF0YSAqY2xrX2RhdGE7Cj4gICAJ
Y29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCAqbWF0Y2g7Cj4gICAJc3RydWN0IGRldmljZSAqZGV2
ID0gJnBkZXYtPmRldjsKPiBAQCAtNDYzLDcgKzQ2Miw3IEBAIHN0YXRpYyBpbnQgcmtpc3AxX3By
b2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gICAJdW5zaWduZWQgaW50IGk7Cj4g
ICAJaW50IHJldCwgaXJxOwo+ICAgCj4gLQltYXRjaCA9IG9mX21hdGNoX25vZGUocmtpc3AxX29m
X21hdGNoLCBub2RlKTsKPiArCW1hdGNoID0gb2ZfbWF0Y2hfbm9kZShya2lzcDFfb2ZfbWF0Y2gs
IHBkZXYtPmRldi5vZl9ub2RlKTsKCkZXSVcgeW91IGNvdWxkIGNsZWFuIHVwICJtYXRjaCIgdG9v
IGJ5IHVzaW5nIG9mX2RldmljZV9nZXRfbWF0Y2hfZGF0YSgpLgoKUm9iaW4uCgo+ICAgCXJraXNw
MSA9IGRldm1fa3phbGxvYyhkZXYsIHNpemVvZigqcmtpc3AxKSwgR0ZQX0tFUk5FTCk7Cj4gICAJ
aWYgKCFya2lzcDEpCj4gICAJCXJldHVybiAtRU5PTUVNOwo+IAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
