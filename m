Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A782F3CF7E
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:52:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HdPo4qtIoTTnzBPQTO5FOwcD1KY4z0ha9xq0pRmgOMo=; b=cIwRajrLykDrxv
	y1zWa0mTY3uSSLsESKUDOSceKfoPVqCIZEIMtDdUHT7xJmZQVPcGf5RjUmIUZtgJGrikLlGoIoWOo
	gRY0hzgumgaK0DHDFC3IQ9EndlUF68iZlZnXAmBGfN6Wr3nv096/f/F8e/DW532vK4Eyb2DCgyJ7v
	3ud+vcuUxUOSlU/pZwP5Lxtea14GaU8POt27M/B+AAzfyvUXFDPNk2idJxKRy5gSS9JONNGMtducA
	tKMzHhNHNYjp0uDajEarDqzKQ2dbBTwsK5Ujlxb1bgSyP2t71lmyRMnZRpgH6D6GiPNbtRLSAoMYW
	Xn821/0k+mBFF+RxqZOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hai8d-0004AC-Qi; Tue, 11 Jun 2019 14:52:39 +0000
Received: from mail-pf1-x433.google.com ([2607:f8b0:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hai8a-00048q-AC
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:52:37 +0000
Received: by mail-pf1-x433.google.com with SMTP id t16so7577410pfe.11
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:52:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=k8hPse+eLaJV7/L49iRCuWgFHm8RJPmX47usVOlkDFw=;
 b=j7GcbOlCFdLhgkLf9CQ8bj8uoJxAJYnIRHKJcV7QNHrN79fxEF0yCv/y+W2JLz9zUn
 8dGWaw5WxawOHp4UHV2JJrCMQR5YIURn7C+qPaAoz/DN5fO3GhoTc7JJ8v7Q6wgsc12F
 jwqMrZU9rjQ5vjPhrE2zqINp5ZTpzptroVOFY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=k8hPse+eLaJV7/L49iRCuWgFHm8RJPmX47usVOlkDFw=;
 b=ViEP2Jbylo1QZIMKSvz4jBm+ff+9ZfCYtbg+nkaTNQ3R5GIAUUROPWLEa1Ati5wZ1i
 Qq1zZ8apA+ieQ4OZ7L0SxKePIYxmmeXix4/PN35iQr3KREXj/+VEGe4zmeO/dPIKD8rZ
 jUXv+eXYbO5Qi4SVnh5V76RMLRVpMkZcIUZlXRIaaAJ6Hk3Cu5nSCQcxETcV9wVYQa6f
 N4pz6VsASmpujG63aZ5/5mp3TlDls5ItQIii7m8JqPurGK5kgS25Pt4c9IkCLM8PZv+w
 ASmL2UVjZA337UFzg4xkDHF2paAfPPXIs4D6gMOSJcnttsdvkLiQjbJoBC0zPMTImcGR
 5wTg==
X-Gm-Message-State: APjAAAUt7jZBrt/Io/Cb0ODrl0sJ9CYhyaIHB+9YkdMCh/lKeLTU7YWN
 Cu+L6tu2oqomRRE68CfazOrUiQ==
X-Google-Smtp-Source: APXvYqx3vmo8igCaqbQ0dolg5vQBvrpvc770u28p2qt5tPnVIZb9QHdlsY30vUG+eZ/DyXtnxb8D4w==
X-Received: by 2002:aa7:90d3:: with SMTP id k19mr78440161pfk.1.1560264755423; 
 Tue, 11 Jun 2019 07:52:35 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.52.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:52:34 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 11/92] ram: rk3399: Add channel number encoder macro
Date: Tue, 11 Jun 2019 20:20:14 +0530
Message-Id: <20190611145135.21399-12-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075236_353517_9A82BB68 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:433 listed in]
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

Add simplified and meaningful macro for channel number.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_common.h | 1 +
 drivers/ram/rockchip/sdram_rk3399.c               | 3 +--
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index 83936d3679..38a8bb8642 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -35,6 +35,7 @@
 #define SYS_REG_ROW_3_4_MASK		1
 #define SYS_REG_CHINFO_SHIFT(ch)	(28 + (ch))
 #define SYS_REG_ENC_DDRTYPE(n)		((n) << 13)
+#define SYS_REG_ENC_NUM_CH(n)		(((n) - 1) << 12)
 #define SYS_REG_RANK_SHIFT(ch)		(11 + (ch) * 16)
 #define SYS_REG_RANK_MASK		1
 #define SYS_REG_COL_SHIFT(ch)		(9 + (ch) * 16)
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 69c8d53314..3d2447a24e 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1009,8 +1009,7 @@ static void dram_all_config(struct dram_info *dram,
 	unsigned int channel, idx;
 
 	sys_reg |= SYS_REG_ENC_DDRTYPE(sdram_params->base.dramtype);
-	sys_reg |= (sdram_params->base.num_channels - 1)
-		    << SYS_REG_NUM_CH_SHIFT;
+	sys_reg |= SYS_REG_ENC_NUM_CH(sdram_params->base.num_channels);
 	for (channel = 0, idx = 0;
 	     (idx < sdram_params->base.num_channels) && (channel < 2);
 	     channel++) {
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
