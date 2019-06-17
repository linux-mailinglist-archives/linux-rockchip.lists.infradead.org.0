Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 478F747B5C
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:39:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aOdMRrYxXhRPmwXtzh5wpjplDO3RRF08UbkBroA7IZo=; b=IhlDjRPA8vQDDt
	BLTRL/NutEvO9sizPPFlbxEJF0pyhLe/iaWyhZrjynOQPGpwhKJZj0X3+ecbeZAsq0Zf9cA229fIA
	h3hCsMF5JR+qQrxI5RSp3NXz1yRDouhG9tVLfFxmAND8WKcaohCyArRg6wTBAhRN8pCJp2EeR3pfi
	AuLlVWmdMgTmcPOwJWKR5UqvCG1k1TypS02fMzxQGjMae5Qffdh/1ORrdiV/ciG7vbaQWfFUwi86E
	477yzjlwR/4XeJ3j3F3ADwEhUzJX2kiCOMd/EEONgO/JuqD8BWG96OLnMAUeLmxFYrhCv7NOhipuI
	lEGPyYFhMeO9ySS4c41A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmF9-0008D9-CQ; Mon, 17 Jun 2019 07:39:55 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmF5-0008Ay-69
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:39:52 +0000
Received: by mail-pl1-x643.google.com with SMTP id b7so3728497pls.6
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:39:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kMuq/MUxV8Ni0CF2+LEOpT5hg6koeYRg0pS88dVCX+0=;
 b=N9fk7OlNlsLODJs5WBAtPI3DMBw5R2vdbOXk0lfZUTBiXeEoV1PBsVAS3gL6xkR2CI
 SvPs4FsCuK5pnUkZnZkNJ2uTT9R6SChGct42Pp7d5sJeT90vVGf1c83yl6xAe3fKi9pK
 V6XDseC2e5k4v48BLlxxV5YdDg1VGNjlCKd6o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kMuq/MUxV8Ni0CF2+LEOpT5hg6koeYRg0pS88dVCX+0=;
 b=WOCOkDO9mNd0c45sbkQYyS+tE95zow906O3GO8MENmh+sRO8IX6A8Bq28B3F608OWN
 gW8KZ+Stki0yjm2o1o4qh1gmcCj0Mlg7ptpunjglxRJ0xEnE1qXPczjZ8m9ea9rro+ft
 uUPSB6NjhIvVpYrDykNv6tPBd0DQKww4wED9Yr63EXf5RdTlchB3HNzUwBnyVC5aDxD9
 +SMfwcHYKVbjqJP+Y9faK8El4hX9kf3Hl84xpwlNZDK19sKzcb1rXu76/BQqkkuXR2jy
 Dnfrlhv/+AgOodjHHki0Uko7xtykFlHeNtbHABkixxPrJdVouMbj0NqSj1ndeE+80jkT
 eVoQ==
X-Gm-Message-State: APjAAAUf7sfrOecD/EAMnAjRWqF+JWZmvDPHUNxIVmQcFwq5r30sBZcp
 4i3oDFVX9hTkxejXQg29Jtlf5x1zfLU=
X-Google-Smtp-Source: APXvYqw4fYXHijoI3c1fr6XH42auiEKFbrD5rf7ao7tUwbgVRnS9rIdqQUfnu1//rSMwIcooZC9kpg==
X-Received: by 2002:a17:902:7d86:: with SMTP id
 a6mr82273687plm.199.1560757190663; 
 Mon, 17 Jun 2019 00:39:50 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.39.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:39:50 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 63/99] ram: rk3399: Don't wait for PLL lock in lpddr4
Date: Mon, 17 Jun 2019 13:02:16 +0530
Message-Id: <20190617073252.27810-64-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003951_287097_C781E5E5 
X-CRM114-Status: GOOD (  11.48  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

lpddr4 has PLL bypass mode during phy initialization phase,
which does all pll configurations.

So no need to wait explicitly during pctl config.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 26 ++++++++++++++++----------
 1 file changed, 16 insertions(+), 10 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 3e7261a950..4d2310cbe6 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -570,16 +570,22 @@ static int pctl_cfg(struct dram_info *dram, const struct chan_info *chan,
 	setbits_le32(&denali_pi[0], START);
 	setbits_le32(&denali_ctl[0], START);
 
-	/* Waiting for phy DLL lock */
-	while (1) {
-		tmp = readl(&denali_phy[920]);
-		tmp1 = readl(&denali_phy[921]);
-		tmp2 = readl(&denali_phy[922]);
-		if ((((tmp >> 16) & 0x1) == 0x1) &&
-		    (((tmp1 >> 16) & 0x1) == 0x1) &&
-		    (((tmp1 >> 0) & 0x1) == 0x1) &&
-		    (((tmp2 >> 0) & 0x1) == 0x1))
-			break;
+	/**
+	 * LPDDR4 use PLL bypass mode for init
+	 * not need to wait for the PLL to lock
+	 */
+	if (params->base.dramtype != LPDDR4) {
+		/* Waiting for phy DLL lock */
+		while (1) {
+			tmp = readl(&denali_phy[920]);
+			tmp1 = readl(&denali_phy[921]);
+			tmp2 = readl(&denali_phy[922]);
+			if ((((tmp >> 16) & 0x1) == 0x1) &&
+			    (((tmp1 >> 16) & 0x1) == 0x1) &&
+			    (((tmp1 >> 0) & 0x1) == 0x1) &&
+			    (((tmp2 >> 0) & 0x1) == 0x1))
+				break;
+		}
 	}
 
 	copy_to_reg(&denali_phy[896], &params_phy[896], (958 - 895) * 4);
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
