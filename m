Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F8C01EE706
	for <lists+linux-rockchip@lfdr.de>; Thu,  4 Jun 2020 16:56:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PKlluPInDlGcVlsvMzrE78z4Esxs/BcJ2fPkuVTn9P4=; b=UmzlHsBhe1i8Vh
	u+lQxpjdklnHWWMFIjcR3srAoHffyGh+huxkYUhD3ZOrfw4+w8w6yRJkUtKmt31xs/hx6oPgKBzv4
	xBvt1R0B/MPvidPUZGh49WhWtsnKn82ZGy3pXzfp5UZrziM9v4Jh2QwwzuQOuiev6Qj/2zmyscRpQ
	S2fsgnAg8y8/8QgeGx36Y1i5MdB23DfNU1IWzwOVi/E/4d8iVoz1x4bpo5IIRKeoGHEaeT0ojOtmM
	SpBVlBS9CVwBJK86QXtbxX78KUNq62rdL0XjOegId1BE3/Gso8IBr2kWHlvPehcsdsqAX94NkEYI5
	gFmOqGWF9bcrR1ZuJC5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgrHj-0001FM-PN; Thu, 04 Jun 2020 14:55:59 +0000
Received: from vegas.theobroma-systems.com ([144.76.126.164]
 helo=mail.theobroma-systems.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgrHg-0001E9-2i
 for linux-rockchip@lists.infradead.org; Thu, 04 Jun 2020 14:55:57 +0000
Received: from ip092042140082.rev.nessus.at ([92.42.140.82]:57816
 helo=[10.4.9.214]) by mail.theobroma-systems.com with esmtpsa
 (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256) (Exim 4.80)
 (envelope-from <philipp.tomsich@theobroma-systems.com>)
 id 1jgrHU-0000rk-8y; Thu, 04 Jun 2020 16:55:44 +0200
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Subject: Re: [PATCH v3 1/4] Makefile: Drop to handle rkspi image type
From: Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
In-Reply-To: <20200604145141.356702-2-jagan@amarulasolutions.com>
Date: Thu, 4 Jun 2020 16:55:43 +0200
Message-Id: <56A28F79-EB4C-4091-A72D-F4CDF3B0F60F@theobroma-systems.com>
References: <20200604145141.356702-1-jagan@amarulasolutions.com>
 <20200604145141.356702-2-jagan@amarulasolutions.com>
To: Jagan Teki <jagan@amarulasolutions.com>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_075556_267375_2BCD762D 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 U-Boot-Denx <u-boot@lists.denx.de>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 Simon Glass <sjg@chromium.org>, Kever Yang <kever.yang@rock-chips.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Suniel Mahesh <sunil@amarulasolutions.com>,
 Hugh Cole-Baker <sigmaris@gmail.com>,
 =?utf-8?Q?Christoph_M=C3=BCllner?= <christoph.muellner@theobroma-systems.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Cgo+IE9uIDA0LjA2LjIwMjAsIGF0IDE2OjUxLCBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29s
dXRpb25zLmNvbT4gd3JvdGU6Cj4gCj4gT24gcm9ja2NoaXAgcGxhdGZvcm1zLCBTUEkgYm9vdCBp
bWFnZSBjcmVhdGlvbiBpcyBub3QKPiBzdHJhaWdodGZvcndhcmQgbGlrZSBNTUMgYm9vdCBpbWFn
ZSBjcmVhdGlvbiB3aGVyZSBmb3JtZXIKPiByZXF1aXJlcyB0byBzcGVjaWZ5IHRwbCwgc3BsIGlu
IG11bHRpbWFnZSBmb3JtYXQgaW4gbWtpbWFnZSwKPiBhbmQgbGF0ZXIgc2ltcGx5IGRvIGEgY29u
Y2F0ZW5hdGUgbWtpbWFnZWQtdHBsIHdpdGggc3BsLgo+IAo+IE9uIHRoaXMgbm90ZSwgbGV0IGRy
b3AgcmtzcGkgaW1hZ2UgdHlwZSBjcmVhdGlvbiB2aWEga2J1aWxkCj4gYW5kIGxldCBpbmZvcm0g
dmlhIHJvY2tjaGlwLnJzdAo+IAo+IFNpZ25lZC1vZmYtYnk6IEphZ2FuIFRla2kgPGphZ2FuQGFt
YXJ1bGFzb2x1dGlvbnMuY29tPgo+IFJldmlld2VkLWJ5OiBLZXZlciBZYW5nIDxrZXZlci55YW5n
QHJvY2stY2hpcHMuY29tPgo+IC0tLQo+IENoYW5nZXMgZm9yIHYzOgo+IC0gbm9uZQo+IAo+IE1h
a2VmaWxlIHwgMTEgKystLS0tLS0tLS0KPiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCsp
LCA5IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9NYWtlZmlsZSBiL01ha2VmaWxlCj4g
aW5kZXggMzg1MWRkOWZhMC4uZGIzYjZiOTk5MSAxMDA2NDQKPiAtLS0gYS9NYWtlZmlsZQo+ICsr
KyBiL01ha2VmaWxlCj4gQEAgLTE0MzgsMjIgKzE0MzgsMTUgQEAgdS1ib290LXdpdGgtc3BsLmJp
bjogJChTUExfSU1BR0UpICQoU1BMX1BBWUxPQUQpIEZPUkNFCj4gCj4gaWZlcSAoJChDT05GSUdf
QVJDSF9ST0NLQ0hJUCkseSkKPiAKPiAtIyByb2NrY2hpcCBpbWFnZSB0eXBlCj4gLWlmZXEgKCQo
Q09ORklHX1NQTF9TUElfTE9BRCkseSkKPiAtUk9DS0NISVBfSU1HX1RZUEUgOj0gcmtzcGkKPiAt
ZWxzZQo+IC1ST0NLQ0hJUF9JTUdfVFlQRSA6PSBya3NkCj4gLWVuZGlmCgpUaGlzIHNob3VsZCBu
b3QgYmUgZWl0aGVyLW9yLCBidXQgcmF0aGVyIGFsbG93IHRoZSBjcmVhdGlvbiBvZiBib3RoIGEg
U1BJIGFuZCBTRC9lTU1DIGltYWdlCmZvciBhIHBsYXRmb3JtLCBpZiBzbyBkZXNpcmVkIOKAlCBl
LmcuIHRoZSBSSzMzOTktUTcgc3VwcG9ydHMgYm90aCBTUEkgYW5kIGVNTUMgYm9vdCBhbmQgaXQK
aXMgYSB1c2VyLWNob2ljZSB3aGljaCBsb2NhdGlvbiB3aWxsIGJlIHVzZWQgZm9yIHRoZSBib290
bG9hZGVyLgoKSW4gb3RoZXIgd29yZHM6IG1ha2UgdGhpcyBhIOKAnGNoZWNrYm944oCdIG9wdGlv
biBpbiBLY29uZmlnIGFuZCBvdXRwdXQgYSBya3NwaSwgYSBya3NkIG9yIGJvdGgKaW1hZ2VzIGRl
cGVuZGluZyBvbiB3aGF0IGlzIHNlbGVjdGVkLgoKVGhhbmtzLApQaGlsaXBwLgoKPiAtCj4gIyBU
UEwgKyBTUEwKPiBpZmVxICgkKENPTkZJR19TUEwpJChDT05GSUdfVFBMKSx5eSkKPiAtTUtJTUFH
RUZMQUdTX3UtYm9vdC10cGwtcm9ja2NoaXAuYmluID0gLW4gJChDT05GSUdfU1lTX1NPQykgLVQg
JChST0NLQ0hJUF9JTUdfVFlQRSkKPiArTUtJTUFHRUZMQUdTX3UtYm9vdC10cGwtcm9ja2NoaXAu
YmluID0gLW4gJChDT05GSUdfU1lTX1NPQykgLVQgcmtzZAo+IHRwbC91LWJvb3QtdHBsLXJvY2tj
aGlwLmJpbjogdHBsL3UtYm9vdC10cGwuYmluIEZPUkNFCj4gCSQoY2FsbCBpZl9jaGFuZ2VkLG1r
aW1hZ2UpCj4gaWRibG9hZGVyLmltZzogdHBsL3UtYm9vdC10cGwtcm9ja2NoaXAuYmluIHNwbC91
LWJvb3Qtc3BsLmJpbiBGT1JDRQo+IAkkKGNhbGwgaWZfY2hhbmdlZCxjYXQpCj4gZWxzZQo+IC1N
S0lNQUdFRkxBR1NfaWRibG9hZGVyLmltZyA9IC1uICQoQ09ORklHX1NZU19TT0MpIC1UICQoUk9D
S0NISVBfSU1HX1RZUEUpCj4gK01LSU1BR0VGTEFHU19pZGJsb2FkZXIuaW1nID0gLW4gJChDT05G
SUdfU1lTX1NPQykgLVQgcmtzZAo+IGlkYmxvYWRlci5pbWc6IHNwbC91LWJvb3Qtc3BsLmJpbiBG
T1JDRQo+IAkkKGNhbGwgaWZfY2hhbmdlZCxta2ltYWdlKQo+IGVuZGlmCj4gLS0gCj4gMi4yNS4x
Cj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
