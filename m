Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 501031BBA65
	for <lists+linux-rockchip@lfdr.de>; Tue, 28 Apr 2020 11:54:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NYBWKtjgofhbeQJowAPoUL1NpbgYF227b3D/l3U3nQE=; b=MpNRVzxzhSLY03/vjbVTQG6q7
	5Vs59BI5HVXmsmL3Irtsf9F6z8apO8KfLrMEqMteoctjjpqxyz6Qw7kPfPzSJpcWL4vZ9MWN7yXUF
	CsdcmGK7zYkp+00aV4o6rkz5HuT0uDWBurPsKv5dUSLEIxfumVBLJeEQvE+exQJBnIFXgvZel0sbz
	WoU5l+iTYMBZqTbal0CzIivbQ8un70Rury3ptQuNWIZVnoWlGMlWaZa0u/M43GTboHzC3n1z0qAna
	UVx4hrcifTXLXO2ntdBVV3vVuPupn6KadrO6vg0vP4o4rdJyCBxDssFLjmjArqC3TuK44GwKT19yQ
	t9SbrrWtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTMwH-0000Kv-Cd; Tue, 28 Apr 2020 09:54:05 +0000
Received: from regular1.263xmail.com ([211.150.70.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTMwD-0000K8-AM
 for linux-rockchip@lists.infradead.org; Tue, 28 Apr 2020 09:54:03 +0000
Received: from localhost (unknown [192.168.167.32])
 by regular1.263xmail.com (Postfix) with ESMTP id F264110C5;
 Tue, 28 Apr 2020 17:53:54 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.16] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P42525T140340900116224S1588067633150919_; 
 Tue, 28 Apr 2020 17:53:54 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <e63ea67503b292da3f444da84bf2fb91>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH 5/8] pci: Add Rockchip PCIe controller driver
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20200425110354.12381-1-jagan@amarulasolutions.com>
 <20200425110354.12381-6-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <89e66772-130e-1867-1630-72c941082673@rock-chips.com>
Date: Tue, 28 Apr 2020 17:53:53 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200425110354.12381-6-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_025401_809435_D8809819 
X-CRM114-Status: GOOD (  21.85  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.196 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org, patrick@blueri.se,
 linux-amarula@amarulasolutions.com, sunil@amarulasolutions.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvNC8yNSDkuIvljYg3OjAzLCBKYWdhbiBUZWtpIHdyb3RlOgo+IEFkZCBSb2NrY2hp
cCBQQ0llIGNvbnRyb2xsZXIgZHJpdmVyIGZvciByazMzOTkgcGxhdGZvcm0uCj4KPiBEcml2ZXIg
c3VwcG9ydCBHZW4xIGJ5IG9wZXJhdGluZyBhcyBhIFJvb3QgY29tcGxleC4KPgo+IFRoYW5rcyB0
byBQYXRyaWNrIGZvciBpbml0aWFsIHdvcmsuCj4KPiBTaWduZWQtb2ZmLWJ5OiBQYXRyaWNrIFdp
bGR0IDxwYXRyaWNrQGJsdWVyaS5zZT4KPiBTaWduZWQtb2ZmLWJ5OiBKYWdhbiBUZWtpIDxqYWdh
bkBhbWFydWxhc29sdXRpb25zLmNvbT4KCgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8a2V2ZXIu
eWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKLSBLZXZlcgo+IC0tLQo+ICAgZHJpdmVycy9w
Y2kvS2NvbmZpZyAgICAgICAgIHwgICA4ICsKPiAgIGRyaXZlcnMvcGNpL01ha2VmaWxlICAgICAg
ICB8ICAgMSArCj4gICBkcml2ZXJzL3BjaS9wY2llX3JvY2tjaGlwLmMgfCA0NjAgKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gICBkcml2ZXJzL3BjaS9wY2llX3JvY2tjaGlw
LmggfCAgNzkgKysrKysrKwo+ICAgNCBmaWxlcyBjaGFuZ2VkLCA1NDggaW5zZXJ0aW9ucygrKQo+
ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvcGNpL3BjaWVfcm9ja2NoaXAuYwo+ICAgY3Jl
YXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvcGNpL3BjaWVfcm9ja2NoaXAuaAo+Cj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvcGNpL0tjb25maWcgYi9kcml2ZXJzL3BjaS9LY29uZmlnCj4gaW5kZXggNDM3
Y2Q5YTA1NS4uM2RiYTg0MTAzYiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BjaS9LY29uZmlnCj4g
KysrIGIvZHJpdmVycy9wY2kvS2NvbmZpZwo+IEBAIC0xOTcsNCArMTk3LDEyIEBAIGNvbmZpZyBQ
Q0lFX01FRElBVEVLCj4gICAJICBTYXkgWSBoZXJlIGlmIHlvdSB3YW50IHRvIGVuYWJsZSBHZW4y
IFBDSWUgY29udHJvbGxlciwKPiAgIAkgIHdoaWNoIGNvdWxkIGJlIGZvdW5kIG9uIE1UNzYyMyBT
b0MgZmFtaWx5Lgo+ICAgCj4gK2NvbmZpZyBQQ0lFX1JPQ0tDSElQCj4gKwlib29sICJFbmFibGUg
Um9ja2NoaXAgUENJZSBkcml2ZXIiCj4gKwlzZWxlY3QgRE1fUENJCj4gKwlkZWZhdWx0IHkgaWYg
Uk9DS0NISVBfUkszMzk5Cj4gKwloZWxwCj4gKwkgIFNheSBZIGhlcmUgaWYgeW91IHdhbnQgdG8g
ZW5hYmxlIFBDSWUgY29udHJvbGxlciBzdXBwb3J0IG9uCj4gKwkgIFJvY2tjaGlwIFNvQ3MuCj4g
Kwo+ICAgZW5kaWYKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvTWFrZWZpbGUgYi9kcml2ZXJz
L3BjaS9NYWtlZmlsZQo+IGluZGV4IGMwNTFlY2M5ZjMuLjQ5M2U5MzU0ZGQgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9wY2kvTWFrZWZpbGUKPiArKysgYi9kcml2ZXJzL3BjaS9NYWtlZmlsZQo+IEBA
IC00MywzICs0Myw0IEBAIG9iai0kKENPTkZJR19QQ0lfUEhZVElVTSkgKz0gcGNpZV9waHl0aXVt
Lm8KPiAgIG9iai0kKENPTkZJR19QQ0lFX0lOVEVMX0ZQR0EpICs9IHBjaWVfaW50ZWxfZnBnYS5v
Cj4gICBvYmotJChDT05GSUdfUENJX0tFWVNUT05FKSArPSBwY2llX2R3X3RpLm8KPiAgIG9iai0k
KENPTkZJR19QQ0lFX01FRElBVEVLKSArPSBwY2llX21lZGlhdGVrLm8KPiArb2JqLSQoQ09ORklH
X1BDSUVfUk9DS0NISVApICs9IHBjaWVfcm9ja2NoaXAubwo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3BjaS9wY2llX3JvY2tjaGlwLmMgYi9kcml2ZXJzL3BjaS9wY2llX3JvY2tjaGlwLmMKPiBuZXcg
ZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAuLmFkYzY0YWVkZjUKPiAtLS0gL2Rl
di9udWxsCj4gKysrIGIvZHJpdmVycy9wY2kvcGNpZV9yb2NrY2hpcC5jCj4gQEAgLTAsMCArMSw0
NjAgQEAKPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjArCj4gKy8qCj4gKyAq
IFJvY2tjaGlwIEFYSSBQQ0llIGhvc3QgY29udHJvbGxlciBkcml2ZXIKPiArICoKPiArICogQ29w
eXJpZ2h0IChjKSAyMDE2IFJvY2tjaGlwLCBJbmMuCj4gKyAqIENvcHlyaWdodCAoYykgMjAyMCBB
bWFydWxhIFNvbHV0aW9ucyhJbmRpYSkKPiArICogQ29weXJpZ2h0IChjKSAyMDIwIEphZ2FuIFRl
a2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+ICsgKiBDb3B5cmlnaHQgKGMpIDIwMTkg
UGF0cmljayBXaWxkdCA8cGF0cmlja0BibHVlcmkuc2U+Cj4gKyAqIENvcHlyaWdodCAoYykgMjAx
OCBNYXJrIEtldHRlbmlzIDxrZXR0ZW5pc0BvcGVuYnNkLm9yZz4KPiArICoKPiArICogQml0cyB0
YWtlbiBmcm9tIExpbnV4IFJvY2tjaGlwIFBDSWUgaG9zdCBjb250cm9sbGVyLgo+ICsgKi8KPiAr
Cj4gKyNpbmNsdWRlIDxjb21tb24uaD4KPiArI2luY2x1ZGUgPGNsay5oPgo+ICsjaW5jbHVkZSA8
ZG0uaD4KPiArI2luY2x1ZGUgPGRtL2RldmljZV9jb21wYXQuaD4KPiArI2luY2x1ZGUgPHBjaS5o
Pgo+ICsjaW5jbHVkZSA8cG93ZXItZG9tYWluLmg+Cj4gKyNpbmNsdWRlIDxwb3dlci9yZWd1bGF0
b3IuaD4KPiArI2luY2x1ZGUgPHJlc2V0Lmg+Cj4gKyNpbmNsdWRlIDxzeXNjb24uaD4KPiArI2lu
Y2x1ZGUgPGFzbS9pby5oPgo+ICsjaW5jbHVkZSA8YXNtLWdlbmVyaWMvZ3Bpby5oPgo+ICsjaW5j
bHVkZSA8YXNtL2FyY2gtcm9ja2NoaXAvY2xvY2suaD4KPiArI2luY2x1ZGUgPGxpbnV4L2lvcG9s
bC5oPgo+ICsKPiArI2luY2x1ZGUgInBjaWVfcm9ja2NoaXAuaCIKPiArCj4gK0RFQ0xBUkVfR0xP
QkFMX0RBVEFfUFRSOwo+ICsKPiArc3RhdGljIGludCByb2NrY2hpcF9wY2llX3JkX2NvbmYoY29u
c3Qgc3RydWN0IHVkZXZpY2UgKmJ1cywgcGNpX2Rldl90IGJkZiwKPiArCQkJCSB1aW50IG9mZnNl
dCwgdWxvbmcgKnZhbHVlcCwKPiArCQkJCSBlbnVtIHBjaV9zaXplX3Qgc2l6ZSkKPiArewo+ICsJ
c3RydWN0IHJvY2tjaGlwX3BjaWUgKnByaXYgPSBkZXZfZ2V0X3ByaXYoYnVzKTsKPiArCXVsb25n
IHZhbHVlOwo+ICsJdTMyIG9mZjsKPiArCj4gKwlvZmYgPSAoUENJX0JVUyhiZGYpIDw8IDIwKSB8
IChQQ0lfREVWKGJkZikgPDwgMTUpIHwKPiArCSAgICAgIChQQ0lfRlVOQyhiZGYpIDw8IDEyKSB8
IChvZmZzZXQgJiB+MHgzKTsKPiArCj4gKwlpZiAoKFBDSV9CVVMoYmRmKSA9PSBwcml2LT5maXJz
dF9idXNubykgJiYgKFBDSV9ERVYoYmRmKSA9PSAwKSkgewo+ICsJCXZhbHVlID0gcmVhZGwocHJp
di0+YXBiX2Jhc2UgKyBQQ0lFX1JDX05PUk1BTF9CQVNFICsgb2ZmKTsKPiArCQkqdmFsdWVwID0g
cGNpX2NvbnZfMzJfdG9fc2l6ZSh2YWx1ZSwgb2Zmc2V0LCBzaXplKTsKPiArCQlyZXR1cm4gMDsK
PiArCX0KPiArCj4gKwlpZiAoKFBDSV9CVVMoYmRmKSA9PSBwcml2LT5maXJzdF9idXNubyArIDEp
ICYmIChQQ0lfREVWKGJkZikgPT0gMCkpIHsKPiArCQl2YWx1ZSA9IHJlYWRsKHByaXYtPmF4aV9i
YXNlICsgb2ZmKTsKPiArCQkqdmFsdWVwID0gcGNpX2NvbnZfMzJfdG9fc2l6ZSh2YWx1ZSwgb2Zm
c2V0LCBzaXplKTsKPiArCQlyZXR1cm4gMDsKPiArCX0KPiArCj4gKwkqdmFsdWVwID0gcGNpX2dl
dF9mZihzaXplKTsKPiArCj4gKwlyZXR1cm4gMDsKPiArfQo+ICsKPiArc3RhdGljIGludCByb2Nr
Y2hpcF9wY2llX3dyX2NvbmYoc3RydWN0IHVkZXZpY2UgKmJ1cywgcGNpX2Rldl90IGJkZiwKPiAr
CQkJCSB1aW50IG9mZnNldCwgdWxvbmcgdmFsdWUsCj4gKwkJCQkgZW51bSBwY2lfc2l6ZV90IHNp
emUpCj4gK3sKPiArCXN0cnVjdCByb2NrY2hpcF9wY2llICpwcml2ID0gZGV2X2dldF9wcml2KGJ1
cyk7Cj4gKwl1bG9uZyBvbGQ7Cj4gKwl1MzIgb2ZmOwo+ICsKPiArCW9mZiA9IChQQ0lfQlVTKGJk
ZikgPDwgMjApIHwgKFBDSV9ERVYoYmRmKSA8PCAxNSkgfAo+ICsJICAgICAgKFBDSV9GVU5DKGJk
ZikgPDwgMTIpIHwgKG9mZnNldCAmIH4weDMpOwo+ICsKPiArCWlmICgoUENJX0JVUyhiZGYpID09
IHByaXYtPmZpcnN0X2J1c25vKSAmJiAoUENJX0RFVihiZGYpID09IDApKSB7Cj4gKwkJb2xkID0g
cmVhZGwocHJpdi0+YXBiX2Jhc2UgKyBQQ0lFX1JDX05PUk1BTF9CQVNFICsgb2ZmKTsKPiArCQl2
YWx1ZSA9IHBjaV9jb252X3NpemVfdG9fMzIob2xkLCB2YWx1ZSwgb2Zmc2V0LCBzaXplKTsKPiAr
CQl3cml0ZWwodmFsdWUsIHByaXYtPmFwYl9iYXNlICsgUENJRV9SQ19OT1JNQUxfQkFTRSArIG9m
Zik7Cj4gKwkJcmV0dXJuIDA7Cj4gKwl9Cj4gKwo+ICsJaWYgKChQQ0lfQlVTKGJkZikgPT0gcHJp
di0+Zmlyc3RfYnVzbm8gKyAxKSAmJiAoUENJX0RFVihiZGYpID09IDApKSB7Cj4gKwkJb2xkID0g
cmVhZGwocHJpdi0+YXhpX2Jhc2UgKyBvZmYpOwo+ICsJCXZhbHVlID0gcGNpX2NvbnZfc2l6ZV90
b18zMihvbGQsIHZhbHVlLCBvZmZzZXQsIHNpemUpOwo+ICsJCXdyaXRlbCh2YWx1ZSwgcHJpdi0+
YXhpX2Jhc2UgKyBvZmYpOwo+ICsJCXJldHVybiAwOwo+ICsJfQo+ICsKPiArCXJldHVybiAwOwo+
ICt9Cj4gKwo+ICtzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVfYXRyX2luaXQoc3RydWN0IHJvY2tj
aGlwX3BjaWUgKnByaXYpCj4gK3sKPiArCXN0cnVjdCB1ZGV2aWNlICpjdGxyID0gcGNpX2dldF9j
b250cm9sbGVyKHByaXYtPmRldik7Cj4gKwlzdHJ1Y3QgcGNpX2NvbnRyb2xsZXIgKmhvc2UgPSBk
ZXZfZ2V0X3VjbGFzc19wcml2KGN0bHIpOwo+ICsJdTY0IGFkZHIsIHNpemUsIG9mZnNldDsKPiAr
CXUzMiB0eXBlOwo+ICsJaW50IGksIHJlZ2lvbjsKPiArCj4gKwkvKiBVc2UgcmVnaW9uIDAgdG8g
bWFwIFBDSSBjb25maWd1cmF0aW9uIHNwYWNlLiAqLwo+ICsJd3JpdGVsKDI1IC0gMSwgcHJpdi0+
YXBiX2Jhc2UgKyBQQ0lFX0FUUl9PQl9BRERSMCgwKSk7Cj4gKwl3cml0ZWwoMCwgcHJpdi0+YXBi
X2Jhc2UgKyBQQ0lFX0FUUl9PQl9BRERSMSgwKSk7Cj4gKwl3cml0ZWwoUENJRV9BVFJfSERSX0NG
R19UWVBFMCB8IFBDSUVfQVRSX0hEUl9SSUQsCj4gKwkgICAgICAgcHJpdi0+YXBiX2Jhc2UgKyBQ
Q0lFX0FUUl9PQl9ERVNDMCgwKSk7Cj4gKwl3cml0ZWwoMCwgcHJpdi0+YXBiX2Jhc2UgKyBQQ0lF
X0FUUl9PQl9ERVNDMSgwKSk7Cj4gKwo+ICsJZm9yIChpID0gMDsgaSA8IGhvc2UtPnJlZ2lvbl9j
b3VudDsgaSsrKSB7Cj4gKwkJaWYgKGhvc2UtPnJlZ2lvbnNbaV0uZmxhZ3MgPT0gUENJX1JFR0lP
Tl9TWVNfTUVNT1JZKQo+ICsJCQljb250aW51ZTsKPiArCj4gKwkJaWYgKGhvc2UtPnJlZ2lvbnNb
aV0uZmxhZ3MgPT0gUENJX1JFR0lPTl9JTykKPiArCQkJdHlwZSA9IFBDSUVfQVRSX0hEUl9JTzsK
PiArCQllbHNlCj4gKwkJCXR5cGUgPSBQQ0lFX0FUUl9IRFJfTUVNOwo+ICsKPiArCQkvKiBPbmx5
IHN1cHBvcnQgaWRlbnRpdHkgbWFwcGluZ3MuICovCj4gKwkJaWYgKGhvc2UtPnJlZ2lvbnNbaV0u
YnVzX3N0YXJ0ICE9Cj4gKwkJICAgIGhvc2UtPnJlZ2lvbnNbaV0ucGh5c19zdGFydCkKPiArCQkJ
cmV0dXJuIC1FSU5WQUw7Cj4gKwo+ICsJCS8qIE9ubHkgc3VwcG9ydCBtYXBwaW5ncyBhbGlnbmVk
IG9uIGEgcmVnaW9uIGJvdW5kYXJ5LiAqLwo+ICsJCWFkZHIgPSBob3NlLT5yZWdpb25zW2ldLmJ1
c19zdGFydDsKPiArCQlpZiAoYWRkciAmIChQQ0lFX0FUUl9PQl9SRUdJT05fU0laRSAtIDEpKQo+
ICsJCQlyZXR1cm4gLUVJTlZBTDsKPiArCj4gKwkJLyogTWFwcGluZ3Mgc2hvdWxkIGxpZSBiZXR3
ZWVuIEFYSSBhbmQgQVBCIHJlZ2lvbnMuICovCj4gKwkJc2l6ZSA9IGhvc2UtPnJlZ2lvbnNbaV0u
c2l6ZTsKPiArCQlpZiAoYWRkciA8ICh1NjQpcHJpdi0+YXhpX2Jhc2UgKyBQQ0lFX0FUUl9PQl9S
RUdJT04wX1NJWkUpCj4gKwkJCXJldHVybiAtRUlOVkFMOwo+ICsJCWlmIChhZGRyICsgc2l6ZSA+
ICh1NjQpcHJpdi0+YXBiX2Jhc2UpCj4gKwkJCXJldHVybiAtRUlOVkFMOwo+ICsKPiArCQlvZmZz
ZXQgPSBhZGRyIC0gKHU2NClwcml2LT5heGlfYmFzZSAtIFBDSUVfQVRSX09CX1JFR0lPTjBfU0la
RTsKPiArCQlyZWdpb24gPSAxICsgKG9mZnNldCAvIFBDSUVfQVRSX09CX1JFR0lPTl9TSVpFKTsK
PiArCQl3aGlsZSAoc2l6ZSA+IDApIHsKPiArCQkJd3JpdGVsKDMyIC0gMSwKPiArCQkJICAgICAg
IHByaXYtPmFwYl9iYXNlICsgUENJRV9BVFJfT0JfQUREUjAocmVnaW9uKSk7Cj4gKwkJCXdyaXRl
bCgwLCBwcml2LT5hcGJfYmFzZSArIFBDSUVfQVRSX09CX0FERFIxKHJlZ2lvbikpOwo+ICsJCQl3
cml0ZWwodHlwZSB8IFBDSUVfQVRSX0hEUl9SSUQsCj4gKwkJCSAgICAgICBwcml2LT5hcGJfYmFz
ZSArIFBDSUVfQVRSX09CX0RFU0MwKHJlZ2lvbikpOwo+ICsJCQl3cml0ZWwoMCwgcHJpdi0+YXBi
X2Jhc2UgKyBQQ0lFX0FUUl9PQl9ERVNDMShyZWdpb24pKTsKPiArCj4gKwkJCWFkZHIgKz0gUENJ
RV9BVFJfT0JfUkVHSU9OX1NJWkU7Cj4gKwkJCXNpemUgLT0gUENJRV9BVFJfT0JfUkVHSU9OX1NJ
WkU7Cj4gKwkJCXJlZ2lvbisrOwo+ICsJCX0KPiArCX0KPiArCj4gKwkvKiBQYXNzdGhyb3VnaCBp
bmJvdW5kIHRyYW5zbGF0aW9ucyB1bm1vZGlmaWVkLiAqLwo+ICsJd3JpdGVsKDMyIC0gMSwgcHJp
di0+YXBiX2Jhc2UgKyBQQ0lFX0FUUl9JQl9BRERSMCgyKSk7Cj4gKwl3cml0ZWwoMCwgcHJpdi0+
YXBiX2Jhc2UgKyBQQ0lFX0FUUl9JQl9BRERSMSgyKSk7Cj4gKwo+ICsJcmV0dXJuIDA7Cj4gK30K
PiArCj4gK3N0YXRpYyBpbnQgcm9ja2NoaXBfcGNpZV9pbml0X3BvcnQoc3RydWN0IHVkZXZpY2Ug
KmRldikKPiArewo+ICsJc3RydWN0IHJvY2tjaGlwX3BjaWUgKnByaXYgPSBkZXZfZ2V0X3ByaXYo
ZGV2KTsKPiArCXUzMiBjciwgdmFsLCBzdGF0dXM7Cj4gKwlpbnQgcmV0Owo+ICsKPiArCWlmIChk
bV9ncGlvX2lzX3ZhbGlkKCZwcml2LT5lcF9ncGlvKSkKPiArCQlkbV9ncGlvX3NldF92YWx1ZSgm
cHJpdi0+ZXBfZ3BpbywgMCk7Cj4gKwo+ICsJcmV0ID0gcmVzZXRfYXNzZXJ0KCZwcml2LT5hY2xr
X3JzdCk7Cj4gKwlpZiAocmV0KSB7Cj4gKwkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8gYXNzZXJ0
IGFjbGsgcmVzZXQgKHJldD0lZClcbiIsIHJldCk7Cj4gKwkJcmV0dXJuIHJldDsKPiArCX0KPiAr
Cj4gKwlyZXQgPSByZXNldF9hc3NlcnQoJnByaXYtPnBjbGtfcnN0KTsKPiArCWlmIChyZXQpIHsK
PiArCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBhc3NlcnQgcGNsayByZXNldCAocmV0PSVkKVxu
IiwgcmV0KTsKPiArCQlyZXR1cm4gcmV0Owo+ICsJfQo+ICsKPiArCXJldCA9IHJlc2V0X2Fzc2Vy
dCgmcHJpdi0+cG1fcnN0KTsKPiArCWlmIChyZXQpIHsKPiArCQlkZXZfZXJyKGRldiwgImZhaWxl
ZCB0byBhc3NlcnQgcG0gcmVzZXQgKHJldD0lZClcbiIsIHJldCk7Cj4gKwkJcmV0dXJuIHJldDsK
PiArCX0KPiArCj4gKwlyZXQgPSByZXNldF9hc3NlcnQoJnByaXYtPmNvcmVfcnN0KTsKPiArCWlm
IChyZXQpIHsKPiArCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBhc3NlcnQgY29yZSByZXNldCAo
cmV0PSVkKVxuIiwgcmV0KTsKPiArCQlyZXR1cm4gcmV0Owo+ICsJfQo+ICsKPiArCXJldCA9IHJl
c2V0X2Fzc2VydCgmcHJpdi0+bWdtdF9yc3QpOwo+ICsJaWYgKHJldCkgewo+ICsJCWRldl9lcnIo
ZGV2LCAiZmFpbGVkIHRvIGFzc2VydCBtZ210IHJlc2V0IChyZXQ9JWQpXG4iLCByZXQpOwo+ICsJ
CXJldHVybiByZXQ7Cj4gKwl9Cj4gKwo+ICsJcmV0ID0gcmVzZXRfYXNzZXJ0KCZwcml2LT5tZ210
X3N0aWNreV9yc3QpOwo+ICsJaWYgKHJldCkgewo+ICsJCWRldl9lcnIoZGV2LCAiZmFpbGVkIHRv
IGFzc2VydCBtZ210LXN0aWNreSByZXNldCAocmV0PSVkKVxuIiwKPiArCQkJcmV0KTsKPiArCQly
ZXR1cm4gcmV0Owo+ICsJfQo+ICsKPiArCXJldCA9IHJlc2V0X2Fzc2VydCgmcHJpdi0+cGlwZV9y
c3QpOwo+ICsJaWYgKHJldCkgewo+ICsJCWRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIGFzc2VydCBw
aXBlIHJlc2V0IChyZXQ9JWQpXG4iLCByZXQpOwo+ICsJCXJldHVybiByZXQ7Cj4gKwl9Cj4gKwo+
ICsJdWRlbGF5KDEwKTsKPiArCj4gKwlyZXQgPSByZXNldF9kZWFzc2VydCgmcHJpdi0+cG1fcnN0
KTsKPiArCWlmIChyZXQpIHsKPiArCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBkZWFzc2VydCBw
bSByZXNldCAocmV0PSVkKVxuIiwgcmV0KTsKPiArCQlyZXR1cm4gcmV0Owo+ICsJfQo+ICsKPiAr
CXJldCA9IHJlc2V0X2RlYXNzZXJ0KCZwcml2LT5hY2xrX3JzdCk7Cj4gKwlpZiAocmV0KSB7Cj4g
KwkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8gZGVhc3NlcnQgYWNsayByZXNldCAocmV0PSVkKVxu
IiwgcmV0KTsKPiArCQlyZXR1cm4gcmV0Owo+ICsJfQo+ICsKPiArCXJldCA9IHJlc2V0X2RlYXNz
ZXJ0KCZwcml2LT5wY2xrX3JzdCk7Cj4gKwlpZiAocmV0KSB7Cj4gKwkJZGV2X2VycihkZXYsICJm
YWlsZWQgdG8gZGVhc3NlcnQgcGNsayByZXNldCAocmV0PSVkKVxuIiwgcmV0KTsKPiArCQlyZXR1
cm4gcmV0Owo+ICsJfQo+ICsKPiArCS8qIFNlbGVjdCBHRU4xIGZvciBub3cgKi8KPiArCWNyID0g
UENJRV9DTElFTlRfR0VOX1NFTF8xOwo+ICsJLyogU2V0IFJvb3QgY29tcGxleCBtb2RlICovCj4g
KwljciB8PSBQQ0lFX0NMSUVOVF9DT05GX0VOQUJMRSB8IFBDSUVfQ0xJRU5UX01PREVfUkM7Cj4g
Kwl3cml0ZWwoY3IsIHByaXYtPmFwYl9iYXNlICsgUENJRV9DTElFTlRfQ09ORklHKTsKPiArCj4g
KwlyZXQgPSByZXNldF9kZWFzc2VydCgmcHJpdi0+bWdtdF9zdGlja3lfcnN0KTsKPiArCWlmIChy
ZXQpIHsKPiArCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBkZWFzc2VydCBtZ210LXN0aWNreSBy
ZXNldCAocmV0PSVkKVxuIiwKPiArCQkJcmV0KTsKPiArCQlyZXR1cm4gcmV0Owo+ICsJfQo+ICsK
PiArCXJldCA9IHJlc2V0X2RlYXNzZXJ0KCZwcml2LT5jb3JlX3JzdCk7Cj4gKwlpZiAocmV0KSB7
Cj4gKwkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8gZGVhc3NlcnQgY29yZSByZXNldCAocmV0PSVk
KVxuIiwgcmV0KTsKPiArCQlyZXR1cm4gcmV0Owo+ICsJfQo+ICsKPiArCXJldCA9IHJlc2V0X2Rl
YXNzZXJ0KCZwcml2LT5tZ210X3JzdCk7Cj4gKwlpZiAocmV0KSB7Cj4gKwkJZGV2X2VycihkZXYs
ICJmYWlsZWQgdG8gZGVhc3NlcnQgbWdtdCByZXNldCAocmV0PSVkKVxuIiwgcmV0KTsKPiArCQly
ZXR1cm4gcmV0Owo+ICsJfQo+ICsKPiArCXJldCA9IHJlc2V0X2RlYXNzZXJ0KCZwcml2LT5waXBl
X3JzdCk7Cj4gKwlpZiAocmV0KSB7Cj4gKwkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8gZGVhc3Nl
cnQgcGlwZSByZXNldCAocmV0PSVkKVxuIiwgcmV0KTsKPiArCQlyZXR1cm4gcmV0Owo+ICsJfQo+
ICsKPiArCS8qIEVuYWJsZSBHZW4xIHRyYWluaW5nICovCj4gKwl3cml0ZWwoUENJRV9DTElFTlRf
TElOS19UUkFJTl9FTkFCTEUsCj4gKwkgICAgICAgcHJpdi0+YXBiX2Jhc2UgKyBQQ0lFX0NMSUVO
VF9DT05GSUcpOwo+ICsKPiArCWlmIChkbV9ncGlvX2lzX3ZhbGlkKCZwcml2LT5lcF9ncGlvKSkK
PiArCQlkbV9ncGlvX3NldF92YWx1ZSgmcHJpdi0+ZXBfZ3BpbywgMSk7Cj4gKwo+ICsJcmV0ID0g
cmVhZGxfcG9sbF9zbGVlcF90aW1lb3V0Cj4gKwkJCShwcml2LT5hcGJfYmFzZSArIFBDSUVfQ0xJ
RU5UX0JBU0lDX1NUQVRVUzEsCj4gKwkJCXN0YXR1cywgUENJRV9MSU5LX1VQKHN0YXR1cyksIDIw
LCA1MDAgKiAxMDAwKTsKPiArCWlmIChyZXQpIHsKPiArCQlkZXZfZXJyKGRldiwgIlBDSWUgbGlu
ayB0cmFpbmluZyBnZW4xIHRpbWVvdXQhXG4iKTsKPiArCQlyZXR1cm4gcmV0Owo+ICsJfQo+ICsK
PiArCS8qIEluaXRpYWxpemUgUm9vdCBDb21wbGV4IHJlZ2lzdGVycy4gKi8KPiArCXdyaXRlbChQ
Q0lFX0xNX1ZFTkRPUl9ST0NLQ0hJUCwgcHJpdi0+YXBiX2Jhc2UgKyBQQ0lFX0xNX1ZFTkRPUl9J
RCk7Cj4gKwl3cml0ZWwoUENJX0NMQVNTX0JSSURHRV9QQ0kgPDwgMTYsCj4gKwkgICAgICAgcHJp
di0+YXBiX2Jhc2UgKyBQQ0lFX1JDX0JBU0UgKyBQQ0lfQ0xBU1NfUkVWSVNJT04pOwo+ICsJd3Jp
dGVsKFBDSUVfTE1fUkNCQVJQSUUgfCBQQ0lFX0xNX1JDQkFSUElTLAo+ICsJICAgICAgIHByaXYt
PmFwYl9iYXNlICsgUENJRV9MTV9SQ0JBUik7Cj4gKwo+ICsJaWYgKGRldl9yZWFkX2Jvb2woZGV2
LCAiYXNwbS1uby1sMHMiKSkgewo+ICsJCXZhbCA9IHJlYWRsKHByaXYtPmFwYl9iYXNlICsgUENJ
RV9SQ19QQ0lFX0xDQVApOwo+ICsJCXZhbCAmPSB+UENJRV9SQ19QQ0lFX0xDQVBfQVBNU19MMFM7
Cj4gKwkJd3JpdGVsKHZhbCwgcHJpdi0+YXBiX2Jhc2UgKyBQQ0lFX1JDX1BDSUVfTENBUCk7Cj4g
Kwl9Cj4gKwo+ICsJLyogQ29uZmlndXJlIEFkZHJlc3MgVHJhbnNsYXRpb24uICovCj4gKwlyZXQg
PSByb2NrY2hpcF9wY2llX2F0cl9pbml0KHByaXYpOwo+ICsJaWYgKHJldCkgewo+ICsJCWRldl9l
cnIoZGV2LCAiUENJRS0lZDogQVRSIGluaXQgZmFpbGVkXG4iLCBkZXYtPnNlcSk7Cj4gKwkJcmV0
dXJuIHJldDsKPiArCX0KPiArCj4gKwlyZXR1cm4gMDsKPiArfQo+ICsKPiArc3RhdGljIGludCBy
b2NrY2hpcF9wY2llX3NldF92cGNpZShzdHJ1Y3QgdWRldmljZSAqZGV2KQo+ICt7Cj4gKwlzdHJ1
Y3Qgcm9ja2NoaXBfcGNpZSAqcHJpdiA9IGRldl9nZXRfcHJpdihkZXYpOwo+ICsJaW50IHJldDsK
PiArCj4gKwlpZiAoIUlTX0VSUihwcml2LT52cGNpZTN2MykpIHsKPiArCQlyZXQgPSByZWd1bGF0
b3Jfc2V0X2VuYWJsZShwcml2LT52cGNpZTN2MywgdHJ1ZSk7Cj4gKwkJaWYgKHJldCkgewo+ICsJ
CQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBlbmFibGUgdnBjaWUzdjMgKHJldD0lZClcbiIsCj4g
KwkJCQlyZXQpOwo+ICsJCQlyZXR1cm4gcmV0Owo+ICsJCX0KPiArCX0KPiArCj4gKwlyZXQgPSBy
ZWd1bGF0b3Jfc2V0X2VuYWJsZShwcml2LT52cGNpZTF2OCwgdHJ1ZSk7Cj4gKwlpZiAocmV0KSB7
Cj4gKwkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8gZW5hYmxlIHZwY2llMXY4IChyZXQ9JWQpXG4i
LCByZXQpOwo+ICsJCWdvdG8gZXJyX2Rpc2FibGVfM3YzOwo+ICsJfQo+ICsKPiArCXJldCA9IHJl
Z3VsYXRvcl9zZXRfZW5hYmxlKHByaXYtPnZwY2llMHY5LCB0cnVlKTsKPiArCWlmIChyZXQpIHsK
PiArCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBlbmFibGUgdnBjaWUwdjkgKHJldD0lZClcbiIs
IHJldCk7Cj4gKwkJZ290byBlcnJfZGlzYWJsZV8xdjg7Cj4gKwl9Cj4gKwo+ICsJcmV0dXJuIDA7
Cj4gKwo+ICtlcnJfZGlzYWJsZV8xdjg6Cj4gKwlyZWd1bGF0b3Jfc2V0X2VuYWJsZShwcml2LT52
cGNpZTF2OCwgZmFsc2UpOwo+ICtlcnJfZGlzYWJsZV8zdjM6Cj4gKwlpZiAoIUlTX0VSUihwcml2
LT52cGNpZTN2MykpCj4gKwkJcmVndWxhdG9yX3NldF9lbmFibGUocHJpdi0+dnBjaWUzdjMsIGZh
bHNlKTsKPiArCXJldHVybiByZXQ7Cj4gK30KPiArCj4gK3N0YXRpYyBpbnQgcm9ja2NoaXBfcGNp
ZV9wYXJzZV9kdChzdHJ1Y3QgdWRldmljZSAqZGV2KQo+ICt7Cj4gKwlzdHJ1Y3Qgcm9ja2NoaXBf
cGNpZSAqcHJpdiA9IGRldl9nZXRfcHJpdihkZXYpOwo+ICsJaW50IHJldDsKPiArCj4gKwlwcml2
LT5heGlfYmFzZSA9IGRldl9yZWFkX2FkZHJfbmFtZShkZXYsICJheGktYmFzZSIpOwo+ICsJaWYg
KCFwcml2LT5heGlfYmFzZSkKPiArCQlyZXR1cm4gLUVOT0RFVjsKPiArCj4gKwlwcml2LT5hcGJf
YmFzZSA9IGRldl9yZWFkX2FkZHJfbmFtZShkZXYsICJhcGItYmFzZSIpOwo+ICsJaWYgKCFwcml2
LT5heGlfYmFzZSkKPiArCQlyZXR1cm4gLUVOT0RFVjsKPiArCj4gKwlyZXQgPSBncGlvX3JlcXVl
c3RfYnlfbmFtZShkZXYsICJlcC1ncGlvcyIsIDAsCj4gKwkJCQkgICAmcHJpdi0+ZXBfZ3Bpbywg
R1BJT0RfSVNfT1VUKTsKPiArCWlmIChyZXQpIHsKPiArCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0
byBmaW5kIGVwLWdwaW9zIHByb3BlcnR5XG4iKTsKPiArCQlyZXR1cm4gcmV0Owo+ICsJfQo+ICsK
PiArCXJldCA9IHJlc2V0X2dldF9ieV9uYW1lKGRldiwgImNvcmUiLCAmcHJpdi0+Y29yZV9yc3Qp
Owo+ICsJaWYgKHJldCkgewo+ICsJCWRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIGdldCBjb3JlIHJl
c2V0IChyZXQ9JWQpXG4iLCByZXQpOwo+ICsJCXJldHVybiByZXQ7Cj4gKwl9Cj4gKwo+ICsJcmV0
ID0gcmVzZXRfZ2V0X2J5X25hbWUoZGV2LCAibWdtdCIsICZwcml2LT5tZ210X3JzdCk7Cj4gKwlp
ZiAocmV0KSB7Cj4gKwkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8gZ2V0IG1nbXQgcmVzZXQgKHJl
dD0lZClcbiIsIHJldCk7Cj4gKwkJcmV0dXJuIHJldDsKPiArCX0KPiArCj4gKwlyZXQgPSByZXNl
dF9nZXRfYnlfbmFtZShkZXYsICJtZ210LXN0aWNreSIsICZwcml2LT5tZ210X3N0aWNreV9yc3Qp
Owo+ICsJaWYgKHJldCkgewo+ICsJCWRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIGdldCBtZ210LXN0
aWNreSByZXNldCAocmV0PSVkKVxuIiwgcmV0KTsKPiArCQlyZXR1cm4gcmV0Owo+ICsJfQo+ICsK
PiArCXJldCA9IHJlc2V0X2dldF9ieV9uYW1lKGRldiwgInBpcGUiLCAmcHJpdi0+cGlwZV9yc3Qp
Owo+ICsJaWYgKHJldCkgewo+ICsJCWRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIGdldCBwaXBlIHJl
c2V0IChyZXQ9JWQpXG4iLCByZXQpOwo+ICsJCXJldHVybiByZXQ7Cj4gKwl9Cj4gKwo+ICsJcmV0
ID0gcmVzZXRfZ2V0X2J5X25hbWUoZGV2LCAicG0iLCAmcHJpdi0+cG1fcnN0KTsKPiArCWlmIChy
ZXQpIHsKPiArCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBnZXQgcG0gcmVzZXQgKHJldD0lZClc
biIsIHJldCk7Cj4gKwkJcmV0dXJuIHJldDsKPiArCX0KPiArCj4gKwlyZXQgPSByZXNldF9nZXRf
YnlfbmFtZShkZXYsICJwY2xrIiwgJnByaXYtPnBjbGtfcnN0KTsKPiArCWlmIChyZXQpIHsKPiAr
CQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBnZXQgcGNsayByZXNldCAocmV0PSVkKVxuIiwgcmV0
KTsKPiArCQlyZXR1cm4gcmV0Owo+ICsJfQo+ICsKPiArCXJldCA9IHJlc2V0X2dldF9ieV9uYW1l
KGRldiwgImFjbGsiLCAmcHJpdi0+YWNsa19yc3QpOwo+ICsJaWYgKHJldCkgewo+ICsJCWRldl9l
cnIoZGV2LCAiZmFpbGVkIHRvIGdldCBhY2xrIHJlc2V0IChyZXQ9JWQpXG4iLCByZXQpOwo+ICsJ
CXJldHVybiByZXQ7Cj4gKwl9Cj4gKwo+ICsJcmV0ID0gZGV2aWNlX2dldF9zdXBwbHlfcmVndWxh
dG9yKGRldiwgInZwY2llM3YzLXN1cHBseSIsCj4gKwkJCQkJICAmcHJpdi0+dnBjaWUzdjMpOwo+
ICsJaWYgKHJldCAmJiByZXQgIT0gLUVOT0VOVCkgewo+ICsJCWRldl9lcnIoZGV2LCAiZmFpbGVk
IHRvIGdldCB2cGNpZTN2MyBzdXBwbHkgKHJldD0lZClcbiIsIHJldCk7Cj4gKwkJcmV0dXJuIHJl
dDsKPiArCX0KPiArCj4gKwlyZXQgPSBkZXZpY2VfZ2V0X3N1cHBseV9yZWd1bGF0b3IoZGV2LCAi
dnBjaWUxdjgtc3VwcGx5IiwKPiArCQkJCQkgICZwcml2LT52cGNpZTF2OCk7Cj4gKwlpZiAocmV0
KSB7Cj4gKwkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8gZ2V0IHZwY2llMXY4IHN1cHBseSAocmV0
PSVkKVxuIiwgcmV0KTsKPiArCQlyZXR1cm4gcmV0Owo+ICsJfQo+ICsKPiArCXJldCA9IGRldmlj
ZV9nZXRfc3VwcGx5X3JlZ3VsYXRvcihkZXYsICJ2cGNpZTB2OS1zdXBwbHkiLAo+ICsJCQkJCSAg
JnByaXYtPnZwY2llMHY5KTsKPiArCWlmIChyZXQpIHsKPiArCQlkZXZfZXJyKGRldiwgImZhaWxl
ZCB0byBnZXQgdnBjaWUwdjkgc3VwcGx5IChyZXQ9JWQpXG4iLCByZXQpOwo+ICsJCXJldHVybiBy
ZXQ7Cj4gKwl9Cj4gKwo+ICsJcmV0dXJuIDA7Cj4gK30KPiArCj4gK3N0YXRpYyBpbnQgcm9ja2No
aXBfcGNpZV9wcm9iZShzdHJ1Y3QgdWRldmljZSAqZGV2KQo+ICt7Cj4gKwlzdHJ1Y3Qgcm9ja2No
aXBfcGNpZSAqcHJpdiA9IGRldl9nZXRfcHJpdihkZXYpOwo+ICsJc3RydWN0IHVkZXZpY2UgKmN0
bHIgPSBwY2lfZ2V0X2NvbnRyb2xsZXIoZGV2KTsKPiArCXN0cnVjdCBwY2lfY29udHJvbGxlciAq
aG9zZSA9IGRldl9nZXRfdWNsYXNzX3ByaXYoY3Rscik7Cj4gKwlpbnQgcmV0Owo+ICsKPiArCXBy
aXYtPmZpcnN0X2J1c25vID0gZGV2LT5zZXE7Cj4gKwlwcml2LT5kZXYgPSBkZXY7Cj4gKwo+ICsJ
cmV0ID0gcm9ja2NoaXBfcGNpZV9wYXJzZV9kdChkZXYpOwo+ICsJaWYgKHJldCkKPiArCQlyZXR1
cm4gcmV0Owo+ICsKPiArCXJldCA9IHJvY2tjaGlwX3BjaWVfc2V0X3ZwY2llKGRldik7Cj4gKwlp
ZiAocmV0KQo+ICsJCXJldHVybiByZXQ7Cj4gKwo+ICsJcmV0ID0gcm9ja2NoaXBfcGNpZV9pbml0
X3BvcnQoZGV2KTsKPiArCWlmIChyZXQpCj4gKwkJcmV0dXJuIHJldDsKPiArCj4gKwlkZXZfaW5m
byhkZXYsICJQQ0lFLSVkOiBMaW5rIHVwIChCdXMlZClcbiIsCj4gKwkJIGRldi0+c2VxLCBob3Nl
LT5maXJzdF9idXNubyk7Cj4gKwo+ICsJcmV0dXJuIDA7Cj4gK30KPiArCj4gK3N0YXRpYyBjb25z
dCBzdHJ1Y3QgZG1fcGNpX29wcyByb2NrY2hpcF9wY2llX29wcyA9IHsKPiArCS5yZWFkX2NvbmZp
Zwk9IHJvY2tjaGlwX3BjaWVfcmRfY29uZiwKPiArCS53cml0ZV9jb25maWcJPSByb2NrY2hpcF9w
Y2llX3dyX2NvbmYsCj4gK307Cj4gKwo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHVkZXZpY2VfaWQg
cm9ja2NoaXBfcGNpZV9pZHNbXSA9IHsKPiArCXsgLmNvbXBhdGlibGUgPSAicm9ja2NoaXAscmsz
Mzk5LXBjaWUiIH0sCj4gKwl7IH0KPiArfTsKPiArCj4gK1VfQk9PVF9EUklWRVIocm9ja2NoaXBf
cGNpZSkgPSB7Cj4gKwkubmFtZQkJCT0gInJvY2tjaGlwX3BjaWUiLAo+ICsJLmlkCQkJPSBVQ0xB
U1NfUENJLAo+ICsJLm9mX21hdGNoCQk9IHJvY2tjaGlwX3BjaWVfaWRzLAo+ICsJLm9wcwkJCT0g
JnJvY2tjaGlwX3BjaWVfb3BzLAo+ICsJLnByb2JlCQkJPSByb2NrY2hpcF9wY2llX3Byb2JlLAo+
ICsJLnByaXZfYXV0b19hbGxvY19zaXplCT0gc2l6ZW9mKHN0cnVjdCByb2NrY2hpcF9wY2llKSwK
PiArfTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvcGNpZV9yb2NrY2hpcC5oIGIvZHJpdmVy
cy9wY2kvcGNpZV9yb2NrY2hpcC5oCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAw
MDAwMDAwLi42ZGVkNWM5NTUzCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMvcGNpL3Bj
aWVfcm9ja2NoaXAuaAo+IEBAIC0wLDAgKzEsNzkgQEAKPiArLyogU1BEWC1MaWNlbnNlLUlkZW50
aWZpZXI6IEdQTC0yLjArICovCj4gKy8qCj4gKyAqIFJvY2tjaGlwIFBDSWUgSGVhZGVycwo+ICsg
Kgo+ICsgKiBDb3B5cmlnaHQgKGMpIDIwMTYgUm9ja2NoaXAsIEluYy4KPiArICogQ29weXJpZ2h0
IChjKSAyMDIwIEFtYXJ1bGEgU29sdXRpb25zKEluZGlhKQo+ICsgKiBDb3B5cmlnaHQgKGMpIDIw
MjAgSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+Cj4gKyAqIENvcHlyaWdo
dCAoYykgMjAxOSBQYXRyaWNrIFdpbGR0IDxwYXRyaWNrQGJsdWVyaS5zZT4KPiArICoKPiArICov
Cj4gKwo+ICsjZGVmaW5lIEhJV09SRF9VUERBVEUobWFzaywgdmFsKSAgICAgICAgKCgobWFzaykg
PDwgMTYpIHwgKHZhbCkpCj4gKyNkZWZpbmUgSElXT1JEX1VQREFURV9CSVQodmFsKSAgICAgICAg
ICBISVdPUkRfVVBEQVRFKHZhbCwgdmFsKQo+ICsKPiArI2RlZmluZSBFTkNPREVfTEFORVMoeCkg
ICAgICAgICAgICAgICAgICgoKCh4KSA+PiAxKSAmIDMpIDw8IDQpCj4gKyNkZWZpbmUgUENJRV9D
TElFTlRfQkFTRSAgICAgICAgICAgICAgICAweDAKPiArI2RlZmluZSBQQ0lFX0NMSUVOVF9DT05G
SUcgICAgICAgICAgICAgIChQQ0lFX0NMSUVOVF9CQVNFICsgMHgwMCkKPiArI2RlZmluZSBQQ0lF
X0NMSUVOVF9DT05GX0VOQUJMRSAgICAgICAgIEhJV09SRF9VUERBVEVfQklUKDB4MDAwMSkKPiAr
I2RlZmluZSBQQ0lFX0NMSUVOVF9MSU5LX1RSQUlOX0VOQUJMRSAgIEhJV09SRF9VUERBVEVfQklU
KDB4MDAwMikKPiArI2RlZmluZSBQQ0lFX0NMSUVOVF9NT0RFX1JDICAgICAgICAgICAgIEhJV09S
RF9VUERBVEVfQklUKDB4MDA0MCkKPiArI2RlZmluZSBQQ0lFX0NMSUVOVF9HRU5fU0VMXzEgICAg
ICAgICAgIEhJV09SRF9VUERBVEUoMHgwMDgwLCAwKQo+ICsjZGVmaW5lIFBDSUVfQ0xJRU5UX0JB
U0lDX1NUQVRVUzEJMHgwMDQ4Cj4gKyNkZWZpbmUgUENJRV9DTElFTlRfTElOS19TVEFUVVNfVVAJ
R0VOTUFTSygyMSwgMjApCj4gKyNkZWZpbmUgUENJRV9DTElFTlRfTElOS19TVEFUVVNfTUFTSwlH
RU5NQVNLKDIxLCAyMCkKPiArI2RlZmluZSBQQ0lFX0xJTktfVVAoeCkgXAo+ICsJKCgoeCkgJiBQ
Q0lFX0NMSUVOVF9MSU5LX1NUQVRVU19NQVNLKSA9PSBQQ0lFX0NMSUVOVF9MSU5LX1NUQVRVU19V
UCkKPiArI2RlZmluZSBQQ0lFX1JDX05PUk1BTF9CQVNFCQkweDgwMDAwMAo+ICsjZGVmaW5lIFBD
SUVfTE1fQkFTRQkJCTB4OTAwMDAwCj4gKyNkZWZpbmUgUENJRV9MTV9WRU5ET1JfSUQgICAgICAg
ICAgICAgIChQQ0lFX0xNX0JBU0UgKyAweDQ0KQo+ICsjZGVmaW5lIFBDSUVfTE1fVkVORE9SX1JP
Q0tDSElQCQkweDFkODcKPiArI2RlZmluZSBQQ0lFX0xNX1JDQkFSCQkJKFBDSUVfTE1fQkFTRSAr
IDB4MzAwKQo+ICsjZGVmaW5lIFBDSUVfTE1fUkNCQVJQSUUJCUJJVCgxOSkKPiArI2RlZmluZSBQ
Q0lFX0xNX1JDQkFSUElTCQlCSVQoMjApCj4gKyNkZWZpbmUgUENJRV9SQ19CQVNFCQkJMHhhMDAw
MDAKPiArI2RlZmluZSBQQ0lFX1JDX0NPTkZJR19EQ1IJCShQQ0lFX1JDX0JBU0UgKyAweDBjNCkK
PiArI2RlZmluZSBQQ0lFX1JDX0NPTkZJR19EQ1JfQ1NQTF9TSElGVAkxOAo+ICsjZGVmaW5lIFBD
SUVfUkNfQ09ORklHX0RDUl9DUExTX1NISUZUCTI2Cj4gKyNkZWZpbmUgUENJRV9SQ19QQ0lFX0xD
QVAJCShQQ0lFX1JDX0JBU0UgKyAweDBjYykKPiArI2RlZmluZSBQQ0lFX1JDX1BDSUVfTENBUF9B
UE1TX0wwUwlCSVQoMTApCj4gKyNkZWZpbmUgUENJRV9BVFJfQkFTRQkJCTB4YzAwMDAwCj4gKyNk
ZWZpbmUgUENJRV9BVFJfT0JfQUREUjAoaSkJCShQQ0lFX0FUUl9CQVNFICsgMHgwMDAgKyAoaSkg
KiAweDIwKQo+ICsjZGVmaW5lIFBDSUVfQVRSX09CX0FERFIxKGkpCQkoUENJRV9BVFJfQkFTRSAr
IDB4MDA0ICsgKGkpICogMHgyMCkKPiArI2RlZmluZSBQQ0lFX0FUUl9PQl9ERVNDMChpKQkJKFBD
SUVfQVRSX0JBU0UgKyAweDAwOCArIChpKSAqIDB4MjApCj4gKyNkZWZpbmUgUENJRV9BVFJfT0Jf
REVTQzEoaSkJCShQQ0lFX0FUUl9CQVNFICsgMHgwMGMgKyAoaSkgKiAweDIwKQo+ICsjZGVmaW5l
IFBDSUVfQVRSX0lCX0FERFIwKGkpCQkoUENJRV9BVFJfQkFTRSArIDB4ODAwICsgKGkpICogMHg4
KQo+ICsjZGVmaW5lIFBDSUVfQVRSX0lCX0FERFIxKGkpCQkoUENJRV9BVFJfQkFTRSArIDB4ODA0
ICsgKGkpICogMHg4KQo+ICsjZGVmaW5lIFBDSUVfQVRSX0hEUl9NRU0JCTB4Mgo+ICsjZGVmaW5l
IFBDSUVfQVRSX0hEUl9JTwkJCTB4Ngo+ICsjZGVmaW5lIFBDSUVfQVRSX0hEUl9DRkdfVFlQRTAJ
CTB4YQo+ICsjZGVmaW5lIFBDSUVfQVRSX0hEUl9DRkdfVFlQRTEJCTB4Ygo+ICsjZGVmaW5lIFBD
SUVfQVRSX0hEUl9SSUQJCUJJVCgyMykKPiArCj4gKyNkZWZpbmUgUENJRV9BVFJfT0JfUkVHSU9O
MF9TSVpFCSgzMiAqIDEwMjQgKiAxMDI0KQo+ICsjZGVmaW5lIFBDSUVfQVRSX09CX1JFR0lPTl9T
SVpFCQkoMSAqIDEwMjQgKiAxMDI0KQo+ICsKPiArc3RydWN0IHJvY2tjaGlwX3BjaWUgewo+ICsJ
ZmR0X2FkZHJfdCBheGlfYmFzZTsKPiArCWZkdF9hZGRyX3QgYXBiX2Jhc2U7Cj4gKwlpbnQgZmly
c3RfYnVzbm87Cj4gKwlzdHJ1Y3QgdWRldmljZSAqZGV2Owo+ICsKPiArCS8qIHJlc2V0cyAqLwo+
ICsJc3RydWN0IHJlc2V0X2N0bCBjb3JlX3JzdDsKPiArCXN0cnVjdCByZXNldF9jdGwgbWdtdF9y
c3Q7Cj4gKwlzdHJ1Y3QgcmVzZXRfY3RsIG1nbXRfc3RpY2t5X3JzdDsKPiArCXN0cnVjdCByZXNl
dF9jdGwgcGlwZV9yc3Q7Cj4gKwlzdHJ1Y3QgcmVzZXRfY3RsIHBtX3JzdDsKPiArCXN0cnVjdCBy
ZXNldF9jdGwgcGNsa19yc3Q7Cj4gKwlzdHJ1Y3QgcmVzZXRfY3RsIGFjbGtfcnN0Owo+ICsKPiAr
CS8qIGdwaW8gKi8KPiArCXN0cnVjdCBncGlvX2Rlc2MgZXBfZ3BpbzsKPiArCj4gKwkvKiB2cGNp
ZSByZWd1bGF0b3JzICovCj4gKwlzdHJ1Y3QgdWRldmljZSAqdnBjaWUxMnY7Cj4gKwlzdHJ1Y3Qg
dWRldmljZSAqdnBjaWUzdjM7Cj4gKwlzdHJ1Y3QgdWRldmljZSAqdnBjaWUxdjg7Cj4gKwlzdHJ1
Y3QgdWRldmljZSAqdnBjaWUwdjk7Cj4gK307CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
