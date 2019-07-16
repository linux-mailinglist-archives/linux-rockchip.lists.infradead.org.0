Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B7C6A900
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:58:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bZKv8LoOpWXmdS7S1DLzvdjrp8dufwSqAuY1R9ZPAN8=; b=CesmrPYgRZnbO+6Og/XD8rvon
	hYQGNMa50eiuFdI/fTfF/PKWGlXS5nC/KDZ16+NwcXj8tRYu9zjIGNZ+bTgICHeH6hJ0W5ldZJ/jm
	dKf/uAp3G7EU6WQqoJiTZ+YnjMbRqN08O+jytNTwmNKIYZ/Zj3RED8Hd/ANz/rOAyceO120g29WQM
	MxhDNy2ME2UtPzSoS20ox+epH42or8M5ZzocApHGeyJIM/Icl/JSZfMXABreggLlVtiU3KQhvzdLk
	EeFgtiTnDdO9PCHI0/66J9goajmWkvvPlvK/LQxkMy3z+OQhk0Us5+Ko7tjInc02VBoj+OvpRAc/H
	94Oa9gmHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnN2j-0004J6-R8; Tue, 16 Jul 2019 12:58:53 +0000
Received: from regular1.263xmail.com ([211.150.70.200])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnN2f-0004Ia-Og
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 12:58:51 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.103])
 by regular1.263xmail.com (Postfix) with ESMTP id 0294C34D;
 Tue, 16 Jul 2019 20:58:48 +0800 (CST)
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
 P8795T139711083427584S1563281917381318_; 
 Tue, 16 Jul 2019 20:58:45 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <b2c0041ece886eb1925e020d82e1764a>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 04/57] ram: rk3399: Add chipinfo macro
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-5-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <2a809e63-cd22-537d-4486-0ca226addea8@rock-chips.com>
Date: Tue, 16 Jul 2019 20:58:38 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-5-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_055849_997957_EF8E20DD 
X-CRM114-Status: GOOD (  12.11  )
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

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU2LCBKYWdhbiBUZWtpIHdyb3RlOgo+IEFkZCBzaW1wbGlm
aWVkIGFuZCBtZWFuaW5nZnVsIG1hY3JvIGZvciBjaGlwIGluZm8uCj4KPiBTaWduZWQtb2ZmLWJ5
OiBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KPiBTaWduZWQtb2ZmLWJ5
OiBZb3VNaW4gQ2hlbiA8Y3ltQHJvY2stY2hpcHMuY29tPgoKUmV2aWV3ZWQtYnk6IEtldmVyIFlh
bmcgPEtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+CgpUaGFua3MsCiDCoC0gS2V2ZXIKPiAtLS0K
PiAgIGFyY2gvYXJtL2luY2x1ZGUvYXNtL2FyY2gtcm9ja2NoaXAvc2RyYW1fY29tbW9uLmggfCAx
ICsKPiAgIGRyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jICAgICAgICAgICAgICAg
fCAyICstCj4gICAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigt
KQo+Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2luY2x1ZGUvYXNtL2FyY2gtcm9ja2NoaXAvc2Ry
YW1fY29tbW9uLmggYi9hcmNoL2FybS9pbmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL3NkcmFtX2Nv
bW1vbi5oCj4gaW5kZXggZTVhZjNlYWI3ZS4uMmQwYmU5MjBkOSAxMDA2NDQKPiAtLS0gYS9hcmNo
L2FybS9pbmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL3NkcmFtX2NvbW1vbi5oCj4gKysrIGIvYXJj
aC9hcm0vaW5jbHVkZS9hc20vYXJjaC1yb2NrY2hpcC9zZHJhbV9jb21tb24uaAo+IEBAIC03Myw2
ICs3Myw3IEBAIHN0cnVjdCBzZHJhbV9iYXNlX3BhcmFtcyB7Cj4gICAjZGVmaW5lIFNZU19SRUdf
Uk9XXzNfNF9NQVNLCQkxCj4gICAjZGVmaW5lIFNZU19SRUdfRU5DX1JPV18zXzQobiwgY2gpCSgo
bikgPDwgKDMwICsgKGNoKSkpCj4gICAjZGVmaW5lIFNZU19SRUdfQ0hJTkZPX1NISUZUKGNoKQko
MjggKyAoY2gpKQo+ICsjZGVmaW5lIFNZU19SRUdfRU5DX0NISU5GTyhjaCkJCSgxIDw8IFNZU19S
RUdfQ0hJTkZPX1NISUZUKGNoKSkKPiAgICNkZWZpbmUgU1lTX1JFR19FTkNfRERSVFlQRShuKQkJ
KChuKSA8PCBTWVNfUkVHX0REUlRZUEVfU0hJRlQpCj4gICAjZGVmaW5lIFNZU19SRUdfRU5DX05V
TV9DSChuKQkJKCgobikgLSBTWVNfUkVHX05VTV9DSF9NQVNLKSA8PCBcCj4gICAJCQkJCVNZU19S
RUdfTlVNX0NIX1NISUZUKQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJh
bV9yazMzOTkuYyBiL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jCj4gaW5kZXgg
ZDk3ZWZiNjk5Ni4uODc0ZTg5NjM2OSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3JhbS9yb2NrY2hp
cC9zZHJhbV9yazMzOTkuYwo+ICsrKyBiL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5
OS5jCj4gQEAgLTEwOTAsNyArMTA5MCw3IEBAIHN0YXRpYyB2b2lkIGRyYW1fYWxsX2NvbmZpZyhz
dHJ1Y3QgZHJhbV9pbmZvICpkcmFtLAo+ICAgCQkJY29udGludWU7Cj4gICAJCWlkeCsrOwo+ICAg
CQlzeXNfcmVnIHw9IFNZU19SRUdfRU5DX1JPV18zXzQoaW5mby0+Y2FwX2luZm8ucm93XzNfNCwg
Y2hhbm5lbCk7Cj4gLQkJc3lzX3JlZyB8PSAxIDw8IFNZU19SRUdfQ0hJTkZPX1NISUZUKGNoYW5u
ZWwpOwo+ICsJCXN5c19yZWcgfD0gU1lTX1JFR19FTkNfQ0hJTkZPKGNoYW5uZWwpOwo+ICAgCQlz
eXNfcmVnIHw9IChpbmZvLT5jYXBfaW5mby5yYW5rIC0gMSkgPDwKPiAgIAkJCSAgIFNZU19SRUdf
UkFOS19TSElGVChjaGFubmVsKTsKPiAgIAkJc3lzX3JlZyB8PSAoaW5mby0+Y2FwX2luZm8uY29s
IC0gOSkgPDwKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
