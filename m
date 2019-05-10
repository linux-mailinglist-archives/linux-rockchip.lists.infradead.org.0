Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E35B019EB3
	for <lists+linux-rockchip@lfdr.de>; Fri, 10 May 2019 16:07:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MuPuIYyma1uTP9rhgqtO6BlNtNRvEjkxzvcGEs8+VJM=; b=n/Ffm9eWRgwWSE
	UwFR6THMerlwzYo51QqVHLDKULpwSWSRO5H2Z+Z4+r4k0w1snVrMYgL/F7UCfWmR408FLkc9ughAx
	xmYFZ3cefvKe3FKh3LsXLIi5s03T/pqIgJI8skOAMXgWzgzB/T6ARWs32edRM2GZm2KtCXq019Wne
	e5H2GdwX3rTXEDMK59joJprj3xKQSkjTUq5l8GiVf6ZsW1ikCpWOD2z/H2PHR18qvrpFY2Xykyv6n
	wAd0WC95YR6hXL30WPLcA+B2D8xaoRxZ+ztJf43TjjTS9Tw6VP0ZJTCJhsQQTi8AkJtZgcVEa0m/p
	cLRbI+LpsxKqlDUZ6HhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP6Bg-0002y4-3J; Fri, 10 May 2019 14:07:48 +0000
Received: from lb1-smtp-cloud9.xs4all.net ([194.109.24.22])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP6Ba-0002sZ-IM
 for linux-rockchip@lists.infradead.org; Fri, 10 May 2019 14:07:44 +0000
Received: from [IPv6:2001:983:e9a7:1:2dea:e21e:760a:b215]
 ([IPv6:2001:983:e9a7:1:2dea:e21e:760a:b215])
 by smtp-cloud9.xs4all.net with ESMTPA
 id P6BUhf94HsDWyP6BVhcq7O; Fri, 10 May 2019 16:07:37 +0200
Subject: Re: [PATCH v5 03/15] media: v4l2-common: Support custom
 imagesize/bytesperline in fill_pixfmt()
To: Nicolas Dufresne <nicolas@ndufresne.ca>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
References: <20190503114719.28784-1-boris.brezillon@collabora.com>
 <20190503114719.28784-4-boris.brezillon@collabora.com>
 <0c5a648c-27a8-8195-8ad9-8cefb4369837@xs4all.nl>
 <20190510112847.GA4972@pendragon.ideasonboard.com>
 <c2d02ffb-5273-67a8-1a3a-c7268dc7bfb6@xs4all.nl>
 <20190510122411.GB4972@pendragon.ideasonboard.com>
 <f9ffc9ae-2c27-2883-7f62-9931597c8e75@xs4all.nl>
 <106a6aa5fe62cf5b18652b667d15bc8677790cad.camel@ndufresne.ca>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <4e7f49b2-48ad-b504-5826-d993ba85e624@xs4all.nl>
Date: Fri, 10 May 2019 16:07:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <106a6aa5fe62cf5b18652b667d15bc8677790cad.camel@ndufresne.ca>
Content-Language: en-US
X-CMAE-Envelope: MS4wfO6FoDNjsoODniI2jH1jwnFcVeqCrvtZuLfOif/DBTUuibcQ/7Cjf2dNxrIdV/Z3a+NAbDEXCAWuGPKlAg9nxB3N9531ex1lRHAPhMAp6iiszPLxHgx3
 iDEpM5DAwZy5myrO0kMGNQUl/K+qihnzOQbjh/+/7p5C6+v+GCtG/FR1AjQQLdES+BkcarQkb51+tcuFqkEzsiZYcYzbACcY5wP39TPWYQaDCMQmeDwycOYO
 KnJLA61VM0bo2D7ZASPb4VGUj413bMxSL09RxiAbyeEFc84ugIzkdG7PlzEd9Ztv3dvIMzq8NwRk3t5OUTKctf5FwmLr3wvzWgo7hu5t3/AkHzSY+pi8FhHP
 Q5bylaeUVVxr6EWvwhgNYA9BSr9wTDA09r47QCycF8H8/qvVj7LtRuJoWyPi6LZx9yUucWCPbcZok3q4NXEdujEyDWC5OHNPp/zF4FKGBLWHyxVhzuHJv1w7
 XkY3fYXOtKGI+2GUBDP0p5vXz66hLkJ9RNaZNL7wS9pbqiJJs+f1cvI4Y561BKDKrTugLgcWQm3qHipjZ3FzoaIwb2W/hEFRXRuwq1+DaYWYVSBrpMrP3USa
 ig2PT6N/3qXX6sdPxj488Z34UQF55aqYhzT1yYDdJyoDq9z62rbxelRe4PieUplAI3dccExNvOxjOEWE30ZMvH4qfRfabifKly8uzuUt6ctwRIKrhwBHyXye
 VqFcBahC0mYJdvl0hytS2bPb1uVYzsgBcMm17OuAhvyLKycUj8IZYwUBuLE1h7Pa88idyo21sKg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_070742_767453_C04FE96A 
X-CRM114-Status: GOOD (  20.75  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.22 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: kernel@collabora.com, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Sakari Ailus <sakari.ailus@iki.fi>, Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gNS8xMC8xOSAzOjUxIFBNLCBOaWNvbGFzIER1ZnJlc25lIHdyb3RlOgo+IExlIHZlbmRyZWRp
IDEwIG1haSAyMDE5IMOgIDE0OjMwICswMjAwLCBIYW5zIFZlcmt1aWwgYSDDqWNyaXQgOgo+PiBP
biA1LzEwLzE5IDI6MjQgUE0sIExhdXJlbnQgUGluY2hhcnQgd3JvdGU6Cj4+PiBIaSBIYW5zLAo+
Pj4KPj4+IE9uIEZyaSwgTWF5IDEwLCAyMDE5IGF0IDAyOjE3OjMyUE0gKzAyMDAsIEhhbnMgVmVy
a3VpbCB3cm90ZToKPj4+PiBPbiA1LzEwLzE5IDE6MjggUE0sIExhdXJlbnQgUGluY2hhcnQgd3Jv
dGU6Cj4+Pj4+IE9uIEZyaSwgTWF5IDEwLCAyMDE5IGF0IDEwOjU3OjI2QU0gKzAyMDAsIEhhbnMg
VmVya3VpbCB3cm90ZToKPj4+Pj4+IE9uIDUvMy8xOSAxOjQ3IFBNLCBCb3JpcyBCcmV6aWxsb24g
d3JvdGU6Cj4+Pj4+Pj4gVXNlcnMgY2FuIGRlZmluZSBjdXN0b20gc2l6ZWltYWdlIGFuZCBieXRl
c3BlcmxpbmUgYXMgbG9uZyBhcyB0aGV5J3JlCj4+Pj4+Pj4gYmlnIGVub3VnaCB0byBzdG9yZSB0
aGUgYW1vdW50IG9mIHBpeGVscyByZXF1aXJlZCBmb3IgYSBzcGVjaWZpYwo+Pj4+Pj4+IHdpZHRo
L2hlaWdodCB1bmRlciBhIHNwZWNpZmljIGZvcm1hdC4gQXZvaWQgb3ZlcnJpZGluZyB0aG9zZSBm
aWVsZHMgaW4KPj4+Pj4+PiB0aGlzIGNhc2UuCj4+Pj4+Pj4KPj4+Pj4+PiBTaWduZWQtb2ZmLWJ5
OiBCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29tPgo+Pj4+Pj4+
IC0tLQo+Pj4+Pj4+IEhlbGxvIEhhbnMsCj4+Pj4+Pj4KPj4+Pj4+PiBUaGUgc2l6ZWltYWdlL2J5
dGVzcGVybGluZSBjaGVjayBvbiAhTVBMQU5FIGZvcm1hdHMgaXMgc3RpbGwgbm90IDEwMCUKPj4+
Pj4+PiBzdXJlLCBhcyBjdXN0b20gYnl0ZXNwZXJsaW5lIG1pZ2h0IGluZHVjZSBiaWdnZXIgc2l6
ZWltYWdlIHRoYW4gd2hhdAo+Pj4+Pj4+IHdlIGNhbGN1bGF0ZS4KPj4+Pj4+Pgo+Pj4+Pj4+IEkg
dHJpZWQgaW1wbGVtZW50aW5nIHNvbWV0aGluZyBzbWFydGVyIHRha2luZyB0aGUgcGVyLWNvbXBv
bmVudCBwbGFuZQo+Pj4+Pj4+IGJwcCArIGhkaXYgcGFyYW0gYXMgd2UgZGlzY3Vzc2VkIHRoZSBv
dGhlciBkYXkgYnV0IGRlY2lkZWQgdG8gc3RlcAo+Pj4+Pj4+IGJhY2sgYWZ0ZXIgcmVhbGl6aW5n
IHRoZSBwZXItY29tcG9uZW50IHBsYW5lIG1hY3JvIGJsb2NrIG1pZ2h0IGFsc28KPj4+Pj4+PiBk
aWZmZXIgYXQgbGVhc3QgaW4gdGhlb3J5IChub3Qgc3VyZSB0aGF0J3MgdHJ1ZSBpbiBwcmFjdGlj
ZSkgYW5kIHRoYXQKPj4+Pj4+PiBoYXMgYW4gaW1wYWN0IG9uIGJ5dGVzcGVybGluZSB0b28uCj4+
Pj4+Pj4KPj4+Pj4+PiBMZXQgbWUga25vdyBob3cgeW91IHdhbnQgdG8gaGFuZGxlIHRoYXQgY2Fz
ZS4KPj4+Pj4+Pgo+Pj4+Pj4+IFJlZ2FyZHMsCj4+Pj4+Pj4KPj4+Pj4+PiBCb3Jpcwo+Pj4+Pj4+
Cj4+Pj4+Pj4gQ2hhbmdlcyBpbiB2NToKPj4+Pj4+PiAqIE5ldyBwYXRjaAo+Pj4+Pj4+IC0tLQo+
Pj4+Pj4+ICBkcml2ZXJzL21lZGlhL3Y0bDItY29yZS92NGwyLWNvbW1vbi5jIHwgNTQgKysrKysr
KysrKysrKysrKysrKy0tLS0tLS0tCj4+Pj4+Pj4gIDEgZmlsZSBjaGFuZ2VkLCAzOSBpbnNlcnRp
b25zKCspLCAxNSBkZWxldGlvbnMoLSkKPj4+Pj4+Pgo+Pj4+Pj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL21lZGlhL3Y0bDItY29yZS92NGwyLWNvbW1vbi5jIGIvZHJpdmVycy9tZWRpYS92NGwyLWNv
cmUvdjRsMi1jb21tb24uYwo+Pj4+Pj4+IGluZGV4IDNjNmY1YzExNWZjNS4uMzdiZmM5ODRhOGI1
IDEwMDY0NAo+Pj4+Pj4+IC0tLSBhL2RyaXZlcnMvbWVkaWEvdjRsMi1jb3JlL3Y0bDItY29tbW9u
LmMKPj4+Pj4+PiArKysgYi9kcml2ZXJzL21lZGlhL3Y0bDItY29yZS92NGwyLWNvbW1vbi5jCj4+
Pj4+Pj4gQEAgLTU2Myw5ICs1NjMsMTAgQEAgaW50IHY0bDJfZmlsbF9waXhmbXRfbXAoc3RydWN0
IHY0bDJfcGl4X2Zvcm1hdF9tcGxhbmUgKnBpeGZtdCwKPj4+Pj4+PiAgCXBpeGZtdC0+bnVtX3Bs
YW5lcyA9IGluZm8tPm1lbV9wbGFuZXM7Cj4+Pj4+Pj4gIAo+Pj4+Pj4+ICAJaWYgKGluZm8tPm1l
bV9wbGFuZXMgPT0gMSkgewo+Pj4+Pj4+ICsJCXUzMiBieXRlc3BlcmxpbmUsIHNpemVpbWFnZSA9
IDA7Cj4+Pj4+Pj4gKwo+Pj4+Pj4+ICAJCXBsYW5lID0gJnBpeGZtdC0+cGxhbmVfZm10WzBdOwo+
Pj4+Pj4+IC0JCXBsYW5lLT5ieXRlc3BlcmxpbmUgPSBBTElHTih3aWR0aCwgdjRsMl9mb3JtYXRf
YmxvY2tfd2lkdGgoaW5mbywgMCkpICogaW5mby0+YnBwWzBdOwo+Pj4+Pj4+IC0JCXBsYW5lLT5z
aXplaW1hZ2UgPSAwOwo+Pj4+Pj4+ICsJCWJ5dGVzcGVybGluZSA9IEFMSUdOKHdpZHRoLCB2NGwy
X2Zvcm1hdF9ibG9ja193aWR0aChpbmZvLCAwKSkgKiBpbmZvLT5icHBbMF07Cj4+Pj4+Pj4gIAo+
Pj4+Pj4+ICAJCWZvciAoaSA9IDA7IGkgPCBpbmZvLT5jb21wX3BsYW5lczsgaSsrKSB7Cj4+Pj4+
Pj4gIAkJCXVuc2lnbmVkIGludCBoZGl2ID0gKGkgPT0gMCkgPyAxIDogaW5mby0+aGRpdjsKPj4+
Pj4+PiBAQCAtNTc2LDEwICs1NzcsMTcgQEAgaW50IHY0bDJfZmlsbF9waXhmbXRfbXAoc3RydWN0
IHY0bDJfcGl4X2Zvcm1hdF9tcGxhbmUgKnBpeGZtdCwKPj4+Pj4+PiAgCQkJYWxpZ25lZF93aWR0
aCA9IEFMSUdOKHdpZHRoLCB2NGwyX2Zvcm1hdF9ibG9ja193aWR0aChpbmZvLCBpKSk7Cj4+Pj4+
Pj4gIAkJCWFsaWduZWRfaGVpZ2h0ID0gQUxJR04oaGVpZ2h0LCB2NGwyX2Zvcm1hdF9ibG9ja19o
ZWlnaHQoaW5mbywgaSkpOwo+Pj4+Pj4+ICAKPj4+Pj4+PiAtCQkJcGxhbmUtPnNpemVpbWFnZSAr
PSBpbmZvLT5icHBbaV0gKgo+Pj4+Pj4+IC0JCQkJRElWX1JPVU5EX1VQKGFsaWduZWRfd2lkdGgs
IGhkaXYpICoKPj4+Pj4+PiAtCQkJCURJVl9ST1VORF9VUChhbGlnbmVkX2hlaWdodCwgdmRpdik7
Cj4+Pj4+Pj4gKwkJCXNpemVpbWFnZSArPSBpbmZvLT5icHBbaV0gKgo+Pj4+Pj4+ICsJCQkJICAg
ICBESVZfUk9VTkRfVVAoYWxpZ25lZF93aWR0aCwgaGRpdikgKgo+Pj4+Pj4+ICsJCQkJICAgICBE
SVZfUk9VTkRfVVAoYWxpZ25lZF9oZWlnaHQsIHZkaXYpOwo+Pj4+Pj4+ICAJCX0KPj4+Pj4+PiAr
Cj4+Pj4+Pj4gKwkJLyoKPj4+Pj4+PiArCQkgKiBUaGUgdXNlciBtaWdodCBoYXZlIHNwZWNpZmll
ZCBjdXN0b20gc2l6ZWltYWdlL2J5dGVzcGVybGluZSwKPj4+Pj4+PiArCQkgKiBvbmx5IG92ZXJy
aWRlIHRoZW0gaWYgdGhleSdyZSBub3QgYmlnIGVub3VnaC4KPj4+Pj4+PiArCQkgKi8KPj4+Pj4+
PiArCQlwbGFuZS0+c2l6ZWltYWdlID0gbWF4KHNpemVpbWFnZSwgcGxhbmUtPnNpemVpbWFnZSk7
Cj4+Pj4+Pj4gKwkJcGxhbmUtPmJ5dGVzcGVybGluZSA9IG1heChieXRlc3BlcmxpbmUsIHBsYW5l
LT5ieXRlc3BlcmxpbmUpOwo+Pj4+Pj4KPj4+Pj4+IExldCdzIGp1c3Qgc2V0IGJ5dGVzcGVybGlu
ZSwgaWdub3JpbmcgdGhlIHZhbHVlIHRoZSB1c2VyIHN1cHBsaWVkLiBUaGVyZSBhcmUgdmVyeQo+
Pj4+Pj4gZmV3IGRyaXZlcnMgdGhhdCBhbGxvdyB0aGUgdXNlciB0byBzZXQgYnl0ZXNwZXJsaW5l
IGFueXdheSwgc28gaXQncyBub3QgYSBiaWcgZGVhbAo+Pj4+Pj4gdG8gZHJvcCBzdXBwb3J0IGZv
ciB0aGF0IGZvciBub3cuIFdlIGNhbiBhZGQgaXQgYmFjayBsYXRlci4KPj4+Pj4+Cj4+Pj4+PiBK
dXN0IGFkZCBhIGNvbW1lbnQgdGhhdCBhIHVzZXItZGVmaW5lZCBieXRlc3BlcmxpbmUgdmFsdWUg
aXNuJ3QgY3VycmVudGx5IHN1cHBvcnRlZC4KPj4+Pj4KPj4+Pj4gS2llcmFuIHJlY2VudGx5IHJh
biBpbnRvIGFuIGlzc3VlIHJlbGF0ZWQgdG8gdGhpcywgd2hlbiBzaGFyaW5nIGJ1ZmZlcnMKPj4+
Pj4gYmV0d2VlbiBhIENTSS0yIHJlY2VpdmVyIGFuZCBhbiBJU1AuIFRoZSBJU1AgaGFzIGFsaWdu
bWVudCBjb25zdHJhaW50cwo+Pj4+PiBpbiBib3RoIHRoZSBob3Jpem9udGFsIGFuZCB2ZXJ0aWNh
bCBkaXJlY3Rpb25zIG9uIHRoZSBsaW5lIHN0cmlkZSBhbmQKPj4+Pj4gdG90YWwgaW1hZ2Ugc2l6
ZS4gT3V0IHNvZnR3YXJlIGZyYW1ld29yayBjdXJyZW50bHkgYWxsb2NhdGVzIGJ1ZmZlcnMKPj4+
Pj4gZnJvbSB0aGUgQ1NJLTIgcmVjZWl2ZXIgd2hpY2ggZG9lc24ndCBoYXZlIHRob3NlIGNvbnN0
cmFpbnRzLCBhbmQgbm90Cj4+Pj4+IGJlaW5nIGFibGUgdG8gc3BlY2lmeSBzaXplaW1hZ2UgaXMg
dGh1cyBhIHByb2JsZW0uCj4+Pj4KPj4+PiBOb3QgYmVpbmcgYWJsZSB0byBzcGVjaWZ5IHNpemVp
bWFnZSB3aGVyZT8gRnJvbSB1c2Vyc3BhY2U/IFNvcnJ5LCBJIGRvbid0Cj4+Pj4gcXVpdGUgdW5k
ZXJzdGFuZCB0aGUgc3BlY2lmaWMgaXNzdWUgaGVyZS4KPj4+Cj4+PiBZZXMsIGZyb20gdXNlcnNw
YWNlLgo+Pgo+PiBBaCwgT0suIEJ1dCB3aHkgbm90IHVzZSBDUkVBVEVCVUZTPyBZb3UgY2FuIHBy
b3ZpZGUgeW91ciBvd24gc2l6ZSB3aGVuIGFsbG9jYXRpbmcKPj4gdGhlIGJ1ZmZlcnMuCj4+Cj4+
IEFsc28gbm90ZSB0aGlzIHBhdGNoOiBodHRwczovL3BhdGNod29yay5saW51eHR2Lm9yZy9wYXRj
aC81NTY1Ni8KPj4KPj4gQWx0aG91Z2ggdGhpcyBpcyBzcGVjaWZpYyBmb3IgY29tcHJlc3NlZCBm
b3JtYXRzLgo+IAo+IFdoaWxlIHRoaXMgd29yayBmb3IgY29tcHJlc3NlZCBmb3JtYXRzLCBpdCBk
b2VzIG5vdCBkbyBhbnl0aGluZyBmb3IgcmF3Cj4gaW1hZ2UgaG9yaXpvbnRhbCBwYWRkaW5nLiBU
aGUgaW1wb3J0YXRpb24gYml0IG9mIFY0TDIgaXMgcHJldHR5Cj4gZGlmZmljdWx0LCBzbyBpZiB3
ZSBhZGQgaGVscGVycywgd2Ugc2hvdWxkIGxvYWQgdGhlIHdheSBhbmQgc2ltcGxpZnkKPiB0aGlu
Z3MgZm9yIHVzZXJzcGFjZSByYXRoZXIgdGhlbiBlbmZvcmNpbmcgdGhlIGV4aXN0aW5nIGRpZmZp
Y3VsdHkuCj4gCj4gSSB0aGluayBmcm9tIG5vdyBvd24gd2Ugc2hvdWxkIGRlc2lnbiB3aXRoIHRo
ZSBtaW5kc2V0IHRoYXQgYSBETUFCdWYKPiB0aGF0IGNhbm5vdCBiZSBpbXBvcnRlZCBiYWNrIGlu
dG8gYW5vdGhlciBkcml2ZXIgZHVlIHRvIHNvZnR3YXJlCj4gbGltaXRhdGlvbnMgaXMgYSB1c2Vs
ZXNzIHdhc3RlIG9mIEZELgoKSSBhZ3JlZSwgYnV0IEkgZmVlbCB0aGF0IHRoaXMgaXMgcGFydCBv
ZiB0aGUgbmV3IGZtdCBhbmQgc3RyZWFtaW5nCmlvY3RscyBwcm9qZWN0IHRoYXQgQm9yaXMgc3Rh
cnRlZC4gRG9pbmcgZnVydGhlciBoYWNraW5nIG9mIHRoZSBleGlzdGluZyBBUEkKaXMganVzdCBj
b21wbGljYXRpbmcgbWF0dGVycyBldmVuIG1vcmUuCgpDcmVhdGluZyBuZXcgZm9ybWF0IGlvY3Rs
cyB0aGF0IGFyZSBtdWNoIG1vcmUgZmxleGlibGUgaW4gZGVzY3JpYmluZyBpbWFnZQpmb3JtYXRz
IChhbmQgY2xvc2VyIHRvIGRybSB3aGVyZSBwb3NzaWJsZSkgc2VlbXMgdG8gYmUgdGhlIHJpZ2h0
IGFwcHJvYWNoLgoKSG1tbS4uLiAid2FzdGUgb2YgRkQiOiBGYWNlIERldGVjdGlvbj8gRmlsZSBE
ZXNjcmlwdG9yPyBQcm9iYWJseSBub3QuCgpUaGUgdXJiYW5kaWN0aW9uYXJ5IGRvZXNuJ3QgaGVs
cCBlaXRoZXI6IGh0dHBzOi8vd3d3LnVyYmFuZGljdGlvbmFyeS5jb20vZGVmaW5lLnBocD90ZXJt
PUZECgpObyBpZGVhIHdoYXQgRkQgbWVhbnMgOi0pLCBhbHRob3VnaCBJIGdldCB0aGUgc2VudGlt
ZW50LgoKUmVnYXJkcywKCglIYW5zCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
