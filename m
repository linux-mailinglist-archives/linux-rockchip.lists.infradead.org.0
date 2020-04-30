Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEE081BF0C6
	for <lists+linux-rockchip@lfdr.de>; Thu, 30 Apr 2020 09:04:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AI0RfuJdyOt6MvtwOUjwrVdeMIo7kbBwmACbQyuI11c=; b=SYSvbyi/+eVxaM74FaIg6EFEMu
	0rUyJzFXEqkCjkhQtUskULXTB6/B4BMCzp164hBvJvswWNTNvMuWqWw5+kuos0REL/7o4oJAp2bxi
	1Tqznr9e3Dby6WmolTNcjqtjEKknAjHunwMy5KKaaLRqhnl7IM14ipumzVPuDgfAP0WHWgKtrtU1g
	c5znlLOkil6IEfNnzq61nRVIX6f8Zz/P9SCcXJwee6ORwvoQZ+oQNMGde0oZXqSMpHdVTsbUSIQ0Q
	qbtFanVlTUzuCl7kOg40oRyqkGg4RNnqG9WOssSRhN29uugxXowb1c9w0FM6Fj2TJR0eoTkDIROxx
	kT2P61Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU3FO-0006FS-2z; Thu, 30 Apr 2020 07:04:38 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU3FL-0006Db-KV
 for linux-rockchip@lists.infradead.org; Thu, 30 Apr 2020 07:04:37 +0000
Received: by mail-pg1-x544.google.com with SMTP id q124so2319391pgq.13
 for <linux-rockchip@lists.infradead.org>; Thu, 30 Apr 2020 00:04:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=kx3DvM6u34JnEdDKGfdUYWp2iOjqdjfvFB3xF13lJxo=;
 b=CIWLUVZ5Yj2oF9VwGKshMXjQ74ZqZoDqRBBDgka2DNF8a/H96aJBz+oIm1Kcwu3g/Q
 HsRJvXhtZtP84FbkRazIyiESwz13EpbLOv5kJbypdRinHBQtnd1Wqg7vy6qhCq8UJ4Uj
 GzmSn4BrWmxiL9/zhE2klYZscFhdbWM/e2U/0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=kx3DvM6u34JnEdDKGfdUYWp2iOjqdjfvFB3xF13lJxo=;
 b=JdBm+MHEjP/1pNJLinGpCpxRlOc5zMCImREjjSyJhYdhE8aTPoy0QU5gqnQZL2U2nN
 NCmgibjie0X4s4CdAHPXQnhTqjX5QUDfZ2PPi0MfSIWOD1wqg/uW6JwkbYejLevd8vHt
 JMxyps4aXJh9k0U5lX9xm8tG6qvWQjHXBsqD2NtI+gAdA+6ARkW/6fVKxj8Vy5LJ7zYI
 PeV44g2vMTranPERuTlgLUMuikVe2xAZe5LCFlVT8XOwppsi99xZslD5fMcRx3UP1acc
 9nNf9KklRiCQ44WY+mUU3ks5760zgZrTAgKhlUUILDLHG3obzypm7XCv9oqwRS2eiSMd
 PfQQ==
X-Gm-Message-State: AGi0PuaKQ7gh5a2oJOL+5FKYiSyFOcEF0z5YJ98oTJjFZ5hG4My395wd
 htTJy/Z9sOi3eJiJk0N5v97Wgg==
X-Google-Smtp-Source: APiQypJmewSE4An5A1zy/68STun6moYmoWjx0XvcnMOPcjCDa6Cw89qHpxKW7mCFmJs55xAl3d1Nzw==
X-Received: by 2002:a63:d804:: with SMTP id b4mr1938666pgh.127.1588230274920; 
 Thu, 30 Apr 2020 00:04:34 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:6514:3619:d1af:85f6])
 by smtp.gmail.com with ESMTPSA id p64sm964143pjp.7.2020.04.30.00.04.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 00:04:34 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v2 3/8] clk: rk3399: Add enable/disable clks
Date: Thu, 30 Apr 2020 12:34:07 +0530
Message-Id: <20200430070412.12499-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200430070412.12499-1-jagan@amarulasolutions.com>
References: <20200430070412.12499-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_000435_674542_F4AB5541 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: patrick@blueri.se, linux-rockchip@lists.infradead.org, u-boot@lists.denx.de,
 Jagan Teki <jagan@amarulasolutions.com>, sunil@amarulasolutions.com,
 linux-amarula@amarulasolutions.com
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
Changes for v2:
- new patch

 drivers/clk/rockchip/clk_rk3399.c | 148 ++++++++++++++++++++++++++++++
 1 file changed, 148 insertions(+)

diff --git a/drivers/clk/rockchip/clk_rk3399.c b/drivers/clk/rockchip/clk_rk3399.c
index d822acace1..df70e9fa88 100644
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
+		rk_clrreg(&priv->cru->clksel_con[12], BIT(1));
+		break;
+	case SCLK_USB3OTG1_REF:
+		rk_clrreg(&priv->cru->clksel_con[12], BIT(2));
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
+		rk_setreg(&priv->cru->clksel_con[12], BIT(1));
+		break;
+	case SCLK_USB3OTG1_REF:
+		rk_setreg(&priv->cru->clksel_con[12], BIT(2));
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
