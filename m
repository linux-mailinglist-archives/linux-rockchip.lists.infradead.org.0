Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4476E47B4B
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:39:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z8vUTrk08YHNl98R/qKqWnYo6CoC/BvzvHrM8CkUaWQ=; b=gNsQwrbgUXGbr0
	/zufc4RSWxJ6Y82YHK32s/E3HH1B/UTcq1xutB/Zmh1i+X53t67IPfq4nSP2PE8gSXYcZBZ3azfnP
	r8CWXMUnb/I5iTnuOJOY2f0vkwbh8yVDW4QT/Y1dUHv5xfqEv/S9lqVrFjuI2GqELhV0pPqN32P0L
	6LmlhbdneBlmqoPxRqGgW9ExFIzkmS9jGgb41IUwH1eHRZq2tpbyj8KDPbWHM+byessuR23PORLQw
	yWF9DIWQaSgrb8KBGTta/sgJD1iYQyoY9QJcv80N7k81d7t1kZHJo1xK1SHBpSzZ4Hvp4DrQbLTsx
	FR2Xea9taN5ubxH3CiZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmEK-0007Uv-Sq; Mon, 17 Jun 2019 07:39:04 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmEB-0007KW-9H
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:38:56 +0000
Received: by mail-pl1-x642.google.com with SMTP id i2so3737936plt.1
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:38:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ncKf50fiEnrptfCgQksAHfGfZ7rEjc6rzKjfXMV54Nc=;
 b=hoy6oM4QomDmt9QCPxwOmas8j7OwGPxNSEHu7v3L/zTnFzRovprX5ywqbuo6Xlqafj
 M2dJr9EsI7dPXqJXr7Y3UfHIi0wtPuLnwwLhWIzDQtF02f8In3K9RmM+2Q2LdaSPnvhI
 w6LJbmUpG6bvkRUgQaFegSKg/BkkHCI7UeZMY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ncKf50fiEnrptfCgQksAHfGfZ7rEjc6rzKjfXMV54Nc=;
 b=CrQlaoisJB2RD3DTw5lQ7gcMXqf6SnQ12bYDf409hbtreZD+dhlnGh2odjd5cQIYjs
 8eFClVKQ0NhqsVoyqKAvE/rUDsriaiTVZcvSZswdZpQAANP6dBEtqIb4SguWuCUTCY4j
 x8fVImGE3gBnXUNeNvhyLLGszf8YJDel9jthHwsANt3F6Jip28aND5/XnrfBtt56uGkS
 FSU/TyC2XGtPHXfN/54NQDeSf72GQV0ym/u9MidZapEUfFFgaI1iU24s01ea0YdvHkpX
 VxxuFOMRs4KF0/w9Va3QgBTu6IG2gRYzV/MpjBpdaGkle2Qqfha1NtSo/ZUlrhqWCamq
 OtxA==
X-Gm-Message-State: APjAAAVcTESPvK9FiuZixgaEXc0S6y30tCT+I5gMSJcv/fdmFpgP46/c
 j+XfPIe9ws4nrxhZH7Rm09WRGw==
X-Google-Smtp-Source: APXvYqxFxF6Ldr6SHUOLuTvrJIHGjKJWCjLfpYiZkgSLLDM7F8JYvl+vVkienZVXTjBUC2HRx4Pmmg==
X-Received: by 2002:a17:902:bc43:: with SMTP id
 t3mr40057849plz.250.1560757134577; 
 Mon, 17 Jun 2019 00:38:54 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.38.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:38:54 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 46/99] ram: rockchip: debug: Add sdram_print_ddr_info
Date: Mon, 17 Jun 2019 13:01:59 +0530
Message-Id: <20190617073252.27810-47-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003855_403794_6B5EF7EC 
X-CRM114-Status: UNSURE (   9.23  )
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

Add sdram ddr info print support, this would help to
observe the sdram base parameters.

Here is sample print on LPDDR4, 50MHz channel 0
BW=32 Col=10 Bk=8 CS0 Row=15 CS1 Row=15 CS=2 Die BW=16

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 .../include/asm/arch-rockchip/sdram_common.h  |  7 ++++
 drivers/ram/rockchip/sdram_debug.c            | 40 +++++++++++++++++++
 2 files changed, 47 insertions(+)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index 0cb737d665..7d1372f033 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -128,8 +128,15 @@ int dram_init(void);
 inline void sdram_print_dram_type(unsigned char dramtype)
 {
 }
+
+inline void sdram_print_ddr_info(struct sdram_cap_info *cap_info,
+				 struct sdram_base_params *base)
+{
+}
 #else
 void sdram_print_dram_type(unsigned char dramtype);
+void sdram_print_ddr_info(struct sdram_cap_info *cap_info,
+			  struct sdram_base_params *base);
 #endif /* CONFIG_RAM_ROCKCHIP_DEBUG */
 
 #endif
diff --git a/drivers/ram/rockchip/sdram_debug.c b/drivers/ram/rockchip/sdram_debug.c
index c13e140fa5..69a6f94a73 100644
--- a/drivers/ram/rockchip/sdram_debug.c
+++ b/drivers/ram/rockchip/sdram_debug.c
@@ -32,3 +32,43 @@ void sdram_print_dram_type(unsigned char dramtype)
 		break;
 	}
 }
+
+void sdram_print_ddr_info(struct sdram_cap_info *cap_info,
+			  struct sdram_base_params *base)
+{
+	u32 bg;
+
+	bg = (cap_info->dbw == 0) ? 2 : 1;
+
+	sdram_print_dram_type(base->dramtype);
+
+	printascii(", ");
+	printdec(base->ddr_freq);
+	printascii("MHz\n");
+
+	printascii("BW=");
+	printdec(8 << cap_info->bw);
+
+	printascii(" Col=");
+	printdec(cap_info->col);
+
+	printascii(" Bk=");
+	printdec(0x1 << cap_info->bk);
+	if (base->dramtype == DDR4) {
+		printascii(" BG=");
+		printdec(1 << bg);
+	}
+
+	printascii(" CS0 Row=");
+	printdec(cap_info->cs0_row);
+	if (cap_info->rank > 1) {
+		printascii(" CS1 Row=");
+		printdec(cap_info->cs1_row);
+	}
+
+	printascii(" CS=");
+	printdec(cap_info->rank);
+
+	printascii(" Die BW=");
+	printdec(8 << cap_info->dbw);
+}
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
