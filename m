Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ABDD3CFAF
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:55:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8juhjORrjxXEj4S/J69eJ4ozDpZ+RPxflLwoaiG/Um8=; b=DvOHFlEZGyl5FG
	7MO3/QDj02aTUdW7nsS8lEM5hPT8QJuYp7UZwGZRWwsCUcn6T7sCpC1QB86MwiQtjDMOhK1C4lMnA
	m2IttRFXvbF/GJASwWoK4+/edRa6R8BPwB66KJ6yI0VMaHKc1BtEMgi01O4D3tmBYzMSYV4d69HUV
	7NKVkpEQtK3CLZWUZUT80nxiWtiU33tRpZ5DUFfJcB+IbNqav5DAnS0L895JYmC6qhHjkhOLYbYQh
	quVvoj+k6Hcus8a49P4qfYnBVflJyGbuPIaf/4uBO1iMzeyXKSJuMBsrWXhcNue822YuM4yb/hdjA
	DluTG4TqZgsCxX/PWChw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiBO-0007N1-NU; Tue, 11 Jun 2019 14:55:30 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiBL-0007Kl-39
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:55:28 +0000
Received: by mail-pl1-x641.google.com with SMTP id b7so189302pls.6
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:55:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nmwFUqUOCS8iVkKDxNTkju/mBzepfxNYBfFL/J8gC6k=;
 b=LjnB6IpZ0Y+gNjsLl/ftx6TPbz0iUGYoMqMHgW++bbo0ZfPZiOvhyMpCHKqtla3NpL
 yKbtsJi03n/Wcn7NuA03Mi7ytjpdGOv4jNds7rZM6GzEfPkaP+iDyMMs0mHD8Eit+Ghg
 m7C3hD91IZl14IOUXokveTSfrk1zzDqDI1iiw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nmwFUqUOCS8iVkKDxNTkju/mBzepfxNYBfFL/J8gC6k=;
 b=UcLUKLE44karsIKhdrkZYqx/Vw77QfVNkslvZJaAT4iRIMWf64PwP9wrT5HZrDGsmH
 Rg7OswDMdNSO+wm7c0SLAqmdP8LrIgewmSmt6BkDFuXB7yUIP5JaIfq3f28IkADWDouz
 FORJccuVMcQTphA7keg+VEFfvcTYnQsCROwtgrIrYK18eHpHwV3P8fo5wO3o4USuiyGO
 sskqti6h/2I5PsPIXLCgeitnwiO7LuPndMyULNnwO7I5QELjHEh4Q9uzOpwJUOLxSlim
 we6CAzriUg9YDaWHl1l43Ty1Nnr5mlAfowEMVJM+tdMCcvnw3T4X+KOyxhBdDPtPmcsE
 rNWQ==
X-Gm-Message-State: APjAAAXG+aWTSChTI4K8KvWtNQnMmAVe0oXH07TBBpKZ14W8xXhWZBgl
 5kdlMGJWt8Li1FRFqEBtAixK8A==
X-Google-Smtp-Source: APXvYqxxfDetGSjnhQGFjgOzQqIJ+OjGOS8Osf8b4tK+n2yinV8sxjFGWzIquyVawQp9eXTg7oIGmw==
X-Received: by 2002:a17:902:70c4:: with SMTP id
 l4mr40759268plt.171.1560264926408; 
 Tue, 11 Jun 2019 07:55:26 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.55.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:55:25 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 54/92] clk: rockchip: rk3399: Set 50MHz ddr clock
Date: Tue, 11 Jun 2019 20:20:57 +0530
Message-Id: <20190611145135.21399-55-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075527_133231_210D4D74 
X-CRM114-Status: UNSURE (   8.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
