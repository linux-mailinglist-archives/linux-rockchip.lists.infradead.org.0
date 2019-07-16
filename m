Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F64C6A90D
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 15:00:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hI6x4XqTpQlFWCWp5JMvvhE4vpfeS5LYHDDq1O2X1z0=; b=fp9Gw4mkHJjLb9Jd2ZEbucV07
	/TNPGBK23/HvKhOleuEuvxxmYqkbeXITa4dU/yBoWeRHjUTIySquirsOYZMKInxhJHxaSawrgvE37
	+va1/LJAgAnRmyNXEPVumrvmpt0N7JlA4kDWhFQKG2/17hUovPakjOUjsOrzyod2ly48eKeiqOf85
	cycikBfYRlZnBtNYdKVEuOhPl4iKH1brkl5Geordj3csSqoKbb0VHXA7adqQwoMON8bcZzDF/mC5n
	IVbon0SC1EoJTgARtATDZBDD0wWieYNxmJ6TERaQ7/LRPvXP2QF1mdoPAxHgTnw9yCFOlX5SyuQRe
	ML/vktogw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnN4I-0005pw-9t; Tue, 16 Jul 2019 13:00:30 +0000
Received: from regular1.263xmail.com ([211.150.70.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnN4D-0005pO-U6
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 13:00:27 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.252])
 by regular1.263xmail.com (Postfix) with ESMTP id D65055D2;
 Tue, 16 Jul 2019 21:00:23 +0800 (CST)
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
 P29801T140086377174784S1563282020278231_; 
 Tue, 16 Jul 2019 21:00:21 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <68059092e97d3e53bc7af93bd2e45541>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 08/57] ram: rk3399: Add dbw enc macro
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-9-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <4baf2b12-ed61-9665-e6ac-2ed6b7daa7f4@rock-chips.com>
Date: Tue, 16 Jul 2019 21:00:21 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-9-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_060026_318250_0339CFA3 
X-CRM114-Status: GOOD (  12.00  )
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
aWVkIGFuZCBtZWFuaW5nZnVsIG1hY3JvIGZvciBkYncuCj4KPiBTaWduZWQtb2ZmLWJ5OiBKYWdh
biBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBZb3VN
aW4gQ2hlbiA8Y3ltQHJvY2stY2hpcHMuY29tPgoKUmV2aWV3ZWQtYnk6IEtldmVyIFlhbmcgPEtl
dmVyLnlhbmdAcm9jay1jaGlwcy5jb20+CgpUaGFua3MsCiDCoC0gS2V2ZXIKPiAtLS0KPiAgIGFy
Y2gvYXJtL2luY2x1ZGUvYXNtL2FyY2gtcm9ja2NoaXAvc2RyYW1fY29tbW9uLmggfCAxICsKPiAg
IGRyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jICAgICAgICAgICAgICAgfCAzICst
LQo+ICAgMiBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4K
PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vaW5jbHVkZS9hc20vYXJjaC1yb2NrY2hpcC9zZHJhbV9j
b21tb24uaCBiL2FyY2gvYXJtL2luY2x1ZGUvYXNtL2FyY2gtcm9ja2NoaXAvc2RyYW1fY29tbW9u
LmgKPiBpbmRleCA3MTA2MmUzZTcxLi4zMzhmNDA0M2UxIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJt
L2luY2x1ZGUvYXNtL2FyY2gtcm9ja2NoaXAvc2RyYW1fY29tbW9uLmgKPiArKysgYi9hcmNoL2Fy
bS9pbmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL3NkcmFtX2NvbW1vbi5oCj4gQEAgLTk2LDYgKzk2
LDcgQEAgc3RydWN0IHNkcmFtX2Jhc2VfcGFyYW1zIHsKPiAgICNkZWZpbmUgU1lTX1JFR19CV19N
QVNLCQkJMwo+ICAgI2RlZmluZSBTWVNfUkVHX0RCV19TSElGVChjaCkJCSgoY2gpICogMTYpCj4g
ICAjZGVmaW5lIFNZU19SRUdfREJXX01BU0sJCTMKPiArI2RlZmluZSBTWVNfUkVHX0VOQ19EQlco
biwgY2gpCQkoKDIgPj4gKG4pKSA8PCBTWVNfUkVHX0RCV19TSElGVChjaCkpCj4gICAKPiAgIC8q
IEdldCBzZHJhbSBzaXplIGRlY29kZSBmcm9tIHJlZyAqLwo+ICAgc2l6ZV90IHJvY2tjaGlwX3Nk
cmFtX3NpemUocGh5c19hZGRyX3QgcmVnKTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9yYW0vcm9j
a2NoaXAvc2RyYW1fcmszMzk5LmMgYi9kcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTku
Ywo+IGluZGV4IGI5M2E2YzZjNDQuLmI5OTQxMzRmZGIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9y
YW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMKPiArKysgYi9kcml2ZXJzL3JhbS9yb2NrY2hpcC9z
ZHJhbV9yazMzOTkuYwo+IEBAIC0xMTAwLDggKzExMDAsNyBAQCBzdGF0aWMgdm9pZCBkcmFtX2Fs
bF9jb25maWcoc3RydWN0IGRyYW1faW5mbyAqZHJhbSwKPiAgIAkJCSAgICBTWVNfUkVHX0NTMV9S
T1dfU0hJRlQoY2hhbm5lbCk7Cj4gICAJCXN5c19yZWcgfD0gKDIgPj4gaW5mby0+Y2FwX2luZm8u
YncpIDw8Cj4gICAJCQkgICBTWVNfUkVHX0JXX1NISUZUKGNoYW5uZWwpOwo+IC0JCXN5c19yZWcg
fD0gKDIgPj4gaW5mby0+Y2FwX2luZm8uZGJ3KSA8PAo+IC0JCQkgICBTWVNfUkVHX0RCV19TSElG
VChjaGFubmVsKTsKPiArCQlzeXNfcmVnIHw9IFNZU19SRUdfRU5DX0RCVyhpbmZvLT5jYXBfaW5m
by5kYncsIGNoYW5uZWwpOwo+ICAgCj4gICAJCWRkcl9tc2NoX3JlZ3MgPSBkcmFtLT5jaGFuW2No
YW5uZWxdLm1zY2g7Cj4gICAJCW5vY190aW1pbmcgPSAmcGFyYW1zLT5jaFtjaGFubmVsXS5ub2Nf
dGltaW5nczsKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
