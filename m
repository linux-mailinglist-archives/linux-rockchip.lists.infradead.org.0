Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E7CF6A8FF
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:58:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tLQUvcWHIoOmV+M2BwbG1yyTjlgL++JVmhxCHOBn6vE=; b=Gx5dwyTEDILP+f4tF4grN2Vwm
	tTHRURZ4iHaNxoAiqv6X+GbGDWsfvwSEnP1YUCbN9DIsYczOde9rmnn8Rx3oCB0+co45GGMK97WaI
	8im7uILbVPUmzFPoV/R5lQVLF2P9SSzt4OlDsF1T71nfOMqaMX11BIzi+JqjU12KYDLBUoQApaloz
	Ci0UnuH7svMxK6NgV85F1jtmI80QiTlQZJSglkqgnd0iBHwLcyfkmdDtug+A0IOu4XTko6DdNDivb
	oJGjFPObVDPI946S/CG4zmqX1IRGTAXQbGQrx1NGjuduf0wnvtGdVmn/wuZsBPu9UpsCLZ+FAHSQc
	nIdZw0ZGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnN2X-0004GJ-3L; Tue, 16 Jul 2019 12:58:41 +0000
Received: from regular1.263xmail.com ([211.150.70.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnN2U-0004Fz-MC
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 12:58:40 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.252])
 by regular1.263xmail.com (Postfix) with ESMTP id 776A15DF;
 Tue, 16 Jul 2019 20:58:35 +0800 (CST)
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
 P29801T140087652243200S1563281904907744_; 
 Tue, 16 Jul 2019 20:58:33 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <8a1f77e427247b8e8c4a4306a070c2e9>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 03/57] ram: rk3399: Add row_3_4 enc macro
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-4-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <7a5658c3-c4f9-fba9-1a92-d99e4c8efe01@rock-chips.com>
Date: Tue, 16 Jul 2019 20:58:25 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-4-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_055838_936692_D71BD4BF 
X-CRM114-Status: GOOD (  12.52  )
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
aWVkIGFuZCBtZWFuaW5nZnVsIG1hY3JvIGZvciByb3dfM180Lgo+Cj4gU2lnbmVkLW9mZi1ieTog
SmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+Cj4gU2lnbmVkLW9mZi1ieTog
WW91TWluIENoZW4gPGN5bUByb2NrLWNoaXBzLmNvbT4KClJldmlld2VkLWJ5OiBLZXZlciBZYW5n
IDxLZXZlci55YW5nQHJvY2stY2hpcHMuY29tPgoKVGhhbmtzLAogwqAtIEtldmVyCj4gLS0tCj4g
ICBhcmNoL2FybS9pbmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL3NkcmFtX2NvbW1vbi5oIHwgMSAr
Cj4gICBkcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYyAgICAgICAgICAgICAgIHwg
MyArLS0KPiAgIDIgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygt
KQo+Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2luY2x1ZGUvYXNtL2FyY2gtcm9ja2NoaXAvc2Ry
YW1fY29tbW9uLmggYi9hcmNoL2FybS9pbmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL3NkcmFtX2Nv
bW1vbi5oCj4gaW5kZXggMDc2YWZlMmFlMy4uZTVhZjNlYWI3ZSAxMDA2NDQKPiAtLS0gYS9hcmNo
L2FybS9pbmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL3NkcmFtX2NvbW1vbi5oCj4gKysrIGIvYXJj
aC9hcm0vaW5jbHVkZS9hc20vYXJjaC1yb2NrY2hpcC9zZHJhbV9jb21tb24uaAo+IEBAIC03MSw2
ICs3MSw3IEBAIHN0cnVjdCBzZHJhbV9iYXNlX3BhcmFtcyB7Cj4gICAjZGVmaW5lIFNZU19SRUdf
TlVNX0NIX01BU0sJCTEKPiAgICNkZWZpbmUgU1lTX1JFR19ST1dfM180X1NISUZUKGNoKQkoMzAg
KyAoY2gpKQo+ICAgI2RlZmluZSBTWVNfUkVHX1JPV18zXzRfTUFTSwkJMQo+ICsjZGVmaW5lIFNZ
U19SRUdfRU5DX1JPV18zXzQobiwgY2gpCSgobikgPDwgKDMwICsgKGNoKSkpCj4gICAjZGVmaW5l
IFNZU19SRUdfQ0hJTkZPX1NISUZUKGNoKQkoMjggKyAoY2gpKQo+ICAgI2RlZmluZSBTWVNfUkVH
X0VOQ19ERFJUWVBFKG4pCQkoKG4pIDw8IFNZU19SRUdfRERSVFlQRV9TSElGVCkKPiAgICNkZWZp
bmUgU1lTX1JFR19FTkNfTlVNX0NIKG4pCQkoKChuKSAtIFNZU19SRUdfTlVNX0NIX01BU0spIDw8
IFwKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMgYi9k
cml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYwo+IGluZGV4IDgzMDMxMWZmYTkuLmQ5
N2VmYjY5OTYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5
LmMKPiArKysgYi9kcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYwo+IEBAIC0xMDg5
LDggKzEwODksNyBAQCBzdGF0aWMgdm9pZCBkcmFtX2FsbF9jb25maWcoc3RydWN0IGRyYW1faW5m
byAqZHJhbSwKPiAgIAkJaWYgKHBhcmFtcy0+Y2hbY2hhbm5lbF0uY2FwX2luZm8uY29sID09IDAp
Cj4gICAJCQljb250aW51ZTsKPiAgIAkJaWR4Kys7Cj4gLQkJc3lzX3JlZyB8PSBpbmZvLT5jYXBf
aW5mby5yb3dfM180IDw8Cj4gLQkJCSAgIFNZU19SRUdfUk9XXzNfNF9TSElGVChjaGFubmVsKTsK
PiArCQlzeXNfcmVnIHw9IFNZU19SRUdfRU5DX1JPV18zXzQoaW5mby0+Y2FwX2luZm8ucm93XzNf
NCwgY2hhbm5lbCk7Cj4gICAJCXN5c19yZWcgfD0gMSA8PCBTWVNfUkVHX0NISU5GT19TSElGVChj
aGFubmVsKTsKPiAgIAkJc3lzX3JlZyB8PSAoaW5mby0+Y2FwX2luZm8ucmFuayAtIDEpIDw8Cj4g
ICAJCQkgICBTWVNfUkVHX1JBTktfU0hJRlQoY2hhbm5lbCk7CgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
