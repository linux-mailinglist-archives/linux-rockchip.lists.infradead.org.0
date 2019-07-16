Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B419F6A31A
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 09:40:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vRh02fiQOVaZw2nadB3iT3Pzl0sguL/2DbSZuQPaTOg=; b=mpwWL90dlCRZHtxRcX1Rp0R1h
	4ojP18k7nWC0Sce17ON1uJktH9UUVB3cYnDOOIk/p/dGHQsRfKu29Ga2UsseDaL1Z/C+WkL4nMJTF
	OPIvCbCtB90lAK5ypwQjhdYxWqW30zAOaSOWZoV1c7BjbNG4f4nZmVCaGST+zwS5ILkMwcSNe1Rg2
	pwOQmqa+O8FwqviiB277RQtLFOXPurlcmXVl+Mromkr/gnlfudNmS48VrmsnrxdiUxio87CnUwqIR
	HWBcNrYDxcv3WsJCjj2v3jPJ83rhPoKTYXSUw6DHocjJRuVYRsjIoGRzUxeln+LVesl3hsyEf6680
	qhCJwpACQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnI4T-0006ae-Sl; Tue, 16 Jul 2019 07:40:21 +0000
Received: from regular1.263xmail.com ([211.150.70.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnI4Q-0006aE-B9
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 07:40:20 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.160])
 by regular1.263xmail.com (Postfix) with ESMTP id 783B17BD;
 Tue, 16 Jul 2019 15:40:16 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.12.9] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P423T139635086436096S1563262812599570_; 
 Tue, 16 Jul 2019 15:40:13 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <0f3568b46a7fba15bb638b77f03b7fd7>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 07/18] ram: rk3399: Add pctl start support
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190715182856.21688-1-jagan@amarulasolutions.com>
 <20190715182856.21688-8-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <2e91bcc2-6f45-1883-fb19-c09ae620ac8b@rock-chips.com>
Date: Tue, 16 Jul 2019 15:40:13 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190715182856.21688-8-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_004018_762063_0E574B55 
X-CRM114-Status: GOOD (  20.13  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.196 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvNy8xNiDkuIrljYgyOjI4LCBKYWdhbiBUZWtpIHdyb3RlOgo+IEFkZCBzdXBwb3J0
IGZvciBwY3RsIHN0YXJ0IGZvciBib3RoIGNoYW5uZWwgMCwgMSBjb250cm9sCj4gYW5kIHBoeSBy
ZWdpc3RlcnMuCj4KPiBUaGlzIHdvdWxkIGFsc28gaGFuZGxlIHB3cnVwX3NyZWZyZXNoX2V4aXQg
aW5pdCBiYXNlZAo+IG9uIHRoZSBjaGFubmVsIG51bWJlci4KPgo+IFNpZ25lZC1vZmYtYnk6IEph
Z2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFlv
dU1pbiBDaGVuIDxjeW1Acm9jay1jaGlwcy5jb20+CgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8
S2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKIMKgLSBLZXZlcgo+IC0tLQo+ICAg
ZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMgfCA3NSArKysrKysrKysrKysrKysr
KysrKystLS0tLS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDU1IGluc2VydGlvbnMoKyksIDIwIGRl
bGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3Jr
MzM5OS5jIGIvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMKPiBpbmRleCA2ZTk0
NGNhZmQ5Li4wODRjOTQ5NzI4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3Nk
cmFtX3JrMzM5OS5jCj4gKysrIGIvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMK
PiBAQCAtNDksMTAgKzQ5LDExIEBAIHN0cnVjdCBjaGFuX2luZm8gewo+ICAgc3RydWN0IGRyYW1f
aW5mbyB7Cj4gICAjaWYgZGVmaW5lZChDT05GSUdfVFBMX0JVSUxEKSB8fCBcCj4gICAJKCFkZWZp
bmVkKENPTkZJR19UUEwpICYmIGRlZmluZWQoQ09ORklHX1NQTF9CVUlMRCkpCj4gLQl1MzIgcHdy
dXBfc3JlZnJlc2hfZXhpdDsKPiArCXUzMiBwd3J1cF9zcmVmcmVzaF9leGl0WzJdOwo+ICAgCXN0
cnVjdCBjaGFuX2luZm8gY2hhblsyXTsKPiAgIAlzdHJ1Y3QgY2xrIGRkcl9jbGs7Cj4gICAJc3Ry
dWN0IHJrMzM5OV9jcnUgKmNydTsKPiArCXN0cnVjdCByazMzOTlfZ3JmX3JlZ3MgKmdyZjsKPiAg
IAlzdHJ1Y3QgcmszMzk5X3BtdWNydSAqcG11Y3J1Owo+ICAgCXN0cnVjdCByazMzOTlfcG11c2dy
Zl9yZWdzICpwbXVzZ3JmOwo+ICAgCXN0cnVjdCByazMzOTlfZGRyX2NpY19yZWdzICpjaWM7Cj4g
QEAgLTczLDYgKzc0LDExIEBAIHN0cnVjdCByb2NrY2hpcF9kbWNfcGxhdCB7Cj4gICAJc3RydWN0
IHJlZ21hcCAqbWFwOwo+ICAgfTsKPiAgIAo+ICtzdGF0aWMgdm9pZCAqZ2V0X2RkcmMwX2Nvbihz
dHJ1Y3QgZHJhbV9pbmZvICpkcmFtLCB1OCBjaGFubmVsKQo+ICt7Cj4gKwlyZXR1cm4gKGNoYW5u
ZWwgPT0gMCkgPyAmZHJhbS0+Z3JmLT5kZHJjMF9jb24wIDogJmRyYW0tPmdyZi0+ZGRyYzBfY29u
MTsKPiArfQo+ICsKPiAgIHN0YXRpYyB2b2lkIGNvcHlfdG9fcmVnKHUzMiAqZGVzdCwgY29uc3Qg
dTMyICpzcmMsIHUzMiBuKQo+ICAgewo+ICAgCWludCBpOwo+IEBAIC0zMjgsNiArMzM0LDQ4IEBA
IHN0YXRpYyB2b2lkIHNldF9kc19vZHQoY29uc3Qgc3RydWN0IGNoYW5faW5mbyAqY2hhbiwKPiAg
IAljbHJzZXRiaXRzX2xlMzIoJmRlbmFsaV9waHlbOTMwXSwgMHgxIDw8IDE3LCByZWdfdmFsdWUp
Owo+ICAgfQo+ICAgCj4gK3N0YXRpYyB2b2lkIHBjdGxfc3RhcnQoc3RydWN0IGRyYW1faW5mbyAq
ZHJhbSwgdTggY2hhbm5lbCkKPiArewo+ICsJY29uc3Qgc3RydWN0IGNoYW5faW5mbyAqY2hhbiA9
ICZkcmFtLT5jaGFuW2NoYW5uZWxdOwo+ICsJdTMyICpkZW5hbGlfY3RsID0gY2hhbi0+cGN0bC0+
ZGVuYWxpX2N0bDsKPiArCXUzMiAqZGVuYWxpX3BoeSA9IGNoYW4tPnB1YmwtPmRlbmFsaV9waHk7
Cj4gKwl1MzIgKmRkcmMwX2NvbiA9IGdldF9kZHJjMF9jb24oZHJhbSwgY2hhbm5lbCk7Cj4gKwl1
MzIgY291bnQgPSAwOwo+ICsJdTMyIGJ5dGUsIHRtcDsKPiArCj4gKwl3cml0ZWwoMHgwMTAwMDAw
MCwgJmRkcmMwX2Nvbik7Cj4gKwo+ICsJY2xyc2V0Yml0c19sZTMyKCZkZW5hbGlfcGh5Wzk1N10s
IDB4MyA8PCAyNCwgMHgyIDw8IDI0KTsKPiArCj4gKwl3aGlsZSAoIShyZWFkbCgmZGVuYWxpX2N0
bFsyMDNdKSAmICgxIDw8IDMpKSkgewo+ICsJCWlmIChjb3VudCA+IDEwMDApIHsKPiArCQkJcHJp
bnRmKCIlczogRmFpbGVkIHRvIGluaXQgcGN0bCBmb3IgY2hhbm5lbCAlZFxuIiwKPiArCQkJICAg
ICAgIF9fZnVuY19fLCBjaGFubmVsKTsKPiArCQkJd2hpbGUgKDEpCj4gKwkJCQk7Cj4gKwkJfQo+
ICsKPiArCQl1ZGVsYXkoMSk7Cj4gKwkJY291bnQrKzsKPiArCX0KPiArCj4gKwl3cml0ZWwoMHgw
MTAwMDEwMCwgJmRkcmMwX2Nvbik7Cj4gKwo+ICsJZm9yIChieXRlID0gMDsgYnl0ZSA8IDQ7IGJ5
dGUrKykgewo+ICsJCXRtcCA9IDB4ODIwOwo+ICsJCXdyaXRlbCgodG1wIDw8IDE2KSB8IHRtcCwg
JmRlbmFsaV9waHlbNTMgKyAoMTI4ICogYnl0ZSldKTsKPiArCQl3cml0ZWwoKHRtcCA8PCAxNikg
fCB0bXAsICZkZW5hbGlfcGh5WzU0ICsgKDEyOCAqIGJ5dGUpXSk7Cj4gKwkJd3JpdGVsKCh0bXAg
PDwgMTYpIHwgdG1wLCAmZGVuYWxpX3BoeVs1NSArICgxMjggKiBieXRlKV0pOwo+ICsJCXdyaXRl
bCgodG1wIDw8IDE2KSB8IHRtcCwgJmRlbmFsaV9waHlbNTYgKyAoMTI4ICogYnl0ZSldKTsKPiAr
CQl3cml0ZWwoKHRtcCA8PCAxNikgfCB0bXAsICZkZW5hbGlfcGh5WzU3ICsgKDEyOCAqIGJ5dGUp
XSk7Cj4gKwo+ICsJCWNscnNldGJpdHNfbGUzMigmZGVuYWxpX3BoeVs1OCArICgxMjggKiBieXRl
KV0sIDB4ZmZmZiwgdG1wKTsKPiArCX0KPiArCj4gKwljbHJzZXRiaXRzX2xlMzIoJmRlbmFsaV9j
dGxbNjhdLCBQV1JVUF9TUkVGUkVTSF9FWElULAo+ICsJCQlkcmFtLT5wd3J1cF9zcmVmcmVzaF9l
eGl0W2NoYW5uZWxdKTsKPiArfQo+ICsKPiAgIHN0YXRpYyBpbnQgcGh5X2lvX2NvbmZpZyhjb25z
dCBzdHJ1Y3QgY2hhbl9pbmZvICpjaGFuLAo+ICAgCQkJIGNvbnN0IHN0cnVjdCByazMzOTlfc2Ry
YW1fcGFyYW1zICpwYXJhbXMpCj4gICB7Cj4gQEAgLTQ5OCw3ICs1NDYsNiBAQCBzdGF0aWMgaW50
IHBjdGxfY2ZnKHN0cnVjdCBkcmFtX2luZm8gKmRyYW0sIGNvbnN0IHN0cnVjdCBjaGFuX2luZm8g
KmNoYW4sCj4gICAJY29uc3QgdTMyICpwYXJhbXNfcGh5ID0gcGFyYW1zLT5waHlfcmVncy5kZW5h
bGlfcGh5Owo+ICAgCXUzMiB0bXAsIHRtcDEsIHRtcDI7Cj4gICAJaW50IHJldDsKPiAtCWNvbnN0
IHVsb25nIHRpbWVvdXRfbXMgPSAyMDA7Cj4gICAKPiAgIAkvKgo+ICAgCSAqIHdvcmsgYXJvdW5k
IGNvbnRyb2xsZXIgYnVnOgo+IEBAIC01MTgsOCArNTY1LDggQEAgc3RhdGljIGludCBwY3RsX2Nm
ZyhzdHJ1Y3QgZHJhbV9pbmZvICpkcmFtLCBjb25zdCBzdHJ1Y3QgY2hhbl9pbmZvICpjaGFuLAo+
ICAgCXdyaXRlbChwYXJhbXMtPnBoeV9yZWdzLmRlbmFsaV9waHlbOTExXSwgJmRlbmFsaV9waHlb
OTExXSk7Cj4gICAJd3JpdGVsKHBhcmFtcy0+cGh5X3JlZ3MuZGVuYWxpX3BoeVs5MTJdLCAmZGVu
YWxpX3BoeVs5MTJdKTsKPiAgIAo+IC0JZHJhbS0+cHdydXBfc3JlZnJlc2hfZXhpdCA9IHJlYWRs
KCZkZW5hbGlfY3RsWzY4XSkgJgo+IC0JCQkJICAgIFBXUlVQX1NSRUZSRVNIX0VYSVQ7Cj4gKwlk
cmFtLT5wd3J1cF9zcmVmcmVzaF9leGl0W2NoYW5uZWxdID0gcmVhZGwoJmRlbmFsaV9jdGxbNjhd
KSAmCj4gKwkJCQkJICAgICBQV1JVUF9TUkVGUkVTSF9FWElUOwo+ICAgCWNscmJpdHNfbGUzMigm
ZGVuYWxpX2N0bFs2OF0sIFBXUlVQX1NSRUZSRVNIX0VYSVQpOwo+ICAgCj4gICAJLyogUEhZX0RM
TF9SU1RfRU4gKi8KPiBAQCAtNTgwLDIyICs2MjcsNiBAQCBzdGF0aWMgaW50IHBjdGxfY2ZnKHN0
cnVjdCBkcmFtX2luZm8gKmRyYW0sIGNvbnN0IHN0cnVjdCBjaGFuX2luZm8gKmNoYW4sCj4gICAJ
aWYgKHJldCkKPiAgIAkJcmV0dXJuIHJldDsKPiAgIAo+IC0JLyogUEhZX0RMTF9SU1RfRU4gKi8K
PiAtCWNscnNldGJpdHNfbGUzMigmZGVuYWxpX3BoeVs5NTddLCAweDMgPDwgMjQsIDB4MiA8PCAy
NCk7Cj4gLQo+IC0JLyogV2FpdGluZyBmb3IgUEhZIGFuZCBEUkFNIGluaXQgY29tcGxldGUgKi8K
PiAtCXRtcCA9IGdldF90aW1lcigwKTsKPiAtCWRvIHsKPiAtCQlpZiAoZ2V0X3RpbWVyKHRtcCkg
PiB0aW1lb3V0X21zKSB7Cj4gLQkJCXByX2VycigiRFJBTSAoJXMpOiBwaHkgZmFpbGVkIHRvIGxv
Y2sgd2l0aGluICAlbGQgbXNcbiIsCj4gLQkJCSAgICAgICBfX2Z1bmNfXywgdGltZW91dF9tcyk7
Cj4gLQkJCXJldHVybiAtRVRJTUU7Cj4gLQkJfQo+IC0JfSB3aGlsZSAoIShyZWFkbCgmZGVuYWxp
X2N0bFsyMDNdKSAmICgxIDw8IDMpKSk7Cj4gLQlkZWJ1ZygiRFJBTSAoJXMpOiBwaHkgbG9ja2Vk
IGFmdGVyICVsZCBtc1xuIiwgX19mdW5jX18sIGdldF90aW1lcih0bXApKTsKPiAtCj4gLQljbHJz
ZXRiaXRzX2xlMzIoJmRlbmFsaV9jdGxbNjhdLCBQV1JVUF9TUkVGUkVTSF9FWElULAo+IC0JCQlk
cmFtLT5wd3J1cF9zcmVmcmVzaF9leGl0KTsKPiAgIAlyZXR1cm4gMDsKPiAgIH0KPiAgIAo+IEBA
IC0xMTg2LDYgKzEyMTcsOSBAQCBzdGF0aWMgaW50IHNkcmFtX2luaXQoc3RydWN0IGRyYW1faW5m
byAqZHJhbSwKPiAgIAkJCXJldHVybiByZXQ7Cj4gICAJCX0KPiAgIAo+ICsJCS8qIHN0YXJ0IHRv
IHRyaWdnZXIgaW5pdGlhbGl6YXRpb24gKi8KPiArCQlwY3RsX3N0YXJ0KGRyYW0sIGNoYW5uZWwp
Owo+ICsKPiAgIAkJLyogTFBERFIyL0xQRERSMyBuZWVkIHRvIHdhaXQgREFJIGNvbXBsZXRlLCBt
YXggMTB1cyAqLwo+ICAgCQlpZiAoZHJhbXR5cGUgPT0gTFBERFIzKQo+ICAgCQkJdWRlbGF5KDEw
KTsKPiBAQCAtMTI2Miw2ICsxMjk2LDcgQEAgc3RhdGljIGludCByazMzOTlfZG1jX2luaXQoc3Ry
dWN0IHVkZXZpY2UgKmRldikKPiAgICNlbmRpZgo+ICAgCj4gICAJcHJpdi0+Y2ljID0gc3lzY29u
X2dldF9maXJzdF9yYW5nZShST0NLQ0hJUF9TWVNDT05fQ0lDKTsKPiArCXByaXYtPmdyZiA9IHN5
c2Nvbl9nZXRfZmlyc3RfcmFuZ2UoUk9DS0NISVBfU1lTQ09OX0dSRik7Cj4gICAJcHJpdi0+cG11
Z3JmID0gc3lzY29uX2dldF9maXJzdF9yYW5nZShST0NLQ0hJUF9TWVNDT05fUE1VR1JGKTsKPiAg
IAlwcml2LT5wbXVzZ3JmID0gc3lzY29uX2dldF9maXJzdF9yYW5nZShST0NLQ0hJUF9TWVNDT05f
UE1VU0dSRik7Cj4gICAJcHJpdi0+cG11Y3J1ID0gcm9ja2NoaXBfZ2V0X3BtdWNydSgpOwoKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
