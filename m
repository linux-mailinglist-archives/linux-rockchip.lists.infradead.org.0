Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABDD41BBA64
	for <lists+linux-rockchip@lfdr.de>; Tue, 28 Apr 2020 11:53:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hPva0nVipraspyn561MLFMUsjuylLFd8UQn51258Unk=; b=CVkCp9/qG6uR6x2bWHZkuWNY0
	ZFNtz8wdvPedgsbBR753HkEq1EUOEGhIZSIc6KIOkP7icFJtlOuU5iE7ug50xdktc4BEKEmt/D1YS
	Da8V1RP00o7NPdhgvNFtJmFMP7+5eRFS3lQvci/jLittMA8jGCQE16n6U577gmkplwLAtRmDtLM1F
	m3G6hJZAxAVGPN45aCHfrHpAw9iYn6VKn1hH68PQgpkNWVooxE6DDOpdtH/o4jiAAl07hWIBfUZ3c
	aKt+oHG1f/lFGjUhQ5ypnKDY5pToMgdXOj4PRjGMOruzPyN7dEQ3734arpd/0XYfrwgvIwaqyy5Wi
	pqZGC3e7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTMw1-0000Hg-FP; Tue, 28 Apr 2020 09:53:49 +0000
Received: from regular1.263xmail.com ([211.150.70.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTMvx-0000Gm-Mn
 for linux-rockchip@lists.infradead.org; Tue, 28 Apr 2020 09:53:47 +0000
Received: from localhost (unknown [192.168.167.32])
 by regular1.263xmail.com (Postfix) with ESMTP id 87DAC6FE;
 Tue, 28 Apr 2020 17:53:32 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.16] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P42525T140340910606080S1588067611113532_; 
 Tue, 28 Apr 2020 17:53:32 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <d60ba24e3a66e72a0f87482783b9694c>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_4/8=5d_clk=3a_rk3399=3a_Disable_PCIE=5fPHY?=
 =?UTF-8?B?IGNsb2Nr44CQ6K+35rOo5oSP77yM6YKu5Lu255SxbGludXgtcm9ja2NoaXAtYm91?=
 =?UTF-8?Q?nces+kever=2eyang=3drock-chips=2ecom=40lists=2einfradead=2eorg?=
 =?UTF-8?B?5Luj5Y+R44CR?=
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20200425110354.12381-1-jagan@amarulasolutions.com>
 <20200425110354.12381-5-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <d4b055de-4cde-d99a-28e8-e98460786067@rock-chips.com>
Date: Tue, 28 Apr 2020 17:53:31 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200425110354.12381-5-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_025345_953506_E59CE95C 
X-CRM114-Status: GOOD (  13.96  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.197 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: linux-rockchip@lists.infradead.org, sunil@amarulasolutions.com,
 patrick@blueri.se, linux-amarula@amarulasolutions.com, u-boot@lists.denx.de
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvNC8yNSDkuIvljYg3OjAzLCBKYWdhbiBUZWtpIHdyb3RlOgo+IEFkZCBQQ0lFX1BI
WSBjbG9jayBkaXNhYmxlbWVudCBzdXBwb3J0IG9uIHJrMzM5OQo+IGNsb2NrIGRyaXZlci4KPgo+
IFRoaXMgd291bGQgdHJpZ2dlciBpZiB0aGUgUENJZSBQSFkgZHJpdmVyIGZhaWxlZCB0bwo+IGlu
aXRpYWxpemUgb3IgcG93ZXIgb24gdGhlIFBIWS4KPgo+IFNpZ25lZC1vZmYtYnk6IEphZ2FuIFRl
a2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgoKClJldmlld2VkLWJ5OiBLZXZlciBZYW5n
IDxrZXZlci55YW5nQHJvY2stY2hpcHMuY29tPgoKVGhhbmtzLAotIEtldmVyCj4gLS0tCj4gICBk
cml2ZXJzL2Nsay9yb2NrY2hpcC9jbGtfcmszMzk5LmMgfCAxNyArKysrKysrKysrKysrKysrKwo+
ICAgMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2Nsay9yb2NrY2hpcC9jbGtfcmszMzk5LmMgYi9kcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGtf
cmszMzk5LmMKPiBpbmRleCA4ZTA2OWZiYWRlLi4yZDQ0N2Y5NmY3IDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvY2xrL3JvY2tjaGlwL2Nsa19yazMzOTkuYwo+ICsrKyBiL2RyaXZlcnMvY2xrL3JvY2tj
aGlwL2Nsa19yazMzOTkuYwo+IEBAIC0xMDg1LDYgKzEwODUsMjIgQEAgc3RhdGljIGludCByazMz
OTlfY2xrX2VuYWJsZShzdHJ1Y3QgY2xrICpjbGspCj4gICAJcmV0dXJuIDA7Cj4gICB9Cj4gICAK
PiArc3RhdGljIGludCByazMzOTlfY2xrX2Rpc2FibGUoc3RydWN0IGNsayAqY2xrKQo+ICt7Cj4g
KwlzdHJ1Y3QgcmszMzk5X2Nsa19wcml2ICpwcml2ID0gZGV2X2dldF9wcml2KGNsay0+ZGV2KTsK
PiArCj4gKwlzd2l0Y2ggKGNsay0+aWQpIHsKPiArCWNhc2UgU0NMS19QQ0lFUEhZX1JFRjoKPiAr
CQlya19jbHJyZWcoJnByaXYtPmNydS0+Y2xrc2VsX2NvblsxOF0sIEJJVCg3KSk7Cj4gKwkJYnJl
YWs7Cj4gKwlkZWZhdWx0Ogo+ICsJCWRlYnVnKCIlczogdW5zdXBwb3J0ZWQgY2xrICVsZFxuIiwg
X19mdW5jX18sIGNsay0+aWQpOwo+ICsJCXJldHVybiAtRU5PRU5UOwo+ICsJfQo+ICsKPiArCXJl
dHVybiAwOwo+ICt9Cj4gKwo+ICAgc3RhdGljIHN0cnVjdCBjbGtfb3BzIHJrMzM5OV9jbGtfb3Bz
ID0gewo+ICAgCS5nZXRfcmF0ZSA9IHJrMzM5OV9jbGtfZ2V0X3JhdGUsCj4gICAJLnNldF9yYXRl
ID0gcmszMzk5X2Nsa19zZXRfcmF0ZSwKPiBAQCAtMTA5Miw2ICsxMTA4LDcgQEAgc3RhdGljIHN0
cnVjdCBjbGtfb3BzIHJrMzM5OV9jbGtfb3BzID0gewo+ICAgCS5zZXRfcGFyZW50ID0gcmszMzk5
X2Nsa19zZXRfcGFyZW50LAo+ICAgI2VuZGlmCj4gICAJLmVuYWJsZSA9IHJrMzM5OV9jbGtfZW5h
YmxlLAo+ICsJLmRpc2FibGUgPSByazMzOTlfY2xrX2Rpc2FibGUsCj4gICB9Owo+ICAgCj4gICAj
aWZkZWYgQ09ORklHX1NQTF9CVUlMRAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
