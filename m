Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90619158B0
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 May 2019 07:01:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h8ak9fCYni2mZqTi6jXHpyUCwAvkxhx94eJ2yKLIXKg=; b=Tc4F9z628g74C6
	K6IbFLkMcRnilAlrrGIYPsoIONiRtxUUkdxkQpsA6D7Gda+eM9cgc0XShPysC/closVmm2nm7I8ET
	95N5yM06qNG+3b1lg8n43AvWA1TSetkE1snAIEl99eaNeFcDSaCXKaZICLUCT+xKv0FbP9yKYkZPJ
	a2bcPTQo6PS/nzh0fmcxsc9Kn3Pl6OyhSL7vLx/NR1pGuylXNffky6LGp0ZC/HdlBIXrEbL0300uw
	MUXSh8S6WlJ5EfIGRbcSxl/C3cmpUD56EiJogKU3pGfO5ri7UlXuKfAUzaazBzgWOJyRpGEIyEGoj
	5DLywdE7liAm3IKvQa9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNsEX-00069r-Or; Tue, 07 May 2019 05:01:41 +0000
Received: from regular1.263xmail.com ([211.150.70.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNsET-00069V-Gj
 for linux-rockchip@lists.infradead.org; Tue, 07 May 2019 05:01:39 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.131])
 by regular1.263xmail.com (Postfix) with ESMTP id 85229924;
 Tue,  7 May 2019 13:01:32 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.12.214] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P19838T140377799501568S1557205289597851_; 
 Tue, 07 May 2019 13:01:31 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <d9a7e3584609a070647d67a53d11b6b3>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: klaus.goger@theobroma-systems.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v2 5/9] board: puma: Get bl31.bin via BL31 and
 rk3399m0.bin via PMUM0
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Akash Gajjar <akash@openedev.com>, Tom Rini <trini@konsulko.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
References: <20190428090913.10568-1-jagan@amarulasolutions.com>
 <20190428090913.10568-6-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <e8d5e1df-6f44-bcff-56b0-175e02b15e86@rock-chips.com>
Date: Tue, 7 May 2019 13:01:29 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20190428090913.10568-6-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_220137_907997_4DEA9C2A 
X-CRM114-Status: GOOD (  19.53  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 linux-amarula@amarulasolutions.com, u-boot@lists.denx.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgUGhpbGlwcCBhbmQgS2xhdXMsCgrCoMKgwqAgRG9lcyB0aGlzIHBhdGNoIE9LIGZvciB5b3Vy
IGJvYXJkcz8KClRoYW5rcywKLUtldmVyCk9uIDA0LzI4LzIwMTkgMDU6MDkgUE0sIEphZ2FuIFRl
a2kgd3JvdGU6Cj4gUmlnaHQgbm93IHB1bWEgcmszMzk5IGJvYXJkIG5lZWQgdG8gY29weSBibDMx
LXJrMzM5OS5iaW4gYW5kCj4gcmszMzk5bTAuYmluIGludG8gdS1ib290IHNvdXJjZSBkaXJlY3Rv
cnkgdG8gbWFrZSB1c2Ugb2YgYnVpbGRpbmcKPiB1LWJvb3QuaXRiLgo+Cj4gU28sIGFkZCBlbnZp
cm9ubWVudCB2YXJpYWJsZQo+IC0gQkwzMSBmb3IgYmwzMS5iaW4gKGluc3RlYWQgb2YgYmwzMS1y
azMzOTkuYmluIHRvIGNvbXBhdGlibGUgd2l0aCBvdGhlcgo+ICAgcGxhdGZvcm0gQkwzMSBlbnYp
Cj4gLSBQTVVNMCBmb3IgcmszMzk5bTAuYmluCj4KPiBJZiB0aGUgYnVpbGRzIGFyZSBub3QgZXhw
b3J0aW5nIEJMMzEsIFBNVU0wIGVudiwgdGhlIGZpdF9zcGxfYXRmLnNoIHdpbGwKPiBub3RpZnkg
d2l0aCB3YXJuaW5nIGFib3V0IHdoaWNoIGRvY3VtZW50IHRvIHJlZmVyIGZvciBtb3JlIGluZm9y
bWF0aW9uCj4gbGlrZSB0aGlzOgo+Cj4gIFdBUk5JTkc6IEJMMzEgZmlsZSBibDMxLmJpbiBOT1Qg
Zm91bmQsIHJlc3VsdGluZyBiaW5hcnkgaXMgbm9uLWZ1bmN0aW9uYWwKPiAgUGxlYXNlIHJlYWQg
QnVpbGRpbmcgc2VjdGlvbiBpbiBkb2MvUkVBRE1FLnJvY2tjaGlwCj4gIFdBUk5JTkc6IFBNVU0w
IGZpbGUgcmszMzk5bTAuYmluIE5PVCBmb3VuZCwgcmVzdWx0aW5nIGJpbmFyeSBpcyBub24tZnVu
Y3Rpb25hbAo+ICBQbGVhc2UgcmVhZCBCdWlsZGluZyBzZWN0aW9uIGluIGRvYy9SRUFETUUucm9j
a2NoaXAKPgo+IFNpZ25lZC1vZmYtYnk6IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlv
bnMuY29tPgo+IC0tLQo+ICAuLi4ve2ZpdF9zcGxfYXRmLml0cyA9PiBmaXRfc3BsX2F0Zi5zaH0g
ICAgICAgfCA0NiArKysrKysrKysrKysrKysrLS0tCj4gIGNvbmZpZ3MvcHVtYS1yazMzOTlfZGVm
Y29uZmlnICAgICAgICAgICAgICAgICB8ICAyICstCj4gIGRvYy9SRUFETUUucm9ja2NoaXAgICAg
ICAgICAgICAgICAgICAgICAgICAgICB8ICA4ICsrLS0KPiAgMyBmaWxlcyBjaGFuZ2VkLCA0NSBp
bnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMoLSkKPiAgcmVuYW1lIGJvYXJkL3RoZW9icm9tYS1z
eXN0ZW1zL3B1bWFfcmszMzk5L3tmaXRfc3BsX2F0Zi5pdHMgPT4gZml0X3NwbF9hdGYuc2h9ICg1
MCUpCj4gIG1vZGUgY2hhbmdlIDEwMDY0NCA9PiAxMDA3NTUKPgo+IGRpZmYgLS1naXQgYS9ib2Fy
ZC90aGVvYnJvbWEtc3lzdGVtcy9wdW1hX3JrMzM5OS9maXRfc3BsX2F0Zi5pdHMgYi9ib2FyZC90
aGVvYnJvbWEtc3lzdGVtcy9wdW1hX3JrMzM5OS9maXRfc3BsX2F0Zi5zaAo+IG9sZCBtb2RlIDEw
MDY0NAo+IG5ldyBtb2RlIDEwMDc1NQo+IHNpbWlsYXJpdHkgaW5kZXggNTAlCj4gcmVuYW1lIGZy
b20gYm9hcmQvdGhlb2Jyb21hLXN5c3RlbXMvcHVtYV9yazMzOTkvZml0X3NwbF9hdGYuaXRzCj4g
cmVuYW1lIHRvIGJvYXJkL3RoZW9icm9tYS1zeXN0ZW1zL3B1bWFfcmszMzk5L2ZpdF9zcGxfYXRm
LnNoCj4gaW5kZXggNTMwZjA1OWYzZC4uNTE3ZmFkNDBhMQo+IC0tLSBhL2JvYXJkL3RoZW9icm9t
YS1zeXN0ZW1zL3B1bWFfcmszMzk5L2ZpdF9zcGxfYXRmLml0cwo+ICsrKyBiL2JvYXJkL3RoZW9i
cm9tYS1zeXN0ZW1zL3B1bWFfcmszMzk5L2ZpdF9zcGxfYXRmLnNoCj4gQEAgLTEsMyArMSwzMSBA
QAo+ICsjIS9iaW4vc2gKPiArIwo+ICsjIENvcHlyaWdodCAoQykgMjAxOSBKYWdhbiBUZWtpIDxq
YWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KPiArIwo+ICsjIEJhc2VkIG9uIHRoZSBib2FyZC9z
dW54aS9ta3N1bnhpX2ZpdF9hdGYuc2gKPiArIwo+ICsjIFNjcmlwdCB0byBnZW5lcmF0ZSBGSVQg
aW1hZ2Ugc291cmNlIGZvciA2NC1iaXQgcHVtYSBib2FyZHMgd2l0aAo+ICsjIFUtQm9vdCBwcm9w
ZXIsIEFURiwgUE1VIGZpcm13YXJlIGFuZCBkZXZpY2V0cmVlLgo+ICsjCj4gKyMgdXNhZ2U6ICQw
IDxkdF9uYW1lPiBbPGR0X25hbWU+IFs8ZHRfbmFtZV0gLi4uXQo+ICsKPiArWyAteiAiJEJMMzEi
IF0gJiYgQkwzMT0iYmwzMS5iaW4iCj4gKwo+ICtpZiBbICEgLWYgJEJMMzEgXTsgdGhlbgo+ICsJ
ZWNobyAiV0FSTklORzogQkwzMSBmaWxlICRCTDMxIE5PVCBmb3VuZCwgcmVzdWx0aW5nIGJpbmFy
eSBpcyBub24tZnVuY3Rpb25hbCIgPiYyCj4gKwllY2hvICJQbGVhc2UgcmVhZCBCdWlsZGluZyBz
ZWN0aW9uIGluIGRvYy9SRUFETUUucm9ja2NoaXAiID4mMgo+ICsJQkwzMT0vZGV2L251bGwKPiAr
ZmkKPiArCj4gK1sgLXogIiRQTVVNMCIgXSAmJiBQTVVNMD0icmszMzk5bTAuYmluIgo+ICsKPiAr
aWYgWyAhIC1mICRQTVVNMCBdOyB0aGVuCj4gKwllY2hvICJXQVJOSU5HOiBQTVVNMCBmaWxlICRQ
TVVNMCBOT1QgZm91bmQsIHJlc3VsdGluZyBiaW5hcnkgaXMgbm9uLWZ1bmN0aW9uYWwiID4mMgo+
ICsJZWNobyAiUGxlYXNlIHJlYWQgQnVpbGRpbmcgc2VjdGlvbiBpbiBkb2MvUkVBRE1FLnJvY2tj
aGlwIiA+JjIKPiArCVBNVU0wPS9kZXYvbnVsbAo+ICtmaQo+ICsKPiArY2F0IDw8IF9fSEVBREVS
X0VPRgo+ICAvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMCsgT1IgWDExICovCj4g
IC8qCj4gICAqIENvcHlyaWdodCAoQykgMjAxNyBUaGVvYnJvbWEgU3lzdGVtcyBEZXNpZ24gdW5k
IENvbnN1bHRpbmcgR21iSAo+IEBAIC0xNCwxNiArNDIsMTUgQEAKPiAgCWltYWdlcyB7Cj4gIAkJ
dWJvb3Qgewo+ICAJCQlkZXNjcmlwdGlvbiA9ICJVLUJvb3QgKDY0LWJpdCkiOwo+IC0JCQlkYXRh
ID0gL2luY2Jpbi8oIi4uLy4uLy4uL3UtYm9vdC1ub2R0Yi5iaW4iKTsKPiArCQkJZGF0YSA9IC9p
bmNiaW4vKCJ1LWJvb3Qtbm9kdGIuYmluIik7Cj4gIAkJCXR5cGUgPSAic3RhbmRhbG9uZSI7Cj4g
LQkJCW9zID0gIlUtQm9vdCI7Cj4gIAkJCWFyY2ggPSAiYXJtNjQiOwo+ICAJCQljb21wcmVzc2lv
biA9ICJub25lIjsKPiAtCQkJbG9hZCA9IDwweDAwMjAwMDAwPjsKPiArCQkJbG9hZCA9IDwweDRh
MDAwMDAwPjsKPiAgCQl9Owo+ICAJCWF0ZiB7Cj4gIAkJCWRlc2NyaXB0aW9uID0gIkFSTSBUcnVz
dGVkIEZpcm13YXJlIjsKPiAtCQkJZGF0YSA9IC9pbmNiaW4vKCIuLi8uLi8uLi9ibDMxLXJrMzM5
OS5iaW4iKTsKPiArCQkJZGF0YSA9IC9pbmNiaW4vKCIkQkwzMSIpOwo+ICAJCQl0eXBlID0gImZp
cm13YXJlIjsKPiAgCQkJYXJjaCA9ICJhcm02NCI7Cj4gIAkJCW9zID0gImFybS10cnVzdGVkLWZp
cm13YXJlIjsKPiBAQCAtMzMsMTcgKzYwLDIwIEBACj4gIAkJfTsKPiAgCQlwbXUgewo+ICAJCSAg
ICAgICAgZGVzY3JpcHRpb24gPSAiQ29ydGV4LU0wIGZpcm13YXJlIjsKPiAtCQkJZGF0YSA9IC9p
bmNiaW4vKCIuLi8uLi8uLi9yazMzOTltMC5iaW4iKTsKPiArCQkJZGF0YSA9IC9pbmNiaW4vKCIk
UE1VTTAiKTsKPiAgCQkJdHlwZSA9ICJwbXUtZmlybXdhcmUiOwo+ICAJCQljb21wcmVzc2lvbiA9
ICJub25lIjsKPiAgCQkJbG9hZCA9IDwweDE4MDAwMD47Cj4gICAgICAgICAgICAgICAgICB9Owo+
ICAJCWZkdCB7Cj4gIAkJCWRlc2NyaXB0aW9uID0gIlJLMzM5OS1RNyAoUHVtYSkgZmxhdCBkZXZp
Y2UtdHJlZSI7Cj4gLQkJCWRhdGEgPSAvaW5jYmluLygiLi4vLi4vLi4vdS1ib290LmR0YiIpOwo+
ICsJCQlkYXRhID0gL2luY2Jpbi8oInUtYm9vdC5kdGIiKTsKPiAgCQkJdHlwZSA9ICJmbGF0X2R0
IjsKPiAgCQkJY29tcHJlc3Npb24gPSAibm9uZSI7Cj4gIAkJfTsKPiArX19IRUFERVJfRU9GCj4g
Kwo+ICtjYXQgPDwgX19DT05GX0hFQURFUl9FT0YKPiAgCX07Cj4gIAo+ICAJY29uZmlndXJhdGlv
bnMgewo+IEBAIC01NCw1ICs4NCw5IEBACj4gIAkJCWxvYWRhYmxlcyA9ICJ1Ym9vdCIsICJwbXUi
Owo+ICAJCQlmZHQgPSAiZmR0IjsKPiAgCQl9Owo+ICtfX0NPTkZfSEVBREVSX0VPRgo+ICsKPiAr
Y2F0IDw8IF9fSVRTX0VPRgo+ICAJfTsKPiAgfTsKPiArX19JVFNfRU9GCj4gZGlmZiAtLWdpdCBh
L2NvbmZpZ3MvcHVtYS1yazMzOTlfZGVmY29uZmlnIGIvY29uZmlncy9wdW1hLXJrMzM5OV9kZWZj
b25maWcKPiBpbmRleCBlNWVhMmZlMGIzLi45OGIyZGQ2ZjAyIDEwMDY0NAo+IC0tLSBhL2NvbmZp
Z3MvcHVtYS1yazMzOTlfZGVmY29uZmlnCj4gKysrIGIvY29uZmlncy9wdW1hLXJrMzM5OV9kZWZj
b25maWcKPiBAQCAtMTUsNyArMTUsNyBAQCBDT05GSUdfU1BMX1NQSV9GTEFTSF9TVVBQT1JUPXkK
PiAgQ09ORklHX1NQTF9TUElfU1VQUE9SVD15Cj4gIENPTkZJR19ERUJVR19VQVJUPXkKPiAgQ09O
RklHX05SX0RSQU1fQkFOS1M9MQo+IC1DT05GSUdfU1BMX0ZJVF9TT1VSQ0U9ImJvYXJkL3RoZW9i
cm9tYS1zeXN0ZW1zL3B1bWFfcmszMzk5L2ZpdF9zcGxfYXRmLml0cyIKPiArQ09ORklHX1NQTF9G
SVRfR0VORVJBVE9SPSJib2FyZC90aGVvYnJvbWEtc3lzdGVtcy9wdW1hX3JrMzM5OS9maXRfc3Bs
X2F0Zi5zaCIKPiAgQ09ORklHX0RFRkFVTFRfRkRUX0ZJTEU9InJvY2tjaGlwL3JrMzM5OS1wdW1h
LWhhaWtvdS5kdGIiCj4gIENPTkZJR19NSVNDX0lOSVRfUj15Cj4gICMgQ09ORklHX0RJU1BMQVlf
Q1BVSU5GTyBpcyBub3Qgc2V0Cj4gZGlmZiAtLWdpdCBhL2RvYy9SRUFETUUucm9ja2NoaXAgYi9k
b2MvUkVBRE1FLnJvY2tjaGlwCj4gaW5kZXggOThhMzgyNGUyYy4uODhhNDU5MzM5MiAxMDA2NDQK
PiAtLS0gYS9kb2MvUkVBRE1FLnJvY2tjaGlwCj4gKysrIGIvZG9jL1JFQURNRS5yb2NrY2hpcAo+
IEBAIC0xMzcsOCArMTM3LDggQEAgRm9yIGV4YW1wbGU6Cj4gIAk9PiBjZCBhcm0tdHJ1c3RlZC1m
aXJtd2FyZQo+ICAJPT4gbWFrZSBDUk9TU19DT01QSUxFPWFhcmNoNjQtbGludXgtZ251LSBQTEFU
PXJrMzM5OSBibDMxCj4gIAo+IC0JKGNvcHkgYmwzMS5iaW4gaW50byBVLUJvb3Qgcm9vdCBkaXIp
Cj4gLQk9PiBjcCBidWlsZC9yazMzOTkvcmVsZWFzZS9ibDMxL2JsMzEuYmluIC9wYXRoL3RvL3Ut
Ym9vdC9ibDMxLXJrMzM5OS5iaW4KPiArCShleHBvcnQgYmwzMS5iaW4pCj4gKwk9PiBleHBvcnQg
QkwzMT0vcGF0aC90by9hcm0tdHJ1c3RlZC1maXJtd2FyZS9idWlsZC9yazMzOTkvcmVsZWFzZS9i
bDMxL2JsMzEuYmluCj4gIAo+ICAgICAgIEZvciByZXN0IG9mIHJrMzM5OSBib2FyZHMuCj4gIAo+
IEBAIC0xNjIsOCArMTYyLDggQEAgRm9yIGV4YW1wbGU6Cj4gICAgICAgKGV4cG9ydCBjcm9zcyBj
b21waWxlciBwYXRoIGZvciBDb3J0ZXgtTTAgUE1VKQo+ICAgICAgID0+IG1ha2UgQ1JPU1NfQ09N
UElMRT1hcm0tY29ydGV4X20wLWVhYmktCj4gIAo+IC0gICAgIChjb3B5IHJrMzM5OW0wLmJpbiBp
bnRvIFUtQm9vdCByb290IGRpcikKPiAtICAgICA9PiBjcCByazMzOTltMC5iaW4gL3BhdGgvdG8v
dS1ib290Cj4gKyAgICAgKGV4cG9ydCByazMzOTltMC5iaW4pCj4gKyAgICAgPT4gZXhwb3J0IFBN
VU0wPS9wYXRoL3RvL3JrMzM5OS1jb3J0ZXgtbTAvcmszMzk5bTAuYmluCj4gIAo+ICAgICAtIENv
bXBpbGUgVS1Cb290Cj4gIAoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
