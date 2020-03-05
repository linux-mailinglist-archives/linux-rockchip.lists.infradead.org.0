Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A8217AF9A
	for <lists+linux-rockchip@lfdr.de>; Thu,  5 Mar 2020 21:15:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jVeCopnwM1ME9myyVgA4aA0A0E4VH35s+NPXUC9kau4=; b=O4K8QtLOB5seyT
	un9a55fPYG9p+0xFX40aUKt+MrOququAJKo8sLpV2+NCeQ73vx+pOTHftDKhlQ+yQXrtWN2ii9w/i
	HiH+q7QjWxFbDgp5JdWwtPw050/HhcrGT7SoODGeU+XKdzr1cWuUdVGLso7XBbcylkd++tABL6vzq
	sv9Dulk9on20QIRw8U3+Ht95sBrlC89C++igiwJfLwXkJJXuLlRaeYgZvZAbHgf9Kc5l+YqLXIHHw
	QnpqwpdqMst3sYZjglu24T3OM5b7biR3o4iTt7i0T+3KHlZIsCDnZV4hW9aYTjuGTOoDMuVu4I+VT
	JOun3QMcqS8og9XKrNqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9wuK-0003Oa-G8; Thu, 05 Mar 2020 20:15:48 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9wuG-0003Ml-Fk
 for linux-rockchip@lists.infradead.org; Thu, 05 Mar 2020 20:15:46 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 4419728B941;
 Thu,  5 Mar 2020 20:15:39 +0000 (GMT)
Date: Thu, 5 Mar 2020 21:15:35 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Nicolas Dufresne <nicolas@ndufresne.ca>
Subject: Re: [PATCH v6 2/6] media: v4l2-core: Add helpers to build the H264
 P/B0/B1 reflists
Message-ID: <20200305211535.2e9a6673@collabora.com>
In-Reply-To: <c7a88abfaf00c00a5c4c4239d1d9c7b348bc052e.camel@ndufresne.ca>
References: <20200220163016.21708-1-ezequiel@collabora.com>
 <20200220163016.21708-3-ezequiel@collabora.com>
 <20200302142433.0ad1b383@coco.lan>
 <20200302154426.5fb09f91@collabora.com>
 <c7a88abfaf00c00a5c4c4239d1d9c7b348bc052e.camel@ndufresne.ca>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_121544_792371_3C75080C 
X-CRM114-Status: GOOD (  30.43  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Sakari Ailus <sakari.ailus@iki.fi>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gVGh1LCAwNSBNYXIgMjAyMCAxNDo0MjozNCAtMDUwMApOaWNvbGFzIER1ZnJlc25lIDxuaWNv
bGFzQG5kdWZyZXNuZS5jYT4gd3JvdGU6Cgo+IExlIGx1bmRpIDAyIG1hcnMgMjAyMCDDoCAxNTo0
NCArMDEwMCwgQm9yaXMgQnJlemlsbG9uIGEgw6ljcml0IDoKPiA+IE9uIE1vbiwgMiBNYXIgMjAy
MCAxNDoyNDozMyArMDEwMAo+ID4gTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIDxtY2hlaGFiK2h1YXdl
aUBrZXJuZWwub3JnPiB3cm90ZToKPiA+ICAgCj4gPiA+IEVtIFRodSwgMjAgRmViIDIwMjAgMTM6
MzA6MTIgLTAzMDAKPiA+ID4gRXplcXVpZWwgR2FyY2lhIDxlemVxdWllbEBjb2xsYWJvcmEuY29t
PiBlc2NyZXZldToKPiA+ID4gICAKPiA+ID4gPiBGcm9tOiBCb3JpcyBCcmV6aWxsb24gPGJvcmlz
LmJyZXppbGxvbkBjb2xsYWJvcmEuY29tPgo+ID4gPiA+IAo+ID4gPiA+IEJ1aWxkaW5nIHRob3Nl
IGxpc3QgaXMgYSBzdGFuZGFyZCBwcm9jZWR1cmUgZGVzY3JpYmVkIGluIHNlY3Rpb24KPiA+ID4g
PiAnOC4yLjQgRGVjb2RpbmcgcHJvY2VzcyBmb3IgcmVmZXJlbmNlIHBpY3R1cmUgbGlzdHMgY29u
c3RydWN0aW9uJyBvZgo+ID4gPiA+IHRoZSBIMjY0IHNwZWNpZmljYXRpb24uCj4gPiA+ID4gCj4g
PiA+ID4gV2UgYWxyZWFkeSBoYXZlIDIgZHJpdmVycyBuZWVkaW5nIHRoZSBzYW1lIGxvZ2ljICho
YW50cm8gYW5kIHJrdmRlYykgYW5kCj4gPiA+ID4gSSBzdXNwZWN0IHdlIHdpbGwgc29vbiBoYXZl
IG1vcmUuCj4gPiA+ID4gCj4gPiA+ID4gTGV0J3MgcHJvdmlkZSBnZW5lcmljIGhlbHBlcnMgdG8g
Y3JlYXRlIHRob3NlIGxpc3RzLgo+ID4gPiA+IAo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEJvcmlz
IEJyZXppbGxvbiA8Ym9yaXMuYnJlemlsbG9uQGNvbGxhYm9yYS5jb20+Cj4gPiA+ID4gU2lnbmVk
LW9mZi1ieTogRXplcXVpZWwgR2FyY2lhIDxlemVxdWllbEBjb2xsYWJvcmEuY29tPgo+ID4gPiA+
IC0tLQo+ID4gPiA+ICBkcml2ZXJzL21lZGlhL3Y0bDItY29yZS9LY29uZmlnICAgICB8ICAgNCAr
Cj4gPiA+ID4gIGRyaXZlcnMvbWVkaWEvdjRsMi1jb3JlL01ha2VmaWxlICAgIHwgICAxICsKPiA+
ID4gPiAgZHJpdmVycy9tZWRpYS92NGwyLWNvcmUvdjRsMi1oMjY0LmMgfCAyNTggKysrKysrKysr
KysrKysrKysrKysrKysrKysrKwo+ID4gPiA+ICBpbmNsdWRlL21lZGlhL3Y0bDItaDI2NC5oICAg
ICAgICAgICB8ICA4NSArKysrKysrKysKPiA+ID4gPiAgNCBmaWxlcyBjaGFuZ2VkLCAzNDggaW5z
ZXJ0aW9ucygrKQo+ID4gPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9tZWRpYS92NGwy
LWNvcmUvdjRsMi1oMjY0LmMKPiA+ID4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvbWVk
aWEvdjRsMi1oMjY0LmgKPiA+ID4gPiAKPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRp
YS92NGwyLWNvcmUvS2NvbmZpZyBiL2RyaXZlcnMvbWVkaWEvdjRsMi0KPiA+ID4gPiBjb3JlL0tj
b25maWcKPiA+ID4gPiBpbmRleCAzOWUzZmIzMGJhMGIuLjhhNGNjZmJjYThjZiAxMDA2NDQKPiA+
ID4gPiAtLS0gYS9kcml2ZXJzL21lZGlhL3Y0bDItY29yZS9LY29uZmlnCj4gPiA+ID4gKysrIGIv
ZHJpdmVycy9tZWRpYS92NGwyLWNvcmUvS2NvbmZpZwo+ID4gPiA+IEBAIC00NSw2ICs0NSwxMCBA
QCBjb25maWcgVklERU9fUENJX1NLRUxFVE9OCj4gPiA+ID4gIGNvbmZpZyBWSURFT19UVU5FUgo+
ID4gPiA+ICAJdHJpc3RhdGUKPiA+ID4gPiAgCj4gPiA+ID4gKyMgVXNlZCBieSBkcml2ZXJzIHRo
YXQgbmVlZCB2NGwyLWgyNjQua28KPiA+ID4gPiArY29uZmlnIFY0TDJfSDI2NAo+ID4gPiA+ICsJ
dHJpc3RhdGUKPiA+ID4gPiArCj4gPiA+ID4gICMgVXNlZCBieSBkcml2ZXJzIHRoYXQgbmVlZCB2
NGwyLW1lbTJtZW0ua28KPiA+ID4gPiAgY29uZmlnIFY0TDJfTUVNMk1FTV9ERVYKPiA+ID4gPiAg
CXRyaXN0YXRlCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvdjRsMi1jb3JlL01h
a2VmaWxlIGIvZHJpdmVycy9tZWRpYS92NGwyLQo+ID4gPiA+IGNvcmUvTWFrZWZpbGUKPiA+ID4g
PiBpbmRleCA3ODZiZDFlYzRkMWIuLmM1YzUzZTA5NDFhZCAxMDA2NDQKPiA+ID4gPiAtLS0gYS9k
cml2ZXJzL21lZGlhL3Y0bDItY29yZS9NYWtlZmlsZQo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvbWVk
aWEvdjRsMi1jb3JlL01ha2VmaWxlCj4gPiA+ID4gQEAgLTIxLDYgKzIxLDcgQEAgb2JqLSQoQ09O
RklHX1ZJREVPX1Y0TDIpICs9IHY0bDItZHYtdGltaW5ncy5vCj4gPiA+ID4gIG9iai0kKENPTkZJ
R19WSURFT19UVU5FUikgKz0gdHVuZXIubwo+ID4gPiA+ICAKPiA+ID4gPiAgb2JqLSQoQ09ORklH
X1Y0TDJfTUVNMk1FTV9ERVYpICs9IHY0bDItbWVtMm1lbS5vCj4gPiA+ID4gK29iai0kKENPTkZJ
R19WNEwyX0gyNjQpICs9IHY0bDItaDI2NC5vCj4gPiA+ID4gIAo+ID4gPiA+ICBvYmotJChDT05G
SUdfVjRMMl9GTEFTSF9MRURfQ0xBU1MpICs9IHY0bDItZmxhc2gtbGVkLWNsYXNzLm8KPiA+ID4g
PiAgCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvdjRsMi1jb3JlL3Y0bDItaDI2
NC5jIGIvZHJpdmVycy9tZWRpYS92NGwyLQo+ID4gPiA+IGNvcmUvdjRsMi1oMjY0LmMKPiA+ID4g
PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4gPiA+IGluZGV4IDAwMDAwMDAwMDAwMC4uNGY2OGMy
N2VjN2ZkCj4gPiA+ID4gLS0tIC9kZXYvbnVsbAo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvbWVkaWEv
djRsMi1jb3JlL3Y0bDItaDI2NC5jCj4gPiA+ID4gQEAgLTAsMCArMSwyNTggQEAKPiA+ID4gPiAr
Ly8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKPiA+ID4gPiArLyoKPiA+ID4gPiAr
ICogVjRMMiBIMjY0IGhlbHBlcnMuCj4gPiA+ID4gKyAqCj4gPiA+ID4gKyAqIENvcHlyaWdodCAo
QykgMjAxOSBDb2xsYWJvcmEsIEx0ZC4KPiA+ID4gPiArICoKPiA+ID4gPiArICogQXV0aG9yOiBC
b3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29tPgo+ID4gPiA+ICsg
Ki8KPiA+ID4gPiArCj4gPiA+ID4gKyNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4KPiA+ID4gPiAr
I2luY2x1ZGUgPGxpbnV4L3NvcnQuaD4KPiA+ID4gPiArCj4gPiA+ID4gKyNpbmNsdWRlIDxtZWRp
YS92NGwyLWgyNjQuaD4KPiA+ID4gPiArCj4gPiA+ID4gKy8qKgo+ID4gPiA+ICsgKiB2NGwyX2gy
NjRfaW5pdF9yZWZsaXN0X2J1aWxkZXIoKSAtIEluaXRpYWxpemUgYSBQL0IwL0IxIHJlZmVyZW5j
ZSBsaXN0Cj4gPiA+ID4gKyAqCQkJCSAgICAgIGJ1aWxkZXIKPiA+ID4gPiArICoKPiA+ID4gPiAr
ICogQGI6IHRoZSBidWlsZGVyIGNvbnRleHQgdG8gaW5pdGlhbGl6ZQo+ID4gPiA+ICsgKiBAZGVj
X3BhcmFtczogZGVjb2RlIHBhcmFtZXRlcnMgY29udHJvbAo+ID4gPiA+ICsgKiBAc2xpY2VfcGFy
YW1zOiBmaXJzdCBzbGljZSBwYXJhbWV0ZXJzIGNvbnRyb2wKPiA+ID4gPiArICogQHNwczogU1BT
IGNvbnRyb2wKPiA+ID4gPiArICogQGRwYjogRFBCIHRvIHVzZSB3aGVuIGNyZWF0aW5nIHRoZSBy
ZWZlcmVuY2UgbGlzdAo+ID4gPiA+ICsgKi8KPiA+ID4gPiArdm9pZAo+ID4gPiA+ICt2NGwyX2gy
NjRfaW5pdF9yZWZsaXN0X2J1aWxkZXIoc3RydWN0IHY0bDJfaDI2NF9yZWZsaXN0X2J1aWxkZXIg
KmIsCj4gPiA+ID4gKwkJY29uc3Qgc3RydWN0IHY0bDJfY3RybF9oMjY0X2RlY29kZV9wYXJhbXMg
KmRlY19wYXJhbXMsCj4gPiA+ID4gKwkJY29uc3Qgc3RydWN0IHY0bDJfY3RybF9oMjY0X3NsaWNl
X3BhcmFtcyAqc2xpY2VfcGFyYW1zLAo+ID4gPiA+ICsJCWNvbnN0IHN0cnVjdCB2NGwyX2N0cmxf
aDI2NF9zcHMgKnNwcywKPiA+ID4gPiArCQljb25zdCBzdHJ1Y3QgdjRsMl9oMjY0X2RwYl9lbnRy
eSAqZHBiKSAgICAKPiA+ID4gCj4gPiA+IFRoZSBwcm90b3R5cGUgaGVyZSBpcyBub3QgbmljZS4u
Lgo+ID4gPiAgIAo+ID4gPiA+ICt7Cj4gPiA+ID4gKwlpbnQgY3VyX2ZyYW1lX251bSwgbWF4X2Zy
YW1lX251bTsKPiA+ID4gPiArCXVuc2lnbmVkIGludCBpOwo+ID4gPiA+ICsKPiA+ID4gPiArCW1h
eF9mcmFtZV9udW0gPSAxIDw8IChzcHMtPmxvZzJfbWF4X2ZyYW1lX251bV9taW51czQgKyA0KTsK
PiA+ID4gPiArCWN1cl9mcmFtZV9udW0gPSBzbGljZV9wYXJhbXMtPmZyYW1lX251bTsKPiA+ID4g
PiArCj4gPiA+ID4gKwltZW1zZXQoYiwgMCwgc2l6ZW9mKCpiKSk7Cj4gPiA+ID4gKwlpZiAoIShz
bGljZV9wYXJhbXMtPmZsYWdzICYgVjRMMl9IMjY0X1NMSUNFX0ZMQUdfRklFTERfUElDKSkKPiA+
ID4gPiArCQliLT5jdXJfcGljX29yZGVyX2NvdW50ID0gbWluKGRlY19wYXJhbXMtPmJvdHRvbV9m
aWVsZF9vcmRlcl9jbnQsCj4gPiA+ID4gKwkJCQkJICAgICBkZWNfcGFyYW1zLT50b3BfZmllbGRf
b3JkZXJfY250KTsKPiA+ID4gPiArCWVsc2UgaWYgKHNsaWNlX3BhcmFtcy0+ZmxhZ3MgJiBWNEwy
X0gyNjRfU0xJQ0VfRkxBR19CT1RUT01fRklFTEQpCj4gPiA+ID4gKwkJYi0+Y3VyX3BpY19vcmRl
cl9jb3VudCA9IGRlY19wYXJhbXMtPmJvdHRvbV9maWVsZF9vcmRlcl9jbnQ7Cj4gPiA+ID4gKwll
bHNlCj4gPiA+ID4gKwkJYi0+Y3VyX3BpY19vcmRlcl9jb3VudCA9IGRlY19wYXJhbXMtPnRvcF9m
aWVsZF9vcmRlcl9jbnQ7Cj4gPiA+ID4gKwo+ID4gPiA+ICsJZm9yIChpID0gMDsgaSA8IDE2OyBp
KyspIHsKPiA+ID4gPiArCQl1MzIgcGljX29yZGVyX2NvdW50Owo+ID4gPiA+ICsKPiA+ID4gPiAr
CQlpZiAoIShkcGJbaV0uZmxhZ3MgJiBWNEwyX0gyNjRfRFBCX0VOVFJZX0ZMQUdfQUNUSVZFKSkK
PiA+ID4gPiArCQkJY29udGludWU7Cj4gPiA+ID4gKwo+ID4gPiA+ICsJCWItPnJlZnNbaV0ucGlj
X251bSA9IGRwYltpXS5waWNfbnVtOyAgICAKPiA+ID4gCj4gPiA+IC4uLiBhcyB5b3UncmUgZXhw
ZWN0aW5nIGEgZml4ZWQgbnVtYmVyIG9mIGVsZW1lbnRzIGF0IERQQiBhcnJheSwgYW5kIHVzaW5n
Cj4gPiA+IGEgbWFnaWMgbnVtYmVyICgxNikgaW5zaWRlIHRoZSBmb3IgbG9vcC4gIAo+ID4gCj4g
PiBJIHVzZWQgdG8gaGF2ZSBhICcjZGVmaW5lIFY0TDJfSDI2NF9OVU1fRFBCX0VOVFJJRVMgMTYn
IGJ1dCBoYXZlIGJlZW4KPiA+IHRvbGQgdGhhdCB0aGlzIGlzIGFuIGFyYml0cmFyeSBsaW1pdGF0
aW9uICh0aGUgc3BlYyBkb2VzIG5vdCBleHBsaWNpdGx5Cj4gPiBsaW1pdCB0aGUgRFBCIHNpemUs
IGV2ZW4gaWYgYWxsIHRoZSBIVyB3ZSd2ZSBzZWVuIHNlZW0gdG8gbGltaXQgaXQgdG8KPiA+IDE2
KS4gTWF5YmUgd2UgY2FuIHBhc3MgdGhlIERQQiBhcnJheSBzaXplIGFzIGFuIGFyZ3VtZW50IHNv
IGl0IHN0YXlzCj4gPiBIVy1zcGVjaWZpYy4gIAo+IAo+IGl0J3MgZm9ybWFsaXplZCBpbiBBLjMx
IGgpLCB0byBxdW90ZSBpdDoKPiAKPiBtYXhfZGVjX2ZyYW1lX2J1ZmZlcmluZyA8PSBNYXhEcGJG
cmFtZXMsIHdoZXJlIE1heERwYkZyYW1lcyBpcyBlcXVhbCB0bwo+IAo+ICAgTWluKCBNYXhEcGJN
YnMgLyAoIFBpY1dpZHRoSW5NYnMgKiBGcmFtZUhlaWdodEluTWJzICksIDE2ICkKPiAKPiBTbyBh
IERQQiBsYXJnZXIgdGhlbiB0aGlzIGlzIG5vdCBhbiBILjI0IERQQi4KCk15IGJhZCwgSSBtaXhl
ZCAibWF4IG51bWJlciBvZiBzbGljZXMgcGVyIGZyYW1lIiBhbmQgIm1heCBudW1iZXIgb2YKZW50
cmllcyBpbiB0aGUgRFBCIi4gVGhlIGZpcnN0IG9uZSBJIGNvdWxkbid0IGZpbmQgYSBjbGVhciBh
bnN3ZXIgdG8sCndoaWxlIHRoZSBzZWNvbmQgb25lIGhhcyBiZWVuIDE2IGZyb20gdGhlIHN0YXJ0
LiBTb3JyeSBmb3IgdGhlCmNvbmZ1c2lvbi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
