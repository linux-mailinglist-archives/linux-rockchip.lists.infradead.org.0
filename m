Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6698E3CFD5
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:56:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7uZAvUbyo4zI5ftzhzhChC/5EVxgQDGyhk9/f5fnWgA=; b=E0LFok+BsIM3s/
	Tqu89RdPANE5Ss0I16N/0R2QrtR4cRYQBwHusDf9rVGU/RD+PAny0QAvoNc3oyiTvrbZE5o4vJF8d
	BRuqedE0A0z6GCTmrnG1a5oHB3zSl/PZQAj/XpL0I1OmyyTqesM+x7gtkgWyqaKgLsviKHKDZxqCI
	ySpT4iSB6UADhllnKdcMcDpLOzBIApOY8WTSj28hGL4NiXnhrsHjUSUR6SF3RBLSep3GZmbsmkoDK
	67gH1+O/7ljsmi7+vROPzZFX0210OsPFYzSrUDDwNl3PdboGvCiM5VQv2HAW+DLN843pKI/vB4s/0
	4vzYs0sFoTYDjyQb7jVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiCA-00080E-Ai; Tue, 11 Jun 2019 14:56:18 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiC5-0007wn-NB
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:56:15 +0000
Received: by mail-pf1-x444.google.com with SMTP id i189so7586941pfg.10
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:56:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lHIlhtc4hn8aPvwui/UYtP3RQ7a5tpEUgL/90QN/WxU=;
 b=oZa0p48o/ZBNkvBFikTlvTxUkOiJZclW4NojpqCg9cWUuDSfycVCPQ+0fhk3HQyigX
 ZuPsE7S9c5ya4iZfhFb/GhH1SD7lH/XeBSxkIEDpx2lH6vXOyF5giwdBmMysXSIwtl+N
 TPpNvwki10EqAL56ZI5ZhixkAMKHOksKiDl1U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lHIlhtc4hn8aPvwui/UYtP3RQ7a5tpEUgL/90QN/WxU=;
 b=kQ6IhBt3HTjVOv4QtdLSLTkISsBruwnCnMka8u3fcrkZ5F1+UpP7dsrWghLUWqJ7wX
 iG/obD7PgohiZK70ukftYVKWu3hvaP7ydwGUSGx/lM/twrGBZQgUPgZhvNA1zVCWjF1z
 SyEjlqMR075Njr4sMWhn1hYRV5UEra3/iv3CNj348TlpP7hhOOUFy/ik+0oaCYyn2N1b
 AjeIC6rUwxBRUAIuuhggRXZuUELza4pCvbgt9pwPT4Oe13CC3y6lr2EtWAEZlBhFhOTs
 vMR5T17oIjJT1+kiW5hnvI1FpeMeNFcRfBYEcmIFpU92GyuYMPUwgKvwifoEA2Wz2Epa
 /H2w==
X-Gm-Message-State: APjAAAXk7hq0BIUpLnNxaaJug12Bk9A9esiIsPBiqBr0Yp9RC/XhKab8
 C1tNe3jw45suFqy9koXeteYibw==
X-Google-Smtp-Source: APXvYqxcvYBYKOGKRYoQpkJ8tRZFUlIYbaTZDsvwFnsohvlg/CQNSANjVrTR9tUsu6kvTUg+XGo1gQ==
X-Received: by 2002:aa7:9f8b:: with SMTP id z11mr14189987pfr.121.1560264973127; 
 Tue, 11 Jun 2019 07:56:13 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.56.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:56:12 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 66/92] ram: rk3399: Configure PHY RX_CM_INPUT for lpddr4
Date: Tue, 11 Jun 2019 20:21:09 +0530
Message-Id: <20190611145135.21399-67-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075613_859283_405025BC 
X-CRM114-Status: GOOD (  10.15  )
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

Configure PHY RX_CM_INPUT for lpddr4 during phy IO config.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 78e249e164..13c552649c 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -39,6 +39,7 @@
 #define PHY_BOOSTN_EN		0x1
 #define PHY_SLEWP_EN		0x1
 #define PHY_SLEWN_EN		0x1
+#define PHY_RX_CM_INPUT		0x1
 
 #define CRU_SFTRST_DDR_CTRL(ch, n)	((0x1 << (8 + 16 + (ch) * 4)) | \
 					((n) << (8 + (ch) * 4)))
@@ -385,6 +386,27 @@ static int phy_io_config(const struct chan_info *chan,
 	/* PHY_939 PHY_PAD_CS_DRIVE */
 	clrsetbits_le32(&denali_phy[939], 0x3 << 17, speed << 17);
 
+	if (sdram_params->base.dramtype == LPDDR4) {
+		/* RX_CM_INPUT */
+		reg_value = PHY_RX_CM_INPUT;
+		/* PHY_924 PHY_PAD_FDBK_DRIVE */
+		clrsetbits_le32(&denali_phy[924], 0x1 << 14, reg_value << 14);
+		/* PHY_926 PHY_PAD_DATA_DRIVE */
+		clrsetbits_le32(&denali_phy[926], 0x1 << 11, reg_value << 11);
+		/* PHY_927 PHY_PAD_DQS_DRIVE */
+		clrsetbits_le32(&denali_phy[927], 0x1 << 13, reg_value << 13);
+		/* PHY_928 PHY_PAD_ADDR_DRIVE */
+		clrsetbits_le32(&denali_phy[928], 0x1 << 19, reg_value << 19);
+		/* PHY_929 PHY_PAD_CLK_DRIVE */
+		clrsetbits_le32(&denali_phy[929], 0x1 << 21, reg_value << 21);
+		/* PHY_935 PHY_PAD_CKE_DRIVE */
+		clrsetbits_le32(&denali_phy[935], 0x1 << 19, reg_value << 19);
+		/* PHY_937 PHY_PAD_RST_DRIVE */
+		clrsetbits_le32(&denali_phy[937], 0x1 << 19, reg_value << 19);
+		/* PHY_939 PHY_PAD_CS_DRIVE */
+		clrsetbits_le32(&denali_phy[939], 0x1 << 19, reg_value << 19);
+	}
+
 	return 0;
 }
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
