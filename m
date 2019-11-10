Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFBBBF696B
	for <lists+linux-rockchip@lfdr.de>; Sun, 10 Nov 2019 15:18:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qRmbeBHLjsoRFglInFQsaVjhzNFt3/TZsU2JfgZ4THU=; b=oLJWNUoDBkRGkTRxcTHDL8P63
	Ghnh2DYETdckbr7XJKbR8yURYSstF2EHJYECO235KSpGYC+SMtdusOLMpemi/HV6VKojV5qAa94tL
	8I4tVwIoHgw49UwFb5dGX/m8T1BX3FistH3k4v8oPC9Ve6M6RdSBE6gfRO7+PgLDqXXrBAiUUE1Q2
	RVA+PcDHha5kSDC770mtDDMfT/W3PIPpcBo5IuzXQ2rWJAV1kPO2RDx1+mMZ0hEUEqKNJM2Ri0bum
	PBrvhVDw8UqN3iwyRfMCq4F1nk159IzLUJttCVswG6q3NY33jdLiZyJztHilvy74ZpxZcn00TUKJ3
	KMxW/TNpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTo36-0005hT-Nj; Sun, 10 Nov 2019 14:18:40 +0000
Received: from regular1.263xmail.com ([211.150.70.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTo33-0005g5-2C
 for linux-rockchip@lists.infradead.org; Sun, 10 Nov 2019 14:18:39 +0000
Received: from localhost (unknown [192.168.167.70])
 by regular1.263xmail.com (Postfix) with ESMTP id 08E1D5F3;
 Sun, 10 Nov 2019 22:18:30 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.0.8] (unknown [112.49.232.43])
 by smtp.263.net (postfix) whith ESMTP id
 P17626T139913794156288S1573395508068943_; 
 Sun, 10 Nov 2019 22:18:29 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <071c51d7a5176fa662bdf5a5af6a7976>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 112.49.232.43
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v4 3/7] Makefile: rockchip: Support SPL-alone mkimage
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20191023195652.7158-1-jagan@amarulasolutions.com>
 <20191023195652.7158-4-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <3b330fff-9a48-1854-78c1-cf91b4ac5ccb@rock-chips.com>
Date: Sun, 10 Nov 2019 22:18:28 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191023195652.7158-4-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_061837_389902_44E9D0C8 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.197 listed in list.dnswl.org]
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

Ck9uIDIwMTkvMTAvMjQg5LiK5Y2IMzo1NiwgSmFnYW4gVGVraSB3cm90ZToKPiBBZGQgU1BMLWFs
b25lIG1raW1hZ2UgdG9vbGluZyBzdXBwb3J0IHZpYSBNYWtlZmlsZSBmb3IKPiBmZXcgcGxhdGZv
cm1zIG9yIGJvYXJkcyB1c2VkIGluIHJvY2tjaGlwIGZhbWlseS4KPgo+IFdpdGggdGhpcyB1c2Vy
cyB3b3VsZCBnZXQgcmlkIG9mIGV4cGxpY2l0bHkgY3JlYXRpbmcKPiBta2ltYWdlIHRvb2wgZm9y
IHJvY2tjaGlwIHJrc2Qgb3IgcmtzcGkgYm9vdCBtb2Rlcy4KPgo+IFNpZ25lZC1vZmYtYnk6IEph
Z2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgoKUmV2aWV3ZWQtYnk6IEtldmVy
IFlhbmcgPGtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+CgpUaGFua3MsCi0gS2V2ZXIKPiAtLS0K
PiAgIE1ha2VmaWxlIHwgMTAgKysrKysrKysrLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0
aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBhL01ha2VmaWxlIGIvTWFrZWZp
bGUKPiBpbmRleCA0MGNiZjY4ZmVmLi5iNTgxMDdkNmVmIDEwMDY0NAo+IC0tLSBhL01ha2VmaWxl
Cj4gKysrIGIvTWFrZWZpbGUKPiBAQCAtODg2LDcgKzg4Niw3IEBAIGlmZXEgKCQoQ09ORklHX01Q
Qzg1eHgpJChDT05GSUdfT0ZfU0VQQVJBVEUpLHl5KQo+ICAgQUxMLXkgKz0gdS1ib290LXdpdGgt
ZHRiLmJpbgo+ICAgZW5kaWYKPiAgIAo+IC1pZmVxICgkKENPTkZJR19BUkNIX1JPQ0tDSElQKSQo
Q09ORklHX1NQTCkkKENPTkZJR19UUEwpLHl5eSkKPiAraWZlcSAoJChDT05GSUdfQVJDSF9ST0NL
Q0hJUCkkKENPTkZJR19TUEwpLHl5KQo+ICAgQUxMLXkgKz0gaWRibG9hZGVyLmltZwo+ICAgZW5k
aWYKPiAgIAo+IEBAIC0xMzQyLDExICsxMzQyLDE5IEBAIGVsc2UKPiAgIFJPQ0tDSElQX0lNR19U
WVBFIDo9IHJrc2QKPiAgIGVuZGlmCj4gICAKPiArIyBUUEwgKyBTUEwKPiAraWZlcSAoJChDT05G
SUdfU1BMKSQoQ09ORklHX1RQTCkseXkpCj4gICBNS0lNQUdFRkxBR1NfdS1ib290LXRwbC1yb2Nr
Y2hpcC5iaW4gPSAtbiAkKENPTkZJR19TWVNfU09DKSAtVCAkKFJPQ0tDSElQX0lNR19UWVBFKQo+
ICAgdHBsL3UtYm9vdC10cGwtcm9ja2NoaXAuYmluOiB0cGwvdS1ib290LXRwbC5iaW4gRk9SQ0UK
PiAgIAkkKGNhbGwgaWZfY2hhbmdlZCxta2ltYWdlKQo+ICAgaWRibG9hZGVyLmltZzogdHBsL3Ut
Ym9vdC10cGwtcm9ja2NoaXAuYmluIHNwbC91LWJvb3Qtc3BsLmJpbiBGT1JDRQo+ICAgCSQoY2Fs
bCBpZl9jaGFuZ2VkLGNhdCkKPiArZWxzZQo+ICtNS0lNQUdFRkxBR1NfaWRibG9hZGVyLmltZyA9
IC1uICQoQ09ORklHX1NZU19TT0MpIC1UICQoUk9DS0NISVBfSU1HX1RZUEUpCj4gK2lkYmxvYWRl
ci5pbWc6IHNwbC91LWJvb3Qtc3BsLmJpbiBGT1JDRQo+ICsJJChjYWxsIGlmX2NoYW5nZWQsbWtp
bWFnZSkKPiArZW5kaWYKPiArCj4gICBlbmRpZgo+ICAgCj4gICBpZmVxICgkKENPTkZJR19BUkNI
X0xQQzMyWFgpJChDT05GSUdfU1BMKSx5eSkKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
