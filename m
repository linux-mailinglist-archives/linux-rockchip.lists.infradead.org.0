Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D5116A301
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 09:35:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=s/kNpHj8uz64bbtuVsn41ChdC51kiGP/M2b6zQM8wGU=; b=BLx9E0Vcf7o65LoprUmCIzVqo
	Eg4ByHWJyxdVp/CTM0Ms89zKOfx1iLk9YXbXU8CuozjlyThXyEqYMhKBtv+T2JUYMTPD1r/ha5Fuk
	qOurPvAos8sI15N0RZAenII1J1Wt5a5/GEO38FapxUR/4KwcCjsfeJOk+lB41OR0bJD/hX8EfpCi8
	4mJrSevPYDsRrSLjmNsogNgz/pQYaYx+Rfw33ie+eJyI7yyhn8luv63+ReX3WXhdR+Te+q5qtYksF
	LaGsKgLtPlBOMxJzmN8szxHddgBlS3N4dAkkx9jA8W++f75X08hz3iKy9cnHczyj2mF+A1ggcTKiC
	qu7/1cwfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnHzd-0004lu-9p; Tue, 16 Jul 2019 07:35:21 +0000
Received: from regular1.263xmail.com ([211.150.70.202])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnHzZ-0004lP-8o
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 07:35:18 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.152])
 by regular1.263xmail.com (Postfix) with ESMTP id 92B8B3E4;
 Tue, 16 Jul 2019 15:30:47 +0800 (CST)
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
 P17359T140582324442880S1563262242081133_; 
 Tue, 16 Jul 2019 15:30:44 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <05427edb82eab9fbb6949cce8696291b>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 06/15] ram: rk3399:
 s/tsel_wr_select_p/tsel_wr_select_dq_p
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190715182110.21336-1-jagan@amarulasolutions.com>
 <20190715182110.21336-7-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <743a9743-7abd-a59a-1900-95899479eae3@rock-chips.com>
Date: Tue, 16 Jul 2019 15:30:43 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190715182110.21336-7-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_003517_664620_8289D397 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.202 listed in list.dnswl.org]
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

Ck9uIDIwMTkvNy8xNiDkuIrljYgyOjIxLCBKYWdhbiBUZWtpIHdyb3RlOgo+IFJlbmFtZSB0c2Vs
X3dyX3NlbGVjdF9wIHRvIHRzZWxfd3Jfc2VsZWN0X2RxX3AgYmFzZWQKPiBvbiB0aGUgYnNwIGNv
ZGUuCj4KPiBObyBmdW5jdGlvbmFsaXR5IGNoYW5nZS4KPgo+IFNpZ25lZC1vZmYtYnk6IEphZ2Fu
IFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFlvdU1p
biBDaGVuIDxjeW1Acm9jay1jaGlwcy5jb20+CgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8S2V2
ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKIMKgLSBLZXZlcgo+IC0tLQo+ICAgZHJp
dmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMgfCAxMiArKysrKystLS0tLS0KPiAgIDEg
ZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMgYi9kcml2ZXJzL3JhbS9y
b2NrY2hpcC9zZHJhbV9yazMzOTkuYwo+IGluZGV4IDg1ZmY0N2YxMzMuLjNlYzMyYmRiYzAgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMKPiArKysgYi9k
cml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYwo+IEBAIC0xNTksMTQgKzE1OSwxNCBA
QCBzdGF0aWMgdm9pZCBzZXRfZHNfb2R0KGNvbnN0IHN0cnVjdCBjaGFuX2luZm8gKmNoYW4sCj4g
ICAJdTMyICpkZW5hbGlfcGh5ID0gY2hhbi0+cHVibC0+ZGVuYWxpX3BoeTsKPiAgIAo+ICAgCXUz
MiB0c2VsX2lkbGVfZW4sIHRzZWxfd3JfZW4sIHRzZWxfcmRfZW47Cj4gLQl1MzIgdHNlbF9pZGxl
X3NlbGVjdF9wLCB0c2VsX3dyX3NlbGVjdF9wLCB0c2VsX3JkX3NlbGVjdF9wOwo+ICsJdTMyIHRz
ZWxfaWRsZV9zZWxlY3RfcCwgdHNlbF93cl9zZWxlY3RfZHFfcCwgdHNlbF9yZF9zZWxlY3RfcDsK
PiAgIAl1MzIgY2FfdHNlbF93cl9zZWxlY3RfcCwgY2FfdHNlbF93cl9zZWxlY3RfbjsKPiAgIAl1
MzIgdHNlbF9pZGxlX3NlbGVjdF9uLCB0c2VsX3dyX3NlbGVjdF9kcV9uLCB0c2VsX3JkX3NlbGVj
dF9uOwo+ICAgCXUzMiByZWdfdmFsdWU7Cj4gICAKPiAgIAlpZiAocGFyYW1zLT5iYXNlLmRyYW10
eXBlID09IExQRERSNCkgewo+ICAgCQl0c2VsX3JkX3NlbGVjdF9wID0gUEhZX0RSVl9PRFRfSElf
WjsKPiAtCQl0c2VsX3dyX3NlbGVjdF9wID0gUEhZX0RSVl9PRFRfNDA7Cj4gKwkJdHNlbF93cl9z
ZWxlY3RfZHFfcCA9IFBIWV9EUlZfT0RUXzQwOwo+ICAgCQljYV90c2VsX3dyX3NlbGVjdF9wID0g
UEhZX0RSVl9PRFRfNDA7Cj4gICAJCXRzZWxfaWRsZV9zZWxlY3RfcCA9IFBIWV9EUlZfT0RUX0hJ
X1o7Cj4gICAKPiBAQCAtMTc2LDcgKzE3Niw3IEBAIHN0YXRpYyB2b2lkIHNldF9kc19vZHQoY29u
c3Qgc3RydWN0IGNoYW5faW5mbyAqY2hhbiwKPiAgIAkJdHNlbF9pZGxlX3NlbGVjdF9uID0gUEhZ
X0RSVl9PRFRfMjQwOwo+ICAgCX0gZWxzZSBpZiAocGFyYW1zLT5iYXNlLmRyYW10eXBlID09IExQ
RERSMykgewo+ICAgCQl0c2VsX3JkX3NlbGVjdF9wID0gUEhZX0RSVl9PRFRfMjQwOwo+IC0JCXRz
ZWxfd3Jfc2VsZWN0X3AgPSBQSFlfRFJWX09EVF8zNF8zOwo+ICsJCXRzZWxfd3Jfc2VsZWN0X2Rx
X3AgPSBQSFlfRFJWX09EVF8zNF8zOwo+ICAgCQljYV90c2VsX3dyX3NlbGVjdF9wID0gUEhZX0RS
Vl9PRFRfNDg7Cj4gICAJCXRzZWxfaWRsZV9zZWxlY3RfcCA9IFBIWV9EUlZfT0RUXzI0MDsKPiAg
IAo+IEBAIC0xODYsNyArMTg2LDcgQEAgc3RhdGljIHZvaWQgc2V0X2RzX29kdChjb25zdCBzdHJ1
Y3QgY2hhbl9pbmZvICpjaGFuLAo+ICAgCQl0c2VsX2lkbGVfc2VsZWN0X24gPSBQSFlfRFJWX09E
VF9ISV9aOwo+ICAgCX0gZWxzZSB7Cj4gICAJCXRzZWxfcmRfc2VsZWN0X3AgPSBQSFlfRFJWX09E
VF8yNDA7Cj4gLQkJdHNlbF93cl9zZWxlY3RfcCA9IFBIWV9EUlZfT0RUXzM0XzM7Cj4gKwkJdHNl
bF93cl9zZWxlY3RfZHFfcCA9IFBIWV9EUlZfT0RUXzM0XzM7Cj4gICAJCWNhX3RzZWxfd3Jfc2Vs
ZWN0X3AgPSBQSFlfRFJWX09EVF8zNF8zOwo+ICAgCQl0c2VsX2lkbGVfc2VsZWN0X3AgPSBQSFlf
RFJWX09EVF8yNDA7Cj4gICAKPiBAQCAtMjEwLDcgKzIxMCw3IEBAIHN0YXRpYyB2b2lkIHNldF9k
c19vZHQoY29uc3Qgc3RydWN0IGNoYW5faW5mbyAqY2hhbiwKPiAgIAkgKiBmb3Igd3JpdGUgY3lj
bGVzIGZvciBEUS9ETQo+ICAgCSAqLwo+ICAgCXJlZ192YWx1ZSA9IHRzZWxfcmRfc2VsZWN0X24g
fCAodHNlbF9yZF9zZWxlY3RfcCA8PCAweDQpIHwKPiAtCQkgICAgKHRzZWxfd3Jfc2VsZWN0X2Rx
X24gPDwgOCkgfCAodHNlbF93cl9zZWxlY3RfcCA8PCAxMikgfAo+ICsJCSAgICAodHNlbF93cl9z
ZWxlY3RfZHFfbiA8PCA4KSB8ICh0c2VsX3dyX3NlbGVjdF9kcV9wIDw8IDEyKSB8Cj4gICAJCSAg
ICAodHNlbF9pZGxlX3NlbGVjdF9uIDw8IDE2KSB8ICh0c2VsX2lkbGVfc2VsZWN0X3AgPDwgMjAp
Owo+ICAgCWNscnNldGJpdHNfbGUzMigmZGVuYWxpX3BoeVs2XSwgMHhmZmZmZmYsIHJlZ192YWx1
ZSk7Cj4gICAJY2xyc2V0Yml0c19sZTMyKCZkZW5hbGlfcGh5WzEzNF0sIDB4ZmZmZmZmLCByZWdf
dmFsdWUpOwo+IEBAIC0yNTAsNyArMjUwLDcgQEAgc3RhdGljIHZvaWQgc2V0X2RzX29kdChjb25z
dCBzdHJ1Y3QgY2hhbl9pbmZvICpjaGFuLAo+ICAgCj4gICAJLyogcGh5X3BhZF9mZGJrX2RyaXZl
IDIzYml0IERFTkFMSV9QSFlfOTI0LzkyNSAqLwo+ICAgCWNscnNldGJpdHNfbGUzMigmZGVuYWxp
X3BoeVs5MjRdLCAweGZmLAo+IC0JCQl0c2VsX3dyX3NlbGVjdF9kcV9uIHwgKHRzZWxfd3Jfc2Vs
ZWN0X3AgPDwgNCkpOwo+ICsJCQl0c2VsX3dyX3NlbGVjdF9kcV9uIHwgKHRzZWxfd3Jfc2VsZWN0
X2RxX3AgPDwgNCkpOwo+ICAgCWNscnNldGJpdHNfbGUzMigmZGVuYWxpX3BoeVs5MjVdLCAweGZm
LAo+ICAgCQkJdHNlbF9yZF9zZWxlY3RfbiB8ICh0c2VsX3JkX3NlbGVjdF9wIDw8IDQpKTsKPiAg
IAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
