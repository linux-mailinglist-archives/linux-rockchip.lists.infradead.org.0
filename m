Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA24F47B11
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:36:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x37ezkhqcxecvDGwuCJ4GkEnlsmEBvJboL8t6ZujlSE=; b=XKhY9+z93biNTD
	HbRH2OKL6rDtYZaIFFtmPp6qXoKVJDlovpiK7prJn2Iy5NkeI/2KvdwIM9tTjCG909IZuzpXmMD0G
	Ts/2mAxpliEnJhAH4od0wMAYWde9JkRNX7lCI18JecP0p0oHF4ABOPy6a9R8x9LEXs2do4Fo4AiGT
	xzZOsRQgil0JnrSRxW5hHtpzhE7CLNtnqV1cOVcn7JjGr/Bi1GHrKHMNAjtqw5Sq7C3zvZxQGaAin
	KGoj8JF1a4+9wlRMWrgfqBmUwl6zkLBO8fVgpLITGBqXG4WOoQ1wWZxy0YdF+1f5fpDyKwDdgkDBz
	7/ycfGcNZWNf5p+WaZWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmC9-0005Jd-Kk; Mon, 17 Jun 2019 07:36:49 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmC4-0005Gs-MI
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:36:46 +0000
Received: by mail-pg1-x544.google.com with SMTP id v9so5283975pgr.13
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:36:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LMKxiuvAOryuoILHVyH5XgsTExftYqEOkhz0pjdExb8=;
 b=aJs5q9wtzR7m5rHrDbmlPh6SOIP3MfW+4IwO5DdtgoLHQnxJ5Dgrc84ZZyGH1Jbvom
 9sKZyWXghe2GFh2FAy0tmB7M8iZYF7MVA54oai+VO0lTZiOuZinp8qwss0lZk0ci5OvB
 EwFQeqdb4mue0UKmjdpYUI6PLSlBqoc9aUx20=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LMKxiuvAOryuoILHVyH5XgsTExftYqEOkhz0pjdExb8=;
 b=JmQfoJkXO7Oxn4R67SYpwEOeVojmmxsqwEhbVPGb0BOenNHCp66oGY5TxJXd5hFSWV
 2BjulYTJw7s3/txrWIrtVKimneX3R/k8solGOm8YegKCoApFpVATo1mpahjUlub3tQ+f
 TprpEVA4QhHCl5I2FUautmQ4GeaE2DaiEUf+b7yWlns0gT/qnTAru+iHW+3hjYVLVuzG
 lJ3qZH1M05ikTPhtCSt0klshAx/ks6RGHRssDTpq9UpAntfwxMrXPCi5UcP4aF5lKkYR
 DVaJfuJiuKnCqk/9exeHc4M45EvdLGBObeehafkmXzyzu0+FcuuG02brcGkRbdv5YhdS
 mhaQ==
X-Gm-Message-State: APjAAAUBmOQXzAk0jlKzLmXXHQSKgGajYnH/YzkyqiocxHSBrU/Gid6n
 ZMGQyREk5pCAnbcHBiEA94CAVw==
X-Google-Smtp-Source: APXvYqzIxJHI5E7yUl5fjceQ4JBEzEQaH7xIoXEUmDTWXslKJe8lsguKiducEEmnw+9TKrUS+ZCoLA==
X-Received: by 2002:a63:e250:: with SMTP id y16mr46691465pgj.392.1560757004086; 
 Mon, 17 Jun 2019 00:36:44 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.36.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:36:43 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 07/99] ram: rk3399: Move macro after include files
Date: Mon, 17 Jun 2019 13:01:20 +0530
Message-Id: <20190617073252.27810-8-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003644_761584_4DDB07C7 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
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

Move the macro definitions after include files for better
code readability and to satisfy coding style.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 26 +++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index e6f52c9f59..20a3e89c17 100644
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
