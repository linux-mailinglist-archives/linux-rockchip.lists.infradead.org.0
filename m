Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E12917B0C5
	for <lists+linux-rockchip@lfdr.de>; Thu,  5 Mar 2020 22:38:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WuH9pSO1AfO4QvrUtRShiBTe12xw1Z4meFXYSJB7T3g=; b=ErZfVXYg5CINZ6
	FrAM0rDwYe6OJT+sk55qygKLl4ZQmpFCgn3xtYUPM5pGa+hcPxa82tmXUilh4pewOuPVlTjeBYY0n
	0WqhBjomiW1Rn/9W1Lg1bAESdxxA/bOWJjyBmHcCxqr3k3y6Vn+ODzhAjoz1FUlJFkjRnwwUeZZEZ
	SnAJKXDj65Q87mxOssLJNzU20Sf2QXBHpSHDb5z2hYaF1dc4lZxCZC36QmQ+EDysE96ZUPbuQ4z0d
	fu8TsNimk5lhgnzPcg5osmgolpthz9TZZ76Qv0q0qaCE+Srt7n19qN1SJYTdcG5tf5FRuXHPJU3aP
	hSbA8BV57aINJFB81PGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9yBw-0000Ug-HT; Thu, 05 Mar 2020 21:38:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9yBs-0000Ty-Lm
 for linux-rockchip@lists.infradead.org; Thu, 05 Mar 2020 21:38:02 +0000
Received: from coco.lan (ip5f5ad4e9.dynamic.kabel-deutschland.de
 [95.90.212.233])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3F0192072A;
 Thu,  5 Mar 2020 21:37:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583444279;
 bh=yzdmROVoTcnH2uJKy6mKkDhIXA05EsrK9nODytG0Iis=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=O3/pH4N1qeN9EWMQcscxR6Rm3w5KfJfGwdYcRrC0eGAexPcif+iRAMsSFA7cJ0s01
 bG0p5dM8t5ySaLPCRe9EoWM3LSGEDdGOsf0vHKX4Dr2W9uWjrITydrAwMaEgFS4sxA
 9F5/inXSJbn2qlrzfq/A35AmELPjRV/hW54ox8UM=
Date: Thu, 5 Mar 2020 22:37:50 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v6 2/6] media: v4l2-core: Add helpers to build the H264
 P/B0/B1 reflists
Message-ID: <20200305223750.14514063@coco.lan>
In-Reply-To: <20200305211535.2e9a6673@collabora.com>
References: <20200220163016.21708-1-ezequiel@collabora.com>
 <20200220163016.21708-3-ezequiel@collabora.com>
 <20200302142433.0ad1b383@coco.lan>
 <20200302154426.5fb09f91@collabora.com>
 <c7a88abfaf00c00a5c4c4239d1d9c7b348bc052e.camel@ndufresne.ca>
 <20200305211535.2e9a6673@collabora.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_133800_781123_9703D0FE 
X-CRM114-Status: GOOD (  29.96  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, kernel@collabora.com,
 Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel@vger.kernel.org, Nicolas Dufresne <nicolas@ndufresne.ca>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Sakari Ailus <sakari.ailus@iki.fi>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, Tomasz Figa <tfiga@chromium.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

RW0gVGh1LCA1IE1hciAyMDIwIDIxOjE1OjM1ICswMTAwCkJvcmlzIEJyZXppbGxvbiA8Ym9yaXMu
YnJlemlsbG9uQGNvbGxhYm9yYS5jb20+IGVzY3JldmV1OgoKPiBPbiBUaHUsIDA1IE1hciAyMDIw
IDE0OjQyOjM0IC0wNTAwCj4gTmljb2xhcyBEdWZyZXNuZSA8bmljb2xhc0BuZHVmcmVzbmUuY2E+
IHdyb3RlOgo+IAo+ID4gTGUgbHVuZGkgMDIgbWFycyAyMDIwIMOgIDE1OjQ0ICswMTAwLCBCb3Jp
cyBCcmV6aWxsb24gYSDDqWNyaXQgOiAgCj4gPiA+IE9uIE1vbiwgMiBNYXIgMjAyMCAxNDoyNDoz
MyArMDEwMAo+ID4gPiBNYXVybyBDYXJ2YWxobyBDaGVoYWIgPG1jaGVoYWIraHVhd2VpQGtlcm5l
bC5vcmc+IHdyb3RlOgo+ID4gPiAgICAgCj4gPiA+ID4gRW0gVGh1LCAyMCBGZWIgMjAyMCAxMzoz
MDoxMiAtMDMwMAo+ID4gPiA+IEV6ZXF1aWVsIEdhcmNpYSA8ZXplcXVpZWxAY29sbGFib3JhLmNv
bT4gZXNjcmV2ZXU6Cj4gPiA+ID4gICAgIAo+ID4gPiA+ID4gRnJvbTogQm9yaXMgQnJlemlsbG9u
IDxib3Jpcy5icmV6aWxsb25AY29sbGFib3JhLmNvbT4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gQnVp
bGRpbmcgdGhvc2UgbGlzdCBpcyBhIHN0YW5kYXJkIHByb2NlZHVyZSBkZXNjcmliZWQgaW4gc2Vj
dGlvbgo+ID4gPiA+ID4gJzguMi40IERlY29kaW5nIHByb2Nlc3MgZm9yIHJlZmVyZW5jZSBwaWN0
dXJlIGxpc3RzIGNvbnN0cnVjdGlvbicgb2YKPiA+ID4gPiA+IHRoZSBIMjY0IHNwZWNpZmljYXRp
b24uCj4gPiA+ID4gPiAKPiA+ID4gPiA+IFdlIGFscmVhZHkgaGF2ZSAyIGRyaXZlcnMgbmVlZGlu
ZyB0aGUgc2FtZSBsb2dpYyAoaGFudHJvIGFuZCBya3ZkZWMpIGFuZAo+ID4gPiA+ID4gSSBzdXNw
ZWN0IHdlIHdpbGwgc29vbiBoYXZlIG1vcmUuCj4gPiA+ID4gPiAKPiA+ID4gPiA+IExldCdzIHBy
b3ZpZGUgZ2VuZXJpYyBoZWxwZXJzIHRvIGNyZWF0ZSB0aG9zZSBsaXN0cy4KPiA+ID4gPiA+IAo+
ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogQm9yaXMgQnJlemlsbG9uIDxib3Jpcy5icmV6aWxsb25A
Y29sbGFib3JhLmNvbT4KPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEV6ZXF1aWVsIEdhcmNpYSA8
ZXplcXVpZWxAY29sbGFib3JhLmNvbT4KPiA+ID4gPiA+IC0tLQo+ID4gPiA+ID4gIGRyaXZlcnMv
bWVkaWEvdjRsMi1jb3JlL0tjb25maWcgICAgIHwgICA0ICsKPiA+ID4gPiA+ICBkcml2ZXJzL21l
ZGlhL3Y0bDItY29yZS9NYWtlZmlsZSAgICB8ICAgMSArCj4gPiA+ID4gPiAgZHJpdmVycy9tZWRp
YS92NGwyLWNvcmUvdjRsMi1oMjY0LmMgfCAyNTggKysrKysrKysrKysrKysrKysrKysrKysrKysr
Kwo+ID4gPiA+ID4gIGluY2x1ZGUvbWVkaWEvdjRsMi1oMjY0LmggICAgICAgICAgIHwgIDg1ICsr
KysrKysrKwo+ID4gPiA+ID4gIDQgZmlsZXMgY2hhbmdlZCwgMzQ4IGluc2VydGlvbnMoKykKPiA+
ID4gPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9tZWRpYS92NGwyLWNvcmUvdjRsMi1o
MjY0LmMKPiA+ID4gPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgaW5jbHVkZS9tZWRpYS92NGwyLWgy
NjQuaAo+ID4gPiA+ID4gCj4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS92NGwy
LWNvcmUvS2NvbmZpZyBiL2RyaXZlcnMvbWVkaWEvdjRsMi0KPiA+ID4gPiA+IGNvcmUvS2NvbmZp
Zwo+ID4gPiA+ID4gaW5kZXggMzllM2ZiMzBiYTBiLi44YTRjY2ZiY2E4Y2YgMTAwNjQ0Cj4gPiA+
ID4gPiAtLS0gYS9kcml2ZXJzL21lZGlhL3Y0bDItY29yZS9LY29uZmlnCj4gPiA+ID4gPiArKysg
Yi9kcml2ZXJzL21lZGlhL3Y0bDItY29yZS9LY29uZmlnCj4gPiA+ID4gPiBAQCAtNDUsNiArNDUs
MTAgQEAgY29uZmlnIFZJREVPX1BDSV9TS0VMRVRPTgo+ID4gPiA+ID4gIGNvbmZpZyBWSURFT19U
VU5FUgo+ID4gPiA+ID4gIAl0cmlzdGF0ZQo+ID4gPiA+ID4gIAo+ID4gPiA+ID4gKyMgVXNlZCBi
eSBkcml2ZXJzIHRoYXQgbmVlZCB2NGwyLWgyNjQua28KPiA+ID4gPiA+ICtjb25maWcgVjRMMl9I
MjY0Cj4gPiA+ID4gPiArCXRyaXN0YXRlCj4gPiA+ID4gPiArCj4gPiA+ID4gPiAgIyBVc2VkIGJ5
IGRyaXZlcnMgdGhhdCBuZWVkIHY0bDItbWVtMm1lbS5rbwo+ID4gPiA+ID4gIGNvbmZpZyBWNEwy
X01FTTJNRU1fREVWCj4gPiA+ID4gPiAgCXRyaXN0YXRlCj4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9tZWRpYS92NGwyLWNvcmUvTWFrZWZpbGUgYi9kcml2ZXJzL21lZGlhL3Y0bDItCj4g
PiA+ID4gPiBjb3JlL01ha2VmaWxlCj4gPiA+ID4gPiBpbmRleCA3ODZiZDFlYzRkMWIuLmM1YzUz
ZTA5NDFhZCAxMDA2NDQKPiA+ID4gPiA+IC0tLSBhL2RyaXZlcnMvbWVkaWEvdjRsMi1jb3JlL01h
a2VmaWxlCj4gPiA+ID4gPiArKysgYi9kcml2ZXJzL21lZGlhL3Y0bDItY29yZS9NYWtlZmlsZQo+
ID4gPiA+ID4gQEAgLTIxLDYgKzIxLDcgQEAgb2JqLSQoQ09ORklHX1ZJREVPX1Y0TDIpICs9IHY0
bDItZHYtdGltaW5ncy5vCj4gPiA+ID4gPiAgb2JqLSQoQ09ORklHX1ZJREVPX1RVTkVSKSArPSB0
dW5lci5vCj4gPiA+ID4gPiAgCj4gPiA+ID4gPiAgb2JqLSQoQ09ORklHX1Y0TDJfTUVNMk1FTV9E
RVYpICs9IHY0bDItbWVtMm1lbS5vCj4gPiA+ID4gPiArb2JqLSQoQ09ORklHX1Y0TDJfSDI2NCkg
Kz0gdjRsMi1oMjY0Lm8KPiA+ID4gPiA+ICAKPiA+ID4gPiA+ICBvYmotJChDT05GSUdfVjRMMl9G
TEFTSF9MRURfQ0xBU1MpICs9IHY0bDItZmxhc2gtbGVkLWNsYXNzLm8KPiA+ID4gPiA+ICAKPiA+
ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3Y0bDItY29yZS92NGwyLWgyNjQuYyBi
L2RyaXZlcnMvbWVkaWEvdjRsMi0KPiA+ID4gPiA+IGNvcmUvdjRsMi1oMjY0LmMKPiA+ID4gPiA+
IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gPiA+ID4gPiBpbmRleCAwMDAwMDAwMDAwMDAuLjRmNjhj
MjdlYzdmZAo+ID4gPiA+ID4gLS0tIC9kZXYvbnVsbAo+ID4gPiA+ID4gKysrIGIvZHJpdmVycy9t
ZWRpYS92NGwyLWNvcmUvdjRsMi1oMjY0LmMKPiA+ID4gPiA+IEBAIC0wLDAgKzEsMjU4IEBACj4g
PiA+ID4gPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKPiA+ID4gPiA+ICsv
Kgo+ID4gPiA+ID4gKyAqIFY0TDIgSDI2NCBoZWxwZXJzLgo+ID4gPiA+ID4gKyAqCj4gPiA+ID4g
PiArICogQ29weXJpZ2h0IChDKSAyMDE5IENvbGxhYm9yYSwgTHRkLgo+ID4gPiA+ID4gKyAqCj4g
PiA+ID4gPiArICogQXV0aG9yOiBCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xs
YWJvcmEuY29tPgo+ID4gPiA+ID4gKyAqLwo+ID4gPiA+ID4gKwo+ID4gPiA+ID4gKyNpbmNsdWRl
IDxsaW51eC9tb2R1bGUuaD4KPiA+ID4gPiA+ICsjaW5jbHVkZSA8bGludXgvc29ydC5oPgo+ID4g
PiA+ID4gKwo+ID4gPiA+ID4gKyNpbmNsdWRlIDxtZWRpYS92NGwyLWgyNjQuaD4KPiA+ID4gPiA+
ICsKPiA+ID4gPiA+ICsvKioKPiA+ID4gPiA+ICsgKiB2NGwyX2gyNjRfaW5pdF9yZWZsaXN0X2J1
aWxkZXIoKSAtIEluaXRpYWxpemUgYSBQL0IwL0IxIHJlZmVyZW5jZSBsaXN0Cj4gPiA+ID4gPiAr
ICoJCQkJICAgICAgYnVpbGRlcgo+ID4gPiA+ID4gKyAqCj4gPiA+ID4gPiArICogQGI6IHRoZSBi
dWlsZGVyIGNvbnRleHQgdG8gaW5pdGlhbGl6ZQo+ID4gPiA+ID4gKyAqIEBkZWNfcGFyYW1zOiBk
ZWNvZGUgcGFyYW1ldGVycyBjb250cm9sCj4gPiA+ID4gPiArICogQHNsaWNlX3BhcmFtczogZmly
c3Qgc2xpY2UgcGFyYW1ldGVycyBjb250cm9sCj4gPiA+ID4gPiArICogQHNwczogU1BTIGNvbnRy
b2wKPiA+ID4gPiA+ICsgKiBAZHBiOiBEUEIgdG8gdXNlIHdoZW4gY3JlYXRpbmcgdGhlIHJlZmVy
ZW5jZSBsaXN0Cj4gPiA+ID4gPiArICovCj4gPiA+ID4gPiArdm9pZAo+ID4gPiA+ID4gK3Y0bDJf
aDI2NF9pbml0X3JlZmxpc3RfYnVpbGRlcihzdHJ1Y3QgdjRsMl9oMjY0X3JlZmxpc3RfYnVpbGRl
ciAqYiwKPiA+ID4gPiA+ICsJCWNvbnN0IHN0cnVjdCB2NGwyX2N0cmxfaDI2NF9kZWNvZGVfcGFy
YW1zICpkZWNfcGFyYW1zLAo+ID4gPiA+ID4gKwkJY29uc3Qgc3RydWN0IHY0bDJfY3RybF9oMjY0
X3NsaWNlX3BhcmFtcyAqc2xpY2VfcGFyYW1zLAo+ID4gPiA+ID4gKwkJY29uc3Qgc3RydWN0IHY0
bDJfY3RybF9oMjY0X3NwcyAqc3BzLAo+ID4gPiA+ID4gKwkJY29uc3Qgc3RydWN0IHY0bDJfaDI2
NF9kcGJfZW50cnkgKmRwYikgICAgICAKPiA+ID4gPiAKPiA+ID4gPiBUaGUgcHJvdG90eXBlIGhl
cmUgaXMgbm90IG5pY2UuLi4KPiA+ID4gPiAgICAgCj4gPiA+ID4gPiArewo+ID4gPiA+ID4gKwlp
bnQgY3VyX2ZyYW1lX251bSwgbWF4X2ZyYW1lX251bTsKPiA+ID4gPiA+ICsJdW5zaWduZWQgaW50
IGk7Cj4gPiA+ID4gPiArCj4gPiA+ID4gPiArCW1heF9mcmFtZV9udW0gPSAxIDw8IChzcHMtPmxv
ZzJfbWF4X2ZyYW1lX251bV9taW51czQgKyA0KTsKPiA+ID4gPiA+ICsJY3VyX2ZyYW1lX251bSA9
IHNsaWNlX3BhcmFtcy0+ZnJhbWVfbnVtOwo+ID4gPiA+ID4gKwo+ID4gPiA+ID4gKwltZW1zZXQo
YiwgMCwgc2l6ZW9mKCpiKSk7Cj4gPiA+ID4gPiArCWlmICghKHNsaWNlX3BhcmFtcy0+ZmxhZ3Mg
JiBWNEwyX0gyNjRfU0xJQ0VfRkxBR19GSUVMRF9QSUMpKQo+ID4gPiA+ID4gKwkJYi0+Y3VyX3Bp
Y19vcmRlcl9jb3VudCA9IG1pbihkZWNfcGFyYW1zLT5ib3R0b21fZmllbGRfb3JkZXJfY250LAo+
ID4gPiA+ID4gKwkJCQkJICAgICBkZWNfcGFyYW1zLT50b3BfZmllbGRfb3JkZXJfY250KTsKPiA+
ID4gPiA+ICsJZWxzZSBpZiAoc2xpY2VfcGFyYW1zLT5mbGFncyAmIFY0TDJfSDI2NF9TTElDRV9G
TEFHX0JPVFRPTV9GSUVMRCkKPiA+ID4gPiA+ICsJCWItPmN1cl9waWNfb3JkZXJfY291bnQgPSBk
ZWNfcGFyYW1zLT5ib3R0b21fZmllbGRfb3JkZXJfY250Owo+ID4gPiA+ID4gKwllbHNlCj4gPiA+
ID4gPiArCQliLT5jdXJfcGljX29yZGVyX2NvdW50ID0gZGVjX3BhcmFtcy0+dG9wX2ZpZWxkX29y
ZGVyX2NudDsKPiA+ID4gPiA+ICsKPiA+ID4gPiA+ICsJZm9yIChpID0gMDsgaSA8IDE2OyBpKysp
IHsKPiA+ID4gPiA+ICsJCXUzMiBwaWNfb3JkZXJfY291bnQ7Cj4gPiA+ID4gPiArCj4gPiA+ID4g
PiArCQlpZiAoIShkcGJbaV0uZmxhZ3MgJiBWNEwyX0gyNjRfRFBCX0VOVFJZX0ZMQUdfQUNUSVZF
KSkKPiA+ID4gPiA+ICsJCQljb250aW51ZTsKPiA+ID4gPiA+ICsKPiA+ID4gPiA+ICsJCWItPnJl
ZnNbaV0ucGljX251bSA9IGRwYltpXS5waWNfbnVtOyAgICAgIAo+ID4gPiA+IAo+ID4gPiA+IC4u
LiBhcyB5b3UncmUgZXhwZWN0aW5nIGEgZml4ZWQgbnVtYmVyIG9mIGVsZW1lbnRzIGF0IERQQiBh
cnJheSwgYW5kIHVzaW5nCj4gPiA+ID4gYSBtYWdpYyBudW1iZXIgKDE2KSBpbnNpZGUgdGhlIGZv
ciBsb29wLiAgICAKPiA+ID4gCj4gPiA+IEkgdXNlZCB0byBoYXZlIGEgJyNkZWZpbmUgVjRMMl9I
MjY0X05VTV9EUEJfRU5UUklFUyAxNicgYnV0IGhhdmUgYmVlbgo+ID4gPiB0b2xkIHRoYXQgdGhp
cyBpcyBhbiBhcmJpdHJhcnkgbGltaXRhdGlvbiAodGhlIHNwZWMgZG9lcyBub3QgZXhwbGljaXRs
eQo+ID4gPiBsaW1pdCB0aGUgRFBCIHNpemUsIGV2ZW4gaWYgYWxsIHRoZSBIVyB3ZSd2ZSBzZWVu
IHNlZW0gdG8gbGltaXQgaXQgdG8KPiA+ID4gMTYpLiBNYXliZSB3ZSBjYW4gcGFzcyB0aGUgRFBC
IGFycmF5IHNpemUgYXMgYW4gYXJndW1lbnQgc28gaXQgc3RheXMKPiA+ID4gSFctc3BlY2lmaWMu
ICAgIAo+ID4gCj4gPiBpdCdzIGZvcm1hbGl6ZWQgaW4gQS4zMSBoKSwgdG8gcXVvdGUgaXQ6Cj4g
PiAKPiA+IG1heF9kZWNfZnJhbWVfYnVmZmVyaW5nIDw9IE1heERwYkZyYW1lcywgd2hlcmUgTWF4
RHBiRnJhbWVzIGlzIGVxdWFsIHRvCj4gPiAKPiA+ICAgTWluKCBNYXhEcGJNYnMgLyAoIFBpY1dp
ZHRoSW5NYnMgKiBGcmFtZUhlaWdodEluTWJzICksIDE2ICkKPiA+IAo+ID4gU28gYSBEUEIgbGFy
Z2VyIHRoZW4gdGhpcyBpcyBub3QgYW4gSC4yNCBEUEIuICAKPiAKPiBNeSBiYWQsIEkgbWl4ZWQg
Im1heCBudW1iZXIgb2Ygc2xpY2VzIHBlciBmcmFtZSIgYW5kICJtYXggbnVtYmVyIG9mCj4gZW50
cmllcyBpbiB0aGUgRFBCIi4gVGhlIGZpcnN0IG9uZSBJIGNvdWxkbid0IGZpbmQgYSBjbGVhciBh
bnN3ZXIgdG8sCj4gd2hpbGUgdGhlIHNlY29uZCBvbmUgaGFzIGJlZW4gMTYgZnJvbSB0aGUgc3Rh
cnQuIFNvcnJ5IGZvciB0aGUKPiBjb25mdXNpb24uCgpXZWxsLCBuZXdlciB2ZXJzaW9ucyBvZiB0
aGUgc3BlYyBtaWdodCBjaGFuZ2UgaXQuIEluIGFueSBjYXNlLCBJIGd1ZXNzCmEgZGVmaW5lIHNo
b3VsZCB3b3JrIHByb3Blcmx5LiBJZiB0aGUgc3BlYyBpcyBldmVyIHVwZGF0ZWQgdG8gYWNjZXB0
CmEgYmlnZ2VyIG51bWJlciwgYSBzaW1wbGUgY2hhbmdlIGF0IHRoZSBkZWZpbmUgd291bGQgYmUg
ZW5vdWdoIHRvCnNvbHZlLgoKVGhhbmtzLApNYXVybwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
