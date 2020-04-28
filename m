Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DA3C1BC0FA
	for <lists+linux-rockchip@lfdr.de>; Tue, 28 Apr 2020 16:16:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JCro4sXFwPFbuZP6wqw4gYHiXAT2oCFCMo6lfxdi7Ko=; b=T81wotT7pOu/QZMZdsBr0Hzra
	2a+LGhPY5ArempE5vM/KL6BrBIN+XhO3vy0A88kLnGEQvcsgCrfF/y2Dbp7F/JqzPul19+57oMW9m
	qBMpUGnnoI62oJ61kg6Jf8b5Pk25W2fUJFCuh0VGB2YXgSor9igJVJxO8zBHGugCiqLiQZccwnJSU
	a+DcLQuWJVhvWVYLRlAp4VqTVYCTEWL3Srv3EiGJam65SSGWM6SON8ZrDDBRJTsXFYdbl1dgcUvSy
	LT9hWCssrGZ6AP3XDc0vzRcRVfF5+jpsvOZwEGb6BEG4x15zCxGSz9owKni3dVa9+8v+GjBwHPrEO
	2Zl2RJRRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTR2P-0001bk-En; Tue, 28 Apr 2020 14:16:41 +0000
Received: from regular1.263xmail.com ([211.150.70.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTR2L-0001aF-19
 for linux-rockchip@lists.infradead.org; Tue, 28 Apr 2020 14:16:39 +0000
Received: from localhost (unknown [192.168.167.16])
 by regular1.263xmail.com (Postfix) with ESMTP id A2F39470;
 Tue, 28 Apr 2020 22:16:34 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.0.110] (unknown [112.49.233.123])
 by smtp.263.net (postfix) whith ESMTP id
 P19267T139854184675072S1588083268749726_; 
 Tue, 28 Apr 2020 22:14:30 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <16cb57db582c23c93ca392583f495bf9>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 112.49.233.123
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v2 6/6] rk3399: Add ROC-RK3399-PC Mezzanine board
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20200428100019.19155-1-jagan@amarulasolutions.com>
 <20200428100019.19155-7-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <e8227f9e-8921-a1f3-1e1f-8266c08bd675@rock-chips.com>
Date: Tue, 28 Apr 2020 22:14:27 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200428100019.19155-7-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_071638_006740_318A2297 
X-CRM114-Status: GOOD (  15.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.201 listed in list.dnswl.org]
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
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org,
 linux-amarula@amarulasolutions.com, sunil@amarulasolutions.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvNC8yOCDkuIvljYg2OjAwLCBKYWdhbiBUZWtpIHdyb3RlOgo+IEZyb206IFN1bmll
bCBNYWhlc2ggPHN1bmlsQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+Cj4gQWRkIEZpcmVmbHkgUk9D
LVJLMzM5OS1QQyBNZXp6YW5pbmUgYm9hcmQgd2hpY2ggaXMgYW4KPiBleHRlbnNpb24gYm9hcmQg
b24gdG9wIG9mIHJvYy1yazMzOTktcGMuCj4KPiBXaWxsIGRyb3AgdGhlIHNlcGFyYXRlIGRlZmNv
bmZpZyBmaWxlLCBvbmNlIHdlIHN1cHBvcnQKPiB0aGUgYm9hcmQgZGV0ZWN0aW9uIGF0IHJ1bnRp
bWUuCj4KPiBTaWduZWQtb2ZmLWJ5OiBTdW5pZWwgTWFoZXNoIDxzdW5pbEBhbWFydWxhc29sdXRp
b25zLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRp
b25zLmNvbT4KCgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBz
LmNvbT4KClRoYW5rcywKLSBLZXZlcgo+IC0tLQo+IENoYW5nZXMgZm9yIHYyOgo+IC0gaW5jbHVk
ZSByazMzOTktcm9jLXBjLXUtYm9vdC5kdHNpCj4KPiAgIC4uLi9kdHMvcmszMzk5LXJvYy1wYy1t
ZXp6YW5pbmUtdS1ib290LmR0c2kgICB8ICA2ICsrCj4gICBib2FyZC9maXJlZmx5L3JvYy1wYy1y
azMzOTkvTUFJTlRBSU5FUlMgICAgICAgfCAgMiArCj4gICBjb25maWdzL3JvYy1wYy1tZXp6YW5p
bmUtcmszMzk5X2RlZmNvbmZpZyAgICAgfCA2NyArKysrKysrKysrKysrKysrKysrCj4gICAzIGZp
bGVzIGNoYW5nZWQsIDc1IGluc2VydGlvbnMoKykKPiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNo
L2FybS9kdHMvcmszMzk5LXJvYy1wYy1tZXp6YW5pbmUtdS1ib290LmR0c2kKPiAgIGNyZWF0ZSBt
b2RlIDEwMDY0NCBjb25maWdzL3JvYy1wYy1tZXp6YW5pbmUtcmszMzk5X2RlZmNvbmZpZwo+Cj4g
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2R0cy9yazMzOTktcm9jLXBjLW1lenphbmluZS11LWJvb3Qu
ZHRzaSBiL2FyY2gvYXJtL2R0cy9yazMzOTktcm9jLXBjLW1lenphbmluZS11LWJvb3QuZHRzaQo+
IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMC4uZjUwYzE4ZGQzZAo+IC0t
LSAvZGV2L251bGwKPiArKysgYi9hcmNoL2FybS9kdHMvcmszMzk5LXJvYy1wYy1tZXp6YW5pbmUt
dS1ib290LmR0c2kKPiBAQCAtMCwwICsxLDYgQEAKPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZp
ZXI6IEdQTC0yLjArCj4gKy8qCj4gKyAqIENvcHlyaWdodCAoYykgMjAyMCBBbWFydWxhIFNvbHV0
aW9ucyhJbmRpYSkKPiArICovCj4gKwo+ICsjaW5jbHVkZSAicmszMzk5LXJvYy1wYy11LWJvb3Qu
ZHRzaSIKPiBkaWZmIC0tZ2l0IGEvYm9hcmQvZmlyZWZseS9yb2MtcGMtcmszMzk5L01BSU5UQUlO
RVJTIGIvYm9hcmQvZmlyZWZseS9yb2MtcGMtcmszMzk5L01BSU5UQUlORVJTCj4gaW5kZXggNzU2
NGRkMjUyZC4uNjhhNWI3NTdkMSAxMDA2NDQKPiAtLS0gYS9ib2FyZC9maXJlZmx5L3JvYy1wYy1y
azMzOTkvTUFJTlRBSU5FUlMKPiArKysgYi9ib2FyZC9maXJlZmx5L3JvYy1wYy1yazMzOTkvTUFJ
TlRBSU5FUlMKPiBAQCAtMSw2ICsxLDggQEAKPiAgIFJPQy1SSzMzOTktUEMKPiAgIE06CUxldmlu
IER1IDxkandAdC1jaGlwLmNvbS5jbj4KPiArTToJU3VuaWVsIE1haGVzaCA8c3VuaWxAYW1hcnVs
YXNvbHV0aW9ucy5jb20+Cj4gICBTOglNYWludGFpbmVkCj4gICBGOglib2FyZC9maXJlZmx5L3Jv
Yy1wYy1yazMzOTkKPiAgIEY6CWluY2x1ZGUvY29uZmlncy9yb2MtcGMtcmszMzk5LmgKPiAgIEY6
CWNvbmZpZ3Mvcm9jLXBjLXJrMzM5OV9kZWZjb25maWcKPiArRjoJY29uZmlncy9yb2MtcGMtbWV6
emFuaW5lLXJrMzM5OV9kZWZjb25maWcKPiBkaWZmIC0tZ2l0IGEvY29uZmlncy9yb2MtcGMtbWV6
emFuaW5lLXJrMzM5OV9kZWZjb25maWcgYi9jb25maWdzL3JvYy1wYy1tZXp6YW5pbmUtcmszMzk5
X2RlZmNvbmZpZwo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMC4uNWE2
OTRlZGMwMwo+IC0tLSAvZGV2L251bGwKPiArKysgYi9jb25maWdzL3JvYy1wYy1tZXp6YW5pbmUt
cmszMzk5X2RlZmNvbmZpZwo+IEBAIC0wLDAgKzEsNjcgQEAKPiArQ09ORklHX0FSTT15Cj4gK0NP
TkZJR19BUkNIX1JPQ0tDSElQPXkKPiArQ09ORklHX1NZU19URVhUX0JBU0U9MHgwMDIwMDAwMAo+
ICtDT05GSUdfRU5WX09GRlNFVD0weDNGODAwMAo+ICtDT05GSUdfUk9DS0NISVBfUkszMzk5PXkK
PiArQ09ORklHX1RBUkdFVF9ST0NfUENfUkszMzk5PXkKPiArQ09ORklHX05SX0RSQU1fQkFOS1M9
MQo+ICtDT05GSUdfREVCVUdfVUFSVF9CQVNFPTB4RkYxQTAwMDAKPiArQ09ORklHX0RFQlVHX1VB
UlRfQ0xPQ0s9MjQwMDAwMDAKPiArQ09ORklHX0RFQlVHX1VBUlQ9eQo+ICtDT05GSUdfREVGQVVM
VF9GRFRfRklMRT0icm9ja2NoaXAvcmszMzk5LXJvYy1wYy1tZXp6YW5pbmUuZHRiIgo+ICtDT05G
SUdfRElTUExBWV9CT0FSRElORk9fTEFURT15Cj4gKyMgQ09ORklHX1NQTF9SQVdfSU1BR0VfU1VQ
UE9SVCBpcyBub3Qgc2V0Cj4gK0NPTkZJR19TUExfU1RBQ0tfUj15Cj4gK0NPTkZJR19TUExfU1RB
Q0tfUl9NQUxMT0NfU0lNUExFX0xFTj0weDEwMDAwCj4gK0NPTkZJR19UUEw9eQo+ICtDT05GSUdf
VFBMX0dQSU9fU1VQUE9SVD15Cj4gK0NPTkZJR19DTURfQk9PVFo9eQo+ICtDT05GSUdfQ01EX0dQ
VD15Cj4gK0NPTkZJR19DTURfTU1DPXkKPiArQ09ORklHX0NNRF9VU0I9eQo+ICsjIENPTkZJR19D
TURfU0VURVhQUiBpcyBub3Qgc2V0Cj4gK0NPTkZJR19DTURfVElNRT15Cj4gK0NPTkZJR19TUExf
T0ZfQ09OVFJPTD15Cj4gK0NPTkZJR19ERUZBVUxUX0RFVklDRV9UUkVFPSJyazMzOTktcm9jLXBj
LW1lenphbmluZSIKPiArQ09ORklHX09GX1NQTF9SRU1PVkVfUFJPUFM9InBpbmN0cmwtMCBwaW5j
dHJsLW5hbWVzIGNsb2NrLW5hbWVzIGludGVycnVwdC1wYXJlbnQgYXNzaWduZWQtY2xvY2tzIGFz
c2lnbmVkLWNsb2NrLXJhdGVzIGFzc2lnbmVkLWNsb2NrLXBhcmVudHMiCj4gK0NPTkZJR19FTlZf
SVNfSU5fTU1DPXkKPiArQ09ORklHX1NZU19SRUxPQ19HRF9FTlZfQUREUj15Cj4gK0NPTkZJR19S
T0NLQ0hJUF9HUElPPXkKPiArQ09ORklHX1NZU19JMkNfUk9DS0NISVA9eQo+ICtDT05GSUdfTU1D
X0RXPXkKPiArQ09ORklHX01NQ19EV19ST0NLQ0hJUD15Cj4gK0NPTkZJR19NTUNfU0RIQ0k9eQo+
ICtDT05GSUdfTU1DX1NESENJX1JPQ0tDSElQPXkKPiArQ09ORklHX1NQSV9GTEFTSF9XSU5CT05E
PXkKPiArQ09ORklHX0RNX0VUSD15Cj4gK0NPTkZJR19FVEhfREVTSUdOV0FSRT15Cj4gK0NPTkZJ
R19HTUFDX1JPQ0tDSElQPXkKPiArQ09ORklHX1BNSUNfUks4WFg9eQo+ICtDT05GSUdfUkVHVUxB
VE9SX1BXTT15Cj4gK0NPTkZJR19SRUdVTEFUT1JfUks4WFg9eQo+ICtDT05GSUdfUFdNX1JPQ0tD
SElQPXkKPiArQ09ORklHX1JBTV9SSzMzOTlfTFBERFI0PXkKPiArQ09ORklHX0JBVURSQVRFPTE1
MDAwMDAKPiArQ09ORklHX0RFQlVHX1VBUlRfU0hJRlQ9Mgo+ICtDT05GSUdfUk9DS0NISVBfU1BJ
PXkKPiArQ09ORklHX1NZU1JFU0VUPXkKPiArQ09ORklHX1VTQj15Cj4gK0NPTkZJR19VU0JfWEhD
SV9IQ0Q9eQo+ICtDT05GSUdfVVNCX1hIQ0lfRFdDMz15Cj4gK0NPTkZJR19VU0JfRUhDSV9IQ0Q9
eQo+ICtDT05GSUdfVVNCX0VIQ0lfR0VORVJJQz15Cj4gK0NPTkZJR19VU0JfSE9TVF9FVEhFUj15
Cj4gK0NPTkZJR19VU0JfRVRIRVJfQVNJWD15Cj4gK0NPTkZJR19VU0JfRVRIRVJfQVNJWDg4MTc5
PXkKPiArQ09ORklHX1VTQl9FVEhFUl9NQ1M3ODMwPXkKPiArQ09ORklHX1VTQl9FVEhFUl9SVEw4
MTUyPXkKPiArQ09ORklHX1VTQl9FVEhFUl9TTVNDOTVYWD15Cj4gK0NPTkZJR19VU0JfS0VZQk9B
UkQ9eQo+ICtDT05GSUdfU1BMX1RJTllfTUVNU0VUPXkKPiArQ09ORklHX0VSUk5PX1NUUj15Cj4g
K0NPTkZJR19ETV9WSURFTz15Cj4gK0NPTkZJR19WSURFT19CUFAxNj15Cj4gK0NPTkZJR19WSURF
T19CUFAzMj15Cj4gK0NPTkZJR19ESVNQTEFZPXkKPiArQ09ORklHX1ZJREVPX1JPQ0tDSElQPXkK
PiArQ09ORklHX0RJU1BMQVlfUk9DS0NISVBfSERNST15CgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
