Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFE3836F89
	for <lists+linux-rockchip@lfdr.de>; Thu,  6 Jun 2019 11:09:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M302o6SePewO54iWP5N11eMrPFX5rz6+tUGKhEqJVe0=; b=RBIF1ukIeH2Oqb
	kcAcJVJFPedo6XEVFQNr0yPE1Gb8cR/NddkVEy58H8EpwB21x8GzzabCjMOzf5GijwsqfzQETY+FV
	DHJ49Tr/wDjYfN8LJZGOSC3PjVe1VQmSj6p63wRGPsnrLvkG9UnxcBGJtf0onMJXitGDtUHxJ8Y2x
	hNAZs4zhqE6VkJ7WwzcADhzck+7FgMWXbDoyN241jsjWpgdPjg4wIn7FDEFy47o8Q11fKmnLifP9v
	5GQ5roevsdO0aYlOommBvvk6DO9QQSPjbR2VP1vBjO1iYO6w508II+TddZWGR30ilgFgN3XMvzT8f
	RbyRwVZgsCEvavHg1ICg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYoP6-0006A9-6H; Thu, 06 Jun 2019 09:09:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYoP1-00068x-U7
 for linux-rockchip@lists.infradead.org; Thu, 06 Jun 2019 09:09:46 +0000
Received: from we0305.dip.tu-dresden.de ([141.76.177.49]
 helo=phil.dip.tu-dresden.de)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hYoOv-0003Fk-Uv; Thu, 06 Jun 2019 11:09:38 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-clk@vger.kernel.org
Subject: [PATCH 1/2] clk: rockchip: add a type from SGRF-controlled gate clocks
Date: Thu,  6 Jun 2019 11:09:33 +0200
Message-Id: <20190606090934.4443-1-heiko@sntech.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_020944_121500_CCCFDC24 
X-CRM114-Status: UNSURE (   8.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 papadakospan@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Some clk gates on Rockchip SoCs are part of the SGRF (secure general
register files) and thus only controllable from secure mode, with the
most prominent example being the watchdog.

In most cases we still want to define this as a real clock though,
to have complete clock tree and not reference the generic base-clock
from the devicetree.

So far we've just defined this as factor-1-1 clocks in the clock init,
so define a special clock-type for it so that this definition can be
part of the general tree-definition and save some boilerplate code.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/clk/rockchip/clk.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/clk/rockchip/clk.h b/drivers/clk/rockchip/clk.h
index 1b5270755431..2a911923cf81 100644
--- a/drivers/clk/rockchip/clk.h
+++ b/drivers/clk/rockchip/clk.h
@@ -820,6 +820,10 @@ struct rockchip_clk_branch {
 		.gate_offset	= -1,				\
 	}
 
+/* SGRF clocks are only accessible from secure mode, so not controllable */
+#define SGRF_GATE(_id, cname, pname)				\
+		FACTOR(_id, cname, pname, 0, 1, 1)
+
 struct rockchip_clk_provider *rockchip_clk_init(struct device_node *np,
 			void __iomem *base, unsigned long nr_clks);
 void rockchip_clk_of_add_provider(struct device_node *np,
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
