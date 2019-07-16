Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E40556A81A
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:02:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OMN7aJwXW5Lo/sytI8kJVCJ7BEGFw4F/a3GWWy/EhdE=; b=FfamXW8wn7NZsP
	9KY5fmIh8oOgnsmu0F2PLv66fDcHH5Dz36jtjNGwDm04Gjy8UE1UBMDSf5zjn0f6Eq/fW6nDRTW1c
	7PHDWnMGpsEAou0CISu++kHcWYWTlf9r7VMv2aQUl9LaWWHnACT1iVwY3Q+Xysp9TQE5YfU0LXCKr
	ZHl3sDVde9/D1sWJKv0cX8vQj7AoJAizFqphe1gzVA9OMeoigf4Bq0r+ItvCq9cd9OjxovrpvzVLC
	aCqra/Zg2uJbWHzE3QtarqCkjiGxB0LZXdebtEEJlJXo6h4qOC+j0Q2X4DQiIbqlAGhvKCyN4tpU6
	sA7XrKZxjtABGnjALABg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnMAJ-0000AB-KO; Tue, 16 Jul 2019 12:02:39 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM8W-0006uB-1n
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 12:00:49 +0000
Received: by mail-pf1-x444.google.com with SMTP id y15so9017293pfn.5
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 05:00:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VZZq8s/MFgMQ4+KCax6f04xB7tKYUG01ZRKiMSlIBrI=;
 b=JNz42c7msePQb/qd4ACFMMUIEGF27xINdJ8K/zfiaoDrQT7qBZbrSdi7Tj5wmXSKpI
 0CWVW80NB1nzvBbLVPFDUcuxltTpOzPAq1M8FsfyigXzKfwKbzFBb9+4WjrZpw973qWU
 dgkbc0D8CuyjAUiftNS662w8JsjJGE2Ts2Rd4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VZZq8s/MFgMQ4+KCax6f04xB7tKYUG01ZRKiMSlIBrI=;
 b=lAPqFCRzK9d1gQ6rC2DzIMooCC4RzeH+Cr0CXGBR8CeFezPLTA8aXmaBbuwIN7viT5
 dB0OJDI8HzAKRckCjq7nELKqC/mteqhjJ6jfZm5zBqTFfX3Fy471kVAhxhow9aR4TMG1
 nPkdNr2sgLia8SqEBmzoB+eYJiEm5kAuPvld77IJZBSBemNMuiwPVqv3sPwzvPrVxzWl
 d2Lp/5c3jndPilyNycoskFoK3Uvjlphbk3PnEmmgjUUExwweW6El4/VTeD7pFhpRYjsJ
 2EvFzfjFeUM2hcE0E42M/YQ0BHlSBkck2GOI4GBVwBfMWfctea5RbQkiwmrB+Z+jXCUs
 1T0A==
X-Gm-Message-State: APjAAAXGl1Z9trXRgH7oql/4Kspm4Fg8NzIMqQK1hg0Oz3VGCCK6/vdN
 klXGia4c3wCT43JUV1GZJ/7LTQ==
X-Google-Smtp-Source: APXvYqzyDYzvWF9eb3T2/ToX1xZW9N6lIoYR2F28qs0ws76XPHiJRUk+n89Nu4yrzjPbg334REqzhg==
X-Received: by 2002:a63:7a01:: with SMTP id v1mr33887212pgc.310.1563278447333; 
 Tue, 16 Jul 2019 05:00:47 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.05.00.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 05:00:46 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 48/57] clk: rockchip: rk3399: Set 400MHz ddr clock
Date: Tue, 16 Jul 2019 17:27:36 +0530
Message-Id: <20190716115745.12585-49-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_050048_123353_9854F625 
X-CRM114-Status: UNSURE (   7.83  )
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
