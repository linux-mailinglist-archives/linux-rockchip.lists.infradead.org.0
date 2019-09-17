Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F333FB4918
	for <lists+linux-rockchip@lfdr.de>; Tue, 17 Sep 2019 10:19:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9M6XJeSUik355xh++aDujerCvJYYxj1OxCWXH1HKBf8=; b=Am97wobXVAJ6ks
	MNq6Ena229a8uIcWrPJjRCktgX4o7UPkbcqe9yx1cTrKvrWY32Pu2BOLSo2Vgru9GsoGmlfqZVLdf
	G1KH6JrMOTHtu3Su132N2qoMSgm0MD1+I7mcLX2W8wLf2P8InwpWRV8sivkFp3v9Xs2JGVBXVEH3u
	6rEZKegoo56L2fpT4K7i5p8eXYAnEfmWmJm/79yPI5J6xM9CizPj6eGgZtGp2b9+h0vR5fEppdxw4
	OrPfDAPmyiOK1gJhBmeIldx6xZypJsv0JpwfZK26t3WzKHWbqWcYHHdLzBFk1ZbruG0/c7V/JR8qp
	8WS9BNkMU/nF+v78e80Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA8hq-0006nd-6X; Tue, 17 Sep 2019 08:19:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA8hn-0006mG-LW
 for linux-rockchip@lists.infradead.org; Tue, 17 Sep 2019 08:19:24 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iA8hl-0005Uf-PU; Tue, 17 Sep 2019 10:19:21 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-clk@vger.kernel.org
Subject: [PATCH 1/5] clk: rockchip: Add div50 clock-ids for sdmmc on px30 and
 nandc
Date: Tue, 17 Sep 2019 10:18:59 +0200
Message-Id: <20190917081903.25139-1-heiko@sntech.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_011923_857177_20E439D2 
X-CRM114-Status: UNSURE (   7.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Heiko Stuebner <heiko@sntech.de>, sboyd@kernel.org, mturquette@baylibre.com,
 zhangqing@rock-chips.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, finley.xiao@rock-chips.com,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Finley Xiao <finley.xiao@rock-chips.com>

EMMC and SDIO already have these clock-ids (still unused) only sdmmc is
missing them, so fix that.

Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 include/dt-bindings/clock/px30-cru.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/dt-bindings/clock/px30-cru.h b/include/dt-bindings/clock/px30-cru.h
index 00101479f7c4..5b1416fcde6f 100644
--- a/include/dt-bindings/clock/px30-cru.h
+++ b/include/dt-bindings/clock/px30-cru.h
@@ -85,6 +85,8 @@
 #define SCLK_EMMC_DIV50		83
 #define SCLK_DDRCLK		84
 #define SCLK_UART1_SRC		85
+#define SCLK_SDMMC_DIV		86
+#define SCLK_SDMMC_DIV50	87
 
 /* dclk gates */
 #define DCLK_VOPB		150
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
