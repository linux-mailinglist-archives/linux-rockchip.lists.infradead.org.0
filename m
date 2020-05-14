Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 542BE1D3383
	for <lists+linux-rockchip@lfdr.de>; Thu, 14 May 2020 16:51:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l0a27ixRDjzGLu42zdYUyVf4zulryGM8YeRi6P16gJ4=; b=ORFketljMToAUo
	NjW94I0r+mkECfWM3s48iFXH4pwRIR/0MIDAtEuJ12g0lvldCK5lcpggMDhUl3eyBWRGcsI2GvsD/
	gDJgh8XwS+n3Q5IKOpCRfZSLi2M0nCztcX54xNy3qtX0xzCFbjMg0UQAIm9O6arBt5K9/fpKqjJHk
	xU2o9W56Fqw2dBqtnVUSGtyIncg13YtZgm1SgJTzs2hhV9Uf86yiFm7CGLaC/5ZvDwv/u6vhDksg0
	bwtp4bQ+CmyI0SowPidNtRAKTCISG4e0/hqcLLF1pE6nLV3Yu9IweZLn1fWitKFKOUgxjeBUmMuRm
	90xVHO61fiheFhC+zUzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZFCZ-0007uB-Ho; Thu, 14 May 2020 14:51:11 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZFCW-0007tE-C3
 for linux-rockchip@lists.infradead.org; Thu, 14 May 2020 14:51:09 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: nicolas) with ESMTPSA id AA0282A2B4B
Message-ID: <7cd2e6ba4da315ba61878db9e80a10cda8daeb12.camel@collabora.com>
Subject: Re: [PATCH v3 1/3] media: rkvdec: Fix .buf_prepare
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Date: Thu, 14 May 2020 10:50:53 -0400
In-Reply-To: <20200505134110.3435-2-ezequiel@collabora.com>
References: <20200505134110.3435-1-ezequiel@collabora.com>
 <20200505134110.3435-2-ezequiel@collabora.com>
User-Agent: Evolution 3.36.1 (3.36.1-1.fc32) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_075108_543166_797AF5E6 
X-CRM114-Status: GOOD (  17.97  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, Tomasz Figa <tfiga@chromium.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, gustavo.padovan@collabora.com,
 Jeffrey Kardatzke <jkardatzke@chromium.org>, kernel@collabora.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

TGUgbWFyZGkgMDUgbWFpIDIwMjAgw6AgMTA6NDEgLTAzMDAsIEV6ZXF1aWVsIEdhcmNpYSBhIMOp
Y3JpdCA6Cj4gVGhlIGRyaXZlciBzaG91bGQgb25seSBzZXQgdGhlIHBheWxvYWQgb24gLmJ1Zl9w
cmVwYXJlCj4gaWYgdGhlIGJ1ZmZlciBpcyBDQVBUVVJFIHR5cGUsIG9yIGlmIGFuIE9VVFBVVCBi
dWZmZXIKPiBoYXMgYSB6ZXJvZWQgcGF5bG9hZC4KPiAKPiBGaXggaXQuCj4gCj4gRml4ZXM6IGNk
MzNjODMwNDQ4YmEgKCJtZWRpYTogcmt2ZGVjOiBBZGQgdGhlIHJrdmRlYyBkcml2ZXIiKQo+IFNp
Z25lZC1vZmYtYnk6IEV6ZXF1aWVsIEdhcmNpYSA8ZXplcXVpZWxAY29sbGFib3JhLmNvbT4KPiAt
LS0KPiAgZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMuYyB8IDEwICsrKysrKysr
Ky0KPiAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy5jCj4gYi9k
cml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy5jCj4gaW5kZXggMjI1ZWVjYTczMzU2
Li40ZGYyYTI0OGFiOTYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRl
Yy9ya3ZkZWMuYwo+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLmMK
PiBAQCAtNDU2LDcgKzQ1NiwxNSBAQCBzdGF0aWMgaW50IHJrdmRlY19idWZfcHJlcGFyZShzdHJ1
Y3QgdmIyX2J1ZmZlciAqdmIpCj4gIAkJaWYgKHZiMl9wbGFuZV9zaXplKHZiLCBpKSA8IHNpemVp
bWFnZSkKPiAgCQkJcmV0dXJuIC1FSU5WQUw7Cj4gIAl9Cj4gLQl2YjJfc2V0X3BsYW5lX3BheWxv
YWQodmIsIDAsIGYtPmZtdC5waXhfbXAucGxhbmVfZm10WzBdLnNpemVpbWFnZSk7Cj4gKwo+ICsJ
LyoKPiArCSAqIEJ1ZmZlcidzIGJ5dGVzdXNlZCBpcyB3cml0dGVuIGJ5IHRoZSBkcml2ZXIgZm9y
IENBUFRVUkUgYnVmZmVycywKPiArCSAqIG9yIGlmIHRoZSBhcHBsaWNhdGlvbiBwYXNzZWQgemVy
byBieXRlc3VzZWQgb24gYW4gT1VUUFVUIGJ1ZmZlci4KPiArCSAqLwo+ICsJaWYgKCFWNEwyX1RZ
UEVfSVNfT1VUUFVUKHZxLT50eXBlKSB8fAo+ICsJICAgIChWNEwyX1RZUEVfSVNfT1VUUFVUKHZx
LT50eXBlKSAmJiAhdmIyX2dldF9wbGFuZV9wYXlsb2FkKHZiLCAwKSkpCj4gKwkJdmIyX3NldF9w
bGFuZV9wYXlsb2FkKHZiLCAwLAo+ICsJCQkJICAgICAgZi0+Zm10LnBpeF9tcC5wbGFuZV9mbXRb
MF0uc2l6ZWltYWdlKTsKCkkgYmVsaWV2ZSB0aGUgc3BlYyBsYWNrcyBhIGJpdCBvZiBhIGNsYXJp
ZmljYXRpb24uIENvbnZlcnRpbmcgZnJvbSAwIHRvCnNpemVpbWFnZSBzaG91bGQgb25seSBiZSBh
bGxvd2VkIGZvciBSQVcgaW1hZ2VzLiBTbyBJIHdvdWxkIGxpa2UgdG8gc3VnZ2VzdCB0bwpjaGFu
Z2UgdGhpcyBmaXggaW50bzoKCi0JdmIyX3NldF9wbGFuZV9wYXlsb2FkKHZiLCAwLCBmLT5mbXQu
cGl4X21wLnBsYW5lX2ZtdFswXS5zaXplaW1hZ2UpOworCisJLyogQnVmZmVyJ3MgYnl0ZXN1c2Vk
IGlzIHdyaXR0ZW4gYnkgdGhlIGRyaXZlciBmb3IgQ0FQVFVSRSBidWZmZXJzICovCisJaWYgKCFW
NEwyX1RZUEVfSVNfT1VUUFVUKHZxLT50eXBlKSkKKwkJdmIyX3NldF9wbGFuZV9wYXlsb2FkKHZi
LCAwLAorCQkJCSAgICAgIGYtPmZtdC5waXhfbXAucGxhbmVfZm10WzBdLnNpemVpbWFnZSk7CgpB
bmQgdGhlbiB3ZSBjYW4gZml4IHRoZSBzcGVjIGFjY29yZGluZ2x5LiBOb3RlIHRoYXQgbmVpZ2h0
ZXIgRkZNUEVHIG9yIEdTdHJlYW1lcgp3aWxsIHBhc3MgZW1wdHkgKHplcm8gc2l6ZWQpIHBheWxv
YWQgYXQgdGhlIG1vbWVudCwgYW5kIGlmIGl0IGRpZCwgaXQgd291bGQgYmUgYQpidWcsIGFuZCB0
aGUgcGF5bG9hZCBzaG91bGQgaW5zdGVhZCBiZSBpZ25vcmVkLgoKPiAgCXJldHVybiAwOwo+ICB9
Cj4gIAo+IC0tIAo+IDIuMjYuMC5yYzIKPiAKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
