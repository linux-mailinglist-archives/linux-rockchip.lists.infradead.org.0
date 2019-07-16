Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EED136A911
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 15:02:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/Fb2CR3gfZ4krYrbi3IrGs55WS9/HfBZMqS9D9CkBCM=; b=Hdg/+K08sut9GDYU29p5FoelM
	t67fB7pbpjPMkLougtELdQFT2dRq0m9mgM8SPLS4ORBXWf8BfI6v4U2EA50LZNcnI2A0uEhOUjKTT
	hHzjjGtL/vcKGWFcb8Je9EeYfnlImZZgNmmN+iyd9GljRaOI3s1PCmS/BZQMM699iE8FdUDk1Ey1r
	1XoBYcYWoo0KlxT5bnbYX+DKOb0qeZQy8RRks3QQSlFQUE53qfKL0dY5GD2h0kng8SLdmITgmrTQC
	rB7JBk1Xo7ZUNZiCxu1ufVoBRkDWD4GD7ovCsgriU610kU9DAfg4B+gffdZ7RzpPIkskjlSZrJVmA
	Y6Wa1SlTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnN6Q-0006BK-Qr; Tue, 16 Jul 2019 13:02:42 +0000
Received: from regular1.263xmail.com ([211.150.70.200])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnN6N-0006B1-FM
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 13:02:40 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.252])
 by regular1.263xmail.com (Postfix) with ESMTP id C21A3236;
 Tue, 16 Jul 2019 21:02:37 +0800 (CST)
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
 P29801T140087539005184S1563282142941469_; 
 Tue, 16 Jul 2019 21:02:30 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <570749707bc307289b115b466ace58d1>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 18/57] ram: rk3399: Add DdrMode
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-19-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <7593cfac-cf8d-fcc2-3b4a-0110fc946f0a@rock-chips.com>
Date: Tue, 16 Jul 2019 21:02:23 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-19-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_060239_710956_DE1F637E 
X-CRM114-Status: GOOD (  12.17  )
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

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU3LCBKYWdhbiBUZWtpIHdyb3RlOgo+IEFkZCBEZHJNb2Rl
IHN0cnVjdHVyZSB3aXRoIGFzc29jaWF0ZWQgYml0IGZpZWxkcy4KPgo+IFRoZXNlIHdvdWxkIGhl
bHAgdG8gcmVjb25maWd1cmUgc2RyYW0gY2FwYWJpbGl0aWVzIGR1cmluZwo+IGxwZGRyNCBzZXR1
cCByZWxhdGVkIGNvbmZpZ3MuCj4KPiBTaWduZWQtb2ZmLWJ5OiBKYWdhbiBUZWtpIDxqYWdhbkBh
bWFydWxhc29sdXRpb25zLmNvbT4KClJldmlld2VkLWJ5OiBLZXZlciBZYW5nIDxLZXZlci55YW5n
QHJvY2stY2hpcHMuY29tPgoKVGhhbmtzLAogwqAtIEtldmVyCj4gLS0tCj4gICAuLi4vaW5jbHVk
ZS9hc20vYXJjaC1yb2NrY2hpcC9zZHJhbV9yazMzOTkuaCAgICB8IDE3ICsrKysrKysrKysrKysr
KystCj4gICBkcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYyAgICAgICAgICAgICB8
ICAyICstCj4gICAyIGZpbGVzIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25z
KC0pCj4KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vaW5jbHVkZS9hc20vYXJjaC1yb2NrY2hpcC9z
ZHJhbV9yazMzOTkuaCBiL2FyY2gvYXJtL2luY2x1ZGUvYXNtL2FyY2gtcm9ja2NoaXAvc2RyYW1f
cmszMzk5LmgKPiBpbmRleCA3ZjQxYTY3MjQyLi5kYzY1YWU3OTI0IDEwMDY0NAo+IC0tLSBhL2Fy
Y2gvYXJtL2luY2x1ZGUvYXNtL2FyY2gtcm9ja2NoaXAvc2RyYW1fcmszMzk5LmgKPiArKysgYi9h
cmNoL2FybS9pbmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL3NkcmFtX3JrMzM5OS5oCj4gQEAgLTI4
LDYgKzI4LDIxIEBAIHVuaW9uIG5vY19kZHJ0aW1pbmdjMCB7Cj4gICAJfSBiOwo+ICAgfTsKPiAg
IAo+ICt1bmlvbiBub2NfZGRybW9kZSB7Cj4gKwl1MzIgZDMyOwo+ICsJc3RydWN0IHsKPiArCQl1
bnNpZ25lZCBhdXRvcHJlY2hhcmdlIDogMTsKPiArCQl1bnNpZ25lZCBieXBhc3NmaWx0ZXJpbmcg
OiAxOwo+ICsJCXVuc2lnbmVkIGZhd2JhbmsgOiAxOwo+ICsJCXVuc2lnbmVkIGJ1cnN0c2l6ZSA6
IDI7Cj4gKwkJdW5zaWduZWQgbXdyc2l6ZSA6IDI7Cj4gKwkJdW5zaWduZWQgcmVzZXJ2ZWQyIDog
MTsKPiArCQl1bnNpZ25lZCBmb3JjZW9yZGVyIDogODsKPiArCQl1bnNpZ25lZCBmb3JjZW9yZGVy
c3RhdGUgOiA4Owo+ICsJCXVuc2lnbmVkIHJlc2VydmVkMyA6IDg7Cj4gKwl9IGI7Cj4gK307Cj4g
Kwo+ICAgc3RydWN0IHJrMzM5OV9tc2NoX3JlZ3Mgewo+ICAgCXUzMiBjb3JlaWQ7Cj4gICAJdTMy
IHJldmlzaW9uaWQ7Cj4gQEAgLTQ4LDcgKzYzLDcgQEAgc3RydWN0IHJrMzM5OV9tc2NoX3RpbWlu
Z3Mgewo+ICAgCXUzMiBkZHJ0aW1pbmdiMDsKPiAgIAl1bmlvbiBub2NfZGRydGltaW5nYzAgZGRy
dGltaW5nYzA7Cj4gICAJdTMyIGRldnRvZGV2MDsKPiAtCXUzMiBkZHJtb2RlOwo+ICsJdW5pb24g
bm9jX2Rkcm1vZGUgZGRybW9kZTsKPiAgIAl1MzIgYWdpbmd4MDsKPiAgIH07Cj4gICAKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMgYi9kcml2ZXJzL3Jh
bS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYwo+IGluZGV4IGU5MTY0NDhmYzAuLmU0NzIzYzdkNTkg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMKPiArKysg
Yi9kcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYwo+IEBAIC0xMTE0LDcgKzExMTQs
NyBAQCBzdGF0aWMgdm9pZCBkcmFtX2FsbF9jb25maWcoc3RydWN0IGRyYW1faW5mbyAqZHJhbSwK
PiAgIAkJICAgICAgICZkZHJfbXNjaF9yZWdzLT5kZHJ0aW1pbmdjMCk7Cj4gICAJCXdyaXRlbChu
b2NfdGltaW5nLT5kZXZ0b2RldjAsCj4gICAJCSAgICAgICAmZGRyX21zY2hfcmVncy0+ZGV2dG9k
ZXYwKTsKPiAtCQl3cml0ZWwobm9jX3RpbWluZy0+ZGRybW9kZSwKPiArCQl3cml0ZWwobm9jX3Rp
bWluZy0+ZGRybW9kZS5kMzIsCj4gICAJCSAgICAgICAmZGRyX21zY2hfcmVncy0+ZGRybW9kZSk7
Cj4gICAKPiAgIAkJLyogcmFuayAxIG1lbW9yeSBjbG9jayBkaXNhYmxlIChkZmlfZHJhbV9jbGtf
ZGlzYWJsZSA9IDEpICovCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
