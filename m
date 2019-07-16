Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D2746A912
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 15:02:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iVAzFUYgJm7eEFSYG9/va/QPq0oYOS+FJkD7ujG3/6Q=; b=j6RyGb5UkLp+Y3vMaF0ISK50q
	1ZHAxwV8dazCPGc5Mbi+qYA18zNwhbuGYxKktEiHcOgRvhVovbL3FJdYwV2J8SNl2/d9fcoTKaKpA
	RBVVDS7sPi/JX6dWcaJI/Rp2ps4uFdtZzQOtOnYHfnM2liEBX+97eu3frS7kYjpuMcnblY446LAni
	lkHoxtwJ6pF35JkYNh00AcgbnXpjxiJh8UpCswPRxjL20zkwuVGZ1xAdB14Y+0LTRynvJz+RDt/jp
	Zb68ffs7iynlGtgR9lFEWdQpkDe8H8n69uzdUnZSJHfjI/wB2HethctfSM9IVTL05ilZFYclwp1Yw
	JiYww4Vfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnN6X-0006Du-LG; Tue, 16 Jul 2019 13:02:49 +0000
Received: from regular1.263xmail.com ([211.150.70.206])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnN6U-0006Ck-JR
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 13:02:48 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.173])
 by regular1.263xmail.com (Postfix) with ESMTP id D6A351FE;
 Tue, 16 Jul 2019 21:02:42 +0800 (CST)
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
 P25752T140260524676864S1563282156468518_; 
 Tue, 16 Jul 2019 21:02:43 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <ac3ca2de3949d7f79646e670b276789d>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 17/57] ram: rk3399: Add ddrtimingC0
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-18-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <0fb51ec0-c39f-ef29-7b7c-931bbc630943@rock-chips.com>
Date: Tue, 16 Jul 2019 21:02:35 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-18-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_060246_858979_F3C50538 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.206 listed in list.dnswl.org]
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

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU3LCBKYWdhbiBUZWtpIHdyb3RlOgo+IEFkZCBEZHJUaW1p
bmdDMCBzdHJ1Y3R1cmUgd2l0aCBhc3NvY2lhdGVkIGJpdCBmaWVsZHMuCj4KPiBUaGVzZSB3b3Vs
ZCBoZWxwIHRvIHJlY29uZmlndXJlIHNkcmFtIGNhcGFiaWxpdGllcyBkdXJpbmcKPiBscGRkcjQg
c2V0dXAgcmVsYXRlZCBjb25maWdzLgo+Cj4gU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVraSA8amFn
YW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+CgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8S2V2ZXIu
eWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKIMKgLSBLZXZlcgo+IC0tLQo+ICAgYXJjaC9h
cm0vaW5jbHVkZS9hc20vYXJjaC1yb2NrY2hpcC9zZHJhbV9yazMzOTkuaCB8IDEyICsrKysrKysr
KysrLQo+ICAgZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMgICAgICAgICAgICAg
ICB8ICAyICstCj4gICAyIGZpbGVzIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDIgZGVsZXRp
b25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vaW5jbHVkZS9hc20vYXJjaC1yb2NrY2hp
cC9zZHJhbV9yazMzOTkuaCBiL2FyY2gvYXJtL2luY2x1ZGUvYXNtL2FyY2gtcm9ja2NoaXAvc2Ry
YW1fcmszMzk5LmgKPiBpbmRleCA0NzE3MDJmOTM1Li43ZjQxYTY3MjQyIDEwMDY0NAo+IC0tLSBh
L2FyY2gvYXJtL2luY2x1ZGUvYXNtL2FyY2gtcm9ja2NoaXAvc2RyYW1fcmszMzk5LmgKPiArKysg
Yi9hcmNoL2FybS9pbmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL3NkcmFtX3JrMzM5OS5oCj4gQEAg
LTE4LDYgKzE4LDE2IEBAIHN0cnVjdCByazMzOTlfZGRyX3BpX3JlZ3Mgewo+ICAgCXUzMiBkZW5h
bGlfcGlbMjAwXTsKPiAgIH07Cj4gICAKPiArdW5pb24gbm9jX2RkcnRpbWluZ2MwIHsKPiArCXUz
MiBkMzI7Cj4gKwlzdHJ1Y3Qgewo+ICsJCXVuc2lnbmVkIGJ1cnN0cGVuYWx0eSA6IDQ7Cj4gKwkJ
dW5zaWduZWQgcmVzZXJ2ZWQwIDogNDsKPiArCQl1bnNpZ25lZCB3cnRvbXdyIDogNjsKPiArCQl1
bnNpZ25lZCByZXNlcnZlZDEgOiAxODsKPiArCX0gYjsKPiArfTsKPiArCj4gICBzdHJ1Y3Qgcmsz
Mzk5X21zY2hfcmVncyB7Cj4gICAJdTMyIGNvcmVpZDsKPiAgIAl1MzIgcmV2aXNpb25pZDsKPiBA
QCAtMzYsNyArNDYsNyBAQCBzdHJ1Y3QgcmszMzk5X21zY2hfcmVncyB7Cj4gICBzdHJ1Y3Qgcmsz
Mzk5X21zY2hfdGltaW5ncyB7Cj4gICAJdTMyIGRkcnRpbWluZ2EwOwo+ICAgCXUzMiBkZHJ0aW1p
bmdiMDsKPiAtCXUzMiBkZHJ0aW1pbmdjMDsKPiArCXVuaW9uIG5vY19kZHJ0aW1pbmdjMCBkZHJ0
aW1pbmdjMDsKPiAgIAl1MzIgZGV2dG9kZXYwOwo+ICAgCXUzMiBkZHJtb2RlOwo+ICAgCXUzMiBh
Z2luZ3gwOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTku
YyBiL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jCj4gaW5kZXggN2Y2ZjdkOGE5
YS4uZTkxNjQ0OGZjMCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9y
azMzOTkuYwo+ICsrKyBiL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jCj4gQEAg
LTExMTAsNyArMTExMCw3IEBAIHN0YXRpYyB2b2lkIGRyYW1fYWxsX2NvbmZpZyhzdHJ1Y3QgZHJh
bV9pbmZvICpkcmFtLAo+ICAgCQkgICAgICAgJmRkcl9tc2NoX3JlZ3MtPmRkcnRpbWluZ2EwKTsK
PiAgIAkJd3JpdGVsKG5vY190aW1pbmctPmRkcnRpbWluZ2IwLAo+ICAgCQkgICAgICAgJmRkcl9t
c2NoX3JlZ3MtPmRkcnRpbWluZ2IwKTsKPiAtCQl3cml0ZWwobm9jX3RpbWluZy0+ZGRydGltaW5n
YzAsCj4gKwkJd3JpdGVsKG5vY190aW1pbmctPmRkcnRpbWluZ2MwLmQzMiwKPiAgIAkJICAgICAg
ICZkZHJfbXNjaF9yZWdzLT5kZHJ0aW1pbmdjMCk7Cj4gICAJCXdyaXRlbChub2NfdGltaW5nLT5k
ZXZ0b2RldjAsCj4gICAJCSAgICAgICAmZGRyX21zY2hfcmVncy0+ZGV2dG9kZXYwKTsKCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
