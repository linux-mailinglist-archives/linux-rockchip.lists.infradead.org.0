Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FED56A803
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:01:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XGxOXwEKwRrUpnZomIyvT0/494qpG/ECPt+raAJvA3Y=; b=BTHQOP0kKocF1G
	UlY4NOGUkS5txPYz/uk+NMgJumsuE4RStpQb6a0N+X4YnTWkNHEdjHlLvCt0NnBoKzdxRDXcjX44X
	n429lduzntwb+Uf9nQPnIyKVEq30L6IeRi/nuJ7f+kXSjEgr67YR5XTNujLpHyWOHp2pMt3dC+dCo
	t8v5cOKH7mxVBmgfi1/hu/oCruQzEcZgeitOQ45vbZdDkVyk5JBqHuI3s94aN0RFW7Ag2q8ILXCYz
	5r8smop5zFGlORBLajrj92MX9vISjCBku/GItviOJ6sMs+jvSy4zhO2/bkVLGnwx1mK0pFbLGI96O
	R0DKazsVwXf1hUsgOjmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnM9W-0007rB-Jf; Tue, 16 Jul 2019 12:01:50 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM7Q-0004qw-3m
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 11:59:41 +0000
Received: by mail-pg1-x542.google.com with SMTP id i8so9319762pgm.13
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 04:59:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RoiJzXN2kGueDRn1Z7nVcE+ruU+rxsmtLatjH9HI/xo=;
 b=Itj3aDGO48LDH3M9qlVAfxJo0YTjoTLfaS4mbSnYJXvpKyXhrCS2KHSye9X+ppLfsP
 oWdkHlWLVqfCO9Uc9B734pJwkBjezO4cZbfmvU4RbKqBQsntaA6xiSEDhEMYrNM2TYOq
 +ROz0qHwKpyTY7uV1KuJyXY9hleSAVcascEwI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RoiJzXN2kGueDRn1Z7nVcE+ruU+rxsmtLatjH9HI/xo=;
 b=qSquTLJ0P+XA77R1Y+PrTWQa4XIlFrQlsAOHLzrDZ6Vuew9T5ePuBQXvJ1ckUWZNSL
 9rPxNjqoWj4WwtjuI2fu5YdT1ZqviSUNdr6TE5THGekXtM3aha8c1xC4fvA67ps3r8r5
 c+L+Wf5kePgWV3SWQXz3TQhM52r8ajNlVKKlHYIWlGRmnjRmyTKow4AFN/A6RxSOHYBz
 mYzl5u71IJPVtYvQ30KgOuUCkqq0O42P/uBSP40TJvCbFNy0TVj6muCD2zYMFryhGOQd
 J3GA1xcEQwZKwHNyy9rtEcG/UrVdsff+YXVtzQrQRUNRbFagyCui9OUrQ59mFkOQX5mz
 +kYw==
X-Gm-Message-State: APjAAAXe33cpn+EPteCsjs1ZCX7p4Em0ZcSYZzclMN0EH6chhwwnQQkT
 7tfMFJTBCZBK5hv7bu1Gj1KADA==
X-Google-Smtp-Source: APXvYqxZT67UXtSK2SxVRavck4icWhVme9QkKpg0sSrL8SZpoh4f2dGdrIQx8ICD3nivJapahO5hoQ==
X-Received: by 2002:a63:2606:: with SMTP id m6mr32924627pgm.436.1563278379515; 
 Tue, 16 Jul 2019 04:59:39 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.04.59.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 04:59:39 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 29/57] ram: rk3399: Configure PHY RX_CM_INPUT for lpddr4
Date: Tue, 16 Jul 2019 17:27:17 +0530
Message-Id: <20190716115745.12585-30-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_045940_209838_6F14F4F9 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

Configure PHY RX_CM_INPUT for lpddr4 during phy IO config.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index c02f936f2a..2ab10da53f 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -39,6 +39,7 @@
 #define PHY_BOOSTN_EN		0x1
 #define PHY_SLEWP_EN		0x1
 #define PHY_SLEWN_EN		0x1
+#define PHY_RX_CM_INPUT		0x1
 
 #define CRU_SFTRST_DDR_CTRL(ch, n)	((0x1 << (8 + 16 + (ch) * 4)) | \
 					((n) << (8 + (ch) * 4)))
@@ -384,6 +385,27 @@ static int phy_io_config(const struct chan_info *chan,
 	/* PHY_939 PHY_PAD_CS_DRIVE */
 	clrsetbits_le32(&denali_phy[939], 0x3 << 17, speed << 17);
 
+	if (IS_ENABLED(CONFIG_RAM_RK3399_LPDDR4)) {
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
