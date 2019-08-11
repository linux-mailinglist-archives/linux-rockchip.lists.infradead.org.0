Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5085989418
	for <lists+linux-rockchip@lfdr.de>; Sun, 11 Aug 2019 23:11:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yHw90NFXyGY2j3bPbfpnM1lD8gyvu0qvuQgXnHQNzeY=; b=CEC1rkK9Zb3row
	0l8oE2UiQqqMPoaw9u9/ni9XgTkGgWqHhvqdUwUUh898YS76Efvj4qFHgHbnvmngjtUSqJlFtNPM/
	gWxXVvN+GmY9YtmDpwUDrld2NpgSn461rFZHm1kF8/Ouac5WErpvq2axVRQ9eW2XgK7YTSg6YQv1N
	6vwj8CbSNS7cTs0l6ooFiHZuZZx5ryY/CcjjRnEN+hGpXXDbBFY6jQBnQp9oMNMDaKVhtiefDsOdR
	9DpUODnnDNTOx17B44nh5cyk280wZZhLD7AqS2P/NfKamWTF6di2gEffWF3z5SSC2uHgLIRsr6e9H
	BQNrThdfx2QM17b2iprQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwv7n-00065z-60; Sun, 11 Aug 2019 21:11:35 +0000
Received: from mail.stikonas.eu ([82.71.3.19])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwv7i-00065E-R0
 for linux-rockchip@lists.infradead.org; Sun, 11 Aug 2019 21:11:32 +0000
Received: from pine.stikonas.eu (localhost [127.0.0.1])
 by mail.stikonas.eu (Postfix) with ESMTP id 51D822A37C85;
 Sun, 11 Aug 2019 22:11:20 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=stikonas.eu; s=mail;
 t=1565557880; bh=j0tdNc3gzbUqFLWHavAwBv6w6XoM2oxJ0PpgoXoTVpk=;
 h=From:To:Cc:Subject:Date;
 b=V/0ljDiUS6HnEruUk5nO9iJA8+BtZMXlTqojfnxOQEPY2p9MgRMFVg6EvzzPSYMQh
 FBZEPFB5TOUgKw2h1SL59bX4rA2s+rxcx2Rb+lRZT2hnzwDWeDFQumhfK4QWICGYHs
 zLu0fk/Fz85ipY1IvvNqxCAtKG0SZV2y6DYxXtuY=
Received: from localhost.localdomain ([2a02:8010:6548:0:3420:3a75:6ee5:8107])
 by pine.stikonas.eu with ESMTPSA id ubdxEniEUF2PCAAAtWO0jw
 (envelope-from <andrius@stikonas.eu>); Sun, 11 Aug 2019 22:11:20 +0100
From: =?UTF-8?q?Andrius=20=C5=A0tikonas?= <andrius@stikonas.eu>
To: linux-rockchip@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] arm64: dts: rockchip: Enable internal SPI flash for RockPro64.
Date: Sun, 11 Aug 2019 22:11:08 +0100
Message-Id: <20190811211108.28071-1-andrius@stikonas.eu>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_141131_158365_A68E1B55 
X-CRM114-Status: UNSURE (   7.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: =?UTF-8?q?Andrius=20=C5=A0tikonas?= <andrius@stikonas.eu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

U2lnbmVkLW9mZi1ieTogQW5kcml1cyDFoHRpa29uYXMgPGFuZHJpdXNAc3Rpa29uYXMuZXU+Ci0t
LQogYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0cyB8IDE0
ICsrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKQoKZGlmZiAt
LWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2twcm82NC5kdHMg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrcHJvNjQuZHRzCmluZGV4
IGViNTU5NDA2MjAwNi4uYWJjOTdiMmMxZjE4IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrcHJvNjQuZHRzCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszMzk5LXJvY2twcm82NC5kdHMKQEAgLTYxMSw2ICs2MTEsMjAgQEAKIAlz
dGF0dXMgPSAib2theSI7CiB9OwogCismc3BpMSB7CisgICAgICAgc3RhdHVzID0gIm9rYXkiOwor
ICAgICAgIG1heC1mcmVxID0gPDEwMDAwMDAwPjsKKworICAgICAgIGZsYXNoQDAgeworICAgICAg
ICAgICAgICAgY29tcGF0aWJsZSA9ICJqZWRlYyxzcGktbm9yIjsKKyAgICAgICAgICAgICAgICNh
ZGRyZXNzLWNlbGxzID0gPDE+OworICAgICAgICAgICAgICAgI3NpemUtY2VsbHMgPSA8MT47Cisg
ICAgICAgICAgICAgICByZWcgPSA8MD47CisgICAgICAgICAgICAgICBzcGktbWF4LWZyZXF1ZW5j
eSA9IDwxMDAwMDAwMD47CisgICAgICAgfTsKK307CisKKwogJnNkbW1jIHsKIAlidXMtd2lkdGgg
PSA8ND47CiAJY2FwLW1tYy1oaWdoc3BlZWQ7Ci0tIAoyLjIxLjAKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
