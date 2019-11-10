Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5551F696C
	for <lists+linux-rockchip@lfdr.de>; Sun, 10 Nov 2019 15:19:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9R1xJwUypOUgdjpQSP2b+LJhjoKyqmolUO+991fyfWw=; b=HnX0/kXuAE9gH0Yjh75z6Gd0C
	bO1FZDtDbtd1wPoeaCg6QAh6EYW+i4GAqEcmMEt8ydbGZ/DJ2Uq/0Hb3PpGQxaBobSZyXMu07Oja4
	V11eZYdmAGJkMhzgLVTvoQBLUvVQXaKRcabgKIObvnWYCwZv2xJxgG0d7ZtzD9DPV7HbDLin/r8Wp
	hUwUvYiJHhMmnjIv7h3uJI9LBwKRtZoc0ab5K46nhHPA82oNi+Ydr31CZ4gacB6n/lWX49qTndjsk
	xSP8l36xrEqrvccDOMCt4sbjnFlmTqpBzI9jreHAyZH2V1nGvhAsqciDS2K4W+9Q4QfUyXI3GCO84
	Rd8iVOiIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTo3w-0005mz-KG; Sun, 10 Nov 2019 14:19:32 +0000
Received: from regular1.263xmail.com ([211.150.70.205])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTo3q-0005mI-Ck
 for linux-rockchip@lists.infradead.org; Sun, 10 Nov 2019 14:19:31 +0000
Received: from localhost (unknown [192.168.167.13])
 by regular1.263xmail.com (Postfix) with ESMTP id 8487230B;
 Sun, 10 Nov 2019 22:19:22 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.0.8] (unknown [112.49.232.43])
 by smtp.263.net (postfix) whith ESMTP id
 P27171T139653380294400S1573395561749026_; 
 Sun, 10 Nov 2019 22:19:22 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <f32164213f3a82279ec4e865ccd52308>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 112.49.232.43
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v4 5/7] arm: dts: rk3036: Add rk3036-u-boot.dtsi
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20191023195652.7158-1-jagan@amarulasolutions.com>
 <20191023195652.7158-6-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <cbf8f73e-76b1-62aa-f8be-2d0fef9c3711@rock-chips.com>
Date: Sun, 10 Nov 2019 22:19:18 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191023195652.7158-6-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_061929_844161_CD720DEC 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.205 listed in list.dnswl.org]
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

Ck9uIDIwMTkvMTAvMjQg5LiK5Y2IMzo1NiwgSmFnYW4gVGVraSB3cm90ZToKPiBBZGQgVS1Cb290
IHNwZWNpZmljIGR0c2kgZmlsZSBmb3IgcmszMDM2IFNvQy4gVGhpcwo+IHdvdWxkIGhlbHAgdG8g
YWRkIFUtQm9vdCBzcGVjaWZpYyBkdHMgbm9kZXMsIHByb3BlcnRpZXMKPiB3aGljaCBhcmUgY29t
bW9uIGFjcm9zcyByazMwMzYuCj4KPiBSaWdodCBub3csIHRoZSBmaWxlIGlzIGVtcHR5LCB3aWxs
IGFkZCByZXF1aXJlZCBjaGFuZ2VzCj4gaW4gZnV0dXJlIHBhdGNoZXMuCj4KPiBTaWduZWQtb2Zm
LWJ5OiBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KClJldmlld2VkLWJ5
OiBLZXZlciBZYW5nIDxrZXZlci55YW5nQHJvY2stY2hpcHMuY29tPgoKVGhhbmtzLAotIEtldmVy
Cj4gLS0tCj4gICBhcmNoL2FybS9kdHMvcmszMDM2LXNkay11LWJvb3QuZHRzaSB8IDIgKysKPiAg
IGFyY2gvYXJtL2R0cy9yazMwMzYtdS1ib290LmR0c2kgICAgIHwgNCArKysrCj4gICAyIGZpbGVz
IGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQo+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJt
L2R0cy9yazMwMzYtdS1ib290LmR0c2kKPgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9kdHMvcmsz
MDM2LXNkay11LWJvb3QuZHRzaSBiL2FyY2gvYXJtL2R0cy9yazMwMzYtc2RrLXUtYm9vdC5kdHNp
Cj4gaW5kZXggNmYxNWY0YThlYy4uNzU0ODAwYzZlNiAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9k
dHMvcmszMDM2LXNkay11LWJvb3QuZHRzaQo+ICsrKyBiL2FyY2gvYXJtL2R0cy9yazMwMzYtc2Rr
LXUtYm9vdC5kdHNpCj4gQEAgLTEsMyArMSw1IEBACj4gKyNpbmNsdWRlICJyazMwMzYtdS1ib290
LmR0c2kiCj4gKwo+ICAgJnVhcnQyIHsKPiAgIAl1LWJvb3QsZG0tcHJlLXJlbG9jOwo+ICAgfTsK
PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vZHRzL3JrMzAzNi11LWJvb3QuZHRzaSBiL2FyY2gvYXJt
L2R0cy9yazMwMzYtdS1ib290LmR0c2kKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAw
MDAwMDAwMDAuLjFlN2QwNzkzMTUKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvYXJjaC9hcm0vZHRz
L3JrMzAzNi11LWJvb3QuZHRzaQo+IEBAIC0wLDAgKzEsNCBAQAo+ICsvLyBTUERYLUxpY2Vuc2Ut
SWRlbnRpZmllcjogR1BMLTIuMCsKPiArLyoKPiArICogQ29weXJpZ2h0IChDKSAyMDE5IEphZ2Fu
IFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+ICsgKi8KCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
