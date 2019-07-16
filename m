Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3D66A2FD
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 09:34:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=c/F5BxI84II0MsfTd2QBBMhn7bfqDAuG9FfzFKjcKDw=; b=WFLtTmUf0C1dOxiaNAngcd6BY
	0HBiWJd+354H+kvNGrb8wwD31Q2A+fJK0szKALKmYzF/xAK7KKX8nk8JQ5uuOrR3OwzkvJwboDOxL
	42a2qWybN76rC6jlpUywc4ja2zx0tMmSCc2ZHtIwB4cFNIqqtsWry5xSv+aGRM0W+NXntEukuX+PX
	57/0REvWzq6WBYHozvxVQlKKkOJSOSy6gytie7Wpfz867vZjMZkTUTNiStr2+7mk4m5bvyzoN+Un7
	VuTosbs/7Nsw2H5YcgEjaRDRvWhcL0TS8RytI64hByIcYv5Gct2CyB28d607exSLdVb4FjZ8W/DfL
	Ndt0loY8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnHya-0003Pv-AR; Tue, 16 Jul 2019 07:34:16 +0000
Received: from regular1.263xmail.com ([211.150.70.203])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnHyV-0003PP-P0
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 07:34:13 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.205])
 by regular1.263xmail.com (Postfix) with ESMTP id 033013EF;
 Tue, 16 Jul 2019 15:34:10 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.12.9] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P24249T139641130841856S1563262445450496_; 
 Tue, 16 Jul 2019 15:34:07 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <794f37ea2428e419c65778e87bb7dc80>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 12/15] ram: rk3399: Move common sdram structures in
 common header
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190715182110.21336-1-jagan@amarulasolutions.com>
 <20190715182110.21336-13-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <efa9d5db-5273-6d5a-6c3f-c6fdbbe3a89b@rock-chips.com>
Date: Tue, 16 Jul 2019 15:34:05 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190715182110.21336-13-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_003412_177802_96FABFAF 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.203 listed in list.dnswl.org]
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvNy8xNiDkuIrljYgyOjIxLCBKYWdhbiBUZWtpIHdyb3RlOgo+IE1vdmUgY29tbW9u
IHNkcmFtIHN0cnVjdHVyZXMgbGlrZSBzZHJhbV9jYXBfaW5mbywgc2RyYW1fYmFzZV9wYXJhbXMK
PiBpbnRvIHNkcmFtX2NvbW1vbiBoZWFkZXIsIHRoaXMgd291bGQgaGVscCB0byByZXVzZSB0aGUg
c2FtZQo+IGZyb20gYW5vdGhlciBjb250cm9sbGVycyBsaWtlIHB4MzAuCj4KPiBTaWduZWQtb2Zm
LWJ5OiBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KClJldmlld2VkLWJ5
OiBLZXZlciBZYW5nIDxLZXZlci55YW5nQHJvY2stY2hpcHMuY29tPgoKVGhhbmtzLAogwqAtIEtl
dmVyCj4gLS0tCj4gICAuLi4vaW5jbHVkZS9hc20vYXJjaC1yb2NrY2hpcC9zZHJhbV9jb21tb24u
aCAgfCAyOSArKysrKysrKysrKysrKysrKysrCj4gICAuLi4vaW5jbHVkZS9hc20vYXJjaC1yb2Nr
Y2hpcC9zZHJhbV9yazMzOTkuaCAgfCAyOCAtLS0tLS0tLS0tLS0tLS0tLS0KPiAgIDIgZmlsZXMg
Y2hhbmdlZCwgMjkgaW5zZXJ0aW9ucygrKSwgMjggZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0
IGEvYXJjaC9hcm0vaW5jbHVkZS9hc20vYXJjaC1yb2NrY2hpcC9zZHJhbV9jb21tb24uaCBiL2Fy
Y2gvYXJtL2luY2x1ZGUvYXNtL2FyY2gtcm9ja2NoaXAvc2RyYW1fY29tbW9uLmgKPiBpbmRleCA2
NzFjMzE4ZDUwLi44MmNlM2QzZmM5IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL2luY2x1ZGUvYXNt
L2FyY2gtcm9ja2NoaXAvc2RyYW1fY29tbW9uLmgKPiArKysgYi9hcmNoL2FybS9pbmNsdWRlL2Fz
bS9hcmNoLXJvY2tjaGlwL3NkcmFtX2NvbW1vbi5oCj4gQEAgLTUsNiArNSwzNSBAQAo+ICAgCj4g
ICAjaWZuZGVmIF9BU01fQVJDSF9TRFJBTV9DT01NT05fSAo+ICAgI2RlZmluZSBfQVNNX0FSQ0hf
U0RSQU1fQ09NTU9OX0gKPiArCj4gK3N0cnVjdCBzZHJhbV9jYXBfaW5mbyB7Cj4gKwl1bnNpZ25l
ZCBpbnQgcmFuazsKPiArCS8qIGRyYW0gY29sdW1uIG51bWJlciwgMCBtZWFucyB0aGlzIGNoYW5u
ZWwgaXMgaW52YWxpZCAqLwo+ICsJdW5zaWduZWQgaW50IGNvbDsKPiArCS8qIGRyYW0gYmFuayBu
dW1iZXIsIDM6OGJhbmssIDI6NGJhbmsgKi8KPiArCXVuc2lnbmVkIGludCBiazsKPiArCS8qIGNo
YW5uZWwgYnVzd2lkdGgsIDI6MzJiaXQsIDE6MTZiaXQsIDA6OGJpdCAqLwo+ICsJdW5zaWduZWQg
aW50IGJ3Owo+ICsJLyogZGllIGJ1c3dpZHRoLCAyOjMyYml0LCAxOjE2Yml0LCAwOjhiaXQgKi8K
PiArCXVuc2lnbmVkIGludCBkYnc7Cj4gKwkvKgo+ICsJICogcm93XzNfNCA9IDE6IDZHYiBvciAx
MkdiIGRpZQo+ICsJICogcm93XzNfNCA9IDA6IG5vcm1hbCBkaWUsIHBvd2VyIG9mIDIKPiArCSAq
Lwo+ICsJdW5zaWduZWQgaW50IHJvd18zXzQ7Cj4gKwl1bnNpZ25lZCBpbnQgY3MwX3JvdzsKPiAr
CXVuc2lnbmVkIGludCBjczFfcm93Owo+ICsJdW5zaWduZWQgaW50IGRkcmNvbmZpZzsKPiArfTsK
PiArCj4gK3N0cnVjdCBzZHJhbV9iYXNlX3BhcmFtcyB7Cj4gKwl1bnNpZ25lZCBpbnQgZGRyX2Zy
ZXE7Cj4gKwl1bnNpZ25lZCBpbnQgZHJhbXR5cGU7Cj4gKwl1bnNpZ25lZCBpbnQgbnVtX2NoYW5u
ZWxzOwo+ICsJdW5zaWduZWQgaW50IHN0cmlkZTsKPiArCXVuc2lnbmVkIGludCBvZHQ7Cj4gK307
Cj4gKwo+ICAgLyoKPiAgICAqIHN5c19yZWcgYml0ZmllbGQgc3RydWN0Cj4gICAgKiBbMzFdCQly
b3dfM180X2NoMQo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9pbmNsdWRlL2FzbS9hcmNoLXJvY2tj
aGlwL3NkcmFtX3JrMzM5OS5oIGIvYXJjaC9hcm0vaW5jbHVkZS9hc20vYXJjaC1yb2NrY2hpcC9z
ZHJhbV9yazMzOTkuaAo+IGluZGV4IDU2MTRiOTRlY2IuLjY1YzkyY2Y3NDQgMTAwNjQ0Cj4gLS0t
IGEvYXJjaC9hcm0vaW5jbHVkZS9hc20vYXJjaC1yb2NrY2hpcC9zZHJhbV9yazMzOTkuaAo+ICsr
KyBiL2FyY2gvYXJtL2luY2x1ZGUvYXNtL2FyY2gtcm9ja2NoaXAvc2RyYW1fcmszMzk5LmgKPiBA
QCAtNzEsMzkgKzcxLDExIEBAIHN0cnVjdCByazMzOTlfZGRyX2NpY19yZWdzIHsKPiAgIC8qIERF
TkFMSV9DVExfMjc0ICovCj4gICAjZGVmaW5lIE1FTV9SU1RfVkFMSUQJMQo+ICAgCj4gLXN0cnVj
dCBzZHJhbV9jYXBfaW5mbyB7Cj4gLQl1bnNpZ25lZCBpbnQgcmFuazsKPiAtCS8qIGRyYW0gY29s
dW1uIG51bWJlciwgMCBtZWFucyB0aGlzIGNoYW5uZWwgaXMgaW52YWxpZCAqLwo+IC0JdW5zaWdu
ZWQgaW50IGNvbDsKPiAtCS8qIGRyYW0gYmFuayBudW1iZXIsIDM6OGJhbmssIDI6NGJhbmsgKi8K
PiAtCXVuc2lnbmVkIGludCBiazsKPiAtCS8qIGNoYW5uZWwgYnVzd2lkdGgsIDI6MzJiaXQsIDE6
MTZiaXQsIDA6OGJpdCAqLwo+IC0JdW5zaWduZWQgaW50IGJ3Owo+IC0JLyogZGllIGJ1c3dpZHRo
LCAyOjMyYml0LCAxOjE2Yml0LCAwOjhiaXQgKi8KPiAtCXVuc2lnbmVkIGludCBkYnc7Cj4gLQkv
Kgo+IC0JICogcm93XzNfNCA9IDE6IDZHYiBvciAxMkdiIGRpZQo+IC0JICogcm93XzNfNCA9IDA6
IG5vcm1hbCBkaWUsIHBvd2VyIG9mIDIKPiAtCSAqLwo+IC0JdW5zaWduZWQgaW50IHJvd18zXzQ7
Cj4gLQl1bnNpZ25lZCBpbnQgY3MwX3JvdzsKPiAtCXVuc2lnbmVkIGludCBjczFfcm93Owo+IC0J
dW5zaWduZWQgaW50IGRkcmNvbmZpZzsKPiAtfTsKPiAtCj4gICBzdHJ1Y3QgcmszMzk5X3NkcmFt
X2NoYW5uZWwgewo+ICAgCXN0cnVjdCBzZHJhbV9jYXBfaW5mbyBjYXBfaW5mbzsKPiAgIAlzdHJ1
Y3QgcmszMzk5X21zY2hfdGltaW5ncyBub2NfdGltaW5nczsKPiAgIH07Cj4gICAKPiAtc3RydWN0
IHNkcmFtX2Jhc2VfcGFyYW1zIHsKPiAtCXVuc2lnbmVkIGludCBkZHJfZnJlcTsKPiAtCXVuc2ln
bmVkIGludCBkcmFtdHlwZTsKPiAtCXVuc2lnbmVkIGludCBudW1fY2hhbm5lbHM7Cj4gLQl1bnNp
Z25lZCBpbnQgc3RyaWRlOwo+IC0JdW5zaWduZWQgaW50IG9kdDsKPiAtfTsKPiAtCj4gICBzdHJ1
Y3QgcmszMzk5X3NkcmFtX3BhcmFtcyB7Cj4gICAJc3RydWN0IHJrMzM5OV9zZHJhbV9jaGFubmVs
IGNoWzJdOwo+ICAgCXN0cnVjdCBzZHJhbV9iYXNlX3BhcmFtcyBiYXNlOwoKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
