Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23B15F6960
	for <lists+linux-rockchip@lfdr.de>; Sun, 10 Nov 2019 15:16:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tykRyrKjw0gZ//YAqqhjf3CVKJl855cquFi8hOMCZrM=; b=T93UaRQwh1ivXpYtppsSYB97G
	vsK4IBvpLT0SNRgM/C7pL9IyMHuEwSM+at+LMs6QcyPFdEXw/xrJtpC0+brCfouj+3pW4Ee7pBtlk
	gai4pbuCMLLwuqlenDMq/wh480rM2rOgt4DsJ4XkQiD1woi75hHpin71VlWOAwT3sNtsjSJLLp+pj
	PUNcW3cZ9gis6YEo+AWfZDlSu74sfm9uGM6ubYsTjwimdR0vFNkje3dg4a1ELiyngBp8S7NPQAh8U
	/hWbuKuHmM93/cvlLFWVqGpAAjUKJO28LyU29H1KhwAb7HHG1rTX4PCaZyvGpTmS2y2Q7p/3LnKND
	clSl2NLRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTo0r-000527-WA; Sun, 10 Nov 2019 14:16:22 +0000
Received: from regular1.263xmail.com ([211.150.70.206])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTo0o-00050v-Sy
 for linux-rockchip@lists.infradead.org; Sun, 10 Nov 2019 14:16:20 +0000
Received: from localhost (unknown [192.168.167.235])
 by regular1.263xmail.com (Postfix) with ESMTP id 48ECF20C;
 Sun, 10 Nov 2019 22:16:05 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.0.8] (unknown [112.49.232.43])
 by smtp.263.net (postfix) whith ESMTP id
 P10617T140392160798464S1573395364361261_; 
 Sun, 10 Nov 2019 22:16:05 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <7b2bcf16e6455625af07c5365bfcc3eb>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: matwey.kornilov@gmail.com
X-SENDER-IP: 112.49.232.43
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 1/5] Makefile: Add rockchip image type
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20191017190710.29985-1-jagan@amarulasolutions.com>
 <20191017190710.29985-2-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <6ee3573a-0896-76dc-6ec1-13e3f2809268@rock-chips.com>
Date: Sun, 10 Nov 2019 22:16:01 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191017190710.29985-2-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_061619_162171_BAB7AB9B 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.206 listed in list.dnswl.org]
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
 linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvMTAvMTgg5LiK5Y2IMzowNywgSmFnYW4gVGVraSB3cm90ZToKPiBBZGQgcm9ja2No
aXAgaW1hZ2UgdHlwZSBzdXBwb3J0LiByaWdodCBub3cgdGhlIGltYWdlCj4gdHlwZSBtYXJrZWQg
d2l0aCBya3NkLCBTbyBjcmVhdGUgaW1hZ2UgdHlwZSB2YXJpYWJsZQo+IHdpdGggcmVxdWlyZWQg
aW1hZ2UgdHlwZSBsaWtlIHJrc2Qgb3IgcmtzcGkuCj4KPiBDYzogS2V2ZXIgWWFuZyA8a2V2ZXIu
eWFuZ0Byb2NrLWNoaXBzLmNvbT4KPiBDYzogTWF0d2V5IFYuIEtvcm5pbG92IDxtYXR3ZXkua29y
bmlsb3ZAZ21haWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1
bGFzb2x1dGlvbnMuY29tPgoKUmV2aWV3ZWQtYnk6IEtldmVyIFlhbmcgPGtldmVyLnlhbmdAcm9j
ay1jaGlwcy5jb20+CgpUaGFua3MsCi0gS2V2ZXIKPiAtLS0KPiAgIE1ha2VmaWxlIHwgOSArKysr
KysrKy0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkK
Pgo+IGRpZmYgLS1naXQgYS9NYWtlZmlsZSBiL01ha2VmaWxlCj4gaW5kZXggNmZkYTMyNjhlNy4u
ZWM1NWUwZjZhNCAxMDA2NDQKPiAtLS0gYS9NYWtlZmlsZQo+ICsrKyBiL01ha2VmaWxlCj4gQEAg
LTEzMzQsNyArMTMzNCwxNCBAQCB1LWJvb3Qtd2l0aC1zcGwuYmluOiAkKFNQTF9JTUFHRSkgJChT
UExfUEFZTE9BRCkgRk9SQ0UKPiAgIAkkKGNhbGwgaWZfY2hhbmdlZCxwYWRfY2F0KQo+ICAgCj4g
ICBpZmVxICgkKENPTkZJR19BUkNIX1JPQ0tDSElQKSx5KQo+IC1NS0lNQUdFRkxBR1NfdS1ib290
LXRwbC5pbWcgPSAtbiAkKENPTkZJR19TWVNfU09DKSAtVCBya3NkCj4gKwo+ICtpZmVxICgkKENP
TkZJR19TUElfRkxBU0hfU1VQUE9SVCkseSkKPiArUk9DS0NISVBfSU1HX1RZUEUgOj0gcmtzcGkK
PiArZWxzZQo+ICtST0NLQ0hJUF9JTUdfVFlQRSA6PSBya3NkCj4gK2VuZGlmCj4gKwo+ICtNS0lN
QUdFRkxBR1NfdS1ib290LXRwbC5pbWcgPSAtbiAkKENPTkZJR19TWVNfU09DKSAtVCAkKFJPQ0tD
SElQX0lNR19UWVBFKQo+ICAgdHBsL3UtYm9vdC10cGwuaW1nOiB0cGwvdS1ib290LXRwbC5iaW4g
Rk9SQ0UKPiAgIAkkKGNhbGwgaWZfY2hhbmdlZCxta2ltYWdlKQo+ICAgaWRibG9hZGVyLmltZzog
dHBsL3UtYm9vdC10cGwuaW1nIHNwbC91LWJvb3Qtc3BsLmJpbiBGT1JDRQoKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
