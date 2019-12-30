Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE66612CC0F
	for <lists+linux-rockchip@lfdr.de>; Mon, 30 Dec 2019 04:07:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jV7IYcjTn8JK8o8+nBR/kg8rpEFUeKjkZWPOwIwPTaw=; b=OrQfboOtdFSDd3ny1Yhr2bUXN
	8lYU5UABVJD8JbczZm29vYH2/EjRgy7QxJSuP3Dh6gFzcN3eZI30/cacouyax37L/suYRdhaFuQJB
	OOkfaR/7+HLjtGdDIP1Rwdf/wHEWqOyTr6WZ616jb5j8mnhqiwhvW9VpQrkUA5UORuectQu8Y67Kr
	5n4b2J3y1/YNkpBKcnP1uhVA8KwXW1KXrfzBDM3jqw1JXnt+Z6Bva/48MtzoX8WnrE6/b6Y3S1byu
	HqjcxovErEG3VI2JQb26Z1StgQW0ynKDllCpkqyJBn2uRipx1gL/fSvhoKQVCtlNkq3qu8O027B5D
	LBMJROSrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1illOg-0000fn-3I; Mon, 30 Dec 2019 03:07:10 +0000
Received: from regular1.263xmail.com ([211.150.70.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1illOd-0000fN-76
 for linux-rockchip@lists.infradead.org; Mon, 30 Dec 2019 03:07:08 +0000
Received: from localhost (unknown [192.168.167.13])
 by regular1.263xmail.com (Postfix) with ESMTP id 8448953E
 for <linux-rockchip@lists.infradead.org>; Mon, 30 Dec 2019 11:07:05 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.9] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P22115T139647254615808S1577675225199000_; 
 Mon, 30 Dec 2019 11:07:05 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <008f1fdab65fd19e73177c4d0680e884>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-rockchip@lists.infradead.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH 03/11] rockchip: Include SF on distrocmd devices
To: linux-rockchip@lists.infradead.org
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-4-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <b3a2f160-abc4-fe3f-a340-37791f6ae6dd@rock-chips.com>
Date: Mon, 30 Dec 2019 11:07:04 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191221075440.6944-4-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_190707_449437_058FCEDA 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.199 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvMTIvMjEg5LiL5Y2IMzo1NCwgSmFnYW4gVGVraSB3cm90ZToKPiBJbmNsdWRlIHRo
ZSBTUEkgZmxhc2ggZGV2aWNlIG9uIGRpc3RybyBib290IHRhcmdldHMuCj4KPiBJbmNsdWRlZCBh
dCB0aGUgYmVnaW5uaW5nIG9mIHRoZSB0YXJnZXQgZGV2aWNlcyBsaXN0Cj4gc2luY2UgdGhlIHJv
Y2tjaGlwIHBsYXRmb3JtIGhhcyBhIGJvb3Qgb3JkZXIgc3RhcnQKPiBmcm9tIFNQSSBGbGFzaC4K
Pgo+IFNpZ25lZC1vZmYtYnk6IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29t
PgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRo
YW5rcywKLSBLZXZlcgo+IC0tLQo+ICAgaW5jbHVkZS9jb25maWdzL3JvY2tjaGlwLWNvbW1vbi5o
IHwgNyArKysrKysrCj4gICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspCj4KPiBkaWZm
IC0tZ2l0IGEvaW5jbHVkZS9jb25maWdzL3JvY2tjaGlwLWNvbW1vbi5oIGIvaW5jbHVkZS9jb25m
aWdzL3JvY2tjaGlwLWNvbW1vbi5oCj4gaW5kZXggNjhlMTEwNWE0Yi4uNGU2ZDZlOThkOSAxMDA2
NDQKPiAtLS0gYS9pbmNsdWRlL2NvbmZpZ3Mvcm9ja2NoaXAtY29tbW9uLmgKPiArKysgYi9pbmNs
dWRlL2NvbmZpZ3Mvcm9ja2NoaXAtY29tbW9uLmgKPiBAQCAtMTEsNiArMTEsMTIgQEAKPiAgIAo+
ICAgI2lmbmRlZiBDT05GSUdfU1BMX0JVSUxECj4gICAKPiArI2lmIENPTkZJR19JU19FTkFCTEVE
KENNRF9TRikKPiArIyBkZWZpbmUgQk9PVF9UQVJHRVRfU0YoZnVuYykgZnVuYyhTRiwgc2YsIDAp
Cj4gKyNlbHNlCj4gKyMgZGVmaW5lIEJPT1RfVEFSR0VUX1NGKGZ1bmMpCj4gKyNlbmRpZgo+ICsK
PiAgIC8qIEZpcnN0IHRyeSB0byBib290IGZyb20gU0QgKGluZGV4IDApLCB0aGVuIGVNTUMgKGlu
ZGV4IDEpICovCj4gICAjaWYgQ09ORklHX0lTX0VOQUJMRUQoQ01EX01NQykKPiAgIAkjZGVmaW5l
IEJPT1RfVEFSR0VUX01NQyhmdW5jKSBcCj4gQEAgLTM5LDYgKzQ1LDcgQEAKPiAgICNlbmRpZgo+
ICAgCj4gICAjZGVmaW5lIEJPT1RfVEFSR0VUX0RFVklDRVMoZnVuYykgXAo+ICsJQk9PVF9UQVJH
RVRfU0YoZnVuYykgXAo+ICAgCUJPT1RfVEFSR0VUX01NQyhmdW5jKSBcCj4gICAJQk9PVF9UQVJH
RVRfVVNCKGZ1bmMpIFwKPiAgIAlCT09UX1RBUkdFVF9QWEUoZnVuYykgXAoKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
