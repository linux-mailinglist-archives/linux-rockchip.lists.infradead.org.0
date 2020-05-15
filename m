Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA3B1D43C9
	for <lists+linux-rockchip@lfdr.de>; Fri, 15 May 2020 04:52:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qWcxY/WfoT3v2eg9ZEDj1HIhX1CI5a/KIrqx/Mma6cA=; b=Nu8yewgTdbFBrKWGcmlqx/hDs
	GtI2U6zDwJDGkuewf+lisc2viYm1JRRnLYNI4Nf0/rIhy/i9EKH5DdrgQBg6HPJfHhLI5aA+LAUop
	NhTiFlk+xViuW5thLQWeNfmLgRu4jo0/luLVCw8SS0FA+m+hN/QW8GlpfX2ht85nFBuYPArjreZV/
	Tpf39Wl38k37dmfRPI/Se31v8+5H3OVE3+4Vnp+UvyZc6/lPN3LN+y6aufQpm7SoiUHRWVvLwEHEI
	75qsgX8BnxqVgip0vNiG2aqelBE7Nm8UMuw1bVEQtcgfJth9S2HCEb8fKWlAiAPalmm7NpFuh8/mU
	xv0frJRxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZQT0-0003L1-LY; Fri, 15 May 2020 02:52:54 +0000
Received: from regular1.263xmail.com ([211.150.70.204])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZQSx-0003KV-8u
 for linux-rockchip@lists.infradead.org; Fri, 15 May 2020 02:52:53 +0000
Received: from localhost (unknown [192.168.167.13])
 by regular1.263xmail.com (Postfix) with ESMTP id 9528C2D0;
 Fri, 15 May 2020 10:52:48 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P7435T140153072895744S1589511160812846_; 
 Fri, 15 May 2020 10:52:48 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <be4fd7bdb33379ad8ac4353bab6d6f2f>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v3 1/6] clk: rk3399: Add enable/disable clks
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20200509165624.20791-1-jagan@amarulasolutions.com>
 <20200509165624.20791-2-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <649aefb7-4c0b-4b08-e2ce-2bb13d3839e1@rock-chips.com>
Date: Fri, 15 May 2020 10:52:39 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200509165624.20791-2-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_195251_819084_E954241E 
X-CRM114-Status: GOOD (  13.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.204 listed in list.dnswl.org]
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
Cc: patrick@blueri.se, u-boot@lists.denx.de, shawn.lin@rock-chips.com,
 linux-rockchip@lists.infradead.org, sunil@amarulasolutions.com,
 linux-amarula@amarulasolutions.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvNS8xMCDkuIrljYgxMjo1NiwgSmFnYW4gVGVraSB3cm90ZToKPiBZZXMsIG1vc3Qg
b2YgdGhlIGhpZ2ggc3BlZWQgcGVyaXBoZXJhbCBjbG9ja3MKPiBpbiByazMzOTkgZW5hYmxlZCBi
eSBkZWZhdWx0Lgo+Cj4gQnV0IGl0IHdvdWxkIGJlIGJldHRlciB0byBoYW5kbGUgdGhlbSB2aWEg
Y2xrCj4gZW5hYmxlL2Rpc2FibGUgQVBJIGZvciBoYW5kbGluZyBwcm9wZXIgcmVzZXQKPiBjb25k
aXRpb25zIGxpa2UgJ3VzYiByZXNldCcgb3ZlciBjb21tYW5kIGxpbmUuCj4KPiBTbywgZW5hYmxl
IFVTQiwgR01BQyBjbG9jayB2aWEgZW5hYmxlL2Rpc2FibGUgb3BzLgo+Cj4gU2lnbmVkLW9mZi1i
eTogSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+CgpSZXZpZXdlZC1ieTog
S2V2ZXIgWWFuZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKLSBLZXZlcgo+
IC0tLQo+IENoYW5nZXMgZm9yIHYzOgo+IC0gVXBkYXRlIFVTQiBjbG9jayByZWdpc3RlcnMKPgo+
ICAgZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrX3JrMzM5OS5jIHwgMTQ4ICsrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDE0OCBpbnNlcnRpb25zKCspCj4K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrX3JrMzM5OS5jIGIvZHJpdmVy
cy9jbGsvcm9ja2NoaXAvY2xrX3JrMzM5OS5jCj4gaW5kZXggZDgyMmFjYWNlMS4uNWQyYmRiNDJj
NyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGtfcmszMzk5LmMKPiArKysg
Yi9kcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGtfcmszMzk5LmMKPiBAQCAtMTA3MSwxMiArMTA3MSwx
NjAgQEAgc3RhdGljIGludCBfX21heWJlX3VudXNlZCByazMzOTlfY2xrX3NldF9wYXJlbnQoc3Ry
dWN0IGNsayAqY2xrLAo+ICAgCXJldHVybiAtRU5PRU5UOwo+ICAgfQo+ICAgCj4gK3N0YXRpYyBp
bnQgcmszMzk5X2Nsa19lbmFibGUoc3RydWN0IGNsayAqY2xrKQo+ICt7Cj4gKwlzdHJ1Y3Qgcmsz
Mzk5X2Nsa19wcml2ICpwcml2ID0gZGV2X2dldF9wcml2KGNsay0+ZGV2KTsKPiArCj4gKwlzd2l0
Y2ggKGNsay0+aWQpIHsKPiArCWNhc2UgU0NMS19NQUM6Cj4gKwkJcmtfY2xycmVnKCZwcml2LT5j
cnUtPmNsa2dhdGVfY29uWzVdLCBCSVQoNSkpOwo+ICsJCWJyZWFrOwo+ICsJY2FzZSBTQ0xLX01B
Q19SWDoKPiArCQlya19jbHJyZWcoJnByaXYtPmNydS0+Y2xrZ2F0ZV9jb25bNV0sIEJJVCg4KSk7
Cj4gKwkJYnJlYWs7Cj4gKwljYXNlIFNDTEtfTUFDX1RYOgo+ICsJCXJrX2NscnJlZygmcHJpdi0+
Y3J1LT5jbGtnYXRlX2Nvbls1XSwgQklUKDkpKTsKPiArCQlicmVhazsKPiArCWNhc2UgU0NMS19N
QUNSRUY6Cj4gKwkJcmtfY2xycmVnKCZwcml2LT5jcnUtPmNsa2dhdGVfY29uWzVdLCBCSVQoNykp
Owo+ICsJCWJyZWFrOwo+ICsJY2FzZSBTQ0xLX01BQ1JFRl9PVVQ6Cj4gKwkJcmtfY2xycmVnKCZw
cml2LT5jcnUtPmNsa2dhdGVfY29uWzVdLCBCSVQoNikpOwo+ICsJCWJyZWFrOwo+ICsJY2FzZSBB
Q0xLX0dNQUM6Cj4gKwkJcmtfY2xycmVnKCZwcml2LT5jcnUtPmNsa2dhdGVfY29uWzMyXSwgQklU
KDApKTsKPiArCQlicmVhazsKPiArCWNhc2UgUENMS19HTUFDOgo+ICsJCXJrX2NscnJlZygmcHJp
di0+Y3J1LT5jbGtnYXRlX2NvblszMl0sIEJJVCgyKSk7Cj4gKwkJYnJlYWs7Cj4gKwljYXNlIFND
TEtfVVNCM09URzBfUkVGOgo+ICsJCXJrX2NscnJlZygmcHJpdi0+Y3J1LT5jbGtnYXRlX2Nvblsx
Ml0sIEJJVCgxKSk7Cj4gKwkJYnJlYWs7Cj4gKwljYXNlIFNDTEtfVVNCM09URzFfUkVGOgo+ICsJ
CXJrX2NscnJlZygmcHJpdi0+Y3J1LT5jbGtnYXRlX2NvblsxMl0sIEJJVCgyKSk7Cj4gKwkJYnJl
YWs7Cj4gKwljYXNlIFNDTEtfVVNCM09URzBfU1VTUEVORDoKPiArCQlya19jbHJyZWcoJnByaXYt
PmNydS0+Y2xrZ2F0ZV9jb25bMTJdLCBCSVQoMykpOwo+ICsJCWJyZWFrOwo+ICsJY2FzZSBTQ0xL
X1VTQjNPVEcxX1NVU1BFTkQ6Cj4gKwkJcmtfY2xycmVnKCZwcml2LT5jcnUtPmNsa2dhdGVfY29u
WzEyXSwgQklUKDQpKTsKPiArCQlicmVhazsKPiArCWNhc2UgQUNMS19VU0IzT1RHMDoKPiArCQly
a19jbHJyZWcoJnByaXYtPmNydS0+Y2xrZ2F0ZV9jb25bMzBdLCBCSVQoMSkpOwo+ICsJCWJyZWFr
Owo+ICsJY2FzZSBBQ0xLX1VTQjNPVEcxOgo+ICsJCXJrX2NscnJlZygmcHJpdi0+Y3J1LT5jbGtn
YXRlX2NvblszMF0sIEJJVCgyKSk7Cj4gKwkJYnJlYWs7Cj4gKwljYXNlIEFDTEtfVVNCM19SS1NP
Q19BWElfUEVSRjoKPiArCQlya19jbHJyZWcoJnByaXYtPmNydS0+Y2xrZ2F0ZV9jb25bMzBdLCBC
SVQoMykpOwo+ICsJCWJyZWFrOwo+ICsJY2FzZSBBQ0xLX1VTQjM6Cj4gKwkJcmtfY2xycmVnKCZw
cml2LT5jcnUtPmNsa2dhdGVfY29uWzEyXSwgQklUKDApKTsKPiArCQlicmVhazsKPiArCWNhc2Ug
QUNMS19VU0IzX0dSRjoKPiArCQlya19jbHJyZWcoJnByaXYtPmNydS0+Y2xrZ2F0ZV9jb25bMzBd
LCBCSVQoNCkpOwo+ICsJCWJyZWFrOwo+ICsJY2FzZSBIQ0xLX0hPU1QwOgo+ICsJCXJrX2NscnJl
ZygmcHJpdi0+Y3J1LT5jbGtzZWxfY29uWzIwXSwgQklUKDUpKTsKPiArCQlicmVhazsKPiArCWNh
c2UgSENMS19IT1NUMF9BUkI6Cj4gKwkJcmtfY2xycmVnKCZwcml2LT5jcnUtPmNsa3NlbF9jb25b
MjBdLCBCSVQoNikpOwo+ICsJCWJyZWFrOwo+ICsJY2FzZSBIQ0xLX0hPU1QxOgo+ICsJCXJrX2Ns
cnJlZygmcHJpdi0+Y3J1LT5jbGtzZWxfY29uWzIwXSwgQklUKDcpKTsKPiArCQlicmVhazsKPiAr
CWNhc2UgSENMS19IT1NUMV9BUkI6Cj4gKwkJcmtfY2xycmVnKCZwcml2LT5jcnUtPmNsa3NlbF9j
b25bMjBdLCBCSVQoOCkpOwo+ICsJCWJyZWFrOwo+ICsJZGVmYXVsdDoKPiArCQlkZWJ1ZygiJXM6
IHVuc3VwcG9ydGVkIGNsayAlbGRcbiIsIF9fZnVuY19fLCBjbGstPmlkKTsKPiArCQlyZXR1cm4g
LUVOT0VOVDsKPiArCX0KPiArCj4gKwlyZXR1cm4gMDsKPiArfQo+ICsKPiArc3RhdGljIGludCBy
azMzOTlfY2xrX2Rpc2FibGUoc3RydWN0IGNsayAqY2xrKQo+ICt7Cj4gKwlzdHJ1Y3QgcmszMzk5
X2Nsa19wcml2ICpwcml2ID0gZGV2X2dldF9wcml2KGNsay0+ZGV2KTsKPiArCj4gKwlzd2l0Y2gg
KGNsay0+aWQpIHsKPiArCWNhc2UgU0NMS19NQUM6Cj4gKwkJcmtfc2V0cmVnKCZwcml2LT5jcnUt
PmNsa2dhdGVfY29uWzVdLCBCSVQoNSkpOwo+ICsJCWJyZWFrOwo+ICsJY2FzZSBTQ0xLX01BQ19S
WDoKPiArCQlya19zZXRyZWcoJnByaXYtPmNydS0+Y2xrZ2F0ZV9jb25bNV0sIEJJVCg4KSk7Cj4g
KwkJYnJlYWs7Cj4gKwljYXNlIFNDTEtfTUFDX1RYOgo+ICsJCXJrX3NldHJlZygmcHJpdi0+Y3J1
LT5jbGtnYXRlX2Nvbls1XSwgQklUKDkpKTsKPiArCQlicmVhazsKPiArCWNhc2UgU0NMS19NQUNS
RUY6Cj4gKwkJcmtfc2V0cmVnKCZwcml2LT5jcnUtPmNsa2dhdGVfY29uWzVdLCBCSVQoNykpOwo+
ICsJCWJyZWFrOwo+ICsJY2FzZSBTQ0xLX01BQ1JFRl9PVVQ6Cj4gKwkJcmtfc2V0cmVnKCZwcml2
LT5jcnUtPmNsa2dhdGVfY29uWzVdLCBCSVQoNikpOwo+ICsJCWJyZWFrOwo+ICsJY2FzZSBBQ0xL
X0dNQUM6Cj4gKwkJcmtfc2V0cmVnKCZwcml2LT5jcnUtPmNsa2dhdGVfY29uWzMyXSwgQklUKDAp
KTsKPiArCQlicmVhazsKPiArCWNhc2UgUENMS19HTUFDOgo+ICsJCXJrX3NldHJlZygmcHJpdi0+
Y3J1LT5jbGtnYXRlX2NvblszMl0sIEJJVCgyKSk7Cj4gKwkJYnJlYWs7Cj4gKwljYXNlIFNDTEtf
VVNCM09URzBfUkVGOgo+ICsJCXJrX3NldHJlZygmcHJpdi0+Y3J1LT5jbGtnYXRlX2NvblsxMl0s
IEJJVCgxKSk7Cj4gKwkJYnJlYWs7Cj4gKwljYXNlIFNDTEtfVVNCM09URzFfUkVGOgo+ICsJCXJr
X3NldHJlZygmcHJpdi0+Y3J1LT5jbGtnYXRlX2NvblsxMl0sIEJJVCgyKSk7Cj4gKwkJYnJlYWs7
Cj4gKwljYXNlIFNDTEtfVVNCM09URzBfU1VTUEVORDoKPiArCQlya19zZXRyZWcoJnByaXYtPmNy
dS0+Y2xrZ2F0ZV9jb25bMTJdLCBCSVQoMykpOwo+ICsJCWJyZWFrOwo+ICsJY2FzZSBTQ0xLX1VT
QjNPVEcxX1NVU1BFTkQ6Cj4gKwkJcmtfc2V0cmVnKCZwcml2LT5jcnUtPmNsa2dhdGVfY29uWzEy
XSwgQklUKDQpKTsKPiArCQlicmVhazsKPiArCWNhc2UgQUNMS19VU0IzT1RHMDoKPiArCQlya19z
ZXRyZWcoJnByaXYtPmNydS0+Y2xrZ2F0ZV9jb25bMzBdLCBCSVQoMSkpOwo+ICsJCWJyZWFrOwo+
ICsJY2FzZSBBQ0xLX1VTQjNPVEcxOgo+ICsJCXJrX3NldHJlZygmcHJpdi0+Y3J1LT5jbGtnYXRl
X2NvblszMF0sIEJJVCgyKSk7Cj4gKwkJYnJlYWs7Cj4gKwljYXNlIEFDTEtfVVNCM19SS1NPQ19B
WElfUEVSRjoKPiArCQlya19zZXRyZWcoJnByaXYtPmNydS0+Y2xrZ2F0ZV9jb25bMzBdLCBCSVQo
MykpOwo+ICsJCWJyZWFrOwo+ICsJY2FzZSBBQ0xLX1VTQjM6Cj4gKwkJcmtfc2V0cmVnKCZwcml2
LT5jcnUtPmNsa2dhdGVfY29uWzEyXSwgQklUKDApKTsKPiArCQlicmVhazsKPiArCWNhc2UgQUNM
S19VU0IzX0dSRjoKPiArCQlya19zZXRyZWcoJnByaXYtPmNydS0+Y2xrZ2F0ZV9jb25bMzBdLCBC
SVQoNCkpOwo+ICsJCWJyZWFrOwo+ICsJY2FzZSBIQ0xLX0hPU1QwOgo+ICsJCXJrX3NldHJlZygm
cHJpdi0+Y3J1LT5jbGtzZWxfY29uWzIwXSwgQklUKDUpKTsKPiArCQlicmVhazsKPiArCWNhc2Ug
SENMS19IT1NUMF9BUkI6Cj4gKwkJcmtfc2V0cmVnKCZwcml2LT5jcnUtPmNsa3NlbF9jb25bMjBd
LCBCSVQoNikpOwo+ICsJCWJyZWFrOwo+ICsJY2FzZSBIQ0xLX0hPU1QxOgo+ICsJCXJrX3NldHJl
ZygmcHJpdi0+Y3J1LT5jbGtzZWxfY29uWzIwXSwgQklUKDcpKTsKPiArCQlicmVhazsKPiArCWNh
c2UgSENMS19IT1NUMV9BUkI6Cj4gKwkJcmtfc2V0cmVnKCZwcml2LT5jcnUtPmNsa3NlbF9jb25b
MjBdLCBCSVQoOCkpOwo+ICsJCWJyZWFrOwo+ICsJZGVmYXVsdDoKPiArCQlkZWJ1ZygiJXM6IHVu
c3VwcG9ydGVkIGNsayAlbGRcbiIsIF9fZnVuY19fLCBjbGstPmlkKTsKPiArCQlyZXR1cm4gLUVO
T0VOVDsKPiArCX0KPiArCj4gKwlyZXR1cm4gMDsKPiArfQo+ICsKPiAgIHN0YXRpYyBzdHJ1Y3Qg
Y2xrX29wcyByazMzOTlfY2xrX29wcyA9IHsKPiAgIAkuZ2V0X3JhdGUgPSByazMzOTlfY2xrX2dl
dF9yYXRlLAo+ICAgCS5zZXRfcmF0ZSA9IHJrMzM5OV9jbGtfc2V0X3JhdGUsCj4gICAjaWYgQ09O
RklHX0lTX0VOQUJMRUQoT0ZfQ09OVFJPTCkgJiYgIUNPTkZJR19JU19FTkFCTEVEKE9GX1BMQVRE
QVRBKQo+ICAgCS5zZXRfcGFyZW50ID0gcmszMzk5X2Nsa19zZXRfcGFyZW50LAo+ICAgI2VuZGlm
Cj4gKwkuZW5hYmxlID0gcmszMzk5X2Nsa19lbmFibGUsCj4gKwkuZGlzYWJsZSA9IHJrMzM5OV9j
bGtfZGlzYWJsZSwKPiAgIH07Cj4gICAKPiAgICNpZmRlZiBDT05GSUdfU1BMX0JVSUxECgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
