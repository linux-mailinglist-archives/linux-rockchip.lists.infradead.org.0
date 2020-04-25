Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6DC71B85E9
	for <lists+linux-rockchip@lfdr.de>; Sat, 25 Apr 2020 13:04:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pq9Vou5d6Jkvg/i9kG8JCNLSUM0jcmgMJG5SUYiAJ1Y=; b=RtNEcbHxj6DK8LTOJU8yJ7Cwdk
	OQShxfj8QuMYYjeMgH0gHQlqVaHcg5bhFbV2yhaEaOnnhahsUC1TpJ+frXWGNu0se/YwTc7nuj7g/
	7IfGE/RwDsGZuU12AIgaz0dVr6kFMjLok9pcb30hLmG5di4tH1oGeggIcW4+dEt/Ry4q+mZlQJ9CA
	EXHb5zQdwNbpCoWowkRD3+aLeNu0HgwqWmY6lbIZ0I1K0pWE5Qn7bhLtfNWXLCcFIe3WRARjCXFm2
	IT0YiEjcaAMokkzxxK/4KhoLFtzlcKmXU9LwjKrFiArUydIKD/fT/uM3zxEk8K5ZW5hNzLmwCvzNm
	wjztDq8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSIbg-0006HH-Jt; Sat, 25 Apr 2020 11:04:24 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSIbb-0006Dw-Q5
 for linux-rockchip@lists.infradead.org; Sat, 25 Apr 2020 11:04:21 +0000
Received: by mail-pf1-x443.google.com with SMTP id 18so6113754pfx.6
 for <linux-rockchip@lists.infradead.org>; Sat, 25 Apr 2020 04:04:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/+Cg0gu73GJX3Q4AuxSiTU4pPnB0FtMO+fum27Cjz0k=;
 b=i4NLJ97ybfjVLuRbiYdyz6E//BDTUOcoMTHA1q9GM+iM4uIzFCS9TEkz+WrgfZ8Lqa
 bCbBRT94cixzfpkBKyQk/XmPU0v6IgE8gIvkOJTep/RWy/m6JQYwTqCx5vkM2qvGFI5/
 sMlZqp+nbJxi/B2nBJSEVfulO4rmypItlBK/Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/+Cg0gu73GJX3Q4AuxSiTU4pPnB0FtMO+fum27Cjz0k=;
 b=GhFyK3i0lyWH5etamri3eksASDb8/4/KXqUnw5b9ld2cu16cZSboDLgfVqmtu5LM2W
 PBFVDK9rtuek2PDgKN51NDqVLRjCZlCZwLEoO4KlQ807fLYxXq0aFjnZ+7OJO8Hqim5A
 HeT/Ptml9BgI3isLe2eo6CGp5HI9+vKasWlJIqvA4UfvzAoJVe7exQ+mEm8rb7EGjQbE
 5VORiMO/rzOiwilbBS7SKvZudWw8h9nBpDGZKiwsAYkzXD6l/m2/L+Igbha5GKzFSDXn
 V8/tpnMQ32G8e45qQDwp50MRzLkn3KWwQ9h72rgg5ZeauDQv7a+gKwiBkgsrrAoi79qN
 G5WA==
X-Gm-Message-State: AGi0PubkRmOlx07TmD3HRvfRyYIowPM59WvnpC7nhTSZj41mzrKtmr84
 pSSfJYHZ8wRr3fMq1Gz6vbPo9g==
X-Google-Smtp-Source: APiQypKdb703CcPtTqxv/fQs72i+GyG5pKyXtmH5MoxOep3aCPVHwhJp5/vKifN3IxHXvzp3fsukIQ==
X-Received: by 2002:a63:7f5d:: with SMTP id p29mr13240360pgn.96.1587812658781; 
 Sat, 25 Apr 2020 04:04:18 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:1d46:fa69:c34:93dc])
 by smtp.gmail.com with ESMTPSA id
 v94sm6922831pjb.39.2020.04.25.04.04.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 25 Apr 2020 04:04:18 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 3/8] clk: rk3399: Enable PCIE_PHY clock
Date: Sat, 25 Apr 2020 16:33:49 +0530
Message-Id: <20200425110354.12381-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200425110354.12381-1-jagan@amarulasolutions.com>
References: <20200425110354.12381-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_040419_847253_BDA25AD0 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

Add PCIE_PHY clock enablement support on rk3399
clock driver.

This clock is enabled by default, so do nothing
if it triggers during the PCIe PHY probe other
PHY users on this clock will simply fail.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/clk/rockchip/clk_rk3399.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/clk/rockchip/clk_rk3399.c b/drivers/clk/rockchip/clk_rk3399.c
index d822acace1..8e069fbade 100644
--- a/drivers/clk/rockchip/clk_rk3399.c
+++ b/drivers/clk/rockchip/clk_rk3399.c
@@ -1071,12 +1071,27 @@ static int __maybe_unused rk3399_clk_set_parent(struct clk *clk,
 	return -ENOENT;
 }
 
+static int rk3399_clk_enable(struct clk *clk)
+{
+	switch (clk->id) {
+	case SCLK_PCIEPHY_REF:
+		/* do nothing, clk is enabled by default */
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
 };
 
 #ifdef CONFIG_SPL_BUILD
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
