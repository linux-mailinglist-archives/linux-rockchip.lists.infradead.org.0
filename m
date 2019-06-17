Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19DA647B5F
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:40:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Ag/IWPJLbi9sddTHOl0eI6CRcf0xgm9x9GZg+jj6Mk=; b=ns0Q1OLKRkfFq8
	wd9n62zgNQO8YsuhQdw7xzUmAl9oglgPhye8gDCCl9XLab7MEXVafYkvr80PJxN7U0P9dHRh7S/vi
	Hf7G0VpUCRIWhwanDO8ZGJHpFMdol4XNC8pUYo4nsR1SEfHzPqlzSXeWMZtxSS/ZTg8Po5AyVabVN
	F7emjG+nms1rT++uvPks5lX3BgZ5BDksCd9SyKlI9m3kxx6KFPscfzSpFuWWajQyR4SiAP7rbD3X+
	xErJqU0sOYRlN9KFc809m9KQn6ZsKq+joMrP9PhARmwSAX1tHgvggsXlxF+cAOpjHzZXANWsCp55M
	RLouTEsI5AAZ65+uzWMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmFL-0000DL-B7; Mon, 17 Jun 2019 07:40:07 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmFE-0008IR-Nk
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:40:02 +0000
Received: by mail-pf1-x444.google.com with SMTP id p184so5187608pfp.7
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:40:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hDcmgUgEY6yYP9PFsqXAfHk6qlZhkyllC0WXY9pTx5U=;
 b=ZSEUxPefec0szWhZdcf0DQnBcRLlKuk5KIEMNTze3hdA+Z5tyk9vVtENTd9po5NsT5
 LTuQMXD4vmCJYx4K1wyq73PQTCNL2diCvUT4RvEzUz1B+hM0i1LVj1rMKX4uP91SGufV
 yQXTL8zwrgRNRAyt+nOwpUsM+QhGiCNL5HB+s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hDcmgUgEY6yYP9PFsqXAfHk6qlZhkyllC0WXY9pTx5U=;
 b=QljTKABkSvzfp+FuV+XOf4LOcakTd+GiYzvZ553+Wrt+Ux7viTv79C/qwAVxoLpXFI
 0BOGVal3Gy8U9wLwBdMjclFt0bOxBsYkh46DoOjr7TSu7IAy4H0ylB6l6uw9QNL7w0oh
 GtiYnrIGU/zvTW+VjTOPMQuMvm6ae79ib33LPjPPIfZBST468Qqklw14IqFy31kCdLtB
 GrLfEgwO4Z0cUgoE7tYuC4xLpePrS8yuwZpzhDEaFzFS5FulPv7az7wL4PPDNRTjx3AC
 gdAaG22n90aMO3nBBXnWKCu7HOvN2grflH0TrG9MWqeeHLtlFQUzT6YYeCcq0wujxCyg
 Jjbw==
X-Gm-Message-State: APjAAAVAil1rJdLIr2qE2WfeygiBjsEmnrKMG0a3pIy1+pTYI78BlWKp
 wBG9WNgIely6PPYR5nHNKZ3iMdroGy4=
X-Google-Smtp-Source: APXvYqxNBB+L0X6cG/Cl9j2nK+iwpR6Xb6tovMLYcLaaye2PA1DRAipVnE8kEMKYjrJtMLEurPdlaA==
X-Received: by 2002:a63:eb0a:: with SMTP id t10mr43098746pgh.99.1560757200157; 
 Mon, 17 Jun 2019 00:40:00 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.39.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:39:59 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 66/99] ram: rk3399: Configure BOOSTP_EN,
 BOOSTN_EN for lpddr4
Date: Mon, 17 Jun 2019 13:02:19 +0530
Message-Id: <20190617073252.27810-67-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_004000_870772_936B2FF5 
X-CRM114-Status: GOOD (  10.59  )
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

Configure BOOSTP_EN, BOOSTN_EN for lpddr4 during phy IO config.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index f04819bacb..1a5546189b 100644
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
@@ -312,6 +315,27 @@ static int phy_io_config(const struct chan_info *chan,
 	/* PHY_939 PHY_PAD_CS_DRIVE */
 	clrsetbits_le32(&denali_phy[939], 0x7 << 14, mode_sel << 14);
 
+	if (IS_ENABLED(CONFIG_RAM_RK3399_LPDDR4)) {
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
 	if (params->base.ddr_freq < 400)
 		speed = 0x0;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
