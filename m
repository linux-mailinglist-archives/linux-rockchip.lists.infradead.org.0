Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 568FD1C09A3
	for <lists+linux-rockchip@lfdr.de>; Thu, 30 Apr 2020 23:46:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ddgsTIrS9nbXBeKL37Ce2lh5/Te1pS528qvCCC3XDUE=; b=i3vMfNwkavx11qjnj7EgidZXR5
	D9Gz7vqKuGyjKTtOrnmtzWfyplsnF5cPxXfyrNdQmTe8zqUMQj6t3++MGU+lXvKq/KvqioaNck9yq
	omt32JvL+vVMoiPdCA9LgcG/SgNPF32apjtr8mnx82+zev3PUEIxZui5//OnzkXnBpK5K1CS4ZjtX
	7tICXARSBxB+rf2Q6Sq4/RubUOAJ7OLHRrWHECMRsJIcbDBwGSJ+dxtUrBW49h8l1bkEH5u34mdnQ
	LUpkMi7Ujx7ek/4zXCtmkxPAZq7vM44BUOxZD93vhPYVWr0inTtTcMV23ngEYIBW/bPjAhAQKjx+J
	h+L13VhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUH0d-0007Cb-NX; Thu, 30 Apr 2020 21:46:19 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUH0a-0007Av-P6
 for linux-rockchip@lists.infradead.org; Thu, 30 Apr 2020 21:46:18 +0000
Received: by mail-pl1-x644.google.com with SMTP id h11so2831128plr.11
 for <linux-rockchip@lists.infradead.org>; Thu, 30 Apr 2020 14:46:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=GHqGyS+RUNZNqKAv2qm8I0WbTjNQhsUbrp1rtNyYubk=;
 b=Amp9dCYNq2Jqi5j1lGLikHCt+3FAkFX2u1fmA1DAuJWOskANXrjeqi2A3QhnQJqRkO
 AOeYeeAmGwdpoOEJRXVjHWL4PiG74pfTRAuFQ1PXIrtvvMxuJUFID+qPQ7+Chu/bY1JC
 uFif488aX09YLg87JiVHmRwzrhMjZYj4dKzZc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=GHqGyS+RUNZNqKAv2qm8I0WbTjNQhsUbrp1rtNyYubk=;
 b=ryJ+V1j2NKM+slauVKXPK6mf0tPACIxHDjpYfvxSKZHHepOKfs76kCBAh4DS4OW0q7
 TFmfDptZs+Odw9r5/pzghuRW1YOA24j/CNn0PipKjpwwExm4itwDvl65nXHi6mtnnifH
 rCBuNc88mIIHEc5beHog0ekqmcttBwM/mwGu83nXvZmzWAdIXcxaueIHK7Z7D8a9J6lu
 cK58JSh948xQjAMaz6iUJgUcUw1oS87g2+WUK2bPb+x//uMwVy6IlINtL6LIxo4d8oaj
 vzPNRYXOoeqRjAjjZQPj0BBAJ+12nxnaMLTXyN5X74jeCM8xEzzg1aljtQUBWBMmOheT
 5YQQ==
X-Gm-Message-State: AGi0PuYI2FoUQOuBSp6xot4oXTYRRrK4s4H2vsXRRn23iHFCaX2X27s4
 jcMs5OdIxpdZ1DmaaTjzaXKiaA==
X-Google-Smtp-Source: APiQypILla+f5XhFs2P0a25DFWI4zk1Fe0UXIougKpkLB47+mVXL3wiMRFv0JI2H3GyqhASGd1evEw==
X-Received: by 2002:a17:90a:8c3:: with SMTP id 3mr946549pjn.147.1588283176252; 
 Thu, 30 Apr 2020 14:46:16 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:a9f2:11c6:8c6c:2861])
 by smtp.gmail.com with ESMTPSA id p64sm615243pjp.7.2020.04.30.14.46.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 14:46:15 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Tom Rini <trini@konsulko.com>, Frank Wang <frank.wang@rock-chips.com>,
 William Wu <william.wu@rock-chips.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 Patrice Chotard <patrice.chotard@st.com>
Subject: [RFC 6/7] pci: rockchip: Switch to generic-phy
Date: Fri,  1 May 2020 03:15:28 +0530
Message-Id: <20200430214529.18887-7-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200430214529.18887-1-jagan@amarulasolutions.com>
References: <20200430214529.18887-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_144616_819384_BDECE823 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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
Cc: u-boot@lists.denx.de, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Now, we have a PCIe PHY driver as part of the Generic
PHY framework. Let's use it instead of legacy PHY driver.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/pci/pcie_rockchip.c | 20 ++++++++++----------
 drivers/pci/pcie_rockchip.h |  5 +++++
 2 files changed, 15 insertions(+), 10 deletions(-)

diff --git a/drivers/pci/pcie_rockchip.c b/drivers/pci/pcie_rockchip.c
index 82a8396e42..3e4ba9635f 100644
--- a/drivers/pci/pcie_rockchip.c
+++ b/drivers/pci/pcie_rockchip.c
@@ -159,8 +159,6 @@ static int rockchip_pcie_atr_init(struct rockchip_pcie *priv)
 static int rockchip_pcie_init_port(struct udevice *dev)
 {
 	struct rockchip_pcie *priv = dev_get_priv(dev);
-	struct rockchip_pcie_phy *phy = pcie_get_phy(priv);
-	struct rockchip_pcie_phy_ops *ops = phy_get_ops(phy);
 	u32 cr, val, status;
 	int ret;
 
@@ -185,7 +183,7 @@ static int rockchip_pcie_init_port(struct udevice *dev)
 		return ret;
 	}
 
-	ret = ops->init(phy);
+	ret = generic_phy_init(&priv->pcie_phy);
 	if (ret) {
 		dev_err(dev, "failed to init phy (ret=%d)\n", ret);
 		goto err_exit_phy;
@@ -242,7 +240,7 @@ static int rockchip_pcie_init_port(struct udevice *dev)
 	cr |= PCIE_CLIENT_CONF_ENABLE | PCIE_CLIENT_MODE_RC;
 	writel(cr, priv->apb_base + PCIE_CLIENT_CONFIG);
 
-	ret = ops->power_on(phy);
+	ret = generic_phy_power_on(&priv->pcie_phy);
 	if (ret) {
 		dev_err(dev, "failed to power on phy (ret=%d)\n", ret);
 		goto err_power_off_phy;
@@ -311,9 +309,9 @@ static int rockchip_pcie_init_port(struct udevice *dev)
 	return 0;
 
 err_power_off_phy:
-	ops->power_off(phy);
+	generic_phy_power_off(&priv->pcie_phy);
 err_exit_phy:
-	ops->exit(phy);
+	generic_phy_exit(&priv->pcie_phy);
 	return ret;
 }
 
@@ -436,6 +434,12 @@ static int rockchip_pcie_parse_dt(struct udevice *dev)
 		return ret;
 	}
 
+	ret = generic_phy_get_by_index(dev, 0, &priv->pcie_phy);
+	if (ret) {
+		dev_err(dev, "failed to get pcie-phy (ret=%d)\n", ret);
+		return ret;
+	}
+
 	return 0;
 }
 
@@ -453,10 +457,6 @@ static int rockchip_pcie_probe(struct udevice *dev)
 	if (ret)
 		return ret;
 
-	ret = rockchip_pcie_phy_get(dev);
-	if (ret)
-		return ret;
-
 	ret = rockchip_pcie_set_vpcie(dev);
 	if (ret)
 		return ret;
diff --git a/drivers/pci/pcie_rockchip.h b/drivers/pci/pcie_rockchip.h
index c3a0a2846d..4b06110bfe 100644
--- a/drivers/pci/pcie_rockchip.h
+++ b/drivers/pci/pcie_rockchip.h
@@ -9,6 +9,8 @@
  *
  */
 
+#include <generic-phy.h>
+
 #define HIWORD_UPDATE(mask, val)        (((mask) << 16) | (val))
 #define HIWORD_UPDATE_BIT(val)          HIWORD_UPDATE(val, val)
 
@@ -126,6 +128,9 @@ struct rockchip_pcie {
 	struct udevice *vpcie3v3;
 	struct udevice *vpcie1v8;
 	struct udevice *vpcie0v9;
+
+	/* phy */
+	struct phy pcie_phy;
 };
 
 int rockchip_pcie_phy_get(struct udevice *dev);
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
