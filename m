Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A418D1BC0DD
	for <lists+linux-rockchip@lfdr.de>; Tue, 28 Apr 2020 16:13:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gDUFShNokEHk7H8J7iEuhIQCJ4MdCF+5ZbQB8LBpBps=; b=bslTpZN648l1BDSZv1PTLAUsq
	z/nk9EvIA/5rhGolDrUauSMkI0USrzI8qpuF5c6qJkoWgT/I2v92C1FquwBHeWGSwsipTbHpmWkQ2
	vB6ayKDtVg4XH5C82i92eMXmjvkrg0uDFKwCJDJBHk4tOpl7ZpNpjVns32Jr4WsDFr2kfsV1ZzK99
	a6/cOznVxIgHuTQTIFI+YQ1AS3BUqlPuUEiSRaer/1fcB7+vwcWYFPpP8gQItuRDWJVbJ85HDM8SQ
	yR1lgcf6DR9qm8FQp7wRn8SvN6Iy6JrPbhGbTViBR7FALT00QqT5qi9DOjxXTSksV2jfQ9SmuRDLM
	38MQ6RRzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTQyx-0006SV-7H; Tue, 28 Apr 2020 14:13:07 +0000
Received: from regular1.263xmail.com ([211.150.70.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTQyo-0006Gg-5U
 for linux-rockchip@lists.infradead.org; Tue, 28 Apr 2020 14:13:00 +0000
Received: from localhost (unknown [192.168.167.13])
 by regular1.263xmail.com (Postfix) with ESMTP id 2F8A528D;
 Tue, 28 Apr 2020 22:12:53 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.0.110] (unknown [112.49.233.123])
 by smtp.263.net (postfix) whith ESMTP id
 P17829T139806193690368S1588083171928252_; 
 Tue, 28 Apr 2020 22:12:53 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <316ff7adb1884ebc0a10bb7f1b4db6b9>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 112.49.233.123
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v2 2/6] arm64: dts: rk3399-evb: Move u-boot properties
 into -u-boot.dtsi
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20200428100019.19155-1-jagan@amarulasolutions.com>
 <20200428100019.19155-3-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <fe5e0653-8d8d-fbd0-4779-3577090fc291@rock-chips.com>
Date: Tue, 28 Apr 2020 22:12:51 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200428100019.19155-3-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_071258_518561_BDEF46E3 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.198 listed in list.dnswl.org]
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
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org,
 linux-amarula@amarulasolutions.com, sunil@amarulasolutions.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvNC8yOCDkuIvljYg2OjAwLCBKYWdhbiBUZWtpIHdyb3RlOgo+IE1vdmUgVS1Cb290
IHNwZWNpZmljIHByb3BlcnRpZXMgaW50byByazMzOTktZXZiIHUtYm9vdAo+IHNwZWNpZmljIGR0
c2kgZmlsZS4KPgo+IFRoaXMgd291bGQgaGVscCB0byBzeW5jIHRoZSBkZXZpY2V0cmVlcyBmcm9t
IExpbnV4IHdoZW5ldmVyCj4gcmVxdWlyZWQgaW5zdGVhZCBvZiBhZGRpbmcgc3BlY2lmaWMgbm9k
ZXMuCj4KPiBTaWduZWQtb2ZmLWJ5OiBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25z
LmNvbT4KCgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNv
bT4KClRoYW5rcywKLSBLZXZlcgo+IC0tLQo+IENoYW5nZXMgZm9yIHYyOgo+IC0gbm9uZQo+Cj4g
ICBhcmNoL2FybS9kdHMvcmszMzk5LWV2Yi11LWJvb3QuZHRzaSB8IDggKysrKysrKysKPiAgIGFy
Y2gvYXJtL2R0cy9yazMzOTktZXZiLmR0cyAgICAgICAgIHwgMiAtLQo+ICAgMiBmaWxlcyBjaGFu
Z2VkLCA4IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvYXJj
aC9hcm0vZHRzL3JrMzM5OS1ldmItdS1ib290LmR0c2kgYi9hcmNoL2FybS9kdHMvcmszMzk5LWV2
Yi11LWJvb3QuZHRzaQo+IGluZGV4IGNjYjMzZDM0ZDEuLmE0ZDY4ZjNiOTggMTAwNjQ0Cj4gLS0t
IGEvYXJjaC9hcm0vZHRzL3JrMzM5OS1ldmItdS1ib290LmR0c2kKPiArKysgYi9hcmNoL2FybS9k
dHMvcmszMzk5LWV2Yi11LWJvb3QuZHRzaQo+IEBAIC0xMSwzICsxMSwxMSBAQAo+ICAgCQl1LWJv
b3Qsc3BsLWJvb3Qtb3JkZXIgPSAmc2RoY2ksICZzZG1tYzsKPiAgIAl9Owo+ICAgfTsKPiArCj4g
KyZpMmMwIHsKPiArCXUtYm9vdCxkbS1wcmUtcmVsb2M7Cj4gK307Cj4gKwo+ICsmcms4MDggewo+
ICsJdS1ib290LGRtLXByZS1yZWxvYzsKPiArfTsKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vZHRz
L3JrMzM5OS1ldmIuZHRzIGIvYXJjaC9hcm0vZHRzL3JrMzM5OS1ldmIuZHRzCj4gaW5kZXggNDEy
OWU5MDJhOC4uYzcyNzE5YzBkMyAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9kdHMvcmszMzk5LWV2
Yi5kdHMKPiArKysgYi9hcmNoL2FybS9kdHMvcmszMzk5LWV2Yi5kdHMKPiBAQCAtMTk5LDcgKzE5
OSw2IEBACj4gICAJY2xvY2stZnJlcXVlbmN5ID0gPDQwMDAwMD47Cj4gICAJaTJjLXNjbC1mYWxs
aW5nLXRpbWUtbnMgPSA8NTA+Owo+ICAgCWkyYy1zY2wtcmlzaW5nLXRpbWUtbnMgPSA8MTAwPjsK
PiAtCXUtYm9vdCxkbS1wcmUtcmVsb2M7Cj4gICAKPiAgIAlyazgwODogcG1pY0AxYiB7Cj4gICAJ
CWNvbXBhdGlibGUgPSAicm9ja2NoaXAscms4MDgiOwo+IEBAIC0yMTEsNyArMjEwLDYgQEAKPiAg
IAkJcmVnID0gPDB4MWI+Owo+ICAgCQlyb2NrY2hpcCxzeXN0ZW0tcG93ZXItY29udHJvbGxlcjsK
PiAgIAkJI2Nsb2NrLWNlbGxzID0gPDE+Owo+IC0JCXUtYm9vdCxkbS1wcmUtcmVsb2M7Cj4gICAJ
CXN0YXR1cyA9ICJva2F5IjsKPiAgIAo+ICAgCQl2Y2MxMi1zdXBwbHkgPSA8JnZjYzN2M19zeXM+
OwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
