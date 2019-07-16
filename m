Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BCD96A7FC
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:01:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hj2MSxY+TM/lUktxQczZH7ZHomynSUnJtMdjuW6jBtQ=; b=X4ba706lKrpbB9
	covPTQ4fWtnsergUfYy9NV3MQ5rMknnBW+zNZPqHBkGi1GhFfkx6Br6dEVZAVQ/85nDzT/hWOrtg9
	dl4ACMXX5zZ4zcA95dL2SAlVOYJK1AX1VS084vobGBYBVQGqXKozkpyna1Rwcqgxq+6SDYgGPQLMG
	cyFIdr4CM312cjy9V3m3TwR6HGH6Paz4QDl5rmH/pdX0VOXyk52/EC3ZiqOW8SegjIZM68oEd2zkT
	kRaniGAhkTIMkh1weDFercDC2pDHqMCIFH1ksY5zv1I7l6PqtnNnuU0eqHf3vDzaFICzUddUD36+Y
	ueyShI2FjnCSk47YHKXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnM9B-0007ZH-0v; Tue, 16 Jul 2019 12:01:29 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM71-0004WL-C6
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 11:59:17 +0000
Received: by mail-pf1-x444.google.com with SMTP id u14so9023394pfn.2
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 04:59:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aylTmfkqtJF+7tnDVUrQIwHiwDYUMKBZKCeVtVEHmj0=;
 b=DMoTToEVSnJ02RosyO+QJQNuvtjoVEQE0Hxa7pgKupbl8XVUHa8vp96UF+C1DruFtM
 rayTlb9wdvHtaqjeG1t4LWoeH/SFz6FoKWoyerwuLaAOHmJtr4wUVgyuQZeZ5woIjIiI
 VdcZZryGJedwnGEk1IdH2fsZS5beLuJUifB7A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aylTmfkqtJF+7tnDVUrQIwHiwDYUMKBZKCeVtVEHmj0=;
 b=AVrVLRFmBn8SVg+/WJe7CUqGr5cl4+v2mG0FNdwrYaZmft7DYor55KgvEHcjfPLLXv
 vuhxXoxQGXQACvtLnV0oXjCh25zYRRHEy3QTCgaFHBoaZ2GncyDcxkaX9KtCr6sfbCsZ
 ZExP/H6tCewjQtnzrPPVsJr6KBOnSJ2uDKbxxfy7mUe0QQy1rtFmZaJVlmiWQfnOW3La
 Qs+WNxHbnooprbCQcTaBf0kWzf8x+G2Jun3h0i0EmZ5r03ZdIMMWdvqXyiyHObuE2TzW
 RSG94iXu3i3qqvu2P6RORC3q1tMye+v1b/PRVWskKN5gtfqlUE9ZNXSlzmWHMmIC134V
 aIgw==
X-Gm-Message-State: APjAAAXozRp3FCRTYZccQ8PhEaQACSr9CLe40tNU+aNnm5QYuu1Sq3cY
 RhLcW6kVSCEg0Hx9Ocxk4aat9g==
X-Google-Smtp-Source: APXvYqx5bdsfw1mFrn6MGjEJAhpSACu0W4crl1V3h+uPANyH/l3AE8cAQIdhMOAcL7e4ElXtl4ymCw==
X-Received: by 2002:a17:90a:380d:: with SMTP id
 w13mr35066590pjb.138.1563278354606; 
 Tue, 16 Jul 2019 04:59:14 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.04.59.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 04:59:14 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 22/57] ram: rk3399: Add lpddr4 rank mask for wdql training
Date: Tue, 16 Jul 2019 17:27:10 +0530
Message-Id: <20190716115745.12585-23-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_045915_495127_6A0B8A98 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

Add rank_mask based on the rank number for lpddr4.

This would keep the wdql data training loop based on the
desired rank mask value instead of looping for all values.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 8ecc3a1b74..711477188e 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -925,7 +925,10 @@ static int data_training_wdql(const struct chan_info *chan, u32 channel,
 	/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
 	writel(0x00003f7c, (&denali_pi[175]));
 
-	rank_mask = (rank == 1) ? 0x1 : 0x3;
+	if (params->base.dramtype == LPDDR4)
+		rank_mask = (rank == 1) ? 0x5 : 0xf;
+	else
+		rank_mask = (rank == 1) ? 0x1 : 0x3;
 
 	for (i = 0; i < 4; i++) {
 		if (!(rank_mask & (1 << i)))
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
