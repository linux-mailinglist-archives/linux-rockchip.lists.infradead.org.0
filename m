Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8130A3CF90
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:53:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=laa1uszeULsb9zitr1/FqSzrgJB9p/1PaXHRlsPUeoY=; b=tz1jhu9jm7vVI4
	+YFtpa0qBkQNW/7C9/8Q1ys6rOyDdd5s0OWJwMPQ2ZSGcuqxYO27/U6AxX1/1b98fzVaJ3lmmk7Q/
	Rp42wimCahbUeP4pwq04mEUVa0k7STnJNLtCz4UOFTi2w7VvCtGmgWUr2HnL5xTW92LxZf86TOL8x
	jYD0WWHauDPK6rDjR2oSSbQvS0sGOoMZKyaI1LWjq2UhO6lkUxVYDrZik1GSbdoI0jRFXAf+aqhhD
	Fd0HW91SSoxw/dUjqLHJHlb18ECUhtG1PoHAIik9HaGrqL303caerEgTzUYE9WJB9ZIoREVe/QSnM
	lW5+V9t2Kt14B1Jxd69Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hai9j-0004zM-OO; Tue, 11 Jun 2019 14:53:47 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hai9f-0004xJ-Q5
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:53:45 +0000
Received: by mail-pl1-x643.google.com with SMTP id e5so5222102pls.13
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:53:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rAuLjhYGsqoY1vVGPKew7EBTf/gbRxPk/ChOgOW0AfY=;
 b=KMGmhSktzuAwQxzN94ULtZ7qcEWW6jKFoZIl2z8lx3WPFlyFq7E7v0kxmU4PCQ4xbs
 Kg96A92+UhoI7vsI6sopnUKCJE4O1/d2Af5O46Vo6Myx9qOl9ZBX23f5cS5xUmefctn7
 OOLVuw7AgFM7uh1NkiYoy95KVFbEJjlxQehFE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rAuLjhYGsqoY1vVGPKew7EBTf/gbRxPk/ChOgOW0AfY=;
 b=phyyWqFQXfpW2M1YwDhQo769iAoWpjP2L8hXGrW7rYgyar0Jn0Qg6J0DXwlRlYL14d
 TfwyXgngmq2/68zWaGuX7/RK4MATZCQds2IhxGfbbRXYD+KAE7UY5NlABj6HC0ZPpAGn
 NrfHX5Fvsf+afBHE+lWqLgXCl5T+ka3zCQqGTGRf8omcmh+YNUJzphHL7+uV1mrtLSLw
 Kgtu2M0SNQMkSCpExzn5Fbu0Z4sSCNYzm0BKt2azb7LQBHoJB8vh9OgzMgSrnmh991K9
 V7WlOF0fSsWI3oVOezp+lJPJaqrfShyWZDaK+bwXvoK0kMRHSLvdW6q5HqSOuSF3xB21
 BA0A==
X-Gm-Message-State: APjAAAWo3bwQhN5sUppI44kgC0Dl1xHW3Zf0t9Xf2e+vDPDyIhbMYyvB
 kPzCXr8heFp2kiFQmzGXPU7u4w==
X-Google-Smtp-Source: APXvYqxyjLrP8yJhJX3x7JIag0w+F2Tvkd9kSGspeyMIZg34zy1zIhv891u08D2YmV0lVfPWRhokaA==
X-Received: by 2002:a17:902:4181:: with SMTP id
 f1mr73641857pld.22.1560264823015; 
 Tue, 11 Jun 2019 07:53:43 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.53.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:53:42 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 28/92] ram: rk3399: Handle pctl_cfg return type
Date: Tue, 11 Jun 2019 20:20:31 +0530
Message-Id: <20190611145135.21399-29-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075343_850266_F89A2D85 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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

Add proper return type handling of pctl_cfg with
meaningful print statement.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 6bf8dce6e0..fab7515b2d 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1120,6 +1120,7 @@ static int sdram_init(struct dram_info *dram,
 	unsigned char dramtype = sdram_params->base.dramtype;
 	unsigned int ddr_freq = sdram_params->base.ddr_freq;
 	int channel;
+	int ret;
 
 	debug("Starting SDRAM initialization...\n");
 
@@ -1139,9 +1140,10 @@ static int sdram_init(struct dram_info *dram,
 		if (channel >= sdram_params->base.num_channels)
 			continue;
 
-		if (pctl_cfg(chan, channel, sdram_params) != 0) {
-			printf("pctl_cfg fail, reset\n");
-			return -EIO;
+		ret = pctl_cfg(chan, channel, sdram_params);
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
