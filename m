Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E55F6A2F0
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 09:29:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=E5schITC8X8toJ3pS2kNlyGYO5X2LXLBqnxSBSq7tbw=; b=QX/sbg3JI6CADpkckuKNTUR7Q
	yyt5HEVeloRcQylqR5rZ3qwCxgs1Du5IixnpjFtPI59pQKl9eI0nw7jdwAJ8YPwuj8Pbzwn3QbsVY
	H7rP+zU7CDmf7+1AwWkURoPjhv17k50upD5EslrPpWmlDzcQr2QWKz3mR+vUSD/9UjwARKvDnA0BF
	RpdjK1BjQmUlDe3mJ0DlVNGBHRn2Uesg0McHBvUn2g5Y6bfI9fSNaajTWVtAUY8S3sfI0Sfef0vFO
	fZs94sC1QTdgOjaHy4A7EobPNS23J2e0gmQDQEeYzHc5XD1JFKc0gV/pCWaO4NqtVeDJjkxjrs1U0
	jhaIVL4qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnHuB-0001Eo-6u; Tue, 16 Jul 2019 07:29:43 +0000
Received: from regular1.263xmail.com ([211.150.70.198])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnHu1-0001E7-Hl
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 07:29:41 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.42])
 by regular1.263xmail.com (Postfix) with ESMTP id AD1182BB;
 Tue, 16 Jul 2019 15:29:28 +0800 (CST)
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
 P11806T140322667484928S1563262167635455_; 
 Tue, 16 Jul 2019 15:29:28 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <3d31ff37591f7506a0265e5b7d67db49>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: manivannan.sadhasivam@linaro.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_v3_03/15=5d_ram=3a_rk3399=3a_s/sdram=5fpar?=
 =?UTF-8?B?YW1zL3BhcmFtc+OAkOivt+azqOaEj++8jOmCruS7tueUsWxpbnV4LXJvY2tjaGlw?=
 =?UTF-8?Q?-bounces+kever=2eyang=3drock-chips=2ecom=40lists=2einfradead=2eor?=
 =?UTF-8?B?Z+S7o+WPkeOAkQ==?=
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190715182110.21336-1-jagan@amarulasolutions.com>
 <20190715182110.21336-4-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <e638f90f-aedd-64d7-cf0f-7e12ff056664@rock-chips.com>
Date: Tue, 16 Jul 2019 15:29:27 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190715182110.21336-4-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_002939_366440_7DC059C2 
X-CRM114-Status: GOOD (  16.74  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.198 listed in list.dnswl.org]
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
Cc: linux-rockchip@lists.infradead.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-amarula@amarulasolutions.com, gajjar04akash@gmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvNy8xNiDkuIrljYgyOjIwLCBKYWdhbiBUZWtpIHdyb3RlOgo+IFJlbmFtZSB2YXJp
YWJsZSBuYW1lIG9mIHN0cnVjdCByazMzOTlfc2RyYW1fcGFyYW1zCj4gZnJvbSBzZHJhbV9wYXJh
bXMgd2l0aCBwYXJhbXMgZm9yIG1vcmUgY29kZSByZWFkYWJpbGl0eS4KPgo+IE5vIGZ1bmN0aW9u
YWxpdHkgY2hhbmdlLgo+Cj4gU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVraSA8amFnYW5AYW1hcnVs
YXNvbHV0aW9ucy5jb20+CgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8S2V2ZXIueWFuZ0Byb2Nr
LWNoaXBzLmNvbT4KClRoYW5rcywKIMKgLSBLZXZlcgo+IC0tLQo+ICAgZHJpdmVycy9yYW0vcm9j
a2NoaXAvc2RyYW1fcmszMzk5LmMgfCAxNjAgKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLQo+
ICAgMSBmaWxlIGNoYW5nZWQsIDc4IGluc2VydGlvbnMoKyksIDgyIGRlbGV0aW9ucygtKQo+Cj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jIGIvZHJpdmVy
cy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMKPiBpbmRleCA3MzM4NjRmNWQyLi5jOTE4YzJl
NTg4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jCj4g
KysrIGIvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMKPiBAQCAtMTExLDEwICsx
MTEsOSBAQCBzdGF0aWMgdm9pZCBwaHlfZGxsX2J5cGFzc19zZXQoc3RydWN0IHJrMzM5OV9kZHJf
cHVibF9yZWdzICpkZHJfcHVibF9yZWdzLAo+ICAgfQo+ICAgCj4gICBzdGF0aWMgdm9pZCBzZXRf
bWVtb3J5X21hcChjb25zdCBzdHJ1Y3QgY2hhbl9pbmZvICpjaGFuLCB1MzIgY2hhbm5lbCwKPiAt
CQkJICAgY29uc3Qgc3RydWN0IHJrMzM5OV9zZHJhbV9wYXJhbXMgKnNkcmFtX3BhcmFtcykKPiAr
CQkJICAgY29uc3Qgc3RydWN0IHJrMzM5OV9zZHJhbV9wYXJhbXMgKnBhcmFtcykKPiAgIHsKPiAt
CWNvbnN0IHN0cnVjdCByazMzOTlfc2RyYW1fY2hhbm5lbCAqc2RyYW1fY2ggPQo+IC0JCSZzZHJh
bV9wYXJhbXMtPmNoW2NoYW5uZWxdOwo+ICsJY29uc3Qgc3RydWN0IHJrMzM5OV9zZHJhbV9jaGFu
bmVsICpzZHJhbV9jaCA9ICZwYXJhbXMtPmNoW2NoYW5uZWxdOwo+ICAgCXUzMiAqZGVuYWxpX2N0
bCA9IGNoYW4tPnBjdGwtPmRlbmFsaV9jdGw7Cj4gICAJdTMyICpkZW5hbGlfcGkgPSBjaGFuLT5w
aS0+ZGVuYWxpX3BpOwo+ICAgCXUzMiBjc19tYXA7Cj4gQEAgLTE1MCwxMiArMTQ5LDEyIEBAIHN0
YXRpYyB2b2lkIHNldF9tZW1vcnlfbWFwKGNvbnN0IHN0cnVjdCBjaGFuX2luZm8gKmNoYW4sIHUz
MiBjaGFubmVsLAo+ICAgCQkJKCgxNiAtIHJvdykgPDwgMjQpKTsKPiAgIAkvKiBQSV80MSBQSV9D
U19NQVA6Ulc6MjQ6NCAqLwo+ICAgCWNscnNldGJpdHNfbGUzMigmZGVuYWxpX3BpWzQxXSwgMHhm
IDw8IDI0LCBjc19tYXAgPDwgMjQpOwo+IC0JaWYgKHNkcmFtX2NoLT5yYW5rID09IDEgJiYgc2Ry
YW1fcGFyYW1zLT5iYXNlLmRyYW10eXBlID09IEREUjMpCj4gKwlpZiAoc2RyYW1fY2gtPnJhbmsg
PT0gMSAmJiBwYXJhbXMtPmJhc2UuZHJhbXR5cGUgPT0gRERSMykKPiAgIAkJd3JpdGVsKDB4MkVD
N0ZGRkYsICZkZW5hbGlfcGlbMzRdKTsKPiAgIH0KPiAgIAo+ICAgc3RhdGljIHZvaWQgc2V0X2Rz
X29kdChjb25zdCBzdHJ1Y3QgY2hhbl9pbmZvICpjaGFuLAo+IC0JCSAgICAgICBjb25zdCBzdHJ1
Y3QgcmszMzk5X3NkcmFtX3BhcmFtcyAqc2RyYW1fcGFyYW1zKQo+ICsJCSAgICAgICBjb25zdCBz
dHJ1Y3QgcmszMzk5X3NkcmFtX3BhcmFtcyAqcGFyYW1zKQo+ICAgewo+ICAgCXUzMiAqZGVuYWxp
X3BoeSA9IGNoYW4tPnB1YmwtPmRlbmFsaV9waHk7Cj4gICAKPiBAQCAtMTY1LDcgKzE2NCw3IEBA
IHN0YXRpYyB2b2lkIHNldF9kc19vZHQoY29uc3Qgc3RydWN0IGNoYW5faW5mbyAqY2hhbiwKPiAg
IAl1MzIgdHNlbF9pZGxlX3NlbGVjdF9uLCB0c2VsX3dyX3NlbGVjdF9uLCB0c2VsX3JkX3NlbGVj
dF9uOwo+ICAgCXUzMiByZWdfdmFsdWU7Cj4gICAKPiAtCWlmIChzZHJhbV9wYXJhbXMtPmJhc2Uu
ZHJhbXR5cGUgPT0gTFBERFI0KSB7Cj4gKwlpZiAocGFyYW1zLT5iYXNlLmRyYW10eXBlID09IExQ
RERSNCkgewo+ICAgCQl0c2VsX3JkX3NlbGVjdF9wID0gUEhZX0RSVl9PRFRfSElfWjsKPiAgIAkJ
dHNlbF93cl9zZWxlY3RfcCA9IFBIWV9EUlZfT0RUXzQwOwo+ICAgCQljYV90c2VsX3dyX3NlbGVj
dF9wID0gUEhZX0RSVl9PRFRfNDA7Cj4gQEAgLTE3NSw3ICsxNzQsNyBAQCBzdGF0aWMgdm9pZCBz
ZXRfZHNfb2R0KGNvbnN0IHN0cnVjdCBjaGFuX2luZm8gKmNoYW4sCj4gICAJCXRzZWxfd3Jfc2Vs
ZWN0X24gPSBQSFlfRFJWX09EVF80MDsKPiAgIAkJY2FfdHNlbF93cl9zZWxlY3RfbiA9IFBIWV9E
UlZfT0RUXzQwOwo+ICAgCQl0c2VsX2lkbGVfc2VsZWN0X24gPSBQSFlfRFJWX09EVF8yNDA7Cj4g
LQl9IGVsc2UgaWYgKHNkcmFtX3BhcmFtcy0+YmFzZS5kcmFtdHlwZSA9PSBMUEREUjMpIHsKPiAr
CX0gZWxzZSBpZiAocGFyYW1zLT5iYXNlLmRyYW10eXBlID09IExQRERSMykgewo+ICAgCQl0c2Vs
X3JkX3NlbGVjdF9wID0gUEhZX0RSVl9PRFRfMjQwOwo+ICAgCQl0c2VsX3dyX3NlbGVjdF9wID0g
UEhZX0RSVl9PRFRfMzRfMzsKPiAgIAkJY2FfdHNlbF93cl9zZWxlY3RfcCA9IFBIWV9EUlZfT0RU
XzQ4Owo+IEBAIC0xOTcsNyArMTk2LDcgQEAgc3RhdGljIHZvaWQgc2V0X2RzX29kdChjb25zdCBz
dHJ1Y3QgY2hhbl9pbmZvICpjaGFuLAo+ICAgCQl0c2VsX2lkbGVfc2VsZWN0X24gPSBQSFlfRFJW
X09EVF8yNDA7Cj4gICAJfQo+ICAgCj4gLQlpZiAoc2RyYW1fcGFyYW1zLT5iYXNlLm9kdCA9PSAx
KQo+ICsJaWYgKHBhcmFtcy0+YmFzZS5vZHQgPT0gMSkKPiAgIAkJdHNlbF9yZF9lbiA9IDE7Cj4g
ICAJZWxzZQo+ICAgCQl0c2VsX3JkX2VuID0gMDsKPiBAQCAtMjk0LDcgKzI5Myw3IEBAIHN0YXRp
YyB2b2lkIHNldF9kc19vZHQoY29uc3Qgc3RydWN0IGNoYW5faW5mbyAqY2hhbiwKPiAgIH0KPiAg
IAo+ICAgc3RhdGljIGludCBwaHlfaW9fY29uZmlnKGNvbnN0IHN0cnVjdCBjaGFuX2luZm8gKmNo
YW4sCj4gLQkJCSBjb25zdCBzdHJ1Y3QgcmszMzk5X3NkcmFtX3BhcmFtcyAqc2RyYW1fcGFyYW1z
KQo+ICsJCQkgY29uc3Qgc3RydWN0IHJrMzM5OV9zZHJhbV9wYXJhbXMgKnBhcmFtcykKPiAgIHsK
PiAgIAl1MzIgKmRlbmFsaV9waHkgPSBjaGFuLT5wdWJsLT5kZW5hbGlfcGh5Owo+ICAgCXUzMiB2
cmVmX21vZGVfZHEsIHZyZWZfdmFsdWVfZHEsIHZyZWZfbW9kZV9hYywgdnJlZl92YWx1ZV9hYzsK
PiBAQCAtMzA0LDE0ICszMDMsMTQgQEAgc3RhdGljIGludCBwaHlfaW9fY29uZmlnKGNvbnN0IHN0
cnVjdCBjaGFuX2luZm8gKmNoYW4sCj4gICAJdTMyIHNwZWVkOwo+ICAgCj4gICAJLyogdnJlZiBz
ZXR0aW5nICovCj4gLQlpZiAoc2RyYW1fcGFyYW1zLT5iYXNlLmRyYW10eXBlID09IExQRERSNCkg
ewo+ICsJaWYgKHBhcmFtcy0+YmFzZS5kcmFtdHlwZSA9PSBMUEREUjQpIHsKPiAgIAkJLyogTFBE
RFI0ICovCj4gICAJCXZyZWZfbW9kZV9kcSA9IDB4NjsKPiAgIAkJdnJlZl92YWx1ZV9kcSA9IDB4
MWY7Cj4gICAJCXZyZWZfbW9kZV9hYyA9IDB4NjsKPiAgIAkJdnJlZl92YWx1ZV9hYyA9IDB4MWY7
Cj4gLQl9IGVsc2UgaWYgKHNkcmFtX3BhcmFtcy0+YmFzZS5kcmFtdHlwZSA9PSBMUEREUjMpIHsK
PiAtCQlpZiAoc2RyYW1fcGFyYW1zLT5iYXNlLm9kdCA9PSAxKSB7Cj4gKwl9IGVsc2UgaWYgKHBh
cmFtcy0+YmFzZS5kcmFtdHlwZSA9PSBMUEREUjMpIHsKPiArCQlpZiAocGFyYW1zLT5iYXNlLm9k
dCA9PSAxKSB7Cj4gICAJCQl2cmVmX21vZGVfZHEgPSAweDU7ICAvKiBMUEREUjMgT0RUICovCj4g
ICAJCQlkcnZfdmFsdWUgPSAocmVhZGwoJmRlbmFsaV9waHlbNl0pID4+IDEyKSAmIDB4ZjsKPiAg
IAkJCW9kdF92YWx1ZSA9IChyZWFkbCgmZGVuYWxpX3BoeVs2XSkgPj4gNCkgJiAweGY7Cj4gQEAg
LTM3MCw3ICszNjksNyBAQCBzdGF0aWMgaW50IHBoeV9pb19jb25maWcoY29uc3Qgc3RydWN0IGNo
YW5faW5mbyAqY2hhbiwKPiAgIAkJfQo+ICAgCQl2cmVmX21vZGVfYWMgPSAweDI7Cj4gICAJCXZy
ZWZfdmFsdWVfYWMgPSAweDFmOwo+IC0JfSBlbHNlIGlmIChzZHJhbV9wYXJhbXMtPmJhc2UuZHJh
bXR5cGUgPT0gRERSMykgewo+ICsJfSBlbHNlIGlmIChwYXJhbXMtPmJhc2UuZHJhbXR5cGUgPT0g
RERSMykgewo+ICAgCQkvKiBERFIzTCAqLwo+ICAgCQl2cmVmX21vZGVfZHEgPSAweDE7Cj4gICAJ
CXZyZWZfdmFsdWVfZHEgPSAweDFmOwo+IEBAIC0zOTcsMTEgKzM5NiwxMSBAQCBzdGF0aWMgaW50
IHBoeV9pb19jb25maWcoY29uc3Qgc3RydWN0IGNoYW5faW5mbyAqY2hhbiwKPiAgIAkvKiBQSFlf
OTE1IFBIWV9QQURfVlJFRl9DVFJMX0FDIDEyYml0cyBvZmZzZXRfMTYgKi8KPiAgIAljbHJzZXRi
aXRzX2xlMzIoJmRlbmFsaV9waHlbOTE1XSwgMHhmZmYgPDwgMTYsIHJlZ192YWx1ZSA8PCAxNik7
Cj4gICAKPiAtCWlmIChzZHJhbV9wYXJhbXMtPmJhc2UuZHJhbXR5cGUgPT0gTFBERFI0KQo+ICsJ
aWYgKHBhcmFtcy0+YmFzZS5kcmFtdHlwZSA9PSBMUEREUjQpCj4gICAJCW1vZGVfc2VsID0gMHg2
Owo+IC0JZWxzZSBpZiAoc2RyYW1fcGFyYW1zLT5iYXNlLmRyYW10eXBlID09IExQRERSMykKPiAr
CWVsc2UgaWYgKHBhcmFtcy0+YmFzZS5kcmFtdHlwZSA9PSBMUEREUjMpCj4gICAJCW1vZGVfc2Vs
ID0gMHgwOwo+IC0JZWxzZSBpZiAoc2RyYW1fcGFyYW1zLT5iYXNlLmRyYW10eXBlID09IEREUjMp
Cj4gKwllbHNlIGlmIChwYXJhbXMtPmJhc2UuZHJhbXR5cGUgPT0gRERSMykKPiAgIAkJbW9kZV9z
ZWwgPSAweDE7Cj4gICAJZWxzZQo+ICAgCQlyZXR1cm4gLUVJTlZBTDsKPiBAQCAtNDI0LDExICs0
MjMsMTEgQEAgc3RhdGljIGludCBwaHlfaW9fY29uZmlnKGNvbnN0IHN0cnVjdCBjaGFuX2luZm8g
KmNoYW4sCj4gICAJY2xyc2V0Yml0c19sZTMyKCZkZW5hbGlfcGh5WzkzOV0sIDB4NyA8PCAxNCwg
bW9kZV9zZWwgPDwgMTQpOwo+ICAgCj4gICAJLyogc3BlZWQgc2V0dGluZyAqLwo+IC0JaWYgKHNk
cmFtX3BhcmFtcy0+YmFzZS5kZHJfZnJlcSA8IDQwMCkKPiArCWlmIChwYXJhbXMtPmJhc2UuZGRy
X2ZyZXEgPCA0MDApCj4gICAJCXNwZWVkID0gMHgwOwo+IC0JZWxzZSBpZiAoc2RyYW1fcGFyYW1z
LT5iYXNlLmRkcl9mcmVxIDwgODAwKQo+ICsJZWxzZSBpZiAocGFyYW1zLT5iYXNlLmRkcl9mcmVx
IDwgODAwKQo+ICAgCQlzcGVlZCA9IDB4MTsKPiAtCWVsc2UgaWYgKHNkcmFtX3BhcmFtcy0+YmFz
ZS5kZHJfZnJlcSA8IDEyMDApCj4gKwllbHNlIGlmIChwYXJhbXMtPmJhc2UuZGRyX2ZyZXEgPCAx
MjAwKQo+ICAgCQlzcGVlZCA9IDB4MjsKPiAgIAllbHNlCj4gICAJCXNwZWVkID0gMHgzOwo+IEBA
IC00NTQsMTMgKzQ1MywxMyBAQCBzdGF0aWMgaW50IHBoeV9pb19jb25maWcoY29uc3Qgc3RydWN0
IGNoYW5faW5mbyAqY2hhbiwKPiAgIH0KPiAgIAo+ICAgc3RhdGljIGludCBwY3RsX2NmZyhjb25z
dCBzdHJ1Y3QgY2hhbl9pbmZvICpjaGFuLCB1MzIgY2hhbm5lbCwKPiAtCQkgICAgY29uc3Qgc3Ry
dWN0IHJrMzM5OV9zZHJhbV9wYXJhbXMgKnNkcmFtX3BhcmFtcykKPiArCQkgICAgY29uc3Qgc3Ry
dWN0IHJrMzM5OV9zZHJhbV9wYXJhbXMgKnBhcmFtcykKPiAgIHsKPiAgIAl1MzIgKmRlbmFsaV9j
dGwgPSBjaGFuLT5wY3RsLT5kZW5hbGlfY3RsOwo+ICAgCXUzMiAqZGVuYWxpX3BpID0gY2hhbi0+
cGktPmRlbmFsaV9waTsKPiAgIAl1MzIgKmRlbmFsaV9waHkgPSBjaGFuLT5wdWJsLT5kZW5hbGlf
cGh5Owo+IC0JY29uc3QgdTMyICpwYXJhbXNfY3RsID0gc2RyYW1fcGFyYW1zLT5wY3RsX3JlZ3Mu
ZGVuYWxpX2N0bDsKPiAtCWNvbnN0IHUzMiAqcGFyYW1zX3BoeSA9IHNkcmFtX3BhcmFtcy0+cGh5
X3JlZ3MuZGVuYWxpX3BoeTsKPiArCWNvbnN0IHUzMiAqcGFyYW1zX2N0bCA9IHBhcmFtcy0+cGN0
bF9yZWdzLmRlbmFsaV9jdGw7Cj4gKwljb25zdCB1MzIgKnBhcmFtc19waHkgPSBwYXJhbXMtPnBo
eV9yZWdzLmRlbmFsaV9waHk7Cj4gICAJdTMyIHRtcCwgdG1wMSwgdG1wMjsKPiAgIAl1MzIgcHdy
dXBfc3JlZnJlc2hfZXhpdDsKPiAgIAlpbnQgcmV0Owo+IEBAIC00NzQsMTUgKzQ3MywxNSBAQCBz
dGF0aWMgaW50IHBjdGxfY2ZnKGNvbnN0IHN0cnVjdCBjaGFuX2luZm8gKmNoYW4sIHUzMiBjaGFu
bmVsLAo+ICAgCQkgICAgc2l6ZW9mKHN0cnVjdCByazMzOTlfZGRyX3BjdGxfcmVncykgLSA0KTsK
PiAgIAl3cml0ZWwocGFyYW1zX2N0bFswXSwgJmRlbmFsaV9jdGxbMF0pOwo+ICAgCj4gLQljb3B5
X3RvX3JlZyhkZW5hbGlfcGksICZzZHJhbV9wYXJhbXMtPnBpX3JlZ3MuZGVuYWxpX3BpWzBdLAo+
ICsJY29weV90b19yZWcoZGVuYWxpX3BpLCAmcGFyYW1zLT5waV9yZWdzLmRlbmFsaV9waVswXSwK
PiAgIAkJICAgIHNpemVvZihzdHJ1Y3QgcmszMzk5X2Rkcl9waV9yZWdzKSk7Cj4gICAKPiAgIAkv
KiByYW5rIGNvdW50IG5lZWQgdG8gc2V0IGZvciBpbml0ICovCj4gLQlzZXRfbWVtb3J5X21hcChj
aGFuLCBjaGFubmVsLCBzZHJhbV9wYXJhbXMpOwo+ICsJc2V0X21lbW9yeV9tYXAoY2hhbiwgY2hh
bm5lbCwgcGFyYW1zKTsKPiAgIAo+IC0Jd3JpdGVsKHNkcmFtX3BhcmFtcy0+cGh5X3JlZ3MuZGVu
YWxpX3BoeVs5MTBdLCAmZGVuYWxpX3BoeVs5MTBdKTsKPiAtCXdyaXRlbChzZHJhbV9wYXJhbXMt
PnBoeV9yZWdzLmRlbmFsaV9waHlbOTExXSwgJmRlbmFsaV9waHlbOTExXSk7Cj4gLQl3cml0ZWwo
c2RyYW1fcGFyYW1zLT5waHlfcmVncy5kZW5hbGlfcGh5WzkxMl0sICZkZW5hbGlfcGh5WzkxMl0p
Owo+ICsJd3JpdGVsKHBhcmFtcy0+cGh5X3JlZ3MuZGVuYWxpX3BoeVs5MTBdLCAmZGVuYWxpX3Bo
eVs5MTBdKTsKPiArCXdyaXRlbChwYXJhbXMtPnBoeV9yZWdzLmRlbmFsaV9waHlbOTExXSwgJmRl
bmFsaV9waHlbOTExXSk7Cj4gKwl3cml0ZWwocGFyYW1zLT5waHlfcmVncy5kZW5hbGlfcGh5Wzkx
Ml0sICZkZW5hbGlfcGh5WzkxMl0pOwo+ICAgCj4gICAJcHdydXBfc3JlZnJlc2hfZXhpdCA9IHJl
YWRsKCZkZW5hbGlfY3RsWzY4XSkgJiBQV1JVUF9TUkVGUkVTSF9FWElUOwo+ICAgCWNscmJpdHNf
bGUzMigmZGVuYWxpX2N0bFs2OF0sIFBXUlVQX1NSRUZSRVNIX0VYSVQpOwo+IEBAIC01MTMsNyAr
NTEyLDcgQEAgc3RhdGljIGludCBwY3RsX2NmZyhjb25zdCBzdHJ1Y3QgY2hhbl9pbmZvICpjaGFu
LCB1MzIgY2hhbm5lbCwKPiAgIAljb3B5X3RvX3JlZygmZGVuYWxpX3BoeVs1MTJdLCAmcGFyYW1z
X3BoeVs1MTJdLCAoNTQ5IC0gNTEyICsgMSkgKiA0KTsKPiAgIAljb3B5X3RvX3JlZygmZGVuYWxp
X3BoeVs2NDBdLCAmcGFyYW1zX3BoeVs2NDBdLCAoNjc3IC0gNjQwICsgMSkgKiA0KTsKPiAgIAlj
b3B5X3RvX3JlZygmZGVuYWxpX3BoeVs3NjhdLCAmcGFyYW1zX3BoeVs3NjhdLCAoODA1IC0gNzY4
ICsgMSkgKiA0KTsKPiAtCXNldF9kc19vZHQoY2hhbiwgc2RyYW1fcGFyYW1zKTsKPiArCXNldF9k
c19vZHQoY2hhbiwgcGFyYW1zKTsKPiAgIAo+ICAgCS8qCj4gICAJICogcGh5X2Rxc190c2VsX3dy
X3RpbWluZ19YIDhiaXRzIERFTkFMSV9QSFlfODQvMjEyLzM0MC80Njggb2Zmc2V0XzgKPiBAQCAt
NTQxLDcgKzU0MCw3IEBAIHN0YXRpYyBpbnQgcGN0bF9jZmcoY29uc3Qgc3RydWN0IGNoYW5faW5m
byAqY2hhbiwgdTMyIGNoYW5uZWwsCj4gICAJdG1wID0gKHJlYWRsKCZkZW5hbGlfcGh5WzQ2N10p
ID4+IDE2KSAmIDB4ZmY7Cj4gICAJY2xyc2V0Yml0c19sZTMyKCZkZW5hbGlfcGh5WzQ2N10sIDB4
ZmYgPDwgMTYsICh0bXAgKyAweDEwKSA8PCAxNik7Cj4gICAKPiAtCXJldCA9IHBoeV9pb19jb25m
aWcoY2hhbiwgc2RyYW1fcGFyYW1zKTsKPiArCXJldCA9IHBoeV9pb19jb25maWcoY2hhbiwgcGFy
YW1zKTsKPiAgIAlpZiAocmV0KQo+ICAgCQlyZXR1cm4gcmV0Owo+ICAgCj4gQEAgLTYxMiwxMyAr
NjExLDEzIEBAIHN0YXRpYyB2b2lkIG92ZXJyaWRlX3dyaXRlX2xldmVsaW5nX3ZhbHVlKGNvbnN0
IHN0cnVjdCBjaGFuX2luZm8gKmNoYW4pCj4gICB9Cj4gICAKPiAgIHN0YXRpYyBpbnQgZGF0YV90
cmFpbmluZ19jYShjb25zdCBzdHJ1Y3QgY2hhbl9pbmZvICpjaGFuLCB1MzIgY2hhbm5lbCwKPiAt
CQkJICAgIGNvbnN0IHN0cnVjdCByazMzOTlfc2RyYW1fcGFyYW1zICpzZHJhbV9wYXJhbXMpCj4g
KwkJCSAgICBjb25zdCBzdHJ1Y3QgcmszMzk5X3NkcmFtX3BhcmFtcyAqcGFyYW1zKQo+ICAgewo+
ICAgCXUzMiAqZGVuYWxpX3BpID0gY2hhbi0+cGktPmRlbmFsaV9waTsKPiAgIAl1MzIgKmRlbmFs
aV9waHkgPSBjaGFuLT5wdWJsLT5kZW5hbGlfcGh5Owo+ICAgCXUzMiBpLCB0bXA7Cj4gICAJdTMy
IG9ic18wLCBvYnNfMSwgb2JzXzIsIG9ic19lcnIgPSAwOwo+IC0JdTMyIHJhbmsgPSBzZHJhbV9w
YXJhbXMtPmNoW2NoYW5uZWxdLnJhbms7Cj4gKwl1MzIgcmFuayA9IHBhcmFtcy0+Y2hbY2hhbm5l
bF0ucmFuazsKPiAgIAo+ICAgCWZvciAoaSA9IDA7IGkgPCByYW5rOyBpKyspIHsKPiAgIAkJc2Vs
ZWN0X3Blcl9jc190cmFpbmluZ19pbmRleChjaGFuLCBpKTsKPiBAQCAtNjY2LDEzICs2NjUsMTMg
QEAgc3RhdGljIGludCBkYXRhX3RyYWluaW5nX2NhKGNvbnN0IHN0cnVjdCBjaGFuX2luZm8gKmNo
YW4sIHUzMiBjaGFubmVsLAo+ICAgfQo+ICAgCj4gICBzdGF0aWMgaW50IGRhdGFfdHJhaW5pbmdf
d2woY29uc3Qgc3RydWN0IGNoYW5faW5mbyAqY2hhbiwgdTMyIGNoYW5uZWwsCj4gLQkJCSAgICBj
b25zdCBzdHJ1Y3QgcmszMzk5X3NkcmFtX3BhcmFtcyAqc2RyYW1fcGFyYW1zKQo+ICsJCQkgICAg
Y29uc3Qgc3RydWN0IHJrMzM5OV9zZHJhbV9wYXJhbXMgKnBhcmFtcykKPiAgIHsKPiAgIAl1MzIg
KmRlbmFsaV9waSA9IGNoYW4tPnBpLT5kZW5hbGlfcGk7Cj4gICAJdTMyICpkZW5hbGlfcGh5ID0g
Y2hhbi0+cHVibC0+ZGVuYWxpX3BoeTsKPiAgIAl1MzIgaSwgdG1wOwo+ICAgCXUzMiBvYnNfMCwg
b2JzXzEsIG9ic18yLCBvYnNfMywgb2JzX2VyciA9IDA7Cj4gLQl1MzIgcmFuayA9IHNkcmFtX3Bh
cmFtcy0+Y2hbY2hhbm5lbF0ucmFuazsKPiArCXUzMiByYW5rID0gcGFyYW1zLT5jaFtjaGFubmVs
XS5yYW5rOwo+ICAgCj4gICAJZm9yIChpID0gMDsgaSA8IHJhbms7IGkrKykgewo+ICAgCQlzZWxl
Y3RfcGVyX2NzX3RyYWluaW5nX2luZGV4KGNoYW4sIGkpOwo+IEBAIC03MjUsMTMgKzcyNCwxMyBA
QCBzdGF0aWMgaW50IGRhdGFfdHJhaW5pbmdfd2woY29uc3Qgc3RydWN0IGNoYW5faW5mbyAqY2hh
biwgdTMyIGNoYW5uZWwsCj4gICB9Cj4gICAKPiAgIHN0YXRpYyBpbnQgZGF0YV90cmFpbmluZ19y
Zyhjb25zdCBzdHJ1Y3QgY2hhbl9pbmZvICpjaGFuLCB1MzIgY2hhbm5lbCwKPiAtCQkJICAgIGNv
bnN0IHN0cnVjdCByazMzOTlfc2RyYW1fcGFyYW1zICpzZHJhbV9wYXJhbXMpCj4gKwkJCSAgICBj
b25zdCBzdHJ1Y3QgcmszMzk5X3NkcmFtX3BhcmFtcyAqcGFyYW1zKQo+ICAgewo+ICAgCXUzMiAq
ZGVuYWxpX3BpID0gY2hhbi0+cGktPmRlbmFsaV9waTsKPiAgIAl1MzIgKmRlbmFsaV9waHkgPSBj
aGFuLT5wdWJsLT5kZW5hbGlfcGh5Owo+ICAgCXUzMiBpLCB0bXA7Cj4gICAJdTMyIG9ic18wLCBv
YnNfMSwgb2JzXzIsIG9ic18zLCBvYnNfZXJyID0gMDsKPiAtCXUzMiByYW5rID0gc2RyYW1fcGFy
YW1zLT5jaFtjaGFubmVsXS5yYW5rOwo+ICsJdTMyIHJhbmsgPSBwYXJhbXMtPmNoW2NoYW5uZWxd
LnJhbms7Cj4gICAKPiAgIAlmb3IgKGkgPSAwOyBpIDwgcmFuazsgaSsrKSB7Cj4gICAJCXNlbGVj
dF9wZXJfY3NfdHJhaW5pbmdfaW5kZXgoY2hhbiwgaSk7Cj4gQEAgLTc4NiwxMSArNzg1LDExIEBA
IHN0YXRpYyBpbnQgZGF0YV90cmFpbmluZ19yZyhjb25zdCBzdHJ1Y3QgY2hhbl9pbmZvICpjaGFu
LCB1MzIgY2hhbm5lbCwKPiAgIH0KPiAgIAo+ICAgc3RhdGljIGludCBkYXRhX3RyYWluaW5nX3Js
KGNvbnN0IHN0cnVjdCBjaGFuX2luZm8gKmNoYW4sIHUzMiBjaGFubmVsLAo+IC0JCQkgICAgY29u
c3Qgc3RydWN0IHJrMzM5OV9zZHJhbV9wYXJhbXMgKnNkcmFtX3BhcmFtcykKPiArCQkJICAgIGNv
bnN0IHN0cnVjdCByazMzOTlfc2RyYW1fcGFyYW1zICpwYXJhbXMpCj4gICB7Cj4gICAJdTMyICpk
ZW5hbGlfcGkgPSBjaGFuLT5waS0+ZGVuYWxpX3BpOwo+ICAgCXUzMiBpLCB0bXA7Cj4gLQl1MzIg
cmFuayA9IHNkcmFtX3BhcmFtcy0+Y2hbY2hhbm5lbF0ucmFuazsKPiArCXUzMiByYW5rID0gcGFy
YW1zLT5jaFtjaGFubmVsXS5yYW5rOwo+ICAgCj4gICAJZm9yIChpID0gMDsgaSA8IHJhbms7IGkr
Kykgewo+ICAgCQlzZWxlY3RfcGVyX2NzX3RyYWluaW5nX2luZGV4KGNoYW4sIGkpOwo+IEBAIC04
MzEsMTEgKzgzMCwxMSBAQCBzdGF0aWMgaW50IGRhdGFfdHJhaW5pbmdfcmwoY29uc3Qgc3RydWN0
IGNoYW5faW5mbyAqY2hhbiwgdTMyIGNoYW5uZWwsCj4gICB9Cj4gICAKPiAgIHN0YXRpYyBpbnQg
ZGF0YV90cmFpbmluZ193ZHFsKGNvbnN0IHN0cnVjdCBjaGFuX2luZm8gKmNoYW4sIHUzMiBjaGFu
bmVsLAo+IC0JCQkgICAgICBjb25zdCBzdHJ1Y3QgcmszMzk5X3NkcmFtX3BhcmFtcyAqc2RyYW1f
cGFyYW1zKQo+ICsJCQkgICAgICBjb25zdCBzdHJ1Y3QgcmszMzk5X3NkcmFtX3BhcmFtcyAqcGFy
YW1zKQo+ICAgewo+ICAgCXUzMiAqZGVuYWxpX3BpID0gY2hhbi0+cGktPmRlbmFsaV9waTsKPiAg
IAl1MzIgaSwgdG1wOwo+IC0JdTMyIHJhbmsgPSBzZHJhbV9wYXJhbXMtPmNoW2NoYW5uZWxdLnJh
bms7Cj4gKwl1MzIgcmFuayA9IHBhcmFtcy0+Y2hbY2hhbm5lbF0ucmFuazsKPiAgIAo+ICAgCWZv
ciAoaSA9IDA7IGkgPCByYW5rOyBpKyspIHsKPiAgIAkJc2VsZWN0X3Blcl9jc190cmFpbmluZ19p
bmRleChjaGFuLCBpKTsKPiBAQCAtODc2LDcgKzg3NSw3IEBAIHN0YXRpYyBpbnQgZGF0YV90cmFp
bmluZ193ZHFsKGNvbnN0IHN0cnVjdCBjaGFuX2luZm8gKmNoYW4sIHUzMiBjaGFubmVsLAo+ICAg
fQo+ICAgCj4gICBzdGF0aWMgaW50IGRhdGFfdHJhaW5pbmcoY29uc3Qgc3RydWN0IGNoYW5faW5m
byAqY2hhbiwgdTMyIGNoYW5uZWwsCj4gLQkJCSBjb25zdCBzdHJ1Y3QgcmszMzk5X3NkcmFtX3Bh
cmFtcyAqc2RyYW1fcGFyYW1zLAo+ICsJCQkgY29uc3Qgc3RydWN0IHJrMzM5OV9zZHJhbV9wYXJh
bXMgKnBhcmFtcywKPiAgIAkJCSB1MzIgdHJhaW5pbmdfZmxhZykKPiAgIHsKPiAgIAl1MzIgKmRl
bmFsaV9waHkgPSBjaGFuLT5wdWJsLT5kZW5hbGlfcGh5Owo+IEBAIC04ODUsMTQgKzg4NCwxNCBA
QCBzdGF0aWMgaW50IGRhdGFfdHJhaW5pbmcoY29uc3Qgc3RydWN0IGNoYW5faW5mbyAqY2hhbiwg
dTMyIGNoYW5uZWwsCj4gICAJc2V0Yml0c19sZTMyKCZkZW5hbGlfcGh5WzkyN10sICgxIDw8IDIy
KSk7Cj4gICAKPiAgIAlpZiAodHJhaW5pbmdfZmxhZyA9PSBQSV9GVUxMX1RSQUlOSU5HKSB7Cj4g
LQkJaWYgKHNkcmFtX3BhcmFtcy0+YmFzZS5kcmFtdHlwZSA9PSBMUEREUjQpIHsKPiArCQlpZiAo
cGFyYW1zLT5iYXNlLmRyYW10eXBlID09IExQRERSNCkgewo+ICAgCQkJdHJhaW5pbmdfZmxhZyA9
IFBJX0NBX1RSQUlOSU5HIHwgUElfV1JJVEVfTEVWRUxJTkcgfAo+ICAgCQkJCQlQSV9SRUFEX0dB
VEVfVFJBSU5JTkcgfAo+ICAgCQkJCQlQSV9SRUFEX0xFVkVMSU5HIHwgUElfV0RRX0xFVkVMSU5H
Owo+IC0JCX0gZWxzZSBpZiAoc2RyYW1fcGFyYW1zLT5iYXNlLmRyYW10eXBlID09IExQRERSMykg
ewo+ICsJCX0gZWxzZSBpZiAocGFyYW1zLT5iYXNlLmRyYW10eXBlID09IExQRERSMykgewo+ICAg
CQkJdHJhaW5pbmdfZmxhZyA9IFBJX0NBX1RSQUlOSU5HIHwgUElfV1JJVEVfTEVWRUxJTkcgfAo+
ICAgCQkJCQlQSV9SRUFEX0dBVEVfVFJBSU5JTkc7Cj4gLQkJfSBlbHNlIGlmIChzZHJhbV9wYXJh
bXMtPmJhc2UuZHJhbXR5cGUgPT0gRERSMykgewo+ICsJCX0gZWxzZSBpZiAocGFyYW1zLT5iYXNl
LmRyYW10eXBlID09IEREUjMpIHsKPiAgIAkJCXRyYWluaW5nX2ZsYWcgPSBQSV9XUklURV9MRVZF
TElORyB8Cj4gICAJCQkJCVBJX1JFQURfR0FURV9UUkFJTklORyB8Cj4gICAJCQkJCVBJX1JFQURf
TEVWRUxJTkc7Cj4gQEAgLTkwMSwyMyArOTAwLDIzIEBAIHN0YXRpYyBpbnQgZGF0YV90cmFpbmlu
Zyhjb25zdCBzdHJ1Y3QgY2hhbl9pbmZvICpjaGFuLCB1MzIgY2hhbm5lbCwKPiAgIAo+ICAgCS8q
IGNhIHRyYWluaW5nKExQRERSNCxMUEREUjMgc3VwcG9ydCkgKi8KPiAgIAlpZiAoKHRyYWluaW5n
X2ZsYWcgJiBQSV9DQV9UUkFJTklORykgPT0gUElfQ0FfVFJBSU5JTkcpCj4gLQkJZGF0YV90cmFp
bmluZ19jYShjaGFuLCBjaGFubmVsLCBzZHJhbV9wYXJhbXMpOwo+ICsJCWRhdGFfdHJhaW5pbmdf
Y2EoY2hhbiwgY2hhbm5lbCwgcGFyYW1zKTsKPiAgIAo+ICAgCS8qIHdyaXRlIGxldmVsaW5nKExQ
RERSNCxMUEREUjMsRERSMyBzdXBwb3J0KSAqLwo+ICAgCWlmICgodHJhaW5pbmdfZmxhZyAmIFBJ
X1dSSVRFX0xFVkVMSU5HKSA9PSBQSV9XUklURV9MRVZFTElORykKPiAtCQlkYXRhX3RyYWluaW5n
X3dsKGNoYW4sIGNoYW5uZWwsIHNkcmFtX3BhcmFtcyk7Cj4gKwkJZGF0YV90cmFpbmluZ193bChj
aGFuLCBjaGFubmVsLCBwYXJhbXMpOwo+ICAgCj4gICAJLyogcmVhZCBnYXRlIHRyYWluaW5nKExQ
RERSNCxMUEREUjMsRERSMyBzdXBwb3J0KSAqLwo+ICAgCWlmICgodHJhaW5pbmdfZmxhZyAmIFBJ
X1JFQURfR0FURV9UUkFJTklORykgPT0gUElfUkVBRF9HQVRFX1RSQUlOSU5HKQo+IC0JCWRhdGFf
dHJhaW5pbmdfcmcoY2hhbiwgY2hhbm5lbCwgc2RyYW1fcGFyYW1zKTsKPiArCQlkYXRhX3RyYWlu
aW5nX3JnKGNoYW4sIGNoYW5uZWwsIHBhcmFtcyk7Cj4gICAKPiAgIAkvKiByZWFkIGxldmVsaW5n
KExQRERSNCxMUEREUjMsRERSMyBzdXBwb3J0KSAqLwo+ICAgCWlmICgodHJhaW5pbmdfZmxhZyAm
IFBJX1JFQURfTEVWRUxJTkcpID09IFBJX1JFQURfTEVWRUxJTkcpCj4gLQkJZGF0YV90cmFpbmlu
Z19ybChjaGFuLCBjaGFubmVsLCBzZHJhbV9wYXJhbXMpOwo+ICsJCWRhdGFfdHJhaW5pbmdfcmwo
Y2hhbiwgY2hhbm5lbCwgcGFyYW1zKTsKPiAgIAo+ICAgCS8qIHdkcSBsZXZlbGluZyhMUEREUjQg
c3VwcG9ydCkgKi8KPiAgIAlpZiAoKHRyYWluaW5nX2ZsYWcgJiBQSV9XRFFfTEVWRUxJTkcpID09
IFBJX1dEUV9MRVZFTElORykKPiAtCQlkYXRhX3RyYWluaW5nX3dkcWwoY2hhbiwgY2hhbm5lbCwg
c2RyYW1fcGFyYW1zKTsKPiArCQlkYXRhX3RyYWluaW5nX3dkcWwoY2hhbiwgY2hhbm5lbCwgcGFy
YW1zKTsKPiAgIAo+ICAgCS8qIFBIWV85MjcgUEhZX1BBRF9EUVNfRFJJVkUgIFJQVUxMIG9mZnNl
dF8yMiAqLwo+ICAgCWNscmJpdHNfbGUzMigmZGVuYWxpX3BoeVs5MjddLCAoMSA8PCAyMikpOwo+
IEBAIC05MjYsNyArOTI1LDcgQEAgc3RhdGljIGludCBkYXRhX3RyYWluaW5nKGNvbnN0IHN0cnVj
dCBjaGFuX2luZm8gKmNoYW4sIHUzMiBjaGFubmVsLAo+ICAgfQo+ICAgCj4gICBzdGF0aWMgdm9p
ZCBzZXRfZGRyY29uZmlnKGNvbnN0IHN0cnVjdCBjaGFuX2luZm8gKmNoYW4sCj4gLQkJCSAgY29u
c3Qgc3RydWN0IHJrMzM5OV9zZHJhbV9wYXJhbXMgKnNkcmFtX3BhcmFtcywKPiArCQkJICBjb25z
dCBzdHJ1Y3QgcmszMzk5X3NkcmFtX3BhcmFtcyAqcGFyYW1zLAo+ICAgCQkJICB1bnNpZ25lZCBj
aGFyIGNoYW5uZWwsIHUzMiBkZHJjb25maWcpCj4gICB7Cj4gICAJLyogb25seSBuZWVkIHRvIHNl
dCBkZHJjb25maWcgKi8KPiBAQCAtOTM0LDE0ICs5MzMsMTQgQEAgc3RhdGljIHZvaWQgc2V0X2Rk
cmNvbmZpZyhjb25zdCBzdHJ1Y3QgY2hhbl9pbmZvICpjaGFuLAo+ICAgCXVuc2lnbmVkIGludCBj
czBfY2FwID0gMDsKPiAgIAl1bnNpZ25lZCBpbnQgY3MxX2NhcCA9IDA7Cj4gICAKPiAtCWNzMF9j
YXAgPSAoMSA8PCAoc2RyYW1fcGFyYW1zLT5jaFtjaGFubmVsXS5jczBfcm93Cj4gLQkJCSsgc2Ry
YW1fcGFyYW1zLT5jaFtjaGFubmVsXS5jb2wKPiAtCQkJKyBzZHJhbV9wYXJhbXMtPmNoW2NoYW5u
ZWxdLmJrCj4gLQkJCSsgc2RyYW1fcGFyYW1zLT5jaFtjaGFubmVsXS5idyAtIDIwKSk7Cj4gLQlp
ZiAoc2RyYW1fcGFyYW1zLT5jaFtjaGFubmVsXS5yYW5rID4gMSkKPiAtCQljczFfY2FwID0gY3Mw
X2NhcCA+PiAoc2RyYW1fcGFyYW1zLT5jaFtjaGFubmVsXS5jczBfcm93Cj4gLQkJCQktIHNkcmFt
X3BhcmFtcy0+Y2hbY2hhbm5lbF0uY3MxX3Jvdyk7Cj4gLQlpZiAoc2RyYW1fcGFyYW1zLT5jaFtj
aGFubmVsXS5yb3dfM180KSB7Cj4gKwljczBfY2FwID0gKDEgPDwgKHBhcmFtcy0+Y2hbY2hhbm5l
bF0uY3MwX3Jvdwo+ICsJCQkrIHBhcmFtcy0+Y2hbY2hhbm5lbF0uY29sCj4gKwkJCSsgcGFyYW1z
LT5jaFtjaGFubmVsXS5iawo+ICsJCQkrIHBhcmFtcy0+Y2hbY2hhbm5lbF0uYncgLSAyMCkpOwo+
ICsJaWYgKHBhcmFtcy0+Y2hbY2hhbm5lbF0ucmFuayA+IDEpCj4gKwkJY3MxX2NhcCA9IGNzMF9j
YXAgPj4gKHBhcmFtcy0+Y2hbY2hhbm5lbF0uY3MwX3Jvdwo+ICsJCQkJLSBwYXJhbXMtPmNoW2No
YW5uZWxdLmNzMV9yb3cpOwo+ICsJaWYgKHBhcmFtcy0+Y2hbY2hhbm5lbF0ucm93XzNfNCkgewo+
ICAgCQljczBfY2FwID0gY3MwX2NhcCAqIDMgLyA0Owo+ICAgCQljczFfY2FwID0gY3MxX2NhcCAq
IDMgLyA0Owo+ICAgCX0KPiBAQCAtOTUyLDI0ICs5NTEsMjIgQEAgc3RhdGljIHZvaWQgc2V0X2Rk
cmNvbmZpZyhjb25zdCBzdHJ1Y3QgY2hhbl9pbmZvICpjaGFuLAo+ICAgfQo+ICAgCj4gICBzdGF0
aWMgdm9pZCBkcmFtX2FsbF9jb25maWcoc3RydWN0IGRyYW1faW5mbyAqZHJhbSwKPiAtCQkJICAg
IGNvbnN0IHN0cnVjdCByazMzOTlfc2RyYW1fcGFyYW1zICpzZHJhbV9wYXJhbXMpCj4gKwkJCSAg
ICBjb25zdCBzdHJ1Y3QgcmszMzk5X3NkcmFtX3BhcmFtcyAqcGFyYW1zKQo+ICAgewo+ICAgCXUz
MiBzeXNfcmVnID0gMDsKPiAgIAl1bnNpZ25lZCBpbnQgY2hhbm5lbCwgaWR4Owo+ICAgCj4gLQlz
eXNfcmVnIHw9IHNkcmFtX3BhcmFtcy0+YmFzZS5kcmFtdHlwZSA8PCBTWVNfUkVHX0REUlRZUEVf
U0hJRlQ7Cj4gLQlzeXNfcmVnIHw9IChzZHJhbV9wYXJhbXMtPmJhc2UubnVtX2NoYW5uZWxzIC0g
MSkKPiAtCQkgICAgPDwgU1lTX1JFR19OVU1fQ0hfU0hJRlQ7Cj4gKwlzeXNfcmVnIHw9IHBhcmFt
cy0+YmFzZS5kcmFtdHlwZSA8PCBTWVNfUkVHX0REUlRZUEVfU0hJRlQ7Cj4gKwlzeXNfcmVnIHw9
IChwYXJhbXMtPmJhc2UubnVtX2NoYW5uZWxzIC0gMSkgPDwgU1lTX1JFR19OVU1fQ0hfU0hJRlQ7
Cj4gICAKPiAgIAlmb3IgKGNoYW5uZWwgPSAwLCBpZHggPSAwOwo+IC0JICAgICAoaWR4IDwgc2Ry
YW1fcGFyYW1zLT5iYXNlLm51bV9jaGFubmVscykgJiYgKGNoYW5uZWwgPCAyKTsKPiArCSAgICAg
KGlkeCA8IHBhcmFtcy0+YmFzZS5udW1fY2hhbm5lbHMpICYmIChjaGFubmVsIDwgMik7Cj4gICAJ
ICAgICBjaGFubmVsKyspIHsKPiAtCQljb25zdCBzdHJ1Y3QgcmszMzk5X3NkcmFtX2NoYW5uZWwg
KmluZm8gPQo+IC0JCQkmc2RyYW1fcGFyYW1zLT5jaFtjaGFubmVsXTsKPiArCQljb25zdCBzdHJ1
Y3QgcmszMzk5X3NkcmFtX2NoYW5uZWwgKmluZm8gPSAmcGFyYW1zLT5jaFtjaGFubmVsXTsKPiAg
IAkJc3RydWN0IHJrMzM5OV9tc2NoX3JlZ3MgKmRkcl9tc2NoX3JlZ3M7Cj4gICAJCWNvbnN0IHN0
cnVjdCByazMzOTlfbXNjaF90aW1pbmdzICpub2NfdGltaW5nOwo+ICAgCj4gLQkJaWYgKHNkcmFt
X3BhcmFtcy0+Y2hbY2hhbm5lbF0uY29sID09IDApCj4gKwkJaWYgKHBhcmFtcy0+Y2hbY2hhbm5l
bF0uY29sID09IDApCj4gICAJCQljb250aW51ZTsKPiAgIAkJaWR4Kys7Cj4gICAJCXN5c19yZWcg
fD0gaW5mby0+cm93XzNfNCA8PCBTWVNfUkVHX1JPV18zXzRfU0hJRlQoY2hhbm5lbCk7Cj4gQEAg
LTk4NSw3ICs5ODIsNyBAQCBzdGF0aWMgdm9pZCBkcmFtX2FsbF9jb25maWcoc3RydWN0IGRyYW1f
aW5mbyAqZHJhbSwKPiAgIAkJc3lzX3JlZyB8PSAoMiA+PiBpbmZvLT5kYncpIDw8IFNZU19SRUdf
REJXX1NISUZUKGNoYW5uZWwpOwo+ICAgCj4gICAJCWRkcl9tc2NoX3JlZ3MgPSBkcmFtLT5jaGFu
W2NoYW5uZWxdLm1zY2g7Cj4gLQkJbm9jX3RpbWluZyA9ICZzZHJhbV9wYXJhbXMtPmNoW2NoYW5u
ZWxdLm5vY190aW1pbmdzOwo+ICsJCW5vY190aW1pbmcgPSAmcGFyYW1zLT5jaFtjaGFubmVsXS5u
b2NfdGltaW5nczsKPiAgIAkJd3JpdGVsKG5vY190aW1pbmctPmRkcnRpbWluZ2EwLAo+ICAgCQkg
ICAgICAgJmRkcl9tc2NoX3JlZ3MtPmRkcnRpbWluZ2EwKTsKPiAgIAkJd3JpdGVsKG5vY190aW1p
bmctPmRkcnRpbWluZ2IwLAo+IEBAIC05OTgsMTQgKzk5NSwxNCBAQCBzdGF0aWMgdm9pZCBkcmFt
X2FsbF9jb25maWcoc3RydWN0IGRyYW1faW5mbyAqZHJhbSwKPiAgIAkJICAgICAgICZkZHJfbXNj
aF9yZWdzLT5kZHJtb2RlKTsKPiAgIAo+ICAgCQkvKiByYW5rIDEgbWVtb3J5IGNsb2NrIGRpc2Fi
bGUgKGRmaV9kcmFtX2Nsa19kaXNhYmxlID0gMSkgKi8KPiAtCQlpZiAoc2RyYW1fcGFyYW1zLT5j
aFtjaGFubmVsXS5yYW5rID09IDEpCj4gKwkJaWYgKHBhcmFtcy0+Y2hbY2hhbm5lbF0ucmFuayA9
PSAxKQo+ICAgCQkJc2V0Yml0c19sZTMyKCZkcmFtLT5jaGFuW2NoYW5uZWxdLnBjdGwtPmRlbmFs
aV9jdGxbMjc2XSwKPiAgIAkJCQkgICAgIDEgPDwgMTcpOwo+ICAgCX0KPiAgIAo+ICAgCXdyaXRl
bChzeXNfcmVnLCAmZHJhbS0+cG11Z3JmLT5vc19yZWcyKTsKPiAgIAlya19jbHJzZXRyZWcoJmRy
YW0tPnBtdXNncmYtPnNvY19jb240LCAweDFmIDw8IDEwLAo+IC0JCSAgICAgc2RyYW1fcGFyYW1z
LT5iYXNlLnN0cmlkZSA8PCAxMCk7Cj4gKwkJICAgICBwYXJhbXMtPmJhc2Uuc3RyaWRlIDw8IDEw
KTsKPiAgIAo+ICAgCS8qIHJlYm9vdCBob2xkIHJlZ2lzdGVyIHNldCAqLwo+ICAgCXdyaXRlbChQ
UkVTRVRfU0dSRl9IT0xEKDApIHwgUFJFU0VUX0dQSU8wX0hPTEQoMSkgfAo+IEBAIC0xMDE1LDEx
ICsxMDEyLDExIEBAIHN0YXRpYyB2b2lkIGRyYW1fYWxsX2NvbmZpZyhzdHJ1Y3QgZHJhbV9pbmZv
ICpkcmFtLAo+ICAgfQo+ICAgCj4gICBzdGF0aWMgaW50IHN3aXRjaF90b19waHlfaW5kZXgxKHN0
cnVjdCBkcmFtX2luZm8gKmRyYW0sCj4gLQkJCQljb25zdCBzdHJ1Y3QgcmszMzk5X3NkcmFtX3Bh
cmFtcyAqc2RyYW1fcGFyYW1zKQo+ICsJCQkJY29uc3Qgc3RydWN0IHJrMzM5OV9zZHJhbV9wYXJh
bXMgKnBhcmFtcykKPiAgIHsKPiAgIAl1MzIgY2hhbm5lbDsKPiAgIAl1MzIgKmRlbmFsaV9waHk7
Cj4gLQl1MzIgY2hfY291bnQgPSBzZHJhbV9wYXJhbXMtPmJhc2UubnVtX2NoYW5uZWxzOwo+ICsJ
dTMyIGNoX2NvdW50ID0gcGFyYW1zLT5iYXNlLm51bV9jaGFubmVsczsKPiAgIAlpbnQgcmV0Owo+
ICAgCWludCBpID0gMDsKPiAgIAo+IEBAIC0xMDUwLDcgKzEwNDcsNyBAQCBzdGF0aWMgaW50IHN3
aXRjaF90b19waHlfaW5kZXgxKHN0cnVjdCBkcmFtX2luZm8gKmRyYW0sCj4gICAJCWRlbmFsaV9w
aHkgPSBkcmFtLT5jaGFuW2NoYW5uZWxdLnB1YmwtPmRlbmFsaV9waHk7Cj4gICAJCWNscnNldGJp
dHNfbGUzMigmZGVuYWxpX3BoeVs4OTZdLCAoMHgzIDw8IDgpIHwgMSwgMSA8PCA4KTsKPiAgIAkJ
cmV0ID0gZGF0YV90cmFpbmluZygmZHJhbS0+Y2hhbltjaGFubmVsXSwgY2hhbm5lbCwKPiAtCQkJ
CSAgICBzZHJhbV9wYXJhbXMsIFBJX0ZVTExfVFJBSU5JTkcpOwo+ICsJCQkJICAgIHBhcmFtcywg
UElfRlVMTF9UUkFJTklORyk7Cj4gICAJCWlmIChyZXQpIHsKPiAgIAkJCWRlYnVnKCJpbmRleDEg
dHJhaW5pbmcgZmFpbGVkXG4iKTsKPiAgIAkJCXJldHVybiByZXQ7Cj4gQEAgLTEwNjEsMTAgKzEw
NTgsMTAgQEAgc3RhdGljIGludCBzd2l0Y2hfdG9fcGh5X2luZGV4MShzdHJ1Y3QgZHJhbV9pbmZv
ICpkcmFtLAo+ICAgfQo+ICAgCj4gICBzdGF0aWMgaW50IHNkcmFtX2luaXQoc3RydWN0IGRyYW1f
aW5mbyAqZHJhbSwKPiAtCQkgICAgICBjb25zdCBzdHJ1Y3QgcmszMzk5X3NkcmFtX3BhcmFtcyAq
c2RyYW1fcGFyYW1zKQo+ICsJCSAgICAgIGNvbnN0IHN0cnVjdCByazMzOTlfc2RyYW1fcGFyYW1z
ICpwYXJhbXMpCj4gICB7Cj4gLQl1bnNpZ25lZCBjaGFyIGRyYW10eXBlID0gc2RyYW1fcGFyYW1z
LT5iYXNlLmRyYW10eXBlOwo+IC0JdW5zaWduZWQgaW50IGRkcl9mcmVxID0gc2RyYW1fcGFyYW1z
LT5iYXNlLmRkcl9mcmVxOwo+ICsJdW5zaWduZWQgY2hhciBkcmFtdHlwZSA9IHBhcmFtcy0+YmFz
ZS5kcmFtdHlwZTsKPiArCXVuc2lnbmVkIGludCBkZHJfZnJlcSA9IHBhcmFtcy0+YmFzZS5kZHJf
ZnJlcTsKPiAgIAlpbnQgY2hhbm5lbDsKPiAgIAo+ICAgCWRlYnVnKCJTdGFydGluZyBTRFJBTSBp
bml0aWFsaXphdGlvbi4uLlxuIik7Cj4gQEAgLTEwODIsMTAgKzEwNzksMTAgQEAgc3RhdGljIGlu
dCBzZHJhbV9pbml0KHN0cnVjdCBkcmFtX2luZm8gKmRyYW0sCj4gICAKPiAgIAkJcGh5X2RsbF9i
eXBhc3Nfc2V0KHB1YmwsIGRkcl9mcmVxKTsKPiAgIAo+IC0JCWlmIChjaGFubmVsID49IHNkcmFt
X3BhcmFtcy0+YmFzZS5udW1fY2hhbm5lbHMpCj4gKwkJaWYgKGNoYW5uZWwgPj0gcGFyYW1zLT5i
YXNlLm51bV9jaGFubmVscykKPiAgIAkJCWNvbnRpbnVlOwo+ICAgCj4gLQkJaWYgKHBjdGxfY2Zn
KGNoYW4sIGNoYW5uZWwsIHNkcmFtX3BhcmFtcykgIT0gMCkgewo+ICsJCWlmIChwY3RsX2NmZyhj
aGFuLCBjaGFubmVsLCBwYXJhbXMpICE9IDApIHsKPiAgIAkJCXByaW50ZigicGN0bF9jZmcgZmFp
bCwgcmVzZXRcbiIpOwo+ICAgCQkJcmV0dXJuIC1FSU87Cj4gICAJCX0KPiBAQCAtMTA5NCwxNyAr
MTA5MSwxNiBAQCBzdGF0aWMgaW50IHNkcmFtX2luaXQoc3RydWN0IGRyYW1faW5mbyAqZHJhbSwK
PiAgIAkJaWYgKGRyYW10eXBlID09IExQRERSMykKPiAgIAkJCXVkZWxheSgxMCk7Cj4gICAKPiAt
CQlpZiAoZGF0YV90cmFpbmluZyhjaGFuLCBjaGFubmVsLAo+IC0JCQkJICBzZHJhbV9wYXJhbXMs
IFBJX0ZVTExfVFJBSU5JTkcpKSB7Cj4gKwkJaWYgKGRhdGFfdHJhaW5pbmcoY2hhbiwgY2hhbm5l
bCwgcGFyYW1zLCBQSV9GVUxMX1RSQUlOSU5HKSkgewo+ICAgCQkJcHJpbnRmKCJTRFJBTSBpbml0
aWFsaXphdGlvbiBmYWlsZWQsIHJlc2V0XG4iKTsKPiAgIAkJCXJldHVybiAtRUlPOwo+ICAgCQl9
Cj4gICAKPiAtCQlzZXRfZGRyY29uZmlnKGNoYW4sIHNkcmFtX3BhcmFtcywgY2hhbm5lbCwKPiAt
CQkJICAgICAgc2RyYW1fcGFyYW1zLT5jaFtjaGFubmVsXS5kZHJjb25maWcpOwo+ICsJCXNldF9k
ZHJjb25maWcoY2hhbiwgcGFyYW1zLCBjaGFubmVsLAo+ICsJCQkgICAgICBwYXJhbXMtPmNoW2No
YW5uZWxdLmRkcmNvbmZpZyk7Cj4gICAJfQo+IC0JZHJhbV9hbGxfY29uZmlnKGRyYW0sIHNkcmFt
X3BhcmFtcyk7Cj4gLQlzd2l0Y2hfdG9fcGh5X2luZGV4MShkcmFtLCBzZHJhbV9wYXJhbXMpOwo+
ICsJZHJhbV9hbGxfY29uZmlnKGRyYW0sIHBhcmFtcyk7Cj4gKwlzd2l0Y2hfdG9fcGh5X2luZGV4
MShkcmFtLCBwYXJhbXMpOwo+ICAgCj4gICAJZGVidWcoIkZpbmlzaCBTRFJBTSBpbml0aWFsaXph
dGlvbi4uLlxuIik7Cj4gICAJcmV0dXJuIDA7CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
