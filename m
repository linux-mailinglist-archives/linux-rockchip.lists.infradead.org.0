Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D7F47B48
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:39:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8uJVHr7VcqT6VB3trx08NNaavzZ3dn6s8W+si1lpzy8=; b=aB5p8OSy5uPPxN
	MFR8VVUhLqO1CCbZL3Pqc2Vz6jYYesqKr353gnc5i9nnnRYv3z7Y7WefdTVAmzxKGrfQ9/CKVui7O
	KJdCmDUK1K8kRGdQKKomcYCqjsZTb3jRjfF+ADrT5Vsow+XSu4lJBxcI0oaR/A2JmZ21kvUxRKjVe
	TPymDF7DPZFB6526bseHCFlpIbfmSUexQcHxaAbLdtDRNXqU+hWUaB5UvsdcCnYaAP8KR3p/Z4HYX
	wk4i6jC+eEQEc4ZtXmo9rzVcT12C5SDJ2RIRInv2WEU7lizgTEeMKsLUW4kUZEr751ec8AcFImNhT
	dCNLGp1tsEZC50tp3daw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmEC-0007IT-Qq; Mon, 17 Jun 2019 07:38:56 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmE1-00074e-3a
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:38:46 +0000
Received: by mail-pf1-x442.google.com with SMTP id 19so5197190pfa.4
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:38:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=H4/nKsiczNmGqfi/dZQpnKSiemWR24mun0ufWG0UjA4=;
 b=MhdCF+McQqyfqinWsL7MN8IrevpOftCgFPc5uAzKfEhB7Vfjua+1d4e5dkbjb37OhB
 h2yOxdPnYBlB9Li15yNeqHdnJibchOgwFz5XYXAkIZHh0v0vTOrVcgosNExkDjpgp8rl
 1KD03k6GLccNKUtKL/vxv361wqg+3Gb48SPVA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=H4/nKsiczNmGqfi/dZQpnKSiemWR24mun0ufWG0UjA4=;
 b=qwfQk2MoNgmReJa2ZE+Yvrn0aCr6aR0vy7VKmc8Hs95VbSj+TMa83hO7hM2nOXSr+5
 178YNiCnjCXjQIOxqqc5+ifflCe5a3HrGjKeXEKDPbSY2pCC9RrgLOpy5qMmA1P4ehqe
 McpdafcwLofzo9RgPJc5+071EoZOLq0+9N34LAMOU7JQsiuuRYdDsog9rcf95cIbpisn
 HSth7Ow/iWEMyOKTzPhYfrBYK5vPLc4AVyRmOaXTafPEFDFLtVyPB6Qqk/neS/urLq5W
 6+7RQAqW3OyrGLlrX+ex8KylGfsBoNMRGRX8IOlBQ6/dg+IM1YuNaGjuf6r8GpBDHnMN
 Uq2g==
X-Gm-Message-State: APjAAAUcJe2pNBdIUh21hkmb+cjphYXQCrm6KF+Yh0u2byW+oPxJkaOQ
 jBGW32Wx+oiaGXFgBGlFKVcf5w==
X-Google-Smtp-Source: APXvYqx6M2pSGFvMaiaWhWc7B1dzGd+5RZFdgBifUb5Gr4A5wtez503pXtX36phEJ5HzO9Z/fXk1Fg==
X-Received: by 2002:a63:454a:: with SMTP id u10mr45538452pgk.291.1560757124516; 
 Mon, 17 Jun 2019 00:38:44 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.38.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:38:44 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 43/99] ram: rockchip: Add initial Kconfig
Date: Mon, 17 Jun 2019 13:01:56 +0530
Message-Id: <20190617073252.27810-44-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003845_187995_9B8A0B8F 
X-CRM114-Status: GOOD (  13.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
