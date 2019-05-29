Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FC722D746
	for <lists+linux-rockchip@lfdr.de>; Wed, 29 May 2019 10:06:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V/daLn3jbbugEUR6QRYMvjaTV/YqeK6T9ko05hrHDAg=; b=Bu67mT1gLATC7l
	YDSLPXj/oYMj9UOFNpG05jepL3tXOgi1gOP11VeBMnNLmWzrGOrrGSvvLKIc5oEQucLwR1ZTqMw1I
	EQTVGaXPGoZbcYmXNRvlYyczZ24ONxPe2cJoCQr0qUu5ISLRlU8upswZzCgXJ3moqjsRZW1LDt2qN
	HwJ6uQgfG5nKjIyBA8Q0ct2dQXArqOLhma5HjwpoTjOdbKNPqLF/yqoKBWC8LR4fxfJozoAboC0AH
	r5BeCa96+KSAMsoL8KZGx5ulDKnrHw2vna4JNA5gCyyI8J4CHaNOGIPTcs0xegv47OTNueB3xn5tM
	yx8L1g5EmK4MaOvNlnHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVtbJ-0001bw-A1; Wed, 29 May 2019 08:06:21 +0000
Received: from regular1.263xmail.com ([211.150.70.205])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVtbF-0001aw-Cb
 for linux-rockchip@lists.infradead.org; Wed, 29 May 2019 08:06:18 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.103])
 by regular1.263xmail.com (Postfix) with ESMTP id 920214F6;
 Wed, 29 May 2019 16:06:14 +0800 (CST)
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
 P11301T140087673222912S1559117165902856_; 
 Wed, 29 May 2019 16:06:13 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <06bfe263bf16d0f8b69107f8bfdbd8d8>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: u-boot@lists.denx.de
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH 1/3] rk3399: orangepi: Enable TPL
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20190509105746.24830-1-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <db013001-ba21-db2f-6a05-f756cbf1ae97@rock-chips.com>
Date: Wed, 29 May 2019 16:06:05 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20190509105746.24830-1-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_010617_587378_EA7FADE6 
X-CRM114-Status: GOOD (  12.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 u-boot@lists.denx.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgSmFnYW4sCgrCoMKgwqAgVGhlIGZpcnN0IHR3byBwYXRjaGVzIG5lZWQgcmUtYmFzZSBhZnRl
ciB0aGUgcGF0Y2ggZnJvbSBUb206CgozNDRhMGU0MzY3IGNvbmZpZ3M6IFJlc3luYyB3aXRoIHNh
dmVkZWZjb25maWcKCgpUaGFua3MsCi0gS2V2ZXIKT24gMDUvMDkvMjAxOSAwNjo1NyBQTSwgSmFn
YW4gVGVraSB3cm90ZToKPiBFbmFibGUgVFBMIGZvciBPcmFuZ2VQSSByazMzOTkgYm9hcmQuCj4K
PiBTaWduZWQtb2ZmLWJ5OiBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4K
PiAtLS0KPiAgY29uZmlncy9vcmFuZ2VwaS1yazMzOTlfZGVmY29uZmlnIHwgNyArKysrLS0tCj4g
IDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4KPiBkaWZm
IC0tZ2l0IGEvY29uZmlncy9vcmFuZ2VwaS1yazMzOTlfZGVmY29uZmlnIGIvY29uZmlncy9vcmFu
Z2VwaS1yazMzOTlfZGVmY29uZmlnCj4gaW5kZXggM2YwMmM4OTk4My4uOTAwMjFiYjY5NSAxMDA2
NDQKPiAtLS0gYS9jb25maWdzL29yYW5nZXBpLXJrMzM5OV9kZWZjb25maWcKPiArKysgYi9jb25m
aWdzL29yYW5nZXBpLXJrMzM5OV9kZWZjb25maWcKPiBAQCAtNSw3ICs1LDcgQEAgQ09ORklHX1NQ
TF9MSUJDT01NT05fU1VQUE9SVD15Cj4gIENPTkZJR19TUExfTElCR0VORVJJQ19TVVBQT1JUPXkK
PiAgQ09ORklHX1NZU19NQUxMT0NfRl9MRU49MHg0MDAwCj4gIENPTkZJR19ST0NLQ0hJUF9SSzMz
OTk9eQo+IC1DT05GSUdfUk9DS0NISVBfU1BMX1JFU0VSVkVfSVJBTT0weDQwMDAKPiArQ09ORklH
X1JPQ0tDSElQX1NQTF9SRVNFUlZFX0lSQU09MHg1MDAwMAo+ICBDT05GSUdfREVCVUdfVUFSVF9C
QVNFPTB4RkYxQTAwMDAKPiAgQ09ORklHX0RFQlVHX1VBUlRfQ0xPQ0s9MjQwMDAwMDAKPiAgQ09O
RklHX1NQTF9TVEFDS19SX0FERFI9MHg4MDAwMAo+IEBAIC0xNCw5ICsxNCw4IEBAIENPTkZJR19O
Ul9EUkFNX0JBTktTPTEKPiAgQ09ORklHX0RFRkFVTFRfRkRUX0ZJTEU9InJvY2tjaGlwL3JrMzM5
OS1vcmFuZ2VwaS5kdGIiCj4gICMgQ09ORklHX0RJU1BMQVlfQ1BVSU5GTyBpcyBub3Qgc2V0Cj4g
IENPTkZJR19ESVNQTEFZX0JPQVJESU5GT19MQVRFPXkKPiAtQ09ORklHX1NQTF9URVhUX0JBU0U9
MHhmZjhjMjAwMAo+ICBDT05GSUdfU1BMX1NUQUNLX1I9eQo+IC1DT05GSUdfU1BMX1NUQUNLX1Jf
TUFMTE9DX1NJTVBMRV9MRU49MHg0MDAwCj4gK0NPTkZJR19TUExfU1RBQ0tfUl9NQUxMT0NfU0lN
UExFX0xFTj0weDEwMDAwCj4gIENPTkZJR19DTURfQk9PVFo9eQo+ICBDT05GSUdfQ01EX0dQVD15
Cj4gIENPTkZJR19DTURfTU1DPXkKPiBAQCAtMjQsNiArMjMsNyBAQCBDT05GSUdfQ01EX1NGPXkK
PiAgQ09ORklHX0NNRF9VU0I9eQo+ICAjIENPTkZJR19DTURfU0VURVhQUiBpcyBub3Qgc2V0Cj4g
IENPTkZJR19DTURfVElNRT15Cj4gK0NPTkZJR19UUEw9eQo+ICBDT05GSUdfU1BMX09GX0NPTlRS
T0w9eQo+ICBDT05GSUdfREVGQVVMVF9ERVZJQ0VfVFJFRT0icmszMzk5LW9yYW5nZXBpIgo+ICBD
T05GSUdfT0ZfU1BMX1JFTU9WRV9QUk9QUz0icGluY3RybC0wIHBpbmN0cmwtbmFtZXMgY2xvY2st
bmFtZXMgaW50ZXJydXB0LXBhcmVudCBhc3NpZ25lZC1jbG9ja3MgYXNzaWduZWQtY2xvY2stcmF0
ZXMgYXNzaWduZWQtY2xvY2stcGFyZW50cyIKPiBAQCAtNTYsNCArNTYsNSBAQCBDT05GSUdfVVNC
X0VUSEVSX01DUzc4MzA9eQo+ICBDT05GSUdfVVNCX0VUSEVSX1JUTDgxNTI9eQo+ICBDT05GSUdf
VVNCX0VUSEVSX1NNU0M5NVhYPXkKPiAgQ09ORklHX1VTRV9USU5ZX1BSSU5URj15Cj4gK0NPTkZJ
R19TUExfVElOWV9NRU1TRVQ9eQo+ICBDT05GSUdfRVJSTk9fU1RSPXkKCgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
