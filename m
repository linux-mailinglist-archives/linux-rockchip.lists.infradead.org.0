Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA327F6968
	for <lists+linux-rockchip@lfdr.de>; Sun, 10 Nov 2019 15:18:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XXjZa6VVpgrY78rAL41mlpX49EqgFvm1NWfpE1kdqzk=; b=Eq3BOnlo3UyCdZn1nZSoHzjOW
	sWO6RcldZ8IVdxefl87IYl6oEbdq+5huZT74NfTeCG1KqVgBS0BI/vGj/BIfRnwkYpJNMJxrNT6i+
	vQkDgpvfqYLyKgPXQ4oFeSyXdboMJb2ht0Tq6PkiGdM9NpIfEXak0yyqw2gTvuHYy0QVqaCyz23i0
	9bZXDrgUHqlwSTNxtoHyf501zvfe7eid3SJa6gcmjF63n3Ha9ZizIsVGXZzSplQWRz4HAf3TtWwBi
	t8ObT9NSWLKxlNw16sTlp9m0vyoKsJbI5T8HD3Lfdfp4bCer67aZQNPRFHb/Pvey1TJGx5OLzT5YO
	EH+fAxaWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTo2d-0005L1-SG; Sun, 10 Nov 2019 14:18:11 +0000
Received: from regular1.263xmail.com ([211.150.70.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTo2b-0005KI-57
 for linux-rockchip@lists.infradead.org; Sun, 10 Nov 2019 14:18:10 +0000
Received: from localhost (unknown [192.168.167.69])
 by regular1.263xmail.com (Postfix) with ESMTP id 9EF8C5EC;
 Sun, 10 Nov 2019 22:18:03 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.0.8] (unknown [112.49.232.43])
 by smtp.263.net (postfix) whith ESMTP id
 P27141T140320758294272S1573395472342670_; 
 Sun, 10 Nov 2019 22:18:02 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <9667da0342f22fdfc319596075b73e54>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: matwey.kornilov@gmail.com
X-SENDER-IP: 112.49.232.43
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v4 1/7] Makefile: Add rockchip image type
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20191023195652.7158-1-jagan@amarulasolutions.com>
 <20191023195652.7158-2-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <b960fb69-88d2-8667-e141-b8bf3597f917@rock-chips.com>
Date: Sun, 10 Nov 2019 22:17:50 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191023195652.7158-2-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_061809_472660_602F6131 
X-CRM114-Status: GOOD (  10.85  )
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
Cc: u-boot@lists.denx.de, "Matwey V . Kornilov" <matwey.kornilov@gmail.com>,
 linux-amarula@amarulasolutions.com, linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvMTAvMjQg5LiK5Y2IMzo1NiwgSmFnYW4gVGVraSB3cm90ZToKPiBBZGQgcm9ja2No
aXAgaW1hZ2UgdHlwZSBzdXBwb3J0LiByaWdodCBub3cgdGhlIGltYWdlCj4gdHlwZSBtYXJrZWQg
d2l0aCBya3NkLCBTbyBjcmVhdGUgaW1hZ2UgdHlwZSB2YXJpYWJsZQo+IHdpdGggcmVxdWlyZWQg
aW1hZ2UgdHlwZSBsaWtlIHJrc2Qgb3IgcmtzcGkuCj4KPiBDYzogS2V2ZXIgWWFuZyA8a2V2ZXIu
eWFuZ0Byb2NrLWNoaXBzLmNvbT4KPiBDYzogTWF0d2V5IFYuIEtvcm5pbG92IDxtYXR3ZXkua29y
bmlsb3ZAZ21haWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1
bGFzb2x1dGlvbnMuY29tPgoKUmV2aWV3ZWQtYnk6IEtldmVyIFlhbmcgPGtldmVyLnlhbmdAcm9j
ay1jaGlwcy5jb20+CgpUaGFua3MsCi0gS2V2ZXIKPiAtLS0KPiAgIE1ha2VmaWxlIHwgMTAgKysr
KysrKysrLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigt
KQo+Cj4gZGlmZiAtLWdpdCBhL01ha2VmaWxlIGIvTWFrZWZpbGUKPiBpbmRleCA2ZmRhMzI2OGU3
Li4zZTA1ZDNmY2ZlIDEwMDY0NAo+IC0tLSBhL01ha2VmaWxlCj4gKysrIGIvTWFrZWZpbGUKPiBA
QCAtMTMzNCw3ICsxMzM0LDE1IEBAIHUtYm9vdC13aXRoLXNwbC5iaW46ICQoU1BMX0lNQUdFKSAk
KFNQTF9QQVlMT0FEKSBGT1JDRQo+ICAgCSQoY2FsbCBpZl9jaGFuZ2VkLHBhZF9jYXQpCj4gICAK
PiAgIGlmZXEgKCQoQ09ORklHX0FSQ0hfUk9DS0NISVApLHkpCj4gLU1LSU1BR0VGTEFHU191LWJv
b3QtdHBsLmltZyA9IC1uICQoQ09ORklHX1NZU19TT0MpIC1UIHJrc2QKPiArCj4gKyMgcm9ja2No
aXAgaW1hZ2UgdHlwZQo+ICtpZmVxICgkKENPTkZJR19TUElfRkxBU0hfU1VQUE9SVCkseSkKPiAr
Uk9DS0NISVBfSU1HX1RZUEUgOj0gcmtzcGkKPiArZWxzZQo+ICtST0NLQ0hJUF9JTUdfVFlQRSA6
PSBya3NkCj4gK2VuZGlmCj4gKwo+ICtNS0lNQUdFRkxBR1NfdS1ib290LXRwbC5pbWcgPSAtbiAk
KENPTkZJR19TWVNfU09DKSAtVCAkKFJPQ0tDSElQX0lNR19UWVBFKQo+ICAgdHBsL3UtYm9vdC10
cGwuaW1nOiB0cGwvdS1ib290LXRwbC5iaW4gRk9SQ0UKPiAgIAkkKGNhbGwgaWZfY2hhbmdlZCxt
a2ltYWdlKQo+ICAgaWRibG9hZGVyLmltZzogdHBsL3UtYm9vdC10cGwuaW1nIHNwbC91LWJvb3Qt
c3BsLmJpbiBGT1JDRQoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
