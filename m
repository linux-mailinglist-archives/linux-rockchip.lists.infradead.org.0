Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A416A308
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 09:36:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xt95w+9XrVJuw1SZW8mlykJCWaCD1JaADl3DXUJCTYs=; b=uuk6GCmrEWiDJd8IT/apmIDH0
	ONuwGy0RviMjx8fkcjq0WxlPN1wHOZ3yuhYW5K/qGS+YmKVs6lOSWlp5iUMgZTWhGMddnPGy8NQzY
	Mohw4PdStWUWCZWmrTYn+PF/oz7vNPQ2vISPLPp+3kw05KEIlVWPAEyKIEoiiRW2QOrMPDAnPDHI+
	rrNdXfmEtTnWYY5TUSdQ5RNwd6lal8kHBdPwLn9Go5YjGXCM0Tvdl1miqP+7ovhEPnOLiphED1RBn
	ZCAZLCdMyIO3P1OCcR5x+FQ6iRy4kdHHUxi5mKeVWtzwIWFEDWPVb5441nJ2TsGVzlQX5ato6Mhlo
	NCm6xihrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnI0G-0004un-Kv; Tue, 16 Jul 2019 07:36:00 +0000
Received: from regular1.263xmail.com ([211.150.70.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnI0B-0004sh-3s
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 07:35:56 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.110])
 by regular1.263xmail.com (Postfix) with ESMTP id 13D6656E;
 Tue, 16 Jul 2019 15:32:08 +0800 (CST)
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
 P20133T140376220358400S1563262326111941_; 
 Tue, 16 Jul 2019 15:32:07 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <d5e576143a7561039532ecaf2ef3e7de>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 09/15] ram: rk3399: Order tsel variables
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190715182110.21336-1-jagan@amarulasolutions.com>
 <20190715182110.21336-10-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <9b63d7c9-aa9a-f990-23a5-26663957cc74@rock-chips.com>
Date: Tue, 16 Jul 2019 15:32:05 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190715182110.21336-10-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_003555_474228_C6E23598 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.201 listed in list.dnswl.org]
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

Ck9uIDIwMTkvNy8xNiDkuIrljYgyOjIxLCBKYWdhbiBUZWtpIHdyb3RlOgo+IE9yZGVyIHRzZWwq
IHZhcmlhYmxlIGRlY2xhcmF0aW9ucyBhbmQgYXNzaWdubWVudCBpbiBwcm9wZXIKPiBhbmQgbWVh
bmluZ2Z1bCB3YXkuCj4KPiBObyBmdW5jdGlvbmFsaXR5IGNoYW5nZS4KPgo+IFNpZ25lZC1vZmYt
Ynk6IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+IFNpZ25lZC1vZmYt
Ynk6IFlvdU1pbiBDaGVuIDxjeW1Acm9jay1jaGlwcy5jb20+CgpSZXZpZXdlZC1ieTogS2V2ZXIg
WWFuZyA8S2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKIMKgLSBLZXZlcgo+IC0t
LQo+ICAgZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMgfCAzNyArKysrKysrKysr
KysrKysrKy0tLS0tLS0tLS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDIyIGluc2VydGlvbnMoKyks
IDE1IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3Nk
cmFtX3JrMzM5OS5jIGIvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMKPiBpbmRl
eCA4YTk4M2Y5YmIxLi4wNDNiMjc3MzdkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcmFtL3JvY2tj
aGlwL3NkcmFtX3JrMzM5OS5jCj4gKysrIGIvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmsz
Mzk5LmMKPiBAQCAtMTU5LDQxICsxNTksNDggQEAgc3RhdGljIHZvaWQgc2V0X2RzX29kdChjb25z
dCBzdHJ1Y3QgY2hhbl9pbmZvICpjaGFuLAo+ICAgCXUzMiAqZGVuYWxpX3BoeSA9IGNoYW4tPnB1
YmwtPmRlbmFsaV9waHk7Cj4gICAKPiAgIAl1MzIgdHNlbF9pZGxlX2VuLCB0c2VsX3dyX2VuLCB0
c2VsX3JkX2VuOwo+IC0JdTMyIHRzZWxfaWRsZV9zZWxlY3RfcCwgdHNlbF93cl9zZWxlY3RfZHFf
cCwgdHNlbF9yZF9zZWxlY3RfcDsKPiAtCXUzMiB0c2VsX3dyX3NlbGVjdF9jYV9wLCB0c2VsX3dy
X3NlbGVjdF9jYV9uOwo+IC0JdTMyIHRzZWxfaWRsZV9zZWxlY3RfbiwgdHNlbF93cl9zZWxlY3Rf
ZHFfbiwgdHNlbF9yZF9zZWxlY3RfbjsKPiArCXUzMiB0c2VsX2lkbGVfc2VsZWN0X3AsIHRzZWxf
cmRfc2VsZWN0X3A7Cj4gKwl1MzIgdHNlbF9pZGxlX3NlbGVjdF9uLCB0c2VsX3JkX3NlbGVjdF9u
Owo+ICsJdTMyIHRzZWxfd3Jfc2VsZWN0X2RxX3AsIHRzZWxfd3Jfc2VsZWN0X2NhX3A7Cj4gKwl1
MzIgdHNlbF93cl9zZWxlY3RfZHFfbiwgdHNlbF93cl9zZWxlY3RfY2FfbjsKPiAgIAl1MzIgcmVn
X3ZhbHVlOwo+ICAgCj4gICAJaWYgKHBhcmFtcy0+YmFzZS5kcmFtdHlwZSA9PSBMUEREUjQpIHsK
PiAgIAkJdHNlbF9yZF9zZWxlY3RfcCA9IFBIWV9EUlZfT0RUX0hJX1o7Cj4gLQkJdHNlbF93cl9z
ZWxlY3RfZHFfcCA9IFBIWV9EUlZfT0RUXzQwOwo+IC0JCXRzZWxfd3Jfc2VsZWN0X2NhX3AgPSBQ
SFlfRFJWX09EVF80MDsKPiArCQl0c2VsX3JkX3NlbGVjdF9uID0gUEhZX0RSVl9PRFRfMjQwOwo+
ICsKPiAgIAkJdHNlbF9pZGxlX3NlbGVjdF9wID0gUEhZX0RSVl9PRFRfSElfWjsKPiArCQl0c2Vs
X2lkbGVfc2VsZWN0X24gPSBQSFlfRFJWX09EVF8yNDA7Cj4gICAKPiAtCQl0c2VsX3JkX3NlbGVj
dF9uID0gUEhZX0RSVl9PRFRfMjQwOwo+ICsJCXRzZWxfd3Jfc2VsZWN0X2RxX3AgPSBQSFlfRFJW
X09EVF80MDsKPiAgIAkJdHNlbF93cl9zZWxlY3RfZHFfbiA9IFBIWV9EUlZfT0RUXzQwOwo+ICsK
PiArCQl0c2VsX3dyX3NlbGVjdF9jYV9wID0gUEhZX0RSVl9PRFRfNDA7Cj4gICAJCXRzZWxfd3Jf
c2VsZWN0X2NhX24gPSBQSFlfRFJWX09EVF80MDsKPiAtCQl0c2VsX2lkbGVfc2VsZWN0X24gPSBQ
SFlfRFJWX09EVF8yNDA7Cj4gICAJfSBlbHNlIGlmIChwYXJhbXMtPmJhc2UuZHJhbXR5cGUgPT0g
TFBERFIzKSB7Cj4gICAJCXRzZWxfcmRfc2VsZWN0X3AgPSBQSFlfRFJWX09EVF8yNDA7Cj4gLQkJ
dHNlbF93cl9zZWxlY3RfZHFfcCA9IFBIWV9EUlZfT0RUXzM0XzM7Cj4gLQkJdHNlbF93cl9zZWxl
Y3RfY2FfcCA9IFBIWV9EUlZfT0RUXzQ4Owo+ICsJCXRzZWxfcmRfc2VsZWN0X24gPSBQSFlfRFJW
X09EVF9ISV9aOwo+ICsKPiAgIAkJdHNlbF9pZGxlX3NlbGVjdF9wID0gUEhZX0RSVl9PRFRfMjQw
Owo+ICsJCXRzZWxfaWRsZV9zZWxlY3RfbiA9IFBIWV9EUlZfT0RUX0hJX1o7Cj4gICAKPiAtCQl0
c2VsX3JkX3NlbGVjdF9uID0gUEhZX0RSVl9PRFRfSElfWjsKPiArCQl0c2VsX3dyX3NlbGVjdF9k
cV9wID0gUEhZX0RSVl9PRFRfMzRfMzsKPiAgIAkJdHNlbF93cl9zZWxlY3RfZHFfbiA9IFBIWV9E
UlZfT0RUXzM0XzM7Cj4gKwo+ICsJCXRzZWxfd3Jfc2VsZWN0X2NhX3AgPSBQSFlfRFJWX09EVF80
ODsKPiAgIAkJdHNlbF93cl9zZWxlY3RfY2FfbiA9IFBIWV9EUlZfT0RUXzQ4Owo+IC0JCXRzZWxf
aWRsZV9zZWxlY3RfbiA9IFBIWV9EUlZfT0RUX0hJX1o7Cj4gICAJfSBlbHNlIHsKPiAgIAkJdHNl
bF9yZF9zZWxlY3RfcCA9IFBIWV9EUlZfT0RUXzI0MDsKPiAtCQl0c2VsX3dyX3NlbGVjdF9kcV9w
ID0gUEhZX0RSVl9PRFRfMzRfMzsKPiAtCQl0c2VsX3dyX3NlbGVjdF9jYV9wID0gUEhZX0RSVl9P
RFRfMzRfMzsKPiArCQl0c2VsX3JkX3NlbGVjdF9uID0gUEhZX0RSVl9PRFRfMjQwOwo+ICsKPiAg
IAkJdHNlbF9pZGxlX3NlbGVjdF9wID0gUEhZX0RSVl9PRFRfMjQwOwo+ICsJCXRzZWxfaWRsZV9z
ZWxlY3RfbiA9IFBIWV9EUlZfT0RUXzI0MDsKPiAgIAo+IC0JCXRzZWxfcmRfc2VsZWN0X24gPSBQ
SFlfRFJWX09EVF8yNDA7Cj4gKwkJdHNlbF93cl9zZWxlY3RfZHFfcCA9IFBIWV9EUlZfT0RUXzM0
XzM7Cj4gICAJCXRzZWxfd3Jfc2VsZWN0X2RxX24gPSBQSFlfRFJWX09EVF8zNF8zOwo+ICsKPiAr
CQl0c2VsX3dyX3NlbGVjdF9jYV9wID0gUEhZX0RSVl9PRFRfMzRfMzsKPiAgIAkJdHNlbF93cl9z
ZWxlY3RfY2FfbiA9IFBIWV9EUlZfT0RUXzM0XzM7Cj4gLQkJdHNlbF9pZGxlX3NlbGVjdF9uID0g
UEhZX0RSVl9PRFRfMjQwOwo+ICAgCX0KPiAgIAo+ICAgCWlmIChwYXJhbXMtPmJhc2Uub2R0ID09
IDEpCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
