Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6251E1B85EA
	for <lists+linux-rockchip@lfdr.de>; Sat, 25 Apr 2020 13:04:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lrSqErniXLfs4efrTkAuugg5Lq6960qL42e0oow+GEA=; b=D7JFWtCzhtonW1El0EMSJolGi6
	nLqXaUI2CJgadM/gpx4gb1eQJh1nXrlof5SW3KzLsEX9y2jf6tHz3WfstS+oDyivvUOFDk7cu5upC
	r8W76EFr1p206QNgZvvvs+biynTDkKXMV6NSr+8WY9UewkypirFdmfPxHxWLm+ukFkisOlfEhkGlj
	mok4QuZqb5jAzjYhNS+zmKf7mhvgV/9rZQreusP0yNBA4uLgcKD7mzuGclKzz/uBSjKIchDGe2c/f
	5TKGZA5+keRh/kvs9g47kJ6o/JthiSEal2qNtKsWaL1DTt58xN9Mq3XxcKeMO2WxynbH2bHLIM2ML
	qg9jPenA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSIbj-0006Ko-OS; Sat, 25 Apr 2020 11:04:27 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSIbf-0006HO-G8
 for linux-rockchip@lists.infradead.org; Sat, 25 Apr 2020 11:04:24 +0000
Received: by mail-pj1-x1042.google.com with SMTP id h12so3279165pjz.1
 for <linux-rockchip@lists.infradead.org>; Sat, 25 Apr 2020 04:04:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=S9a3dMjs8BXiVqfuBIa2xvh8v1BdLUTtASwzmWB671k=;
 b=faUsJCUoUUuqFQh5wY9CaKuQh64s+DGSXlfDNrZUn+kIcWXodXzCbbedpUT+mJzrDs
 C98pzSRZn5nW8gd2YQYM4zjaxV3EgzkAex/a9sghxxEdKJ7DUTMtNgy/5mAzAxEAuZ76
 jux3QoSVKP4lmP/P79+JH3upvDzSYCqLeVO3I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=S9a3dMjs8BXiVqfuBIa2xvh8v1BdLUTtASwzmWB671k=;
 b=OBZ+YNq076YB02LZ2XHKMnXB4zOEz5nuPmyjusFXGXGznNYZHp3OPGxHx+wpuLjwrD
 tugX6ZqtVG5CmJqQ/A1/RtzdNgg8LWEtXFQwSeaNrQdbGsj2C9MidA4cvichvQOjPwQD
 9dp0D5PFxfx07V6snmZtGvuzqedItLNZBGzSJS2v1e0ltHIZxYEsxQ2Yp1+QYkxB8xWe
 SB3/jhbBMCdy7PXjGCSo7ZWv6UbJtbafNhkubLHkEnAFfdXqATpf/Z4OvZmP7soxDnhZ
 QvJVKyLKenhSy50IeCm3kDPKmRBUOPOuVAQ+V5eoAi1NgT+GX9FAIA9jO/G+qHuWEIG6
 WOig==
X-Gm-Message-State: AGi0PuaCDecr4LFEqyZ0lIp4BCuX1RiJ6Er9qpV45KrW7R0ikzywJHR2
 BjD5xkD8gJtJ5y05uVhVDIEbDw==
X-Google-Smtp-Source: APiQypJoBTEsPVDXNwvZWwJrAktBUH4iijyk+4Vox3KAaicuF/o5l4CgBKhYX1R3atXXJicFhamVKw==
X-Received: by 2002:a17:902:bf07:: with SMTP id
 bi7mr2593821plb.85.1587812662574; 
 Sat, 25 Apr 2020 04:04:22 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:1d46:fa69:c34:93dc])
 by smtp.gmail.com with ESMTPSA id
 v94sm6922831pjb.39.2020.04.25.04.04.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 25 Apr 2020 04:04:21 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 4/8] clk: rk3399: Disable PCIE_PHY clock
Date: Sat, 25 Apr 2020 16:33:50 +0530
Message-Id: <20200425110354.12381-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200425110354.12381-1-jagan@amarulasolutions.com>
References: <20200425110354.12381-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_040423_539620_365F9CD0 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: patrick@blueri.se, linux-rockchip@lists.infradead.org, u-boot@lists.denx.de,
 Jagan Teki <jagan@amarulasolutions.com>, sunil@amarulasolutions.com,
 linux-amarula@amarulasolutions.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add PCIE_PHY clock disablement support on rk3399
clock driver.

This would trigger if the PCIe PHY driver failed to
initialize or power on the PHY.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/clk/rockchip/clk_rk3399.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/clk/rockchip/clk_rk3399.c b/drivers/clk/rockchip/clk_rk3399.c
index 8e069fbade..2d447f96f7 100644
--- a/drivers/clk/rockchip/clk_rk3399.c
+++ b/drivers/clk/rockchip/clk_rk3399.c
@@ -1085,6 +1085,22 @@ static int rk3399_clk_enable(struct clk *clk)
 	return 0;
 }
 
+static int rk3399_clk_disable(struct clk *clk)
+{
+	struct rk3399_clk_priv *priv = dev_get_priv(clk->dev);
+
+	switch (clk->id) {
+	case SCLK_PCIEPHY_REF:
+		rk_clrreg(&priv->cru->clksel_con[18], BIT(7));
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
@@ -1092,6 +1108,7 @@ static struct clk_ops rk3399_clk_ops = {
 	.set_parent = rk3399_clk_set_parent,
 #endif
 	.enable = rk3399_clk_enable,
+	.disable = rk3399_clk_disable,
 };
 
 #ifdef CONFIG_SPL_BUILD
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
