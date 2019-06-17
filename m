Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67BFC47B33
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:38:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eMIuJ9TgBhCrKp9RIbxXkqdhImP2Sr9dPYqtjBXswDo=; b=UtCqVI2pUVoFiY
	VSnOdQAoEO8YhQKqgRRRbgd+wZPKTv3PQEn7rLYCN5RT1n9Rm+BoVUOzWwd1HTEMBxbzd82R0xhpz
	hSyciated4yu3c2k767cd2/5On9HZKzIaXq0GvC3qakksXJDpaw2LpArrXUzX+vtYEnRZ6ziTW5Je
	jdCxoO40rbOwkeWWlJ/PByCppN6m8jigclMI8htkkQyZsEwOZRp5MAtS9dKHglNTX8Ui3WtBhtqiT
	OrMhzbInr0vnngsShFynDwCINufMfnjh1M2Ou55r6P5N3S45aBMeCqnREF05irff3qPUUAPENUuYj
	kS37zpgf1+YXGfu24Cyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmDL-0006LF-Jc; Mon, 17 Jun 2019 07:38:03 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmD9-0006D0-Ve
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:37:53 +0000
Received: by mail-pg1-x544.google.com with SMTP id 196so5310653pgc.6
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:37:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CLITkFyBMkFVbsm6FYgyNMLnGtRe8xgq7oEoutVmL8k=;
 b=q6T43oZS6qOsFAnsASL+J99Ve5nTpx3szQUnuGWlUvxXdcgO7i7Y1BeSngkTQUQvjC
 m3eQ1T/9+hJk+CkPrgoL+CL3g6hdQ0T5IyEdQ0GOBucfxYd8fpXnUD51GrW/ekEy9PxU
 3MV/NbuObhZm5H+kOc6tfytuWGLsKmkCKBRkI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CLITkFyBMkFVbsm6FYgyNMLnGtRe8xgq7oEoutVmL8k=;
 b=EsCHrPS2kllwCOjJY9tL2QO80EleczxFLqlaU/LlcyCIArKg6jvpzJV7gwul0wSsqk
 Lfle6Nuz5i+whRl4z/0ccVZ398LFqptCdtwlfANOzHGi/4hMHW810mnX6PQMySBaDqc+
 CdfdvFJ+syCVrhw7vC9tJ26Hm6gbY0ViL/uGNqubZPh2vKmOnwgLEMZnDDC9gUdmrO2X
 ++ikSxM9At30szPJa/G8eomrs+YtqS0JhnOGMjXDixzUZlF1dKPWt9PdMTVZwmABK73q
 Nn1DEnaQtXvF4g3qLBsftPf0bAfLHLUJL/u4PQTZXUASOnZDhPvdK+5fy9Ut21novvGO
 3Atg==
X-Gm-Message-State: APjAAAXyxuY+Kz961BuTB7cTPQQxgS2ed1HScCFdP3Ch81kCl10q8Skb
 wOfRxXrDOojY1jzBOKLYzeeduA==
X-Google-Smtp-Source: APXvYqybNF/2wZyEC5a/doUBqTBeEZRkDfK8QErsFVQg4OHZiIKYnpdAgrUydPZy9IrA/cNPu8TyUA==
X-Received: by 2002:a17:90a:d151:: with SMTP id
 t17mr24704204pjw.60.1560757071490; 
 Mon, 17 Jun 2019 00:37:51 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.37.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:37:51 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 27/99] ram: rk3399: Add ddrtimingC0
Date: Mon, 17 Jun 2019 13:01:40 +0530
Message-Id: <20190617073252.27810-28-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003752_167912_7100E451 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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

Add DdrTimingC0 structure with associated bit fields.

These would help to reconfigure sdram capabilities during
lpddr4 setup related configs.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_rk3399.h | 12 +++++++++++-
 drivers/ram/rockchip/sdram_rk3399.c               |  2 +-
 2 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h b/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
index c6a260bad8..924eeb3bac 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
@@ -26,6 +26,16 @@ struct rk3399_ddr_pi_regs {
 	u32 denali_pi[200];
 };
 
+union noc_ddrtimingc0 {
+	u32 d32;
+	struct {
+		unsigned burstpenalty : 4;
+		unsigned reserved0 : 4;
+		unsigned wrtomwr : 6;
+		unsigned reserved1 : 18;
+	} b;
+};
+
 struct rk3399_msch_regs {
 	u32 coreid;
 	u32 revisionid;
@@ -44,7 +54,7 @@ struct rk3399_msch_regs {
 struct rk3399_msch_timings {
 	u32 ddrtiminga0;
 	u32 ddrtimingb0;
-	u32 ddrtimingc0;
+	union noc_ddrtimingc0 ddrtimingc0;
 	u32 devtodev0;
 	u32 ddrmode;
 	u32 agingx0;
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index a8100749b0..787cdc6b52 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1042,7 +1042,7 @@ static void dram_all_config(struct dram_info *dram,
 		       &ddr_msch_regs->ddrtiminga0);
 		writel(noc_timing->ddrtimingb0,
 		       &ddr_msch_regs->ddrtimingb0);
-		writel(noc_timing->ddrtimingc0,
+		writel(noc_timing->ddrtimingc0.d32,
 		       &ddr_msch_regs->ddrtimingc0);
 		writel(noc_timing->devtodev0,
 		       &ddr_msch_regs->devtodev0);
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
