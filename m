Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A68B69AB3
	for <lists+linux-rockchip@lfdr.de>; Mon, 15 Jul 2019 20:21:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lm2H+egY0rbsY0DrXpQvkqg16R0XHUo+m8zolx+0PgY=; b=eA6qgLldN977c7
	2C4B8amDQKAISc2Y7+AE8viyCFlt1ofkW2H/0uxu9VZ7Cfx2V8nKuf3Nw2X6aE1GRuccYJsx6uXxA
	mFKkOYjpdLPFw1nhUQc+8nPcfIITIjhYN60jNCrt7hFDlmCeo/ui8tTabiOQvTtjghsC5jW8fleGv
	LvvMDO1qKERN6qNoN2qIhdLrBI4qcE/nWwGDoIQP71LyZTKnDWtCOrTPsbPS1dJyodaj9/71EkCHJ
	jVfftrF1mKAe/nd3DZK8Y24yMHDHm4Y9K7ZS+9HwMKWxTFoG8Mq+VlPcpjjGuW+42p8XPZ9TxEJ75
	SM5ly2k0eposz+jeqHLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn5ba-0006rg-4E; Mon, 15 Jul 2019 18:21:42 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn5bT-0006mb-OM
 for linux-rockchip@lists.infradead.org; Mon, 15 Jul 2019 18:21:37 +0000
Received: by mail-pf1-x443.google.com with SMTP id f17so3816270pfn.6
 for <linux-rockchip@lists.infradead.org>; Mon, 15 Jul 2019 11:21:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wtH+L++PhkK0wx6pSCUYJbZO6pOG2ERf3vcIuQe4X5s=;
 b=hQY2ym+H1XKJ1Wnq0PwWVIS9Xl9vPViycQ4PooTAopDlM/3kUswTbTks7/6CkDyPUC
 Hd2hz30zXfEFTJhLn9Ft3hJhZyQ7oeUq/zo/EhXvxlwKs09OokMKaQnvI+ESXddMqmq8
 JWe0oVrmDBrGKRfD1Om8TKNehwmlbvrEBLtVk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wtH+L++PhkK0wx6pSCUYJbZO6pOG2ERf3vcIuQe4X5s=;
 b=h6v7zOODrHXbiIZCocAk4dcWHPxoeJnq+prEBHFBmgSikeOp5dCI2YNU20b7DzQR1G
 NREwMF+TxodwNI9E9hCgh7cEYpNhuOeKcxYk8JNNnrSEa/ly0fswwO/Gegi06HL3ikYc
 2F0nRHeILDsEVTOYpb8tXhEhkptHXs+0A69h93SPa5LxjX6reWbY+rHxID0O3fRUmipC
 emtW77Emv+zXOvW4JQL9Fdt3VNo0VsUgMa9bp+NnKIwrlT7fP70iMWnyQu71RqkhiV/o
 xH0j+U1CDpXutHG2Sj4vPbF9EVinKvhuuzL0TU3rFtGtYCMCvuCo+qsTsMtXuwkIvL/I
 LM5A==
X-Gm-Message-State: APjAAAWx5uukEIyhyP0xqyDshu6NZnhzISrNqLaJzYPM9kNToVpFpD+w
 GxTEvdxUQzK8PD24eGh7uVM9ft2YZQZ1rQ==
X-Google-Smtp-Source: APXvYqz9SmiPCjhDaJ66e3eNzEEkgGBqq+W48Y9UIctpiGPlz9eP6V9LBJx9ME98AEUkugUJu7KnFA==
X-Received: by 2002:a63:d448:: with SMTP id i8mr9006870pgj.173.1563214894885; 
 Mon, 15 Jul 2019 11:21:34 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id l15sm18152405pgf.5.2019.07.15.11.21.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 11:21:34 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 04/15] ram: rk3399: Handle pctl_cfg return type
Date: Mon, 15 Jul 2019 23:50:59 +0530
Message-Id: <20190715182110.21336-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190715182110.21336-1-jagan@amarulasolutions.com>
References: <20190715182110.21336-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_112135_803535_78D97B62 
X-CRM114-Status: GOOD (  11.69  )
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

Add proper return type handling of pctl_cfg with
meaningful print statement.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index c918c2e588..de5d8c1b5f 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1063,6 +1063,7 @@ static int sdram_init(struct dram_info *dram,
 	unsigned char dramtype = params->base.dramtype;
 	unsigned int ddr_freq = params->base.ddr_freq;
 	int channel;
+	int ret;
 
 	debug("Starting SDRAM initialization...\n");
 
@@ -1082,9 +1083,10 @@ static int sdram_init(struct dram_info *dram,
 		if (channel >= params->base.num_channels)
 			continue;
 
-		if (pctl_cfg(chan, channel, params) != 0) {
-			printf("pctl_cfg fail, reset\n");
-			return -EIO;
+		ret = pctl_cfg(chan, channel, params);
+		if (ret < 0) {
+			printf("%s: pctl config failed\n", __func__);
+			return ret;
 		}
 
 		/* LPDDR2/LPDDR3 need to wait DAI complete, max 10us */
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
