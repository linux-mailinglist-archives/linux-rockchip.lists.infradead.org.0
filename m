Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C6CFACA4
	for <lists+linux-rockchip@lfdr.de>; Wed, 13 Nov 2019 10:13:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ETPdKalKS0IWj+q413cm76FuV1GhUm4/8XHVBA1Y4LY=; b=ptYb3F5WiBOFHLLcUt05+arr2
	RyCwum/wGAKQ9GZk/PS4w5swDEuWiNAUXpeHaQFYjZBQRrylsagvPDPsACWubVTgta+oE8DOlx0wl
	fo+4lTwcIuxufaMHadgaM6L1WOSwoJ20+nnhkagpUMmiJTlgFuCdLUydkBIxC975QmYi6gq9AA7Mu
	uSU+SeoaJKWL9oiY8QQh6bD6U1tpcFZiOhSzdaK7twV2T5yktcKPVzPXt1a6tGXBLZu4zJ61YYV2A
	l3RBGFt0eWtUP3LPcXME2Y5VKol3X35hArP7PodE8+J8UETwlwHpdqYYLV37S+lHThZs/KDkfJWnK
	MdkAAKBqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUoiV-0002UF-6s; Wed, 13 Nov 2019 09:13:35 +0000
Received: from regular1.263xmail.com ([211.150.70.205])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUoiQ-0002Tk-5M
 for linux-rockchip@lists.infradead.org; Wed, 13 Nov 2019 09:13:33 +0000
Received: from localhost (unknown [192.168.167.172])
 by regular1.263xmail.com (Postfix) with ESMTP id 99E2430B;
 Wed, 13 Nov 2019 17:13:17 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 1
Received: from [172.16.12.9] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P13233T139895704082176S1573636396139351_; 
 Wed, 13 Nov 2019 17:13:16 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <01fdccea6a85a9232883543bc7b6475a>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-rockchip@lists.infradead.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: =?UTF-8?Q?Re=3a_=5bPATCH=5d_configs=3a_Rename_roc-rk3399-pc_-=3e_ro?=
 =?UTF-8?B?Yy1wYy1yazMzOTkgZGVmY29uZmln44CQ6K+35rOo5oSP77yM6YKu5Lu255SxbGlu?=
 =?UTF-8?Q?ux-rockchip-bounces+kever=2eyang=3drock-chips=2ecom=40lists=2einf?=
 =?UTF-8?B?cmFkZWFkLm9yZ+S7o+WPkeOAkQ==?=
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20191102044902.8979-1-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <fd21fa79-142f-00b9-f3df-8dc43372cb20@rock-chips.com>
Date: Wed, 13 Nov 2019 17:13:16 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191102044902.8979-1-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_011330_357963_1A77D477 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.205 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
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
Cc: u-boot@lists.denx.de, Levin Du <djw@t-chip.com.cn>,
 linux-amarula@amarulasolutions.com, linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvMTEvMiDkuIvljYgxMjo0OSwgSmFnYW4gVGVraSB3cm90ZToKPiByb2MtcmszMzk5
LXBjX2RlZmNvbmZpZyBpcyBjb21taXR0ZWQgaW4gYmVsb3cKPgo+IGNvbW1pdCA8OGE2ODFmNGM1
YWExNWRiNTFhZDAyMDk3MzQ4NTljOWZlN2MyOWNmZD4gKCJyb2NrY2hpcDogcmszMzk5Ogo+IEFk
ZCBST0MtUkszMzk5LVBDIHN1cHBvcnQiKQo+Cj4gd2hpY2ggZG9lc24ndCBmb2xsb3cgdGhlIGV4
aXN0aW5nIGRlZmNvbmZpZ3Mgb24gcmszMzk5Lgo+Cj4gU28sIHJlbmFtZSBhcyBmb2xsb3dlZCB3
aXRoIG90aGVyIHJrMzM5OSBkZWZjb25maWdzLgo+Cj4gQ2M6IExldmluIER1IDxkandAdC1jaGlw
LmNvbS5jbj4KPiBTaWduZWQtb2ZmLWJ5OiBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRp
b25zLmNvbT4KCgpUaGUgYm9hcmQgbmFtZSBpcyByb2MtcmszMzk5LXBjLCBidXQgd2UgZG8gdXBk
YXRlIHRoaXMgaW4gZHRzIGFzIAp7c29jfS17Ym9hcmR9LmR0cwoKYW5kIHtib2FyZH0te3NvY31f
ZGVmY29uZmlnwqAgZm9yIGFsbCBib2FyZHMgYWxyZWFkeSBoYXZlLCBzbwoKClJldmlld2VkLWJ5
OiBLZXZlciBZYW5nIDxrZXZlci55YW5nQHJvY2stY2hpcHMuY29tPgoKVGhhbmtzLAotIEtldmVy
Cj4gLS0tCj4gICBib2FyZC9yb2NrY2hpcC9ldmJfcmszMzk5L01BSU5UQUlORVJTICAgICAgICAg
ICAgICAgICAgICAgICAgfCAyICstCj4gICBjb25maWdzL3tyb2MtcmszMzk5LXBjX2RlZmNvbmZp
ZyA9PiByb2MtcGMtcmszMzk5X2RlZmNvbmZpZ30gfCAwCj4gICAyIGZpbGVzIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gICByZW5hbWUgY29uZmlncy97cm9jLXJrMzM5
OS1wY19kZWZjb25maWcgPT4gcm9jLXBjLXJrMzM5OV9kZWZjb25maWd9ICgxMDAlKQo+Cj4gZGlm
ZiAtLWdpdCBhL2JvYXJkL3JvY2tjaGlwL2V2Yl9yazMzOTkvTUFJTlRBSU5FUlMgYi9ib2FyZC9y
b2NrY2hpcC9ldmJfcmszMzk5L01BSU5UQUlORVJTCj4gaW5kZXggZjgyOTlkOTQ2MC4uMTdkZmFm
Yjc0MyAxMDA2NDQKPiAtLS0gYS9ib2FyZC9yb2NrY2hpcC9ldmJfcmszMzk5L01BSU5UQUlORVJT
Cj4gKysrIGIvYm9hcmQvcm9ja2NoaXAvZXZiX3JrMzM5OS9NQUlOVEFJTkVSUwo+IEBAIC01Miw3
ICs1Miw3IEBAIEY6CWFyY2gvYXJtL2R0cy9yazMzOTktb3JhbmdlcGktdS1ib290LmR0c2kKPiAg
IFJPQy1SSzMzOTktUEMKPiAgIE06CUxldmluIER1IDxkandAdC1jaGlwLmNvbS5jbj4KPiAgIFM6
CU1haW50YWluZWQKPiAtRjoJY29uZmlncy9yb2MtcmszMzk5LXBjX2RlZmNvbmZpZwo+ICtGOglj
b25maWdzL3JvYy1wYy1yazMzOTlfZGVmY29uZmlnCj4gICBGOglhcmNoL2FybS9kdHMvcmszMzk5
LXJvYy1wYy11LWJvb3QuZHRzaQo+ICAgCj4gICBST0NLLVBJLTQKPiBkaWZmIC0tZ2l0IGEvY29u
Zmlncy9yb2MtcmszMzk5LXBjX2RlZmNvbmZpZyBiL2NvbmZpZ3Mvcm9jLXBjLXJrMzM5OV9kZWZj
b25maWcKPiBzaW1pbGFyaXR5IGluZGV4IDEwMCUKPiByZW5hbWUgZnJvbSBjb25maWdzL3JvYy1y
azMzOTktcGNfZGVmY29uZmlnCj4gcmVuYW1lIHRvIGNvbmZpZ3Mvcm9jLXBjLXJrMzM5OV9kZWZj
b25maWcKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
