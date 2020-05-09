Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97AFD1CC2E6
	for <lists+linux-rockchip@lfdr.de>; Sat,  9 May 2020 18:56:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5EeWclhbsCfHlg1G97TY9n65h2vKz341q2WWI3jOoEA=; b=gck1VqVOtAvC3RnHDv3F9/zsOO
	tDiBT1dFxUVa8UH6zkKk09dY3k1+NJVMBbVucY9S9GJXaO2QbvmFBmKVnFVkRsGyud+uc67ovLLvi
	iLvFfD3v9Yk6xXgAhKXA9A/gu4gWFo3nqx7d2h8+C5akTcbhAiYfJvUO5p1MvqTWZicEY8QkYNB31
	BKPEIS/eMe4Kj9HSSiUW0WCOHrfrCZ9SOMtPyYNaqQnTj5Qwsx/2bXksXbrII7Pk0dgwpjnS/A9Ph
	lhcKWI4YM/43tuTBT5jccv4sTGYIVsG2c9k5nF1kPdMFToV87FY55F0NbZ7pS+LblEsdzsPy02wP9
	Rm21olYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXSmM-0002yC-85; Sat, 09 May 2020 16:56:46 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXSmI-0002wf-CN
 for linux-rockchip@lists.infradead.org; Sat, 09 May 2020 16:56:43 +0000
Received: by mail-pl1-x641.google.com with SMTP id z6so2054315plk.10
 for <linux-rockchip@lists.infradead.org>; Sat, 09 May 2020 09:56:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=0gK5/3e6XPljp57mBjGreH9T+A8rRJ92BhM6QCBY7t8=;
 b=HDXyMRp2W1dczZgTqmNrIcPSwnrepPRf5x4hlHNCgJYZvD+/mVk++Y4Dq6O1WanQm2
 t4fNR6+7SIFNFUOlC4kW6akPsuoPWBJlCDysWB71ciGUi8KL0ved3tM0JBJlyZQmBYzV
 lwo0dw0L6ow/KuHhUo2EDkF1+fJwvKq7hX22c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=0gK5/3e6XPljp57mBjGreH9T+A8rRJ92BhM6QCBY7t8=;
 b=kbYAP+S9c5Z3H5qlO0cDZYF7x5Xovp1/5kQtte2lZnf0RB9+RsqdGLYPJpkaQehAJn
 eCZGS5HCLAV5rPHworIbJn6AKPUVr3Ln8GbE1CObnVaI03rI+8bHb+zLgROBkk0sCrTo
 TbchjTkW+PBt7hFg1yjMg9vndmUWsf2A5jecIQzG0mrsTOUaOy69dzidXOdSPcffYoIk
 j3+N38ClwAaJl5mMyfhVOzDrEOs13X+cpmEW+KfjjX1NPuPc5GnNmG+Lzo2kTI78MenS
 ghsyDr3u1v0XL8E4YbVL3sKHHZgYX8eoI7mOI3F9C/tt19Him+qD+zG0pbx+AEUPcs8A
 ZIow==
X-Gm-Message-State: AGi0PuaBUEMeRzaQ1V+uRKZ0VirAZdJDfqOndSuxOjyNPnFEe/5IgpWj
 JraXF+fEK1M2YaQj9AZJwE7w4w==
X-Google-Smtp-Source: APiQypKCntaadc7Th+8bM+5S5imCUUfkBryd0RXeBq58PapA0YJcqVZgWpGaYpHVPZuCQIzVaTvA7Q==
X-Received: by 2002:a17:902:c3d3:: with SMTP id
 j19mr7433822plj.340.1589043401222; 
 Sat, 09 May 2020 09:56:41 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:21f6:1c8f:ae94:fb04])
 by smtp.gmail.com with ESMTPSA id x195sm4977098pfc.0.2020.05.09.09.56.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 09 May 2020 09:56:40 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v3 1/6] clk: rk3399: Add enable/disable clks
Date: Sat,  9 May 2020 22:26:19 +0530
Message-Id: <20200509165624.20791-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200509165624.20791-1-jagan@amarulasolutions.com>
References: <20200509165624.20791-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_095642_416165_86DD9CF1 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: patrick@blueri.se, u-boot@lists.denx.de, shawn.lin@rock-chips.com,
 linux-rockchip@lists.infradead.org, Jagan Teki <jagan@amarulasolutions.com>,
 sunil@amarulasolutions.com, linux-amarula@amarulasolutions.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Yes, most of the high speed peripheral clocks
in rk3399 enabled by default.

But it would be better to handle them via clk
enable/disable API for handling proper reset
conditions like 'usb reset' over command line.

So, enable USB, GMAC clock via enable/disable ops.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v3:
- Update USB clock registers

 drivers/clk/rockchip/clk_rk3399.c | 148 ++++++++++++++++++++++++++++++
 1 file changed, 148 insertions(+)

diff --git a/drivers/clk/rockchip/clk_rk3399.c b/drivers/clk/rockchip/clk_rk3399.c
index d822acace1..5d2bdb42c7 100644
--- a/drivers/clk/rockchip/clk_rk3399.c
+++ b/drivers/clk/rockchip/clk_rk3399.c
@@ -1071,12 +1071,160 @@ static int __maybe_unused rk3399_clk_set_parent(struct clk *clk,
 	return -ENOENT;
 }
 
+static int rk3399_clk_enable(struct clk *clk)
+{
+	struct rk3399_clk_priv *priv = dev_get_priv(clk->dev);
+
+	switch (clk->id) {
+	case SCLK_MAC:
+		rk_clrreg(&priv->cru->clkgate_con[5], BIT(5));
+		break;
+	case SCLK_MAC_RX:
+		rk_clrreg(&priv->cru->clkgate_con[5], BIT(8));
+		break;
+	case SCLK_MAC_TX:
+		rk_clrreg(&priv->cru->clkgate_con[5], BIT(9));
+		break;
+	case SCLK_MACREF:
+		rk_clrreg(&priv->cru->clkgate_con[5], BIT(7));
+		break;
+	case SCLK_MACREF_OUT:
+		rk_clrreg(&priv->cru->clkgate_con[5], BIT(6));
+		break;
+	case ACLK_GMAC:
+		rk_clrreg(&priv->cru->clkgate_con[32], BIT(0));
+		break;
+	case PCLK_GMAC:
+		rk_clrreg(&priv->cru->clkgate_con[32], BIT(2));
+		break;
+	case SCLK_USB3OTG0_REF:
+		rk_clrreg(&priv->cru->clkgate_con[12], BIT(1));
+		break;
+	case SCLK_USB3OTG1_REF:
+		rk_clrreg(&priv->cru->clkgate_con[12], BIT(2));
+		break;
+	case SCLK_USB3OTG0_SUSPEND:
+		rk_clrreg(&priv->cru->clkgate_con[12], BIT(3));
+		break;
+	case SCLK_USB3OTG1_SUSPEND:
+		rk_clrreg(&priv->cru->clkgate_con[12], BIT(4));
+		break;
+	case ACLK_USB3OTG0:
+		rk_clrreg(&priv->cru->clkgate_con[30], BIT(1));
+		break;
+	case ACLK_USB3OTG1:
+		rk_clrreg(&priv->cru->clkgate_con[30], BIT(2));
+		break;
+	case ACLK_USB3_RKSOC_AXI_PERF:
+		rk_clrreg(&priv->cru->clkgate_con[30], BIT(3));
+		break;
+	case ACLK_USB3:
+		rk_clrreg(&priv->cru->clkgate_con[12], BIT(0));
+		break;
+	case ACLK_USB3_GRF:
+		rk_clrreg(&priv->cru->clkgate_con[30], BIT(4));
+		break;
+	case HCLK_HOST0:
+		rk_clrreg(&priv->cru->clksel_con[20], BIT(5));
+		break;
+	case HCLK_HOST0_ARB:
+		rk_clrreg(&priv->cru->clksel_con[20], BIT(6));
+		break;
+	case HCLK_HOST1:
+		rk_clrreg(&priv->cru->clksel_con[20], BIT(7));
+		break;
+	case HCLK_HOST1_ARB:
+		rk_clrreg(&priv->cru->clksel_con[20], BIT(8));
+		break;
+	default:
+		debug("%s: unsupported clk %ld\n", __func__, clk->id);
+		return -ENOENT;
+	}
+
+	return 0;
+}
+
+static int rk3399_clk_disable(struct clk *clk)
+{
+	struct rk3399_clk_priv *priv = dev_get_priv(clk->dev);
+
+	switch (clk->id) {
+	case SCLK_MAC:
+		rk_setreg(&priv->cru->clkgate_con[5], BIT(5));
+		break;
+	case SCLK_MAC_RX:
+		rk_setreg(&priv->cru->clkgate_con[5], BIT(8));
+		break;
+	case SCLK_MAC_TX:
+		rk_setreg(&priv->cru->clkgate_con[5], BIT(9));
+		break;
+	case SCLK_MACREF:
+		rk_setreg(&priv->cru->clkgate_con[5], BIT(7));
+		break;
+	case SCLK_MACREF_OUT:
+		rk_setreg(&priv->cru->clkgate_con[5], BIT(6));
+		break;
+	case ACLK_GMAC:
+		rk_setreg(&priv->cru->clkgate_con[32], BIT(0));
+		break;
+	case PCLK_GMAC:
+		rk_setreg(&priv->cru->clkgate_con[32], BIT(2));
+		break;
+	case SCLK_USB3OTG0_REF:
+		rk_setreg(&priv->cru->clkgate_con[12], BIT(1));
+		break;
+	case SCLK_USB3OTG1_REF:
+		rk_setreg(&priv->cru->clkgate_con[12], BIT(2));
+		break;
+	case SCLK_USB3OTG0_SUSPEND:
+		rk_setreg(&priv->cru->clkgate_con[12], BIT(3));
+		break;
+	case SCLK_USB3OTG1_SUSPEND:
+		rk_setreg(&priv->cru->clkgate_con[12], BIT(4));
+		break;
+	case ACLK_USB3OTG0:
+		rk_setreg(&priv->cru->clkgate_con[30], BIT(1));
+		break;
+	case ACLK_USB3OTG1:
+		rk_setreg(&priv->cru->clkgate_con[30], BIT(2));
+		break;
+	case ACLK_USB3_RKSOC_AXI_PERF:
+		rk_setreg(&priv->cru->clkgate_con[30], BIT(3));
+		break;
+	case ACLK_USB3:
+		rk_setreg(&priv->cru->clkgate_con[12], BIT(0));
+		break;
+	case ACLK_USB3_GRF:
+		rk_setreg(&priv->cru->clkgate_con[30], BIT(4));
+		break;
+	case HCLK_HOST0:
+		rk_setreg(&priv->cru->clksel_con[20], BIT(5));
+		break;
+	case HCLK_HOST0_ARB:
+		rk_setreg(&priv->cru->clksel_con[20], BIT(6));
+		break;
+	case HCLK_HOST1:
+		rk_setreg(&priv->cru->clksel_con[20], BIT(7));
+		break;
+	case HCLK_HOST1_ARB:
+		rk_setreg(&priv->cru->clksel_con[20], BIT(8));
+		break;
+	default:
+		debug("%s: unsupported clk %ld\n", __func__, clk->id);
+		return -ENOENT;
+	}
+
+	return 0;
+}
+
 static struct clk_ops rk3399_clk_ops = {
 	.get_rate = rk3399_clk_get_rate,
 	.set_rate = rk3399_clk_set_rate,
 #if CONFIG_IS_ENABLED(OF_CONTROL) && !CONFIG_IS_ENABLED(OF_PLATDATA)
 	.set_parent = rk3399_clk_set_parent,
 #endif
+	.enable = rk3399_clk_enable,
+	.disable = rk3399_clk_disable,
 };
 
 #ifdef CONFIG_SPL_BUILD
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
