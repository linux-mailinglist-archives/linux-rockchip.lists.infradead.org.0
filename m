Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18F966A94F
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 15:13:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ucA6k3+3L7AV1Kv6A4UYSaqKTjoZuNmVPkRqByGlVJU=; b=MXSUpWx+hqr8l2SO3ZI0kp1Oq
	HKgFFHNlO4WEpCKe9afF/OOWxjEb6Q3/lu4w71BjC7dOdBT0c59isA6u3QkTOpywfj6FWBssR3Y0b
	Jf553UZUs2LP2sydOUJaxvN/bmQuy+Avo4CycGx5bIkzoBshs7fqP93OcV1ohQyVKIfnAXz56AR64
	bBwekVokj7brUF9bFFnnmC8JXWwSv3x30dTfydgOoPAs46OZEhkQtVSE1g/eshA640b3rkGGlX8Tg
	E+0KNHEv2Zeq/9Rx2MTNK+IjrnpOf58I8+byGVK28tcunr6lOKCP5ZfwZf/WSGlNzybSAl9UeNJtS
	t5MLc0Dwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnNGb-0001in-CI; Tue, 16 Jul 2019 13:13:13 +0000
Received: from regular1.263xmail.com ([211.150.70.205])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnNGY-0001hq-1G
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 13:13:11 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.105])
 by regular1.263xmail.com (Postfix) with ESMTP id 101173A8;
 Tue, 16 Jul 2019 21:13:07 +0800 (CST)
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
 P29430T139996673603328S1563282783613217_; 
 Tue, 16 Jul 2019 21:13:05 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <f5f0ea3056fe2b2b96bc777e6baa271d>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 28/57] ram: rk3399: Configure SLEWP_EN, SLEWN_EN for
 lpddr4
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-29-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <5a08364e-ff97-9b84-8f56-b90648ee8e89@rock-chips.com>
Date: Tue, 16 Jul 2019 21:13:05 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-29-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_061310_280312_BE6CA3E6 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.205 listed in list.dnswl.org]
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

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU3LCBKYWdhbiBUZWtpIHdyb3RlOgo+IENvbmZpZ3VyZSBT
TEVXUF9FTiwgU0xFV05fRU4gZm9yIGxwZGRyNCBkdXJpbmcgcGh5IElPIGNvbmZpZy4KPgo+IFNp
Z25lZC1vZmYtYnk6IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+IFNp
Z25lZC1vZmYtYnk6IFlvdU1pbiBDaGVuIDxjeW1Acm9jay1jaGlwcy5jb20+CgpSZXZpZXdlZC1i
eTogS2V2ZXIgWWFuZyA8S2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKIMKgLSBL
ZXZlcgo+IC0tLQo+ICAgZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMgfCAyMSAr
KysrKysrKysrKysrKysrKysrKysKPiAgIDEgZmlsZSBjaGFuZ2VkLCAyMSBpbnNlcnRpb25zKCsp
Cj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMgYi9k
cml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYwo+IGluZGV4IGE5ZTA5MmMzOWYuLmMw
MmY5MzZmMmEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5
LmMKPiArKysgYi9kcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYwo+IEBAIC0zNyw2
ICszNyw4IEBACj4gICAKPiAgICNkZWZpbmUgUEhZX0JPT1NUUF9FTgkJMHgxCj4gICAjZGVmaW5l
IFBIWV9CT09TVE5fRU4JCTB4MQo+ICsjZGVmaW5lIFBIWV9TTEVXUF9FTgkJMHgxCj4gKyNkZWZp
bmUgUEhZX1NMRVdOX0VOCQkweDEKPiAgIAo+ICAgI2RlZmluZSBDUlVfU0ZUUlNUX0REUl9DVFJM
KGNoLCBuKQkoKDB4MSA8PCAoOCArIDE2ICsgKGNoKSAqIDQpKSB8IFwKPiAgIAkJCQkJKChuKSA8
PCAoOCArIChjaCkgKiA0KSkpCj4gQEAgLTMzNCw2ICszMzYsMjUgQEAgc3RhdGljIGludCBwaHlf
aW9fY29uZmlnKGNvbnN0IHN0cnVjdCBjaGFuX2luZm8gKmNoYW4sCj4gICAJCWNscnNldGJpdHNf
bGUzMigmZGVuYWxpX3BoeVs5MzddLCAweGZmIDw8IDIwLCByZWdfdmFsdWUgPDwgMjApOwo+ICAg
CQkvKiBQSFlfOTM5IFBIWV9QQURfQ1NfRFJJVkUgKi8KPiAgIAkJY2xyc2V0Yml0c19sZTMyKCZk
ZW5hbGlfcGh5WzkzOV0sIDB4ZmYgPDwgMjAsIHJlZ192YWx1ZSA8PCAyMCk7Cj4gKwo+ICsJCS8q
IFNMRVdQX0VOICYgU0xFV05fRU4gKi8KPiArCQlyZWdfdmFsdWUgPSAoKFBIWV9TTEVXUF9FTiA8
PCAzKSB8IFBIWV9TTEVXTl9FTik7Cj4gKwkJLyogUEhZXzkyNCBQSFlfUEFEX0ZEQktfRFJJVkUg
Ki8KPiArCQljbHJzZXRiaXRzX2xlMzIoJmRlbmFsaV9waHlbOTI0XSwgMHgzZiA8PCA4LCByZWdf
dmFsdWUgPDwgOCk7Cj4gKwkJLyogUEhZXzkyNiBQSFlfUEFEX0RBVEFfRFJJVkUgKi8KPiArCQlj
bHJzZXRiaXRzX2xlMzIoJmRlbmFsaV9waHlbOTI2XSwgMHgzZiwgcmVnX3ZhbHVlKTsKPiArCQkv
KiBQSFlfOTI3IFBIWV9QQURfRFFTX0RSSVZFICovCj4gKwkJY2xyc2V0Yml0c19sZTMyKCZkZW5h
bGlfcGh5WzkyN10sIDB4M2YsIHJlZ192YWx1ZSk7Cj4gKwkJLyogUEhZXzkyOCBQSFlfUEFEX0FE
RFJfRFJJVkUgKi8KPiArCQljbHJzZXRiaXRzX2xlMzIoJmRlbmFsaV9waHlbOTI4XSwgMHgzZiA8
PCA4LCByZWdfdmFsdWUgPDwgOCk7Cj4gKwkJLyogUEhZXzkyOSBQSFlfUEFEX0NMS19EUklWRSAq
Lwo+ICsJCWNscnNldGJpdHNfbGUzMigmZGVuYWxpX3BoeVs5MjldLCAweDNmIDw8IDgsIHJlZ192
YWx1ZSA8PCA4KTsKPiArCQkvKiBQSFlfOTM1IFBIWV9QQURfQ0tFX0RSSVZFICovCj4gKwkJY2xy
c2V0Yml0c19sZTMyKCZkZW5hbGlfcGh5WzkzNV0sIDB4M2YgPDwgOCwgcmVnX3ZhbHVlIDw8IDgp
Owo+ICsJCS8qIFBIWV85MzcgUEhZX1BBRF9SU1RfRFJJVkUgKi8KPiArCQljbHJzZXRiaXRzX2xl
MzIoJmRlbmFsaV9waHlbOTM3XSwgMHgzZiA8PCA4LCByZWdfdmFsdWUgPDwgOCk7Cj4gKwkJLyog
UEhZXzkzOSBQSFlfUEFEX0NTX0RSSVZFICovCj4gKwkJY2xyc2V0Yml0c19sZTMyKCZkZW5hbGlf
cGh5WzkzOV0sIDB4M2YgPDwgOCwgcmVnX3ZhbHVlIDw8IDgpOwo+ICAgCX0KPiAgIAo+ICAgCS8q
IHNwZWVkIHNldHRpbmcgKi8KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
