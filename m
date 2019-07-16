Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6AA66A90C
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 15:00:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bl4vcbIPD5qYBHcukxHTcSG+sodSnCyawr0xu2WEhns=; b=GMAQkvIeHNdn+OqW4vzzqeG+I
	9FQnaCipH+iqDsglCNcJYQq3AzRjavEW40QyiwddI54kuHDaUykqdyS/3DFbGiwHwxPcY0ISugifG
	67VGhwXO8CEQJPg3WdUJaLogzNtGS3ZwSyJk9geZEv9neYlI/mbYqaKkvLgiTC7NHZv+0EmUYAxyS
	w4OQQd6PL7H0MMaWVO63xE8WIhUm4Va37N4jsKEzqr15oAlcfaj7HMyOsa/kcIM62boEGFWaTWhTQ
	ToWt70xAcGwaL80pURFzg+zIJcI7/rJMJHB8WOI4M58u6tZ59CiA4ek3IT0frPRFDdOFXhw8oQoQl
	FlN/oGgAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnN47-0005nC-BX; Tue, 16 Jul 2019 13:00:19 +0000
Received: from regular1.263xmail.com ([211.150.70.198])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnN44-0005mf-0b
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 13:00:17 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.252])
 by regular1.263xmail.com (Postfix) with ESMTP id 9BFE7230;
 Tue, 16 Jul 2019 21:00:12 +0800 (CST)
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
 P29801T140086387664640S1563282008825670_; 
 Tue, 16 Jul 2019 21:00:10 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <0d59855590035b6a87d7e1d0d67c3a68>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 07/57] ram: rk3399: Add bk enc macro
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-8-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <ec93968c-b283-a6d8-23f8-0f4115094904@rock-chips.com>
Date: Tue, 16 Jul 2019 21:00:10 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-8-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_060016_254417_DA57C382 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.198 listed in list.dnswl.org]
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

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU2LCBKYWdhbiBUZWtpIHdyb3RlOgo+IEFkZCBzaW1wbGlm
aWVkIGFuZCBtZWFuaW5nZnVsIG1hY3JvIGZvciBiay4KPgo+IFNpZ25lZC1vZmYtYnk6IEphZ2Fu
IFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFlvdU1p
biBDaGVuIDxjeW1Acm9jay1jaGlwcy5jb20+CgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8S2V2
ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKIMKgLSBLZXZlcgo+IC0tLQo+ICAgYXJj
aC9hcm0vaW5jbHVkZS9hc20vYXJjaC1yb2NrY2hpcC9zZHJhbV9jb21tb24uaCB8IDIgKysKPiAg
IGRyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jICAgICAgICAgICAgICAgfCAzICst
LQo+ICAgMiBmaWxlcyBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4K
PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vaW5jbHVkZS9hc20vYXJjaC1yb2NrY2hpcC9zZHJhbV9j
b21tb24uaCBiL2FyY2gvYXJtL2luY2x1ZGUvYXNtL2FyY2gtcm9ja2NoaXAvc2RyYW1fY29tbW9u
LmgKPiBpbmRleCBlN2YxNWE3Y2Y5Li43MTA2MmUzZTcxIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJt
L2luY2x1ZGUvYXNtL2FyY2gtcm9ja2NoaXAvc2RyYW1fY29tbW9uLmgKPiArKysgYi9hcmNoL2Fy
bS9pbmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL3NkcmFtX2NvbW1vbi5oCj4gQEAgLTg2LDYgKzg2
LDggQEAgc3RydWN0IHNkcmFtX2Jhc2VfcGFyYW1zIHsKPiAgICNkZWZpbmUgU1lTX1JFR19FTkNf
Q09MKG4sIGNoKQkJKCgobikgLSA5KSA8PCBTWVNfUkVHX0NPTF9TSElGVChjaCkpCj4gICAjZGVm
aW5lIFNZU19SRUdfQktfU0hJRlQoY2gpCQkoOCArIChjaCkgKiAxNikKPiAgICNkZWZpbmUgU1lT
X1JFR19CS19NQVNLCQkJMQo+ICsjZGVmaW5lIFNZU19SRUdfRU5DX0JLKG4sIGNoKQkJKCgobikg
PT0gMyA/IDAgOiAxKSA8PCBcCj4gKwkJCQkJU1lTX1JFR19CS19TSElGVChjaCkpCj4gICAjZGVm
aW5lIFNZU19SRUdfQ1MwX1JPV19TSElGVChjaCkJKDYgKyAoY2gpICogMTYpCj4gICAjZGVmaW5l
IFNZU19SRUdfQ1MwX1JPV19NQVNLCQkzCj4gICAjZGVmaW5lIFNZU19SRUdfQ1MxX1JPV19TSElG
VChjaCkJKDQgKyAoY2gpICogMTYpCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcmFtL3JvY2tjaGlw
L3NkcmFtX3JrMzM5OS5jIGIvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMKPiBp
bmRleCBmNmE4M2YyYWNmLi5iOTNhNmM2YzQ0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcmFtL3Jv
Y2tjaGlwL3NkcmFtX3JrMzM5OS5jCj4gKysrIGIvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1f
cmszMzk5LmMKPiBAQCAtMTA5Myw4ICsxMDkzLDcgQEAgc3RhdGljIHZvaWQgZHJhbV9hbGxfY29u
ZmlnKHN0cnVjdCBkcmFtX2luZm8gKmRyYW0sCj4gICAJCXN5c19yZWcgfD0gU1lTX1JFR19FTkNf
Q0hJTkZPKGNoYW5uZWwpOwo+ICAgCQlzeXNfcmVnIHw9IFNZU19SRUdfRU5DX1JBTksoaW5mby0+
Y2FwX2luZm8ucmFuaywgY2hhbm5lbCk7Cj4gICAJCXN5c19yZWcgfD0gU1lTX1JFR19FTkNfQ09M
KGluZm8tPmNhcF9pbmZvLmNvbCwgY2hhbm5lbCk7Cj4gLQkJc3lzX3JlZyB8PSBpbmZvLT5jYXBf
aW5mby5iayA9PSAzID8gMCA6IDEgPDwKPiAtCQkJICAgU1lTX1JFR19CS19TSElGVChjaGFubmVs
KTsKPiArCQlzeXNfcmVnIHw9IFNZU19SRUdfRU5DX0JLKGluZm8tPmNhcF9pbmZvLmJrLCBjaGFu
bmVsKTsKPiAgIAkJc3lzX3JlZyB8PSAoaW5mby0+Y2FwX2luZm8uY3MwX3JvdyAtIDEzKSA8PAo+
ICAgCQkJICAgIFNZU19SRUdfQ1MwX1JPV19TSElGVChjaGFubmVsKTsKPiAgIAkJc3lzX3JlZyB8
PSAoaW5mby0+Y2FwX2luZm8uY3MxX3JvdyAtIDEzKSA8PAoKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
