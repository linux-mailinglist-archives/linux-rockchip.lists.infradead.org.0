Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8BC712CC0C
	for <lists+linux-rockchip@lfdr.de>; Mon, 30 Dec 2019 04:06:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rLFRxozg/V/j1FG/FEqyqoQQAMcLB9tRYquFlzDc9t0=; b=axO1nL4zC3JIDnVgM1kP2KoP2
	ZnBY4u/kk8A7n7F3MWYR3I9JgrhngFdvHfySgfeeBid7lYfD8Hjv0nOAb7QiQxq46gzNwWgsee3K/
	+4hb5dXfyMj+duLr6ahfbtY5QNJBDnYAYsxk9VMlFcOV3ISFyc9Tpa9S9M/79WrtE/KL0v4QJzzXp
	H8gofp3lyNU5YWKncyNkqF2E4aS/e7n5liH46J4qaxTr38TkCcx0G1IWRo2g8wSrUWIHhygxBxqz7
	wt5ea+In01yG43E4RHW06feaoTSdAvzeu4mikqBzWt5OZEtEVgNsewocyBz0KlB3l9/rZZ2S0Yztj
	ZsuLbflyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1illNx-0000Yv-Ri; Mon, 30 Dec 2019 03:06:25 +0000
Received: from regular1.263xmail.com ([211.150.70.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1illNt-0000WG-BI
 for linux-rockchip@lists.infradead.org; Mon, 30 Dec 2019 03:06:22 +0000
Received: from localhost (unknown [192.168.167.69])
 by regular1.263xmail.com (Postfix) with ESMTP id 768763C0;
 Mon, 30 Dec 2019 11:06:19 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.9] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P26861T140479478892288S1577675177819871_; 
 Mon, 30 Dec 2019 11:06:18 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <7f220e2d036e490e2e6593b3da9d58f7>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-rockchip@lists.infradead.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH 05/11] rk3399: Check MMC env while defining it
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-6-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <62769d10-24a2-5026-5d21-3189362e1266@rock-chips.com>
Date: Mon, 30 Dec 2019 11:06:18 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191221075440.6944-6-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_190621_586209_29FD5AF4 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.200 listed in list.dnswl.org]
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

Ck9uIDIwMTkvMTIvMjEg5LiL5Y2IMzo1NCwgSmFnYW4gVGVraSB3cm90ZToKPiByazMzOTkgZG8g
c3VwcG9ydCBTUEkgZmxhc2ggYXMgd2VsbCwgc28gdGhlcmUgaXMKPiBhIHBvc3NpYmlsaXR5IG9m
IHVzaW5nIGZsYXNoIGVudmlyb25tZW50IGZvciB0aG9zZQo+IHVzZWNhc2VzLgo+Cj4gU28gZGVm
aW5lIGVudiBkZXZpY2UgZm9yIE1NQyBvbmx5IHdoZW4gaXQgaXMgdXNlZAo+IGJ5IHNwZWNpZmlj
IGNvbmZpZ3VyYXRpb24uCj4KPiBTaWduZWQtb2ZmLWJ5OiBKYWdhbiBUZWtpIDxqYWdhbkBhbWFy
dWxhc29sdXRpb25zLmNvbT4KUmV2aWV3ZWQtYnk6IEtldmVyIFlhbmcgPGtldmVyLnlhbmdAcm9j
ay1jaGlwcy5jb20+CgpUaGFua3MsCi0gS2V2ZXIKPiAtLS0KPiAgIGluY2x1ZGUvY29uZmlncy9l
dmJfcmszMzk5LmggfCA0ICsrKy0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2NvbmZpZ3MvZXZiX3JrMzM5
OS5oIGIvaW5jbHVkZS9jb25maWdzL2V2Yl9yazMzOTkuaAo+IGluZGV4IGI5YzRkNjgzZjQuLmMw
YjAzNTg4OTMgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9jb25maWdzL2V2Yl9yazMzOTkuaAo+ICsr
KyBiL2luY2x1ZGUvY29uZmlncy9ldmJfcmszMzk5LmgKPiBAQCAtOCw3ICs4LDkgQEAKPiAgIAo+
ICAgI2luY2x1ZGUgPGNvbmZpZ3MvcmszMzk5X2NvbW1vbi5oPgo+ICAgCj4gLSNkZWZpbmUgQ09O
RklHX1NZU19NTUNfRU5WX0RFViAwCj4gKyNpZiBkZWZpbmVkKENPTkZJR19FTlZfSVNfSU5fTU1D
KQo+ICsjIGRlZmluZSBDT05GSUdfU1lTX01NQ19FTlZfREVWCQkwCj4gKyNlbmRpZgo+ICAgCj4g
ICAjZGVmaW5lIFNEUkFNX0JBTktfU0laRQkJCSgyVUwgPDwgMzApCj4gICAKCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
