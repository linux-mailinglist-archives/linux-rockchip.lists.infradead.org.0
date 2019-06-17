Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0954047B55
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:39:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OMN7aJwXW5Lo/sytI8kJVCJ7BEGFw4F/a3GWWy/EhdE=; b=ZR3L/SlfJYdijm
	13DzJfASB25jV9RTLPsivt4oaxVZ7G+fbkJeshfad4G5GIzB5aQ88Ws2X92Ev+H/fgfhQpqXbBoj8
	X7RlgpyVvn5IZzbapsNP4snY/kSy1NGfxcxRj4fSZp7JVJzt4BMccisQYtEyf/VDhWmhPd7zat5j0
	F7LPEAVR/Jf5p0GfqqHhRdNlf+lKsV6HqqUnzXX0q5cbsTtgnIrDLjQIoXXJBwP5ocjIYBARFujhm
	IXks/OPJoW1Okz5L+ILM93psXSCDCz/LHf0kyN993o2JsKYKujaa6YEIgegjnER25DlK/UshxicOg
	575RpWK5TN9qy5QzGZTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmEm-0007ul-Ty; Mon, 17 Jun 2019 07:39:33 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmEi-0007sK-CD
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:39:29 +0000
Received: by mail-pf1-x441.google.com with SMTP id t16so5180168pfe.11
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:39:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VZZq8s/MFgMQ4+KCax6f04xB7tKYUG01ZRKiMSlIBrI=;
 b=R/52bWpHQs7mRiz5hYuoG0KDFxd8ttk8zaPNfZB3ZONCv+Bj4zTBneKe8mXt2xR23K
 1CfFx6TH0IOpW/MqGF23vntdyI8dxopuGoMvYS0jmefqdKeAo0VDC1Q1Y3y7de73iuza
 weu/NyPgIiJee/ncH9p4lFOBYlTGsG0XAI8VY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VZZq8s/MFgMQ4+KCax6f04xB7tKYUG01ZRKiMSlIBrI=;
 b=W1LmbwlOlQ/4x3t4pQ5ozyqQATDYTEtkRXW99NpHcJHupzNoHDJGtQd24c3njdf0u5
 ethdAa2WMVAP4+dW36fvT0QPOSKKIc7mgCrzCizP/PSya0P2OvU6pWoQicGy9qzQJZS2
 vkajJ/yCpKQLXEKRMxNKztUhpfiJXgHiuM3mcr854Hfx5ljXUlEIsS7f98/bEz7+InJG
 tOl2m1kEudEQOEE4S5j+kMm61ZwIZOnwYLmMI0FSL0njnP/bX3EwUO6abWV3uRK68oDD
 FH/jM77D8Bk84+Vkq776neVER8W4gVslAFhB1UaqrcvEFVYaxR9FM+eGM+BoM6SIl6Wr
 34fA==
X-Gm-Message-State: APjAAAWPm2ZWNS63kv8Wc1FqLqgU85CAcodElItiYQECD2kussW7Pc+P
 DqOl+x+MpLLUBPDxRqxGkZ4c1w==
X-Google-Smtp-Source: APXvYqytb6l373r7MFb2zkKn2DsUyH+YJqmmWfOM9y11biMDtDywiLUVVpQz6sCMou4shOQVdCEPEw==
X-Received: by 2002:a63:1b07:: with SMTP id b7mr19613058pgb.133.1560757167795; 
 Mon, 17 Jun 2019 00:39:27 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.39.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:39:27 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 56/99] clk: rockchip: rk3399: Set 400MHz ddr clock
Date: Mon, 17 Jun 2019 13:02:09 +0530
Message-Id: <20190617073252.27810-57-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003928_557078_973D0F38 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

Add support for setting 400MHz ddr clock.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/clk/rockchip/clk_rk3399.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/clk/rockchip/clk_rk3399.c b/drivers/clk/rockchip/clk_rk3399.c
index 1de21c9f3e..79007b8682 100644
--- a/drivers/clk/rockchip/clk_rk3399.c
+++ b/drivers/clk/rockchip/clk_rk3399.c
@@ -839,6 +839,10 @@ static ulong rk3399_ddr_set_clk(struct rk3399_cru *cru,
 		dpll_cfg = (struct pll_div)
 		{.refdiv = 2, .fbdiv = 100, .postdiv1 = 4, .postdiv2 = 1};
 		break;
+	case 400 * MHz:
+		dpll_cfg = (struct pll_div)
+		{.refdiv = 1, .fbdiv = 50, .postdiv1 = 3, .postdiv2 = 1};
+		break;
 	case 666 * MHz:
 		dpll_cfg = (struct pll_div)
 		{.refdiv = 2, .fbdiv = 111, .postdiv1 = 2, .postdiv2 = 1};
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
