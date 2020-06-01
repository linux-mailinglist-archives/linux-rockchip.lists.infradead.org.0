Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD2621EA6AA
	for <lists+linux-rockchip@lfdr.de>; Mon,  1 Jun 2020 17:16:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XXCaT98yigpzmoWFSLrCc0+iDsgYDKZjsMn0IGtM3rw=; b=pI7ge5v903WoZv
	VQ9vAQtbYe7fIgH77PY4XD9yX9hPRxBla8aeo8K9YbsfGO7B6YgmB6MiwQK+PbAPI8uYDaHaaJXuj
	Ekt3sDdr2G9ab5RiSybAd4mIUWVuuen+T/oi/Q2+PERr45gXFYyE7MahUP0x27DJ/YZjJ0Yp2nhel
	vKmgzNfspfSWC/504xyu+Tks3Hi73BEfUcZG7tE6Cw1PT83/5ucZDEsLTpKZAr2mn0gRBhgdIyB4J
	JqCXZWmPzLpGZ/5HuxtiFnCKDVDRzpgm/S0i7AC7h5idfhhE2QVWSXYsT4aYVVU5+Ef96l9gRoEXl
	wT6/LysscsA8wXaZv6RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfmAW-0005RF-6m; Mon, 01 Jun 2020 15:16:04 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfm9j-00037r-Is; Mon, 01 Jun 2020 15:15:22 +0000
Received: from ni.home (unknown [IPv6:2a01:cb19:8092:cf00:aaa1:59ff:fe08:91d5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: myjosserand)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id E6E0E2A2000;
 Mon,  1 Jun 2020 16:15:05 +0100 (BST)
From: =?UTF-8?q?Myl=C3=A8ne=20Josserand?= <mylene.josserand@collabora.com>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	heiko@sntech.de
Subject: [PATCH v3 0/1] ARM: Add Rockchip rk3288w support
Date: Mon,  1 Jun 2020 17:14:41 +0200
Message-Id: <20200601151442.156184-1-mylene.josserand@collabora.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_081516_073873_650F5B84 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mylene.josserand@collabora.com, kever.yang@rock-chips.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 geert@linux-m68k.org, kernel@collabora.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGVsbG8gZXZlcnlvbmUsCgpDb250ZXh0Ci0tLS0tLS0KCkhlcmUgaXMgbXkgVjMgb2YgbXkgcGF0
Y2hlcyB0aGF0IGFkZCB0aGUgc3VwcG9ydCBmb3IgdGhlIFJvY2tjaGlwClJLMzI4OHcgd2hpY2gg
aXMgYSByZXZpc2lvbiBvZiB0aGUgUkszMjg4LiBJdCBpcyBtb3N0bHkgdGhlIHNhbWUgU09DCmV4
Y2VwdCBmb3IsIGF0IGxlYXN0LCBvbmUgY2xvY2sgdHJlZSB3aGljaCBpcyBkaWZmZXJlbnQuClRo
aXMgZGlmZmVyZW5jZSBpcyBvbmx5IGtub3duIGJ5IGxvb2tpbmcgYXQgdGhlIEJTUCBrZXJuZWwg
WzFdLgoKQ3VycmVudGx5LCB0aGUgbWFpbmxpbmUga2VybmVsIHdpbGwgbm90IGhhbmcgb24gcmsz
Mjg4dyBidXQgaXQgaXMKcHJvYmFibHkgYnkgImNoYW5jZSIgYmVjYXVzZSB3ZSBnb3QgYW4gaXNz
dWUgb24gYSBsb3dlciBrZXJuZWwgdmVyc2lvbi4KCkFjY29yZGluZyB0byBSb2NrY2hpcCdzIFUt
Qm9vdCBbMl0sIHRoZSByazMyODh3IGNhbiBiZSBkZXRlY3RlZCB1c2luZwp0aGUgSERNSSByZXZp
c2lvbiBudW1iZXIgKD0gMHgxQSkgaW4gdGhpcyB2ZXJzaW9uIG9mIHRoZSBTT0MuCgpDaGFuZ2Vs
b2cKLS0tLS0tLS0tCgpJbiB0aGlzIFYzLCB0aGUgcmV2aXNpb24ncyBkZXRlY3Rpb24gaXMgbm90
IGRvbmUgaW4gdGhlIGtlcm5lbCBhbnltb3JlLgpUaGlzIHBhdGNoIHdpbGwgaGFuZGxlIHRoZSBy
azMyODh3IGNsb2NrIHRyZWUgYWNjb3JkaW5nIHRvIGEgbmV3CmNvbXBhdGlibGUgInJvY2tjaGlw
LHJrMzI4OHctY3J1IiB0aGF0IG11c3QgYmUgcHJvdmlkZWQgYnkgYm9vdGxvYWRlcnMuCgpDaGFu
Z2VzIHNpbmNlIHYyOgogICAtIFJlbW92ZSBhbGwgY29kZXMgYWJvdXQgcmV2aXNpb24gZGV0ZWN0
aW9uLCBsZXQncyBoYW5kbGUgdGhhdCBieQogICBCb290bG9hZGVycwoKQmVzdCByZWdhcmRzLApN
eWzDqG5lIEpvc3NlcmFuZAoKWzFdIGh0dHBzOi8vZ2l0aHViLmNvbS9yb2NrY2hpcC1saW51eC9r
ZXJuZWwvYmxvYi9kZXZlbG9wLTQuNC9kcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGstcmszMjg4LmMj
TDk2MC4uTDk2NApbMl0gaHR0cHM6Ly9naXRodWIuY29tL3JvY2tjaGlwLWxpbnV4L3UtYm9vdC9i
bG9iL25leHQtZGV2L2FyY2gvYXJtL21hY2gtcm9ja2NoaXAvcmszMjg4L3JrMzI4OC5jI0wzNzgu
LkwzODgKCk15bMOobmUgSm9zc2VyYW5kICgxKToKICBjbGs6IHJvY2tjaGlwOiByazMyODg6IEhh
bmRsZSBjbG9jayB0cmVlIGZvciByazMyODh3CgogZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLXJr
MzI4OC5jIHwgMjAgKysrKysrKysrKysrKysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCAxOCBpbnNl
cnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKLS0gCjIuMjYuMgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
