Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30082609F1
	for <lists+linux-rockchip@lfdr.de>; Fri,  5 Jul 2019 18:05:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F3CO1YvZZNvsv/Z4RYH9U4ctyrfXIn9xxrVi3GArM3g=; b=G9QHm69URGcdKI
	i2CNy+CLle3S9ZwmzjAo8I2R/2pQFP9XgRVUI/a+LrlTaC8UDrs0BhQ2c+QhhrMe8Rg/GHXEi40Eu
	LqDj0q3EiVyslUJOER43PXozBER9hVpNPVErK1UQemyinUu27mX1xSw6/SyOOfFFn0//6kWVJCdtJ
	pzAnx0jziaXsfhmrdtcCXuZvvsOHaMmD0HFWbshYttXztnGRZkJZ4JzNh+Dq8w3mNgqHgIW2y/J80
	19AA7u4mhVA/11smX7hIOijKSXk2S0QVv15hQ5G3OUj1NJdQqDQoTtsBGdGo5rxyaIJnJMpZQRPoT
	a0SbppD8qVFw7/MCF5Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjQiC-0006Pe-4p; Fri, 05 Jul 2019 16:05:24 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjQi8-0006PH-QC
 for linux-rockchip@lists.infradead.org; Fri, 05 Jul 2019 16:05:22 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id BF778263AA0
Message-ID: <1fdb3115e6f5903b55a915c45bbfdec484842e83.camel@collabora.com>
Subject: Re: [PATCH 3/9] media: hantro: Constify the control array
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Boris Brezillon <boris.brezillon@collabora.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Hans Verkuil <hans.verkuil@cisco.com>, Laurent
 Pinchart <laurent.pinchart@ideasonboard.com>, Sakari Ailus
 <sakari.ailus@iki.fi>,  linux-media@vger.kernel.org
Date: Fri, 05 Jul 2019 13:05:10 -0300
In-Reply-To: <20190619121540.29320-4-boris.brezillon@collabora.com>
References: <20190619121540.29320-1-boris.brezillon@collabora.com>
 <20190619121540.29320-4-boris.brezillon@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_090520_980977_7BB940C0 
X-CRM114-Status: GOOD (  11.65  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Tomasz Figa <tfiga@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, Nicolas Dufresne <nicolas@ndufresne.ca>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Andrew Morton <akpm@linux-foundation.org>, kernel@collabora.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gV2VkLCAyMDE5LTA2LTE5IGF0IDE0OjE1ICswMjAwLCBCb3JpcyBCcmV6aWxsb24gd3JvdGU6
Cj4gY29udHJvbHNbXSBpcyBub3Qgc3VwcG9zZWQgdG8gYmUgbW9kaWZpZWQgYXQgcnVudGltZSwg
bGV0J3MgbWFrZSBpdAo+IGV4cGxpY2l0IGJ5IGFkZGluZyBhIGNvbnN0IHNwZWNpZmllci4KPiAK
PiBTaWduZWQtb2ZmLWJ5OiBCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJv
cmEuY29tPgo+IC0tLQo+ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19kcnYu
YyB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0p
Cj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Ry
di5jIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fZHJ2LmMKPiBpbmRleCAy
OGIwZmVkODlkY2IuLmRiNDlkNjQzZGRiNyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcv
bWVkaWEvaGFudHJvL2hhbnRyb19kcnYuYwo+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9o
YW50cm8vaGFudHJvX2Rydi5jCj4gQEAgLTI2NCw3ICsyNjQsNyBAQCBzdGF0aWMgY29uc3Qgc3Ry
dWN0IHY0bDJfY3RybF9vcHMgaGFudHJvX2N0cmxfb3BzID0gewo+ICAJLnNfY3RybCA9IGhhbnRy
b19zX2N0cmwsCj4gIH07Cj4gIAo+IC1zdGF0aWMgc3RydWN0IGhhbnRyb19jdHJsIGNvbnRyb2xz
W10gPSB7Cj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaGFudHJvX2N0cmwgY29udHJvbHNbXSA9IHsK
PiAgCXsKPiAgCQkuaWQgPSBWNEwyX0NJRF9KUEVHX0NPTVBSRVNTSU9OX1FVQUxJVFksCj4gIAkJ
LmNvZGVjID0gSEFOVFJPX0pQRUdfRU5DT0RFUiwKClRoaXMgcGF0Y2ggaGVyZSBicmVha3MgdGhl
IGJ1aWxkOgoKICBDQyBbTV0gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Ry
di5vCi9ob21lL3pldGEvcmVwb3MvbGludXgvbWVkaWFfdHJlZS9kcml2ZXJzL3N0YWdpbmcvbWVk
aWEvaGFudHJvL2hhbnRyb19kcnYuYzogSW4gZnVuY3Rpb24g4oCYaGFudHJvX2N0cmxzX3NldHVw
4oCZOgovaG9tZS96ZXRhL3JlcG9zL2xpbnV4L21lZGlhX3RyZWUvZHJpdmVycy9zdGFnaW5nL21l
ZGlhL2hhbnRyby9oYW50cm9fZHJ2LmM6MzE5OjIzOiBlcnJvcjogYXNzaWdubWVudCBvZiBtZW1i
ZXIg4oCYaWTigJkgaW4gcmVhZC1vbmx5IG9iamVjdAogICAgY29udHJvbHNbaV0uY2ZnLmlkID0g
Y29udHJvbHNbaV0uaWQ7CiAgICAgICAgICAgICAgICAgICAgICAgXgpZb3UgY2FuIGZpeCBpdCBi
eSBzaW1wbHkgbW92aW5nIGl0IGFmdGVyOgoKW1BBVENIIDQvOV0gbWVkaWE6IGhhbnRybzogU2lt
cGxpZnkgdGhlIGNvbnRyb2xzIGNyZWF0aW9uIGxvZ2ljCgpSZWdhcmRzLApFemVxdWllbAoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
