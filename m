Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3213712CC0E
	for <lists+linux-rockchip@lfdr.de>; Mon, 30 Dec 2019 04:06:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3+3Ho6ey5DsLy2P/nKxIngltbn19Yjdr4XRMqi6tZYc=; b=dQB70g2r2h0ZWq1H1UQfNkdWd
	6gfoqS+GilVHkOXlInYxbLMhQhQlRyzMyiewKvWmq8dbJE9lVd7d2M0ncpLwxQ2kotGXeT9KF24Ir
	iBqm2TVaRssAlwJ+KOKrrj+11GHLT71UfIv4Z52cdsDeoQC+NTMr3bqE5f69jra4RJK3CQPi1l4zz
	wuCcxtkSMo89izPwINfFWdM4MBkay6GR3DWeemsFt3P6FFzoxiWO5yMXbT3nTa9T2pQtGgJ11KLzD
	dbJmOqLQhp0ayNg2OqpTyMqp80wc+zdw4c4G/tWdgP6aT4DGNdrWOIOCHnHR4IJHJOAnn0WgvYUPF
	bDsKIDHmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1illOJ-0000cp-D6; Mon, 30 Dec 2019 03:06:47 +0000
Received: from regular1.263xmail.com ([211.150.70.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1illOG-0000cR-8H
 for linux-rockchip@lists.infradead.org; Mon, 30 Dec 2019 03:06:45 +0000
Received: from localhost (unknown [192.168.167.69])
 by regular1.263xmail.com (Postfix) with ESMTP id 6ACB451D;
 Mon, 30 Dec 2019 11:06:42 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.9] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P26861T140478773192448S1577675201294579_; 
 Mon, 30 Dec 2019 11:06:41 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <f4b75c89147a2ee86aca09763954ff44>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-rockchip@lists.infradead.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH 04/11] rk3399: Add boot flash script offet, size
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-5-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <0e99c721-5f46-58bb-a14a-961ce6c11691@rock-chips.com>
Date: Mon, 30 Dec 2019 11:06:41 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191221075440.6944-5-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_190644_460461_BE3A3C8E 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.199 listed in list.dnswl.org]
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

Ck9uIDIwMTkvMTIvMjEg5LiL5Y2IMzo1NCwgSmFnYW4gVGVraSB3cm90ZToKPiBNb3N0IG9mIHRo
ZSBTUEkgZmxhc2ggZGV2aWNlcyBpbiByb2NrY2hpcCAocmszMzk5KQo+IGFyZSAxNk1pQiBzaXpl
LiBTbywgbGV0J3MgdXNlIHRoZSBzY3JpcHQgb2Zmc2V0IGF0Cj4gdGhlIGVuZCBvZiA4Sy4KPgo+
IFRoaXMgd2F5IGl0IGNhbm5vdCBvdmVybGFwIGFueSBvZmZzZXRzIGJlaW5nIHVzZWQKPiBieSBz
b2Z0d2FyZSBjb21wb25lbnRzIGluIGZsYXNoIGxheW91dC4KPgo+IFNpZ25lZC1vZmYtYnk6IEph
Z2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgpSZXZpZXdlZC1ieTogS2V2ZXIg
WWFuZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKLSBLZXZlcgo+IC0tLQo+
ICAgaW5jbHVkZS9jb25maWdzL3JrMzM5OV9jb21tb24uaCB8IDIgKysKPiAgIDEgZmlsZSBjaGFu
Z2VkLCAyIGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2NvbmZpZ3Mvcmsz
Mzk5X2NvbW1vbi5oIGIvaW5jbHVkZS9jb25maWdzL3JrMzM5OV9jb21tb24uaAo+IGluZGV4IDEy
N2NhMWYwOWMuLjkyZWI1Y2I3NTAgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9jb25maWdzL3JrMzM5
OV9jb21tb24uaAo+ICsrKyBiL2luY2x1ZGUvY29uZmlncy9yazMzOTlfY29tbW9uLmgKPiBAQCAt
NDgsNiArNDgsOCBAQAo+ICAgCj4gICAjZGVmaW5lIEVOVl9NRU1fTEFZT1VUX1NFVFRJTkdTIFwK
PiAgIAkic2NyaXB0YWRkcj0weDAwNTAwMDAwXDAiIFwKPiArCSJzY3JpcHRfb2Zmc2V0X2Y9MHhm
ZmUwMDBcMCIgXAo+ICsJInNjcmlwdF9zaXplX2Y9MHgyMDAwXDAiIFwKPiAgIAkicHhlZmlsZV9h
ZGRyX3I9MHgwMDYwMDAwMFwwIiBcCj4gICAJImZkdF9hZGRyX3I9MHgwMWYwMDAwMFwwIiBcCj4g
ICAJImtlcm5lbF9hZGRyX3I9MHgwMjA4MDAwMFwwIiBcCgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
