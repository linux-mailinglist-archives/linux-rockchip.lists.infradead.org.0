Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E3526A819
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:02:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8juhjORrjxXEj4S/J69eJ4ozDpZ+RPxflLwoaiG/Um8=; b=eU2tFBFS9xGEi7
	8m0FXHsxaX9BM7eUljSEce7hoSwqWGhtsbn9tjv6qjJqUhw6cH7fiDVpG1dVwnMMp4poft7tvoMK2
	fxxvg+kgmujjuCUumHAtcUue0kNMiOp+Pwi+MWpugEzPyzvycO1A2aonu4MAg+ojt7Tw33wQZarh9
	/YDLcnyL2Gphu50QvZNExBVw9/lI8YGADH0g74afCniCrkq1tKWrvXZokIBWwo86ft8vdw6RgwE74
	6gE69RXyByKQmVZptudHE35gWzW/OfyuyAOxw7wHrRlJB1bZ1NdoNNvdmmQ1Jk/l70/vboZt0Qr7N
	qtBvySeUh8qfaDeSjCTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnMAH-000087-G9; Tue, 16 Jul 2019 12:02:37 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM8S-0006ra-KF
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 12:00:46 +0000
Received: by mail-pf1-x443.google.com with SMTP id c73so8999795pfb.13
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 05:00:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nmwFUqUOCS8iVkKDxNTkju/mBzepfxNYBfFL/J8gC6k=;
 b=q+tnB/7SY4LbZzRuelCj1EIA8Wtle67TUeYImmzPOjFXpR3XUiGxZNnDJaOyfJ20XH
 jkJIxi4+bl2TywXWSNpxKdVTDpI3rHUP63EsGun3Xo9h3ESrTKuGcQgZeNSOreKHTb4y
 CCaSCaY9s/xFGb9xPSAH1xchp7Dv5VHRXhp8A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nmwFUqUOCS8iVkKDxNTkju/mBzepfxNYBfFL/J8gC6k=;
 b=fAdAo3kuccoWKJYyORINuX2Ea2EUu0Dum2WrFMbYnL3YTnPp6VbPbY3coc0IoJQc7K
 BnJMY2QqfeXvlZQd/hvYYSYmnsh+v0GQClV1V37sWHHBkpITUyyUfB8NkGk7zcKpBkTv
 RLk9WEI0MIPR3QZvIhW8JGPvy/4abD9UeW2NNf/jL4s/TbW1qQvUbVc5YJiSctfe6aIj
 jonfgjmCe8e1TxFbrfTQWXjw15R8AnBVtBzrR7Qw5A/xhkpGKyV/yvTuiQJA9o9320T2
 Fd/a5f9o7598spKdMjplCo2em0csruhGLTBE7+7wAn5DdvNnkhOfkb3M7nBzo/0CibJV
 kSFQ==
X-Gm-Message-State: APjAAAVjCvLc+gFl+yycp3OfZjHzZgbI9Ben4Mi/s0K/7II83ehXZaQu
 wm5pcuiZAF7pYq4N/fVeWTbxZQ==
X-Google-Smtp-Source: APXvYqwKfswKJm5z0g91KX1Gd2IreNRG22kmOHXnUn0FpRUBBsGFXM8Ohq7mU5J0+XaQJovSSW3Icw==
X-Received: by 2002:a17:90a:cf8f:: with SMTP id
 i15mr34293782pju.110.1563278443889; 
 Tue, 16 Jul 2019 05:00:43 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.05.00.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 05:00:43 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 47/57] clk: rockchip: rk3399: Set 50MHz ddr clock
Date: Tue, 16 Jul 2019 17:27:35 +0530
Message-Id: <20190716115745.12585-48-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_050044_782562_6B2787C4 
X-CRM114-Status: UNSURE (   8.10  )
X-CRM114-Notice: Please train this message.
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

Add support for setting 50MHz ddr clock.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/clk/rockchip/clk_rk3399.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/clk/rockchip/clk_rk3399.c b/drivers/clk/rockchip/clk_rk3399.c
index 5d1ad94e85..1de21c9f3e 100644
--- a/drivers/clk/rockchip/clk_rk3399.c
+++ b/drivers/clk/rockchip/clk_rk3399.c
@@ -827,6 +827,10 @@ static ulong rk3399_ddr_set_clk(struct rk3399_cru *cru,
 
 	/*  clk_ddrc == DPLL = 24MHz / refdiv * fbdiv / postdiv1 / postdiv2 */
 	switch (set_rate) {
+	case 50 * MHz:
+		dpll_cfg = (struct pll_div)
+		{.refdiv = 1, .fbdiv = 12, .postdiv1 = 3, .postdiv2 = 2};
+		break;
 	case 200 * MHz:
 		dpll_cfg = (struct pll_div)
 		{.refdiv = 1, .fbdiv = 50, .postdiv1 = 6, .postdiv2 = 1};
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
