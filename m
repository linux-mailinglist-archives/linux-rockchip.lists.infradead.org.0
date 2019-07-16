Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3350A6A324
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 09:44:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vJ+x8ApAv37VqIGWChw1zsYT6VvkwHUPnOLDviOahc0=; b=LBJImm7/MbWqXWgKEKQ5cXIdF
	JpZa1V8oiY5eWePTa5K9fPadDNxkp9WOYFYBBWb+F4yKTs6Z8JSKJ+/+qXSrSbeJytlV/s/pLAWtY
	VULIOuzJiMasIhYscAsSwuBkah8QHbqF9UonRQz+yqhS75zOG4usmbTJ5kwGxRijKiptBmPOuZ5HN
	iaWeS7NSTVCfwX50JdckAXeRGPSVc47Rcr9v8z9T/Rlkw2JKR1PmfqRAoTZ4HzSBLluXWMwXuiyZy
	gAOThVZ14y8eNLrBz29KouxA64zIkJbuXgYj34y0Nb82caaDmWZ6zaRIvCwuFZVXv309dtx/A04e6
	tuUCGuCqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnI7x-00078s-9l; Tue, 16 Jul 2019 07:43:57 +0000
Received: from regular1.263xmail.com ([211.150.70.205])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnI7u-00078H-HK
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 07:43:55 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.129])
 by regular1.263xmail.com (Postfix) with ESMTP id 1B91F4AC;
 Tue, 16 Jul 2019 15:43:52 +0800 (CST)
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
 P13752T140508200679168S1563263026850251_; 
 Tue, 16 Jul 2019 15:43:49 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <0dfe58de2afa50981878a34e43f0b5c2>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 13/18] ram: rk3399: debug: Add sdram_print_stride
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190715182856.21688-1-jagan@amarulasolutions.com>
 <20190715182856.21688-14-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <7629742f-2eaa-0e2c-67a8-284ef8cdf231@rock-chips.com>
Date: Tue, 16 Jul 2019 15:43:46 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190715182856.21688-14-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_004354_765677_9BDF3E1D 
X-CRM114-Status: GOOD (  13.58  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.205 listed in list.dnswl.org]
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

Ck9uIDIwMTkvNy8xNiDkuIrljYgyOjI4LCBKYWdhbiBUZWtpIHdyb3RlOgo+IEFkZCBjb2RlIHRv
IHByaW50IHRoZSBjaGFubmVsIHN0cmlkZSwgdGhpcyB3b3VsZCBoZWxwIHRvCj4gcHJpbnQgdGhl
IHN0cmlkZSBvZiBhc3NvY2lhdGVkIGNoYW5uZWwuCj4KPiBIZXJlIGlzIHNhbXBsZSBwcmludCBv
biBMUEREUjQsIDUwTUh6Lgo+IDI1NkIgc3RyaWRlCj4KPiBTaWduZWQtb2ZmLWJ5OiBKYWdhbiBU
ZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBZb3VNaW4g
Q2hlbiA8Y3ltQHJvY2stY2hpcHMuY29tPgoKUmV2aWV3ZWQtYnk6IEtldmVyIFlhbmcgPEtldmVy
LnlhbmdAcm9jay1jaGlwcy5jb20+CgpUaGFua3MsCiDCoC0gS2V2ZXIKPiAtLS0KPiAgIC4uLi9p
bmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL3NkcmFtX2NvbW1vbi5oICB8ICA1ICsrKysKPiAgIGRy
aXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX2RlYnVnLmMgICAgICAgICAgICB8IDI5ICsrKysrKysr
KysrKysrKysrKysKPiAgIDIgZmlsZXMgY2hhbmdlZCwgMzQgaW5zZXJ0aW9ucygrKQo+Cj4gZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtL2luY2x1ZGUvYXNtL2FyY2gtcm9ja2NoaXAvc2RyYW1fY29tbW9u
LmggYi9hcmNoL2FybS9pbmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL3NkcmFtX2NvbW1vbi5oCj4g
aW5kZXggY2ZiYjUxMTg0My4uYjc1NDlmNWQ4YSAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9pbmNs
dWRlL2FzbS9hcmNoLXJvY2tjaGlwL3NkcmFtX2NvbW1vbi5oCj4gKysrIGIvYXJjaC9hcm0vaW5j
bHVkZS9hc20vYXJjaC1yb2NrY2hpcC9zZHJhbV9jb21tb24uaAo+IEBAIC0xMDIsMTAgKzEwMiwx
NSBAQCBpbmxpbmUgdm9pZCBzZHJhbV9wcmludF9kZHJfaW5mbyhzdHJ1Y3Qgc2RyYW1fY2FwX2lu
Zm8gKmNhcF9pbmZvLAo+ICAgCQkJCSBzdHJ1Y3Qgc2RyYW1fYmFzZV9wYXJhbXMgKmJhc2UpCj4g
ICB7Cj4gICB9Cj4gKwo+ICtpbmxpbmUgdm9pZCBzZHJhbV9wcmludF9zdHJpZGUodW5zaWduZWQg
aW50IHN0cmlkZSkKPiArewo+ICt9Cj4gICAjZWxzZQo+ICAgdm9pZCBzZHJhbV9wcmludF9kcmFt
X3R5cGUodW5zaWduZWQgY2hhciBkcmFtdHlwZSk7Cj4gICB2b2lkIHNkcmFtX3ByaW50X2Rkcl9p
bmZvKHN0cnVjdCBzZHJhbV9jYXBfaW5mbyAqY2FwX2luZm8sCj4gICAJCQkgIHN0cnVjdCBzZHJh
bV9iYXNlX3BhcmFtcyAqYmFzZSk7Cj4gK3ZvaWQgc2RyYW1fcHJpbnRfc3RyaWRlKHVuc2lnbmVk
IGludCBzdHJpZGUpOwo+ICAgI2VuZGlmIC8qIENPTkZJR19SQU1fUk9DS0NISVBfREVCVUcgKi8K
PiAgIAo+ICAgI2VuZGlmCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFt
X2RlYnVnLmMgYi9kcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9kZWJ1Zy5jCj4gaW5kZXggMTll
OTIyNWMxMi4uOWNmNjYyNjc1YiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3JhbS9yb2NrY2hpcC9z
ZHJhbV9kZWJ1Zy5jCj4gKysrIGIvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fZGVidWcuYwo+
IEBAIC0xMTYsMyArMTE2LDMyIEBAIHZvaWQgc2RyYW1fcHJpbnRfZGRyX2luZm8oc3RydWN0IHNk
cmFtX2NhcF9pbmZvICpjYXBfaW5mbywKPiAgIAlwcmludGRlYyhjYXAgPj4gMjApOwo+ICAgCXBy
aW50YXNjaWkoIk1CXG4iKTsKPiAgIH0KPiArCj4gK3ZvaWQgc2RyYW1fcHJpbnRfc3RyaWRlKHVu
c2lnbmVkIGludCBzdHJpZGUpCj4gK3sKPiArCXN3aXRjaCAoc3RyaWRlKSB7Cj4gKwljYXNlIDB4
YzoKPiArCQlwcmludGYoIjEyOEIgc3RyaWRlXG4iKTsKPiArCQlicmVhazsKPiArCWNhc2UgNToK
PiArCWNhc2UgOToKPiArCWNhc2UgMHhkOgo+ICsJY2FzZSAweDExOgo+ICsJY2FzZSAweDE5Ogo+
ICsJCXByaW50ZigiMjU2QiBzdHJpZGVcbiIpOwo+ICsJCWJyZWFrOwo+ICsJY2FzZSAweGE6Cj4g
KwljYXNlIDB4ZToKPiArCWNhc2UgMHgxMjoKPiArCQlwcmludGYoIjUxMkIgc3RyaWRlXG4iKTsK
PiArCQlicmVhazsKPiArCWNhc2UgMHhmOgo+ICsJCXByaW50ZigiNEsgc3RyaWRlXG4iKTsKPiAr
CQlicmVhazsKPiArCWNhc2UgMHgxZjoKPiArCQlwcmludGYoIjMyTUIgKyAyNTZCIHN0cmlkZVxu
Iik7Cj4gKwkJYnJlYWs7Cj4gKwlkZWZhdWx0Ogo+ICsJCXByaW50Zigibm8gc3RyaWRlXG4iKTsK
PiArCX0KPiArfQoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
