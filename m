Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 005A947B6C
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:40:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EPBPyd//Cg9uSni5/WI9MyZIp8ME1Fn4uY+3+o7IH4o=; b=D8jT4RR2QtuwOS
	6Dn7x01bHHERyIVjW5a+g/FK+3GTP6m0FvENFRbx2AuXUMNqErYnyx0QbZ7bHtrEwpHB0acCdzI0T
	ZedSSdw5fMhrmAb1cxXR23+ZMaElEtmrVfaZVdAAT6geaqXak8N0G6VGP6rgbY+jrm5mIgPlF+h3V
	RgFDQjrJ0w3/5SYFOP7kbL0V81FmjaduUW5aFphXuICtGpe/6Gcp3j6WaSfLJee1n3Kk2qfitfz4r
	enQ/3kbVTtPkdZ2OHLRq4jPHdN8TbeyUBcAOIyAnjRIBGJtmVaBzUUz9nVFaDmRGZWMHlL5N4Eume
	cw9fw6bw7IbLBzYkvWJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmFq-0001VA-28; Mon, 17 Jun 2019 07:40:38 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmFm-0001TM-5o
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:40:35 +0000
Received: by mail-pf1-x442.google.com with SMTP id m30so5188149pff.8
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:40:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CkHGon5iiHR4cPtczMEGETHJh4biouItuWLJdNTtg3s=;
 b=INrTj27IRIkcL1DjXya8MBN4NAHOgge5mkGzkxlJOd/Nj0CySjC64IGLx9Afmoo4tg
 Yih9B74jcX1uUOahrbVk8Vw4Zw8nWBr3oEnU7fvNvs8vLqrub/EdzFMmzaJO/3KpxEKI
 eQcASEkY5/6sdonQ90k69LKHSsU7fXA6yp2iY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CkHGon5iiHR4cPtczMEGETHJh4biouItuWLJdNTtg3s=;
 b=aJd+j3l8r5aG7YUOQeMhw9SlAyu2zyu0DDkk4ebC6NgQJ4pxC+dkF+7qWr0Q348EjR
 dYAaDRWMp3lTT9DOcDrNe+/kUJqEg11hp0SXfiALPSuH03IFKcYGa6JNT+jOsOlEIhv/
 Qz5a1jaY+NQrluxhjRIKIA7VrB6c9G9yPJU971fS4h1gKdqvZeCrl7d+l8UfyCaDskLT
 T93DrwbG3NfKrz/LCKXrB9MKxBbe2QpDhByjqp3yDCC5bYrxna2YiLkadLdHVmcZZ8oK
 l92afVoh8Db87jjgEw9JnzohP0nb7A2E8kiwXZjpWL5UlttVOsDIgObQLI848U3K/4Vo
 LBAQ==
X-Gm-Message-State: APjAAAURLJL58nH3cE1ZRY1EIv97kSlI7T1tWgxVS1iHSldhjhN8j1IU
 fy/NsjgAhfYZWhhQW0qXNri8Qw==
X-Google-Smtp-Source: APXvYqxGHcma9NJw6+Ig4gojJSO6TU5rOVsc9QJ6pyUNXcq+yUU6GJWSZJ3J5YxKayX5RJT/ogPg2w==
X-Received: by 2002:a63:2ace:: with SMTP id
 q197mr47320689pgq.102.1560757233542; 
 Mon, 17 Jun 2019 00:40:33 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.40.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:40:33 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 76/99] ram: rk3399: Get lpddr4 tsel_rd_en from io settings
Date: Mon, 17 Jun 2019 13:02:29 +0530
Message-Id: <20190617073252.27810-77-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_004034_252780_80F348E7 
X-CRM114-Status: GOOD (  11.72  )
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

For base.odt 1 the lpddr4 tsel_rd_en value is depending
on IO settings of rd_odt_en.

Add support for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 5f118fc0c6..9eddfa7fd7 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -645,10 +645,14 @@ static void set_ds_odt(const struct chan_info *chan,
 		tsel_ckcs_select_n = PHY_DRV_ODT_34_3;
 	}
 
-	if (params->base.odt == 1)
+	if (params->base.odt == 1) {
 		tsel_rd_en = 1;
-	else
+
+		if (params->base.dramtype == LPDDR4)
+			tsel_rd_en = io->rd_odt_en;
+	} else {
 		tsel_rd_en = 0;
+	}
 
 	tsel_wr_en = 0;
 	tsel_idle_en = 0;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
