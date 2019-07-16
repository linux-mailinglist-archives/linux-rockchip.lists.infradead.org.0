Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1A126A2F3
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 09:31:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8xmBzVNsxU88qs0dP/csXt4z3j7wbXUH2OSo9JQusN0=; b=SzDok99wfCoCanPQoYcGmRSMr
	XFVuba2C4D1wmrDPXogd8IHBBGBIQvzxv23vq0BfC4eES1fmdNeHPX0TCHDx3bPTtYNS0xRQezq2c
	xxZxMOUvSSTReQ+sju8C3TVO/a4eVTuudLpd/I9tGfj1+waxW+SZqtX2tbZLsEIXdTJv82jCttKtO
	LWXQUuIqTEMG8Q9b+pK55rYc77zO3KkU0CWp08eHq8ekASfxVupFV8YRAJTvO7IfvgUJaC0zQwaYm
	e0DHUkP1SlWXC+n+/xSPmcSxHPkYv9B8swo+Vqo6V6h+KpfkwrZpgPQ/3mwuLlkwVyPl4aLi5WzsX
	suvc6C7jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnHvB-0002jM-Q1; Tue, 16 Jul 2019 07:30:45 +0000
Received: from regular1.263xmail.com ([211.150.70.206])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnHv7-0002ig-ED
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 07:30:43 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.70])
 by regular1.263xmail.com (Postfix) with ESMTP id 46D6029D;
 Tue, 16 Jul 2019 15:30:37 +0800 (CST)
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
 P21246T140496811316992S1563262223388137_; 
 Tue, 16 Jul 2019 15:30:26 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <d943f6cdd8713bd7526278e602e89ffa>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 05/15] ram: rk3399:
 s/tsel_wr_select_n/tsel_wr_select_dq_n
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190715182110.21336-1-jagan@amarulasolutions.com>
 <20190715182110.21336-6-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <e695b09d-717f-172e-a289-87bbd97d224a@rock-chips.com>
Date: Tue, 16 Jul 2019 15:30:23 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190715182110.21336-6-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_003041_874398_46E59A8F 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.206 listed in list.dnswl.org]
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
X3dyX3NlbGVjdF9uIHRvIHRzZWxfd3Jfc2VsZWN0X2RxX24gYmFzZWQKPiBvbiB0aGUgYnNwIGNv
ZGUuCj4KPiBObyBmdW5jdGlvbmFsaXR5IGNoYW5nZS4KPgo+IFNpZ25lZC1vZmYtYnk6IEphZ2Fu
IFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFlvdU1p
biBDaGVuIDxjeW1Acm9jay1jaGlwcy5jb20+CgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8S2V2
ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKIMKgLSBLZXZlcgo+IC0tLQo+ICAgZHJp
dmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMgfCAxMiArKysrKystLS0tLS0KPiAgIDEg
ZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMgYi9kcml2ZXJzL3JhbS9y
b2NrY2hpcC9zZHJhbV9yazMzOTkuYwo+IGluZGV4IGRlNWQ4YzFiNWYuLjg1ZmY0N2YxMzMgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMKPiArKysgYi9k
cml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYwo+IEBAIC0xNjEsNyArMTYxLDcgQEAg
c3RhdGljIHZvaWQgc2V0X2RzX29kdChjb25zdCBzdHJ1Y3QgY2hhbl9pbmZvICpjaGFuLAo+ICAg
CXUzMiB0c2VsX2lkbGVfZW4sIHRzZWxfd3JfZW4sIHRzZWxfcmRfZW47Cj4gICAJdTMyIHRzZWxf
aWRsZV9zZWxlY3RfcCwgdHNlbF93cl9zZWxlY3RfcCwgdHNlbF9yZF9zZWxlY3RfcDsKPiAgIAl1
MzIgY2FfdHNlbF93cl9zZWxlY3RfcCwgY2FfdHNlbF93cl9zZWxlY3RfbjsKPiAtCXUzMiB0c2Vs
X2lkbGVfc2VsZWN0X24sIHRzZWxfd3Jfc2VsZWN0X24sIHRzZWxfcmRfc2VsZWN0X247Cj4gKwl1
MzIgdHNlbF9pZGxlX3NlbGVjdF9uLCB0c2VsX3dyX3NlbGVjdF9kcV9uLCB0c2VsX3JkX3NlbGVj
dF9uOwo+ICAgCXUzMiByZWdfdmFsdWU7Cj4gICAKPiAgIAlpZiAocGFyYW1zLT5iYXNlLmRyYW10
eXBlID09IExQRERSNCkgewo+IEBAIC0xNzEsNyArMTcxLDcgQEAgc3RhdGljIHZvaWQgc2V0X2Rz
X29kdChjb25zdCBzdHJ1Y3QgY2hhbl9pbmZvICpjaGFuLAo+ICAgCQl0c2VsX2lkbGVfc2VsZWN0
X3AgPSBQSFlfRFJWX09EVF9ISV9aOwo+ICAgCj4gICAJCXRzZWxfcmRfc2VsZWN0X24gPSBQSFlf
RFJWX09EVF8yNDA7Cj4gLQkJdHNlbF93cl9zZWxlY3RfbiA9IFBIWV9EUlZfT0RUXzQwOwo+ICsJ
CXRzZWxfd3Jfc2VsZWN0X2RxX24gPSBQSFlfRFJWX09EVF80MDsKPiAgIAkJY2FfdHNlbF93cl9z
ZWxlY3RfbiA9IFBIWV9EUlZfT0RUXzQwOwo+ICAgCQl0c2VsX2lkbGVfc2VsZWN0X24gPSBQSFlf
RFJWX09EVF8yNDA7Cj4gICAJfSBlbHNlIGlmIChwYXJhbXMtPmJhc2UuZHJhbXR5cGUgPT0gTFBE
RFIzKSB7Cj4gQEAgLTE4MSw3ICsxODEsNyBAQCBzdGF0aWMgdm9pZCBzZXRfZHNfb2R0KGNvbnN0
IHN0cnVjdCBjaGFuX2luZm8gKmNoYW4sCj4gICAJCXRzZWxfaWRsZV9zZWxlY3RfcCA9IFBIWV9E
UlZfT0RUXzI0MDsKPiAgIAo+ICAgCQl0c2VsX3JkX3NlbGVjdF9uID0gUEhZX0RSVl9PRFRfSElf
WjsKPiAtCQl0c2VsX3dyX3NlbGVjdF9uID0gUEhZX0RSVl9PRFRfMzRfMzsKPiArCQl0c2VsX3dy
X3NlbGVjdF9kcV9uID0gUEhZX0RSVl9PRFRfMzRfMzsKPiAgIAkJY2FfdHNlbF93cl9zZWxlY3Rf
biA9IFBIWV9EUlZfT0RUXzQ4Owo+ICAgCQl0c2VsX2lkbGVfc2VsZWN0X24gPSBQSFlfRFJWX09E
VF9ISV9aOwo+ICAgCX0gZWxzZSB7Cj4gQEAgLTE5MSw3ICsxOTEsNyBAQCBzdGF0aWMgdm9pZCBz
ZXRfZHNfb2R0KGNvbnN0IHN0cnVjdCBjaGFuX2luZm8gKmNoYW4sCj4gICAJCXRzZWxfaWRsZV9z
ZWxlY3RfcCA9IFBIWV9EUlZfT0RUXzI0MDsKPiAgIAo+ICAgCQl0c2VsX3JkX3NlbGVjdF9uID0g
UEhZX0RSVl9PRFRfMjQwOwo+IC0JCXRzZWxfd3Jfc2VsZWN0X24gPSBQSFlfRFJWX09EVF8zNF8z
Owo+ICsJCXRzZWxfd3Jfc2VsZWN0X2RxX24gPSBQSFlfRFJWX09EVF8zNF8zOwo+ICAgCQljYV90
c2VsX3dyX3NlbGVjdF9uID0gUEhZX0RSVl9PRFRfMzRfMzsKPiAgIAkJdHNlbF9pZGxlX3NlbGVj
dF9uID0gUEhZX0RSVl9PRFRfMjQwOwo+ICAgCX0KPiBAQCAtMjEwLDcgKzIxMCw3IEBAIHN0YXRp
YyB2b2lkIHNldF9kc19vZHQoY29uc3Qgc3RydWN0IGNoYW5faW5mbyAqY2hhbiwKPiAgIAkgKiBm
b3Igd3JpdGUgY3ljbGVzIGZvciBEUS9ETQo+ICAgCSAqLwo+ICAgCXJlZ192YWx1ZSA9IHRzZWxf
cmRfc2VsZWN0X24gfCAodHNlbF9yZF9zZWxlY3RfcCA8PCAweDQpIHwKPiAtCQkgICAgKHRzZWxf
d3Jfc2VsZWN0X24gPDwgOCkgfCAodHNlbF93cl9zZWxlY3RfcCA8PCAxMikgfAo+ICsJCSAgICAo
dHNlbF93cl9zZWxlY3RfZHFfbiA8PCA4KSB8ICh0c2VsX3dyX3NlbGVjdF9wIDw8IDEyKSB8Cj4g
ICAJCSAgICAodHNlbF9pZGxlX3NlbGVjdF9uIDw8IDE2KSB8ICh0c2VsX2lkbGVfc2VsZWN0X3Ag
PDwgMjApOwo+ICAgCWNscnNldGJpdHNfbGUzMigmZGVuYWxpX3BoeVs2XSwgMHhmZmZmZmYsIHJl
Z192YWx1ZSk7Cj4gICAJY2xyc2V0Yml0c19sZTMyKCZkZW5hbGlfcGh5WzEzNF0sIDB4ZmZmZmZm
LCByZWdfdmFsdWUpOwo+IEBAIC0yNTAsNyArMjUwLDcgQEAgc3RhdGljIHZvaWQgc2V0X2RzX29k
dChjb25zdCBzdHJ1Y3QgY2hhbl9pbmZvICpjaGFuLAo+ICAgCj4gICAJLyogcGh5X3BhZF9mZGJr
X2RyaXZlIDIzYml0IERFTkFMSV9QSFlfOTI0LzkyNSAqLwo+ICAgCWNscnNldGJpdHNfbGUzMigm
ZGVuYWxpX3BoeVs5MjRdLCAweGZmLAo+IC0JCQl0c2VsX3dyX3NlbGVjdF9uIHwgKHRzZWxfd3Jf
c2VsZWN0X3AgPDwgNCkpOwo+ICsJCQl0c2VsX3dyX3NlbGVjdF9kcV9uIHwgKHRzZWxfd3Jfc2Vs
ZWN0X3AgPDwgNCkpOwo+ICAgCWNscnNldGJpdHNfbGUzMigmZGVuYWxpX3BoeVs5MjVdLCAweGZm
LAo+ICAgCQkJdHNlbF9yZF9zZWxlY3RfbiB8ICh0c2VsX3JkX3NlbGVjdF9wIDw8IDQpKTsKPiAg
IAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
