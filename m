Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA4C60AE2
	for <lists+linux-rockchip@lfdr.de>; Fri,  5 Jul 2019 19:17:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZI/cxolnOZb+zxJQXNSBuoNy5YIXaKqQeyS0DM4jztQ=; b=hShN+BoP1Nts0/
	M13ceN7treb7rf6teoWWgO1HNQq5ZJKtjiRByUg3W6e5bhskJc1hvsT+dvEIu34+ZGoUgltUMrRUa
	KDwZw77mtJWr3b19UNDt2GkOrjK+XHeo1kRq74PvtJ9wKGrv3iYxaTgS9uBMZCJ3R7oLfP0kNLscK
	lSWEjlVfxRo/MHFFi7r5by5/wW8sOf8m+zTkvvxzBvQQ7yD7j7fjvp67FKHGX2PEHzdiON8aOwayS
	KehubyjCfiHbJ4NIWBcUv4dcO4y+N94LObQCDGMCSuerJsy0uClJqabRIQsBVJEGaJtxKj69zmIH+
	mh3t9KXGtoJbLrhLVIhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjRpy-0008Kf-H4; Fri, 05 Jul 2019 17:17:30 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjRpr-0008J9-36
 for linux-rockchip@lists.infradead.org; Fri, 05 Jul 2019 17:17:29 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id D0F9928B61B;
 Fri,  5 Jul 2019 18:17:19 +0100 (BST)
Date: Fri, 5 Jul 2019 19:17:16 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH 3/9] media: hantro: Constify the control array
Message-ID: <20190705191716.41ea819e@collabora.com>
In-Reply-To: <1fdb3115e6f5903b55a915c45bbfdec484842e83.camel@collabora.com>
References: <20190619121540.29320-1-boris.brezillon@collabora.com>
 <20190619121540.29320-4-boris.brezillon@collabora.com>
 <1fdb3115e6f5903b55a915c45bbfdec484842e83.camel@collabora.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_101727_790518_37D2F6E8 
X-CRM114-Status: GOOD (  16.01  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Nicolas Dufresne <nicolas@ndufresne.ca>, kernel@collabora.com,
 Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Sakari Ailus <sakari.ailus@iki.fi>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Hans Verkuil <hans.verkuil@cisco.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gRnJpLCAwNSBKdWwgMjAxOSAxMzowNToxMCAtMDMwMApFemVxdWllbCBHYXJjaWEgPGV6ZXF1
aWVsQGNvbGxhYm9yYS5jb20+IHdyb3RlOgoKPiBPbiBXZWQsIDIwMTktMDYtMTkgYXQgMTQ6MTUg
KzAyMDAsIEJvcmlzIEJyZXppbGxvbiB3cm90ZToKPiA+IGNvbnRyb2xzW10gaXMgbm90IHN1cHBv
c2VkIHRvIGJlIG1vZGlmaWVkIGF0IHJ1bnRpbWUsIGxldCdzIG1ha2UgaXQKPiA+IGV4cGxpY2l0
IGJ5IGFkZGluZyBhIGNvbnN0IHNwZWNpZmllci4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogQm9y
aXMgQnJlemlsbG9uIDxib3Jpcy5icmV6aWxsb25AY29sbGFib3JhLmNvbT4KPiA+IC0tLQo+ID4g
IGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jIHwgMiArLQo+ID4gIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+ID4gCj4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fZHJ2LmMgYi9kcml2
ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19kcnYuYwo+ID4gaW5kZXggMjhiMGZlZDg5
ZGNiLi5kYjQ5ZDY0M2RkYjcgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEv
aGFudHJvL2hhbnRyb19kcnYuYwo+ID4gKysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRy
by9oYW50cm9fZHJ2LmMKPiA+IEBAIC0yNjQsNyArMjY0LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVj
dCB2NGwyX2N0cmxfb3BzIGhhbnRyb19jdHJsX29wcyA9IHsKPiA+ICAJLnNfY3RybCA9IGhhbnRy
b19zX2N0cmwsCj4gPiAgfTsKPiA+ICAKPiA+IC1zdGF0aWMgc3RydWN0IGhhbnRyb19jdHJsIGNv
bnRyb2xzW10gPSB7Cj4gPiArc3RhdGljIGNvbnN0IHN0cnVjdCBoYW50cm9fY3RybCBjb250cm9s
c1tdID0gewo+ID4gIAl7Cj4gPiAgCQkuaWQgPSBWNEwyX0NJRF9KUEVHX0NPTVBSRVNTSU9OX1FV
QUxJVFksCj4gPiAgCQkuY29kZWMgPSBIQU5UUk9fSlBFR19FTkNPREVSLCAgCj4gCj4gVGhpcyBw
YXRjaCBoZXJlIGJyZWFrcyB0aGUgYnVpbGQ6Cj4gCj4gICBDQyBbTV0gIGRyaXZlcnMvc3RhZ2lu
Zy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5vCj4gL2hvbWUvemV0YS9yZXBvcy9saW51eC9tZWRp
YV90cmVlL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jOiBJbiBmdW5j
dGlvbiDigJhoYW50cm9fY3RybHNfc2V0dXDigJk6Cj4gL2hvbWUvemV0YS9yZXBvcy9saW51eC9t
ZWRpYV90cmVlL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jOjMxOToy
MzogZXJyb3I6IGFzc2lnbm1lbnQgb2YgbWVtYmVyIOKAmGlk4oCZIGluIHJlYWQtb25seSBvYmpl
Y3QKPiAgICAgY29udHJvbHNbaV0uY2ZnLmlkID0gY29udHJvbHNbaV0uaWQ7Cj4gICAgICAgICAg
ICAgICAgICAgICAgICBeCgpPb3BzLCBkaWRuJ3QgY2hlY2sgYmlzZWN0YWJpbGl0eS4KCj4gWW91
IGNhbiBmaXggaXQgYnkgc2ltcGx5IG1vdmluZyBpdCBhZnRlcjoKPiAKPiBbUEFUQ0ggNC85XSBt
ZWRpYTogaGFudHJvOiBTaW1wbGlmeSB0aGUgY29udHJvbHMgY3JlYXRpb24gbG9naWMKClllcCwg
SSdsbCBkbyB0aGF0LgoKVGhhbmtzLAoKQm9yaXMKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
