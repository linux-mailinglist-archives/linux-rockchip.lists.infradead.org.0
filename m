Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B8171868B8
	for <lists+linux-rockchip@lfdr.de>; Mon, 16 Mar 2020 11:08:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rcAbq1Gw/xlIil3V9dCahuIsSIr6PaEMcCJCZHxWeJ4=; b=Gahw3cFR5I57tL
	MPMG+cN4Mk1hRYOZUnOQg6h80W4mK2krDgTd5xn415vEmGyOBAgS7ZfOCyKMmUPdrCPmAsi7Bo9GP
	Ue9+kPDpZJU5/Gog1rKfJKRWaebMWkMzVH0/eKL9L4kqdU3bRFOw7pXaA5WAXJ2Jr8LQgK9ENsTPC
	A4RXsb2mtEeZCgt1ZqTFBOR7FlwpXS+R+FOyqAWGComS58uhE/x3FJSKoOmMbKhF9jIYEM0hNE0VT
	JrsffOKxqBao4hXKegdH+Gi+pTcUFNjNUd6aOjul0sKsfFaztvS1/OGfAtixNEXZIqO9o/R6FTc+5
	ctub4andleciJGp2FrJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDmfe-00053R-H7; Mon, 16 Mar 2020 10:08:30 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDmfQ-0004qs-Oy; Mon, 16 Mar 2020 10:08:18 +0000
X-Originating-IP: 90.89.41.158
Received: from xps13 (lfbn-tou-1-1473-158.w90-89.abo.wanadoo.fr [90.89.41.158])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id B0FD26002D;
 Mon, 16 Mar 2020 10:06:58 +0000 (UTC)
Date: Mon, 16 Mar 2020 11:06:58 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: =?UTF-8?B?6LW15Luq5bOw?= <yifeng.zhao@rock-chips.com>
Subject: Re: [PATCH v3 1/3] mtd: rawnand: rockchip: NFC drivers for RK3308,
 RK3188 and others
Message-ID: <20200316110658.43aea94a@xps13>
In-Reply-To: <2020031617554207432140@rock-chips.com>
References: <20200303094736.7490-1-yifeng.zhao@rock-chips.com>
 <20200303094736.7490-2-yifeng.zhao@rock-chips.com>
 <20200309121645.1fca069d@xps13>
 <2020031617554207432140@rock-chips.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_030817_080181_BFCC2D39 
X-CRM114-Status: GOOD (  21.99  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree <devicetree@vger.kernel.org>, vigneshr <vigneshr@ti.com>,
 richard <richard@nod.at>, linux-rockchip <linux-rockchip@lists.infradead.org>,
 robh+dt <robh+dt@kernel.org>, linux-mtd <linux-mtd@lists.infradead.org>,
 =?UTF-8?B?SGVpa29TdMO8Ym5lcg==?= <heiko@sntech.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgWWlmZW5nLAoK6LW15Luq5bOwIDx5aWZlbmcuemhhb0Byb2NrLWNoaXBzLmNvbT4gd3JvdGUg
b24gTW9uLCAxNiBNYXIgMjAyMCAxNzo1OToyNgorMDgwMDoKCj4gSGkgbWlxdWVs77yMCj4gCj4g
MS4KPiA+QSBjb21tZW50IGhlcmUgZXhwbGFpbmluZyB3aGF0IHRoZSBuZXh0IGZ1bmN0aW9uIGRv
ZXMgYW5kIHdoeSB3b3VsZCBiZQo+ID5uaWNlLgo+ID4gIAo+ID4+ICtzdGF0aWMgdm9pZCBya19u
ZmNfZm9ybWF0X3BhZ2Uoc3RydWN0IG10ZF9pbmZvICptdGQsIGNvbnN0IHU4ICpidWYpCj4gPj4g
K3sKPiA+PiArCXN0cnVjdCBuYW5kX2NoaXAgKmNoaXAgPSBtdGRfdG9fbmFuZChtdGQpOwo+ID4+
ICsJc3RydWN0IHJrX25mYyAqbmZjID0gbmFuZF9nZXRfY29udHJvbGxlcl9kYXRhKGNoaXApOwo+
ID4+ICsJdTMyIGk7Cj4gPj4gKyAgIAo+IAo+IFRoZSBkYXRhIGxheW91dCBpcyBkaWZmZXJlbnQg
YmV0d2VlbiBORkMgYW5kIG5hbmQgwqBkcml2ZXIKCnlvdSBwcm9iYWJseSBtZWFuIGJldHdlZW4g
dGhlIE5BTkQgZmxhc2ggY29udHJvbGxlciBhbmQgd2jDqXQgdGhlIE5BTkQKY29yZSBleHBlY3Rz
LCBidXQgb2sKCj4gVGhpcyBjb2RlIGlzIGRlc2lnbmVkIHdpdGggcmVmZXJlbmNlIHRvIG10a19u
YW5kLmMKPiBUaGVyZSBpcyBhIGRlc2NyaXB0aW9uIG9mIHRoZSBkYXRhIGxheW91dCBhdCB0aGUg
YmVnaW5uaW5nIG9mIHRoZSBmaWxlOgo+IMKgKiBORkMgUGFnZSBEYXRhIExheW91dDoKPiDCoCoJ
MTAyNCBCeXRlcyBEYXRhICsgNEJ5dGVzIHN5cyBkYXRhICsgMjhCeXRlc34xMjRCeXRlcyBlY2Mg
Kwo+IMKgKgkxMDI0IEJ5dGVzIERhdGEgKyA0Qnl0ZXMgc3lzIGRhdGEgKyAyOEJ5dGVzfjEyNEJ5
dGVzIGVjYyArCj4gwqAqCS4uLi4uLgo+IMKgKiBOQU5EIFBhZ2UgRGF0YSBMYXlvdXQ6Cj4gwqAq
CTEwMjQgKiBuIERhdGEgKyBtIEJ5dGVzIG9vYgo+IMKgKiBPcmlnaW5hbCBCYWQgQmxvY2sgTWFz
ayBMb2NhdGlvbjoKPiDCoCoJZmlyc3QgYnl0ZSBvZiBvb2Ioc3BhcmUpCj4gwqAqIG5hbmRfY2hp
cC0+b29iX3BvaSBkYXRhIGxheW91dDoKPiDCoCoJNEJ5dGVzIHN5cyBkYXRhICsgLi4uLiArIDRC
eXRlcyBzeXMgZGF0YSArIGVjYyBkYXRhCj4gCj4gMi7CoAo+ID4+ICsJZG1hX3JlZyA9IERNQV9T
VCB8ICgoIXJ3KSA8PCBETUFfV1IpIMKgfCBETUFfRU4gfCAoMiA8PCBETUFfQUhCX1NJWkUpIHwK
PiA+PiArCcKgIMKgIMKgKDcgPDwgRE1BX0JVUlNUX1NJWkUpIHwgKDE2IDw8IERNQV9JTkNfTlVN
KTsKPiA+PiArCj4gPj4gKwlmbF9yZWcgPSAocncgPDwgRkxDVExfV1IpIHwgRkxDVExfWEZFUl9F
TiB8IEZMQ1RMX0FDT1JSRUNUIHwKPiA+PiArCShuX0tCIDw8IEZMQ1RMX1hGRVJfU0VDVE9SKSB8
IEZMQ1RMX1RPR19GSVg7Cj4gPj4gKwo+ID4+ICsJaWYgKG5mYy0+bmZjX3ZlcnNpb24gPT0gNikg
eyAgCj4gPgo+ID5JIHdvdWxkIHByZWZlciB1c2luZyBzd2l0Y2ggc3RhdGVtZW50cyBhbnkgdGlt
ZSB5b3UgY2hlY2sgdGhlIHZlcnNpb24uCj4gPlRoZSB2ZXJzaW9uIHNob3VsZCBiZSBhbiBlbnVt
Lgo+ID4KPiA+WW91IGNhbiBhbHNvIGRlZmluZSBhIHBsYXRmb3JtIGRhdGEgc3RydWN0dXJlIGZv
ciB0aGUgcmVnaXN0ZXIgb2Zmc2V0cwo+ID50aGF0IGhhdmUgdGhlIHNhbWUgbmFtZSwgYnV0IG5v
dCBuZWNlc3NhcmlseSB0aGUgc2FtZSBvZmZzZXQuIFRoZW4geW91Cj4gPmNhbiByZWZlcmVuY2Ug
dGhlIHJpZ2h0IHZhbHVlIGRpcmVjdGx5Lgo+ID5lZy4KPiA+Cj4gPglzdHJ1Y3QgcmtfbmZjX3Bs
YXRfZGF0YSB7Cj4gPgl1MzIgbmZjX2JjaGN0bF9vZmY7Cj4gPgkuLi4KPiA+CX07Cj4gPgo+ID4J
c3RydWN0IHJrX25mY19wbGF0X2RhdGEgcmtfbmZjX3Y2X3BsYXRfZGF0YSA9IHsKPiA+CW5mY19i
Y2hjdGxfb2ZmID0gLi4uOwo+ID4JLi4uCj4gPgl9Owo+ID4KPiA+CWJjaF9yZWcgPSByZWFkbChw
ZGF0YS0+bmZjX2JjaGN0bF9vZmYpOyAgCj4gCj4gSSB3aWxsIG1vZGlmeSB0aGUgY29kZSB3aXRo
IHN3aXRjaCBhbmQgZW51bSwgYnV0IGl0IGlzIGRpZmZpY3VsdCB0byB1c2UgcGxhdGZvcm0gZGF0
YSBzdHJ1Y3R1cmUswqAKPiBiZWNhdXNlIHRoZSBiaXQgb2Zmc2V0IGluc2lkZSB0aGUgcmVnaXN0
ZXIgaXMgYWxzbyBkaWZmZXJlbnQuCgppdCB3b3JrcyB0aGUgc2FtZSB3aXRoIGJpdGZpZWxkcyBh
Y3R1YWxseSwgaWYgdGhlIGJpdGZpZWxkcyBoYXZlIGNsb3NlCm5hbWVzIGFuZCBiZWhhdmUgdGhl
IHNhbWUgKG5vIG1hdHRlciB3aGVyZSB0aGV5IGFyZSBpbiByZWdpc3RlcnMpLCB5b3UKc2hvdWxk
IHByb2JhYmx5IGRlZmluZSB0aGVtIGluIGEgcGxhdGZvcm0gZGF0YSBzdHJ1Y3R1cmUgYXMgd2Vs
bC4KCj4gI2RlZmluZQlORkNfQkNIX1NUX1Y2CSgweDIwKQo+ICNkZWZpbmUJTkZDX0JDSF9TVF9W
OQkoMHgxNTApCj4gI2RlZmluZQlCQ0hfU1RfRVJSMF9WNglCSVQoMikKPiAjZGVmaW5lCUJDSF9T
VF9FUlIxX1Y2CUJJVCgxNSkKPiAjZGVmaW5lCUJDSF9TVF9FUlIwX1Y5CUJJVCgyKQo+ICNkZWZp
bmUJQkNIX1NUX0VSUjFfVjkJQklUKDE4KQo+ICNkZWZpbmUJRUNDX0VSUl9DTlQwX1Y2KHgpICgo
KCgoeCkgJiAoMHgxRiA8PCAzKSkgPj4gMykgXAo+IHwgKCgoeCkgJiAoMSA8PCAyNykpID4+IDIy
KSkgJiAweDNGKQo+ICNkZWZpbmUJRUNDX0VSUl9DTlQxX1Y2KHgpICgoKCgoeCkgJiAoMHgxRiA8
PCAxNikpID4+IDE2KSBcCj4gfCAoKCh4KSAmICgxIDw8IDI5KSkgPj4gMjQpKSAmIDB4M0YpCj4g
I2RlZmluZQlFQ0NfRVJSX0NOVDBfVjkoeCkgKCgoeCkgJiAoMHg3RiA8PCAzKSkgPj4gMykKPiAj
ZGVmaW5lCUVDQ19FUlJfQ05UMV9WOSh4KSAoKCh4KSAmICgweDdGIDw8IDE5KSkgPj4gMTkpCj4g
Cj4gMy4KPiA+PiArc3RhdGljIGludCBya19uZmNfd3JpdGVfcGFnZV9yYXcoc3RydWN0IG5hbmRf
Y2hpcCAqY2hpcCwgY29uc3QgdTggKmJ1ZiwKPiA+PiArCcKgaW50IG9vYl9vbiwgaW50IHBhZ2Up
Cj4gPj4gK3sKPiA+PiArCXN0cnVjdCBtdGRfaW5mbyAqbXRkID0gbmFuZF90b19tdGQoY2hpcCk7
Cj4gPj4gKwlzdHJ1Y3QgcmtfbmZjICpuZmMgPSBuYW5kX2dldF9jb250cm9sbGVyX2RhdGEoY2hp
cCk7Cj4gPj4gKwo+ID4+ICsJcmtfbmZjX2Zvcm1hdF9wYWdlKG10ZCwgYnVmKTsKPiA+PiArCXJl
dHVybiBya19uZmNfd3JpdGVfcGFnZShtdGQsIGNoaXAsIG5mYy0+YnVmZmVyLCBwYWdlLCAxKTsg
IAo+ID4KPiA+SSB0aGluayB5b3Ugc2hvdWxkIGF2b2lkIGNhbGxpbmcgLT53cml0ZV9wYWdlLiBZ
b3Ugd2lsbCBhdm9pZCBhbgo+ID5pbmRlbnRhdGlvbiBsZXZlbCBpbiB0aGlzIGZ1bmN0aW9uIGFu
ZCBjbGFyaWZ5IHdoYXQgd3JpdGVfcGFnZV9yYXcgZG8uCj4gPlNhbWUgZm9yIHJlYWQsIGFuZCB0
aGUgX29vYiBhbHRlcm5hdGl2ZS4gQWxzbywgSSdtIHN1cmUgd3JpdGVfYnVmIGRvZXMKPiA+bm90
IG5lZWQgdG8gYmUgZXhwb3J0ZWQgYW5kIHlvdSBjYW4ganVzdCBtb3ZlIHRoZSBhY3R1YWwgY29k
ZSBpbiB0aGlzCj4gPmZ1bmN0aW9uLiAgCj4gCj4gVGhlIGNvZGXCoMKgaXMgZGVzaWduZWQgd2l0
aCByZWZlcmVuY2UgdG8gbXRrX25hbmQuYy4KPiBUaGUgZnVuY3Rpb24gcmtfbmZjX2Zvcm1hdF9w
YWdlIHdpbGwgY29weSBkYXRhIGZyb20gZXh0ZXJuIGJ1ZmZlciB0byBuZmMtPmJ1ZmZlci4KPiBJ
IHdpbGwgbW92ZSB0aGUgY29kZSBpbiB0aGUgZnVuY3Rpb24gcmtfbmZjX2Zvcm1hdF9wYWdlIHRv
IHJrX25mY193cml0ZV9wYWdlX3Jhdy4KPiAKPiA0Lgo+ID4+ICtzdGF0aWMgaW50IHJrX25mY193
cml0ZV9wYWdlX2h3ZWNjKHN0cnVjdCBuYW5kX2NoaXAgKmNoaXAsIGNvbnN0IHU4ICpidWYsCj4g
Pj4gKwnCoCDCoGludCBvb2Jfb24sIGludCBwYWdlKQo+ID4+ICt7Cj4gPj4gKwlyZXR1cm4gcmtf
bmZjX3dyaXRlX3BhZ2UobmFuZF90b19tdGQoY2hpcCksIGNoaXAsIGJ1ZiwgcGFnZSwgMCk7Cj4g
Pj4gK30gIAo+ID4KPiA+V2hhdCBpcyB0aGUgcHVycG9zZSBvZiB0aGlzIGluZGlyZWN0aW9uPwo+
ID4gIAo+IAo+IFRoZSBmdW5jdGlvbiDCoHJrX25mY193cml0ZV9wYWdlIGFsc28gY2FsbCBiecKg
cmtfbmZjX3dyaXRlX3BhZ2VfcmF3LMKgYSBwYXJhbWV0ZXIocmF3KQo+IGlzIHJlcXVpcmVkIHRv
IGNvbmZpcm0gd2hldGhlciBFQ0MgaXMgdXNlZCBvciBub3QuCgpPay4KClRoYW5rcywKTWlxdcOo
bAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
