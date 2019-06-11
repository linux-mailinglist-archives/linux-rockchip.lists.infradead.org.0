Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 619AB3CFB6
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:55:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Kx/VKuKQqCueHIUeOISKqDhVPC6+41ltt3aeh8W3E8=; b=VLqYzPfmWgJOob
	XaPtlisa2ehIkBLB6CmkNn8DZvZ5tnMUBfW63YkZoi71f+Qw9KWE7gFeOxPsz+xVvUlFGGD6TIL1h
	tUFX+JyrVYu+NO4+99WlxrIqLWqibWon6kzpujfAJ4nJazZ39NxMHxlmYMEq3y/UVz1Vp6UtUgeze
	wXHTI21ZACsP7qHcf2KIOGTk/OTeH0aAq4cQmimXEHt8vOWi6fNA+qGvI5ug/ChWmwVNSnsZS1pps
	44vQcyTo+B3vT4i+nJ+JNlE5N/3MG+Omd9Pz54dS/RXiUSy4D+r6K6KVuwIGjnq/qURbA5Civcc3B
	ml76FkLSy1hqqQKP3InQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiBi-0007ch-AR; Tue, 11 Jun 2019 14:55:50 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiBe-0007aQ-Fv
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:55:47 +0000
Received: by mail-pf1-x444.google.com with SMTP id p184so4303623pfp.7
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:55:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YPsDuHwMsZEcSjNyEXX3p/fPEQA09mtws/4GAANMYcA=;
 b=JKfm4La+6fPXl7zmiv8e4xBqSn4IM2oB7fjTGiV51wC5Q1bFZz2z7291bzHRFeEcMt
 EnM4Hl0WY/2CIeZTfuzkB1CTe6Ss/sMQqephqzZGiC8Cav2kffVy1P7qMKLSGLEVt840
 CpXZ8p8id8o52Wcu7Pq/DGjfJs4O2M+h9cQZ0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YPsDuHwMsZEcSjNyEXX3p/fPEQA09mtws/4GAANMYcA=;
 b=gRF744FJE6EfmwnoPOMx/dhiBGANiFjxnLiXWcnpScwVfXz5zfy5VaWFpIG7lrdS1w
 8dIMavNbu3uORDnlQGVbsdzWlWuk0lZ3zRt9BWnUuB/0LmkdVdU0Lo/6Hh/+CiSucQpN
 nnvP4iPDvonh2q/BRdgIGsHcXcnpc+EdSD0vIrVOmWXil0H4tjsS6ktkI7guw6BA0NU9
 WompsdgxqcDV5v53z5UjNfjnUxcdHmina7Nh+XwevTUK6PXM5A7FitY/ZJtiOc7gCliq
 COoZo3gTX/UrtyAJadNTFHTd3hPMtC3cee8ilSXiW2MhBrd6GURqZHrcoMPTwnf21loL
 6bvQ==
X-Gm-Message-State: APjAAAXU+v0i5Zsxd/lnwMXAjkW5uvSlYTR4GZoZs0zSalA+JyX1TNWa
 SDVkP4cboMsXwgcecs1eYOS8nw==
X-Google-Smtp-Source: APXvYqzyO6FHByPlNUtYFnPSpI51JOUt9kkDtNL2CsS+qJjd0rT/K0AwCQeK63Rz39y6MAERJeb/bw==
X-Received: by 2002:a65:60c2:: with SMTP id r2mr20317319pgv.156.1560264945964; 
 Tue, 11 Jun 2019 07:55:45 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.55.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:55:45 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 59/92] ram: rk3399: Add lpddr4 rank mask for wdql training
Date: Tue, 11 Jun 2019 20:21:02 +0530
Message-Id: <20190611145135.21399-60-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075546_546697_F1BD3513 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

Add rank_mask based on the rank number for lpddr4.

This would keep the wdql data training loop based on the
desired rank mask value instead of looping for all values.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 004a4819ff..f80c8a424c 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -930,7 +930,10 @@ static int data_training_wdql(const struct chan_info *chan, u32 channel,
 	/* clear interrupt,PI_175 PI_INT_ACK:WR:0:17 */
 	writel(0x00003f7c, (&denali_pi[175]));
 
-	rank_mask = (rank == 1) ? 0x1 : 0x3;
+	if (sdram_params->base.dramtype == LPDDR4)
+		rank_mask = (rank == 1) ? 0x5 : 0xf;
+	else
+		rank_mask = (rank == 1) ? 0x1 : 0x3;
 
 	for (i = 0; i < 4; i++) {
 		if (!(rank_mask & (1 << i)))
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
