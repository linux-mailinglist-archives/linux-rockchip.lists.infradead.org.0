Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3246919C366
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 15:58:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PTWTDSE5mxcymwG5nzArhjmOtkpj8qn/QOTx47Etq/o=; b=ECD4kqCn4d8M8X
	U4h7/tN9HF2AWnwB0ZOdqXZcALLlR4I1FLTNJZhuguDrZLFxsYXrWpRZ0AAcNQGXlibZSjj0LyeoR
	PQTcxAZZl5qDc1XSIf2dFepo4XV7ADF9lHr1X0d2zfuXudToAfR0cpfMfMVhY4oO6KZePUgoX2Gne
	WUh8lahgayoXrbWSp7nqjD7yU3A+dikna8iVn6s0OoxmiaGfPxu6Or7beI0O8aXi0wjTnl6ECSVTg
	77IQSTFTaGV2Kt85MMNqN0MxLTnAtTil0hFL7FBRgcL1Br5TOmbc3ysbSFrODbI6Fe+8Z+Lk3flBS
	6xMYA5x1K/oKJvSmSo0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK0Mq-0002wZ-13; Thu, 02 Apr 2020 13:58:48 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK0Mn-0002w9-M8
 for linux-rockchip@lists.infradead.org; Thu, 02 Apr 2020 13:58:47 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 425FA280125
Subject: Re: [PATCH 1/3] rkisp1: Get rid of unused variable warning
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20200401213721.24173-1-ezequiel@collabora.com>
 <20200401213721.24173-2-ezequiel@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <86db2adb-d567-afc4-b675-49ad031cd75e@collabora.com>
Date: Thu, 2 Apr 2020 10:58:35 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200401213721.24173-2-ezequiel@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_065845_851039_4444044F 
X-CRM114-Status: GOOD (  13.65  )
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

CgpPbiA0LzEvMjAgNjozNyBQTSwgRXplcXVpZWwgR2FyY2lhIHdyb3RlOgo+IElmIENPTkZJR19P
RiBpcyBub3Qgc2VsZWN0ZWQsIHRoZSBjb21waWxlciB3aWxsIGNvbXBsYWluOgo+IAo+IGRyaXZl
cnMvc3RhZ2luZy9tZWRpYS9ya2lzcDEvcmtpc3AxLWRldi5jOiBJbiBmdW5jdGlvbiDigJhya2lz
cDFfcHJvYmXigJk6Cj4gZHJpdmVycy9zdGFnaW5nL21lZGlhL3JraXNwMS9ya2lzcDEtZGV2LmM6
NDU3OjIyOiB3YXJuaW5nOiB1bnVzZWQgdmFyaWFibGUg4oCYbm9kZeKAmSBbLVd1bnVzZWQtdmFy
aWFibGVdCj4gICA0NTcgfCAgc3RydWN0IGRldmljZV9ub2RlICpub2RlID0gcGRldi0+ZGV2Lm9m
X25vZGU7Cj4gCj4gUmV3b3JrIHRoZSBjb2RlIHNsaWdodGx5IGFuZCBtYWtlIHRoZSBjb21waWxl
ciBoYXBweS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBFemVxdWllbCBHYXJjaWEgPGV6ZXF1aWVsQGNv
bGxhYm9yYS5jb20+CgpBY2tlZC1ieTogSGVsZW4gS29pa2UgPGhlbGVuLmtvaWtlQGNvbGxhYm9y
YS5jb20+Cgo+IC0tLQo+ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmtpc3AxL3JraXNwMS1kZXYu
YyB8IDMgKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMiBkZWxldGlvbnMo
LSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3JraXNwMS9ya2lzcDEt
ZGV2LmMgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmtpc3AxL3JraXNwMS1kZXYuYwo+IGluZGV4
IGIxYjNjMDU4ZTk1Ny4uNWU3ZTc5N2FhZDcxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvc3RhZ2lu
Zy9tZWRpYS9ya2lzcDEvcmtpc3AxLWRldi5jCj4gKysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlh
L3JraXNwMS9ya2lzcDEtZGV2LmMKPiBAQCAtNDU0LDcgKzQ1NCw2IEBAIHN0YXRpYyB2b2lkIHJr
aXNwMV9kZWJ1Z19pbml0KHN0cnVjdCBya2lzcDFfZGV2aWNlICpya2lzcDEpCj4gIAo+ICBzdGF0
aWMgaW50IHJraXNwMV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICB7Cj4g
LQlzdHJ1Y3QgZGV2aWNlX25vZGUgKm5vZGUgPSBwZGV2LT5kZXYub2Zfbm9kZTsKPiAgCWNvbnN0
IHN0cnVjdCBya2lzcDFfbWF0Y2hfZGF0YSAqY2xrX2RhdGE7Cj4gIAljb25zdCBzdHJ1Y3Qgb2Zf
ZGV2aWNlX2lkICptYXRjaDsKPiAgCXN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7Cj4g
QEAgLTQ2Myw3ICs0NjIsNyBAQCBzdGF0aWMgaW50IHJraXNwMV9wcm9iZShzdHJ1Y3QgcGxhdGZv
cm1fZGV2aWNlICpwZGV2KQo+ICAJdW5zaWduZWQgaW50IGk7Cj4gIAlpbnQgcmV0LCBpcnE7Cj4g
IAo+IC0JbWF0Y2ggPSBvZl9tYXRjaF9ub2RlKHJraXNwMV9vZl9tYXRjaCwgbm9kZSk7Cj4gKwlt
YXRjaCA9IG9mX21hdGNoX25vZGUocmtpc3AxX29mX21hdGNoLCBwZGV2LT5kZXYub2Zfbm9kZSk7
Cj4gIAlya2lzcDEgPSBkZXZtX2t6YWxsb2MoZGV2LCBzaXplb2YoKnJraXNwMSksIEdGUF9LRVJO
RUwpOwo+ICAJaWYgKCFya2lzcDEpCj4gIAkJcmV0dXJuIC1FTk9NRU07Cj4gCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
