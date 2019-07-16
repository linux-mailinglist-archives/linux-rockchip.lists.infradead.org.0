Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5680C6A801
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:01:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kb0dRkUkpGa8X3Te305/uCzx3x6IwPXVTBDMlLmNJxo=; b=d8guVcu5a/eQ/O
	2/YWeRIYVngTYSFTG7Y50LBuYpR/ONOU2b05F8XeeN7O03yycGW5Yw5VQvXxGIp5ZnWnTENnyxWAM
	aII/HrwD6HKJsBeTBXOgZON+yudYfcvHy7Q5tLcABstpHiaLWP+AauPJdo1ilMQf/Yg0R53TKeOvb
	wp7OZz/JIQPUBFbarEdVCiyc29hgFHuitfcXtDBO3GLeTlstW/K10uy0uTpHzLfmcm7IOJE4YGbEZ
	pib9I+YNn0aj/Mo8QuKuT0lABauxVyv2s4O3YPVkVThAKboM34A7CO3J5eioUC/7WBQWFKPZb3ezp
	ebtp/8mBU2SebpTyPQWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnM9R-0007mV-6N; Tue, 16 Jul 2019 12:01:45 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM7J-0004l4-BE
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 11:59:36 +0000
Received: by mail-pf1-x442.google.com with SMTP id q10so9001441pff.9
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 04:59:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZHqXR/rfvXNWUhdf9JppdKSegbEAyVwI+s7vLkLDNcY=;
 b=phtH2Y5zMPxNjiH9+HMLN4HYGjWfjfQhkD3PJepl6KmUf3DxW2XmdCc38s+yF4PlzV
 yLlzjUkr5wqwKnOqE8CpNlzFX6bN02dgB8h7zZCtZFKoIfgyqSLxvg4hzzEQw5G3YN4l
 YSc9YoAWNrwwfDP6gSbn0tkYRHY9GFz1IDG3o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZHqXR/rfvXNWUhdf9JppdKSegbEAyVwI+s7vLkLDNcY=;
 b=Y2bxb5XVoRRL6tYiqnKkBVkazfapP1ro4ScN11wP5Q+aKSzy3v98H1iihpYjGk3cW/
 DfwhyKfQJBpiYzDPAOlmvO0ISXs16K60JMdTm3KXZ8GXcboKMYtiLVOC5ia6nNLvLLVE
 CNjEj8SAxWa81B7K3xcFH28OSj96pbrdFWNv1MLf9FC2zd4GW60rVSfU8ZQR7wLUK/nB
 H91tvga4Nbk6OoT6y7yxWbURhiqEZ1SHl3vB5g72yvibfeBWdIUBMKNHtKBNmtQbDFvR
 VVIF5gvcqA+V3kzd3T0xpFd2l/DWAz+VhCNZhBx8ZP2xUG3SARC4dqSNel34IjO1UFIh
 8pUg==
X-Gm-Message-State: APjAAAXe/uxPWkQt7aJJ9eDqitXcm6VJyjWJC+zFY9Rn7CMVgkMSKzHe
 snJvX++7O5Il4bCObzYRq5n3bw==
X-Google-Smtp-Source: APXvYqw/sWIvRBFm08Hgfby/JdJh/Ik+/iANlv76p0W0vcQcsbI3K6paNDsi5inNvNLhWI4Irc+5XA==
X-Received: by 2002:a65:500a:: with SMTP id f10mr2100018pgo.105.1563278372279; 
 Tue, 16 Jul 2019 04:59:32 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.04.59.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 04:59:31 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 27/57] ram: rk3399: Configure BOOSTP_EN,
 BOOSTN_EN for lpddr4
Date: Tue, 16 Jul 2019 17:27:15 +0530
Message-Id: <20190716115745.12585-28-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_045933_469013_322DBB13 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

Configure BOOSTP_EN, BOOSTN_EN for lpddr4 during phy IO config.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 7625506458..a9e092c39f 100644
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
