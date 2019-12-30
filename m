Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53DED12CD9F
	for <lists+linux-rockchip@lfdr.de>; Mon, 30 Dec 2019 09:24:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3u1zOdB91SIIbFOvVPxxiYwFRskay9+KXPqLsXqDxhU=; b=V2BerhJAYw/rE0wql0Gd31iow
	cNLZYkWJ1Rv6Xh8pOHiYdf0BVK/61pKcWC2WjSoWVnJozTYKJ3nbIzBpBCzZcXAarjyqnHiLvsU2Q
	M5XdBfPnMjg8uilSWeexaKifVcugyBi9hVyuqTfQQ9JStYvAodlXkRaZDOp551EAaR10IPQgobrx9
	wI3kMt4C7fNOGvmclVVT+JhE8w4/8VJkCB8LWOBphm3pnrhrRiYdjYqp8l2hqYQllmznBVPkmhq8i
	betfPV5FiNHja/vwFo5+ne+LtzHJaWz0u/aDo+yjh11qPwYr+QYQqUlS7nB/0ndBkfDYNP4KI40hR
	wHoAKtroA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilqLc-0004Oy-Im; Mon, 30 Dec 2019 08:24:20 +0000
Received: from regular1.263xmail.com ([211.150.70.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilqLY-0004O4-Ms
 for linux-rockchip@lists.infradead.org; Mon, 30 Dec 2019 08:24:19 +0000
Received: from localhost (unknown [192.168.167.70])
 by regular1.263xmail.com (Postfix) with ESMTP id 263ADBED;
 Mon, 30 Dec 2019 16:24:11 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.9] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P12477T140653199619840S1577694249238242_; 
 Mon, 30 Dec 2019 16:24:10 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <3f527ea038d99027e820b73117dc985f>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: maxime.chevallier@bootlin.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v2] MAINTAINERS: Track Rockchip PMIC drivers
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
References: <20191224134122.20385-1-miquel.raynal@bootlin.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <756eaff6-0ab8-7f41-2fb2-d55057ff4534@rock-chips.com>
Date: Mon, 30 Dec 2019 16:24:09 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191224134122.20385-1-miquel.raynal@bootlin.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_002416_913788_F5BCE8CA 
X-CRM114-Status: GOOD (  12.71  )
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.195 listed in list.dnswl.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: resnulli.us]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: resnulli.us]
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-kernel@vger.kernel.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvMTIvMjQg5LiL5Y2IOTo0MSwgTWlxdWVsIFJheW5hbCB3cm90ZToKPiBUaGUgY3Vy
cmVudCBSb2NrY2hpcCBzZWN0aW9uIG1pc3NlcyBhbGwgdGhlIFBNSUMgcmVsYXRlZCBkcml2ZXJz
LiBUaGV5Cj4gYXJlIGFsbCBwcmVmaXhlZCByazgqIGFuZCBhcmUgYXMgd2lkZSBhcyBjbGtzLCBy
ZWd1bGF0b3JzLCBwaW5jdHJsLAo+IFJUQ3MsIGF1ZGlvLCBldGMuCj4KPiBBZGQgYSBkZWRpY2F0
ZWQgTUFJTlRBSU5FUidzIGVudHJ5Lgo+Cj4gU2lnbmVkLW9mZi1ieTogTWlxdWVsIFJheW5hbCA8
bWlxdWVsLnJheW5hbEBib290bGluLmNvbT4KPiAtLS0KPgo+IENoYW5nZXMgc2luY2UgdjE6Cj4g
KiBDcmVhdGUgYSBQTUlDIGVudHJ5IGluIE1BSU5UQUlORVJTLgo+ICogVHJhY2sgZmlsZXMgd2l0
aCByazggYW5kIG5vdCByazgwLgo+Cj4gICBNQUlOVEFJTkVSUyB8IDExICsrKysrKysrKysrCj4g
ICAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL01BSU5U
QUlORVJTIGIvTUFJTlRBSU5FUlMKPiBpbmRleCA5ZDNhNWM1NGE0MWQuLmQzZjgxNDIxMmJhOCAx
MDA2NDQKPiAtLS0gYS9NQUlOVEFJTkVSUwo+ICsrKyBiL01BSU5UQUlORVJTCj4gQEAgLTEzOTQz
LDYgKzEzOTQzLDE3IEBAIFM6CU1haW50YWluZWQKPiAgIEY6CWRyaXZlcnMvc3RhZ2luZy9tZWRp
YS9oYW50cm8vCj4gICBGOglEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEv
cm9ja2NoaXAtdnB1LnR4dAo+ICAgCj4gK1JPQ0tDSElQIFBNSUMgRFJJVkVSUwo+ICtNOglIZWlr
byBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgo+ICtMOglsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcgKG1vZGVyYXRlZCBmb3Igbm9uLXN1YnNjcmliZXJzKQo+ICtMOglsaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gK1Q6CWdpdCBnaXQ6Ly9naXQua2VybmVs
Lm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvbW1pbmQvbGludXgtcm9ja2NoaXAuZ2l0Cj4g
K1M6CU1haW50YWluZWQKPiArRjoJRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzLyov
KnJrOCoKPiArRjoJaW5jbHVkZS8qLyovcms4Kgo+ICtGOglpbmNsdWRlLyovKi8qL3JrOCoKPiAr
RjoJZHJpdmVycy8qLypyazgqCj4gKwo+ICAgUk9DS0VSIERSSVZFUgo+ICAgTToJSmlyaSBQaXJr
byA8amlyaUByZXNudWxsaS51cz4KPiAgIEw6CW5ldGRldkB2Z2VyLmtlcm5lbC5vcmcKUmV2aWV3
ZWQtYnk6IEtldmVyIFlhbmcgPGtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+CgpUaGFua3MsCi0g
S2V2ZXIKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
