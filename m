Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35AC96A802
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:01:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xfe+f+z1sFRAGnnLoOtEz/XxYYJmsBebkKPCexexAFk=; b=QSYVcpxLlPcVvI
	M1c3IfDo0ksse8Y/iQeT8v04JeHpJRFVXXJrMkf1VxmZm5QhUBMf8ZxddZYhIskoldb7CowK6cx+/
	NxAws8I1WXDVIBWDn4vNyWCjjiVLaL4+mXSD0weH54gSK18uRJN97kzimehoONK9jKViwHqUcFALp
	u3RBxLGxfMBFDaKlNUY2/gtaAh3s3js9xxbbwQWhpAfvkwdrX7ZkC1iRoO9ceQ4bhz9tpqFBrIQAC
	vDZF8V/1E+8ALVq+ihAV/ithQGN/CuprqOnsCANWr2COmHvOrQsJLDy1xccPTJfzeM522vgYH5Qdk
	xHl9Gv2aW25gwLCL7qJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnM9T-0007oO-Sb; Tue, 16 Jul 2019 12:01:48 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM7M-0004ns-Km
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 11:59:38 +0000
Received: by mail-pg1-x542.google.com with SMTP id f20so105638pgj.0
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 04:59:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Rbj7gTTpO1vnkKzf5lTMy85sQ0s2pKEpNhM65tgL3dY=;
 b=l9YG59UTqtJWAqV8sPO7v1iPIbuxwjxRX5Hyw7jkXT0227rXXOttx8CnKZJ+34QxF0
 qVjFLQDn91dTnqIz1REfkDCGzpOoCxh8wrYygnqxPdJegCEw4fZPO0rYwqM9BCI2agyv
 TzgtV4FQaxsiNe8SHsvPoZ2mt1btKSTMfW60I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Rbj7gTTpO1vnkKzf5lTMy85sQ0s2pKEpNhM65tgL3dY=;
 b=ijNHVhr3EfnBVofYlhFa7KWEzrOl7pVg1IxmLMKfk7bmHXOrnVMHQ3EVsPdE/uiBH8
 TL2EHZioeALfjEIWppW6hxt0VF5oERjHYUqrEv5dBK+JA2FoN2+9rq8NtcuMG3GI30Nn
 FyK8dmpjb+2QFWJHNvtCPzemeB6ShNNdA4QeHs7VYvIdHDZPFIwuqkw0nD2xG6JQQcMT
 mOkisOWf09js6aUbwBkABxDGLaz9Qm6V2DmYkIP/1my+Hlw1cBHQBgW1hjvs6tpgNID+
 AVJP3VRTwwMrVXwm/t9rpZuITyLUyjkvgWK2lbXcIjmIPs/OzeI4LQFsd9nXpMNgvGCh
 LWOQ==
X-Gm-Message-State: APjAAAUWjeBU9v4oBRMdeACYZH/Z0FX8awfUFBcF/ab5OIgbZ3kyQp/o
 Fo4CmZsbjq3u9Liq7AidQss1UQ==
X-Google-Smtp-Source: APXvYqxSeVYe1Wkxm3eaD8vaBcbM/Av6+LN30ZbtzvNMVECpmxelCcAeBSx4K+c3CJ+plEAj7fjctw==
X-Received: by 2002:a63:d755:: with SMTP id w21mr33333475pgi.311.1563278375831; 
 Tue, 16 Jul 2019 04:59:35 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.04.59.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 04:59:35 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 28/57] ram: rk3399: Configure SLEWP_EN, SLEWN_EN for lpddr4
Date: Tue, 16 Jul 2019 17:27:16 +0530
Message-Id: <20190716115745.12585-29-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_045936_730097_C94CA5E2 
X-CRM114-Status: UNSURE (   9.12  )
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

Configure SLEWP_EN, SLEWN_EN for lpddr4 during phy IO config.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index a9e092c39f..c02f936f2a 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -37,6 +37,8 @@
 
 #define PHY_BOOSTP_EN		0x1
 #define PHY_BOOSTN_EN		0x1
+#define PHY_SLEWP_EN		0x1
+#define PHY_SLEWN_EN		0x1
 
 #define CRU_SFTRST_DDR_CTRL(ch, n)	((0x1 << (8 + 16 + (ch) * 4)) | \
 					((n) << (8 + (ch) * 4)))
@@ -334,6 +336,25 @@ static int phy_io_config(const struct chan_info *chan,
 		clrsetbits_le32(&denali_phy[937], 0xff << 20, reg_value << 20);
 		/* PHY_939 PHY_PAD_CS_DRIVE */
 		clrsetbits_le32(&denali_phy[939], 0xff << 20, reg_value << 20);
+
+		/* SLEWP_EN & SLEWN_EN */
+		reg_value = ((PHY_SLEWP_EN << 3) | PHY_SLEWN_EN);
+		/* PHY_924 PHY_PAD_FDBK_DRIVE */
+		clrsetbits_le32(&denali_phy[924], 0x3f << 8, reg_value << 8);
+		/* PHY_926 PHY_PAD_DATA_DRIVE */
+		clrsetbits_le32(&denali_phy[926], 0x3f, reg_value);
+		/* PHY_927 PHY_PAD_DQS_DRIVE */
+		clrsetbits_le32(&denali_phy[927], 0x3f, reg_value);
+		/* PHY_928 PHY_PAD_ADDR_DRIVE */
+		clrsetbits_le32(&denali_phy[928], 0x3f << 8, reg_value << 8);
+		/* PHY_929 PHY_PAD_CLK_DRIVE */
+		clrsetbits_le32(&denali_phy[929], 0x3f << 8, reg_value << 8);
+		/* PHY_935 PHY_PAD_CKE_DRIVE */
+		clrsetbits_le32(&denali_phy[935], 0x3f << 8, reg_value << 8);
+		/* PHY_937 PHY_PAD_RST_DRIVE */
+		clrsetbits_le32(&denali_phy[937], 0x3f << 8, reg_value << 8);
+		/* PHY_939 PHY_PAD_CS_DRIVE */
+		clrsetbits_le32(&denali_phy[939], 0x3f << 8, reg_value << 8);
 	}
 
 	/* speed setting */
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
