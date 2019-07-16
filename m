Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7344C6A973
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 15:19:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/kDJVMICzapaCi3p9uihXKQjwVmfMuZ+wsDJs3UnN0Q=; b=t4QF6xMZzmU5piBzHsGtM2ojC
	u/rmLeYqNcQKcxOYEE8Bjz+DmchzxvNXO4qb+sKaHhU62e814FcMB7ov5H8MoYSqrXq2GyxW319tV
	SM3ZY/Z+cBtxsVwbDTTAXTtA4tEHpGEeQnXbCaylYdNaL7MWdb3ySXic2497l+46M7zt0KXaq9kBB
	il6qEMxKOO5OlBaNnyyyjeZv4H8HexS9hR63lAJL8VWUnnA/WkGR3lnWqaA4jGoj6e4LWTXryGX1U
	DB+33S/CanEm1xiiB5deD0po3Z4BfhW+iaM0kaZkLkwajqbw5iMvTXT6di7k8jri4HRc5QU3MgF02
	IapgYwrFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnNMq-0004OQ-P2; Tue, 16 Jul 2019 13:19:40 +0000
Received: from regular1.263xmail.com ([211.150.70.202])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnNMn-0004Nx-UF
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 13:19:39 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.103])
 by regular1.263xmail.com (Postfix) with ESMTP id 24A092A2;
 Tue, 16 Jul 2019 21:19:36 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P8795T139710722733824S1563283165102349_; 
 Tue, 16 Jul 2019 21:19:33 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <6dbad5ab8decd7c73fbdfc896f8894c1>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 46/57] rockchip: dts: rk3399: Add u-boot, dm-pre-reloc
 for pmu
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-47-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <20079109-4065-cc55-de12-52986eaba9e6@rock-chips.com>
Date: Tue, 16 Jul 2019 21:19:25 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-47-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_061938_179658_A92300D5 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.202 listed in list.dnswl.org]
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU3LCBKYWdhbiBUZWtpIHdyb3RlOgo+IEFkZCB1LWJvb3Qs
ZG0tcHJlLXJlbG9jIHByb3BlcnR5IGZvciBwbXUgaW4gcmszMzk5LXUtYm9vdC5kdHNpCj4gc28t
dGhhdCBTUEwgY2FuIGFjY2VzcyBwbXUuCj4KPiBTaWduZWQtb2ZmLWJ5OiBKYWdhbiBUZWtpIDxq
YWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBZb3VNaW4gQ2hlbiA8
Y3ltQHJvY2stY2hpcHMuY29tPgoKUmV2aWV3ZWQtYnk6IEtldmVyIFlhbmcgPEtldmVyLnlhbmdA
cm9jay1jaGlwcy5jb20+CgpUaGFua3MsCiDCoC0gS2V2ZXIKPiAtLS0KPiAgIGFyY2gvYXJtL2R0
cy9yazMzOTktdS1ib290LmR0c2kgfCA0ICsrKysKPiAgIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2Vy
dGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9kdHMvcmszMzk5LXUtYm9vdC5kdHNp
IGIvYXJjaC9hcm0vZHRzL3JrMzM5OS11LWJvb3QuZHRzaQo+IGluZGV4IGZjZmNlOWFlMDIuLjI3
MzhhMzg4OWUgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0vZHRzL3JrMzM5OS11LWJvb3QuZHRzaQo+
ICsrKyBiL2FyY2gvYXJtL2R0cy9yazMzOTktdS1ib290LmR0c2kKPiBAQCAtMyw2ICszLDEwIEBA
Cj4gICAgKiBDb3B5cmlnaHQgKEMpIDIwMTkgSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0
aW9ucy5jb20+Cj4gICAgKi8KPiAgIAo+ICsmcG11IHsKPiArCXUtYm9vdCxkbS1wcmUtcmVsb2M7
Cj4gK307Cj4gKwo+ICAgJnNkbW1jIHsKPiAgIAl1LWJvb3QsZG0tcHJlLXJlbG9jOwo+ICAgfTsK
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
