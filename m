Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 118266A805
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:01:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CIGFlgMePBPMkYMcS+Fd0lwTWSOCOPcysxRHRugnG/E=; b=ula9qlfwD3Di4w
	JoyMlvlX3/rqSvZpZoRhTg+A6Niy2hhJ5K9kK1so0CuuY52+QY2G7AnS9L6looWPdjhI1lC3Lg5Ya
	BdktVohnAa/RlcOVNBqitSglzKSfEg5kTiX1Xugxo83G+TcVT0p4dtji8hIAjowgLT4FYOXj2Ibwt
	R5UXrtzS0yKvFRR89foYJ5PYejug/JiOSKH1w2kr4EqixtNxmIuyQ3lvLW8K37dQ3S+KeMQ9xiA3B
	NFukrmCP2xhnpps8dI51SHAEPSWNLLbBuGFls7GMgRbkEQT8Lt0VEYSJIZlb3CoRTPm3JjaglAw7P
	WCCt1HjW57PeZ/R9IoOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnM9a-0007vR-Lb; Tue, 16 Jul 2019 12:01:54 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM7X-0004xY-CK
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 11:59:48 +0000
Received: by mail-pl1-x643.google.com with SMTP id c14so9985478plo.0
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 04:59:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ShnizxVOFJJJ3jmxPzb0Nn+OAjZ/FrAS/NyUepu9UZE=;
 b=aX9gVM3WuboOXqKZ7clAOoMR64pgtwhMjTr/JXBVDuv8JKQxCdr5LWKoYfXUV/zA+7
 mV00iOIWwhtIxc5FYvoRXBJ5LODPW9SBoAUUiw/7HN6If4ESvEUG6ZqZYQ3KiSO60OQv
 dDSrAUj094v3HIyD/Z11uhh2djNVXBCVxDdE0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ShnizxVOFJJJ3jmxPzb0Nn+OAjZ/FrAS/NyUepu9UZE=;
 b=MpkMXFe66YlXYnGavfjeR+O9MO+n0ENldYkbhBYtbDEF2RmLBJNXPpBeeNrr45ymLM
 lvWJfGjJ04yTP/1QJCr54uFOszOmJZXtM6Vcn8WSvhdV2sQcaRFizUmIRnlQhCGvsh1z
 piAPr/8vNEfUBRXGd53yGuaYPm7HmVlwW6atqyZIzahLNq68rFBMerFseb+BmGAhX5Xp
 b9kpCggJMtFpPJ53ZEVRCr02DEMLl6WR/LHhUuvfdAIZ/36HQDSahZnwdgLGaU1ePc99
 NAOhrQthB5y0cPejkzifpTRW1wsoZzJirffG/krVAF7PD4ayz8IRAnSqtUdszJHnCyo8
 VrTA==
X-Gm-Message-State: APjAAAXA+RO69/H2CQm6hIVvIDB881ijxwxS5xQoh3aiNN8l52/+S7Ej
 zkrrPBnTodDmBw2+oOJfG0TwlA==
X-Google-Smtp-Source: APXvYqzxWT8p5VoYSAccA8eKL5WKV0H81x/AK5EFgGKCPkEpT6WVpAI+AaxA0eZaITNoyO5KOF67xw==
X-Received: by 2002:a17:902:8c98:: with SMTP id
 t24mr35700706plo.320.1563278386651; 
 Tue, 16 Jul 2019 04:59:46 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.04.59.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 04:59:46 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 31/57] ram: rk3399: Configure tsel write ca for lpddr4
Date: Tue, 16 Jul 2019 17:27:19 +0530
Message-Id: <20190716115745.12585-32-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_045947_475042_E421AFEA 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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

tsel write ca_p and ca_n values need to write on PHY 544, 672
and 800 to configure ds odt.

Configure the same PHY register for lpddr4 would require a mask
value of (300 << 8).

Add support for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 7689711a99..1050cbdb07 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -502,9 +502,18 @@ static void set_ds_odt(const struct chan_info *chan,
 
 	/* phy_adr_tsel_select_ 8bits DENALI_PHY_544/672/800 offset_0 */
 	reg_value = tsel_wr_select_ca_n | (tsel_wr_select_ca_p << 0x4);
-	clrsetbits_le32(&denali_phy[544], 0xff, reg_value);
-	clrsetbits_le32(&denali_phy[672], 0xff, reg_value);
-	clrsetbits_le32(&denali_phy[800], 0xff, reg_value);
+	if (IS_ENABLED(CONFIG_RAM_RK3399_LPDDR4)) {
+		/* LPDDR4 these register read always return 0, so
+		 * can not use clrsetbits_le32(), need to write32
+		 */
+		writel((0x300 << 8) | reg_value, &denali_phy[544]);
+		writel((0x300 << 8) | reg_value, &denali_phy[672]);
+		writel((0x300 << 8) | reg_value, &denali_phy[800]);
+	} else {
+		clrsetbits_le32(&denali_phy[544], 0xff, reg_value);
+		clrsetbits_le32(&denali_phy[672], 0xff, reg_value);
+		clrsetbits_le32(&denali_phy[800], 0xff, reg_value);
+	}
 
 	/* phy_pad_addr_drive 8bits DENALI_PHY_928 offset_0 */
 	clrsetbits_le32(&denali_phy[928], 0xff, reg_value);
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
