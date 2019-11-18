Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C3CDFFD3B
	for <lists+linux-rockchip@lfdr.de>; Mon, 18 Nov 2019 04:04:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WwH77/dPgY265urt6BSMnx2GvLfEO/TqVSCf32HF3xU=; b=u6iDrr4RikmeXfHxsvsuqM3Tm
	gKLBihJktyBKfIGLx1HXMq9ofrbDKKNOor1vY5s+hyFhwsoRy7sQQVGYHzHC+DZDZKqh3CIX6KcPL
	yeaxbLDaOLqQBBRr4c1yjybA4829omleQA+Dhg6AqAAwUD15d0vWV14kKCX8g+fpgpME5tuFt1FsT
	AAwG++tAWWizXCOgCoGEn3kaBw9ffD38hY0r3GwmA6HXWdhZarOYED0j75hCFx9mAbIBhTLkBQa8j
	MAnlTBP1K2H2N+FhHGHNqZy4FiFNBVN1BcCOg7yz3jKo36IDsoOkjcndnkIXm4abDWiFNmmRQKx5A
	YfINfykOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWXL5-0006Z3-BQ; Mon, 18 Nov 2019 03:04:31 +0000
Received: from regular1.263xmail.com ([211.150.70.204])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWXL1-0006YV-OM
 for linux-rockchip@lists.infradead.org; Mon, 18 Nov 2019 03:04:29 +0000
Received: from localhost (unknown [192.168.167.16])
 by regular1.263xmail.com (Postfix) with ESMTP id 0567F2CC;
 Mon, 18 Nov 2019 11:04:18 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 1
Received: from [172.16.12.9] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P15627T140111150835456S1574046256689693_; 
 Mon, 18 Nov 2019 11:04:17 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <3d86ebf1961ef866af3282111b0168ce>
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
From: Kever Yang <kever.yang@rock-chips.com>
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20191102044902.8979-1-jagan@amarulasolutions.com>
 <fd21fa79-142f-00b9-f3df-8dc43372cb20@rock-chips.com>
Message-ID: <3eb84be8-df5f-dbb0-574d-9c5fa7f48ce7@rock-chips.com>
Date: Mon, 18 Nov 2019 11:04:16 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <fd21fa79-142f-00b9-f3df-8dc43372cb20@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_190427_953412_1C33B727 
X-CRM114-Status: GOOD (  14.09  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.204 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
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
Cc: u-boot@lists.denx.de, Levin Du <djw@t-chip.com.cn>,
 linux-amarula@amarulasolutions.com, linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvMTEvMTMg5LiL5Y2INToxMywgS2V2ZXIgWWFuZyB3cm90ZToKPgo+IE9uIDIwMTkv
MTEvMiDkuIvljYgxMjo0OSwgSmFnYW4gVGVraSB3cm90ZToKPj4gcm9jLXJrMzM5OS1wY19kZWZj
b25maWcgaXMgY29tbWl0dGVkIGluIGJlbG93Cj4+Cj4+IGNvbW1pdCA8OGE2ODFmNGM1YWExNWRi
NTFhZDAyMDk3MzQ4NTljOWZlN2MyOWNmZD4gKCJyb2NrY2hpcDogcmszMzk5Ogo+PiBBZGQgUk9D
LVJLMzM5OS1QQyBzdXBwb3J0IikKPj4KPj4gd2hpY2ggZG9lc24ndCBmb2xsb3cgdGhlIGV4aXN0
aW5nIGRlZmNvbmZpZ3Mgb24gcmszMzk5Lgo+Pgo+PiBTbywgcmVuYW1lIGFzIGZvbGxvd2VkIHdp
dGggb3RoZXIgcmszMzk5IGRlZmNvbmZpZ3MuCj4+Cj4+IENjOiBMZXZpbiBEdSA8ZGp3QHQtY2hp
cC5jb20uY24+Cj4+IFNpZ25lZC1vZmYtYnk6IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1
dGlvbnMuY29tPgo+Cj4KPiBUaGUgYm9hcmQgbmFtZSBpcyByb2MtcmszMzk5LXBjLCBidXQgd2Ug
ZG8gdXBkYXRlIHRoaXMgaW4gZHRzIGFzIAo+IHtzb2N9LXtib2FyZH0uZHRzCj4KPiBhbmQge2Jv
YXJkfS17c29jfV9kZWZjb25maWfCoCBmb3IgYWxsIGJvYXJkcyBhbHJlYWR5IGhhdmUsIHNvCj4K
Pgo+IFJldmlld2VkLWJ5OiBLZXZlciBZYW5nIDxrZXZlci55YW5nQHJvY2stY2hpcHMuY29tPgpB
cHBsaWVkIHRvIHUtYm9vdC1yb2NrY2hpcCBtYXN0ZXIuCgpUaGFua3MsCi0gS2V2ZXIKPgo+IFRo
YW5rcywKPiAtIEtldmVyCj4+IC0tLQo+PiDCoCBib2FyZC9yb2NrY2hpcC9ldmJfcmszMzk5L01B
SU5UQUlORVJTwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8
IDIgKy0KPj4gwqAgY29uZmlncy97cm9jLXJrMzM5OS1wY19kZWZjb25maWcgPT4gcm9jLXBjLXJr
MzM5OV9kZWZjb25maWd9IHwgMAo+PiDCoCAyIGZpbGVzIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCAxIGRlbGV0aW9uKC0pCj4+IMKgIHJlbmFtZSBjb25maWdzL3tyb2MtcmszMzk5LXBjX2RlZmNv
bmZpZyA9PiByb2MtcGMtcmszMzk5X2RlZmNvbmZpZ30gCj4+ICgxMDAlKQo+Pgo+PiBkaWZmIC0t
Z2l0IGEvYm9hcmQvcm9ja2NoaXAvZXZiX3JrMzM5OS9NQUlOVEFJTkVSUyAKPj4gYi9ib2FyZC9y
b2NrY2hpcC9ldmJfcmszMzk5L01BSU5UQUlORVJTCj4+IGluZGV4IGY4Mjk5ZDk0NjAuLjE3ZGZh
ZmI3NDMgMTAwNjQ0Cj4+IC0tLSBhL2JvYXJkL3JvY2tjaGlwL2V2Yl9yazMzOTkvTUFJTlRBSU5F
UlMKPj4gKysrIGIvYm9hcmQvcm9ja2NoaXAvZXZiX3JrMzM5OS9NQUlOVEFJTkVSUwo+PiBAQCAt
NTIsNyArNTIsNyBAQCBGOsKgwqDCoCBhcmNoL2FybS9kdHMvcmszMzk5LW9yYW5nZXBpLXUtYm9v
dC5kdHNpCj4+IMKgIFJPQy1SSzMzOTktUEMKPj4gwqAgTTrCoMKgwqAgTGV2aW4gRHUgPGRqd0B0
LWNoaXAuY29tLmNuPgo+PiDCoCBTOsKgwqDCoCBNYWludGFpbmVkCj4+IC1GOsKgwqDCoCBjb25m
aWdzL3JvYy1yazMzOTktcGNfZGVmY29uZmlnCj4+ICtGOsKgwqDCoCBjb25maWdzL3JvYy1wYy1y
azMzOTlfZGVmY29uZmlnCj4+IMKgIEY6wqDCoMKgIGFyY2gvYXJtL2R0cy9yazMzOTktcm9jLXBj
LXUtYm9vdC5kdHNpCj4+IMKgIMKgIFJPQ0stUEktNAo+PiBkaWZmIC0tZ2l0IGEvY29uZmlncy9y
b2MtcmszMzk5LXBjX2RlZmNvbmZpZyAKPj4gYi9jb25maWdzL3JvYy1wYy1yazMzOTlfZGVmY29u
ZmlnCj4+IHNpbWlsYXJpdHkgaW5kZXggMTAwJQo+PiByZW5hbWUgZnJvbSBjb25maWdzL3JvYy1y
azMzOTktcGNfZGVmY29uZmlnCj4+IHJlbmFtZSB0byBjb25maWdzL3JvYy1wYy1yazMzOTlfZGVm
Y29uZmlnCj4KPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKPiBMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
