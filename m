Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9D9D1BE4B5
	for <lists+linux-rockchip@lfdr.de>; Wed, 29 Apr 2020 19:04:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=664cK7aXT8P540sBI0xRwfJ0ciJEa56zooULAb2bWlQ=; b=BuD3LkRAr6oa/h
	XYo89d2/3B/TwDwrNzbx/nLGVQ8R4J6QMgfSJGX4TqUuozdDRgh5O0jRL0wvl3cyYsGtiNRC9p81s
	WXAL7kcsmq+O8Or6Vh24TM3cWZTKPi0TW3bvX+ywbZ/ZtUP6S7KpPDEFVZhdXfUeQ/KLSCnigPeiW
	he06dLcHKwbgMy43H6Pnxdq8rvqWRdVNEwTEMrsNgEJLdqU+BJFmPOKwDCRoUDTlz9ltRzijMyQxP
	9kPuLr4cdBGej2uasONaO+Wt3aABHT4rgK5t7ddeQaj437Kek+G8V/AtA131vCUMLH1JHMur512yq
	uaTS8SKzntcj7J8aidNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTq8f-00059J-Ay; Wed, 29 Apr 2020 17:04:49 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTq8R-0004zZ-Vc; Wed, 29 Apr 2020 17:04:37 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 8AA9BFF804;
 Wed, 29 Apr 2020 17:04:30 +0000 (UTC)
Date: Wed, 29 Apr 2020 19:04:28 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v5 2/7] mtd: rawnand: rockchip: NFC drivers for RK3308,
 RK3188 and others
Message-ID: <20200429190428.33ca0523@xps13>
In-Reply-To: <4dbe907c-a6c2-a163-0cab-234b08336b5c@gmail.com>
References: <20200426100250.14678-1-yifeng.zhao@rock-chips.com>
 <20200426100250.14678-3-yifeng.zhao@rock-chips.com>
 <4dbe907c-a6c2-a163-0cab-234b08336b5c@gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_100436_149290_9CAA00A4 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, vigneshr@ti.com, richard@nod.at,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-mtd@lists.infradead.org, heiko@sntech.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgWWlmZW5nLAoKSm9oYW4gSm9ua2VyIDxqYng2MjQ0QGdtYWlsLmNvbT4gd3JvdGUgb24gV2Vk
LCAyOSBBcHIgMjAyMCAxNzo1NTo1NgorMDIwMDoKCj4gSGkgWWlmZW5nLAo+IAo+IEEgZmV3IG1v
cmUgY29tbWVudHMgYmVsb3cgZm9yIG5vdyAocGFydCAyKS4KPiAKPiBPbiA0LzI2LzIwIDEyOjAy
IFBNLCBZaWZlbmcgWmhhbyB3cm90ZToKPiAKPiBbLi5dCj4gCj4gPiArI2RlZmluZQlUSElTX05B
TUUJCSJyay1uYW5kIiAgCj4gCj4gPiArc3RhdGljIGludCBya19uZmNfbmFuZF9jaGlwX2luaXQo
c3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgcmtfbmZjICpuZmMsCj4gPiArCQkJCSBzdHJ1Y3Qg
ZGV2aWNlX25vZGUgKm5wKQo+ID4gK3sKPiA+ICsJc3RydWN0IHJrX25mY19uYW5kX2NoaXAgKm5h
bmQ7Cj4gPiArCXN0cnVjdCBuYW5kX2NoaXAgKmNoaXA7Cj4gPiArCXN0cnVjdCBtdGRfaW5mbyAq
bXRkOwo+ID4gKwlpbnQgbnNlbHM7Cj4gPiArCXUzMiB0bXA7Cj4gPiArCWludCByZXQ7Cj4gPiAr
CWludCBpOwo+ID4gKwo+ID4gKwlpZiAoIW9mX2dldF9wcm9wZXJ0eShucCwgInJlZyIsICZuc2Vs
cykpCj4gPiArCQlyZXR1cm4gLUVOT0RFVjsKPiA+ICsJbnNlbHMgLz0gc2l6ZW9mKHUzMik7Cj4g
PiArCWlmICghbnNlbHMgfHwgbnNlbHMgPiBORkNfTUFYX05TRUxTKSB7Cj4gPiArCQlkZXZfZXJy
KGRldiwgImludmFsaWQgcmVnIHByb3BlcnR5IHNpemUgJWRcbiIsIG5zZWxzKTsKPiA+ICsJCXJl
dHVybiAtRUlOVkFMOwo+ID4gKwl9Cj4gPiArCj4gPiArCW5hbmQgPSBkZXZtX2t6YWxsb2MoZGV2
LCBzaXplb2YoKm5hbmQpICsgbnNlbHMgKiBzaXplb2YodTgpLAo+ID4gKwkJCSAgICBHRlBfS0VS
TkVMKTsKPiA+ICsJaWYgKCFuYW5kKQo+ID4gKwkJcmV0dXJuIC1FTk9NRU07Cj4gPiArCj4gPiAr
CW5hbmQtPm5zZWxzID0gbnNlbHM7Cj4gPiArCWZvciAoaSA9IDA7IGkgPCBuc2VsczsgaSsrKSB7
Cj4gPiArCQlyZXQgPSBvZl9wcm9wZXJ0eV9yZWFkX3UzMl9pbmRleChucCwgInJlZyIsIGksICZ0
bXApOwo+ID4gKwkJaWYgKHJldCkgewo+ID4gKwkJCWRldl9lcnIoZGV2LCAicmVnIHByb3BlcnR5
IGZhaWx1cmUgOiAlZFxuIiwgcmV0KTsKPiA+ICsJCQlyZXR1cm4gcmV0Owo+ID4gKwkJfQo+ID4g
Kwo+ID4gKwkJaWYgKHRtcCA+PSBORkNfTUFYX05TRUxTKSB7Cj4gPiArCQkJZGV2X2VycihkZXYs
ICJpbnZhbGlkIENTOiAldVxuIiwgdG1wKTsKPiA+ICsJCQlyZXR1cm4gLUVJTlZBTDsKPiA+ICsJ
CX0KPiA+ICsKPiA+ICsJCWlmICh0ZXN0X2FuZF9zZXRfYml0KHRtcCwgJm5mYy0+YXNzaWduZWRf
Y3MpKSB7Cj4gPiArCQkJZGV2X2VycihkZXYsICJDUyAldSBhbHJlYWR5IGFzc2lnbmVkXG4iLCB0
bXApOwo+ID4gKwkJCXJldHVybiAtRUlOVkFMOwo+ID4gKwkJfQo+ID4gKwo+ID4gKwkJbmFuZC0+
c2Vsc1tpXSA9IHRtcDsKPiA+ICsJfQo+ID4gKwo+ID4gKwljaGlwID0gJm5hbmQtPmNoaXA7Cj4g
PiArCWNoaXAtPmNvbnRyb2xsZXIgPSAmbmZjLT5jb250cm9sbGVyOwo+ID4gKwo+ID4gKwluYW5k
X3NldF9mbGFzaF9ub2RlKGNoaXAsIG5wKTsKPiA+ICsJbmFuZF9zZXRfY29udHJvbGxlcl9kYXRh
KGNoaXAsIG5mYyk7Cj4gPiArCj4gPiArCWNoaXAtPm9wdGlvbnMgfD0gTkFORF9VU0VfQk9VTkNF
X0JVRkZFUiB8IE5BTkRfTk9fU1VCUEFHRV9XUklURTsKPiA+ICsJY2hpcC0+YmJ0X29wdGlvbnMg
PSBOQU5EX0JCVF9VU0VfRkxBU0ggfCBOQU5EX0JCVF9OT19PT0I7Cj4gPiArCj4gPiArCS8qIHNl
dCBkZWZhdWx0IG1vZGUgaW4gY2FzZSBkdCBlbnRyeSBpcyBtaXNzaW5nICovCj4gPiArCWNoaXAt
PmVjYy5tb2RlID0gTkFORF9FQ0NfSFc7Cj4gPiArCj4gPiArCW10ZCA9IG5hbmRfdG9fbXRkKGNo
aXApOwo+ID4gKwltdGQtPm93bmVyID0gVEhJU19NT0RVTEU7Cj4gPiArCW10ZC0+ZGV2LnBhcmVu
dCA9IGRldjsgIAo+IAo+ID4gKwltdGQtPm5hbWUgPSBUSElTX05BTUU7ICAKPiAKPiBUaGUgJ210
ZC0+bmFtZScgc2hvd3MgdXAgc29tZXdoZXJlIGluIGZpbGUgdHJlZS4KCkdvb2QgY2F0Y2guCgo+
IFRoZSByazMyODggaGFzIDIgbmZjJ3MuIEluIHRoZW9yeSAyIHByb2JlcyBhbmQgYWxzbyAyIGRl
dmljZSBuYW1lcywgc28gSQo+IHRoaW5rIHRoYXQgd2Ugc2hvdWxkbid0IHVzZSBhIGZpeGVkIGRl
ZmluZSBmb3IgJ210ZC0+bmFtZScuCj4gTWF5YmUgdXNlIHNvbWV0aGluZyBsaWtlIHRoaXM6CgpZ
aWZlbmcsIHBsZWFzZSB1c2UgdGhlIE5BTkQgY2hpcCAibGFiZWwiIERUIHByb3BlcnR5LCB3aGlj
aCBpcyBwYXJzZWQKYnkgdGhlIGNvcmUgYXV0b21hdGljYWxseSBhbmQgd2lsbCBnaXZlIHlvdSBt
ZWFuaW5nZnVsIG5hbWVzIGZvciBldmVyeQpjaGlwOgoKbmFuZF9zZXRfZmxhc2hfbm9kZShjaGlw
LCBucCk7CmlmICghbXRkLT5uYW1lKSB7CglkZXZfZXJyKG5mYy0+ZGV2LCAiTkFORCBsYWJlbCBw
cm9wZXJ0eSBpcyBtYW5kYXRvcnlcbiIpOwoJcmV0dXJuIC1FSU5WQUw7Cn0KCgpUaGFua3MsCk1p
cXXDqGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
