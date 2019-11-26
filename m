Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B3FA109751
	for <lists+linux-rockchip@lfdr.de>; Tue, 26 Nov 2019 01:39:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Z0VtY6mpnk3lHQltWmkiUS/cXptuO/MaIRmUXSl/DLI=; b=WVUjY4rWIhsvDLqx+hNPh9C8z
	zdHz85AiYHFL0gst0yDRnH4/wGJxub8jfhme8uVNwCjWJ4W03gWs/ZpJDk1lalBVcivQvozVJT4Df
	B9N4WeldhSQKcrAYzDB9IdWFnBt4n+OFF65d897PuYc0vZChlX9G4QklvP7rvuT8xEuHQg2KGSOPp
	J4OGtHtwXHFsvIV2p+nadqIcb1CVEvQB44niWtAchhyzbs7O4JjUjzldKU0/wrZ9m8vkBRsOud1Ec
	mDbjoXW82oec6b6NQxeyTMHmW9DcleFgRaK5g8bybqHczoTfWTykk/YtdfKL8wX85Dck8Rpm721MD
	xxsijj+8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZOt0-00060m-RS; Tue, 26 Nov 2019 00:39:22 +0000
Received: from lucky1.263xmail.com ([211.157.147.132])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZOsx-0005zv-C8
 for linux-rockchip@lists.infradead.org; Tue, 26 Nov 2019 00:39:21 +0000
Received: from localhost (unknown [192.168.167.69])
 by lucky1.263xmail.com (Postfix) with ESMTP id 61AD481C2C;
 Tue, 26 Nov 2019 08:39:07 +0800 (CST)
X-MAIL-GRAY: 1
X-MAIL-DELIVERY: 0
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.37] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P29208T140217508271872S1574728746551489_; 
 Tue, 26 Nov 2019 08:39:07 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <7a99ffd3ce2fffd08eddf9cbb9a92e30>
X-RL-SENDER: shawn.lin@rock-chips.com
X-SENDER: lintao@rock-chips.com
X-LOGIN-NAME: shawn.lin@rock-chips.com
X-FST-TO: linux-rockchip@lists.infradead.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [RFC] rk3399 pcie move to designware driver
To: Peter Geis <pgwipeout@gmail.com>, heiko.stuebner@theobroma-systems.com
References: <CAMdYzYoXZpTYa_YJvPDcaEFde_7xc+=fnXsLb45=z_kDQbgkvQ@mail.gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <856be753-3f7f-2342-eecc-c48acd5a8be3@rock-chips.com>
Date: Tue, 26 Nov 2019 08:39:07 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <CAMdYzYoXZpTYa_YJvPDcaEFde_7xc+=fnXsLb45=z_kDQbgkvQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_163919_579786_4BC0C685 
X-CRM114-Status: GOOD (  16.04  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.132 listed in list.dnswl.org]
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 shawn.lin@rock-chips.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

CgrlnKggMjAxOS8xMS8yNiA0OjUyLCBQZXRlciBHZWlzIOWGmemBkzoKPiBHb29kIEFmdGVybm9v
biwKPiAKPiBJIGFza2VkIHRoaXMgcXVlc3Rpb24gaW4gbXkgcGNpZSBidWcgcmVwb3J0LCBidXQg
SSB0aGluayBpdCBnb3QgbG9zdAo+IGluIHRoZSBtZXNzIHNvIEkgd2lsbCBhc2sgaXQgc3RhbmRh
bG9uZS4KPiBJIG5vdGljZWQgdGhhdCB0aGVyZSBpcyBhIGxvdCBvZiBjb2RlIG92ZXJsYXAgYmV0
d2VlbiB0aGUgc2hhcmVkIGR3Ywo+IHBjaWUgZHJpdmVyIGFuZCB0aGUgcm9ja2NoaXAgZHJpdmVy
Lgo+IElzIHRoZXJlIGEgcGFydGljdWxhciByZWFzb24gd2UgYXJlbid0IHVzaW5nIHRoZSBzaGFy
ZWQgZHJpdmVyIGluc3RlYWQKPiBvZiByZWludmVudGluZyB0aGUgd2hlZWw/Cj4gCgpUaGF0J3Mg
YmVjYXVzZSBxY29uIGFuZCB0ZWdyYSBkbyBiYXNlZCBvbiBkd2MgSVAgYW5kIGp1c3QgYWRkIHNv
bWUKdmVuZG9yLXNwZWNpZmljIHJlZ2lzdGVycyBidXQgaXQncyB0b3RhbGx5IGRpZmZlcmVudCBj
YXNlIGZvciByb2NrY2hpcCwKYXMgeW91IGhhdmUgbm90aWNlZCB0aGF0IHRoZSByZWdpc3RlcnMg
ZG9uJ3QgbGluZSB1cCB3aXRoIGR3YywgdGhhdCdzCnNhaWQsIHRoZXkgYXJlIHRvdG9hbGx5IDIg
SVBzIHdpdGggZGlmZmVyZW50IHJlZ2lzdGVyIGxheW91dC4gSXQncyBOT1QKdGhlIHJ1bGUgZm9y
IGhvdyBsaW51eCBkcml2ZXIgd29yay4KCgo+IEkga25vdyB0aGF0IG91ciByZWdpc3RlcnMgZG9u
J3Qgc2VlbSB0byBsaW5lIHVwIHdpdGggdGhlIGRlZmF1bHQgZHdjCj4gcmVnaXN0ZXJzLCBidXQg
dGVncmEgYW5kIHFjb20gYm90aCBzZWVtIHRvIGltcGxlbWVudCBjdXN0b20gcmVnaXN0ZXJzLgo+
IEkgc3RhcnRlZCB0cnlpbmcgdG8gd3JpdGUgYSBkd2MgbGF5ZXIgZHJpdmVyIGZvciB0aGUgcm9j
a2NoaXAsIGJ1dCBhcwo+IEkgaGF2ZSB2ZXJ5IGxpdHRsZSBleHBlcmllbmNlIHdpdGggcGNpZSBJ
IHdhcyBxdWlja2x5IG92ZXJ3aGVsbWVkLgo+IAo+IElzIHRoZXJlIGFueXRoaW5nIG91dHJpZ2h0
IGJsb2NraW5nIHRoZSBtb3ZlIHRvIHRoZSBzaGFyZWQgZHJpdmVyPwo+IAo+IAo+IAoKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
