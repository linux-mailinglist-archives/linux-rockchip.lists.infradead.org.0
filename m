Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F636A91E
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 15:04:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mCdyGVtCsj3UHw8CQzFbrlwukD5YKbCAdbjzVDWaKcM=; b=rDJ9Yc0H+xstmZ+D6TLWEy333
	j423fBCPsW1L5NKSdRXdpWP7aa19CgR+2HFceT+g/gq9T7lWrVUwquKzvD2K7v6c0KNpOYA17bOe1
	AHRa7z/uyYDk3lO3SVXt925vyMUWjCrgnGZcI1o+e33sT3XVDZgxVKHRvNzrxepEJvnvt0khIyrWx
	B18Jy+UZrdhjLymVQ1mDOQ94eU3qgPUzQtqgRthmKLlWofjYoYDpxnTQs6VC/0+ecniV/QvMRH93t
	E+FXPlSUyDo2mk6hS6NFTAzcjM+H1fA8ovaU+xakD8LrVeVm/FuPhqDdoBPHP5qHr/WrnZHFG91/4
	Xn6ZdOXyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnN7e-0006Ys-Om; Tue, 16 Jul 2019 13:03:58 +0000
Received: from regular1.263xmail.com ([211.150.70.205])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnN7b-0006X9-5v
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 13:03:56 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.103])
 by regular1.263xmail.com (Postfix) with ESMTP id 9B9BD3A8;
 Tue, 16 Jul 2019 21:03:51 +0800 (CST)
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
 P8795T139710938720000S1563282223487640_; 
 Tue, 16 Jul 2019 21:03:50 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <6f050ff909039a0a7e1a4ae7ad6e0e66>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 10/57] ram: rk3399: Add cs1_rw macro
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-11-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <8c6bbfea-2956-e03d-3304-1ee94a3f7ceb@rock-chips.com>
Date: Tue, 16 Jul 2019 21:03:44 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-11-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_060355_423040_242B0B2C 
X-CRM114-Status: GOOD (  11.97  )
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

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU2LCBKYWdhbiBUZWtpIHdyb3RlOgo+IEFkZCBzaW1wbGlm
aWVkIGFuZCBtZWFuaW5nZnVsIG1hY3JvIGZvciBjczFfcncuCj4KPiBTaWduZWQtb2ZmLWJ5OiBK
YWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBZ
b3VNaW4gQ2hlbiA8Y3ltQHJvY2stY2hpcHMuY29tPgoKUmV2aWV3ZWQtYnk6IEtldmVyIFlhbmcg
PEtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+CgpUaGFua3MsCiDCoC0gS2V2ZXIKPiAtLS0KPiAg
IGFyY2gvYXJtL2luY2x1ZGUvYXNtL2FyY2gtcm9ja2NoaXAvc2RyYW1fY29tbW9uLmggfCAyICsr
Cj4gICBkcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYyAgICAgICAgICAgICAgIHwg
MyArLS0KPiAgIDIgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygt
KQo+Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2luY2x1ZGUvYXNtL2FyY2gtcm9ja2NoaXAvc2Ry
YW1fY29tbW9uLmggYi9hcmNoL2FybS9pbmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL3NkcmFtX2Nv
bW1vbi5oCj4gaW5kZXggYWQ5NzI2YTU3Yy4uNTc4ZGI5MDI0MSAxMDA2NDQKPiAtLS0gYS9hcmNo
L2FybS9pbmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL3NkcmFtX2NvbW1vbi5oCj4gKysrIGIvYXJj
aC9hcm0vaW5jbHVkZS9hc20vYXJjaC1yb2NrY2hpcC9zZHJhbV9jb21tb24uaAo+IEBAIC05NCw2
ICs5NCw4IEBAIHN0cnVjdCBzZHJhbV9iYXNlX3BhcmFtcyB7Cj4gICAJCQkJCVNZU19SRUdfQ1Mw
X1JPV19TSElGVChjaCkpCj4gICAjZGVmaW5lIFNZU19SRUdfQ1MxX1JPV19TSElGVChjaCkJKDQg
KyAoY2gpICogMTYpCj4gICAjZGVmaW5lIFNZU19SRUdfQ1MxX1JPV19NQVNLCQkzCj4gKyNkZWZp
bmUgU1lTX1JFR19FTkNfQ1MxX1JPVyhuLCBjaCkJKCgobikgLSAxMykgPDwgXAo+ICsJCQkJCVNZ
U19SRUdfQ1MxX1JPV19TSElGVChjaCkpCj4gICAjZGVmaW5lIFNZU19SRUdfQldfU0hJRlQoY2gp
CQkoMiArIChjaCkgKiAxNikKPiAgICNkZWZpbmUgU1lTX1JFR19CV19NQVNLCQkJMwo+ICAgI2Rl
ZmluZSBTWVNfUkVHX0RCV19TSElGVChjaCkJCSgoY2gpICogMTYpCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jIGIvZHJpdmVycy9yYW0vcm9ja2NoaXAv
c2RyYW1fcmszMzk5LmMKPiBpbmRleCA0M2NmNTk3ODI4Li5hODM3MDlmMjcxIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jCj4gKysrIGIvZHJpdmVycy9y
YW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMKPiBAQCAtMTA5NSw4ICsxMDk1LDcgQEAgc3RhdGlj
IHZvaWQgZHJhbV9hbGxfY29uZmlnKHN0cnVjdCBkcmFtX2luZm8gKmRyYW0sCj4gICAJCXN5c19y
ZWcgfD0gU1lTX1JFR19FTkNfQ09MKGluZm8tPmNhcF9pbmZvLmNvbCwgY2hhbm5lbCk7Cj4gICAJ
CXN5c19yZWcgfD0gU1lTX1JFR19FTkNfQksoaW5mby0+Y2FwX2luZm8uYmssIGNoYW5uZWwpOwo+
ICAgCQlzeXNfcmVnIHw9IFNZU19SRUdfRU5DX0NTMF9ST1coaW5mby0+Y2FwX2luZm8uY3MwX3Jv
dywgY2hhbm5lbCk7Cj4gLQkJc3lzX3JlZyB8PSAoaW5mby0+Y2FwX2luZm8uY3MxX3JvdyAtIDEz
KSA8PAo+IC0JCQkgICAgU1lTX1JFR19DUzFfUk9XX1NISUZUKGNoYW5uZWwpOwo+ICsJCXN5c19y
ZWcgfD0gU1lTX1JFR19FTkNfQ1MxX1JPVyhpbmZvLT5jYXBfaW5mby5jczFfcm93LCBjaGFubmVs
KTsKPiAgIAkJc3lzX3JlZyB8PSAoMiA+PiBpbmZvLT5jYXBfaW5mby5idykgPDwKPiAgIAkJCSAg
IFNZU19SRUdfQldfU0hJRlQoY2hhbm5lbCk7Cj4gICAJCXN5c19yZWcgfD0gU1lTX1JFR19FTkNf
REJXKGluZm8tPmNhcF9pbmZvLmRidywgY2hhbm5lbCk7CgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
