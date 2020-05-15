Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DFAF1D43A6
	for <lists+linux-rockchip@lfdr.de>; Fri, 15 May 2020 04:40:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4yOi55LaqwaZphR7Osjrsu8a6Hh2ujMh0SZJocvLGXU=; b=qicaD0VtgHrs2yfdsDrEAbYao
	9pZ7sXO7CgcaPBheS90oiNJNYpeULlvT19iYTKXUIyfBLMpUqk4ot4gVJi28MPSBlK9kRFtmQ4uP9
	WbXWUqZUMSDHF1uwfesInPCxjbLoxyuqZglTU+seEKF2vshdXDYjy8hJUj3wxNDxWSR2VMxMjDfLl
	+1mib7p6+uTLHifLVUHtXZN0+0hoPD4vktxLcBNkdJerrPJQeNzfwb9IK+t8Kxbjb18zgo+roVBdy
	O2uGGVmN3nGLr7WPw/P3r3PwgpUTNTUoRcoCObKxIF4nEp4WXSfropJtaQrd8BGOVfxiIDeXgNf1P
	rZHRXl7lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZQH7-00064q-Q7; Fri, 15 May 2020 02:40:37 +0000
Received: from regular1.263xmail.com ([211.150.70.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZQH3-00064S-O4
 for linux-rockchip@lists.infradead.org; Fri, 15 May 2020 02:40:35 +0000
Received: from localhost (unknown [192.168.167.70])
 by regular1.263xmail.com (Postfix) with ESMTP id DF1D64CF;
 Fri, 15 May 2020 10:40:28 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P14534T139720747104000S1589510416530524_; 
 Fri, 15 May 2020 10:40:27 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <677ff5de31021b95e3323bd37b6f929c>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: wmc@rock-chips.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v5 05/16] arm64: dts: rk3399: Move u2phy into root port
To: Frank Wang <frank.wang@rock-chips.com>, heiko@sntech.de, marex@denx.de,
 bmeng.cn@gmail.com, philipp.tomsich@theobroma-systems.com,
 klaus.goger@theobroma-systems.com, jagan@amarulasolutions.com,
 sjg@chromium.org
References: <20200513071344.5430-1-frank.wang@rock-chips.com>
 <20200513071546.5560-1-frank.wang@rock-chips.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <2ec538ea-9ca2-92b7-3b57-be96862f3117@rock-chips.com>
Date: Fri, 15 May 2020 10:40:15 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200513071546.5560-1-frank.wang@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_194034_241447_A2E1150D 
X-CRM114-Status: GOOD (  17.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.201 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [211.150.70.201 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

SGkgSmFnYW4sIEZyYW5rLAoKT24gMjAyMC81LzEzIOS4i+WNiDM6MTUsIEZyYW5rIFdhbmcgd3Jv
dGU6Cj4gRnJvbTogSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+Cj4KPiBZ
ZXMsIFRoaXMgaXMgY2hhbmdpbmcgdGhlIGFjdHVhbCBkZXZpY2UgdHJlZSB1MnBoeQo+IHN0cnVj
dHVyZSBidXQgdGhlIHByb2JsZW0gd2l0aCB0aGUgY3VycmVudCBHZW5lcmljCj4gUEhZIHN1YnN5
c3RlbSBpcyB1bmFibGUgdG8gZmluZCBQSFkgaWYgdGhlIFBIWSBub2RlCj4gaXMgbm90IHBhcnQg
b2YgdGhlIHJvb3Qgc3RydWN0dXJlLgoKSSBkb24ndCB1bmRlcnN0YW5kIGZvciB0aGlzLCBpdCBz
aG91bGQgYmUgYWJsZSB0byBiaW5kIHRoZSBkZXZpY2Ugd2hlbgoKZG0gc2NhbiBmZHQuCgpSb2Nr
Y2hpcCBjb2RlIGFsd2F5cyBjYW4gdXNlIHRoaXMgbm9kZSBkaXJlY3RseSB3aXRob3V0IG1vZGlm
eSwgY291bGQKCnlvdSBjaGVjayBhZ2Fpbj8KCgpUaGFua3MsCgotIEtldmVyCgo+Cj4gVGhpcyB3
aWxsIGJlIHJldmVydGVkLAo+IC0gT25jZSB3ZSBzdXBwb3J0IHRoZSBQSFkgc3Vic3lzdGVtIHRv
IGdldCB0aGUgUEhZCj4gICAgZXZlbiB0aG91Z2ggaXQgaXMgbm90IHBhcnQgb2YgdGhlIHJvb3Qg
bm9kZSBvcgo+IC0gYW55IG90aGVyIHJlbGV2YW50IHNvbHV0aW9uIHRoYXQgZ2V0IHRoZSBwaHkK
PiAgICBkaXJlY3RseSB3aXRob3V0IHRyYXZlcnNpbmcgYWxsIG5vZGVzLgo+Cj4gU2lnbmVkLW9m
Zi1ieTogSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+Cj4gLS0tCj4gICBh
cmNoL2FybS9kdHMvcmszMzk5LmR0c2kgfCAxMDggKysrKysrKysrKysrKysrKysrKy0tLS0tLS0t
LS0tLS0tLS0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgNTQgaW5zZXJ0aW9ucygrKSwgNTQgZGVs
ZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vZHRzL3JrMzM5OS5kdHNpIGIvYXJj
aC9hcm0vZHRzL3JrMzM5OS5kdHNpCj4gaW5kZXggNzRmMmMzZDQ5MC4uNmM3N2YyNWYyMyAxMDA2
NDQKPiAtLS0gYS9hcmNoL2FybS9kdHMvcmszMzk5LmR0c2kKPiArKysgYi9hcmNoL2FybS9kdHMv
cmszMzk5LmR0c2kKPiBAQCAtMTM4Nyw2MCArMTM4Nyw2IEBACj4gICAJCQlzdGF0dXMgPSAiZGlz
YWJsZWQiOwo+ICAgCQl9Owo+ICAgCj4gLQkJdTJwaHkwOiB1c2IyLXBoeUBlNDUwIHsKPiAtCQkJ
Y29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazMzOTktdXNiMnBoeSI7Cj4gLQkJCXJlZyA9IDwweGU0
NTAgMHgxMD47Cj4gLQkJCWNsb2NrcyA9IDwmY3J1IFNDTEtfVVNCMlBIWTBfUkVGPjsKPiAtCQkJ
Y2xvY2stbmFtZXMgPSAicGh5Y2xrIjsKPiAtCQkJI2Nsb2NrLWNlbGxzID0gPDA+Owo+IC0JCQlj
bG9jay1vdXRwdXQtbmFtZXMgPSAiY2xrX3VzYnBoeTBfNDgwbSI7Cj4gLQkJCXN0YXR1cyA9ICJk
aXNhYmxlZCI7Cj4gLQo+IC0JCQl1MnBoeTBfaG9zdDogaG9zdC1wb3J0IHsKPiAtCQkJCSNwaHkt
Y2VsbHMgPSA8MD47Cj4gLQkJCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMjcgSVJRX1RZUEVfTEVW
RUxfSElHSCAwPjsKPiAtCQkJCWludGVycnVwdC1uYW1lcyA9ICJsaW5lc3RhdGUiOwo+IC0JCQkJ
c3RhdHVzID0gImRpc2FibGVkIjsKPiAtCQkJfTsKPiAtCj4gLQkJCXUycGh5MF9vdGc6IG90Zy1w
b3J0IHsKPiAtCQkJCSNwaHktY2VsbHMgPSA8MD47Cj4gLQkJCQlpbnRlcnJ1cHRzID0gPEdJQ19T
UEkgMTAzIElSUV9UWVBFX0xFVkVMX0hJR0ggMD4sCj4gLQkJCQkJICAgICA8R0lDX1NQSSAxMDQg
SVJRX1RZUEVfTEVWRUxfSElHSCAwPiwKPiAtCQkJCQkgICAgIDxHSUNfU1BJIDEwNiBJUlFfVFlQ
RV9MRVZFTF9ISUdIIDA+Owo+IC0JCQkJaW50ZXJydXB0LW5hbWVzID0gIm90Zy1idmFsaWQiLCAi
b3RnLWlkIiwKPiAtCQkJCQkJICAibGluZXN0YXRlIjsKPiAtCQkJCXN0YXR1cyA9ICJkaXNhYmxl
ZCI7Cj4gLQkJCX07Cj4gLQkJfTsKPiAtCj4gLQkJdTJwaHkxOiB1c2IyLXBoeUBlNDYwIHsKPiAt
CQkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazMzOTktdXNiMnBoeSI7Cj4gLQkJCXJlZyA9IDww
eGU0NjAgMHgxMD47Cj4gLQkJCWNsb2NrcyA9IDwmY3J1IFNDTEtfVVNCMlBIWTFfUkVGPjsKPiAt
CQkJY2xvY2stbmFtZXMgPSAicGh5Y2xrIjsKPiAtCQkJI2Nsb2NrLWNlbGxzID0gPDA+Owo+IC0J
CQljbG9jay1vdXRwdXQtbmFtZXMgPSAiY2xrX3VzYnBoeTFfNDgwbSI7Cj4gLQkJCXN0YXR1cyA9
ICJkaXNhYmxlZCI7Cj4gLQo+IC0JCQl1MnBoeTFfaG9zdDogaG9zdC1wb3J0IHsKPiAtCQkJCSNw
aHktY2VsbHMgPSA8MD47Cj4gLQkJCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMzEgSVJRX1RZUEVf
TEVWRUxfSElHSCAwPjsKPiAtCQkJCWludGVycnVwdC1uYW1lcyA9ICJsaW5lc3RhdGUiOwo+IC0J
CQkJc3RhdHVzID0gImRpc2FibGVkIjsKPiAtCQkJfTsKPiAtCj4gLQkJCXUycGh5MV9vdGc6IG90
Zy1wb3J0IHsKPiAtCQkJCSNwaHktY2VsbHMgPSA8MD47Cj4gLQkJCQlpbnRlcnJ1cHRzID0gPEdJ
Q19TUEkgMTA4IElSUV9UWVBFX0xFVkVMX0hJR0ggMD4sCj4gLQkJCQkJICAgICA8R0lDX1NQSSAx
MDkgSVJRX1RZUEVfTEVWRUxfSElHSCAwPiwKPiAtCQkJCQkgICAgIDxHSUNfU1BJIDExMSBJUlFf
VFlQRV9MRVZFTF9ISUdIIDA+Owo+IC0JCQkJaW50ZXJydXB0LW5hbWVzID0gIm90Zy1idmFsaWQi
LCAib3RnLWlkIiwKPiAtCQkJCQkJICAibGluZXN0YXRlIjsKPiAtCQkJCXN0YXR1cyA9ICJkaXNh
YmxlZCI7Cj4gLQkJCX07Cj4gLQkJfTsKPiAtCj4gICAJCWVtbWNfcGh5OiBwaHlAZjc4MCB7Cj4g
ICAJCQljb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzM5OS1lbW1jLXBoeSI7Cj4gICAJCQlyZWcg
PSA8MHhmNzgwIDB4MjQ+Owo+IEBAIC0xNDYyLDYgKzE0MDgsNjAgQEAKPiAgIAkJfTsKPiAgIAl9
Owo+ICAgCj4gKwl1MnBoeTA6IHVzYjItcGh5QGU0NTAgewo+ICsJCWNvbXBhdGlibGUgPSAicm9j
a2NoaXAscmszMzk5LXVzYjJwaHkiOwo+ICsJCXJlZyA9IDwweDAgMHhlNDUwIDB4MCAweDEwPjsK
PiArCQljbG9ja3MgPSA8JmNydSBTQ0xLX1VTQjJQSFkwX1JFRj47Cj4gKwkJY2xvY2stbmFtZXMg
PSAicGh5Y2xrIjsKPiArCQkjY2xvY2stY2VsbHMgPSA8MD47Cj4gKwkJY2xvY2stb3V0cHV0LW5h
bWVzID0gImNsa191c2JwaHkwXzQ4MG0iOwo+ICsJCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gKwo+
ICsJCXUycGh5MF9ob3N0OiBob3N0LXBvcnQgewo+ICsJCQkjcGh5LWNlbGxzID0gPDA+Owo+ICsJ
CQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMjcgSVJRX1RZUEVfTEVWRUxfSElHSCAwPjsKPiArCQkJ
aW50ZXJydXB0LW5hbWVzID0gImxpbmVzdGF0ZSI7Cj4gKwkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7
Cj4gKwkJfTsKPiArCj4gKwkJdTJwaHkwX290Zzogb3RnLXBvcnQgewo+ICsJCQkjcGh5LWNlbGxz
ID0gPDA+Owo+ICsJCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMTAzIElSUV9UWVBFX0xFVkVMX0hJ
R0ggMD4sCj4gKwkJCQkgICAgIDxHSUNfU1BJIDEwNCBJUlFfVFlQRV9MRVZFTF9ISUdIIDA+LAo+
ICsJCQkJICAgICA8R0lDX1NQSSAxMDYgSVJRX1RZUEVfTEVWRUxfSElHSCAwPjsKPiArCQkJaW50
ZXJydXB0LW5hbWVzID0gIm90Zy1idmFsaWQiLCAib3RnLWlkIiwKPiArCQkJCQkgICJsaW5lc3Rh
dGUiOwo+ICsJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ICsJCX07Cj4gKwl9Owo+ICsKPiArCXUy
cGh5MTogdXNiMi1waHlAZTQ2MCB7Cj4gKwkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazMzOTkt
dXNiMnBoeSI7Cj4gKwkJcmVnID0gPDB4MCAweGU0NjAgMHgwIDB4MTA+Owo+ICsJCWNsb2NrcyA9
IDwmY3J1IFNDTEtfVVNCMlBIWTFfUkVGPjsKPiArCQljbG9jay1uYW1lcyA9ICJwaHljbGsiOwo+
ICsJCSNjbG9jay1jZWxscyA9IDwwPjsKPiArCQljbG9jay1vdXRwdXQtbmFtZXMgPSAiY2xrX3Vz
YnBoeTFfNDgwbSI7Cj4gKwkJc3RhdHVzID0gImRpc2FibGVkIjsKPiArCj4gKwkJdTJwaHkxX2hv
c3Q6IGhvc3QtcG9ydCB7Cj4gKwkJCSNwaHktY2VsbHMgPSA8MD47Cj4gKwkJCWludGVycnVwdHMg
PSA8R0lDX1NQSSAzMSBJUlFfVFlQRV9MRVZFTF9ISUdIIDA+Owo+ICsJCQlpbnRlcnJ1cHQtbmFt
ZXMgPSAibGluZXN0YXRlIjsKPiArCQkJc3RhdHVzID0gImRpc2FibGVkIjsKPiArCQl9Owo+ICsK
PiArCQl1MnBoeTFfb3RnOiBvdGctcG9ydCB7Cj4gKwkJCSNwaHktY2VsbHMgPSA8MD47Cj4gKwkJ
CWludGVycnVwdHMgPSA8R0lDX1NQSSAxMDggSVJRX1RZUEVfTEVWRUxfSElHSCAwPiwKPiArCQkJ
CSAgICAgPEdJQ19TUEkgMTA5IElSUV9UWVBFX0xFVkVMX0hJR0ggMD4sCj4gKwkJCQkgICAgIDxH
SUNfU1BJIDExMSBJUlFfVFlQRV9MRVZFTF9ISUdIIDA+Owo+ICsJCQlpbnRlcnJ1cHQtbmFtZXMg
PSAib3RnLWJ2YWxpZCIsICJvdGctaWQiLAo+ICsJCQkJCSAgImxpbmVzdGF0ZSI7Cj4gKwkJCXN0
YXR1cyA9ICJkaXNhYmxlZCI7Cj4gKwkJfTsKPiArCX07Cj4gKwo+ICAgCXRjcGh5MDogcGh5QGZm
N2MwMDAwIHsKPiAgIAkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazMzOTktdHlwZWMtcGh5IjsK
PiAgIAkJcmVnID0gPDB4MCAweGZmN2MwMDAwIDB4MCAweDQwMDAwPjsKCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
