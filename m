Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56BA76A955
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 15:14:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4yNPSj5I1zsv2PUwwyJHTTJEJ8qGNU5tqoN8wMHJegw=; b=o+XeyU7SfC4eDb4Zv7kKP0UT9
	T4rMqkT1LD5HPNqNTh0aqGmR4JJYbRhO2f40fXStAqj5rjBjPiPL0XZDitZHgc+K3Hnwbr9/pFGkZ
	Ct/TiOlMseKPtCN12D1n19iJPCZYYE7WOgT+zEnksNZvxzON7h0uonPzYqZMxhsIC1FLIq1GT21gG
	XQaq5VyLeglfbsD4P2Xd51nARwJYdRjPrsW0tLl9WNMfIDoQfwAPWgxlr91j3avUznMZEqGbdcofD
	MiqPEnNoe8hXmItYEWJPb6WvrhLlPwBia/YUBAUINUz/NBMZj4C8FMl68XhIW8E7iiy5ARINnjdFs
	cM1ERj4XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnNHm-0001ux-Bb; Tue, 16 Jul 2019 13:14:26 +0000
Received: from regular1.263xmail.com ([211.150.70.200])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnNHi-0001uP-NV
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 13:14:24 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.252])
 by regular1.263xmail.com (Postfix) with ESMTP id 0A69E34F;
 Tue, 16 Jul 2019 21:14:21 +0800 (CST)
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
 P29801T140087528515328S1563282856976761_; 
 Tue, 16 Jul 2019 21:14:18 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <86a67dca23c11ef8e7ff3745ccae37df>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 31/57] ram: rk3399: Configure tsel write ca for lpddr4
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-32-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <4562b0ae-387b-e21b-d143-53fad1893bc0@rock-chips.com>
Date: Tue, 16 Jul 2019 21:14:18 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-32-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_061422_976442_5161879D 
X-CRM114-Status: GOOD (  15.05  )
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

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU3LCBKYWdhbiBUZWtpIHdyb3RlOgo+IHRzZWwgd3JpdGUg
Y2FfcCBhbmQgY2FfbiB2YWx1ZXMgbmVlZCB0byB3cml0ZSBvbiBQSFkgNTQ0LCA2NzIKPiBhbmQg
ODAwIHRvIGNvbmZpZ3VyZSBkcyBvZHQuCj4KPiBDb25maWd1cmUgdGhlIHNhbWUgUEhZIHJlZ2lz
dGVyIGZvciBscGRkcjQgd291bGQgcmVxdWlyZSBhIG1hc2sKPiB2YWx1ZSBvZiAoMzAwIDw8IDgp
Lgo+Cj4gQWRkIHN1cHBvcnQgZm9yIGl0Lgo+Cj4gU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVraSA8
amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+Cj4gU2lnbmVkLW9mZi1ieTogWW91TWluIENoZW4g
PGN5bUByb2NrLWNoaXBzLmNvbT4KClJldmlld2VkLWJ5OiBLZXZlciBZYW5nIDxLZXZlci55YW5n
QHJvY2stY2hpcHMuY29tPgoKVGhhbmtzLAogwqAtIEtldmVyCj4gLS0tCj4gICBkcml2ZXJzL3Jh
bS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYyB8IDE1ICsrKysrKysrKysrKy0tLQo+ICAgMSBmaWxl
IGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMgYi9kcml2ZXJzL3JhbS9yb2Nr
Y2hpcC9zZHJhbV9yazMzOTkuYwo+IGluZGV4IDc2ODk3MTFhOTkuLjEwNTBjYmRiMDcgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMKPiArKysgYi9kcml2
ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYwo+IEBAIC01MDIsOSArNTAyLDE4IEBAIHN0
YXRpYyB2b2lkIHNldF9kc19vZHQoY29uc3Qgc3RydWN0IGNoYW5faW5mbyAqY2hhbiwKPiAgIAo+
ICAgCS8qIHBoeV9hZHJfdHNlbF9zZWxlY3RfIDhiaXRzIERFTkFMSV9QSFlfNTQ0LzY3Mi84MDAg
b2Zmc2V0XzAgKi8KPiAgIAlyZWdfdmFsdWUgPSB0c2VsX3dyX3NlbGVjdF9jYV9uIHwgKHRzZWxf
d3Jfc2VsZWN0X2NhX3AgPDwgMHg0KTsKPiAtCWNscnNldGJpdHNfbGUzMigmZGVuYWxpX3BoeVs1
NDRdLCAweGZmLCByZWdfdmFsdWUpOwo+IC0JY2xyc2V0Yml0c19sZTMyKCZkZW5hbGlfcGh5WzY3
Ml0sIDB4ZmYsIHJlZ192YWx1ZSk7Cj4gLQljbHJzZXRiaXRzX2xlMzIoJmRlbmFsaV9waHlbODAw
XSwgMHhmZiwgcmVnX3ZhbHVlKTsKPiArCWlmIChJU19FTkFCTEVEKENPTkZJR19SQU1fUkszMzk5
X0xQRERSNCkpIHsKPiArCQkvKiBMUEREUjQgdGhlc2UgcmVnaXN0ZXIgcmVhZCBhbHdheXMgcmV0
dXJuIDAsIHNvCj4gKwkJICogY2FuIG5vdCB1c2UgY2xyc2V0Yml0c19sZTMyKCksIG5lZWQgdG8g
d3JpdGUzMgo+ICsJCSAqLwo+ICsJCXdyaXRlbCgoMHgzMDAgPDwgOCkgfCByZWdfdmFsdWUsICZk
ZW5hbGlfcGh5WzU0NF0pOwo+ICsJCXdyaXRlbCgoMHgzMDAgPDwgOCkgfCByZWdfdmFsdWUsICZk
ZW5hbGlfcGh5WzY3Ml0pOwo+ICsJCXdyaXRlbCgoMHgzMDAgPDwgOCkgfCByZWdfdmFsdWUsICZk
ZW5hbGlfcGh5WzgwMF0pOwo+ICsJfSBlbHNlIHsKPiArCQljbHJzZXRiaXRzX2xlMzIoJmRlbmFs
aV9waHlbNTQ0XSwgMHhmZiwgcmVnX3ZhbHVlKTsKPiArCQljbHJzZXRiaXRzX2xlMzIoJmRlbmFs
aV9waHlbNjcyXSwgMHhmZiwgcmVnX3ZhbHVlKTsKPiArCQljbHJzZXRiaXRzX2xlMzIoJmRlbmFs
aV9waHlbODAwXSwgMHhmZiwgcmVnX3ZhbHVlKTsKPiArCX0KPiAgIAo+ICAgCS8qIHBoeV9wYWRf
YWRkcl9kcml2ZSA4Yml0cyBERU5BTElfUEhZXzkyOCBvZmZzZXRfMCAqLwo+ICAgCWNscnNldGJp
dHNfbGUzMigmZGVuYWxpX3BoeVs5MjhdLCAweGZmLCByZWdfdmFsdWUpOwoKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
