Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8AF512CC03
	for <lists+linux-rockchip@lfdr.de>; Mon, 30 Dec 2019 04:00:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WXJTYWRw2MljnIKSwU185NORjYDEv19vjber3cC/VY0=; b=Fvsaq19ebsA3ebSQgQnpeLQ83
	3Iqbh9zG0xcQVdXxyg3/gXD/ajOHJmBDa0HpDoh0T0OLRmKl619Go+ZAdWCN09Bu1KUZeSjJ1kYyQ
	MVLmr9a2W4CWF7bGwJL5F4/e9MQSGq5nLpuVd8x+TqsDsG5yjBTygCtFPTCvvTkxbWP/V35Z6Ba0N
	1zGyfQCXYTibgWq7gIOtRuFG9F9XEz6XH5WQK/0rRNbk3GAUHJ8RY/IEuQCTpYpTAFn/xRUB0DOVF
	QgAY73QN+XR9kNqVR3PyEjG6DYrSiAmNNRVjH3NA8GlUmX7ijqFCYXnZmNe+mhdAAHz4Iu9E6RDFu
	pUm3G0CTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1illIH-0007A1-5n; Mon, 30 Dec 2019 03:00:33 +0000
Received: from regular1.263xmail.com ([211.150.70.205])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1illIE-00078q-BL
 for linux-rockchip@lists.infradead.org; Mon, 30 Dec 2019 03:00:31 +0000
Received: from localhost (unknown [192.168.167.69])
 by regular1.263xmail.com (Postfix) with ESMTP id 44BDC545;
 Mon, 30 Dec 2019 11:00:27 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.9] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P26861T140479020648192S1577674825889658_; 
 Mon, 30 Dec 2019 11:00:26 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <b8f8b303a8a728c6a2dd23c1156b9594>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-rockchip@lists.infradead.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH 09/11] roc-pc-rk3399: Enable SPI Flash
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-10-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <35014bef-89d6-bd3a-7c7e-2336df3c9f2c@rock-chips.com>
Date: Mon, 30 Dec 2019 11:00:26 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191221075440.6944-10-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_190030_551856_98EDB154 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.205 listed in list.dnswl.org]
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
Cc: u-boot@lists.denx.de, linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvMTIvMjEg5LiL5Y2IMzo1NCwgSmFnYW4gVGVraSB3cm90ZToKPiBFbmFibGUgd2lu
Ym9uZCBTUEkgZmxhc2ggZm9yIFJPQy1QQy1SSzMzOTkgYm9hcmQuCj4KPiBTaWduZWQtb2ZmLWJ5
OiBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KUmV2aWV3ZWQtYnk6IEtl
dmVyIFlhbmcgPGtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+CgpUaGFua3MsCi0gS2V2ZXIKPiAt
LS0KPiAgIGFyY2gvYXJtL2R0cy9yazMzOTktcm9jLXBjLXUtYm9vdC5kdHNpIHwgNCArKysrCj4g
ICBjb25maWdzL3JvYy1wYy1yazMzOTlfZGVmY29uZmlnICAgICAgICB8IDIgKysKPiAgIDIgZmls
ZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vZHRz
L3JrMzM5OS1yb2MtcGMtdS1ib290LmR0c2kgYi9hcmNoL2FybS9kdHMvcmszMzk5LXJvYy1wYy11
LWJvb3QuZHRzaQo+IGluZGV4IDc3ZDVjZjVkM2MuLjU3NDY0NDI5ODEgMTAwNjQ0Cj4gLS0tIGEv
YXJjaC9hcm0vZHRzL3JrMzM5OS1yb2MtcGMtdS1ib290LmR0c2kKPiArKysgYi9hcmNoL2FybS9k
dHMvcmszMzk5LXJvYy1wYy11LWJvb3QuZHRzaQo+IEBAIC03LDYgKzcsMTAgQEAKPiAgICNpbmNs
dWRlICJyazMzOTktc2RyYW0tbHBkZHI0LTEwMC5kdHNpIgo+ICAgCj4gICAvIHsKPiArCWFsaWFz
ZXMgewo+ICsJCXNwaTAgPSAmc3BpMTsKPiArCX07Cj4gKwo+ICAgCWNob3NlbiB7Cj4gICAJCXUt
Ym9vdCxzcGwtYm9vdC1vcmRlciA9ICJzYW1lLWFzLXNwbCIsICZzZGhjaSwgJnNkbW1jOwo+ICAg
CX07Cj4gZGlmZiAtLWdpdCBhL2NvbmZpZ3Mvcm9jLXBjLXJrMzM5OV9kZWZjb25maWcgYi9jb25m
aWdzL3JvYy1wYy1yazMzOTlfZGVmY29uZmlnCj4gaW5kZXggMzA1YmFhNzEyYy4uZjM3YTdiZGEw
MCAxMDA2NDQKPiAtLS0gYS9jb25maWdzL3JvYy1wYy1yazMzOTlfZGVmY29uZmlnCj4gKysrIGIv
Y29uZmlncy9yb2MtcGMtcmszMzk5X2RlZmNvbmZpZwo+IEBAIC00Miw2ICs0Miw4IEBAIENPTkZJ
R19SQU1fUkszMzk5X0xQRERSND15Cj4gICBDT05GSUdfQkFVRFJBVEU9MTUwMDAwMAo+ICAgQ09O
RklHX0RFQlVHX1VBUlRfU0hJRlQ9Mgo+ICAgQ09ORklHX1NZU1JFU0VUPXkKPiArQ09ORklHX1NQ
SV9GTEFTSF9XSU5CT05EPXkKPiArQ09ORklHX1JPQ0tDSElQX1NQST15Cj4gICBDT05GSUdfVVNC
PXkKPiAgIENPTkZJR19VU0JfWEhDSV9IQ0Q9eQo+ICAgQ09ORklHX1VTQl9YSENJX0RXQzM9eQoK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
