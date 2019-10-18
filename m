Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F240EDC329
	for <lists+linux-rockchip@lfdr.de>; Fri, 18 Oct 2019 12:56:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NPGY5b9UtlprwiOCXBMuvD5heU3hYyTR2cygbsFmQww=; b=MAd9Z2fpLQlox2ef5KQyQLkAX
	eVyaiJj8yT65jkGpHEX44qRayUWu7OnHE0RP/Y3QbaKRuZzcuW3v42rk9QekE30r3LfVXhyygzW5x
	eVG69qvZ5kIIWbE6oP0/DgS22RpY7uMaJNLoy5jRfrMp70HkBplY15QQRB7VrXBHOwsBvKTYH1Ww5
	oJE7Ih1P3i7nMmBuOfg+26gHwe82jRxm25IA6uvTmAHBMgUsIRwHdPFJtnd0vAhS6xv0dLuWa4jwp
	jHLqnApjfvnVGkN27JCmw7hl24yHkub10Z12XQcZM575d0UV5kknC6ejk37Lf5RCumug2lIdy8WAc
	mnfenTnBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLPw0-0007Ec-3L; Fri, 18 Oct 2019 10:56:40 +0000
Received: from regular1.263xmail.com ([211.150.70.205])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLPvw-0007E2-L2
 for linux-rockchip@lists.infradead.org; Fri, 18 Oct 2019 10:56:38 +0000
Received: from localhost (unknown [192.168.165.103])
 by regular1.263xmail.com (Postfix) with ESMTP id 2A43D49C;
 Fri, 18 Oct 2019 18:56:23 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P16599T140548789098240S1571396174449951_; 
 Fri, 18 Oct 2019 18:56:21 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <ea6ccce84c4aec148f7b113d000c86c1>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: matwey.kornilov@gmail.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 2/5] Makefile: Rename idbloader.img with
 u-boot-spl-rockchip.bin
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20191017190710.29985-1-jagan@amarulasolutions.com>
 <20191017190710.29985-3-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <7e1e42fd-a4e3-4b3c-8d7b-82f3ad7551cd@rock-chips.com>
Date: Fri, 18 Oct 2019 18:56:14 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191017190710.29985-3-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_035636_845614_C9705076 
X-CRM114-Status: GOOD (  16.71  )
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
Cc: u-boot@lists.denx.de, "Matwey V . Kornilov" <matwey.kornilov@gmail.com>,
 linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SmFnYW4sCgoKT24gMjAxOS8xMC8xOCDkuIrljYgzOjA3LCBKYWdhbiBUZWtpIHdyb3RlOgo+IGlk
YmxvYWRlci5pbWcgbmFtZSBpcyBzcGVjaWZpYyB0byByb2NrY2hpcCwKClRoaXMgaXMgc3BlY2lm
aWMgZm9yIHJvY2tjaGlwLCBsaWtlIHJrc2QsIHJrc3BpIHR5cGUgaW4gbWtpbWFnZSwgc2luY2Ug
Cml0J3MgY2xlYXIgZm9yIHdoYXQgaXQgc3RhbmRzIGZvciwKCkkgdGhpbmsgaXQgY2FuIGFsc28g
dXNlZCBpbiBVLUJvb3QuCgo+IHdoZXJlIGl0IHVzdWFsbHkKPiBjcmVhdGVkIHVzaW5nIHJvY2tj
aGlwIHRvb2xzLgoKCk5vLCBpZGJsb2FkZXIgc3RhbmRzIGZvciB0aGUgaW1hZ2Ugd2l0aCBpZGIg
aGVhZGVyIHBhY2thZ2VkIHdpdGggdHdvIApzdGFnZSBsb2FkZXIsIGVnLiBUUEwrU1BMCgpvciBk
ZHIuYmluK21pbmlsb2FkZXIuYmluLCBhbmQgbWF5YmUgZGRyLmJpbiArIFNQTO+8jCBUUEwrbWlu
aWxvYWRlci5iaW4sCgpub3QgcmVsYXRlZCB0byByb2NrY2hpcCB0b29scywgaXQgY2FuIGFsc28g
YmUgY3JlYXRlZCB3aXRoIFUtQm9vdCAKbWtpbWFnZSB0b29sLgoKPiBTaW5jZSB0aGUgaW1hZ2Ug
aXMgY3JlYXRlZCBhcwo+IHBlciBVLUJvb3QgZ2VuZXJpYyBidWlsZHMgbGlrZSBTUEwsIGJldHRl
ciB0byBmb2xsb3cgdGhlCj4gZ2VuZXJpYyBVLUJvb3QgbmFtaW5nIG5vdGF0aW9uIGxpa2Ugb3Ro
ZXIgU29DJ3MgZm9sbG93aW5nLgo+Cj4gRW5hYmxlIGlkYmxvYWRlci5pbWcgd2l0aCB1LWJvb3Qt
c3BsLXJvY2tjaGlwLmJpbiBhbmQgY3JlYXRlCj4gdGhlIHNhbWUgaW4gc3BsIGRpcmVjdG9yeSBz
aW5jZSBpdCBpcyBTUEwgZmlsZSBhbmQgTWFrZWZpbGUuc3BsCj4gd2lsbCBjbGVhbiBpdCBieSBk
ZWZhdWx0Lgo+Cj4gQ2M6IEtldmVyIFlhbmcgPGtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+Cj4g
Q2M6IE1hdHdleSBWLiBLb3JuaWxvdiA8bWF0d2V5Lmtvcm5pbG92QGdtYWlsLmNvbT4KPiBTaWdu
ZWQtb2ZmLWJ5OiBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KPiAtLS0K
PiAgIE1ha2VmaWxlIHwgNCArKy0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCsp
LCAyIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL01ha2VmaWxlIGIvTWFrZWZpbGUKPiBp
bmRleCBlYzU1ZTBmNmE0Li45MThiNWQ1M2UwIDEwMDY0NAo+IC0tLSBhL01ha2VmaWxlCj4gKysr
IGIvTWFrZWZpbGUKPiBAQCAtODg3LDcgKzg4Nyw3IEBAIEFMTC15ICs9IHUtYm9vdC13aXRoLWR0
Yi5iaW4KPiAgIGVuZGlmCj4gICAKPiAgIGlmZXEgKCQoQ09ORklHX0FSQ0hfUk9DS0NISVApJChD
T05GSUdfU1BMKSQoQ09ORklHX1RQTCkseXl5KQo+IC1BTEwteSArPSBpZGJsb2FkZXIuaW1nCj4g
K0FMTC15ICs9IHNwbC91LWJvb3Qtc3BsLXJvY2tjaGlwLmJpbgoKClRoaXMgaWRibG9hZGVyIGlu
Y2x1ZGluZyBJREIgaGVhZGVyLCBUUEwsIGFuZCBTUEwsIEkgZG9uJ3QgdGhpbmsgbmFtZSBpdCAK
YXMgc3BsIGFuZAoKcHV0IGl0IGluIHNwbCBkaXJlY3RvcnkgbWFrZSBhbnkgc2Vuc2UuCgpJIHRo
b3VnaCB0aGUgb3JpZ2luIG91dHB1dCBmaWxlIHVzZSBwb3N0Zml4ICcuYmluJyBhbmQgdGhvc2Ug
aW1hZ2UgYWZ0ZXIgCnBhY2sgYW5kIGNhbsKgIGJlCgpkZCB0byBzdG9yYWdlIGRpcmVjdGx5IGJl
dHRlciB0byB1c2UgcG9zdGZpeCAnLmltZycuCgpBYm91dCB0aGUgY2xlYW4sIGl0IHdpbGwgYmUg
YmV0dGVyIHRvIGJlIGNsZWFuIGxpa2Ugb3RoZXIgJy5pbWcnIGZpbGUgaW4gCnRoZSBNYWtlZmls
ZS4KCgpUaGFua3MsCgotIEtldmVyCgo+ICAgZW5kaWYKPiAgIAo+ICAgTERGTEFHU191LWJvb3Qg
Kz0gJChMREZMQUdTX0ZJTkFMKQo+IEBAIC0xMzQ0LDcgKzEzNDQsNyBAQCBlbmRpZgo+ICAgTUtJ
TUFHRUZMQUdTX3UtYm9vdC10cGwuaW1nID0gLW4gJChDT05GSUdfU1lTX1NPQykgLVQgJChST0NL
Q0hJUF9JTUdfVFlQRSkKPiAgIHRwbC91LWJvb3QtdHBsLmltZzogdHBsL3UtYm9vdC10cGwuYmlu
IEZPUkNFCj4gICAJJChjYWxsIGlmX2NoYW5nZWQsbWtpbWFnZSkKPiAtaWRibG9hZGVyLmltZzog
dHBsL3UtYm9vdC10cGwuaW1nIHNwbC91LWJvb3Qtc3BsLmJpbiBGT1JDRQo+ICtzcGwvdS1ib290
LXNwbC1yb2NrY2hpcC5iaW46IHRwbC91LWJvb3QtdHBsLmltZyBzcGwvdS1ib290LXNwbC5iaW4g
Rk9SQ0UKPiAgIAkkKGNhbGwgaWZfY2hhbmdlZCxjYXQpCj4gICBlbmRpZgo+ICAgCgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
