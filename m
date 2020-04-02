Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05CD919C167
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 14:48:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rA7N41TzU3tIerp4ZhpGxUViacnQN5RMsLPuitShceY=; b=sphDpM1kkPoJ8FPDGMMu55S7/
	8zBOP7GLoaS5fT+l0u7Yki3FiIhKMYqKbCnmyLsa0h9Dyu5REKFC5pl/9cIJ4ceiM9bGR5lCV+1Aj
	geKKf9F7vKpBXbRQnBwMPIr576jTzLObRVRtueQU0mw+MAw/3qfBK2tXvgS8SILQntmlk9bh3KsD+
	ONaL/4TdSBfAF8uE9jAKgDbBobUUdo3pCYCwEPi9AhihIgUslegvwOm+DTKxtHbus7rN74sYk3EgZ
	io6S0HA/1p1lNM5AT6XilxgKGE4zCMRxMMLWlJgh8LEjuoEY3TfsG6/Y79iLacHibG/lzOAkjgeHs
	IUxcs2vYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJzGP-0001VL-0a; Thu, 02 Apr 2020 12:48:05 +0000
Received: from regular1.263xmail.com ([211.150.70.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJzGL-0001Ul-UK
 for linux-rockchip@lists.infradead.org; Thu, 02 Apr 2020 12:48:03 +0000
Received: from localhost (unknown [192.168.167.69])
 by regular1.263xmail.com (Postfix) with ESMTP id 9988F3CF;
 Thu,  2 Apr 2020 20:47:59 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED: 0
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.0.111] (unknown [112.49.233.3])
 by smtp.263.net (postfix) whith ESMTP id
 P30132T140622194747136S1585831677179465_; 
 Thu, 02 Apr 2020 20:47:58 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <59f72c70e58975b4b83f1ef1f768df19>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 112.49.233.3
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v3 3/5] rockchip: Enable pre console for rk3399
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Anatolij Gustschin <agust@denx.de>
References: <20200402114125.2501-1-jagan@amarulasolutions.com>
 <20200402114125.2501-4-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <273dd53a-4a9f-7d22-e338-87029e12adec@rock-chips.com>
Date: Thu, 2 Apr 2020 20:47:57 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200402114125.2501-4-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_054802_184347_96E86A8F 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.201 listed in list.dnswl.org]
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
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org,
 sunil@amarulasolutions.com, linux-amarula@amarulasolutions.com,
 Mark Kettenis <mark.kettenis@xs4all.nl>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvNC8yIOS4i+WNiDc6NDEsIEphZ2FuIFRla2kgd3JvdGU6Cj4gRW5hYmxlIHByZSBj
b25zb2xlIGJ1ZmZlciBmb3IgcmszMzk5IHBsYXRmb3JtLgo+Cj4gVGhpcyB3b3VsZCBoZWxwIHRv
IGNhcHR1cmUgdGhlIGNvbnNvbGUgbWVzc2FnZXMgcHJpb3IgdG8KPiB0aGUgY29uc29sZSBiZWlu
ZyBpbml0aWFsaXNlZC4gRW5hYmxpbmcgdGhpcyB3b3VsZCBoZWxwCj4gdG8gY2FwdHVyZSBhbGwg
dGhlIGNvbnNvbGUgbWVzc2FnZXMgb24gdmlkZW8gb3V0cHV0IHNvdXJjZQo+IGxpa2UgSERNSS4g
U28gd2UgY2FuIGZpbmQgdGhlIGZ1bGwgY29uc29sZSBtZXNzYWdlcyBvZgo+IFUtQm9vdCBwcm9w
ZXIgb24gSERNSSBkaXNwbGF5IHdoZW4gZW5hYmxlZCBpdCBmb3IgUkszMzk5Cj4gcGxhdGZvcm0g
Ym9hcmRzLgo+Cj4gQnVmZmVyIGFkZHJlc3MgdXNlZCBmb3IgcHJlIGNvbnNvbGUgaXMgMHgwZjIw
MDAwMCB3aGljaCBpcwo+IHJhbSBiYXNlIHBsdXMgMjQwTWlCLiByaWdodCBub3cgdGhlIEFsbHdp
bm5lciBTb0MgaXMgdXNpbmcKPiBzaW1pbGFyIGNvbXB1dGF0aW9uLgo+Cj4gU2lnbmVkLW9mZi1i
eTogSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+CgoKClJldmlld2VkLWJ5
OiBLZXZlciBZYW5nIDxrZXZlci55YW5nQHJvY2stY2hpcHMuY29tPgoKVGhhbmtzLAotIEtldmVy
Cj4gLS0tCj4gICBhcmNoL2FybS9tYWNoLXJvY2tjaGlwL0tjb25maWcgfCAxICsKPiAgIGNvbW1v
bi9LY29uZmlnICAgICAgICAgICAgICAgICB8IDEgKwo+ICAgMiBmaWxlcyBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9tYWNoLXJvY2tjaGlwL0tjb25m
aWcgYi9hcmNoL2FybS9tYWNoLXJvY2tjaGlwL0tjb25maWcKPiBpbmRleCBlZDc1MTRhYjc1Li4w
Y2IxZjIzZDBmIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL21hY2gtcm9ja2NoaXAvS2NvbmZpZwo+
ICsrKyBiL2FyY2gvYXJtL21hY2gtcm9ja2NoaXAvS2NvbmZpZwo+IEBAIC0yMjksNiArMjI5LDcg
QEAgY29uZmlnIFJPQ0tDSElQX1JLMzM5OQo+ICAgCXNlbGVjdCBETV9QTUlDCj4gICAJc2VsZWN0
IERNX1JFR1VMQVRPUl9GSVhFRAo+ICAgCXNlbGVjdCBCT0FSRF9MQVRFX0lOSVQKPiArCWltcGx5
IFBSRV9DT05TT0xFX0JVRkZFUgo+ICAgCWltcGx5IFJPQ0tDSElQX0NPTU1PTl9CT0FSRAo+ICAg
CWltcGx5IFJPQ0tDSElQX1NEUkFNX0NPTU1PTgo+ICAgCWltcGx5IFNQTF9ST0NLQ0hJUF9DT01N
T05fQk9BUkQKPiBkaWZmIC0tZ2l0IGEvY29tbW9uL0tjb25maWcgYi9jb21tb24vS2NvbmZpZwo+
IGluZGV4IDQ2ZTQxOTNmYzguLmJkMzVkZTMwNTYgMTAwNjQ0Cj4gLS0tIGEvY29tbW9uL0tjb25m
aWcKPiArKysgYi9jb21tb24vS2NvbmZpZwo+IEBAIC01NjgsNiArNTY4LDcgQEAgY29uZmlnIFBS
RV9DT05fQlVGX0FERFIKPiAgIAlkZWZhdWx0IDB4MmYwMDAwMDAgaWYgQVJDSF9TVU5YSSAmJiBN
QUNIX1NVTjlJCj4gICAJZGVmYXVsdCAweDRmMDAwMDAwIGlmIEFSQ0hfU1VOWEkgJiYgIU1BQ0hf
U1VOOUkKPiAgIAlkZWZhdWx0IDB4MGYwMDAwMDAgaWYgUk9DS0NISVBfUkszMjg4Cj4gKwlkZWZh
dWx0IDB4MGYyMDAwMDAgaWYgUk9DS0NISVBfUkszMzk5Cj4gICAJaGVscAo+ICAgCSAgVGhpcyBz
ZXRzIHRoZSBzdGFydCBhZGRyZXNzIG9mIHRoZSBwcmUtY29uc29sZSBidWZmZXIuIFRoaXMgbXVz
dAo+ICAgCSAgYmUgaW4gYXZhaWxhYmxlIG1lbW9yeSBhbmQgaXMgYWNjZXNzZWQgYmVmb3JlIHJl
bG9jYXRpb24gYW5kCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
