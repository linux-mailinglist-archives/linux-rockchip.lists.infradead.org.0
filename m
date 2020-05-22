Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07E461DDDC4
	for <lists+linux-rockchip@lfdr.de>; Fri, 22 May 2020 05:16:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xZOAeDJTBLUTnqRfg6sUL10ugtfHkdPOTDzURN1Vgcg=; b=Cae1/snL8apRrREH8npV7wsG5
	fgA8Fob9tjgTebUAEaGlu41IF0syfTpcxmUEX10XugvU+uohHGgstyDzPMDwHnffNaS+rRa2JcDJo
	iz//u00DS9TIeb2b9hadYi6bKOV8XKGJ0YrnKW+OkMLAWo2QYWGc2HucV9if1kp8AqhOl4JZt+v1/
	Oy1fCNNXb9/zscrr0C1/l5BqnZuNcAXrv9Rb8JuHXZuD8G7kejhgH9xt9+k5d/b6b+QWt2WZqPnQ9
	EE/T59JYlTYKzSKqBbdfLGvHNmtPVlp/noI8yt0B7iI9G/BCiKMXdhVQtzIAJRjWCaQuI2KKT2hlu
	i8TOAyzPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbyAC-0004dp-C5; Fri, 22 May 2020 03:16:00 +0000
Received: from regular1.263xmail.com ([211.150.70.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbyA8-0004d5-SA
 for linux-rockchip@lists.infradead.org; Fri, 22 May 2020 03:15:58 +0000
Received: from localhost (unknown [192.168.167.13])
 by regular1.263xmail.com (Postfix) with ESMTP id 1640E146B;
 Fri, 22 May 2020 11:15:37 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.66] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P25387T140143347308288S1590117335539530_; 
 Fri, 22 May 2020 11:15:37 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <7fc26ff07bd98fbf2b91b21655f441a5>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: tom@radxa.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v3 6/6] rockchip: Enable PCIe/M.2 on rock960 board
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20200509165624.20791-1-jagan@amarulasolutions.com>
 <20200509165624.20791-7-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <ba64b7ac-84d1-2763-1fa0-a332dab03e6a@rock-chips.com>
Date: Fri, 22 May 2020 11:15:35 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200509165624.20791-7-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_201557_233359_B38E7CC6 
X-CRM114-Status: GOOD (  16.73  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [211.150.70.195 listed in wl.mailspike.net]
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
Cc: patrick@blueri.se, u-boot@lists.denx.de, Tom Cubie <tom@radxa.com>,
 shawn.lin@rock-chips.com, linux-rockchip@lists.infradead.org,
 sunil@amarulasolutions.com, linux-amarula@amarulasolutions.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgSmFnYW4sCgpPbiAyMDIwLzUvMTAg5LiK5Y2IMTI6NTYsIEphZ2FuIFRla2kgd3JvdGU6Cj4g
RHVlIHRvIGJvYXJkIGxpbWl0YXRpb24gc29tZSBTU0QncyB3b3VsZCB3b3JrCj4gb24gcm9jazk2
MCBQQ0llIE0uMiBvbmx5IHdpdGggMS44ViBJTyBkb21haW4uCj4KPiBTbywgdGhpcyBwYXRjaCBl
bmFibGVzIGdyZiBpb19zZWwgZXhwbGljaXRseSB0bwo+IG1ha2UgUENJZS9NLjIgdG8gd29yay4K
Pgo+IENjOiBUb20gQ3ViaWUgPHRvbUByYWR4YS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogSmFnYW4g
VGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+Cj4gQWNrZWQtYnk6IE1hbml2YW5uYW4g
U2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxpbmFyby5vcmc+Cj4gLS0tCj4gQ2hh
bmdlcyBmb3IgdjM6Cj4gLSBjb2xsZWN0IG1hbmkgYS1iCj4gLSBhZGQgY29tbWVudHMKPgo+ICAg
Ym9hcmQvdmFtcnMvcm9jazk2MF9yazMzOTkvcm9jazk2MC1yazMzOTkuYyB8IDIzICsrKysrKysr
KysrKysrKysrKysrKwo+ICAgY29uZmlncy9yb2NrOTYwLXJrMzM5OV9kZWZjb25maWcgICAgICAg
ICAgICB8ICA1ICsrKysrCj4gICAyIGZpbGVzIGNoYW5nZWQsIDI4IGluc2VydGlvbnMoKykKPgo+
IGRpZmYgLS1naXQgYS9ib2FyZC92YW1ycy9yb2NrOTYwX3JrMzM5OS9yb2NrOTYwLXJrMzM5OS5j
IGIvYm9hcmQvdmFtcnMvcm9jazk2MF9yazMzOTkvcm9jazk2MC1yazMzOTkuYwo+IGluZGV4IDY4
YTEyN2I5YWMuLmVmMWViMmQwYjcgMTAwNjQ0Cj4gLS0tIGEvYm9hcmQvdmFtcnMvcm9jazk2MF9y
azMzOTkvcm9jazk2MC1yazMzOTkuYwo+ICsrKyBiL2JvYXJkL3ZhbXJzL3JvY2s5NjBfcmszMzk5
L3JvY2s5NjAtcmszMzk5LmMKPiBAQCAtMiwzICsyLDI2IEBACj4gICAvKgo+ICAgICogQ29weXJp
Z2h0IChDKSAyMDE4IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFt
QGxpbmFyby5vcmc+Cj4gICAgKi8KPiArCj4gKyNpbmNsdWRlIDxjb21tb24uaD4KPiArI2luY2x1
ZGUgPHN5c2Nvbi5oPgo+ICsjaW5jbHVkZSA8YXNtL2lvLmg+Cj4gKyNpbmNsdWRlIDxhc20vYXJj
aC1yb2NrY2hpcC9jbG9jay5oPgo+ICsjaW5jbHVkZSA8YXNtL2FyY2gtcm9ja2NoaXAvZ3JmX3Jr
MzM5OS5oPgo+ICsjaW5jbHVkZSA8YXNtL2FyY2gtcm9ja2NoaXAvaGFyZHdhcmUuaD4KPiArCj4g
KyNpZmRlZiBDT05GSUdfTUlTQ19JTklUX1IKPiAraW50IG1pc2NfaW5pdF9yKHZvaWQpCj4gK3sK
PiArCXN0cnVjdCByazMzOTlfZ3JmX3JlZ3MgKmdyZiA9Cj4gKwkgICAgc3lzY29uX2dldF9maXJz
dF9yYW5nZShST0NLQ0hJUF9TWVNDT05fR1JGKTsKPiArCj4gKwkvKioKPiArCSAqIFNvbWUgU1NE
J3MgdG8gd29yayBvbiByb2NrOTYwIHdvdWxkIHJlcXVpcmUgZXhwbGljaXQKPiArCSAqIGRvbWFp
biB2b2x0YWdlIGNoYW5nZSwgc28gQlQ1NjUgaXMgaW4gMS44diBkb21haW4KPiArCSAqLwo+ICsJ
cmtfc2V0cmVnKCZncmYtPmlvX3ZzZWwsIEJJVCgwKSk7CivCoCBya19zZXRyZWcoJmdyZi0+aW9f
dnNlbCwgQklUKDApKTsKK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgXgorYXJjaC9hcm0vaW5jbHVkZS9hc20vaW8uaDoxMTg6MzQ6IG5vdGU6IGlu
IGRlZmluaXRpb24gb2YgbWFjcm8g4oCYd3JpdGVs4oCZCisgI2RlZmluZSB3cml0ZWwodixjKSAo
eyB1MzIgX192ID0gdjsgX19pb3dtYigpOyBfX2FyY2hfcHV0bChfX3YsYyk7IF9fdjsgfSkKK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBeCitib2FyZC92YW1ycy9yb2NrOTYwX3JrMzM5OS9yb2NrOTYwLXJrMzM5OS5jOjIz
OjI6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiAKbWFjcm8g4oCYcmtfc2V0cmVn4oCZCivCoCBefn5+
fn5+fn4KK2JvYXJkL3ZhbXJzL3JvY2s5NjBfcmszMzk5L2J1aWx0LWluLm86IEluIGZ1bmN0aW9u
IGBtaXNjX2luaXRfcic6Citib2FyZC92YW1ycy9yb2NrOTYwX3JrMzM5OS9yb2NrOTYwLXJrMzM5
OS5jOjIzOiB1bmRlZmluZWQgcmVmZXJlbmNlIHRvIApgQklUJworbWFrZVsxXTogKioqIFt1LWJv
b3RdIEVycm9yIDEzOQoKCkRpZCB5b3UgZ2V0IHRoaXMgZXJyb3Igd2hlbiBidWlsZCB0aGUgY29k
ZT8KCgpUaGFua3MsCgotIEtldmVyCgo+ICsKPiArCXJldHVybiAwOwo+ICt9Cj4gKyNlbmRpZgo+
IGRpZmYgLS1naXQgYS9jb25maWdzL3JvY2s5NjAtcmszMzk5X2RlZmNvbmZpZyBiL2NvbmZpZ3Mv
cm9jazk2MC1yazMzOTlfZGVmY29uZmlnCj4gaW5kZXggMDQ1ZDk4OWExOS4uNjQ1MTdmOTYyMyAx
MDA2NDQKPiAtLS0gYS9jb25maWdzL3JvY2s5NjAtcmszMzk5X2RlZmNvbmZpZwo+ICsrKyBiL2Nv
bmZpZ3Mvcm9jazk2MC1yazMzOTlfZGVmY29uZmlnCj4gQEAgLTksNiArOSw3IEBAIENPTkZJR19E
RUJVR19VQVJUX0JBU0U9MHhGRjFBMDAwMAo+ICAgQ09ORklHX0RFQlVHX1VBUlRfQ0xPQ0s9MjQw
MDAwMDAKPiAgIENPTkZJR19ERUJVR19VQVJUPXkKPiAgIENPTkZJR19ERUZBVUxUX0ZEVF9GSUxF
PSJyb2NrY2hpcC9yazMzOTktcm9jazk2MC5kdGIiCj4gK0NPTkZJR19NSVNDX0lOSVRfUj15Cj4g
ICBDT05GSUdfRElTUExBWV9CT0FSRElORk9fTEFURT15Cj4gICAjIENPTkZJR19TUExfUkFXX0lN
QUdFX1NVUFBPUlQgaXMgbm90IHNldAo+ICAgQ09ORklHX1NQTF9TVEFDS19SPXkKPiBAQCAtMTks
NiArMjAsNyBAQCBDT05GSUdfQ01EX0JPT1RaPXkKPiAgIENPTkZJR19DTURfR1BUPXkKPiAgIENP
TkZJR19DTURfTU1DPXkKPiAgIENPTkZJR19DTURfVVNCPXkKPiArQ09ORklHX0NNRF9QQ0k9eQo+
ICAgIyBDT05GSUdfQ01EX1NFVEVYUFIgaXMgbm90IHNldAo+ICAgQ09ORklHX0NNRF9USU1FPXkK
PiAgIENPTkZJR19DTURfUE1JQz15Cj4gQEAgLTM2LDEwICszOCwxMyBAQCBDT05GSUdfTU1DX1NE
SENJPXkKPiAgIENPTkZJR19NTUNfU0RIQ0lfU0RNQT15Cj4gICBDT05GSUdfTU1DX1NESENJX1JP
Q0tDSElQPXkKPiAgIENPTkZJR19ETV9FVEg9eQo+ICtDT05GSUdfTlZNRT15Cj4gK0NPTkZJR19Q
Q0k9eQo+ICAgQ09ORklHX1BNSUNfUks4WFg9eQo+ICAgQ09ORklHX1JFR1VMQVRPUl9QV009eQo+
ICAgQ09ORklHX1JFR1VMQVRPUl9SSzhYWD15Cj4gICBDT05GSUdfUFdNX1JPQ0tDSElQPXkKPiAr
Q09ORklHX0RNX1JFU0VUPXkKPiAgIENPTkZJR19CQVVEUkFURT0xNTAwMDAwCj4gICBDT05GSUdf
REVCVUdfVUFSVF9TSElGVD0yCj4gICBDT05GSUdfU1lTUkVTRVQ9eQoKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
