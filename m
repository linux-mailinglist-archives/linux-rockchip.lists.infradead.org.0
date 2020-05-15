Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01EA71D43B9
	for <lists+linux-rockchip@lfdr.de>; Fri, 15 May 2020 04:50:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dmZhHk1mCXvxvsyBfakra4/zP6ZUSjhypBH1MmIia+s=; b=H5KVGE3YWHMmaZyjeSVmPSbkb
	OUuH85RU/pMCjpqm7zy4RDHvM8yAnb7eic4IeS7GaOs12u5BYfDdLElc+7nmuIp7x3uRWTf5eWuUh
	uBfqUJ94gkQft7H0LTsgajxeyCu0kDpN42jQbS2m1grTo5u7W+0mlmvgko8fDfgUDDDd8vUG5nXIJ
	q2jPrMJf9bPieTJEHmESj1aF42tXr2YibJsVj/2fH/Plpjx7r/3i6/HMufn7QZVzkzMo/GmpXXeLn
	TLgrD8fe25BrUAVXzAAjHopEakjwF/x/3iGey4GgVOKKyVQSd588WrCAAWBeSPqxOpQ9G0cSsQr5F
	6K/IZahZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZQQT-000301-5B; Fri, 15 May 2020 02:50:17 +0000
Received: from regular1.263xmail.com ([211.150.70.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZQQQ-0002TK-5J
 for linux-rockchip@lists.infradead.org; Fri, 15 May 2020 02:50:15 +0000
Received: from localhost (unknown [192.168.167.70])
 by regular1.263xmail.com (Postfix) with ESMTP id 743EA445;
 Fri, 15 May 2020 10:50:09 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P14534T139720757593856S1589510997127699_; 
 Fri, 15 May 2020 10:50:08 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <0b42f051f3a24b1c3227ff7d8769c326>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: wmc@rock-chips.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v5 12/16] usb: dwc3: add make compatible for rockchip
 platform
To: Frank Wang <frank.wang@rock-chips.com>, heiko@sntech.de, marex@denx.de,
 bmeng.cn@gmail.com, philipp.tomsich@theobroma-systems.com,
 klaus.goger@theobroma-systems.com, jagan@amarulasolutions.com,
 sjg@chromium.org
References: <20200513071344.5430-1-frank.wang@rock-chips.com>
 <20200513071710.5651-1-frank.wang@rock-chips.com>
 <20200513071710.5651-3-frank.wang@rock-chips.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <4537a5fc-6494-0e1f-9589-1677694b390e@rock-chips.com>
Date: Fri, 15 May 2020 10:49:56 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200513071710.5651-3-frank.wang@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_195014_607921_7DA17BE3 
X-CRM114-Status: GOOD (  17.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: jianing.ren@rock-chips.com, marek.belisko@gmail.com, wmc@rock-chips.com,
 u-boot@lists.denx.de, william.wu@rock-chips.com,
 linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 chenjh@rock-chips.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvNS8xMyDkuIvljYgzOjE3LCBGcmFuayBXYW5nIHdyb3RlOgo+IFJLMzM5OSBUeXBl
LUMgUEhZIGlzIHJlcXVpcmVkIHRoYXQgbXVzdCBob2xkIHdob2xlIFVTQjMuMCBPVEcgY29udHJv
bGxlcgo+IGluIHJlc2V0dGluZyB0byBob2xkIHBpcGUgcG93ZXIgc3RhdGUgaW4gUDIgYmVmb3Jl
IGluaXRpYWxpemluZyB0aGUgUEhZLgo+IFRoaXMgY29tbWl0IGZpeGVkIGl0IGFuZCBhZGRlZCBk
ZXZpY2UgY29tcGF0aWJsZSBmb3Igcm9ja2NoaXAgcGxhdGZvcm0uCj4KPiBTaWduZWQtb2ZmLWJ5
OiBGcmFuayBXYW5nIDxmcmFuay53YW5nQHJvY2stY2hpcHMuY29tPgo+IFNpZ25lZC1vZmYtYnk6
IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgoKUmV2aWV3ZWQtYnk6IEtl
dmVyIFlhbmcgPGtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+CgpUaGFua3MsCi0gS2V2ZXIKPiAt
LS0KPiAgIGRyaXZlcnMvdXNiL2R3YzMvZHdjMy1nZW5lcmljLmMgfCAzMyArKysrKysrKysrKysr
KysrKysrKysrKysrKystLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAyNyBpbnNlcnRpb25zKCsp
LCA2IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdXNiL2R3YzMvZHdjMy1n
ZW5lcmljLmMgYi9kcml2ZXJzL3VzYi9kd2MzL2R3YzMtZ2VuZXJpYy5jCj4gaW5kZXggZWFiZDUz
YTM2ZC4uNDIxZTBiZTEzNSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3VzYi9kd2MzL2R3YzMtZ2Vu
ZXJpYy5jCj4gKysrIGIvZHJpdmVycy91c2IvZHdjMy9kd2MzLWdlbmVyaWMuYwo+IEBAIC0yNCw2
ICsyNCwxMiBAQAo+ICAgI2luY2x1ZGUgPGNsay5oPgo+ICAgI2luY2x1ZGUgPHVzYi94aGNpLmg+
Cj4gICAKPiArc3RydWN0IGR3YzNfZ2x1ZV9kYXRhIHsKPiArCXN0cnVjdCBjbGtfYnVsawkJY2xr
czsKPiArCXN0cnVjdCByZXNldF9jdGxfYnVsawlyZXNldHM7Cj4gKwlmZHRfYWRkcl90IHJlZ3M7
Cj4gK307Cj4gKwo+ICAgc3RydWN0IGR3YzNfZ2VuZXJpY19wbGF0IHsKPiAgIAlmZHRfYWRkcl90
IGJhc2U7Cj4gICAJdTMyIG1heGltdW1fc3BlZWQ7Cj4gQEAgLTQ3LDYgKzUzLDcgQEAgc3RhdGlj
IGludCBkd2MzX2dlbmVyaWNfcHJvYmUoc3RydWN0IHVkZXZpY2UgKmRldiwKPiAgIAlpbnQgcmM7
Cj4gICAJc3RydWN0IGR3YzNfZ2VuZXJpY19wbGF0ICpwbGF0ID0gZGV2X2dldF9wbGF0ZGF0YShk
ZXYpOwo+ICAgCXN0cnVjdCBkd2MzICpkd2MzID0gJnByaXYtPmR3YzM7Cj4gKwlzdHJ1Y3QgZHdj
M19nbHVlX2RhdGEgKmdsdWUgPSBkZXZfZ2V0X3BsYXRkYXRhKGRldi0+cGFyZW50KTsKPiAgIAo+
ICAgCWR3YzMtPmRldiA9IGRldjsKPiAgIAlkd2MzLT5tYXhpbXVtX3NwZWVkID0gcGxhdC0+bWF4
aW11bV9zcGVlZDsKPiBAQCAtNTUsMTAgKzYyLDIyIEBAIHN0YXRpYyBpbnQgZHdjM19nZW5lcmlj
X3Byb2JlKHN0cnVjdCB1ZGV2aWNlICpkZXYsCj4gICAJZHdjM19vZl9wYXJzZShkd2MzKTsKPiAg
ICNlbmRpZgo+ICAgCj4gKwkvKgo+ICsJICogSXQgbXVzdCBob2xkIHdob2xlIFVTQjMuMCBPVEcg
Y29udHJvbGxlciBpbiByZXNldHRpbmcgdG8gaG9sZCBwaXBlCj4gKwkgKiBwb3dlciBzdGF0ZSBp
biBQMiBiZWZvcmUgaW5pdGlhbGl6aW5nIFR5cGVDIFBIWSBvbiBSSzMzOTkgcGxhdGZvcm0uCj4g
KwkgKi8KPiArCWlmIChkZXZpY2VfaXNfY29tcGF0aWJsZShkZXYtPnBhcmVudCwgInJvY2tjaGlw
LHJrMzM5OS1kd2MzIikpIHsKPiArCQlyZXNldF9hc3NlcnRfYnVsaygmZ2x1ZS0+cmVzZXRzKTsK
PiArCQl1ZGVsYXkoMSk7Cj4gKwl9Cj4gKwo+ICAgCXJjID0gZHdjM19zZXR1cF9waHkoZGV2LCAm
cHJpdi0+cGh5cyk7Cj4gICAJaWYgKHJjKQo+ICAgCQlyZXR1cm4gcmM7Cj4gICAKPiArCWlmIChk
ZXZpY2VfaXNfY29tcGF0aWJsZShkZXYtPnBhcmVudCwgInJvY2tjaGlwLHJrMzM5OS1kd2MzIikp
Cj4gKwkJcmVzZXRfZGVhc3NlcnRfYnVsaygmZ2x1ZS0+cmVzZXRzKTsKPiArCj4gICAJcHJpdi0+
YmFzZSA9IG1hcF9waHlzbWVtKHBsYXQtPmJhc2UsIERXQzNfT1RHX1JFR1NfRU5ELCBNQVBfTk9D
QUNIRSk7Cj4gICAJZHdjMy0+cmVncyA9IHByaXYtPmJhc2UgKyBEV0MzX0dMT0JBTFNfUkVHU19T
VEFSVDsKPiAgIAo+IEBAIC0xODYsMTIgKzIwNSw2IEBAIFVfQk9PVF9EUklWRVIoZHdjM19nZW5l
cmljX2hvc3QpID0gewo+ICAgfTsKPiAgICNlbmRpZgo+ICAgCj4gLXN0cnVjdCBkd2MzX2dsdWVf
ZGF0YSB7Cj4gLQlzdHJ1Y3QgY2xrX2J1bGsJCWNsa3M7Cj4gLQlzdHJ1Y3QgcmVzZXRfY3RsX2J1
bGsJcmVzZXRzOwo+IC0JZmR0X2FkZHJfdCByZWdzOwo+IC19Owo+IC0KPiAgIHN0cnVjdCBkd2Mz
X2dsdWVfb3BzIHsKPiAgIAl2b2lkICgqc2VsZWN0X2RyX21vZGUpKHN0cnVjdCB1ZGV2aWNlICpk
ZXYsIGludCBpbmRleCwKPiAgIAkJCSAgICAgICBlbnVtIHVzYl9kcl9tb2RlIG1vZGUpOwo+IEBA
IC0zOTQsNiArNDA3LDEyIEBAIHN0YXRpYyBpbnQgZHdjM19nbHVlX3Byb2JlKHN0cnVjdCB1ZGV2
aWNlICpkZXYpCj4gICAJaWYgKHJldCkKPiAgIAkJcmV0dXJuIHJldDsKPiAgIAo+ICsJaWYgKGds
dWUtPnJlc2V0cy5jb3VudCA9PSAwKSB7Cj4gKwkJcmV0ID0gZHdjM19nbHVlX3Jlc2V0X2luaXQo
Y2hpbGQsIGdsdWUpOwo+ICsJCWlmIChyZXQpCj4gKwkJCXJldHVybiByZXQ7Cj4gKwl9Cj4gKwo+
ICAgCXdoaWxlIChjaGlsZCkgewo+ICAgCQllbnVtIHVzYl9kcl9tb2RlIGRyX21vZGU7Cj4gICAK
PiBAQCAtNDI0LDYgKzQ0Myw4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgdWRldmljZV9pZCBkd2Mz
X2dsdWVfaWRzW10gPSB7Cj4gICAJeyAuY29tcGF0aWJsZSA9ICJ0aSxkd2MzIiwgLmRhdGEgPSAo
dWxvbmcpJnRpX29wcyB9LAo+ICAgCXsgLmNvbXBhdGlibGUgPSAidGksYW00Mzd4LWR3YzMiLCAu
ZGF0YSA9ICh1bG9uZykmdGlfb3BzIH0sCj4gICAJeyAuY29tcGF0aWJsZSA9ICJ0aSxhbTY1NC1k
d2MzIiB9LAo+ICsJeyAuY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazMzMjgtZHdjMyIgfSwKPiAr
CXsgLmNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszMzk5LWR3YzMiIH0sCj4gICAJeyB9Cj4gICB9
Owo+ICAgCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
