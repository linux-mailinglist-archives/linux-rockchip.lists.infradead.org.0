Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3CDD132195
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 Jan 2020 09:44:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jV7IYcjTn8JK8o8+nBR/kg8rpEFUeKjkZWPOwIwPTaw=; b=PLCUkkmnBPwcXN+5oi6Exh4Pk
	cCt7PDJKe0pR+7kUjVVB/V40bgAJ/sVkkqrnR2wS4p8Jj3XzwSjlzgkuKCEDCyms6YalCGCPLEaGa
	PfXeFPipXh6fzmNfCq/8aYQKFNnov/oCWlhyZNJqCYWgGyhsnDK764h8bvBPuWRf6ff+9T3EE6GF/
	PZh6SoqCJhR9Oxrm521j1sCGnj7+MLYw1qqseTSh4xarNXUDQg52v8FbFP0tAgNTUSqoBbvu84Ack
	NYBW3zXjJhFlQuDG7u61F0ZwSA5MtRApw9nu0/j4eiQvBgePnEWGI3N6ddOD6hncwvavqqqI+yErf
	Wot7QWNew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iokTg-0007BG-Fv; Tue, 07 Jan 2020 08:44:40 +0000
Received: from regular1.263xmail.com ([211.150.70.203])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iokTd-0007Af-PD
 for linux-rockchip@lists.infradead.org; Tue, 07 Jan 2020 08:44:39 +0000
Received: from localhost (unknown [192.168.167.69])
 by regular1.263xmail.com (Postfix) with ESMTP id B8D2C3C8;
 Tue,  7 Jan 2020 16:44:34 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P15146T139627843286784S1578386667989280_; 
 Tue, 07 Jan 2020 16:44:33 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <7c9714f0e104e4100098e8043e0f764d>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-rockchip@lists.infradead.org
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH 03/11] rockchip: Include SF on distrocmd devices
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-4-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <6c3629a1-6870-4313-3bd2-c307946dab68@rock-chips.com>
Date: Tue, 7 Jan 2020 16:44:27 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191221075440.6944-4-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_004438_027810_CF508A1E 
X-CRM114-Status: GOOD (  12.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.203 listed in list.dnswl.org]
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
Cc: u-boot@lists.denx.de, linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-rockchip@lists.infradead.org
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
