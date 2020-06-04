Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE7E1EDB97
	for <lists+linux-rockchip@lfdr.de>; Thu,  4 Jun 2020 05:14:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PoQ+cNxt/7YAAglOVTkRpwJO80ny04jjM7dW60//eeo=; b=WaII/0ImJfZ/vvsx0yWuo2QxF
	iY5tgyV8YSuhpGaVI60wX7Zpun1HqJGUUivtdOG7GsXaUlYIRKu/QJZwcOfqv/so+EhzWHf+oGwL9
	NlMId+Whss4/YTCJWnp6ziCIqncSiY3n7GEYS1m+Ba9cLrSPeSqTx0v4QUbjSWCtHKWmsJPTb8M2d
	Ig83nzBNxE0NQL4PmWrIBMIxVXrKLgtv5n7eADDZyX3Cwx9Lln74EqY12FS/EmQqqLsTP2UYo9394
	c/zHCeL9Db1oiPWbhF6bLrCDx83/QH60OkU8KBqWVMk1mEHdMIUUHSnmxUQ8n6DukuN+yOZ1WnPB1
	EfhcX6jSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jggL1-0000tS-Pd; Thu, 04 Jun 2020 03:14:39 +0000
Received: from regular1.263xmail.com ([211.150.70.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jggKy-0000rN-2Q
 for linux-rockchip@lists.infradead.org; Thu, 04 Jun 2020 03:14:37 +0000
Received: from localhost (unknown [192.168.167.32])
 by regular1.263xmail.com (Postfix) with ESMTP id C612913C6;
 Thu,  4 Jun 2020 11:14:32 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P3334T139697277445888S1591240466593937_; 
 Thu, 04 Jun 2020 11:14:32 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <fe03c503b45bf54301c46375dffe5f8a>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v2 4/4] doc: rockchip: Document SPI flash program steps
To: Jagan Teki <jagan@amarulasolutions.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>, Hugh Cole-Baker <sigmaris@gmail.com>
References: <20200601204213.466120-1-jagan@amarulasolutions.com>
 <20200601204213.466120-5-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <061a1b2c-4618-904e-8ddd-0184270c913a@rock-chips.com>
Date: Thu, 4 Jun 2020 11:14:26 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200601204213.466120-5-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_201436_286828_A4C04D0C 
X-CRM114-Status: GOOD (  12.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvNi8yIOS4iuWNiDQ6NDIsIEphZ2FuIFRla2kgd3JvdGU6Cj4gRG9jdW1lbnQgU1BJ
IGZsYXNoIHByb2dyYW0gc3RlcHMgZm9yIHJvY2tjaGlwIHBsYXRmb3Jtcy4KPgo+IFN1Z2dlc3Rl
ZC1ieTogSHVnaCBDb2xlLUJha2VyIDxzaWdtYXJpc0BnbWFpbC5jb20+Cj4gU2lnbmVkLW9mZi1i
eTogSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+CgpSZXZpZXdlZC1ieTog
S2V2ZXIgWWFuZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKLSBLZXZlcgo+
IC0tLQo+ICAgZG9jL2JvYXJkL3JvY2tjaGlwL3JvY2tjaGlwLnJzdCB8IDI2ICsrKysrKysrKysr
KysrKysrKysrKysrKystCj4gICAxIGZpbGUgY2hhbmdlZCwgMjUgaW5zZXJ0aW9ucygrKSwgMSBk
ZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBhL2RvYy9ib2FyZC9yb2NrY2hpcC9yb2NrY2hpcC5y
c3QgYi9kb2MvYm9hcmQvcm9ja2NoaXAvcm9ja2NoaXAucnN0Cj4gaW5kZXggN2I3MmZhYjQ5Ni4u
NzZiMjI4YTA0NiAxMDA2NDQKPiAtLS0gYS9kb2MvYm9hcmQvcm9ja2NoaXAvcm9ja2NoaXAucnN0
Cj4gKysrIGIvZG9jL2JvYXJkL3JvY2tjaGlwL3JvY2tjaGlwLnJzdAo+IEBAIC0xNjIsNiArMTYy
LDMwIEBAIFByb2dyYW0gdGhlIGZsYXNoOjoKPiAgIE5vdGU6IGZvciByb2NrY2hpcCAzMi1iaXQg
cGxhdGZvcm1zIHRoZSBVLUJvb3QgcHJvcGVyIGltYWdlCj4gICBpcyB1LWJvb3QtZHRiLmltZwo+
ICAgCj4gK1NQSQo+ICteXl4KPiArCj4gK0dlbmVyYXRpbmcgaWRibG9hZGVyIGZvciBTUEkgYm9v
dCB3b3VsZCByZXF1aXJlIHRvIGlucHV0IGEgbXVsdGkgaW1hZ2UKPiAraW1hZ2UgZm9ybWF0IHRv
IG1raW1hZ2UgdG9vbCBpbnN0ZWFkIG9mIGNvbmNlcnRpbmcgKGxpa2UgZm9yIE1NQyBib290KS4K
PiArCj4gK1NQTC1hbG9uZSBTUEkgYm9vdCBpbWFnZTo6Cj4gKwo+ICsgICAgICAgIC4vdG9vbHMv
bWtpbWFnZSAtbiByazMzOTkgLVQgcmtzcGkgLWQgc3BsL3UtYm9vdC1zcGwuYmluIGlkYmxvYWRl
ci5pbWcKPiArCj4gK1RQTCtTUEwgU1BJIGJvb3QgaW1hZ2U6Ogo+ICsKPiArICAgICAgICAuL3Rv
b2xzL21raW1hZ2UgLW4gcmszMzk5IC1UIHJrc3BpIC1kIHRwbC91LWJvb3QtdHBsLmJpbjpzcGwv
dS1ib290LXNwbC5iaW4gaWRibG9hZGVyLmltZwo+ICsKPiArQ29weSBTUEkgYm9vdCBpbWFnZXMg
aW50byBTRCBjYXJkIGFuZCBib290IGZyb20gU0Q6Ogo+ICsKPiArICAgICAgICBzZiBwcm9iZQo+
ICsgICAgICAgIGxvYWQgbW1jIDE6MSAka2VybmVsX2FkZHJfciBpZGJsb2FkZXIuaW1nCj4gKyAg
ICAgICAgc2YgZXJhc2UgMCArJGZpbGVzaXplCj4gKyAgICAgICAgc2Ygd3JpdGUgJGtlcm5lbF9h
ZGRyX3IgMCAke2ZpbGVzaXplfQo+ICsgICAgICAgIGxvYWQgbW1jIDE6MSAke2tlcm5lbF9hZGRy
X3J9IHUtYm9vdC5pdGIKPiArICAgICAgICBzZiBlcmFzZSAweDYwMDAwICskZmlsZXNpemUKPiAr
ICAgICAgICBzZiB3cml0ZSAka2VybmVsX2FkZHJfciAweDYwMDAwICR7ZmlsZXNpemV9Cj4gKwo+
ICAgVE9ETwo+ICAgLS0tLQo+ICAgCj4gQEAgLTE3MSw0ICsxOTUsNCBAQCBUT0RPCj4gICAtIEFk
ZCBtaXNzaW5nIFNvQydzIHdpdGggaXQgYm9hcmRzIGxpc3QKPiAgIAo+ICAgLi4gSmFnYW4gVGVr
aSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+Cj4gLS4uIFN1bmRheSAyNCBNYXkgMjAyMCAx
MDowODo0MSBQTSBJU1QKPiArLi4gVHVlc2RheSAwMiBKdW5lIDIwMjAgMTI6MTg6NTcgQU0gSVNU
CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
