Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B0AAA6625
	for <lists+linux-rockchip@lfdr.de>; Tue,  3 Sep 2019 11:56:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9koiY0BjfZJcREBmxIu5Qlty0Ljpm8YtSfCxf1Pqdrg=; b=YHk12dPyCJdEHk
	T333S7lu+L6fA4SXD9aoWVrTy1lbpEyvo6tBHgqWRDBvQDHGhw7nf7fabXDZiAutjeQd2xQH8qbT5
	UjWv2Z8oAAszpv/Gb3svQKICf/TighVdAGuR3wgKyCKdrDHq7uOvt6cYRms1bEpDzW9ft/3Wq/tPi
	SBxXJ+S+D/ICx2DLQDXbn1PCALZyoOfgIPBrvbSw8tpnOVMph8PhvaewYyD8S0KonpOSLRMPwVGVb
	QYNQx9H1BKzF9wq/bUss2HDvtAcwbUlGl6vRuPkUku2NVp2tFs+d6Q5aqbD210w0asXreGpWwkfbr
	eynjirxvYhnBpFiJ8JBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i55YR-0003SY-6e; Tue, 03 Sep 2019 09:56:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i55YN-0003SA-Cy
 for linux-rockchip@lists.infradead.org; Tue, 03 Sep 2019 09:56:49 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1i55YG-0000fO-Qa; Tue, 03 Sep 2019 11:56:40 +0200
Message-ID: <1567504599.5229.1.camel@pengutronix.de>
Subject: Re: [PATCH 02/12] media: hantro: Do not reorder H264 scaling list
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Jonas Karlman <jonas@kwiboo.se>, Ezequiel Garcia <ezequiel@collabora.com>
Date: Tue, 03 Sep 2019 11:56:39 +0200
In-Reply-To: <HE1PR06MB4011A8F99D58E5ACFAE3CECAACBE0@HE1PR06MB4011.eurprd06.prod.outlook.com>
References: <HE1PR06MB40117D0EE96E6FA638A04B78ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <20190901124531.23645-1-jonas@kwiboo.se>
 <HE1PR06MB40116C92C3D52C5957EF48E9ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <1567432843.3666.6.camel@pengutronix.de>
 <HE1PR06MB4011A8F99D58E5ACFAE3CECAACBE0@HE1PR06MB4011.eurprd06.prod.outlook.com>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_025647_443956_AE470641 
X-CRM114-Status: GOOD (  20.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gTW9uLCAyMDE5LTA5LTAyIGF0IDE2OjE4ICswMDAwLCBKb25hcyBLYXJsbWFuIHdyb3RlOgo+
IE9uIDIwMTktMDktMDIgMTY6MDAsIFBoaWxpcHAgWmFiZWwgd3JvdGU6Cj4gPiBIaSBKb25hcywK
PiA+IAo+ID4gT24gU3VuLCAyMDE5LTA5LTAxIGF0IDEyOjQ1ICswMDAwLCBKb25hcyBLYXJsbWFu
IHdyb3RlOgo+ID4gPiBTY2FsaW5nIGxpc3Qgc3VwcGxpZWQgZnJvbSB1c2Vyc3BhY2UgdXNpbmcg
ZmZtcGVnIGFuZCBsaWJ2YS12NGwyLXJlcXVlc3QKPiA+ID4gaXMgYWxyZWFkeSBpbiBtYXRyaXgg
b3JkZXIgYW5kIGNhbiBiZSB1c2VkIHdpdGhvdXQgYXBwbHlpbmcgdGhlIGludmVyc2UKPiA+ID4g
c2Nhbm5pbmcgcHJvY2Vzcy4KPiA+IAo+ID4gImluIG1hdHJpeCBvcmRlciIgaXMgZXF1aXZhbGVu
dCB0byAiaW4gcmFzdGVyIHNjYW4gb3JkZXIiPwo+IAo+IFRoZSB2YWx1ZXMgc3VwcGxpZWQgYnkg
ZmZtcGVnIGFuZCBsaWJ2YS12NGwyLXJlcXVlc3QgaXMgaW4gdGhlIG9yZGVyIGFmdGVyIHRoZQo+
IGludmVyc2Ugc2Nhbm5pbmcgcHJvY2VzcyBoYXMgYmVlbiBhcHBsaWVkIChzY2FsaW5nIGxpc3Qg
aGFzIGJlZW4gdHJhbnNmb3JtZWQKPiBpbnRvIGEgc2NhbGluZyBtYXRyaXgpLiBOb3Qgc3VyZSB3
aGF0IHRoaXMgaXMgY2FsbGVkLCAibWF0cml4IG9yZGVyIiBzZWVtZWQKPiBjbG9zZSBlbm91Z2gu
CgpPaywgYWZ0ZXIgcmVhZGluZyBjaGFwdGVycwoKOC41LjYgSW52ZXJzZSBzY2FubmluZyBwcm9j
ZXNzIGZvciA0eDQgdHJhbnNmb3JtIGNvZWZmaWNpZW50cyBhbmQgc2NhbGluZyBsaXN0cwo4LjUu
NyBJbnZlcnNlIHNjYW5uaW5nIHByb2Nlc3MgZm9yIDh4OCB0cmFuc2Zvcm0gY29lZmZpY2llbnRz
IGFuZCBzY2FsaW5nIGxpc3RzCgpvZiBJVFUtVCBSZWMuIEguMjY0LCB0aGlzIHNlZW1zIGNsZWFy
IGVub3VnaC4gSSBqdXN0IGFza2VkIHRvIG1ha2Ugc3VyZSwKYmVjYXVzZSBsaWJ2YSBkb2N1bWVu
dGF0aW9uIHVzZXMgdGhlwqB0ZXJtICJyYXN0ZXIgc2NhbiIgWzFdLgoKWzFdIGh0dHA6Ly9pbnRl
bC5naXRodWIuaW8vbGlidmEvc3RydWN0VkFJUU1hdHJpeEJ1ZmZlckgyNjQuaHRtbAoKPiBTaW5j
ZSB0aGVyZSBpcyB0d28gc2NhbiBvcmRlcnMsIHppZy16YWcgYW5kIGZpZWxkLCBhbmQgY2VkcnVz
IGFscmVhZHkgZXhwZWN0aW5nCj4gdGhlIHZhbHVlcyBpbiAibWF0cml4IiBvcmRlciwgaXQgc2Vl
bXMgbW9yZSBsb2dpY2FsIHRvIGxldCB1c2Vyc3BhY2UgaGFuZGxlIHRoZQo+IGludmVyc2Ugc2Nh
bm5pbmcgcHJvY2Vzcy4KCkkgYWdyZWUuCgpbLi4uXQo+ID4gVGhpcyBjaGFuZ2VzIHRoZSBzaXpl
IG9mIHN0cnVjdCBoYW50cm9faDI2NF9kZWNfcHJpdl90YmwuIERpZCB0aGlzCj4gPiBkZXNjcmli
ZSB0aGUgYXV4aWxpYXJ5IGJ1ZmZlciBmb3JtYXQgaW5jb3JyZWN0bHkgYmVmb3JlPwo+IAo+IEJh
c2VkIG9uIFJLTVBQIGFuZCBIYW50cm8gU0RLIHRoZSBIVyBleHBlY3RzIHRoZSA4eDggaW50ZXIv
aW50cmEgbGlzdCBmb3IKPiBZLWNvbXBvbmVudCB0byBiZSBsb2NhdGVkIGF0IGluZGljZXMgMCBh
bmQgMSwgbGlzdHMgZm9yIENyL0NiIGlzIG9ubHkgdXNlZCBmb3IKPiA0OjQ6NCBhbmQgSFcgb25s
eSBzdXBwb3J0cyA0OjA6MC80OjI6MCBpZiBJIGFtIG5vdCBtaXN0YWtlbi4gU28gdGhlIHVudXNl
ZAo+IGV4dHJhIDQgbGlzdHMgYXQgdGhlIGVuZCBvZiB0aGUgYXV4aWxpYXJ5IGJ1ZmZlciBzZWVt
ZWQgbGlrZSBhIHdhc3RlLAo+IGFsc28gUktNUFAgYW5kIEhhbnRybyBTREsgb25seSBzZWVtZWQg
dG8gYWxsb2NhdGUgc3BhY2UgZm9yIDIgbGlzdHMuCgpPay4KCj4gPiBBZnRlciB0aGlzIGNoYW5n
ZSwgdGhlIHNlY29uZCA4eDggc2NhbGluZyBsaXN0IGhhcyBtb3ZlZCB0byBhIGRpZmZlcmVudAo+
ID4gb2Zmc2V0LiBJcyB0aGlzIHdoZXJlIHRoZSBoYXJkd2FyZSBoYXMgYWx3YXlzIGJlZW4gbG9v
a2luZyBmb3IgaXQsIG9yIGlzCj4gPiB0aGVyZSBhIGNoYW5nZSBtaXNzaW5nIGluIGFub3RoZXIg
cGxhY2U/Cj4gCj4gQXMgbWVudGlvbmVkIGFib3ZlIEhXIG9ubHkgbG9va3MgYXQgaW5kaWNlcyAw
IGFuZCAxLCBhbmQgZmZtcGVnIHdpbGwgc3RvcmUgdGhlCj4gaW50ZXIvaW50cmEgWSBsaXN0IGF0
IGluZGljZXMgMCBhbmQgMyBhcyBzZWVuIGF0IFsxXSwgaW4gc2ltaWxhciB3YXkgY2VkcnVzIG9u
bHkKPiB1c2UgaW5kaWNlcyAwIGFuZCAzIGF0IFsyXS4KPiBGRm1wZWcgbWVtY3B5IGVudGlyZSBz
Y2FsaW5nX21hdHJpeDggdG8gc2NhbGluZ19saXN0Xzh4OCBmb3IgdjRsMi1yZXF1ZXN0LWFwaQo+
IGFuZCBtZW1jcHkgc2NhbGluZ19tYXRyaXg4WzBdIGFuZCBzY2FsaW5nX21hdHJpeDhbM10gZm9y
IHZhYXBpLgo+IAo+IFlvdSBjYW4gc2VlIHRoZSBlZmZlY3Qgb2YgdGhpcyBwYXRjaCB1c2luZyB0
aGUgaDI2NF90aXZvX3NhbXBsZS50cyBzYW1wbGUgZnJvbQo+IGNvdmVyIGxldHRlciwgcGF0Y2gg
My04IG11c3QgYmUgYXBwbGllZC4gV2l0aCB0aGlzIHBhdGNoIGFwcGxpZWQgdGhlIGdyZWVuCj4g
Zm9vdGJhbGwgZmllbGQgd2lsbCBzdGF5IGdyZWVuLCB3aXRob3V0IHRoZSBwYXRjaCB0aGUgZmll
bGQgd2lsbCBzaGlmdCBpbiBjb2xvcnMuCj4gCj4gWzFdIGh0dHBzOi8vZ2l0aHViLmNvbS9GRm1w
ZWcvRkZtcGVnL2Jsb2IvbWFzdGVyL2xpYmF2Y29kZWMvaDI2NF9wcy5jI0wyOTktTDMwOAo+IFsy
XSBodHRwczovL2dpdC5saW51eHR2Lm9yZy9tZWRpYV90cmVlLmdpdC90cmVlL2RyaXZlcnMvc3Rh
Z2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2gyNjQuYyNuMjMxCgpUaGFuayB5b3UsIEkn
bGwgdHJ5IHRoaXMuCgpyZWdhcmRzClBoaWxpcHAKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
