Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 766E13D037
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 17:06:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hocFrZY/4cPJXOwEjFmCGSPwCVfezYKMj4e+6w3y9dU=; b=da6D4bSZcgfaDC
	/Wuix1n3jrrA90NpFholknRlxHxAFwK4sge4rD/vMgjNObnzlN3ncuRBlPld7fshVUeqYIMxxkZ4b
	cLL0bkGjTftq6eAUMz6KBih/zlSoDzT6Ur+6agetMC09sYsoi+GFpTiqxo5PERcetWNFiss5Wbfqj
	wmIG/85OnNulGoLLqW858v85aHxRybsSuVeJHVOjBitL9bjzdbeHvrU09BDWzKUdvAysdf8iG7wPO
	Q9DlMGwhgGirBqtr2WOlaPGTwOw6Sj4ccqFTIbik5lVZBfUb/r1FpNoWQOO0zXe6SDnwOeZUbacIk
	Yujd8S/9FBJwPOOsxVTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiLu-0007dV-Qn; Tue, 11 Jun 2019 15:06:22 +0000
Received: from vegas.theobroma-systems.com ([144.76.126.164]
 helo=mail.theobroma-systems.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiLr-0007d2-J8
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 15:06:20 +0000
Received: from ip092042140082.rev.nessus.at ([92.42.140.82]:53920
 helo=[10.4.9.214]) by mail.theobroma-systems.com with esmtpsa
 (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256) (Exim 4.80)
 (envelope-from <philipp.tomsich@theobroma-systems.com>)
 id 1haiLh-0004tM-KX; Tue, 11 Jun 2019 17:06:09 +0200
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: [PATCH 00/92] ram: rk3399: Add LPDDR4 support
From: Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
In-Reply-To: <CAMty3ZDxop1nKHOxGYC0O7b8HL_ybmBSZr1P8gbDpz7eKyOyDw@mail.gmail.com>
Date: Tue, 11 Jun 2019 17:06:08 +0200
Message-Id: <FBD392EE-BC7F-462D-89BF-4B97A70CAD9A@theobroma-systems.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
 <349AB0AF-4DEE-4BC8-8FEF-B3DBD34564E4@theobroma-systems.com>
 <CAMty3ZDxop1nKHOxGYC0O7b8HL_ybmBSZr1P8gbDpz7eKyOyDw@mail.gmail.com>
To: Jagan Teki <jagan@amarulasolutions.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_080619_782158_D75EF3A4 
X-CRM114-Status: UNSURE (   8.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [144.76.126.164 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
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
Cc: YouMin Chen <cym@rock-chips.com>, U-Boot-Denx <u-boot@lists.denx.de>,
 Simon Glass <sjg@chromium.org>, Akash Gajjar <gajjar04akash@gmail.com>,
 Kever Yang <kever.yang@rock-chips.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Cgo+IE9uIDExLjA2LjIwMTksIGF0IDE3OjAzLCBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29s
dXRpb25zLmNvbT4gd3JvdGU6Cj4gCj4gT24gVHVlLCBKdW4gMTEsIDIwMTkgYXQgODoyMyBQTSBQ
aGlsaXBwIFRvbXNpY2gKPiA8cGhpbGlwcC50b21zaWNoQHRoZW9icm9tYS1zeXN0ZW1zLmNvbT4g
d3JvdGU6Cj4+IAo+PiAKPj4gCj4+PiBPbiAxMS4wNi4yMDE5LCBhdCAxNjo1MCwgSmFnYW4gVGVr
aSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+IHdyb3RlOgo+Pj4gCj4+PiBZZXMsIGl0IGNh
biBiZSBwb3NzaWJsZSB0byBicmVhayB0aGlzIHNlcmllcyBpbnRvIG11bHRpcGxlIHN1YiBzZXJp
ZXMKPj4+IGJ1dCBpZGVhIGhlcmUgaXMgdG8gbWFyayBhbGwgdGhlIHJlcXVpcmVkIGNoYW5nZXMg
dG8gc3VwcG9ydCBMUEREUjQKPj4+IGluIHJrMzM5OSBpbiBvbmUgc2V0LiBpZiByZXF1aXJlZCB3
ZSBjYW4gYnJlYWsgaXQgZnJvbSBuZXh0IHZlcnNpb25zLgo+Pj4gCj4+PiBUaGlzIGlzIHRoZSBp
bml0aWFsIHNldCBmb3Igc3VwcG9ydGluZyBMUEREUjQgd2l0aCBhc3NvY2lhdGVkCj4+PiBmZWF0
dXJlcy4KPj4+IAo+Pj4gVGhhbmtzIHRvCj4+PiAtIFlvdU1pbiBDaGVuCj4+PiAtIEFrYXNoIEdh
amphcgo+Pj4gLSBLZXZlciBZYW5nCj4+PiBmb3Igc3VwcG9ydGluZyBhbGwgdGhlIGhlbHAgb24g
dGhpcyB3b3JrLgo+Pj4gCj4+PiBPbiBzdW1tYXJ5IHRoaXMgc2VyaWVzIHN1cHBvcnQKPj4+IC0g
Q29kZSB3YXJuaW5nIGFuZCBmaXhlcwo+Pj4gLSByYW5rIGRldGVjdGlvbiwgdGhpcyB3b3VsZCBy
ZXF1aXJlZCB0byBwcm9iZSBzaW5nbGUgY2hhbm5lbAo+Pj4gc2RyYW0gY29uZmlndXJlZCBpbiBO
YW5vUEktTkVPNAo+Pj4gLSBMUEREUjQgc3VwcG9ydCwgdGVzdGVkIGluIFJvY2twcm82NCBhbmQg
Um9jay1QSS00Cj4+PiAKPj4+IHBhdGNoIDAwMDEgLSAwMDMzOiBmaXggY29kZSB3YXJuaW5ncywg
cHJpbnRzLCBuZXcgbWFjcm9zCj4+PiAKPj4+IHBhdGNoIDAwMzQgLSAwMDUxOiByYW5rIGRldGVj
dGlvbiwgc2RyYW0gZGVidWcgY29kZQo+Pj4gCj4+PiBwYXRjaCAwMDUyOiBVc2UgRERSMy0xODAw
IG9uIE5hbm9QSS1ORU80Cj4+PiAKPj4+IHBhdGNoIDAwNTMgLSAwMDg5OiBscGRkcjQgc3VwcG9y
dAo+Pj4gCj4+PiBwYXRjaCAwMDkwOiBMUEREUjQtMTAwIHRpbWluZ3MKPj4+IAo+Pj4gcGF0Y2gg
MDA5MTogVXNlIExQRERSNC0xMDAgb24gUm9ja3BybzY0Cj4+PiAKPj4+IHBhdGNoIDAwOTI6IFVz
ZSBMUEREUjQtMTAwIG9uIFJvY2stUEkgNAo+Pj4gCj4+PiBOb3RlOiBQdW1hIHJrMzM5OSBoYXMg
U1BMIHNpemUgb3ZlcmZsb3csIGJldHRlciB0byBlbmFibGUgVFBMCj4+PiBmb3IgdGhpcyBib2Fy
ZC4KPj4gCj4+IFdlIG5lZWQgdG8ga2VlcCBQdW1hIG9uIGEgU1BMLW9ubHkgY29uZmlndXJhdGlv
biBmb3IgdGhlIHRpbWUgYmVpbmcuCj4+IFBsZWFzZSBtYWtlIHN1cmUgdGhhdCB0aGUgTFBERFI0
IGNvZGUgaXMgYW4gb3B0aW9uYWwgZmVhdHVyZSB0aGF0IGRvZXMgbm90Cj4+IGluY3JlYXNlIHRo
ZSBEUkFNLWRyaXZlciBzaXplIGZvciBib2FyZHMgdGhhdCBkb27igJl0IG5lZWQvd2FudCBpdC4K
PiAKPiBXZSBoYXZlIGZldyBib2FyZHMgZG8gaGF2ZSBUUEwtcnVubmFibGUsIHdvdWxkIGJlIGFu
eSB0ZWNobmljYWwgaXNzdWUKPiB0byBzd2l0Y2ggcHVtYSB0byBUUEw/IGJlY2F1c2Ugd2UgaGF2
ZSBscGRkcjQgY29kZSBwYXJ0IG9mIGV4aXN0aW5nCj4gZHJpdmVyIGl0c2VsZiBhbmQgaXQgcmVx
dWlyZSBleHRyYSBpZmRlZiB0byBjb25zaWRlciB3aGljaCBpbmRlZWQgbG9vawo+IGF3ZnVsIGZy
b20gY29kZSBwb2ludC1vZi12aWV3LgoKT3VyIHNlY3VyZSBib290IHByb2Nlc3MgKGkuZS4gc2ln
bmluZyB0b29scykgY3VycmVudGx5IGRlcGVuZHMgb24gdGhpcyBhbmQKdGhlIGNoYW5nZW92ZXIg
d29u4oCZdCBiZSBxdWlja+KApgoKVGhhbmtzLApQaGlsaXBwLgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
