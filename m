Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 464A169ABA
	for <lists+linux-rockchip@lfdr.de>; Mon, 15 Jul 2019 20:22:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X0i1XMWwloEWoVOU37xSFvY3e5ZvoWhfSOKXC+fhuFU=; b=ZUQc0xlFT57YJl
	oK5U+FDnx5LUHIuA2zLRWqdS9b2QLD0+GYGLJrfINCVL4ynFp0xYxzgZ/RCdza65Il8rcQMDoI+Ed
	nJ+vJYF1FAk2j4nkf7482TCaKqDiPLkZU/tnTiyIHWTpRbU88stkwcTdDy+VE7lHzJchusF9/OtBG
	jq/x9UTuLqlFtYUAsUuHShvwcPKMivYTeyr1y+HBHd6V1VsQtVQTW5rgMBpPes1DOBAjJrtA8VoDr
	ghb0iR/KD7irJTFb8OkmjVyrPNbRHKj4pB2DJQ42+Q1mUF3nNLViQ47fZwcLQG0+v0PzvjAc4uzTj
	oLqvLtdCz6wfxdEJI7CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn5bw-0007Bh-6c; Mon, 15 Jul 2019 18:22:04 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn5br-000797-ES
 for linux-rockchip@lists.infradead.org; Mon, 15 Jul 2019 18:22:01 +0000
Received: by mail-pg1-x543.google.com with SMTP id w10so8107267pgj.7
 for <linux-rockchip@lists.infradead.org>; Mon, 15 Jul 2019 11:21:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tOgocXtcb9eoHiA9+8GIY1ESQs7h5zSAVTxuw+oyh2w=;
 b=fijZIa/kX4ifUMHzXsY7u7ghp2yLO+HGVi+RtqakW4UoQBWaWeHD8GK9ik/ovxPYeh
 CH0ehhtge9wxKKCbTMv6HqSqBXFbHwYT8ToNQNyp7aFB2OK1ZJPH3K8Qul7uYI5+h53S
 ivdI58bcoutodsWwx0UB6aEqJZYNinbVrKOEA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tOgocXtcb9eoHiA9+8GIY1ESQs7h5zSAVTxuw+oyh2w=;
 b=KA6P2iZ747/WFN/QGw6okdm5LJxYD1xK9yc1TBy+ZurhF4SZ9iuLImcDHU6UBDB7rd
 uVKNo88J/NWnY+OuXn2IBfum257jBX/vcqVa8W7bZtKjdZ6PYRDTRqqCw7F+E7trGZsP
 36vuYc6LyFwBWU+HV+oySdIMllRO85+VxZXKwP0qaCa6omLU3zcHqe9t5M2YBFHvZOgi
 tanQAmRNTfxkPu2si1V4PZV+TZu8lly1ALDN48hypGVSSdhLwvBMgBPFJHXBKkCj94eF
 5FjveoUOEYL/HQmY/yoKluB6mhL9d8dYoq88cvz/m9MsokukT1kDeJUZJpWbO+qjWgtd
 JGKg==
X-Gm-Message-State: APjAAAV1HW75Pipo6FwZlteu15n4+U/NCsrr0AlyzLlFGDO1Ra25YIkh
 3jYXORfRiFAjvGbQblx4l8zG3A==
X-Google-Smtp-Source: APXvYqw5/2I7RrVBWLNzN3dzgcXn8QduYRmrjw807hooDaydy5qfNXzM4chv07TanSNWQ1GaBIZSMg==
X-Received: by 2002:a63:4006:: with SMTP id n6mr26798435pga.403.1563214918859; 
 Mon, 15 Jul 2019 11:21:58 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id l15sm18152405pgf.5.2019.07.15.11.21.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 11:21:58 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 11/15] ram: rk3399: s/rk3399_base_params/sdram_base_params
Date: Mon, 15 Jul 2019 23:51:06 +0530
Message-Id: <20190715182110.21336-12-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190715182110.21336-1-jagan@amarulasolutions.com>
References: <20190715182110.21336-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_112200_351710_77753E27 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Most of the ddr parameters are common in rk3399_base_params
structure and which would reuse it in another controller like
px30 in future.

So, rename the structure from rk3399_base_params into
sdram_base_params.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_rk3399.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h b/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
index 683093d4ca..5614b94ecb 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
@@ -96,7 +96,7 @@ struct rk3399_sdram_channel {
 	struct rk3399_msch_timings noc_timings;
 };
 
-struct rk3399_base_params {
+struct sdram_base_params {
 	unsigned int ddr_freq;
 	unsigned int dramtype;
 	unsigned int num_channels;
@@ -106,7 +106,7 @@ struct rk3399_base_params {
 
 struct rk3399_sdram_params {
 	struct rk3399_sdram_channel ch[2];
-	struct rk3399_base_params base;
+	struct sdram_base_params base;
 	struct rk3399_ddr_pctl_regs pctl_regs;
 	struct rk3399_ddr_pi_regs pi_regs;
 	struct rk3399_ddr_publ_regs phy_regs;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
