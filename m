Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACD216A7ED
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:00:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eDHitRzldlr9Wj8/EkkEaz9vYLiTSsKkCdkSlJsp0aE=; b=ua49gk17vlIWzM
	lcPaeq2lgOHQaVyeFY1mQIjGwTpkjlTLOJGxDBHciTuZlc8MbCJ4Ek2jcsdZ3IauKiesUZ0yajOV8
	iDT9Z8m0yb9rLxNM7tKBqQgMpgznxl4wr+1DuaD/jYqk3mj0z4w+gSy/Hpo9H52GWmWAg42Q051AS
	g99JDxcbC2RjNMygMnaWLkjLBL2D1ydD1XiNGBLu83GmgZsPj7yhDp2sLKe0pGVM02re/DgczpgvU
	7w1XvRkTFx2kk36U0F4jnMNQPy787xGFcZL4z9XWTbsfUP8N2oXqQp0f5zCnDopf2vWoJEJoUfuRb
	JN/FqLAZ2ZSKM2BSjbNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnM8X-0006tk-7u; Tue, 16 Jul 2019 12:00:49 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM6E-0003rm-2J
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 11:58:27 +0000
Received: by mail-pf1-x441.google.com with SMTP id c73so8996779pfb.13
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 04:58:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Pz3uWBLaKvlci/tn17NEquWR/zeQoVQMRytHfnj7YZ8=;
 b=Cd3cJPq3QVlwo7k54taM+nRusifgkBNjlpqZGF+Q6k0D4sOBuR8U9L6YvmvwvA/k/8
 0AJQM5wyCxYfOoTYtsB5lPvZJMdVuoqj1csdOTySr6ahIdXaugNr9jcxDGzP1ewIIcvv
 LM5+Bfcm84pJxs2KBNbLPgxkT383xbdwCDe/U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Pz3uWBLaKvlci/tn17NEquWR/zeQoVQMRytHfnj7YZ8=;
 b=pVcDiH9q5AVcdTvDjrYH+ZJjGuYCDWLjHJME+z4ihAcCCOYj5WPDVwJZca8tAOeuQG
 9m9ycHdJvBLw7shLhNLz9cCG+9YQOKE7wgy4QJ0LcrAwh+lEO/QzoHqjt1ZZYUp7WnlY
 5q8HxGetxRtLWzq3dK7xUSmX+eZkAok+ef2Vtlo8Z5v42cakVA/E/4fpba9apZqSgkd9
 cwjChul7ddyA/xpxAhvguW2YflcOqjph5edi0yhLDr6diT6TzHMIDAh9DbU8kbqyhWo5
 D0uBmWEnUDvZiIvPO9YqzgpF8J+S6zn7blwXs/UrK6zBMEx6ct8BdBi1VfK6/HIsKmj4
 EM3Q==
X-Gm-Message-State: APjAAAU1HcP7hjkjtps8lcDkpgzj1J3R84VbLtiUOMlNfYyJz7FZrvYg
 FxiSBqkvos531T7rZ45KWYyffw==
X-Google-Smtp-Source: APXvYqwcpZ8RusMG7rFhV7ZLMJV6auV5gh3UZM0Ix7lanXdPeTREPpOXQEakt4HoxKtbtmn2Ti37sQ==
X-Received: by 2002:a63:7d49:: with SMTP id m9mr21862723pgn.161.1563278305321; 
 Tue, 16 Jul 2019 04:58:25 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.04.58.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 04:58:24 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 08/57] ram: rk3399: Add dbw enc macro
Date: Tue, 16 Jul 2019 17:26:56 +0530
Message-Id: <20190716115745.12585-9-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_045826_189350_31BDDA60 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add simplified and meaningful macro for dbw.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_common.h | 1 +
 drivers/ram/rockchip/sdram_rk3399.c               | 3 +--
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index 71062e3e71..338f4043e1 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -96,6 +96,7 @@ struct sdram_base_params {
 #define SYS_REG_BW_MASK			3
 #define SYS_REG_DBW_SHIFT(ch)		((ch) * 16)
 #define SYS_REG_DBW_MASK		3
+#define SYS_REG_ENC_DBW(n, ch)		((2 >> (n)) << SYS_REG_DBW_SHIFT(ch))
 
 /* Get sdram size decode from reg */
 size_t rockchip_sdram_size(phys_addr_t reg);
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index b93a6c6c44..b994134fdb 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1100,8 +1100,7 @@ static void dram_all_config(struct dram_info *dram,
 			    SYS_REG_CS1_ROW_SHIFT(channel);
 		sys_reg |= (2 >> info->cap_info.bw) <<
 			   SYS_REG_BW_SHIFT(channel);
-		sys_reg |= (2 >> info->cap_info.dbw) <<
-			   SYS_REG_DBW_SHIFT(channel);
+		sys_reg |= SYS_REG_ENC_DBW(info->cap_info.dbw, channel);
 
 		ddr_msch_regs = dram->chan[channel].msch;
 		noc_timing = &params->ch[channel].noc_timings;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
