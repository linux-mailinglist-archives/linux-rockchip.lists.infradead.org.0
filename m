Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7ADC6A903
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:59:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VaLdZNgtVtTstCAvoX+gUag+Tua692W9xNuYMHZBoRA=; b=QNywK3+vLt7pAvCXQGDgtHvry
	7ejf87+JYjhkIN/Amh2/OAorF036z24Us2aTmfCgf1thDwWMQ0P5Luz/++bTP+Hp3DSs8Ddu1+Tbo
	+IppQnuN2EkY5Yg3QYxVj+25/s7TWwiATsV+DUaK7H6UljB659U882WZvv7J1eEurrqKvuwtFQJ1K
	V0Ym/bOq3q+2e0Cg2RDri12lzQ6+/HoPyD+Yqt6V9x7EE5Humpk1PLrt+56Cb4qEPvUG5msbyhVez
	DA2eA7tfjOsQrEex7EdaQqtXlDy1Qvpbbq15xIB2qTJkTr3W67Mj873Ycux3vvfl5tgAqQankSGoZ
	P+S3QPV3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnN2p-0004LT-Pn; Tue, 16 Jul 2019 12:58:59 +0000
Received: from regular1.263xmail.com ([211.150.70.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnN2m-0004JV-76
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 12:58:57 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.252])
 by regular1.263xmail.com (Postfix) with ESMTP id B56C28F0;
 Tue, 16 Jul 2019 20:58:52 +0800 (CST)
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
 P29801T140087764174592S1563281929365675_; 
 Tue, 16 Jul 2019 20:58:50 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <165ff29c2cce50eca6542c70aa1516fe>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 05/57] ram: rk3399: Add rank enc macro
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-6-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <35e73ae2-8e09-7cc0-60ad-80185ce78293@rock-chips.com>
Date: Tue, 16 Jul 2019 20:58:50 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-6-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_055856_470661_6525BA80 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.195 listed in list.dnswl.org]
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
aWVkIGFuZCBtZWFuaW5nZnVsIG1hY3JvIGZvciByYW5rLgo+Cj4gU2lnbmVkLW9mZi1ieTogSmFn
YW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+Cj4gU2lnbmVkLW9mZi1ieTogWW91
TWluIENoZW4gPGN5bUByb2NrLWNoaXBzLmNvbT4KClJldmlld2VkLWJ5OiBLZXZlciBZYW5nIDxL
ZXZlci55YW5nQHJvY2stY2hpcHMuY29tPgoKVGhhbmtzLAogwqAtIEtldmVyCj4gLS0tCj4gICBh
cmNoL2FybS9pbmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL3NkcmFtX2NvbW1vbi5oIHwgMiArKwo+
ICAgZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMgICAgICAgICAgICAgICB8IDMg
Ky0tCj4gICAyIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkK
Pgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9pbmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL3NkcmFt
X2NvbW1vbi5oIGIvYXJjaC9hcm0vaW5jbHVkZS9hc20vYXJjaC1yb2NrY2hpcC9zZHJhbV9jb21t
b24uaAo+IGluZGV4IDJkMGJlOTIwZDkuLmRiOWUzMDEyNmYgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9h
cm0vaW5jbHVkZS9hc20vYXJjaC1yb2NrY2hpcC9zZHJhbV9jb21tb24uaAo+ICsrKyBiL2FyY2gv
YXJtL2luY2x1ZGUvYXNtL2FyY2gtcm9ja2NoaXAvc2RyYW1fY29tbW9uLmgKPiBAQCAtNzksNiAr
NzksOCBAQCBzdHJ1Y3Qgc2RyYW1fYmFzZV9wYXJhbXMgewo+ICAgCQkJCQlTWVNfUkVHX05VTV9D
SF9TSElGVCkKPiAgICNkZWZpbmUgU1lTX1JFR19SQU5LX1NISUZUKGNoKQkJKDExICsgKGNoKSAq
IDE2KQo+ICAgI2RlZmluZSBTWVNfUkVHX1JBTktfTUFTSwkJMQo+ICsjZGVmaW5lIFNZU19SRUdf
RU5DX1JBTksobiwgY2gpCQkoKChuKSAtIFNZU19SRUdfUkFOS19NQVNLKSA8PCBcCj4gKwkJCQkJ
IFNZU19SRUdfUkFOS19TSElGVChjaCkpCj4gICAjZGVmaW5lIFNZU19SRUdfQ09MX1NISUZUKGNo
KQkJKDkgKyAoY2gpICogMTYpCj4gICAjZGVmaW5lIFNZU19SRUdfQ09MX01BU0sJCTMKPiAgICNk
ZWZpbmUgU1lTX1JFR19CS19TSElGVChjaCkJCSg4ICsgKGNoKSAqIDE2KQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYyBiL2RyaXZlcnMvcmFtL3JvY2tj
aGlwL3NkcmFtX3JrMzM5OS5jCj4gaW5kZXggODc0ZTg5NjM2OS4uYzIzOTBhNzcxYyAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYwo+ICsrKyBiL2RyaXZl
cnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jCj4gQEAgLTEwOTEsOCArMTA5MSw3IEBAIHN0
YXRpYyB2b2lkIGRyYW1fYWxsX2NvbmZpZyhzdHJ1Y3QgZHJhbV9pbmZvICpkcmFtLAo+ICAgCQlp
ZHgrKzsKPiAgIAkJc3lzX3JlZyB8PSBTWVNfUkVHX0VOQ19ST1dfM180KGluZm8tPmNhcF9pbmZv
LnJvd18zXzQsIGNoYW5uZWwpOwo+ICAgCQlzeXNfcmVnIHw9IFNZU19SRUdfRU5DX0NISU5GTyhj
aGFubmVsKTsKPiAtCQlzeXNfcmVnIHw9IChpbmZvLT5jYXBfaW5mby5yYW5rIC0gMSkgPDwKPiAt
CQkJICAgU1lTX1JFR19SQU5LX1NISUZUKGNoYW5uZWwpOwo+ICsJCXN5c19yZWcgfD0gU1lTX1JF
R19FTkNfUkFOSyhpbmZvLT5jYXBfaW5mby5yYW5rLCBjaGFubmVsKTsKPiAgIAkJc3lzX3JlZyB8
PSAoaW5mby0+Y2FwX2luZm8uY29sIC0gOSkgPDwKPiAgIAkJCSAgIFNZU19SRUdfQ09MX1NISUZU
KGNoYW5uZWwpOwo+ICAgCQlzeXNfcmVnIHw9IGluZm8tPmNhcF9pbmZvLmJrID09IDMgPyAwIDog
MSA8PAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
