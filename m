Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 582E06A908
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:59:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nK9dDmi7eOe1vddC0KWbfEWbHPjEYIXZfLG2/ErILTU=; b=r42qzh6W7uOv0rL23YyES9os9
	3IuvmttVMR8Gvh1YyJVnZ6c6hY6lRmwsMqYZ6J6NCgmD1sQjUN763YVQRaNoOjFYdoWG7GhPUkqEk
	MYKg9u5rV9wQCv7TSBM1vhrqOhUGmWcYXs1nsmKxwT/odoTQPk5tcJkya0LwFtM2WqcPBdMBLigW0
	3SpL80o2wEfSr2t0dQiNBppJfRofmfyE97kwPPT2anZ3cjYGTBKcfxJEOCBmNFTUKB5sZU2jFn9Ow
	CZqD5RcyYsZpG6jKi+safWazTCu7fL+b/tB64kixk0+Mef0cVF35PtQE2URPoiQleAD4s3f63EXMl
	rOJX2VKNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnN3B-0004Oy-H0; Tue, 16 Jul 2019 12:59:21 +0000
Received: from regular1.263xmail.com ([211.150.70.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnN38-0004OH-H5
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 12:59:19 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.252])
 by regular1.263xmail.com (Postfix) with ESMTP id 224325D2;
 Tue, 16 Jul 2019 20:59:15 +0800 (CST)
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
 P29801T140087785154304S1563281951491067_; 
 Tue, 16 Jul 2019 20:59:12 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <b0ecb38b65559bfd3a4b14664d1b530b>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 06/57] ram: rk3399: Add column enc macro
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-7-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <ce00c881-bd6b-e455-628f-6f054f7a572f@rock-chips.com>
Date: Tue, 16 Jul 2019 20:59:13 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-7-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_055918_785536_C0F82CBB 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.197 listed in list.dnswl.org]
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
aWVkIGFuZCBtZWFuaW5nZnVsIG1hY3JvIGZvciBjb2x1bW4uCj4KPiBTaWduZWQtb2ZmLWJ5OiBK
YWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBZ
b3VNaW4gQ2hlbiA8Y3ltQHJvY2stY2hpcHMuY29tPgoKUmV2aWV3ZWQtYnk6IEtldmVyIFlhbmcg
PEtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+CgpUaGFua3MsCiDCoC0gS2V2ZXIKPiAtLS0KPiAg
IGFyY2gvYXJtL2luY2x1ZGUvYXNtL2FyY2gtcm9ja2NoaXAvc2RyYW1fY29tbW9uLmggfCAxICsK
PiAgIGRyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jICAgICAgICAgICAgICAgfCAz
ICstLQo+ICAgMiBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0p
Cj4KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vaW5jbHVkZS9hc20vYXJjaC1yb2NrY2hpcC9zZHJh
bV9jb21tb24uaCBiL2FyY2gvYXJtL2luY2x1ZGUvYXNtL2FyY2gtcm9ja2NoaXAvc2RyYW1fY29t
bW9uLmgKPiBpbmRleCBkYjllMzAxMjZmLi5lN2YxNWE3Y2Y5IDEwMDY0NAo+IC0tLSBhL2FyY2gv
YXJtL2luY2x1ZGUvYXNtL2FyY2gtcm9ja2NoaXAvc2RyYW1fY29tbW9uLmgKPiArKysgYi9hcmNo
L2FybS9pbmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL3NkcmFtX2NvbW1vbi5oCj4gQEAgLTgzLDYg
KzgzLDcgQEAgc3RydWN0IHNkcmFtX2Jhc2VfcGFyYW1zIHsKPiAgIAkJCQkJIFNZU19SRUdfUkFO
S19TSElGVChjaCkpCj4gICAjZGVmaW5lIFNZU19SRUdfQ09MX1NISUZUKGNoKQkJKDkgKyAoY2gp
ICogMTYpCj4gICAjZGVmaW5lIFNZU19SRUdfQ09MX01BU0sJCTMKPiArI2RlZmluZSBTWVNfUkVH
X0VOQ19DT0wobiwgY2gpCQkoKChuKSAtIDkpIDw8IFNZU19SRUdfQ09MX1NISUZUKGNoKSkKPiAg
ICNkZWZpbmUgU1lTX1JFR19CS19TSElGVChjaCkJCSg4ICsgKGNoKSAqIDE2KQo+ICAgI2RlZmlu
ZSBTWVNfUkVHX0JLX01BU0sJCQkxCj4gICAjZGVmaW5lIFNZU19SRUdfQ1MwX1JPV19TSElGVChj
aCkJKDYgKyAoY2gpICogMTYpCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3Nk
cmFtX3JrMzM5OS5jIGIvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMKPiBpbmRl
eCBjMjM5MGE3NzFjLi5mNmE4M2YyYWNmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcmFtL3JvY2tj
aGlwL3NkcmFtX3JrMzM5OS5jCj4gKysrIGIvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmsz
Mzk5LmMKPiBAQCAtMTA5Miw4ICsxMDkyLDcgQEAgc3RhdGljIHZvaWQgZHJhbV9hbGxfY29uZmln
KHN0cnVjdCBkcmFtX2luZm8gKmRyYW0sCj4gICAJCXN5c19yZWcgfD0gU1lTX1JFR19FTkNfUk9X
XzNfNChpbmZvLT5jYXBfaW5mby5yb3dfM180LCBjaGFubmVsKTsKPiAgIAkJc3lzX3JlZyB8PSBT
WVNfUkVHX0VOQ19DSElORk8oY2hhbm5lbCk7Cj4gICAJCXN5c19yZWcgfD0gU1lTX1JFR19FTkNf
UkFOSyhpbmZvLT5jYXBfaW5mby5yYW5rLCBjaGFubmVsKTsKPiAtCQlzeXNfcmVnIHw9IChpbmZv
LT5jYXBfaW5mby5jb2wgLSA5KSA8PAo+IC0JCQkgICBTWVNfUkVHX0NPTF9TSElGVChjaGFubmVs
KTsKPiArCQlzeXNfcmVnIHw9IFNZU19SRUdfRU5DX0NPTChpbmZvLT5jYXBfaW5mby5jb2wsIGNo
YW5uZWwpOwo+ICAgCQlzeXNfcmVnIHw9IGluZm8tPmNhcF9pbmZvLmJrID09IDMgPyAwIDogMSA8
PAo+ICAgCQkJICAgU1lTX1JFR19CS19TSElGVChjaGFubmVsKTsKPiAgIAkJc3lzX3JlZyB8PSAo
aW5mby0+Y2FwX2luZm8uY3MwX3JvdyAtIDEzKSA8PAoKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
