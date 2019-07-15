Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA91269AD7
	for <lists+linux-rockchip@lfdr.de>; Mon, 15 Jul 2019 20:29:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8uJVHr7VcqT6VB3trx08NNaavzZ3dn6s8W+si1lpzy8=; b=hbX8gpPQZG68Zt
	goUfkEw3Lo+yLrLWg+97N7D+0BuHlKWJ07whg4HxEgwuJwTO/0es0uYgN4uGj9L9Xk06syzCNtz1O
	M4/S8N9HyK0MQKRW73LoshR07TStlKIcHOXodz63yciaYTNe8pAmKiu3CZJqjLPuxc1y37+z/6+yi
	8YRyrgvNYz/t4cotgTyz4hhUKVdJnEBbgfgpOCab7i3bavUC9PQIWIp+fTYc/pFWmzQFVHUU/vYD6
	K1FvrIBgHHQpjYjBw8v6aDI9kkbgdhfwIC3o1n4zsQRJS+NJp0JNfeMMyik/1TbEp8y+8whUQtqgD
	Mz7JKTOxl1MNr5/8tXcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn5jM-00014y-60; Mon, 15 Jul 2019 18:29:44 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn5jF-00011C-5t
 for linux-rockchip@lists.infradead.org; Mon, 15 Jul 2019 18:29:39 +0000
Received: by mail-pg1-x541.google.com with SMTP id q4so8114156pgj.8
 for <linux-rockchip@lists.infradead.org>; Mon, 15 Jul 2019 11:29:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=H4/nKsiczNmGqfi/dZQpnKSiemWR24mun0ufWG0UjA4=;
 b=ETd3iRA+aWh+LipfKFbW/B8EbOhQIcSn1txlPLfeUGSavjdw9hAxYT3mdtTCBptBRu
 l1L9Y+TT//alWBC2T8+2Y1U7D6wNeCx07CLhnLXD2aaQDLzI+o3ww8oSIutE6xS3vmKv
 Y4Rnd6hNKqE0taj4QrYsI9H+zhlMYhfGDFpEM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=H4/nKsiczNmGqfi/dZQpnKSiemWR24mun0ufWG0UjA4=;
 b=nalbYGWa3vz9hraM0zZ0kx7X70oxGMoObhud7RbhvxppziE+DfyDZW9X/+XMH7/6i+
 JLZbTxwPAecXxCf7gD27nv7xcO7tcNHFjGgjmWhtNf3Zwxa2FlBbZbkOLukUNfYOdXJP
 UHRI72vCUNx384t3ZaNUE/NqPH0sHe/seKYK77zUVWICyl6WlLnqJOQCKr9JN3xQU0Qw
 w8dvzBGZ8WzVsSAR5WxzdrB5ZU6askxo3q7CeC+trqOSaEtVYDfoJ7KbD+OsSinga1pt
 5Ls2bZwvt7GG2BrkzM4F1m79QVR2g3D73K1ffhbsw3T1Ggdkav1fD56usNkY30kGwXP8
 IYbA==
X-Gm-Message-State: APjAAAV6Z2SOrO5Rt7wogwRas//L6Mo2yMoeslXBO85qB45CDfKu3tGr
 Ml22NYSokRbqqpMflE+H+unsgw==
X-Google-Smtp-Source: APXvYqx1X+xlccTe2GWoOeTgYnVdkP9gk3SN7kv/KaNFULXp0eETUrCzmTNKJnem68px3tyDZhBCQw==
X-Received: by 2002:a17:90a:ac14:: with SMTP id
 o20mr31168937pjq.114.1563215376573; 
 Mon, 15 Jul 2019 11:29:36 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id y133sm20250075pfb.28.2019.07.15.11.29.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 11:29:36 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 08/18] ram: rockchip: Add initial Kconfig
Date: Mon, 15 Jul 2019 23:58:46 +0530
Message-Id: <20190715182856.21688-9-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190715182856.21688-1-jagan@amarulasolutions.com>
References: <20190715182856.21688-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_112937_326402_F86765A5 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Right now sdram drivers in rockchip SoC are built based
on the SoC configs which may not be an adequate solutions
while adding common or debug driver.

So, add meaningful Kconfig options start with rk3399.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/ram/Kconfig           |  1 +
 drivers/ram/rockchip/Kconfig  | 17 +++++++++++++++++
 drivers/ram/rockchip/Makefile |  2 +-
 3 files changed, 19 insertions(+), 1 deletion(-)
 create mode 100644 drivers/ram/rockchip/Kconfig

diff --git a/drivers/ram/Kconfig b/drivers/ram/Kconfig
index fbf7d7b20f..568d8f2c6a 100644
--- a/drivers/ram/Kconfig
+++ b/drivers/ram/Kconfig
@@ -54,4 +54,5 @@ config K3_AM654_DDRSS
 	  config add support for the initialization of the external
 	  SDRAM devices connected to DDR subsystem.
 
+source "drivers/ram/rockchip/Kconfig"
 source "drivers/ram/stm32mp1/Kconfig"
diff --git a/drivers/ram/rockchip/Kconfig b/drivers/ram/rockchip/Kconfig
new file mode 100644
index 0000000000..995cb487b8
--- /dev/null
+++ b/drivers/ram/rockchip/Kconfig
@@ -0,0 +1,17 @@
+config RAM_ROCKCHIP
+	bool "Ram drivers support for Rockchip SoCs"
+	depends on RAM && ARCH_ROCKCHIP
+	default y
+	help
+	  This enables support for ram drivers Rockchip SoCs.
+
+if RAM_ROCKCHIP
+
+config RAM_RK3399
+	bool "Ram driver for Rockchip RK3399"
+	default ROCKCHIP_RK3399
+	help
+	  This enables ram drivers support for the platforms based on
+	  Rockchip RK3399 SoC.
+
+endif # RAM_ROCKCHIP
diff --git a/drivers/ram/rockchip/Makefile b/drivers/ram/rockchip/Makefile
index 5df196066d..07d4b62a9d 100644
--- a/drivers/ram/rockchip/Makefile
+++ b/drivers/ram/rockchip/Makefile
@@ -9,4 +9,4 @@ obj-$(CONFIG_ROCKCHIP_RK3188) = sdram_rk3188.o
 obj-$(CONFIG_ROCKCHIP_RK322X) = sdram_rk322x.o
 obj-$(CONFIG_ROCKCHIP_RK3288) = sdram_rk3288.o
 obj-$(CONFIG_ROCKCHIP_RK3328) = sdram_rk3328.o
-obj-$(CONFIG_ROCKCHIP_RK3399) = sdram_rk3399.o
+obj-$(CONFIG_RAM_RK3399) += sdram_rk3399.o
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
