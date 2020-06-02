Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A2F1EB705
	for <lists+linux-rockchip@lfdr.de>; Tue,  2 Jun 2020 10:07:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=m8pBhz2GrNqd01mKkkmwcrH9JLxu3NeBfQjoAj123qk=; b=VpXNQkkiskKIFo
	Aeqpj26qx2BVyUr5zLm8qtTnb1BWcpGYpwvR3A7ZWgwhuDpFigEtVvHDFDV1VUtx7Kur3h/OK3Arc
	mFaDsmwPN5SSyfe/dcl8XTlX6muwcYy2CTx7t9mdJnECZY+zI/WAola8lMxbcFuC35BQ5x1APZdoB
	tWYiKzLUdD+OFrcawYbanV0e09GPVh7YbEUPdB9bb6rT8URk9QP5S7uIeXd7xMKGAhiWptC2rPOXL
	Q1szZgIwuybWRt8BxWY7arW1BdKOPgRMZKCzFprFwCDqk/8kuTcgr8/f33wzmXJkFfrXaAzuuUii5
	2C6gntT29W7SNciErJig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg1xD-000886-Bz; Tue, 02 Jun 2020 08:07:23 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg1x2-0007zz-QN; Tue, 02 Jun 2020 08:07:14 +0000
Received: from ni.home (unknown [IPv6:2a01:cb19:8092:cf00:aaa1:59ff:fe08:91d5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: myjosserand)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id AD7C52A0151;
 Tue,  2 Jun 2020 09:07:06 +0100 (BST)
From: =?UTF-8?q?Myl=C3=A8ne=20Josserand?= <mylene.josserand@collabora.com>
To: mturquette@baylibre.com, sboyd@kernel.org, heiko@sntech.de,
 robh+dt@kernel.org
Subject: [PATCH v4 0/2] ARM: Add Rockchip rk3288w support
Date: Tue,  2 Jun 2020 10:06:42 +0200
Message-Id: <20200602080644.11333-1-mylene.josserand@collabora.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_010712_981439_E05A2D9D 
X-CRM114-Status: GOOD (  12.52  )
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
Cc: devicetree@vger.kernel.org, mylene.josserand@collabora.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGVsbG8gZXZlcnlvbmUsCgpDb250ZXh0Ci0tLS0tLS0KCkhlcmUgaXMgbXkgVjQgb2YgbXkgcGF0
Y2hlcyB0aGF0IGFkZCB0aGUgc3VwcG9ydCBmb3IgdGhlIFJvY2tjaGlwClJLMzI4OHcgd2hpY2gg
aXMgYSByZXZpc2lvbiBvZiB0aGUgUkszMjg4LiBJdCBpcyBtb3N0bHkgdGhlIHNhbWUgU09DCmV4
Y2VwdCBmb3IsIGF0IGxlYXN0LCBvbmUgY2xvY2sgdHJlZSB3aGljaCBpcyBkaWZmZXJlbnQuClRo
aXMgZGlmZmVyZW5jZSBpcyBvbmx5IGtub3duIGJ5IGxvb2tpbmcgYXQgdGhlIEJTUCBrZXJuZWwg
WzFdLgoKQ3VycmVudGx5LCB0aGUgbWFpbmxpbmUga2VybmVsIHdpbGwgbm90IGhhbmcgb24gcmsz
Mjg4dyBidXQgaXQgaXMKcHJvYmFibHkgYnkgImNoYW5jZSIgYmVjYXVzZSB3ZSBnb3QgYW4gaXNz
dWUgb24gYSBsb3dlciBrZXJuZWwgdmVyc2lvbi4KCkFjY29yZGluZyB0byBSb2NrY2hpcCdzIFUt
Qm9vdCBbMl0sIHRoZSByazMyODh3IGNhbiBiZSBkZXRlY3RlZCB1c2luZwp0aGUgSERNSSByZXZp
c2lvbiBudW1iZXIgKD0gMHgxQSkgaW4gdGhpcyB2ZXJzaW9uIG9mIHRoZSBTT0MuCgpDaGFuZ2Vs
b2cKLS0tLS0tLS0tCgpUaGlzIFY0IGlzIHByZXR0eSBtdWNoIHRoZSBzYW1lIHRoYW4gdGhlIFYz
LiBBZGRlZCB0aGUgZHQtYmluZGluZ3MKZG9jdW1lbnRhdGlvbiBpbiBjbG9jay1jb250cm9sbGVy
IGR0LWJpbmRpbmdzIGFuZCBmaXhlZCBzb21lIHR5cG9zCmFjY29yZGluZyB0byBIZWlrbydzIHJl
dmlld3MuCgpDaGFuZ2VzIHNpbmNlIHYzOgogICAtIFVwZGF0ZWQgY2xvY2stY29udHJvbGxlcidz
IGR0LWJpbmRpbmdzCiAgIC0gRml4ZWQgaW5kZW50YXRpb24KCkJlc3QgcmVnYXJkcywKTXlsw6hu
ZSBKb3NzZXJhbmQKClsxXSBodHRwczovL2dpdGh1Yi5jb20vcm9ja2NoaXAtbGludXgva2VybmVs
L2Jsb2IvZGV2ZWxvcC00LjQvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLXJrMzI4OC5jI0w5NjAu
Lkw5NjQKWzJdIGh0dHBzOi8vZ2l0aHViLmNvbS9yb2NrY2hpcC1saW51eC91LWJvb3QvYmxvYi9u
ZXh0LWRldi9hcmNoL2FybS9tYWNoLXJvY2tjaGlwL3JrMzI4OC9yazMyODguYyNMMzc4Li5MMzg4
CgpNeWzDqG5lIEpvc3NlcmFuZCAoMik6CiAgY2xrOiByb2NrY2hpcDogcmszMjg4OiBIYW5kbGUg
Y2xvY2sgdHJlZSBmb3IgcmszMjg4dwogIGR0LWJpbmRpbmdzOiBjbG9ja3M6IHJrMzI4ODogYWRk
IHBvc3NpYmxlIHJrMzI4OHcKCiAuLi4vYmluZGluZ3MvY2xvY2svcm9ja2NoaXAscmszMjg4LWNy
dS50eHQgICAgfCAgOCArKysrKysrLQogZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLXJrMzI4OC5j
ICAgICAgICAgICAgIHwgMjAgKysrKysrKysrKysrKysrKystLQogMiBmaWxlcyBjaGFuZ2VkLCAy
NSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKLS0gCjIuMjYuMgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
