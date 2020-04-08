Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D35391A1EBC
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 Apr 2020 12:25:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5GjXbXm3UgH2QKSGOyxwRLQehyzqOu3ILED7rskzELE=; b=UuKBllI4/Fy3e98oE4TH0TUZO
	uBeBRRUsn+L7wICyuM2Mpwa0ZH2GJHepPPovS3bC92XixpExrsfHMmO8DdRlwZcN2OJ7EfPRU5LyC
	bizSQYBxR3jS+nG5vobAt0xTQQbZ92XScC4TPoWgU8lE9S+ESQwnPYgNW++OOZl7/D8GH6cccJdLz
	jc+ADQWwzBypnJtNS14UTaolgsNgnoADPBZsahqdUtpYcHwqhQAvOlmrXr5OziZ0uaHp5aC6AHJPF
	jV9vszBjuPZktGMrDlzEefAygXBTrIFz11XbO1eE4LCcO3HWU5ivbaLZBOMWP8SR6pzqgUlfL5Xml
	1CiQNcoBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM7tC-00008F-14; Wed, 08 Apr 2020 10:24:58 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM7t8-00007r-RU
 for linux-rockchip@lists.infradead.org; Wed, 08 Apr 2020 10:24:56 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 0795C290619
Subject: Re: [PATCH v2 5/5] media: staging: rkisp1: cap: remove unsupported
 formats
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
References: <20200402190419.15155-1-dafna.hirschfeld@collabora.com>
 <20200402190419.15155-6-dafna.hirschfeld@collabora.com>
 <20200405224357.GR5846@pendragon.ideasonboard.com>
 <a6ec9713-77e8-05e1-2a55-f58bca1dc853@collabora.com>
Message-ID: <c3ec53ec-6709-b1d7-4d46-c36089595857@collabora.com>
Date: Wed, 8 Apr 2020 12:24:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <a6ec9713-77e8-05e1-2a55-f58bca1dc853@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_032455_021639_47F240F5 
X-CRM114-Status: GOOD (  15.17  )
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
Cc: dafna3@gmail.com, hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, kernel@collabora.com, ezequiel@collabora.com,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

CgpPbiA0LzYvMjAgMjo0MiBQTSwgRGFmbmEgSGlyc2NoZmVsZCB3cm90ZToKPiAKPiAKPiBPbiA0
LzYvMjAgMTI6NDMgQU0sIExhdXJlbnQgUGluY2hhcnQgd3JvdGU6Cj4+IEhpIERhZm5hLAo+Pgo+
PiBUaGFuayB5b3UgZm9yIHRoZSBwYXRjaC4KPj4KPj4gT24gVGh1LCBBcHIgMDIsIDIwMjAgYXQg
MDk6MDQ6MTlQTSArMDIwMCwgRGFmbmEgSGlyc2NoZmVsZCB3cm90ZToKPj4+IEZvciBZY2JjciBw
YWNrZWQgZm9ybWF0cyBvbmx5IFlVWVYgY2FuIGJlIHN1cHBvcnRlZCBieQo+Pj4gdGhlIGRyaXZl
ci4gVGhpcyBwYXRjaCByZW1vdmVzIHRoZSBvdGhlciBmb3JtYXRzLgo+Pgo+PiBUaGUgUktJU1Ax
X0NJRl9NSV9CWVRFX1NXQVAgYml0IGNvdWxkIHBvc3NpYmx5IGhlbHAgYWNoaWV2aW5nIG90aGVy
IFlVVgo+PiBvcmRlcnMsIGJ1dCBhcyBmYXIgYXMgSSBjYW4gdGVsbCwgaXQgd291bGQgYWZmZWN0
IGJvdGggdGhlIG1haW4gcGF0aCBhbmQKPj4gdGhlIHNlbGYgcGF0aCwgc28gaXQgd291bGRuJ3Qg
YmUgdmVyeSBjb252ZW5pZW50LiBBdCBhIHF1aWNrIGdsYW5jZSBJCj4+IGhhdmVuJ3QgZm91bmQg
YSB3YXkgdG8gc3VwcG9ydCB0aG9zZSBmb3JtYXRzLCBidXQganVzdCB0byBtYWtlIHN1cmUsCj4+
IGhhdmUgeW91IGRvdWJsZS1jaGVja2VkIHRoYXQgdGhlIG52MjFfc2VsZiBhbmQgbnYyMV9tYWlu
IGJpdHMgb2YKPj4gTUlfWFREX0ZPUk1BVF9DVFJMIGRvbid0IGFsc28gYWZmZWN0IHBhY2tlZCBt
b2RlID8gSWYgdGhleSBkb24ndCwKPiBIaSwgdGhhbmtzIGEgbG90IGZvciB0aGUgcmV2aWV3cywg
SSdsbCBjaGVjayB0aGF0LgpIaSwgdW5mb3J0dW5hdGVseSBNSV9YVERfRk9STUFUX0NUUkwgZG9l
c24ndCBhZmZlY3QgdGhlIHRoZSBwYWNrZWQgZm9ybWF0cy4KCkRhZm5hCj4gCj4gRGFmbmEKPj4K
Pj4gUmV2aWV3ZWQtYnk6IExhdXJlbnQgUGluY2hhcnQgPGxhdXJlbnQucGluY2hhcnRAaWRlYXNv
bmJvYXJkLmNvbT4KPj4KPj4+IFNpZ25lZC1vZmYtYnk6IERhZm5hIEhpcnNjaGZlbGQgPGRhZm5h
LmhpcnNjaGZlbGRAY29sbGFib3JhLmNvbT4KPj4+IEFja2VkLWJ5OiBIZWxlbiBLb2lrZSA8aGVs
ZW4ua29pa2VAY29sbGFib3JhLmNvbT4KPj4+IC0tLQo+Pj4gwqAgZHJpdmVycy9zdGFnaW5nL21l
ZGlhL3JraXNwMS9ya2lzcDEtY2FwdHVyZS5jIHwgMjEgLS0tLS0tLS0tLS0tLS0tLS0tLQo+Pj4g
wqAgMSBmaWxlIGNoYW5nZWQsIDIxIGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3N0YWdpbmcvbWVkaWEvcmtpc3AxL3JraXNwMS1jYXB0dXJlLmMgYi9kcml2ZXJzL3N0
YWdpbmcvbWVkaWEvcmtpc3AxL3JraXNwMS1jYXB0dXJlLmMKPj4+IGluZGV4IDJkMjc0ZThmNTY1
Yi4uMDc2MzM1MTkzZjQwIDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3Jr
aXNwMS9ya2lzcDEtY2FwdHVyZS5jCj4+PiArKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmtp
c3AxL3JraXNwMS1jYXB0dXJlLmMKPj4+IEBAIC05OCwxNSArOTgsNiBAQCBzdGF0aWMgY29uc3Qg
c3RydWN0IHJraXNwMV9jYXB0dXJlX2ZtdF9jZmcgcmtpc3AxX21wX2ZtdHNbXSA9IHsKPj4+IMKg
wqDCoMKgwqDCoMKgwqDCoCAuZm10X3R5cGUgPSBSS0lTUDFfRk1UX1lVViwKPj4+IMKgwqDCoMKg
wqDCoMKgwqDCoCAudXZfc3dhcCA9IDAsCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgLndyaXRlX2Zv
cm1hdCA9IFJLSVNQMV9NSV9DVFJMX01QX1dSSVRFX1lVVklOVCwKPj4+IC3CoMKgwqAgfSwgewo+
Pj4gLcKgwqDCoMKgwqDCoMKgIC5mb3VyY2MgPSBWNEwyX1BJWF9GTVRfWVZZVSwKPj4+IC3CoMKg
wqDCoMKgwqDCoCAuZm10X3R5cGUgPSBSS0lTUDFfRk1UX1lVViwKPj4+IC3CoMKgwqDCoMKgwqDC
oCAudXZfc3dhcCA9IDEsCj4+PiAtwqDCoMKgwqDCoMKgwqAgLndyaXRlX2Zvcm1hdCA9IFJLSVNQ
MV9NSV9DVFJMX01QX1dSSVRFX1lVVklOVCwKPj4+IC3CoMKgwqAgfSwgewo+Pj4gLcKgwqDCoMKg
wqDCoMKgIC5mb3VyY2MgPSBWNEwyX1BJWF9GTVRfVllVWSwKPj4+IC3CoMKgwqDCoMKgwqDCoCAu
Zm10X3R5cGUgPSBSS0lTUDFfRk1UX1lVViwKPj4+IC3CoMKgwqDCoMKgwqDCoCAud3JpdGVfZm9y
bWF0ID0gUktJU1AxX01JX0NUUkxfTVBfV1JJVEVfWVVWSU5ULAo+Pj4gwqDCoMKgwqDCoCB9LCB7
Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgLmZvdXJjYyA9IFY0TDJfUElYX0ZNVF9ZVVY0MjJQLAo+
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIC5mbXRfdHlwZSA9IFJLSVNQMV9GTVRfWVVWLAo+Pj4gQEAg
LTIzNCwxOCArMjI1LDYgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBya2lzcDFfY2FwdHVyZV9mbXRf
Y2ZnIHJraXNwMV9zcF9mbXRzW10gPSB7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgLnV2X3N3YXAg
PSAwLAo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIC53cml0ZV9mb3JtYXQgPSBSS0lTUDFfTUlfQ1RS
TF9TUF9XUklURV9JTlQsCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgLm91dHB1dF9mb3JtYXQgPSBS
S0lTUDFfTUlfQ1RSTF9TUF9PVVRQVVRfWVVWNDIyLAo+Pj4gLcKgwqDCoCB9LCB7Cj4+PiAtwqDC
oMKgwqDCoMKgwqAgLmZvdXJjYyA9IFY0TDJfUElYX0ZNVF9ZVllVLAo+Pj4gLcKgwqDCoMKgwqDC
oMKgIC5mbXRfdHlwZSA9IFJLSVNQMV9GTVRfWVVWLAo+Pj4gLcKgwqDCoMKgwqDCoMKgIC51dl9z
d2FwID0gMSwKPj4+IC3CoMKgwqDCoMKgwqDCoCAud3JpdGVfZm9ybWF0ID0gUktJU1AxX01JX0NU
UkxfU1BfV1JJVEVfSU5ULAo+Pj4gLcKgwqDCoMKgwqDCoMKgIC5vdXRwdXRfZm9ybWF0ID0gUktJ
U1AxX01JX0NUUkxfU1BfT1VUUFVUX1lVVjQyMiwKPj4+IC3CoMKgwqAgfSwgewo+Pj4gLcKgwqDC
oMKgwqDCoMKgIC5mb3VyY2MgPSBWNEwyX1BJWF9GTVRfVllVWSwKPj4+IC3CoMKgwqDCoMKgwqDC
oCAuZm10X3R5cGUgPSBSS0lTUDFfRk1UX1lVViwKPj4+IC3CoMKgwqDCoMKgwqDCoCAudXZfc3dh
cCA9IDEsCj4+PiAtwqDCoMKgwqDCoMKgwqAgLndyaXRlX2Zvcm1hdCA9IFJLSVNQMV9NSV9DVFJM
X1NQX1dSSVRFX0lOVCwKPj4+IC3CoMKgwqDCoMKgwqDCoCAub3V0cHV0X2Zvcm1hdCA9IFJLSVNQ
MV9NSV9DVFJMX1NQX09VVFBVVF9ZVVY0MjIsCj4+PiDCoMKgwqDCoMKgIH0sIHsKPj4+IMKgwqDC
oMKgwqDCoMKgwqDCoCAuZm91cmNjID0gVjRMMl9QSVhfRk1UX1lVVjQyMlAsCj4+PiDCoMKgwqDC
oMKgwqDCoMKgwqAgLmZtdF90eXBlID0gUktJU1AxX0ZNVF9ZVVYsCj4+CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
