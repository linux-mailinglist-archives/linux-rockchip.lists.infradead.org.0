Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CECDC6A90E
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 15:01:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9UDqewv6aXO6ureitTtpi+wiDo4kUGJuGdwGsps/f0E=; b=YRC+TcVtfWXS1mJNiIowQkRII
	uu8zA9bcvYfsZSctj3z8DZ8bdvklQT1+K07E14HQnn9P4CguG7ISpYDsoCXwY+lHdnbiFEWg2lXm0
	99gkyTdSZCUBMhV3mXkzlj5ZqnCBQ2xZDjLq6KSWUVPQ6juDnodyrMn3F9VaSYFjpxSUdo7J1/Fg5
	9S2/4dX0C8JjZqHu9rv726VvodOp3BOZldMEJX2q8bxAnVWOzh1kYa1+jW7Y3Gagz+Tv9A1GfKbIa
	TK1pDlNcmgQyTQy0gzAUP9f4nVnlBt7ZYBqp8PsNHA2xlNwYiqCHClKZ7ZLTNKRRWO2RytvSe2/Ml
	3wRF/Zb+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnN4l-000654-TR; Tue, 16 Jul 2019 13:00:59 +0000
Received: from regular1.263xmail.com ([211.150.70.203])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnN4h-00064h-Mb
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 13:00:57 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.252])
 by regular1.263xmail.com (Postfix) with ESMTP id 307B322C;
 Tue, 16 Jul 2019 21:00:53 +0800 (CST)
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
 P29801T140087774664448S1563282049669781_; 
 Tue, 16 Jul 2019 21:00:50 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <15c0f7475a140ac7d557b367cab37653>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 09/57] ram: rk3399: Add cs0_rw macro
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-10-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <1ba3f162-25a6-f884-0d42-43756a0f54bf@rock-chips.com>
Date: Tue, 16 Jul 2019 21:00:51 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-10-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_060055_942550_124797F2 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.203 listed in list.dnswl.org]
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
aWVkIGFuZCBtZWFuaW5nZnVsIG1hY3JvIGZvciBjczBfcncuCj4KPiBTaWduZWQtb2ZmLWJ5OiBK
YWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBZ
b3VNaW4gQ2hlbiA8Y3ltQHJvY2stY2hpcHMuY29tPgoKUmV2aWV3ZWQtYnk6IEtldmVyIFlhbmcg
PEtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+CgpUaGFua3MsCiDCoC0gS2V2ZXIKPiAtLS0KPiAg
IGFyY2gvYXJtL2luY2x1ZGUvYXNtL2FyY2gtcm9ja2NoaXAvc2RyYW1fY29tbW9uLmggfCAyICsr
Cj4gICBkcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYyAgICAgICAgICAgICAgIHwg
MyArLS0KPiAgIDIgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygt
KQo+Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2luY2x1ZGUvYXNtL2FyY2gtcm9ja2NoaXAvc2Ry
YW1fY29tbW9uLmggYi9hcmNoL2FybS9pbmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL3NkcmFtX2Nv
bW1vbi5oCj4gaW5kZXggMzM4ZjQwNDNlMS4uYWQ5NzI2YTU3YyAxMDA2NDQKPiAtLS0gYS9hcmNo
L2FybS9pbmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL3NkcmFtX2NvbW1vbi5oCj4gKysrIGIvYXJj
aC9hcm0vaW5jbHVkZS9hc20vYXJjaC1yb2NrY2hpcC9zZHJhbV9jb21tb24uaAo+IEBAIC05MCw2
ICs5MCw4IEBAIHN0cnVjdCBzZHJhbV9iYXNlX3BhcmFtcyB7Cj4gICAJCQkJCVNZU19SRUdfQktf
U0hJRlQoY2gpKQo+ICAgI2RlZmluZSBTWVNfUkVHX0NTMF9ST1dfU0hJRlQoY2gpCSg2ICsgKGNo
KSAqIDE2KQo+ICAgI2RlZmluZSBTWVNfUkVHX0NTMF9ST1dfTUFTSwkJMwo+ICsjZGVmaW5lIFNZ
U19SRUdfRU5DX0NTMF9ST1cobiwgY2gpCSgoKG4pIC0gMTMpIDw8IFwKPiArCQkJCQlTWVNfUkVH
X0NTMF9ST1dfU0hJRlQoY2gpKQo+ICAgI2RlZmluZSBTWVNfUkVHX0NTMV9ST1dfU0hJRlQoY2gp
CSg0ICsgKGNoKSAqIDE2KQo+ICAgI2RlZmluZSBTWVNfUkVHX0NTMV9ST1dfTUFTSwkJMwo+ICAg
I2RlZmluZSBTWVNfUkVHX0JXX1NISUZUKGNoKQkJKDIgKyAoY2gpICogMTYpCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jIGIvZHJpdmVycy9yYW0vcm9j
a2NoaXAvc2RyYW1fcmszMzk5LmMKPiBpbmRleCBiOTk0MTM0ZmRiLi40M2NmNTk3ODI4IDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jCj4gKysrIGIvZHJp
dmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMKPiBAQCAtMTA5NCw4ICsxMDk0LDcgQEAg
c3RhdGljIHZvaWQgZHJhbV9hbGxfY29uZmlnKHN0cnVjdCBkcmFtX2luZm8gKmRyYW0sCj4gICAJ
CXN5c19yZWcgfD0gU1lTX1JFR19FTkNfUkFOSyhpbmZvLT5jYXBfaW5mby5yYW5rLCBjaGFubmVs
KTsKPiAgIAkJc3lzX3JlZyB8PSBTWVNfUkVHX0VOQ19DT0woaW5mby0+Y2FwX2luZm8uY29sLCBj
aGFubmVsKTsKPiAgIAkJc3lzX3JlZyB8PSBTWVNfUkVHX0VOQ19CSyhpbmZvLT5jYXBfaW5mby5i
aywgY2hhbm5lbCk7Cj4gLQkJc3lzX3JlZyB8PSAoaW5mby0+Y2FwX2luZm8uY3MwX3JvdyAtIDEz
KSA8PAo+IC0JCQkgICAgU1lTX1JFR19DUzBfUk9XX1NISUZUKGNoYW5uZWwpOwo+ICsJCXN5c19y
ZWcgfD0gU1lTX1JFR19FTkNfQ1MwX1JPVyhpbmZvLT5jYXBfaW5mby5jczBfcm93LCBjaGFubmVs
KTsKPiAgIAkJc3lzX3JlZyB8PSAoaW5mby0+Y2FwX2luZm8uY3MxX3JvdyAtIDEzKSA8PAo+ICAg
CQkJICAgIFNZU19SRUdfQ1MxX1JPV19TSElGVChjaGFubmVsKTsKPiAgIAkJc3lzX3JlZyB8PSAo
MiA+PiBpbmZvLT5jYXBfaW5mby5idykgPDwKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
