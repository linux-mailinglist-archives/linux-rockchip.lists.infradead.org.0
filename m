Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D2F19F5C3
	for <lists+linux-rockchip@lfdr.de>; Mon,  6 Apr 2020 14:27:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IolgBN5EMsvA+wT4ziQJ9xAt290shPgZI6riz9bUMBk=; b=IfqtydraVWdTZP
	AybOvvcpgKhVLdPDoSpZvcqgqpXVubVECa1NhDbGHKrIJO/MRPlxmck1wHoisw+xU/pV204pBENhc
	9judVSwlaRipv3sJt6dHCiwPcF5/cy0Q74I6Qp/BfYZ5ZJHGCri1sPBJTNvqd60DjlKUdvTwp2fG+
	nJz8tcEY8T6x7rPF2kn722+/FzuuhANjVxTF0c37TVvkn1cLdsfmI8TygCatKJ0Ls2A5SQ+vBvSOL
	4gvgxA9b56zU/BlybxFuHf9nwmyun+I6p/4eoRzLvyKJNJkZToVC70wJb8x3NqqRVPU4NfbKwcaAp
	Mb4fgWPibQl/v0VVlKAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLQqU-0005k0-Bp; Mon, 06 Apr 2020 12:27:18 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLQqR-0005iv-0l
 for linux-rockchip@lists.infradead.org; Mon, 06 Apr 2020 12:27:16 +0000
Received: from [IPv6:2804:431:e7cc:377d:dcf4:aab0:a7bd:9880] (unknown
 [IPv6:2804:431:e7cc:377d:dcf4:aab0:a7bd:9880])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: koike)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 155482934A8;
 Mon,  6 Apr 2020 13:27:09 +0100 (BST)
Subject: Re: [PATCH v2 4/5] media: staging: rkisp1: cap: support uv swapped
 plane formats
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
References: <20200402190419.15155-1-dafna.hirschfeld@collabora.com>
 <20200402190419.15155-5-dafna.hirschfeld@collabora.com>
 <20200405181623.GQ5846@pendragon.ideasonboard.com>
 <e3b8728b-7146-30b5-2312-1b4cbac52c27@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <bd60332d-ceea-1ba9-5ab9-b9dc4883a7cd@collabora.com>
Date: Mon, 6 Apr 2020 09:27:05 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <e3b8728b-7146-30b5-2312-1b4cbac52c27@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_052715_190731_5E58E2BF 
X-CRM114-Status: GOOD (  17.08  )
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
Cc: dafna3@gmail.com, hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 kernel@collabora.com, ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGksCgpPbiA0LzYvMjAgODo1NiBBTSwgRGFmbmEgSGlyc2NoZmVsZCB3cm90ZToKPiAKPiAKPiBP
biA0LzUvMjAgODoxNiBQTSwgTGF1cmVudCBQaW5jaGFydCB3cm90ZToKPj4gSGkgRGFmbmEsCj4+
Cj4+IFRoYW5rIHlvdSBmb3IgdGhlIHBhdGNoLgo+Pgo+PiBPbiBUaHUsIEFwciAwMiwgMjAyMCBh
dCAwOTowNDoxOFBNICswMjAwLCBEYWZuYSBIaXJzY2hmZWxkIHdyb3RlOgo+Pj4gUGxhbmUgZm9y
bWF0cyB3aXRoIHRoZSB1IGFuZCB2IHBsYW5lcyBzd2FwcGVkIGNhbiBiZQo+Pj4gc3VwcG9ydGVk
IGJ5IGNoYW5naW5nIHRoZSBhZGRyZXNzIG9mIHRoZSBjYiBhbmQgY3IgaW4KPj4+IHRoZSBidWZm
ZXIuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogRGFmbmEgSGlyc2NoZmVsZCA8ZGFmbmEuaGlyc2No
ZmVsZEBjb2xsYWJvcmEuY29tPgo+Pj4gQWNrZWQtYnk6IEhlbGVuIEtvaWtlIDxoZWxlbi5rb2lr
ZUBjb2xsYWJvcmEuY29tPgo+Pj4gLS0tCj4+PiDCoCBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmtp
c3AxL3JraXNwMS1jYXB0dXJlLmMgfCAxNyArKysrKysrKysrKysrKysrKwo+Pj4gwqAgMSBmaWxl
IGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKykKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9z
dGFnaW5nL21lZGlhL3JraXNwMS9ya2lzcDEtY2FwdHVyZS5jIGIvZHJpdmVycy9zdGFnaW5nL21l
ZGlhL3JraXNwMS9ya2lzcDEtY2FwdHVyZS5jCj4+PiBpbmRleCBmYTI4NDkyMDk0MzMuLjJkMjc0
ZThmNTY1YiAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya2lzcDEvcmtp
c3AxLWNhcHR1cmUuYwo+Pj4gKysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3JraXNwMS9ya2lz
cDEtY2FwdHVyZS5jCj4+PiBAQCAtNDEsNiArNDEsMTAgQEAKPj4+IMKgwqDCoMKgwqAgKCgod3Jp
dGVfZm9ybWF0KSA9PSBSS0lTUDFfTUlfQ1RSTF9NUF9XUklURV9ZVVZfU1BMQSkgfHzCoMKgwqAg
XAo+Pj4gwqDCoMKgwqDCoMKgICgod3JpdGVfZm9ybWF0KSA9PSBSS0lTUDFfTUlfQ1RSTF9TUF9X
UklURV9TUExBKSkKPj4+IMKgICsjZGVmaW5lIFJLSVNQMV9JU19QTEFOQVIod3JpdGVfZm9ybWF0
KcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFwKPj4+ICvCoMKgwqAgKCgo
d3JpdGVfZm9ybWF0KSA9PSBSS0lTUDFfTUlfQ1RSTF9TUF9XUklURV9QTEEpIHx8wqDCoMKgwqDC
oMKgwqAgXAo+Pj4gK8KgwqDCoMKgICgod3JpdGVfZm9ybWF0KSA9PSBSS0lTUDFfTUlfQ1RSTF9N
UF9XUklURV9ZVVZfUExBX09SX1JBVzgpKQo+Pj4gKwo+Pj4gwqAgZW51bSBya2lzcDFfcGxhbmUg
ewo+Pj4gwqDCoMKgwqDCoCBSS0lTUDFfUExBTkVfWcKgwqDCoCA9IDAsCj4+PiDCoMKgwqDCoMKg
IFJLSVNQMV9QTEFORV9DQsKgwqDCoCA9IDEsCj4+PiBAQCAtNzg4LDYgKzc5MiwxOSBAQCBzdGF0
aWMgdm9pZCBya2lzcDFfdmIyX2J1Zl9xdWV1ZShzdHJ1Y3QgdmIyX2J1ZmZlciAqdmIpCj4+PiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBya2lzcDFfcGl4Zm10X2NvbXBfc2l6ZShwaXhtLCBS
S0lTUDFfUExBTkVfQ0IpOwo+Pj4gwqDCoMKgwqDCoCB9Cj4+PiDCoCArwqDCoMKgIC8qCj4+PiAr
wqDCoMKgwqAgKiB1diBzd2FwIGNhbiBiZSBzdXBwb3J0ZWQgZm9yIHBsYW5lIGZvcm1hdHMgYnkg
c3dpdGNoaW5nCj4+PiArwqDCoMKgwqAgKiB0aGUgYWRkcmVzcyBvZiBjYiBhbmQgY3IKPj4+ICvC
oMKgwqDCoCAqLwo+Pj4gK8KgwqDCoCBpZiAoUktJU1AxX0lTX1BMQU5BUihjYXAtPnBpeC5jZmct
PndyaXRlX2Zvcm1hdCkgJiYKPj4KPj4gQXMgY29tbWVudGVkIG9uIHBhdGNoIDMvNSwgY291bGQg
dGhpcyBiZSBjaGVja2VkIGZyb20gdGhlIGRhdGEgaW4KPj4gdjRsMl9mb3JtYXRfaW5mbyA/Cj4g
eWVzCj4+Cj4+PiArwqDCoMKgwqDCoMKgwqAgY2FwLT5waXguY2ZnLT51dl9zd2FwKSB7Cj4+PiAr
wqDCoMKgwqDCoMKgwqAgaXNwYnVmLT5idWZmX2FkZHJbUktJU1AxX1BMQU5FX0NSXSA9Cj4+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpc3BidWYtPmJ1ZmZfYWRkcltSS0lTUDFfUExBTkVfQ0Jd
Owo+Pj4gK8KgwqDCoMKgwqDCoMKgIGlzcGJ1Zi0+YnVmZl9hZGRyW1JLSVNQMV9QTEFORV9DQl0g
PQo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaXNwYnVmLT5idWZmX2FkZHJbUktJU1AxX1BM
QU5FX0NSXSArCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBya2lzcDFfcGl4Zm10X2NvbXBf
c2l6ZShwaXhtLCBSS0lTUDFfUExBTkVfQ1IpOwoKQWN0dWFsbHkgdGhpcyBpcyB3cm9uZyBpZiBw
aXhtLT5udW1fcGxhbmVzICE9IDEsIHNpbmNlIHRoZXkgYXJlIGRpZmZlcmVudCBidWZmZXJzLgoK
Pj4KPj4gSG93IGFib3V0Cj4+Cj4+IMKgwqDCoMKgwqDCoMKgIHN3YXAoaXNwYnVmLT5idWZmX2Fk
ZHJbUktJU1AxX1BMQU5FX0NSXSwKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlzcGJ1Zi0+
YnVmZl9hZGRyW1JLSVNQMV9QTEFORV9DQl0pOwo+Pgo+PiA/Cj4gVGhpcyBhbHNvIHdvcmtzLCB0
aGVvcmV0aWNhbGx5IGlmIHRoZXJlIHdhcyBhIGZvcm1hdCB3aGVyZSB0aGUgQ2IsIENyIHBsYW5l
cwo+IGFyZSBub3QgZXF1YWwgc2l6ZSB0aGVuIGEgc3dhcCB3aWxsIG5vdCB3b3JrLgoKSWYgeW91
IGNoZWNrIHJraXNwMV9maWxsX3BpeGZtdCgpLCB5b3UnbGwgc2VlIHRoYXQgdGhleSBhcmUgZXF1
YWwgc2l6ZS4KaGRpdiBhbmQgdmRpdiBhcHBsaWVzIHRvIGJvdGguCgpUaGFuayB5b3UgTGF1cmVu
dCBmb3IgdGhlIHJldmlldyBhbmQgdGhhbmsgeW91IERhZm5hIGZvciB3b3JraW5nIG9uIHRoaXMu
CgpSZWdhcmRzLApIZWxlbgoKPiAKPiBUaGFua3MsCj4gRGFmbmEKPj4KPj4+ICvCoMKgwqAgfQo+
Pj4gKwo+Pj4gwqDCoMKgwqDCoCBzcGluX2xvY2tfaXJxc2F2ZSgmY2FwLT5idWYubG9jaywgZmxh
Z3MpOwo+Pj4gwqAgwqDCoMKgwqDCoCAvKgo+Pgo+IAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
