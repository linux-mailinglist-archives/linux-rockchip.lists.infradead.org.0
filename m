Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9DC16A81C
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:02:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XtWoDP+EFVx+OKouTNzt3w33s18Y9/2TcpPjuOSSCYo=; b=T6MW4v+CN6IqtN
	RVw4Nr6yrC5zIN4Tfeqhsz2dD87Tegn/1rqnJMRgKGeHQoAn57Ns53o4nCmJik4l2QSiYS8f2EvdH
	F7LtuSEdSOgWgFy5qEHvYgUrla0hziPrUu+gRLKaBgCNjpUA08LOxYbE1jwUeitA6y+eT2OeZjNVA
	sv85EIGfCR0xWI/SJmOMhpP7k8NwGgSn7NLLM9Bk+FEzjsYD7/bSKJ3qsTW7EIdmlwJIB9kd5k+w0
	wR2MMKO4W2ByOwH0h7Z7R0hk+EhojeBnW8ufcT5iC4+KyhopvMbtwzItB+2wwKWqUs9IJ8iIHk2cn
	wGqazqrxWNFtIZzAxiRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnMAP-0000FE-AG; Tue, 16 Jul 2019 12:02:45 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM8h-00075R-MX
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 12:01:01 +0000
Received: by mail-pf1-x442.google.com with SMTP id r7so9018472pfl.3
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 05:00:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tLU23iC3mbZxkYNZeu/wIpO3JnN1O59AxLAw5YnqE/U=;
 b=di7gqCHbGhi/zS1uY01ze9iUubTRINxTXqE3y0SDT6MUqh6ZICkyGO2S9ykvl4zI+8
 e+OChOZfmG/p9L2DIS3+P+vBhArN2hRCGtWlikLZefdmrtR1Ol7v1uIwdWoNKCZJXxfX
 gPqeHFl8UJEu6cqrvRJzJHgvixglZvg97UYq8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tLU23iC3mbZxkYNZeu/wIpO3JnN1O59AxLAw5YnqE/U=;
 b=WvMpUqWI43KADshUbiOs/JpfSQ+zr18FwCTyTt61tOpydIZtB0xcl2YMfTHjd6hy7t
 F6VjY3eHXDq++SDUH2n118asXljzO/LOvIzl/r+wxqxXDZAhdxhD2xv9I8GuZ3HObZFZ
 cE3lpTGJ9jZ2063O2NblD8dfsv3FxeEFP8YwqXndLovpJxnR2GLJMxW/pSuuH3Hv8dcr
 GuBUzU1FRMgdhS671e0Kp4ru6A/SKL0DHwb/6UtlIa0ngmAgVNYWR/D52p2bWNpCg3dV
 fJH1hG3vTpnknvViVZ3K2OtfjJ5VJdXvb1/B53chJ0bAlzU4fRwMis/R/D1NllJQDKnt
 QNaw==
X-Gm-Message-State: APjAAAUSzO1cy3RdB01+829BPXRQ2bDNceq96jntZ9LGAaOArZurKX5R
 axJ1pPsE72htDWVqtESFGZBbTg==
X-Google-Smtp-Source: APXvYqwtXNg2GS/4hyKLKEI390eRvinkr+noEmBktjXeB/w7AWGvyLvhvCDi1g8AUKCjlBQk9L1azg==
X-Received: by 2002:a17:90a:fa07:: with SMTP id
 cm7mr34723259pjb.138.1563278459147; 
 Tue, 16 Jul 2019 05:00:59 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.05.00.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 05:00:58 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 51/57] ram: rk3399: Add set_rate sdram rk3399 ops
Date: Tue, 16 Jul 2019 17:27:39 +0530
Message-Id: <20190716115745.12585-52-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_050100_119594_CF197D00 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

DDR set rate can be even required for lpddr4 and we
need to keep the lpddr4 code to compile only for relevant
boards which do support lpddr4.

For this requirement, and for code readability handle
data training via sdram_rk3399_ops with .set_rate and
same will update in future while supporting lpddr4 code.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 623685e3c5..c3d7665ea2 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -74,6 +74,8 @@ struct dram_info {
 struct sdram_rk3399_ops {
 	int (*data_training)(struct dram_info *dram, u32 channel, u8 rank,
 			     struct rk3399_sdram_params *sdram);
+	int (*set_rate)(struct dram_info *dram,
+			const struct rk3399_sdram_params *params);
 };
 
 #if defined(CONFIG_TPL_BUILD) || \
@@ -948,6 +950,7 @@ static int pctl_cfg(struct dram_info *dram, const struct chan_info *chan,
 	return 0;
 }
 
+#if !defined(CONFIG_RAM_RK3399_LPDDR4)
 static void select_per_cs_training_index(const struct chan_info *chan,
 					 u32 rank)
 {
@@ -1368,6 +1371,7 @@ static int data_training(struct dram_info *dram, u32 channel,
 
 	return 0;
 }
+#endif
 
 static void set_ddrconfig(const struct chan_info *chan,
 			  const struct rk3399_sdram_params *params,
@@ -1487,7 +1491,6 @@ static int default_data_training(struct dram_info *dram, u32 channel, u8 rank,
 
 	return data_training(dram, channel, params, training_flag);
 }
-#endif
 
 static int switch_to_phy_index1(struct dram_info *dram,
 				const struct rk3399_sdram_params *params)
@@ -1534,7 +1537,8 @@ static int switch_to_phy_index1(struct dram_info *dram,
 	return 0;
 }
 
-#if defined(CONFIG_RAM_RK3399_LPDDR4)
+#else
+
 static u32 get_ddr_stride(struct rk3399_pmusgrf_regs *pmusgrf)
 {
 	return ((readl(&pmusgrf->soc_con4) >> 10) & 0x1F);
@@ -1938,7 +1942,7 @@ static int sdram_init(struct dram_info *dram,
 
 	params->base.stride = calculate_stride(params);
 	dram_all_config(dram, params);
-	switch_to_phy_index1(dram, params);
+	dram->ops->set_rate(dram, params);
 
 	debug("Finish SDRAM initialization...\n");
 	return 0;
@@ -1986,6 +1990,7 @@ static int conv_of_platdata(struct udevice *dev)
 static const struct sdram_rk3399_ops rk3399_ops = {
 #if !defined(CONFIG_RAM_RK3399_LPDDR4)
 	.data_training = default_data_training,
+	.set_rate = switch_to_phy_index1,
 #else
 	.data_training = lpddr4_mr_detect,
 #endif
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
