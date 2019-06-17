Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B518447B26
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:37:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2GM0p24h2PuiriF6AI9P9xizJ/EXRjZDXlC0GK7+PTs=; b=mG7dpGdr76PIp/
	7pABAJdQapTGbHdEHs7YvMNbb2e768TDtB+HK1TZBbEK51paHCB3OtCixV4vfgeoF0IDYH+zH/vXo
	v0kHsbSGhLaMWBUqwDX/Wt8LnIo1HPXpZtjl4f6sBMJ2Kp9OkQvpvIwOQjtRISY/aR6yzfhk4Jks7
	PEtlmkek3psu2xxXhFQjg9a4pklHogk4rwUBdQm5svnILHvDR59xbgYxJN0Wup7uq+6gh/WH8JZPb
	PzkKM/f3GcfOMbIyoLX+k1RDL1Gbh0NY9F7FzyOf/7blySm8kQxut+f5lQFzcx72fUtV8Q0oCm4u9
	9x4FEAdWRa1ZT3cBHEAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmCj-0005mG-0d; Mon, 17 Jun 2019 07:37:25 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmCY-0005ee-Kb
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:37:15 +0000
Received: by mail-pf1-x443.google.com with SMTP id r1so5176629pfq.12
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:37:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eTIwIuvfrXarYBFBkIvKvzP/euv267yR+rTP9T/M9Gc=;
 b=aDk35/8sGGDc/hiwCKrgDnUUEkGr6wbAm1ThJ95BAEezBp+UADeaTGWOo62RcmMxq+
 o7Mehf28YlD/1Ca/wq5TR70mXwobCEqIh4YPPVJBCZ9bRxrcqAOEkFXDnSGB/BrHTD+K
 oYlUob+HBfcmQFfjRDRCUBDflx+MDZ4s5gFM4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eTIwIuvfrXarYBFBkIvKvzP/euv267yR+rTP9T/M9Gc=;
 b=kg+E5HM5zwvWE8eGNBcW1KTn/SvZLF0KROR/Ob5Qx5ARxwGLx6He2HhY3jCaeM0jcu
 xyXXYQRncFedg8315pRoFHHhEjQ5lqT/dgkAokJJSedhwboiXDPB4/086cFUKkdKc5Or
 khRV2p9caQuTWiadufRoppQD8YcRTT8ItapWTB+Rg3D8/FyydFuQuL4myP6uyVUYw5TO
 y936qrLB3ZTpXq12xxr5PUwn+cjRYgM1sB5b7Yrsj8T/oq4+YpSPZFq7tFIHjnVwRqaU
 LuovklYIXerJz6QDr2dK/dhJKFF4UpERUj62qlAyS5/QZBaPPZvqzoOQBhPvUsIB/ZE4
 fBHQ==
X-Gm-Message-State: APjAAAWMDxEpM6DfM/i4JilkkAVKiOeYwI9fXgVNWroQ8JmksmpIixTO
 6i+1OZlMAh9pRb2lN9zRWRcpPw==
X-Google-Smtp-Source: APXvYqwiUbU/5b5FIniMxcYyhxWfz1Dl15PvydNnl5La24UR3N0SksyaD9b4ICk9Myoq8kKJeV3/cA==
X-Received: by 2002:a65:404a:: with SMTP id h10mr6114479pgp.262.1560757034093; 
 Mon, 17 Jun 2019 00:37:14 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.37.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:37:13 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 16/99] ram: rk3399: Add column enc macro
Date: Mon, 17 Jun 2019 13:01:29 +0530
Message-Id: <20190617073252.27810-17-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003714_689178_F58BAF68 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Add simplified and meaningful macro for column.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_common.h | 1 +
 drivers/ram/rockchip/sdram_rk3399.c               | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index e2173aeeea..8cb564960d 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -45,6 +45,7 @@
 					 SYS_REG_RANK_SHIFT(ch))
 #define SYS_REG_COL_SHIFT(ch)		(9 + (ch) * 16)
 #define SYS_REG_COL_MASK		3
+#define SYS_REG_ENC_COL(n, ch)		(((n) - 9) << SYS_REG_COL_SHIFT(ch))
 #define SYS_REG_BK_SHIFT(ch)		(8 + (ch) * 16)
 #define SYS_REG_BK_MASK			1
 #define SYS_REG_CS0_ROW_SHIFT(ch)	(6 + (ch) * 16)
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index acc8f17491..ed2e0f54a2 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1023,7 +1023,7 @@ static void dram_all_config(struct dram_info *dram,
 		sys_reg |= SYS_REG_ENC_ROW_3_4(info->row_3_4, channel);
 		sys_reg |= SYS_REG_ENC_CHINFO(channel);
 		sys_reg |= SYS_REG_ENC_RANK(info->rank, channel);
-		sys_reg |= (info->col - 9) << SYS_REG_COL_SHIFT(channel);
+		sys_reg |= SYS_REG_ENC_COL(info->col, channel);
 		sys_reg |= info->bk == 3 ? 0 : 1 << SYS_REG_BK_SHIFT(channel);
 		sys_reg |= (info->cs0_row - 13) <<
 			    SYS_REG_CS0_ROW_SHIFT(channel);
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
