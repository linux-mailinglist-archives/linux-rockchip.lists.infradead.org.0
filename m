Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 699E36A959
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 15:15:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0uz8s1I0B1EtlLC4d0HoNtlCreEwNqyLxzNycgV2MuU=; b=OqLSRrIM4Kdmetm2duHvzCkO8
	npUhtrzALjCzliTRpoQgV+tA8jaAgZOYbeCIX3Q+ImCx9BS8jhEOy0bDbQk2onD5odezCn5MYqxAW
	XB9jxq2iQbjLEtAUoejb9zcAp+ADPPpb3LR9JureFKFHp4zJJb/bVmrZ3rGE5oTSN4bqKzcMWnwW4
	mXiLzkrmlwh4EAuuBCUHMC4ApedH4oaQN67j/fIWwghjJNEoyqrcKYMhRf0e1u4ytwByLUbQlFByt
	vyuSlQ3OuF2FDCopogazjtvDArT5R74N87M9ScDCM3V3gJe0+FL/Df/6FDBe0ng3Vwu2mKtL54+Jg
	VCrV9HFYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnNJ0-0003LV-QC; Tue, 16 Jul 2019 13:15:42 +0000
Received: from regular1.263xmail.com ([211.150.70.200])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnNIw-0003KP-LX
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 13:15:40 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.141])
 by regular1.263xmail.com (Postfix) with ESMTP id F01C332F;
 Tue, 16 Jul 2019 21:15:36 +0800 (CST)
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
 P28302T140709839501056S1563282926386828_; 
 Tue, 16 Jul 2019 21:15:34 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <a16535c66be6016c489dcc91b593762a>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 35/57] ram: rk3399: Add tsel control clock drive
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-36-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <e8ffb393-354e-f94d-32e8-8a6da53a851f@rock-chips.com>
Date: Tue, 16 Jul 2019 21:15:27 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-36-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_061539_124176_9B21103F 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.200 listed in list.dnswl.org]
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

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU3LCBKYWdhbiBUZWtpIHdyb3RlOgo+IHRzZWwgY29udHJs
IGNsb2NrIGRyaXZlcyBhcmUgcmVxdWlyZWQgdG8gY29uZmlndXJlIFBIWQo+IDkyOSwgOTM5IGNv
bnRyb2xzIGRyaXZlIHNldHRpbmdzLgo+Cj4gQWRkIHN1cHBvcnQgZm9yIHRoZXNlIGNvbnRyb2wg
Y2xvY2sgZm9yIGFsbCBkcmFtdHlwZQo+IHNkcmFtcy4KPgo+IFRoc2UgY29udHJvbCBjbG9jayBk
cml2ZXMgYXJlIGNvbmZpZ3VyZSB2aWEgdHNlbF9ja2NzX3NlbGVjdF9wCj4gYW5kIHRzZWxfY2tj
c19zZWxlY3RfbiB2YXJpYWJsZXMuCj4KPiB0c2VsX2NrY3Nfc2VsZWN0X24gaXMgUEhZX0RSVl9P
RFRfMzRfMyB2YWx1ZSB3aGVyZSBhcwo+IHRzZWxfY2tjc19zZWxlY3RfcCBpcyByZXRyaXZlZCBm
cm9tIElPIHNldHRpbmdzIGZvciBscGRkcjQKPiBhbmQgcmVzdCB1c2VzIFBIWV9EUlZfT0RUXzM0
XzMuCj4KPiBTaWduZWQtb2ZmLWJ5OiBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25z
LmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBZb3VNaW4gQ2hlbiA8Y3ltQHJvY2stY2hpcHMuY29tPgoK
UmV2aWV3ZWQtYnk6IEtldmVyIFlhbmcgPEtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+CgpUaGFu
a3MsCiDCoC0gS2V2ZXIKPiAtLS0KPiAgIGRyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5
OS5jIHwgMTYgKysrKysrKysrKysrKystLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlv
bnMoKyksIDIgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9yYW0vcm9ja2No
aXAvc2RyYW1fcmszMzk5LmMgYi9kcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYwo+
IGluZGV4IDFiOGNlNTE2MGYuLmMzOGVhMWQyODQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9yYW0v
cm9ja2NoaXAvc2RyYW1fcmszMzk5LmMKPiArKysgYi9kcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJh
bV9yazMzOTkuYwo+IEBAIC01NjAsNiArNTYwLDcgQEAgc3RhdGljIHZvaWQgc2V0X2RzX29kdChj
b25zdCBzdHJ1Y3QgY2hhbl9pbmZvICpjaGFuLAo+ICAgCXUzMiB0c2VsX2lkbGVfc2VsZWN0X24s
IHRzZWxfcmRfc2VsZWN0X247Cj4gICAJdTMyIHRzZWxfd3Jfc2VsZWN0X2RxX3AsIHRzZWxfd3Jf
c2VsZWN0X2NhX3A7Cj4gICAJdTMyIHRzZWxfd3Jfc2VsZWN0X2RxX24sIHRzZWxfd3Jfc2VsZWN0
X2NhX247Cj4gKwl1MzIgdHNlbF9ja2NzX3NlbGVjdF9wLCB0c2VsX2NrY3Nfc2VsZWN0X247Cj4g
ICAJc3RydWN0IGlvX3NldHRpbmcgKmlvID0gTlVMTDsKPiAgIAl1MzIgcmVnX3ZhbHVlOwo+ICAg
Cj4gQEAgLTU3Nyw2ICs1NzgsOSBAQCBzdGF0aWMgdm9pZCBzZXRfZHNfb2R0KGNvbnN0IHN0cnVj
dCBjaGFuX2luZm8gKmNoYW4sCj4gICAKPiAgIAkJdHNlbF93cl9zZWxlY3RfY2FfcCA9IGlvLT53
cl9jYV9kcnY7Cj4gICAJCXRzZWxfd3Jfc2VsZWN0X2NhX24gPSBQSFlfRFJWX09EVF80MDsKPiAr
Cj4gKwkJdHNlbF9ja2NzX3NlbGVjdF9wID0gaW8tPndyX2NrY3NfZHJ2Owo+ICsJCXRzZWxfY2tj
c19zZWxlY3RfbiA9IFBIWV9EUlZfT0RUXzM0XzM7Cj4gICAJfSBlbHNlIGlmIChwYXJhbXMtPmJh
c2UuZHJhbXR5cGUgPT0gTFBERFIzKSB7Cj4gICAJCXRzZWxfcmRfc2VsZWN0X3AgPSBQSFlfRFJW
X09EVF8yNDA7Cj4gICAJCXRzZWxfcmRfc2VsZWN0X24gPSBQSFlfRFJWX09EVF9ISV9aOwo+IEBA
IC01ODksNiArNTkzLDkgQEAgc3RhdGljIHZvaWQgc2V0X2RzX29kdChjb25zdCBzdHJ1Y3QgY2hh
bl9pbmZvICpjaGFuLAo+ICAgCj4gICAJCXRzZWxfd3Jfc2VsZWN0X2NhX3AgPSBQSFlfRFJWX09E
VF80ODsKPiAgIAkJdHNlbF93cl9zZWxlY3RfY2FfbiA9IFBIWV9EUlZfT0RUXzQ4Owo+ICsKPiAr
CQl0c2VsX2NrY3Nfc2VsZWN0X3AgPSBQSFlfRFJWX09EVF8zNF8zOwo+ICsJCXRzZWxfY2tjc19z
ZWxlY3RfbiA9IFBIWV9EUlZfT0RUXzM0XzM7Cj4gICAJfSBlbHNlIHsKPiAgIAkJdHNlbF9yZF9z
ZWxlY3RfcCA9IFBIWV9EUlZfT0RUXzI0MDsKPiAgIAkJdHNlbF9yZF9zZWxlY3RfbiA9IFBIWV9E
UlZfT0RUXzI0MDsKPiBAQCAtNjAxLDYgKzYwOCw5IEBAIHN0YXRpYyB2b2lkIHNldF9kc19vZHQo
Y29uc3Qgc3RydWN0IGNoYW5faW5mbyAqY2hhbiwKPiAgIAo+ICAgCQl0c2VsX3dyX3NlbGVjdF9j
YV9wID0gUEhZX0RSVl9PRFRfMzRfMzsKPiAgIAkJdHNlbF93cl9zZWxlY3RfY2FfbiA9IFBIWV9E
UlZfT0RUXzM0XzM7Cj4gKwo+ICsJCXRzZWxfY2tjc19zZWxlY3RfcCA9IFBIWV9EUlZfT0RUXzM0
XzM7Cj4gKwkJdHNlbF9ja2NzX3NlbGVjdF9uID0gUEhZX0RSVl9PRFRfMzRfMzsKPiAgIAl9Cj4g
ICAKPiAgIAlpZiAocGFyYW1zLT5iYXNlLm9kdCA9PSAxKQo+IEBAIC02NTksMTAgKzY2OSwxMiBA
QCBzdGF0aWMgdm9pZCBzZXRfZHNfb2R0KGNvbnN0IHN0cnVjdCBjaGFuX2luZm8gKmNoYW4sCj4g
ICAJY2xyc2V0Yml0c19sZTMyKCZkZW5hbGlfcGh5WzkzNV0sIDB4ZmYsIHJlZ192YWx1ZSk7Cj4g
ICAKPiAgIAkvKiBwaHlfcGFkX2NzX2RyaXZlIDhiaXRzIERFTkFMSV9QSFlfOTM5IG9mZnNldF8w
ICovCj4gLQljbHJzZXRiaXRzX2xlMzIoJmRlbmFsaV9waHlbOTM5XSwgMHhmZiwgcmVnX3ZhbHVl
KTsKPiArCWNscnNldGJpdHNfbGUzMigmZGVuYWxpX3BoeVs5MzldLCAweGZmLAo+ICsJCQl0c2Vs
X2NrY3Nfc2VsZWN0X24gfCAodHNlbF9ja2NzX3NlbGVjdF9wIDw8IDB4NCkpOwo+ICAgCj4gICAJ
LyogcGh5X3BhZF9jbGtfZHJpdmUgOGJpdHMgREVOQUxJX1BIWV85Mjkgb2Zmc2V0XzAgKi8KPiAt
CWNscnNldGJpdHNfbGUzMigmZGVuYWxpX3BoeVs5MjldLCAweGZmLCByZWdfdmFsdWUpOwo+ICsJ
Y2xyc2V0Yml0c19sZTMyKCZkZW5hbGlfcGh5WzkyOV0sIDB4ZmYsCj4gKwkJCXRzZWxfY2tjc19z
ZWxlY3RfbiB8ICh0c2VsX2NrY3Nfc2VsZWN0X3AgPDwgMHg0KSk7Cj4gICAKPiAgIAkvKiBwaHlf
cGFkX2ZkYmtfZHJpdmUgMjNiaXQgREVOQUxJX1BIWV85MjQvOTI1ICovCj4gICAJY2xyc2V0Yml0
c19sZTMyKCZkZW5hbGlfcGh5WzkyNF0sIDB4ZmYsCgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
