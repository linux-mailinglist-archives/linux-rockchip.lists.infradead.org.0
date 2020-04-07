Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EBC21A1708
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 Apr 2020 22:51:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+NmUYfXPIQB+GnmQR9WQfB+0+1YmP/4QJwOR8aI5gho=; b=IULlXu53IG1swJ
	Dlo+kG8UBwJ7lkgMtR8tD07lkRPPH6/5cwAFs7LGD2yhc3jep/0bkmXSEr7Ew/CcM3dknshR43XOa
	z/jhTAFpafFJUFAUvRH9l+JmVO/3W21apit1zGqB+UhTbFn5zBdalftyUfll8iHWQSVs9RToHdE7S
	jsx07N4Qum/NeIsjOvOqlodo/zoOrvIOQvOPaBG3npPiAoeNXMznyHAgpknJRa+5xPrZEMOoyVqha
	i9Ku5rnzxPWjxZuJBRXogNmXNL7lmUVzrDURjwgu1rSLspHpdEIhi0zYFfu72GyjHyYxZNdPerECs
	sWg9PSop4p994mqtM7Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLvBs-00061z-73; Tue, 07 Apr 2020 20:51:24 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLvBl-0005wv-ML
 for linux-rockchip@lists.infradead.org; Tue, 07 Apr 2020 20:51:19 +0000
Received: from [IPv6:2804:431:e7cc:377d:dcf4:aab0:a7bd:9880] (unknown
 [IPv6:2804:431:e7cc:377d:dcf4:aab0:a7bd:9880])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: koike)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id CBAC22947F5;
 Tue,  7 Apr 2020 21:51:13 +0100 (BST)
Subject: Re: [PATCH v2 2/3] media: staging: rkisp1: use
 v4l2_pipeline_stream_{enable,disable} helpers
To: =?UTF-8?Q?Niklas_S=c3=b6derlund?= <niklas.soderlund@ragnatech.se>
References: <20200403213312.1863876-1-helen.koike@collabora.com>
 <20200403213312.1863876-3-helen.koike@collabora.com>
 <20200407193453.GF1716317@oden.dyn.berto.se>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <152f9441-75cf-b400-d57e-e8e003890943@collabora.com>
Date: Tue, 7 Apr 2020 17:51:08 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200407193453.GF1716317@oden.dyn.berto.se>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_135117_992905_790B65D0 
X-CRM114-Status: GOOD (  18.89  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: mchehab@kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, hans.verkuil@cisco.com,
 skhan@linuxfoundation.org, kernel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

CgpPbiA0LzcvMjAgNDozNCBQTSwgTmlrbGFzIFPDtmRlcmx1bmQgd3JvdGU6Cj4gSGkgSGVsZW4s
Cj4gCj4gVGhhbmtzIGZvciB5b3VyIHdvcmsuCj4gCj4gT24gMjAyMC0wNC0wMyAxODozMzoxMSAt
MDMwMCwgSGVsZW4gS29pa2Ugd3JvdGU6Cj4+IFVzZSB2NGwyX3BpcGVsaW5lX3N0cmVhbV97ZW5h
YmxlLGRpc2FibGV9IHRvIGNhbGwgLnNfc3RyZWFtKCkgc3ViZGV2aWNlCj4+IGNhbGxiYWNrcyB0
aHJvdWdoIHRoZSBwaXBlbGluZS4KPj4KPj4gVGVzdGVkIGJ5IHN0cmVhbWluZyBvbiBSb2NrUGk0
IHdpdGggaW14MjE5IGFuZCBvbiBTY2FybGV0IENocm9tZWJvb2suCj4+Cj4+IFNpZ25lZC1vZmYt
Ynk6IEhlbGVuIEtvaWtlIDxoZWxlbi5rb2lrZUBjb2xsYWJvcmEuY29tPgo+Pgo+PiAtLS0KPj4K
Pj4gQ2hhbmdlcyBpbiB2MjoKPj4gLSByZWJhc2Ugb24gdG9wIG9mIG5ldyBoZWxwZXJzIHByb3Rv
dHlwZXMKPj4KPj4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya2lzcDEvcmtpc3AxLWNhcHR1cmUu
YyB8IDc2ICstLS0tLS0tLS0tLS0tLS0tLS0KPj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlv
bnMoKyksIDczIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5n
L21lZGlhL3JraXNwMS9ya2lzcDEtY2FwdHVyZS5jIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3Jr
aXNwMS9ya2lzcDEtY2FwdHVyZS5jCj4+IGluZGV4IDI0ZmU2YTc4ODhhYTQuLjBjMmEzNTdjNGEx
MmEgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya2lzcDEvcmtpc3AxLWNh
cHR1cmUuYwo+PiArKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmtpc3AxL3JraXNwMS1jYXB0
dXJlLmMKPj4gQEAgLTgzOCw3MSArODM4LDYgQEAgc3RhdGljIHZvaWQgcmtpc3AxX3JldHVybl9h
bGxfYnVmZmVycyhzdHJ1Y3Qgcmtpc3AxX2NhcHR1cmUgKmNhcCwKPj4gIAlzcGluX3VubG9ja19p
cnFyZXN0b3JlKCZjYXAtPmJ1Zi5sb2NrLCBmbGFncyk7Cj4+ICB9Cj4+ICAKPj4gLS8qCj4+IC0g
KiBya2lzcDFfcGlwZWxpbmVfc2lua193YWxrIC0gV2FsayB0aHJvdWdoIHRoZSBwaXBlbGluZSBh
bmQgY2FsbCBjYgo+PiAtICogQGZyb206IGVudGl0eSBhdCB3aGljaCB0byBzdGFydCBwaXBlbGlu
ZSB3YWxrCj4+IC0gKiBAdW50aWw6IGVudGl0eSBhdCB3aGljaCB0byBzdG9wIHBpcGVsaW5lIHdh
bGsKPj4gLSAqCj4+IC0gKiBXYWxrIHRoZSBlbnRpdGllcyBjaGFpbiBzdGFydGluZyBhdCB0aGUg
cGlwZWxpbmUgdmlkZW8gbm9kZSBhbmQgc3RvcAo+PiAtICogYWxsIHN1YmRldmljZXMgaW4gdGhl
IGNoYWluLgo+PiAtICoKPj4gLSAqIElmIHRoZSB1bnRpbCBhcmd1bWVudCBpc24ndCBOVUxMLCBz
dG9wIHRoZSBwaXBlbGluZSB3YWxrIHdoZW4gcmVhY2hpbmcgdGhlCj4+IC0gKiB1bnRpbCBlbnRp
dHkuIFRoaXMgaXMgdXNlZCB0byBkaXNhYmxlIGEgcGFydGlhbGx5IHN0YXJ0ZWQgcGlwZWxpbmUg
ZHVlIHRvIGEKPj4gLSAqIHN1YmRldiBzdGFydCBlcnJvci4KPj4gLSAqLwo+PiAtc3RhdGljIGlu
dCBya2lzcDFfcGlwZWxpbmVfc2lua193YWxrKHN0cnVjdCBtZWRpYV9lbnRpdHkgKmZyb20sCj4+
IC0JCQkJICAgICBzdHJ1Y3QgbWVkaWFfZW50aXR5ICp1bnRpbCwKPj4gLQkJCQkgICAgIGludCAo
KmNiKShzdHJ1Y3QgbWVkaWFfZW50aXR5ICpmcm9tLAo+PiAtCQkJCQkgICAgICAgc3RydWN0IG1l
ZGlhX2VudGl0eSAqY3VycikpCj4+IC17Cj4+IC0Jc3RydWN0IG1lZGlhX2VudGl0eSAqZW50aXR5
ID0gZnJvbTsKPj4gLQlzdHJ1Y3QgbWVkaWFfcGFkICpwYWQ7Cj4+IC0JdW5zaWduZWQgaW50IGk7
Cj4+IC0JaW50IHJldDsKPj4gLQo+PiAtCXdoaWxlICgxKSB7Cj4+IC0JCXBhZCA9IE5VTEw7Cj4+
IC0JCS8qIEZpbmQgcmVtb3RlIHNvdXJjZSBwYWQgKi8KPj4gLQkJZm9yIChpID0gMDsgaSA8IGVu
dGl0eS0+bnVtX3BhZHM7IGkrKykgewo+PiAtCQkJc3RydWN0IG1lZGlhX3BhZCAqc3BhZCA9ICZl
bnRpdHktPnBhZHNbaV07Cj4+IC0KPj4gLQkJCWlmICghKHNwYWQtPmZsYWdzICYgTUVESUFfUEFE
X0ZMX1NJTkspKQo+PiAtCQkJCWNvbnRpbnVlOwo+PiAtCQkJcGFkID0gbWVkaWFfZW50aXR5X3Jl
bW90ZV9wYWQoc3BhZCk7Cj4+IC0JCQlpZiAocGFkICYmIGlzX21lZGlhX2VudGl0eV92NGwyX3N1
YmRldihwYWQtPmVudGl0eSkpCj4+IC0JCQkJYnJlYWs7Cj4+IC0JCX0KPj4gLQkJaWYgKCFwYWQg
fHwgIWlzX21lZGlhX2VudGl0eV92NGwyX3N1YmRldihwYWQtPmVudGl0eSkpCj4+IC0JCQlicmVh
azsKPj4gLQo+PiAtCQllbnRpdHkgPSBwYWQtPmVudGl0eTsKPj4gLQkJaWYgKGVudGl0eSA9PSB1
bnRpbCkKPj4gLQkJCWJyZWFrOwo+PiAtCj4+IC0JCXJldCA9IGNiKGZyb20sIGVudGl0eSk7Cj4+
IC0JCWlmIChyZXQpCj4+IC0JCQlyZXR1cm4gcmV0Owo+PiAtCX0KPj4gLQo+PiAtCXJldHVybiAw
Owo+PiAtfQo+PiAtCj4+IC1zdGF0aWMgaW50IHJraXNwMV9waXBlbGluZV9kaXNhYmxlX2NiKHN0
cnVjdCBtZWRpYV9lbnRpdHkgKmZyb20sCj4+IC0JCQkJICAgICAgc3RydWN0IG1lZGlhX2VudGl0
eSAqY3VycikKPj4gLXsKPj4gLQlzdHJ1Y3QgdjRsMl9zdWJkZXYgKnNkID0gbWVkaWFfZW50aXR5
X3RvX3Y0bDJfc3ViZGV2KGN1cnIpOwo+PiAtCj4+IC0JcmV0dXJuIHY0bDJfc3ViZGV2X2NhbGwo
c2QsIHZpZGVvLCBzX3N0cmVhbSwgZmFsc2UpOwo+PiAtfQo+PiAtCj4+IC1zdGF0aWMgaW50IHJr
aXNwMV9waXBlbGluZV9lbmFibGVfY2Ioc3RydWN0IG1lZGlhX2VudGl0eSAqZnJvbSwKPj4gLQkJ
CQkgICAgIHN0cnVjdCBtZWRpYV9lbnRpdHkgKmN1cnIpCj4+IC17Cj4+IC0Jc3RydWN0IHY0bDJf
c3ViZGV2ICpzZCA9IG1lZGlhX2VudGl0eV90b192NGwyX3N1YmRldihjdXJyKTsKPj4gLQo+PiAt
CXJldHVybiB2NGwyX3N1YmRldl9jYWxsKHNkLCB2aWRlbywgc19zdHJlYW0sIHRydWUpOwo+PiAt
fQo+PiAtCj4+ICBzdGF0aWMgdm9pZCBya2lzcDFfc3RyZWFtX3N0b3Aoc3RydWN0IHJraXNwMV9j
YXB0dXJlICpjYXApCj4+ICB7Cj4+ICAJaW50IHJldDsKPj4gQEAgLTkyOSwxMSArODY0LDcgQEAg
c3RhdGljIHZvaWQgcmtpc3AxX3ZiMl9zdG9wX3N0cmVhbWluZyhzdHJ1Y3QgdmIyX3F1ZXVlICpx
dWV1ZSkKPj4gIAo+PiAgCXJraXNwMV9zdHJlYW1fc3RvcChjYXApOwo+PiAgCW1lZGlhX3BpcGVs
aW5lX3N0b3AoJm5vZGUtPnZkZXYuZW50aXR5KTsKPj4gLQlyZXQgPSBya2lzcDFfcGlwZWxpbmVf
c2lua193YWxrKCZub2RlLT52ZGV2LmVudGl0eSwgTlVMTCwKPj4gLQkJCQkJcmtpc3AxX3BpcGVs
aW5lX2Rpc2FibGVfY2IpOwo+PiAtCWlmIChyZXQpCj4+IC0JCWRldl9lcnIocmtpc3AxLT5kZXYs
Cj4+IC0JCQkicGlwZWxpbmUgc3RyZWFtLW9mZiBmYWlsZWQgZXJyb3I6JWRcbiIsIHJldCk7Cj4+
ICsJdjRsMl9waXBlbGluZV9zdHJlYW1fZGlzYWJsZSgmbm9kZS0+dmRldik7Cj4+ICAKPj4gIAly
a2lzcDFfcmV0dXJuX2FsbF9idWZmZXJzKGNhcCwgVkIyX0JVRl9TVEFURV9FUlJPUik7Cj4+ICAK
Pj4gQEAgLTEwMDUsOCArOTM2LDcgQEAgcmtpc3AxX3ZiMl9zdGFydF9zdHJlYW1pbmcoc3RydWN0
IHZiMl9xdWV1ZSAqcXVldWUsIHVuc2lnbmVkIGludCBjb3VudCkKPj4gIAlya2lzcDFfc3RyZWFt
X3N0YXJ0KGNhcCk7Cj4+ICAKPj4gIAkvKiBzdGFydCBzdWItZGV2aWNlcyAqLwo+PiAtCXJldCA9
IHJraXNwMV9waXBlbGluZV9zaW5rX3dhbGsoZW50aXR5LCBOVUxMLAo+PiAtCQkJCQlya2lzcDFf
cGlwZWxpbmVfZW5hYmxlX2NiKTsKPj4gKwlyZXQgPSB2NGwyX3BpcGVsaW5lX3N0cmVhbV9lbmFi
bGUoJmNhcC0+dm5vZGUudmRldik7Cj4+ICAJaWYgKHJldCkKPj4gIAkJZ290byBlcnJfc3RvcF9z
dHJlYW07Cj4+ICAKPj4gQEAgLTEwMTksNyArOTQ5LDcgQEAgcmtpc3AxX3ZiMl9zdGFydF9zdHJl
YW1pbmcoc3RydWN0IHZiMl9xdWV1ZSAqcXVldWUsIHVuc2lnbmVkIGludCBjb3VudCkKPj4gIAly
ZXR1cm4gMDsKPj4gIAo+PiAgZXJyX3BpcGVfZGlzYWJsZToKPj4gLQlya2lzcDFfcGlwZWxpbmVf
c2lua193YWxrKGVudGl0eSwgTlVMTCwgcmtpc3AxX3BpcGVsaW5lX2Rpc2FibGVfY2IpOwo+PiAr
CXY0bDJfcGlwZWxpbmVfc3RyZWFtX2Rpc2FibGUoZW50aXR5LCAmY2FwLT5ya2lzcDEtPnBpcGUp
Owo+IAo+IFRoaXMgZG9lcyBub3QgbWF0Y2ggdGhlIHByb3RvdHlwZSBmb3IgdjRsMl9waXBlbGlu
ZV9zdHJlYW1fZGlzYWJsZSgpIG9yIAo+IGFtIEkgbWlzc2luZyBzb21ldGhpbmcgPwoKWW91IGFy
ZSByaWdodCwgSSBtdXN0IGhhdmUgbWVzc2VkIHdpdGggbXkgYnJhbmNoZXMsIGJlY2F1c2UgSSdt
IHN1cmUgSSBjb21waWxlZCBhbmQgdGVzdGVkIGl0LgoKVGhhbmtzIGZvciBjYXRjaGluZyB0aGlz
LgpIZWxlbgoKPiAKPj4gIGVycl9zdG9wX3N0cmVhbToKPj4gIAlya2lzcDFfc3RyZWFtX3N0b3Ao
Y2FwKTsKPj4gIAl2NGwyX3BpcGVsaW5lX3BtX3B1dChlbnRpdHkpOwo+PiAtLSAKPj4gMi4yNi4w
Cj4+Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
