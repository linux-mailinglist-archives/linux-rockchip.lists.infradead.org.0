Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A282F3CFD8
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:56:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9EmwfDiuXSvkTRcf4XAI08kxPI1q3b8skVJ/9qEpzi4=; b=Le2z1ptItsTvzo
	cknFPYJ1H3syyDcHvL4OTqSrRfBA6nN4hG48tLnD76YOzHjJOqfJwCybVgy5r97D4ciy1ITrEWpfr
	f2V7nv+49m2MPZOo6IWT8r5ESYMgzSvP194e5jIRcIAt8EZ2Afbtqbvays6Plkc5mwFKrx7kqicH/
	NVooOzLtdk7A/jhDPalRweuWZMMI+bPmcvtOqSCmmIkqKfiBJ/7GS1Szte9LgYbj6SPgspugQ5gq/
	UFQ9k/g5jBuFt9U6LIfcE7a4/i+7mfwNGCEkqUPBF35Oy1adQgv+eSRflb4OEjZ3v+C3Oz35SjSqB
	YVmWBpNy8/3xTodr6SAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiCL-00088v-PH; Tue, 11 Jun 2019 14:56:29 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiCH-00086q-5o
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:56:26 +0000
Received: by mail-pg1-x541.google.com with SMTP id 83so7110294pgg.8
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:56:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CdKYTAWEPhUXylEOQSNrbOliIo7eTy5laKiwuvhYZ0Q=;
 b=mqkCBdj5Wj2QQa0RHalCQVdX+iV7d5OrlzzBTw9zmWvVOizPKTZlf50kEMxoc9d3Xv
 mMlN/cyMHCZDAi7Ud8+2yF7GuWldgToF+r9enCx28aMZ1wgD3soF9sUgBAiNlEzDyXvE
 bCTXb4QlN8LnqXEQ3wvseV8/ShXprPCx0vSYI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CdKYTAWEPhUXylEOQSNrbOliIo7eTy5laKiwuvhYZ0Q=;
 b=TrT9vmD3tWTpFvWnQzUtozUx/0P8aTnHlFo7h9DBiL8unjF/eSPXJmob0/38z9gTeA
 q6KNIvND9U2uyj4Doa/0RpCz3unbBMoP2eatknREOnz3B+/8Sxv/NnKNh0Rqag9a3BvM
 9MmbPOdgJESvS+DQwrmyrm5ejtLNM8BAeI//4XK9BudhX15UP48ZPcJll+UpfznTJPVk
 G7tUX6M+7m3iyhSfaDTQ+iX53eyBqyiny764DmrOyG+jY8uEmOS3tThG934LwL8g2ANy
 IQCHOGcCS4z/FJtu9PwKOtbdexv7ObD6sJ1jYb5x/N5ZLeLuVBhNNFQo5/iFC8KznvVF
 qycw==
X-Gm-Message-State: APjAAAVqi14r1W9W+Gzcwdp/2P9QYVRWai0kaLl/I5wshmNxrz9Ls8xv
 J2REB/smYP3WrLdLyYmf2pNC/g==
X-Google-Smtp-Source: APXvYqzRJrjN379LJRUnwfPcA3NvSTetibDLEguiFMpwTlskt24XEKbQ2+dNEuXNc3CnXFGhfT0XOw==
X-Received: by 2002:a17:90a:a116:: with SMTP id
 s22mr26976818pjp.51.1560264984603; 
 Tue, 11 Jun 2019 07:56:24 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.56.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:56:24 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 69/92] ram: rk3399: Don't disable dfi dram clk for lpddr4,
 rank 1
Date: Tue, 11 Jun 2019 20:21:12 +0530
Message-Id: <20190611145135.21399-70-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075625_237889_89E38EE9 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

The hardware for LPDDR4 with
- CLK0P/N connect to lower 16-bits
- CLK1P/N connect to higher 16-bits

and usually dfi dram clk is configured via CLK1P/N, so
disabling dfi dram clk will disable the CLK1P/N as well.

So, add patch to not to disable dfi dram clk for lpddr4,
with rank 1.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index a251fc6045..9151b023e2 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1233,8 +1233,18 @@ static void dram_all_config(struct dram_info *dram,
 		writel(noc_timing->ddrmode.d32,
 		       &ddr_msch_regs->ddrmode);
 
-		/* rank 1 memory clock disable (dfi_dram_clk_disable = 1) */
-		if (sdram_params->ch[channel].cap_info.rank == 1)
+		/**
+		 * rank 1 memory clock disable (dfi_dram_clk_disable = 1)
+		 *
+		 * The hardware for LPDDR4 with
+		 * - CLK0P/N connect to lower 16-bits
+		 * - CLK1P/N connect to higher 16-bits
+		 *
+		 * dfi dram clk is configured via CLK1P/N, so disabling
+		 * dfi dram clk will disable the CLK1P/N as well for lpddr4.
+		 */
+		if (sdram_params->ch[channel].cap_info.rank == 1 &&
+		    sdram_params->base.dramtype != LPDDR4)
 			setbits_le32(&dram->chan[channel].pctl->denali_ctl[276],
 				     1 << 17);
 	}
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
