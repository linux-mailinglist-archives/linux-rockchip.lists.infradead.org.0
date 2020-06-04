Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E11D11EDB96
	for <lists+linux-rockchip@lfdr.de>; Thu,  4 Jun 2020 05:14:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YHel0YjJ+euiy3S0XVqV2bq9DOq8+FY02UFJHQFDKKk=; b=S7wzGwhu17ClD/bkvKqZ56Di3
	i1vYgLCk349pGbjhuYIxSDu485E7/H9FlNLsh9caob9X0cCvTO35yMkf8uOH2s6Xkjw60Wb91PKZ7
	sKnXbXF8F6qBcRxo8sGeVwWpW+E387S19AcuqbZC9ABF4L1LMNHKVhK0axTO4w21YZMUZLz26e0ob
	0ha/oMzJ9LnSCYp5c3GyzlloYZk26eYyl3r4hI2n0LMyIDBzJQ2Nsbbvivyw7niYYXBKW+Yyq65Ct
	9ZV/B4kpTn/hjaICaDTtgLNhFqExHBUYpTNxxAydtUDNwYwVWT7er6pDc4+DvHvXJoqN4qeItKW88
	2xHeI4hBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jggKt-0000oG-8Q; Thu, 04 Jun 2020 03:14:31 +0000
Received: from regular1.263xmail.com ([211.150.70.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jggKp-0000lp-FC
 for linux-rockchip@lists.infradead.org; Thu, 04 Jun 2020 03:14:29 +0000
Received: from localhost (unknown [192.168.167.8])
 by regular1.263xmail.com (Postfix) with ESMTP id 8B8E7687;
 Thu,  4 Jun 2020 11:14:25 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P21212T140696161359616S1591240458688907_; 
 Thu, 04 Jun 2020 11:14:25 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <d6723a18d9659fcc484e2f95385c45a0>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v2 3/4] roc-rk3399-pc: Add SPI boot
To: Jagan Teki <jagan@amarulasolutions.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>, Hugh Cole-Baker <sigmaris@gmail.com>
References: <20200601204213.466120-1-jagan@amarulasolutions.com>
 <20200601204213.466120-4-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <c81fcabf-6a84-5702-6640-8f9e4cf1da0c@rock-chips.com>
Date: Thu, 4 Jun 2020 11:14:17 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200601204213.466120-4-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_201427_877685_B43BE154 
X-CRM114-Status: GOOD (  13.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.197 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [211.150.70.197 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvNi8yIOS4iuWNiDQ6NDIsIEphZ2FuIFRla2kgd3JvdGU6Cj4gVS1Cb290IFRQTCAy
MDIwLjA3LXJjMy0wMDA5MC1nZDRlOTE5ZjkyNy1kaXJ0eSAoSnVuIDAxIDIwMjAgLSAyMzo0NTo1
MykKPiBDaGFubmVsIDA6IExQRERSNCwgNTBNSHoKPiBCVz0zMiBDb2w9MTAgQms9OCBDUzAgUm93
PTE1IENTMSBSb3c9MTUgQ1M9MiBEaWUgQlc9MTYgU2l6ZT0yMDQ4TUIKPiBDaGFubmVsIDE6IExQ
RERSNCwgNTBNSHoKPiBCVz0zMiBDb2w9MTAgQms9OCBDUzAgUm93PTE1IENTMSBSb3c9MTUgQ1M9
MiBEaWUgQlc9MTYgU2l6ZT0yMDQ4TUIKPiAyNTZCIHN0cmlkZQo+IDI1NkIgc3RyaWRlCj4gbHBk
ZHI0X3NldF9yYXRlOiBjaGFuZ2UgZnJlcSB0byA0MDAwMDAwMDAgbWh6IDAsIDEKPiBscGRkcjRf
c2V0X3JhdGU6IGNoYW5nZSBmcmVxIHRvIDgwMDAwMDAwMCBtaHogMSwgMAo+IFRyeWluZyB0byBi
b290IGZyb20gQk9PVFJPTQo+IFJldHVybmluZyB0byBib290IFJPTS4uLgo+Cj4gVS1Cb290IFNQ
TCAyMDIwLjA3LXJjMy0wMDA4Ny1nYTIxZTlmZDM4NSAoSnVuIDAyIDIwMjAgLSAwMDowOTo0NSAr
MDUzMCkKPiBUcnlpbmcgdG8gYm9vdCBmcm9tIE1NQzEKPiBOT1RJQ0U6ICBCTDMxOiB2Mi4yKHJl
bGVhc2UpOgo+IE5PVElDRTogIEJMMzE6IEJ1aWx0IDogMTU6MDU6MzcsIE1heSAxMiAyMDIwCj4K
PiBVLUJvb3QgMjAyMC4wNy1yYzMtMDAwODctZ2EyMWU5ZmQzODUgKEp1biAwMiAyMDIwIC0gMDA6
MDk6NDUgKzA1MzApCj4KPiBTb0M6IFJvY2tjaGlwIHJrMzM5OQo+IFJlc2V0IGNhdXNlOiBQT1IK
PiBNb2RlbDogRmlyZWZseSBST0MtUkszMzk5LVBDIEJvYXJkCj4gRFJBTTogIDMuOSBHaUIKPiBQ
TUlDOiAgUks4MDgKPiBNTUM6ICAgbW1jQGZlMzIwMDAwOiAxLCBzZGhjaUBmZTMzMDAwMDogMAo+
IExvYWRpbmcgRW52aXJvbm1lbnQgZnJvbSBTUEkgRmxhc2guLi4gU0Y6IERldGVjdGVkIHcyNXEx
Mjggd2l0aCBwYWdlIHNpemUgMjU2IEJ5dGVzLCBlcmFzZSBzaXplIDQgS2lCLCB0b3RhbCAxNiBN
aUIKPiAqKiogV2FybmluZyAtIGJhZCBDUkMsIHVzaW5nIGRlZmF1bHQgZW52aXJvbm1lbnQKPgo+
IEluOiAgICBzZXJpYWwKPiBPdXQ6ICAgc2VyaWFsCj4gRXJyOiAgIHNlcmlhbAo+IE1vZGVsOiBG
aXJlZmx5IFJPQy1SSzMzOTktUEMgQm9hcmQKPgo+IFNpZ25lZC1vZmYtYnk6IEphZ2FuIFRla2kg
PGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgoKUmV2aWV3ZWQtYnk6IEtldmVyIFlhbmcgPGtl
dmVyLnlhbmdAcm9jay1jaGlwcy5jb20+CgpUaGFua3MsCi0gS2V2ZXIKPiAtLS0KPiAgIGFyY2gv
YXJtL2R0cy9yazMzOTktcm9jLXBjLXUtYm9vdC5kdHNpICAgIHwgMTIgKysrKysrKysrKystCj4g
ICBjb25maWdzL3JvYy1wYy1tZXp6YW5pbmUtcmszMzk5X2RlZmNvbmZpZyB8ICAzICsrKwo+ICAg
Y29uZmlncy9yb2MtcGMtcmszMzk5X2RlZmNvbmZpZyAgICAgICAgICAgfCAgMyArKysKPiAgIDMg
ZmlsZXMgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAt
LWdpdCBhL2FyY2gvYXJtL2R0cy9yazMzOTktcm9jLXBjLXUtYm9vdC5kdHNpIGIvYXJjaC9hcm0v
ZHRzL3JrMzM5OS1yb2MtcGMtdS1ib290LmR0c2kKPiBpbmRleCAxNDFkZDBiMzA2Li5mYzE1NWU2
OTAzIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL2R0cy9yazMzOTktcm9jLXBjLXUtYm9vdC5kdHNp
Cj4gKysrIGIvYXJjaC9hcm0vZHRzL3JrMzM5OS1yb2MtcGMtdS1ib290LmR0c2kKPiBAQCAtMTIs
NyArMTIsMTEgQEAKPiAgIAl9Owo+ICAgCj4gICAJY2hvc2VuIHsKPiAtCQl1LWJvb3Qsc3BsLWJv
b3Qtb3JkZXIgPSAic2FtZS1hcy1zcGwiLCAmc2RoY2ksICZzZG1tYzsKPiArCQl1LWJvb3Qsc3Bs
LWJvb3Qtb3JkZXIgPSAic2FtZS1hcy1zcGwiLCAmc3BpX2ZsYXNoLCAmc2RoY2ksICZzZG1tYzsK
PiArCX07Cj4gKwo+ICsJY29uZmlnIHsKPiArCQl1LWJvb3Qsc3BsLXBheWxvYWQtb2Zmc2V0ID0g
PDB4NjAwMDA+OyAvKiBAIDM4NEtCICovCj4gICAJfTsKPiAgIAo+ICAgCXZjY19odWJfZW46IHZj
Y19odWJfZW4tcmVndWxhdG9yIHsKPiBAQCAtNDAsNiArNDQsMTIgQEAKPiAgIAl2aW4tc3VwcGx5
ID0gPCZ2Y2NfdmJ1c190eXBlYzA+Owo+ICAgfTsKPiAgIAo+ICsmc3BpMSB7Cj4gKwlzcGlfZmxh
c2g6IGZsYXNoQDAgewo+ICsJCXUtYm9vdCxkbS1wcmUtcmVsb2M7Cj4gKwl9Owo+ICt9Owo+ICsK
PiAgICZ2ZGRfbG9nIHsKPiAgIAlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw0MzAwMDA+Owo+
ICAgCXJlZ3VsYXRvci1pbml0LW1pY3Jvdm9sdCA9IDw5NTAwMDA+Owo+IGRpZmYgLS1naXQgYS9j
b25maWdzL3JvYy1wYy1tZXp6YW5pbmUtcmszMzk5X2RlZmNvbmZpZyBiL2NvbmZpZ3Mvcm9jLXBj
LW1lenphbmluZS1yazMzOTlfZGVmY29uZmlnCj4gaW5kZXggMWMxNTM5YmNiOS4uNGI5OGRkOWNm
YyAxMDA2NDQKPiAtLS0gYS9jb25maWdzL3JvYy1wYy1tZXp6YW5pbmUtcmszMzk5X2RlZmNvbmZp
Zwo+ICsrKyBiL2NvbmZpZ3Mvcm9jLXBjLW1lenphbmluZS1yazMzOTlfZGVmY29uZmlnCj4gQEAg
LTcsMTIgKzcsMTUgQEAgQ09ORklHX1RBUkdFVF9ST0NfUENfUkszMzk5PXkKPiAgIENPTkZJR19O
Ul9EUkFNX0JBTktTPTEKPiAgIENPTkZJR19ERUJVR19VQVJUX0JBU0U9MHhGRjFBMDAwMAo+ICAg
Q09ORklHX0RFQlVHX1VBUlRfQ0xPQ0s9MjQwMDAwMDAKPiArQ09ORklHX1NQTF9TUElfRkxBU0hf
U1VQUE9SVD15Cj4gK0NPTkZJR19TUExfU1BJX1NVUFBPUlQ9eQo+ICAgQ09ORklHX0RFQlVHX1VB
UlQ9eQo+ICAgQ09ORklHX0RFRkFVTFRfRkRUX0ZJTEU9InJvY2tjaGlwL3JrMzM5OS1yb2MtcGMt
bWV6emFuaW5lLmR0YiIKPiAgIENPTkZJR19ESVNQTEFZX0JPQVJESU5GT19MQVRFPXkKPiAgICMg
Q09ORklHX1NQTF9SQVdfSU1BR0VfU1VQUE9SVCBpcyBub3Qgc2V0Cj4gICBDT05GSUdfU1BMX1NU
QUNLX1I9eQo+ICAgQ09ORklHX1NQTF9TVEFDS19SX01BTExPQ19TSU1QTEVfTEVOPTB4MTAwMDAK
PiArQ09ORklHX1NQTF9TUElfTE9BRD15Cj4gICBDT05GSUdfVFBMPXkKPiAgIENPTkZJR19UUExf
R1BJT19TVVBQT1JUPXkKPiAgIENPTkZJR19DTURfQk9PVFo9eQo+IGRpZmYgLS1naXQgYS9jb25m
aWdzL3JvYy1wYy1yazMzOTlfZGVmY29uZmlnIGIvY29uZmlncy9yb2MtcGMtcmszMzk5X2RlZmNv
bmZpZwo+IGluZGV4IDE4YzM0M2Y5ZjkuLmU1ZmY1NzBiODcgMTAwNjQ0Cj4gLS0tIGEvY29uZmln
cy9yb2MtcGMtcmszMzk5X2RlZmNvbmZpZwo+ICsrKyBiL2NvbmZpZ3Mvcm9jLXBjLXJrMzM5OV9k
ZWZjb25maWcKPiBAQCAtOCwxMiArOCwxNSBAQCBDT05GSUdfVEFSR0VUX1JPQ19QQ19SSzMzOTk9
eQo+ICAgQ09ORklHX05SX0RSQU1fQkFOS1M9MQo+ICAgQ09ORklHX0RFQlVHX1VBUlRfQkFTRT0w
eEZGMUEwMDAwCj4gICBDT05GSUdfREVCVUdfVUFSVF9DTE9DSz0yNDAwMDAwMAo+ICtDT05GSUdf
U1BMX1NQSV9GTEFTSF9TVVBQT1JUPXkKPiArQ09ORklHX1NQTF9TUElfU1VQUE9SVD15Cj4gICBD
T05GSUdfREVCVUdfVUFSVD15Cj4gICBDT05GSUdfREVGQVVMVF9GRFRfRklMRT0icm9ja2NoaXAv
cmszMzk5LXJvYy1wYy5kdGIiCj4gICBDT05GSUdfRElTUExBWV9CT0FSRElORk9fTEFURT15Cj4g
ICAjIENPTkZJR19TUExfUkFXX0lNQUdFX1NVUFBPUlQgaXMgbm90IHNldAo+ICAgQ09ORklHX1NQ
TF9TVEFDS19SPXkKPiAgIENPTkZJR19TUExfU1RBQ0tfUl9NQUxMT0NfU0lNUExFX0xFTj0weDEw
MDAwCj4gK0NPTkZJR19TUExfU1BJX0xPQUQ9eQo+ICAgQ09ORklHX1RQTD15Cj4gICBDT05GSUdf
VFBMX0dQSU9fU1VQUE9SVD15Cj4gICBDT05GSUdfQ01EX0JPT1RaPXkKCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
