Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C9319CA9B
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 21:52:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XhIYVgGQtrC90/OaSFJvkipLOHUfZWDtukyCazmhJuQ=; b=qQP7sH+90cDiua
	g1N+hqqQMjEcnlJfffpkcSorWO4iRCC2+W7Tk0qKnNkNlvVrAPZgRG7z+b1fpBWT1BZRMA4qCK8lW
	42/0DsrlNkG1kq8PLn2zvd8HG0weX/ov5CoPuhUuHsIp16jgynrBd6cPtpuJlMS/WKxayZUEqaG5M
	O4DeLcnx/vDoSxPSUReL2eZ/WIfxpqT84NSHOYx2I3osMt7VUyFYNZ5DjUKRUxJm0inZZwwSHRFiV
	5CAvxnAMyPnwAsfAC2ykozIbVbkHuW6AfB/y4h4vCHEcSeMA2HC8VJ0BxTKt1h6a2g3w0c4XDU94l
	tL0oRTGFxYi64iGHvX7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK5se-0000qS-QR; Thu, 02 Apr 2020 19:52:00 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK5sb-0000pg-66
 for linux-rockchip@lists.infradead.org; Thu, 02 Apr 2020 19:51:58 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 7AD4C297C74
Subject: Re: [PATCH v2 1/3] rkisp1: Get rid of unused variable warning
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20200402194504.5331-1-ezequiel@collabora.com>
 <20200402194504.5331-2-ezequiel@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <3f751060-8af4-3d7a-785a-c06c56736a08@collabora.com>
Date: Thu, 2 Apr 2020 16:51:48 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200402194504.5331-2-ezequiel@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_125157_349119_24F77E43 
X-CRM114-Status: GOOD (  14.17  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: Hans Verkuil <hverkuil@xs4all.nl>, kernel@collabora.com,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

CgpPbiA0LzIvMjAgNDo0NSBQTSwgRXplcXVpZWwgR2FyY2lhIHdyb3RlOgo+IElmIENPTkZJR19P
RiBpcyBub3Qgc2VsZWN0ZWQsIHRoZSBjb21waWxlciB3aWxsIGNvbXBsYWluOgo+IAo+IGRyaXZl
cnMvc3RhZ2luZy9tZWRpYS9ya2lzcDEvcmtpc3AxLWRldi5jOiBJbiBmdW5jdGlvbiDigJhya2lz
cDFfcHJvYmXigJk6Cj4gZHJpdmVycy9zdGFnaW5nL21lZGlhL3JraXNwMS9ya2lzcDEtZGV2LmM6
NDU3OjIyOiB3YXJuaW5nOiB1bnVzZWQgdmFyaWFibGUg4oCYbm9kZeKAmSBbLVd1bnVzZWQtdmFy
aWFibGVdCj4gICA0NTcgfCAgc3RydWN0IGRldmljZV9ub2RlICpub2RlID0gcGRldi0+ZGV2Lm9m
X25vZGU7Cj4gCj4gUmV3b3JrIHRoZSBjb2RlIHNsaWdodGx5IGFuZCBtYWtlIHRoZSBjb21waWxl
ciBoYXBweS4KPiAKPiBTdWdnZXN0ZWQtYnk6IFJvYmluIE11cnBoeSA8cm9iaW4ubXVycGh5QGFy
bS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogRXplcXVpZWwgR2FyY2lhIDxlemVxdWllbEBjb2xsYWJv
cmEuY29tPgoKQWNrZWQtYnk6IEhlbGVuIEtvaWtlIDxoZWxlbi5rb2lrZUBjb2xsYWJvcmEuY29t
PgoKPiAtLS0KPiAgZHJpdmVycy9zdGFnaW5nL21lZGlhL3JraXNwMS9ya2lzcDEtZGV2LmMgfCA4
ICsrKystLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25z
KC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya2lzcDEvcmtpc3Ax
LWRldi5jIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3JraXNwMS9ya2lzcDEtZGV2LmMKPiBpbmRl
eCBiMWIzYzA1OGU5NTcuLjNmNjI4NTcwOTM1MiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3N0YWdp
bmcvbWVkaWEvcmtpc3AxL3JraXNwMS1kZXYuYwo+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRp
YS9ya2lzcDEvcmtpc3AxLWRldi5jCj4gQEAgLTQ1NCwxNiArNDU0LDE3IEBAIHN0YXRpYyB2b2lk
IHJraXNwMV9kZWJ1Z19pbml0KHN0cnVjdCBya2lzcDFfZGV2aWNlICpya2lzcDEpCj4gIAo+ICBz
dGF0aWMgaW50IHJraXNwMV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICB7
Cj4gLQlzdHJ1Y3QgZGV2aWNlX25vZGUgKm5vZGUgPSBwZGV2LT5kZXYub2Zfbm9kZTsKPiAgCWNv
bnN0IHN0cnVjdCBya2lzcDFfbWF0Y2hfZGF0YSAqY2xrX2RhdGE7Cj4gLQljb25zdCBzdHJ1Y3Qg
b2ZfZGV2aWNlX2lkICptYXRjaDsKPiAgCXN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7
Cj4gIAlzdHJ1Y3Qgcmtpc3AxX2RldmljZSAqcmtpc3AxOwo+ICAJc3RydWN0IHY0bDJfZGV2aWNl
ICp2NGwyX2RldjsKPiAgCXVuc2lnbmVkIGludCBpOwo+ICAJaW50IHJldCwgaXJxOwo+ICAKPiAt
CW1hdGNoID0gb2ZfbWF0Y2hfbm9kZShya2lzcDFfb2ZfbWF0Y2gsIG5vZGUpOwo+ICsJY2xrX2Rh
dGEgPSBvZl9kZXZpY2VfZ2V0X21hdGNoX2RhdGEoJnBkZXYtPmRldik7Cj4gKwlpZiAoIWNsa19k
YXRhKQo+ICsJCXJldHVybiAtRU5PREVWOwo+ICsKPiAgCXJraXNwMSA9IGRldm1fa3phbGxvYyhk
ZXYsIHNpemVvZigqcmtpc3AxKSwgR0ZQX0tFUk5FTCk7Cj4gIAlpZiAoIXJraXNwMSkKPiAgCQly
ZXR1cm4gLUVOT01FTTsKPiBAQCAtNDg3LDcgKzQ4OCw2IEBAIHN0YXRpYyBpbnQgcmtpc3AxX3By
b2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAl9Cj4gIAo+ICAJcmtpc3AxLT5p
cnEgPSBpcnE7Cj4gLQljbGtfZGF0YSA9IG1hdGNoLT5kYXRhOwo+ICAKPiAgCWZvciAoaSA9IDA7
IGkgPCBjbGtfZGF0YS0+c2l6ZTsgaSsrKQo+ICAJCXJraXNwMS0+Y2xrc1tpXS5pZCA9IGNsa19k
YXRhLT5jbGtzW2ldOwo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
