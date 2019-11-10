Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9622DF696A
	for <lists+linux-rockchip@lfdr.de>; Sun, 10 Nov 2019 15:18:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dEy1RINajK+d7T/jVkMUaujisrGgZ14urLsgW2F7xuQ=; b=CIARUs2CHffmQtAziN2MSFTIC
	sn5DROxxO8wgYmswOBOX1vJG1Ufk5DVVwFYOiMWwvxLpzxh28rZifyT+KtJOfJVDQI31icwJYG6uy
	ip09PPZfjdF6k01X12Blh+VijyhLkEsju/W1H2PmCt8zNfNbJgP56wz2R21I9H032EwJV92T+nfQ7
	alyhkhXay0N5f35P+7TH9VP9o1NzxOWFXIomwVnM05piuox8KbTpsUa3KowJKxXNY3nxV5DPCR4a1
	6HW2bMsB9jUg+L+DFB3Kp9wJUiLg0R+ZBqL4npQMeY20I0f9kUuuRB/vJP9guscmD7uucfr4PM04a
	QqgCZseOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTo2q-0005Wb-Iv; Sun, 10 Nov 2019 14:18:24 +0000
Received: from regular1.263xmail.com ([211.150.70.204])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTo2e-0005KL-82
 for linux-rockchip@lists.infradead.org; Sun, 10 Nov 2019 14:18:13 +0000
Received: from localhost (unknown [192.168.167.225])
 by regular1.263xmail.com (Postfix) with ESMTP id 2ED6E204;
 Sun, 10 Nov 2019 22:18:08 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.0.8] (unknown [112.49.232.43])
 by smtp.263.net (postfix) whith ESMTP id
 P6726T139840981038848S1573395486741963_; 
 Sun, 10 Nov 2019 22:18:07 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <01b2e044f0e668142ae4a94d3072106e>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 112.49.232.43
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v4 2/7] Makefile: rockchip: Suffix platform type with tpl
 name
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20191023195652.7158-1-jagan@amarulasolutions.com>
 <20191023195652.7158-3-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <da82b653-64f0-0539-29b4-7f568bcb4f76@rock-chips.com>
Date: Sun, 10 Nov 2019 22:18:06 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191023195652.7158-3-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_061812_531933_4FB2BDA6 
X-CRM114-Status: GOOD (  14.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.204 listed in list.dnswl.org]
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
Cc: u-boot@lists.denx.de, linux-amarula@amarulasolutions.com,
 linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvMTAvMjQg5LiK5Y2IMzo1NiwgSmFnYW4gVGVraSB3cm90ZToKPiBNb3N0IG9mIHRo
ZSBwbGF0Zm9ybXMgdXNlcyB0aGUgcGxhdGZvcm0gdHlwZSBvbiB0aGVpciBib290Cj4gc3RhZ2Ug
aW1hZ2UgbmFtaW5nIGNvbnZlbnRpb25zIGluIG1ha2VmaWxlIGxpa2UsCj4KPiB1LWJvb3QteDg2
LXN0YXJ0MTYtdHBsLmJpbiAtIHg4NiBzdGFydDE2IFRQTCBiaW4KPiB1LWJvb3Qtc3BsLW10ay5i
aW4gLSBNZWRpYXRlayBTUEwgYmluCj4KPiBUaGlzIHdvdWxkIGhlbHAgdG8gdW5kZXJzdGFuZCB0
aGUgdXNlcnMgdG8gd2hhdCB0aGF0Cj4gcGFydGljdWxhciBpbWFnZSBiZWxvbmdzIHRvPyBhbmQg
bGVzcyBjb25mdXNlZC4KPgo+IE9uIHRoYXQgbm90ZSwgc3VmZml4IHBsYXRmb3JtIHR5cGUgcm9j
a2NoaXAgZm9yIGV4aXN0aW5nCj4gdS1ib290LXRwbC5pbWcgc28gbm93IGl0IGJlY29tZSB1LWJv
b3QtdHBsLXJvY2tjaGlwLmJpbgo+Cj4gQWxzbywgYmluIGlzIG1vcmUgY29udmVudGlvbmFsIHdh
eSB0byBpbmNsdWRlIGl0IG9uIHRvb2xzCj4gbGlrZSBiaW5tYW4sIHBhZF9jYXQgZXRjIGluIGZ1
dHVyZSBwYXRjaGVzLgo+Cj4gTm90ZTogdXNhZ2Ugb2YgcGxhdGZvcm0gdHlwZSBkb2Vzbid0IGZv
bGxvdyBjb25zaXN0ZW50IG9yZGVyCj4gYXMgb2Ygbm93Lgo+Cj4gU2lnbmVkLW9mZi1ieTogSmFn
YW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+CgpSZXZpZXdlZC1ieTogS2V2ZXIg
WWFuZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKLSBLZXZlcgo+IC0tLQo+
ICAgTWFrZWZpbGUgfCA2ICsrKy0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygr
KSwgMyBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9NYWtlZmlsZSBiL01ha2VmaWxlCj4g
aW5kZXggM2UwNWQzZmNmZS4uNDBjYmY2OGZlZiAxMDA2NDQKPiAtLS0gYS9NYWtlZmlsZQo+ICsr
KyBiL01ha2VmaWxlCj4gQEAgLTEzNDIsMTAgKzEzNDIsMTAgQEAgZWxzZQo+ICAgUk9DS0NISVBf
SU1HX1RZUEUgOj0gcmtzZAo+ICAgZW5kaWYKPiAgIAo+IC1NS0lNQUdFRkxBR1NfdS1ib290LXRw
bC5pbWcgPSAtbiAkKENPTkZJR19TWVNfU09DKSAtVCAkKFJPQ0tDSElQX0lNR19UWVBFKQo+IC10
cGwvdS1ib290LXRwbC5pbWc6IHRwbC91LWJvb3QtdHBsLmJpbiBGT1JDRQo+ICtNS0lNQUdFRkxB
R1NfdS1ib290LXRwbC1yb2NrY2hpcC5iaW4gPSAtbiAkKENPTkZJR19TWVNfU09DKSAtVCAkKFJP
Q0tDSElQX0lNR19UWVBFKQo+ICt0cGwvdS1ib290LXRwbC1yb2NrY2hpcC5iaW46IHRwbC91LWJv
b3QtdHBsLmJpbiBGT1JDRQo+ICAgCSQoY2FsbCBpZl9jaGFuZ2VkLG1raW1hZ2UpCj4gLWlkYmxv
YWRlci5pbWc6IHRwbC91LWJvb3QtdHBsLmltZyBzcGwvdS1ib290LXNwbC5iaW4gRk9SQ0UKPiAr
aWRibG9hZGVyLmltZzogdHBsL3UtYm9vdC10cGwtcm9ja2NoaXAuYmluIHNwbC91LWJvb3Qtc3Bs
LmJpbiBGT1JDRQo+ICAgCSQoY2FsbCBpZl9jaGFuZ2VkLGNhdCkKPiAgIGVuZGlmCj4gICAKCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
