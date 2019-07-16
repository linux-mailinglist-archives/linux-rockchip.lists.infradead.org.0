Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D136A958
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 15:15:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6kPQB7LLjwlVS7YORhfaXXw8Yqgz5ZaXiPo/KjzfyFQ=; b=FWtbktNWLEyoxQH3Ih8AHvgcN
	ifAhp1NRNuLSf4poT6X28CG8KkmDDQ6N+gZXbQ9qiLJ8Qb77H570O9jf2xWQdom9c29zGGA/ThKEP
	mk6QnLfkQLXMrmP5MTBTWoZwjC4SipV+6Avk00SNAGG05kPVrKvvppNVndw5Izqtyvi8Eej1Gnt6U
	wKxPukCuN/Pi3MP0FOsa/hPPRUjbVn8hkK0OIBNZ2YQ+AwgaZti63jc9hPuRsRnS38sn9PmNM0uTH
	gdLKwsKvW40pCUWDTpSNy85soq9pXgAA1lZ6CaOFN/Y0NZR+YyIMyGbZ5mW5T5s9pWNwWITzBhaKn
	3JH33GLCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnNIp-0003IC-UE; Tue, 16 Jul 2019 13:15:31 +0000
Received: from regular1.263xmail.com ([211.150.70.200])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnNIl-0003Hd-M0
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 13:15:29 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.103])
 by regular1.263xmail.com (Postfix) with ESMTP id E0818360;
 Tue, 16 Jul 2019 21:15:25 +0800 (CST)
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
 P8795T139710701754112S1563282915841994_; 
 Tue, 16 Jul 2019 21:15:23 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <7acf74f3b0de25029f972e2acc667974>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 34/57] ram: sdram: Configure lpddr4 tsel rd, wr based
 on IO settings
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-35-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <1e1c3268-a5e0-5119-483a-a1b41d202fab@rock-chips.com>
Date: Tue, 16 Jul 2019 21:15:16 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-35-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_061528_109155_07375FF0 
X-CRM114-Status: GOOD (  15.24  )
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

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU3LCBKYWdhbiBUZWtpIHdyb3RlOgo+IE5vdyB3ZSBoYXZl
IElPIHNldHRpbmdzIGF2YWlsYWJsZSBmb3IgYWxsIHN1cHBvcnRlZCBzZHJhbQo+IGZyZXF1ZW5j
aWVzLCBzbyByZXRyaWV2ZSB0aGVzZSBJTyBzZXR0aW5ncyBhbmQgbWFrZSB1c2VkCj4gZm9yIExQ
RERSNCBkcyBvZHQgY29uZmlndXJhdGlvbi4KPgo+IFNpZ25lZC1vZmYtYnk6IEphZ2FuIFRla2kg
PGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFlvdU1pbiBDaGVu
IDxjeW1Acm9jay1jaGlwcy5jb20+CgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8S2V2ZXIueWFu
Z0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKIMKgLSBLZXZlcgo+IC0tLQo+ICAgZHJpdmVycy9y
YW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMgfCA0MiArKysrKysrKysrKysrKysrKysrKysrKyst
LS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDM2IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0p
Cj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMgYi9k
cml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYwo+IGluZGV4IDk1ZDlmM2E4OGIuLjFi
OGNlNTE2MGYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5
LmMKPiArKysgYi9kcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYwo+IEBAIC0xODQs
NiArMTg0LDMzIEBAIHN0cnVjdCBpb19zZXR0aW5nIHsKPiAgIAl9LAo+ICAgfTsKPiAgIAo+ICsv
KioKPiArICogcGh5ID0gMCwgUEhZIGJvb3QgZnJlcQo+ICsgKiBwaHkgPSAxLCBQSFkgaW5kZXgg
MAo+ICsgKiBwaHkgPSAyLCBQSFkgaW5kZXggMQo+ICsgKi8KPiArc3RhdGljIHN0cnVjdCBpb19z
ZXR0aW5nICoKPiArbHBkZHI0X2dldF9pb19zZXR0aW5ncyhjb25zdCBzdHJ1Y3QgcmszMzk5X3Nk
cmFtX3BhcmFtcyAqcGFyYW1zLCB1MzIgbXI1KQo+ICt7Cj4gKwlzdHJ1Y3QgaW9fc2V0dGluZyAq
aW8gPSBOVUxMOwo+ICsJdTMyIG47Cj4gKwo+ICsJZm9yIChuID0gMDsgbiA8IEFSUkFZX1NJWkUo
bHBkZHI0X2lvX3NldHRpbmcpOyBuKyspIHsKPiArCQlpbyA9ICZscGRkcjRfaW9fc2V0dGluZ1tu
XTsKPiArCj4gKwkJaWYgKGlvLT5tcjUgIT0gMCkgewo+ICsJCQlpZiAoaW8tPm1oeiA+PSBwYXJh
bXMtPmJhc2UuZGRyX2ZyZXEgJiYKPiArCQkJICAgIGlvLT5tcjUgPT0gbXI1KQo+ICsJCQkJYnJl
YWs7Cj4gKwkJfSBlbHNlIHsKPiArCQkJaWYgKGlvLT5taHogPj0gcGFyYW1zLT5iYXNlLmRkcl9m
cmVxKQo+ICsJCQkJYnJlYWs7Cj4gKwkJfQo+ICsJfQo+ICsKPiArCXJldHVybiBpbzsKPiArfQo+
ICsKPiAgIHN0YXRpYyB2b2lkICpnZXRfZGRyYzBfY29uKHN0cnVjdCBkcmFtX2luZm8gKmRyYW0s
IHU4IGNoYW5uZWwpCj4gICB7Cj4gICAJcmV0dXJuIChjaGFubmVsID09IDApID8gJmRyYW0tPmdy
Zi0+ZGRyYzBfY29uMCA6ICZkcmFtLT5ncmYtPmRkcmMwX2NvbjE7Cj4gQEAgLTUyNCw3ICs1NTEs
NyBAQCBzdGF0aWMgaW50IHBoeV9pb19jb25maWcoY29uc3Qgc3RydWN0IGNoYW5faW5mbyAqY2hh
biwKPiAgIH0KPiAgIAo+ICAgc3RhdGljIHZvaWQgc2V0X2RzX29kdChjb25zdCBzdHJ1Y3QgY2hh
bl9pbmZvICpjaGFuLAo+IC0JCSAgICAgICBjb25zdCBzdHJ1Y3QgcmszMzk5X3NkcmFtX3BhcmFt
cyAqcGFyYW1zKQo+ICsJCSAgICAgICBjb25zdCBzdHJ1Y3QgcmszMzk5X3NkcmFtX3BhcmFtcyAq
cGFyYW1zLCB1MzIgbXI1KQo+ICAgewo+ICAgCXUzMiAqZGVuYWxpX3BoeSA9IGNoYW4tPnB1Ymwt
PmRlbmFsaV9waHk7Cj4gICAKPiBAQCAtNTMzLDE5ICs1NjAsMjIgQEAgc3RhdGljIHZvaWQgc2V0
X2RzX29kdChjb25zdCBzdHJ1Y3QgY2hhbl9pbmZvICpjaGFuLAo+ICAgCXUzMiB0c2VsX2lkbGVf
c2VsZWN0X24sIHRzZWxfcmRfc2VsZWN0X247Cj4gICAJdTMyIHRzZWxfd3Jfc2VsZWN0X2RxX3As
IHRzZWxfd3Jfc2VsZWN0X2NhX3A7Cj4gICAJdTMyIHRzZWxfd3Jfc2VsZWN0X2RxX24sIHRzZWxf
d3Jfc2VsZWN0X2NhX247Cj4gKwlzdHJ1Y3QgaW9fc2V0dGluZyAqaW8gPSBOVUxMOwo+ICAgCXUz
MiByZWdfdmFsdWU7Cj4gICAKPiAgIAlpZiAocGFyYW1zLT5iYXNlLmRyYW10eXBlID09IExQRERS
NCkgewo+ICsJCWlvID0gbHBkZHI0X2dldF9pb19zZXR0aW5ncyhwYXJhbXMsIG1yNSk7Cj4gKwo+
ICAgCQl0c2VsX3JkX3NlbGVjdF9wID0gUEhZX0RSVl9PRFRfSElfWjsKPiAtCQl0c2VsX3JkX3Nl
bGVjdF9uID0gUEhZX0RSVl9PRFRfMjQwOwo+ICsJCXRzZWxfcmRfc2VsZWN0X24gPSBpby0+cmRf
b2R0Owo+ICAgCj4gICAJCXRzZWxfaWRsZV9zZWxlY3RfcCA9IFBIWV9EUlZfT0RUX0hJX1o7Cj4g
ICAJCXRzZWxfaWRsZV9zZWxlY3RfbiA9IFBIWV9EUlZfT0RUXzI0MDsKPiAgIAo+IC0JCXRzZWxf
d3Jfc2VsZWN0X2RxX3AgPSBQSFlfRFJWX09EVF80MDsKPiArCQl0c2VsX3dyX3NlbGVjdF9kcV9w
ID0gaW8tPndyX2RxX2RydjsKPiAgIAkJdHNlbF93cl9zZWxlY3RfZHFfbiA9IFBIWV9EUlZfT0RU
XzQwOwo+ICAgCj4gLQkJdHNlbF93cl9zZWxlY3RfY2FfcCA9IFBIWV9EUlZfT0RUXzQwOwo+ICsJ
CXRzZWxfd3Jfc2VsZWN0X2NhX3AgPSBpby0+d3JfY2FfZHJ2Owo+ICAgCQl0c2VsX3dyX3NlbGVj
dF9jYV9uID0gUEhZX0RSVl9PRFRfNDA7Cj4gICAJfSBlbHNlIGlmIChwYXJhbXMtPmJhc2UuZHJh
bXR5cGUgPT0gTFBERFIzKSB7Cj4gICAJCXRzZWxfcmRfc2VsZWN0X3AgPSBQSFlfRFJWX09EVF8y
NDA7Cj4gQEAgLTcyMyw3ICs3NTMsNyBAQCBzdGF0aWMgdm9pZCBwY3RsX3N0YXJ0KHN0cnVjdCBk
cmFtX2luZm8gKmRyYW0sIHU4IGNoYW5uZWwpCj4gICB9Cj4gICAKPiAgIHN0YXRpYyBpbnQgcGN0
bF9jZmcoc3RydWN0IGRyYW1faW5mbyAqZHJhbSwgY29uc3Qgc3RydWN0IGNoYW5faW5mbyAqY2hh
biwKPiAtCQkgICAgdTMyIGNoYW5uZWwsIGNvbnN0IHN0cnVjdCByazMzOTlfc2RyYW1fcGFyYW1z
ICpwYXJhbXMpCj4gKwkJICAgIHUzMiBjaGFubmVsLCBzdHJ1Y3QgcmszMzk5X3NkcmFtX3BhcmFt
cyAqcGFyYW1zKQo+ICAgewo+ICAgCXUzMiAqZGVuYWxpX2N0bCA9IGNoYW4tPnBjdGwtPmRlbmFs
aV9jdGw7Cj4gICAJdTMyICpkZW5hbGlfcGkgPSBjaGFuLT5waS0+ZGVuYWxpX3BpOwo+IEBAIC04
MDUsNyArODM1LDcgQEAgc3RhdGljIGludCBwY3RsX2NmZyhzdHJ1Y3QgZHJhbV9pbmZvICpkcmFt
LCBjb25zdCBzdHJ1Y3QgY2hhbl9pbmZvICpjaGFuLAo+ICAgCWNvcHlfdG9fcmVnKCZkZW5hbGlf
cGh5WzUxMl0sICZwYXJhbXNfcGh5WzUxMl0sICg1NDkgLSA1MTIgKyAxKSAqIDQpOwo+ICAgCWNv
cHlfdG9fcmVnKCZkZW5hbGlfcGh5WzY0MF0sICZwYXJhbXNfcGh5WzY0MF0sICg2NzcgLSA2NDAg
KyAxKSAqIDQpOwo+ICAgCWNvcHlfdG9fcmVnKCZkZW5hbGlfcGh5Wzc2OF0sICZwYXJhbXNfcGh5
Wzc2OF0sICg4MDUgLSA3NjggKyAxKSAqIDQpOwo+IC0Jc2V0X2RzX29kdChjaGFuLCBwYXJhbXMp
Owo+ICsJc2V0X2RzX29kdChjaGFuLCBwYXJhbXMsIDApOwo+ICAgCj4gICAJLyoKPiAgIAkgKiBw
aHlfZHFzX3RzZWxfd3JfdGltaW5nX1ggOGJpdHMgREVOQUxJX1BIWV84NC8yMTIvMzQwLzQ2OCBv
ZmZzZXRfOAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
