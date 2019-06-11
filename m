Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F01E3CFD3
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:56:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Ff5/1pmNMZpRSXVlckIf+aBsLKdKFdib/LGzDwlITI=; b=dPxHo83uhs0Zrn
	Xppl99TH4zFudXyzDzA2HCoVhaElssYg0S0YPD92e2WARGtWBaNQKHfJrRmavOiMZQzKZHHre/PiK
	T9kbUeFRLMLglPvf2GVOq4q4As/hlCNzc7BRhmqDfC4aWhWJ43ixPaIVJe20S/zs5MjUhuB3az9ZS
	1XmefXlcZamYHpk/kzW44iGkLxvVZskU3aJ0qpllO7n3eyV3HyIs24YKGC/TOk9ymLgs9qfqmvTx1
	llN+l+oa4Sf4eUNnkSKyq1Eg3zxZS4F+gRA1DNkpoWRiGvxxNhwF2MhT1HWSuRD4zmQnSNcmmTvH5
	6Ebc6cqFrnGs54UESvKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiC2-0007sY-6e; Tue, 11 Jun 2019 14:56:10 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiBy-0007po-1F
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:56:07 +0000
Received: by mail-pf1-x442.google.com with SMTP id t16so7583325pfe.11
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:56:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tIWk7gFh8c/pZ29462fIFinB2tOvSTfoq9zVwh/fWgs=;
 b=Zclbl/Tt5bnlKsB/1qikclQ54BTxZGnTP4+REzcLBm+fhI4/0G6qqDx6/uXKVj4xeU
 X6EKYS1lcpvn/2gLtvkuTZfm/5Zf76lH7J37FIjKhhgybU1M2Q5SB8nkwRXUbBWGvsA8
 T4STt/7btztM/T7oK3wb+0wsB76S9nC2fhuNU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tIWk7gFh8c/pZ29462fIFinB2tOvSTfoq9zVwh/fWgs=;
 b=E4wKRfjrPHcBqAtdLd25HvsGBlDoH9ga/9gfML2C2HNkAHJRGgAY+1MnaVEbRibYQ0
 TYTMBgDxXtNtp7X9FJv/QfjeIYtyhyO3D6EhZ4FyVwnuJTQbitE6w/jDT7b+hGJXKPOX
 0f41Q+zEMKoJdAz4Gt8QlNuodRA06g5VuEqWKBZgl2xWvcw/9iwteCk00bNc2+3wD37h
 kNoz37f567zpgpyWIAIci/S9BVLyXFH4sXFoJJ+SeFnKLLe/HrgN3eZGmBKeafea1lwk
 ktYgkuhM/uvYWGYxx8SASjNyvznEyjDim6KNFtaRUammZUbaZx0q1G6VKuzUBBZ2Njzb
 EYew==
X-Gm-Message-State: APjAAAVDjQktqGlqUfWV9hqt1uCM0u00nvhnelruXSU/qXEAswWX45nE
 2rd3H6xHC2DB2DgC9JPqN7zJp78OgKc=
X-Google-Smtp-Source: APXvYqxGOZGZncd2fb5EU4DuPP3WtH+rDrkfGkvVUOP/E8LE/iCEx93lVPxIxQKGkoFd1tFJEJ4foA==
X-Received: by 2002:a17:90a:730b:: with SMTP id
 m11mr27129430pjk.89.1560264965427; 
 Tue, 11 Jun 2019 07:56:05 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.56.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:56:04 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 64/92] ram: rk3399: Configure BOOSTP_EN, BOOSTN_EN for lpddr4
Date: Tue, 11 Jun 2019 20:21:07 +0530
Message-Id: <20190611145135.21399-65-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075606_187701_6BB8955C 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

Configure BOOSTP_EN, BOOSTN_EN for lpddr4 during phy IO config.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 7d2359740c..4328790a4f 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -35,6 +35,9 @@
 #define PHY_DRV_ODT_40		0xe
 #define PHY_DRV_ODT_34_3	0xf
 
+#define PHY_BOOSTP_EN		0x1
+#define PHY_BOOSTN_EN		0x1
+
 #define CRU_SFTRST_DDR_CTRL(ch, n)	((0x1 << (8 + 16 + (ch) * 4)) | \
 					((n) << (8 + (ch) * 4)))
 #define CRU_SFTRST_DDR_PHY(ch, n)	((0x1 << (9 + 16 + (ch) * 4)) | \
@@ -313,6 +316,27 @@ static int phy_io_config(const struct chan_info *chan,
 	/* PHY_939 PHY_PAD_CS_DRIVE */
 	clrsetbits_le32(&denali_phy[939], 0x7 << 14, mode_sel << 14);
 
+	if (sdram_params->base.dramtype == LPDDR4) {
+		/* BOOSTP_EN & BOOSTN_EN */
+		reg_value = ((PHY_BOOSTP_EN << 4) | PHY_BOOSTN_EN);
+		/* PHY_925 PHY_PAD_FDBK_DRIVE2 */
+		clrsetbits_le32(&denali_phy[925], 0xff << 8, reg_value << 8);
+		/* PHY_926 PHY_PAD_DATA_DRIVE */
+		clrsetbits_le32(&denali_phy[926], 0xff << 12, reg_value << 12);
+		/* PHY_927 PHY_PAD_DQS_DRIVE */
+		clrsetbits_le32(&denali_phy[927], 0xff << 14, reg_value << 14);
+		/* PHY_928 PHY_PAD_ADDR_DRIVE */
+		clrsetbits_le32(&denali_phy[928], 0xff << 20, reg_value << 20);
+		/* PHY_929 PHY_PAD_CLK_DRIVE */
+		clrsetbits_le32(&denali_phy[929], 0xff << 22, reg_value << 22);
+		/* PHY_935 PHY_PAD_CKE_DRIVE */
+		clrsetbits_le32(&denali_phy[935], 0xff << 20, reg_value << 20);
+		/* PHY_937 PHY_PAD_RST_DRIVE */
+		clrsetbits_le32(&denali_phy[937], 0xff << 20, reg_value << 20);
+		/* PHY_939 PHY_PAD_CS_DRIVE */
+		clrsetbits_le32(&denali_phy[939], 0xff << 20, reg_value << 20);
+	}
+
 	/* speed setting */
 	if (sdram_params->base.ddr_freq < 400)
 		speed = 0x0;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
