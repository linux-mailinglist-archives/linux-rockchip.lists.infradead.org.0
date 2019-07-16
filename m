Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51DF56A807
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:02:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=95yDwPLb4aSP5lyb1aHxNCvL8doq9rQUCYhJwtBZplk=; b=uJxEd0WuXBpfvx
	mxsOFVkhr0cOeU+Y4f0HT8wTR0C2T0zqGl+gVkG5PZhBhDz3hOLlzd5023S2RW9l07uwIFtXHGR3a
	U8SDnXDpcJCQ2G2USSaooN08k6/KGy7TDryaW1gLdBrs7R2GEQVUdk8stGIJWZ+qnWGlPXiSKtTBj
	MCDggN1TZkAquH+yukCI7tPfC+HPOJLYl9vP8HxW0MJpRC41395S1RzOcfid4egcLC9QwDx8uZxXB
	Jv/S1dQnTz3xHU74Z4m6xshku7Ggs0znLROBojpPOdqlEbpA/FRrOhm4d+1E4D4kAIFPThvllMRAZ
	r1lkEiQ3xhsxyjG22S9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnM9f-00080m-LA; Tue, 16 Jul 2019 12:01:59 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM7e-00053p-L9
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 11:59:56 +0000
Received: by mail-pf1-x443.google.com with SMTP id t16so8995695pfe.11
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 04:59:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uemF/St7hQ0ruGO/Xb9kgNrdXpJ27IOAI3pTbvufdX4=;
 b=j3b0/r3fJIqwIJpEWJUZ3UR94SQv55eG8ceRyb6laZt6ya+EGTzE3ErNtGc/Maq9q0
 F3r2xulfi3IbVOZUJ+xtq1fn/fXXgqq3KMiQq2h1UuxNRh/uRntq/G/Y7Gks0CIPcQ/6
 DSZAGEnb6zJOMN5SkWpkGIWUGMcF07YvzSRUU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uemF/St7hQ0ruGO/Xb9kgNrdXpJ27IOAI3pTbvufdX4=;
 b=XiXhlBpi+peI8EXz1oz6WQJr52D1TzsQBNXoFJVEVLv2MFCnCsLYbvbhMJbZILEs/Q
 A+zjwcQfGhTyU9FA3lKTAB5eszk38UmzmtKflEzL6guHcFt+m45rnLPBUghO45+THlT/
 2mYDDbWom2Rz8YXKbG3hgkQymUga1BMtSKNf/uUpmEy0hfIgCvWHnysGNFXFvhbZeCCJ
 YjUZ8xAzNGotqLSakHVELTBFhr4L/0g6Hy8rCmkMi3enhqGlcL6HPvTezGh7zxUTGkIA
 Dt0TSH9v5p/9eviPfQt4hreXkQ2il5CyV9rreO8xZ1KoN6eamqIc2u9kIF3gpmQTnbog
 F8MA==
X-Gm-Message-State: APjAAAWt16bv+oYjnIiWWFPN/8HWe7vFpsTEzHqG2dG+B6i378gFu3pV
 MGlY7ROTihT2RJHJ7jBwUwcIYw==
X-Google-Smtp-Source: APXvYqyCHq9yhC5vjr4AGGJ/Avot/QTQqg8n4BT5/ppB7094ncIoaL4sD0/LwdgLPln/bPd2QmCUPA==
X-Received: by 2002:a17:90a:8d09:: with SMTP id
 c9mr36400136pjo.131.1563278394106; 
 Tue, 16 Jul 2019 04:59:54 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.04.59.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 04:59:53 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 33/57] ram: rk3399: Add IO settings
Date: Tue, 16 Jul 2019 17:27:21 +0530
Message-Id: <20190716115745.12585-34-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_045955_085703_FFD2EF9B 
X-CRM114-Status: UNSURE (   8.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

Add IO settings for dram ctl and phy.

IO settings are useful for configuring ctl, phy odt, vref,
mr5, mode select and other needed input output operations
for lpddr4 or any other dramtype sdram.

Right now, this patch added IO setting for all supported
sdram frequencies.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 104 ++++++++++++++++++++++++++++
 1 file changed, 104 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 359ab0b826..95d9f3a88b 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -80,6 +80,110 @@ struct rockchip_dmc_plat {
 	struct regmap *map;
 };
 
+struct io_setting {
+	u32 mhz;
+	u32 mr5;
+	/* dram side */
+	u32 dq_odt;
+	u32 ca_odt;
+	u32 pdds;
+	u32 dq_vref;
+	u32 ca_vref;
+	/* phy side */
+	u32 rd_odt;
+	u32 wr_dq_drv;
+	u32 wr_ca_drv;
+	u32 wr_ckcs_drv;
+	u32 rd_odt_en;
+	u32 rd_vref;
+} lpddr4_io_setting[] = {
+	{
+		50 * MHz,
+		0,
+		/* dram side */
+		0,	/* dq_odt; */
+		0,	/* ca_odt; */
+		6,	/* pdds; */
+		0x72,	/* dq_vref; */
+		0x72,	/* ca_vref; */
+		/* phy side */
+		PHY_DRV_ODT_HI_Z,	/* rd_odt; */
+		PHY_DRV_ODT_40,	/* wr_dq_drv; */
+		PHY_DRV_ODT_40,	/* wr_ca_drv; */
+		PHY_DRV_ODT_40,	/* wr_ckcs_drv; */
+		0,	/* rd_odt_en;*/
+		41,	/* rd_vref; (unit %, range 3.3% - 48.7%) */
+	},
+	{
+		600 * MHz,
+		0,
+		/* dram side */
+		1,	/* dq_odt; */
+		0,	/* ca_odt; */
+		6,	/* pdds; */
+		0x72,	/* dq_vref; */
+		0x72,	/* ca_vref; */
+		/* phy side */
+		PHY_DRV_ODT_HI_Z,	/* rd_odt; */
+		PHY_DRV_ODT_48,	/* wr_dq_drv; */
+		PHY_DRV_ODT_40,	/* wr_ca_drv; */
+		PHY_DRV_ODT_40,	/* wr_ckcs_drv; */
+		0,	/* rd_odt_en; */
+		32,	/* rd_vref; (unit %, range 3.3% - 48.7%) */
+	},
+	{
+		800 * MHz,
+		0,
+		/* dram side */
+		1,	/* dq_odt; */
+		0,	/* ca_odt; */
+		1,	/* pdds; */
+		0x72,	/* dq_vref; */
+		0x72,	/* ca_vref; */
+		/* phy side */
+		PHY_DRV_ODT_40,	/* rd_odt; */
+		PHY_DRV_ODT_48,	/* wr_dq_drv; */
+		PHY_DRV_ODT_40,	/* wr_ca_drv; */
+		PHY_DRV_ODT_40,	/* wr_ckcs_drv; */
+		1,	/* rd_odt_en; */
+		17,	/* rd_vref; (unit %, range 3.3% - 48.7%) */
+	},
+	{
+		933 * MHz,
+		0,
+		/* dram side */
+		3,	/* dq_odt; */
+		0,	/* ca_odt; */
+		6,	/* pdds; */
+		0x59,	/* dq_vref; 32% */
+		0x72,	/* ca_vref; */
+		/* phy side */
+		PHY_DRV_ODT_HI_Z,	/* rd_odt; */
+		PHY_DRV_ODT_48,	/* wr_dq_drv; */
+		PHY_DRV_ODT_40,	/* wr_ca_drv; */
+		PHY_DRV_ODT_40,	/* wr_ckcs_drv; */
+		0,	/* rd_odt_en; */
+		32,	/* rd_vref; (unit %, range 3.3% - 48.7%) */
+	},
+	{
+		1066 * MHz,
+		0,
+		/* dram side */
+		6,	/* dq_odt; */
+		0,	/* ca_odt; */
+		1,	/* pdds; */
+		0x10,	/* dq_vref; */
+		0x72,	/* ca_vref; */
+		/* phy side */
+		PHY_DRV_ODT_40,	/* rd_odt; */
+		PHY_DRV_ODT_60,	/* wr_dq_drv; */
+		PHY_DRV_ODT_40,	/* wr_ca_drv; */
+		PHY_DRV_ODT_40,	/* wr_ckcs_drv; */
+		1,	/* rd_odt_en; */
+		17,	/* rd_vref; (unit %, range 3.3% - 48.7%) */
+	},
+};
+
 static void *get_ddrc0_con(struct dram_info *dram, u8 channel)
 {
 	return (channel == 0) ? &dram->grf->ddrc0_con0 : &dram->grf->ddrc0_con1;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
