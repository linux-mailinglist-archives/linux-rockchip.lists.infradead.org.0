Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A106A7FF
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:01:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=96Bo68aCZ1wMLg0gPKKPsha7XTUSYquqdU6sHKjwqA0=; b=bQFclcmB8dyQlu
	izNfA9PdvpDtO29rRW2qJ39jL++5aNuzcSAy4j2Klp5Pn0mC2vsWpUp6/b6w5mN5hqdeKHmgL3nXZ
	Low8dmHfnXWc5Ahfj0MdZzyCrH2eLPKGNWEmQvBLJVq1wn49C4IZ7ee4Q83BM2NPLyEuCLnfT/u0D
	m15a4+E78RbbbsM3sotp1NmakA3mFIQCde/1EEEM4EWwmvU4/dLCtJ5/8c53+VR/Fbm/RUPtCgQUA
	jl9HtPwiLAK9MnpakcB+5QoiS1dMTPxlw7mXEk+4fPy1aCcO1dHp7SuLEERDls7ageS1jcqCVM4us
	nKPA8/S2KXpNcRlJgEVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnM9M-0007i6-5n; Tue, 16 Jul 2019 12:01:40 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM7B-0004g1-Me
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 11:59:30 +0000
Received: by mail-pl1-x644.google.com with SMTP id c2so9980021plz.13
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 04:59:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ytkg3u87YIDa47ShbV1haeOc0wg13Q/l2pqMvwhDtcY=;
 b=A0wocJqoUSHpz0XxE7jQIFT1oU4uexnHZcPfzIWGIw8QuJLI98W3rrdxJZeSVnyxUM
 AAJJ/ZVQs2prl9Co9HbQCZO2LdOf9YMLnFKHEBGuf0Q2Eapz/UX3mKI+n+u/Vdy73j/N
 FnML8piKVMNGwTNgOLvBQsdws4/aVxm4o0QIs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ytkg3u87YIDa47ShbV1haeOc0wg13Q/l2pqMvwhDtcY=;
 b=o+/dFyoIvkhRaKu+HPwy1tDl2JkDPKX4x1d7mQzgFnUGHrmLX55UAZkNtT/BP3qa8W
 FRdseWCoIVrfP3X9+NuwFM+GvQjps45PII/Fw9DD+ggAEEV4XmW3+DkXvYJFpc6vxYvO
 JClvftJZzwBnD20urqX0wwfiUi1BwrLYly9c8MQU4HjKti+tIy0mSStK+3qa9Eh4dFOj
 yI+GHx9Y+147HbJTbHpbfJNkowvVuFiWXoqg7IAw6+O2E8g/c5QIDw/5KHRVOnaXtYeA
 tT522KqBMaI7HX+Ol82n8DU+bLgJIPCgTaVKDaGxy+J1Dx//HyciGlHFLMfqYVp2m691
 SfiA==
X-Gm-Message-State: APjAAAVW7N/FOhZumVuPQiG2nNQ5b8pV8ZH1lS5R6cKVG351dFaN0lGo
 wkoRZdVo4LoM/5z3wk190MDAhw==
X-Google-Smtp-Source: APXvYqytdvqF3efZKGu0paioQMVUdnaV66R5nTCO6ZkOw/KnwJUxduzojYumuTplMjzcO/JUpRuATg==
X-Received: by 2002:a17:902:54f:: with SMTP id
 73mr34128376plf.246.1563278365055; 
 Tue, 16 Jul 2019 04:59:25 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.04.59.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 04:59:24 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 25/57] ram: rk3399: Avoid two channel ZQ Cal Start at the
 same time
Date: Tue, 16 Jul 2019 17:27:13 +0530
Message-Id: <20190716115745.12585-26-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_045925_788445_2C624E95 
X-CRM114-Status: GOOD (  12.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

It is possible in lpddr4 dram, where both the channels would
start at same time with ZQ Cal Start. If it uses ZQ Call start
then it will use RZQ.

For example LPDDR4 366 Dual-Die, Quad-Channel Package, RZQ maybe
connect to both channel. If ZQ Cal Start at the same time,
it will use the same RZQ.

It is not a problem of using RZQ in both the channels, but can not
use at the same time.

So, to avoid this, we have an option of dram tINIT3 value for
increasing the frequency for channel 1.

This patch increase the available tINIT3 with existing running
dram frequency.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 023838a301..beb4f6de54 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -550,6 +550,20 @@ static int pctl_cfg(struct dram_info *dram, const struct chan_info *chan,
 		    sizeof(struct rk3399_ddr_pctl_regs) - 4);
 	writel(params_ctl[0], &denali_ctl[0]);
 
+	/*
+	 * two channel init at the same time, then ZQ Cal Start
+	 * at the same time, it will use the same RZQ, but cannot
+	 * start at the same time.
+	 *
+	 * So, increase tINIT3 for channel 1, will avoid two
+	 * channel ZQ Cal Start at the same time
+	 */
+	if (params->base.dramtype == LPDDR4 && channel == 1) {
+		tmp = ((params->base.ddr_freq * MHz + 999) / 1000);
+		tmp1 = readl(&denali_ctl[14]);
+		writel(tmp + tmp1, &denali_ctl[14]);
+	}
+
 	copy_to_reg(denali_pi, &params->pi_regs.denali_pi[0],
 		    sizeof(struct rk3399_ddr_pi_regs));
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
