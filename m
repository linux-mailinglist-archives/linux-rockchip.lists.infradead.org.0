Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B383CFEA
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:57:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5E2ljDcJNmphuByRFBfa9PuzzpxOO8aYUB/tFTna268=; b=pppow/aKK3cEkp
	I+vKTRV/H6pKz3kYU6GJZAT1mg5qxBIPBBf7jPlmKhUzCmYcJnhI2QTDlwgrdIe8K6QVEMaSsUzQV
	TrSMEH4IxDKPHAm2YbThYMO8J2u7zIXT0kqrb2IIAMyd5lsokXOuAwfviAOnxROHIJ3ixf6BycbDm
	DQGgBpzcCyPro5U0XLIfzJ7tGuV4ObdHxscHWwbSSaQObORv79hRpjnC3CvWCx1DseyNBgluHtBi2
	ZzIH/eslXhXTSVZHDrpxbDzxWo7ZhsNdssaAiGZdGDHfZZODIGepcQOSdah0WKBGD2LWUMh9Q+RyL
	DaY3ZcPbgMrF/u9xz5vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiD0-0000FU-3X; Tue, 11 Jun 2019 14:57:10 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiCi-0008QZ-JQ
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:56:54 +0000
Received: by mail-pl1-x643.google.com with SMTP id cl9so5221667plb.10
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:56:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EVzetAd1OkF45Ou1v8dASP8ipKtVAWLCo38xLJGywqU=;
 b=otUXCN6CTvScnJmh/5u8TExnE43aWbUu7FdLSLjfYppiL5jD5JW69qss05nlwaMwhn
 GZtWOPTLMI66NED4hgQwjTtDqXeY+cC1czC2vKkaHQ5ZvAJtTykxzob/yRcpi7GmOeFw
 OheDpWATvh7scl2ZfC+rOieDWye7DqPq5SXDQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EVzetAd1OkF45Ou1v8dASP8ipKtVAWLCo38xLJGywqU=;
 b=oKhzOVoy3G3AeZ2ypcUfs+26DmsAWFVfMO0KMq0RXoQjfbpSxZ0gpFKjTq53hDGmTw
 IkzqL2o5j+aFG+p3aWNUHZk060kgC2fLSQdZWtrPbH2ewuVpa7ocqGy16QMr812rfejb
 k50GMdS5hom04QO1BshfU77MB49k4m0ghFW0xuun8jyronSjIuSHPRhc6k3Di7PNMOVg
 ZmSUj0IuYVdtAViD7vQ+SADpoljNpj0/bFzuv0O63GGDkQiYV4YXJq1AKfEZLkjgTfjA
 dHNVmjANLIMZoEPeGt9tG8gi6YwvvlbQHegLXYpNf/m0m67vWMF0FzqBVfy3bgsMsow6
 yPVA==
X-Gm-Message-State: APjAAAVII/9cvXEEMfg/khqVvGT115KVcqAOyx4N7Bvt992tnw8DATXa
 xNMdvh7JTRnrwtBDDzZgz7uFcA==
X-Google-Smtp-Source: APXvYqwsqfnhN2oVeWx547srYR+bas8YNRYCsze9HmngNQsRNCZHe5wTqkmG4i/eTulgNw+Bo5MlPg==
X-Received: by 2002:a17:902:988a:: with SMTP id
 s10mr76940856plp.304.1560265011799; 
 Tue, 11 Jun 2019 07:56:51 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.56.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:56:51 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 76/92] ram: rk3399: Update lpddr4 mode_sel based on io settings
Date: Tue, 11 Jun 2019 20:21:19 +0530
Message-Id: <20190611145135.21399-77-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075652_686623_8832EA17 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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

The mode_sel on lpddr4 value is depending on IO settings
of rd_vref.

Add support for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 413469f4cc..618327983a 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -349,7 +349,7 @@ static int phy_io_config(const struct chan_info *chan,
 	u32 drv_value, odt_value;
 	u32 speed;
 
-	/* vref setting */
+	/* vref setting & mode setting */
 	if (sdram_params->base.dramtype == LPDDR4) {
 		struct io_setting *io = lpddr4_get_io_settings(sdram_params,
 							       mr5);
@@ -358,15 +358,18 @@ static int phy_io_config(const struct chan_info *chan,
 		if (rd_vref < 36700) {
 			/* MODE_LV[2:0] = LPDDR4 (Range 2)*/
 			vref_mode_dq = 0x7;
+			/* MODE[2:0]= LPDDR4 Range 2(0.4*VDDQ) */
+			mode_sel = 0x5;
 			vref_value_dq = (rd_vref - 3300) / 521;
 		} else {
 			/* MODE_LV[2:0] = LPDDR4 (Range 1)*/
 			vref_mode_dq = 0x6;
+			/* MODE[2:0]= LPDDR4 Range 1(0.33*VDDQ) */
+			mode_sel = 0x4;
 			vref_value_dq = (rd_vref - 15300) / 521;
 		}
 		vref_mode_ac = 0x6;
 		vref_value_ac = 0x1f;
-		mode_sel = 0x6;
 	} else if (sdram_params->base.dramtype == LPDDR3) {
 		if (sdram_params->base.odt == 1) {
 			vref_mode_dq = 0x5;  /* LPDDR3 ODT */
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
