Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 933913CF79
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:52:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cXpbNjmVRIo5PbDj8O0wiizz3fEc4yzyw5QkWLmEpgw=; b=BuiK83YeLoifPW
	GMBLWg2Bm/4SaWKf3DVHtEz8zwKSCfTZRqxlqPDkAJ1WTRZeBS/cG4I7ubuZ3c+oT2ONyAHYMq3c7
	8RSnqiVD8lhCeLNAsQM0vkN+1nwp5FPnnUw5DfMuf7nhqSI9+4rywPY1uGCFERauj97y0aK0nrUgA
	buwJ536eOq7y2sKkeru/dmt26QmUR9T8y+xgtx8h9vHssKjmz97qJ9ktL6dS5xRiArZqRLYS6InZJ
	GHik9THmvbMgBZtdlXhnxI2JBNF1+jFuPJyjwO104FENkwnOcivWnNuejHDC2j8S+kiaZD01GvIxP
	y+uCX0D1qKxoXEE1Zkjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hai8J-0003wq-LG; Tue, 11 Jun 2019 14:52:19 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hai8F-0003ux-Sp
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:52:17 +0000
Received: by mail-pl1-x642.google.com with SMTP id a93so5230321pla.7
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:52:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=416UtQ09ISedrXNdgRAuAno3xaTmzQf/73rYHpXBdI8=;
 b=K4W2f0HHIay053wT3gCX001cfDTCel75DrAilsPmIW3xhU3mBivZWufeKq2/yuu0I0
 inb6HPl5pLQ1ZiuKQX+DSXEYILQu7AUu2UOpD3at2O0Voh70OBndLMZHxZnHhIIuonav
 OGiYSm1yA0SmlOQQYAxDsp47y8k+VUEYBN4vg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=416UtQ09ISedrXNdgRAuAno3xaTmzQf/73rYHpXBdI8=;
 b=jeBYs4Gtru4I1/u/hj+R1OBtu8mYUJF897RAB5t4DZ7SPwPxW20emH4mi1mXH+le0l
 e+LVhmBladIzYGob4TTSVCJT1V6w2Q3/2kPUI2CoZ/ztPVBXDro4TS+vy3jIcD5Qq0ah
 n0nn1BXdE2vIrJZZ1iVkGK5eQ4ermKweXgFamK4uXin+jXUTYSYqAShwFYgCq4ajEmQC
 lmrmUapIDN3RUsQqOJj5+ohCTlqXBZCzqcYUcSx82o1A4OZ/zc9kGlAzfw8cjoTFmSiY
 aEzY/aD+X5H/yncmzDZdaZ6eildn1oYRib56/LW9WGjYEn8kRrQSXUK/cDr2r4jvrbmf
 ujmQ==
X-Gm-Message-State: APjAAAUE5OmY7a9f2CFD8F+lFADAMNMDUk+impgoi59HSvFVpm9Lq604
 bS+ghYmdPmnvwZ/BANXtFcnrZj8/eWw=
X-Google-Smtp-Source: APXvYqzcMas3ZzDsWX7iCG8atsYU9jeayxR5QFlbt4ExeG/QJrJssuwO3IB5ytNjN5CvLE3M5TvHCA==
X-Received: by 2002:a17:902:341:: with SMTP id
 59mr22818264pld.20.1560264735270; 
 Tue, 11 Jun 2019 07:52:15 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.52.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:52:14 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 06/92] ram: rk3399: Move macro after include files
Date: Tue, 11 Jun 2019 20:20:09 +0530
Message-Id: <20190611145135.21399-7-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075216_077033_4D980495 
X-CRM114-Status: UNSURE (   7.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, gajjar04akash@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Move the macro definitions after include files for better
code readability and to satisfy coding style.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 26 +++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index da04b11922..52633166c1 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -22,6 +22,19 @@
 #include <linux/err.h>
 #include <time.h>
 
+#define PRESET_SGRF_HOLD(n)	((0x1 << (6 + 16)) | ((n) << 6))
+#define PRESET_GPIO0_HOLD(n)	((0x1 << (7 + 16)) | ((n) << 7))
+#define PRESET_GPIO1_HOLD(n)	((0x1 << (8 + 16)) | ((n) << 8))
+
+#define PHY_DRV_ODT_HI_Z	0x0
+#define PHY_DRV_ODT_240		0x1
+#define PHY_DRV_ODT_120		0x8
+#define PHY_DRV_ODT_80		0x9
+#define PHY_DRV_ODT_60		0xc
+#define PHY_DRV_ODT_48		0xd
+#define PHY_DRV_ODT_40		0xe
+#define PHY_DRV_ODT_34_3	0xf
+
 struct chan_info {
 	struct rk3399_ddr_pctl_regs *pctl;
 	struct rk3399_ddr_pi_regs *pi;
@@ -43,19 +56,6 @@ struct dram_info {
 	struct rk3399_pmugrf_regs *pmugrf;
 };
 
-#define PRESET_SGRF_HOLD(n)	((0x1 << (6 + 16)) | ((n) << 6))
-#define PRESET_GPIO0_HOLD(n)	((0x1 << (7 + 16)) | ((n) << 7))
-#define PRESET_GPIO1_HOLD(n)	((0x1 << (8 + 16)) | ((n) << 8))
-
-#define PHY_DRV_ODT_HI_Z	0x0
-#define PHY_DRV_ODT_240		0x1
-#define PHY_DRV_ODT_120		0x8
-#define PHY_DRV_ODT_80		0x9
-#define PHY_DRV_ODT_60		0xc
-#define PHY_DRV_ODT_48		0xd
-#define PHY_DRV_ODT_40		0xe
-#define PHY_DRV_ODT_34_3	0xf
-
 #if defined(CONFIG_TPL_BUILD) || \
 	(!defined(CONFIG_TPL) && defined(CONFIG_SPL_BUILD))
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
