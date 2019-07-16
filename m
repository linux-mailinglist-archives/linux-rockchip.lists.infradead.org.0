Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53DA16A913
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 15:03:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZYCqoLUG6gEgGaiJndh8hsfauGgyzXPqvsZfX3HPh+w=; b=LpnACHExsdsVvrqtXaD4voblC
	TVrksg/k0tcHjA+4ASAcdMzBda4fai3BbpwtaO4gXcJO0yNywYUnO6ikqpospeMgf4SO/ATuASpFo
	qJ+OGFcMYgaTqYmOLzB+OM5Wx+HctIURvR5Jh+OXH/Y8VQZBg+2FqTOn8xySwou/IPTgRPqE+CBBe
	xC8400PUtQVFCR/75wjBl7fyUXuvT/xYjFSKTxGqo2JgrZjoWTBfmkgUFIISAPU+jHtybC4kUXQzs
	pr1Npf+hKgMyUUn45nsP9mMVtrpMBq5vllJChond5YIZTcFMEfGsX9sqRemCtFDZcx7Eu0jPlNA8q
	viueskCfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnN6h-0006Gn-G0; Tue, 16 Jul 2019 13:02:59 +0000
Received: from regular1.263xmail.com ([211.150.70.200])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnN6d-0006G2-GE
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 13:02:56 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.173])
 by regular1.263xmail.com (Postfix) with ESMTP id C367C33E;
 Tue, 16 Jul 2019 21:02:53 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P25752T140261418071808S1563282165114228_; 
 Tue, 16 Jul 2019 21:02:53 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <e0a161c8a6d250073668d173823f6732>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 16/57] ram: rk3399: Add ddr version enc macro
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-17-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <033f6c2a-9181-0182-2cad-e946910b2279@rock-chips.com>
Date: Tue, 16 Jul 2019 21:02:44 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-17-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_060255_754723_532F53D5 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.200 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU3LCBKYWdhbiBUZWtpIHdyb3RlOgo+IEFkZCBkcmFtIGNv
bmZpZyBtYWNybyBmb3IgaGFuZGxpbmcgZGRyIHZlcnNpb24gbnVtYmVyLgo+Cj4gU2lnbmVkLW9m
Zi1ieTogSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+Cj4gU2lnbmVkLW9m
Zi1ieTogWW91TWluIENoZW4gPGN5bUByb2NrLWNoaXBzLmNvbT4KClJldmlld2VkLWJ5OiBLZXZl
ciBZYW5nIDxLZXZlci55YW5nQHJvY2stY2hpcHMuY29tPgoKVGhhbmtzLAogwqAtIEtldmVyCj4g
LS0tCj4gICBhcmNoL2FybS9pbmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL3NkcmFtX2NvbW1vbi5o
IHwgMiArKwo+ICAgZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMgICAgICAgICAg
ICAgICB8IDEgKwo+ICAgMiBmaWxlcyBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKPgo+IGRpZmYg
LS1naXQgYS9hcmNoL2FybS9pbmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL3NkcmFtX2NvbW1vbi5o
IGIvYXJjaC9hcm0vaW5jbHVkZS9hc20vYXJjaC1yb2NrY2hpcC9zZHJhbV9jb21tb24uaAo+IGlu
ZGV4IGY1Yzk5ZmVhOGIuLjgwMjdiNTM2MzYgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0vaW5jbHVk
ZS9hc20vYXJjaC1yb2NrY2hpcC9zZHJhbV9jb21tb24uaAo+ICsrKyBiL2FyY2gvYXJtL2luY2x1
ZGUvYXNtL2FyY2gtcm9ja2NoaXAvc2RyYW1fY29tbW9uLmgKPiBAQCAtNjYsNiArNjYsNyBAQCBz
dHJ1Y3Qgc2RyYW1fYmFzZV9wYXJhbXMgewo+ICAgICogWzE6MF0JZGJ3X2NoMAo+ICAgKi8KPiAg
ICNkZWZpbmUgU1lTX1JFR19ERFJUWVBFX1NISUZUCQkxMwo+ICsjZGVmaW5lIEREUl9TWVNfUkVH
X1ZFUlNJT04JCTIKPiAgICNkZWZpbmUgU1lTX1JFR19ERFJUWVBFX01BU0sJCTcKPiAgICNkZWZp
bmUgU1lTX1JFR19OVU1fQ0hfU0hJRlQJCTEyCj4gICAjZGVmaW5lIFNZU19SRUdfTlVNX0NIX01B
U0sJCTEKPiBAQCAtOTksNiArMTAwLDcgQEAgc3RydWN0IHNkcmFtX2Jhc2VfcGFyYW1zIHsKPiAg
ICNkZWZpbmUgU1lTX1JFR19EQldfTUFTSwkJMwo+ICAgI2RlZmluZSBTWVNfUkVHX0VOQ19EQlco
biwgY2gpCQkoKDIgPj4gKG4pKSA8PCBTWVNfUkVHX0RCV19TSElGVChjaCkpCj4gICAKPiArI2Rl
ZmluZSBTWVNfUkVHX0VOQ19WRVJTSU9OKG4pCQkoKG4pIDw8IDI4KQo+ICAgI2RlZmluZSBTWVNf
UkVHX0VOQ19DUzBfUk9XKG4sIG9zX3JlZzIsIG9zX3JlZzMsIGNoKSBkbyB7IFwKPiAgIAkJCShv
c19yZWcyKSB8PSAoKChuKSAtIDEzKSAmIDB4MykgPDwgKDYgKyAxNiAqIChjaCkpOyBcCj4gICAJ
CQkob3NfcmVnMykgfD0gKCgoKG4pIC0gMTMpICYgMHg0KSA+PiAyKSA8PCBcCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jIGIvZHJpdmVycy9yYW0vcm9j
a2NoaXAvc2RyYW1fcmszMzk5LmMKPiBpbmRleCAwZjI4MTYzZDZlLi43ZjZmN2Q4YTlhIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jCj4gKysrIGIvZHJp
dmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMKPiBAQCAtMTEwMiw2ICsxMTAyLDcgQEAg
c3RhdGljIHZvaWQgZHJhbV9hbGxfY29uZmlnKHN0cnVjdCBkcmFtX2luZm8gKmRyYW0sCj4gICAJ
CQlTWVNfUkVHX0VOQ19DUzFfUk9XKGluZm8tPmNhcF9pbmZvLmNzMV9yb3csIHN5c19yZWcyLAo+
ICAgCQkJCQkgICAgc3lzX3JlZzMsIGNoYW5uZWwpOwo+ICAgCQlzeXNfcmVnMyB8PSBTWVNfUkVH
X0VOQ19DUzFfQ09MKGluZm8tPmNhcF9pbmZvLmNvbCwgY2hhbm5lbCk7Cj4gKwkJc3lzX3JlZzMg
fD0gU1lTX1JFR19FTkNfVkVSU0lPTihERFJfU1lTX1JFR19WRVJTSU9OKTsKPiAgIAo+ICAgCQlk
ZHJfbXNjaF9yZWdzID0gZHJhbS0+Y2hhbltjaGFubmVsXS5tc2NoOwo+ICAgCQlub2NfdGltaW5n
ID0gJnBhcmFtcy0+Y2hbY2hhbm5lbF0ubm9jX3RpbWluZ3M7CgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
