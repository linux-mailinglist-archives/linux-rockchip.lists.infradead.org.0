Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 298D247B61
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:40:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/1LR6xtzW0EPRdV6bXLSlaJrgCLJLX3fNg85NvxVoeo=; b=nrQFq3gygjs/Sd
	0AMkX0BLFxXWFoW5ZnsWX/tbM9gyCEP4SDucc/J9fD5G1kAaK9Bg380GlF/edY8v+uSwmOA5GGtcH
	X9yqkusKLrl4MaEIyCNySSQhF3z7PEZaqzW9njtuAmULvH1cYjezHoUam3+0sLgvt/VmPCjeibNQj
	WkMcCpBS65NSqKR6jtbK+Fs2pHS2fQIOLPXtbuSmzN0vUmPeBBatvSZrxA9wzXgo+7i/CY1wKaxty
	KSx6mL27/6rK/ZrKo4kBsn/P3Wcvsfg9/0XIhg1n+dHZHDa8nOQqCz1x0+uEkmiHqxe7CcpAm/R3c
	vJ7UYcJpbw6eV4V4s1yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmFO-0000Vr-08; Mon, 17 Jun 2019 07:40:10 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmFI-000086-5X
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:40:05 +0000
Received: by mail-pf1-x443.google.com with SMTP id p184so5187684pfp.7
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:40:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=96+0eIJ4QyaYXyetw8OMd8Oza7DXdDd/yI8CG/WtMOQ=;
 b=g5FcRECUVMKAgyQLZnzDfvdogSkbP7FLmOsuSWcUN2Ili9oE6avNooct0SJrQwaJfo
 BqZCCIUyloU6v8Os7JfgutDQkWavHy+hYIBm7zVlbw+G+wWemAheQeyBx7c8jB+fJu7a
 +vuL5rRdchZXSEug9hxqKY+Sh7ziFCJnpviQk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=96+0eIJ4QyaYXyetw8OMd8Oza7DXdDd/yI8CG/WtMOQ=;
 b=T6dgC3ULNLYhgxupT4wSVytLVq/9uSPrDBGPbgMDVCk3NqqkMX9Z2vVtup3aL1LlMI
 Y8rStodPG0u0iCp/YX0E5YFz5+MOJSQ3BPE/P6OjUPxf6aG056tk5/7SBsDiai2tl7L4
 bpOxt+WWJzKYr1kOd1hIYncOy5mc/EWlJQiea0k7GeqBFQ8VqImS+H77csmj4HcVrziH
 PSEvgXE3QzagKi6XoxbWvJUuMTEfVd31y6EPp13GmDXHs/BSlKeUqzfGu2+94MH63Dfg
 3rjDJi/eMfI4dtS3N1OaStsMRSZ6O0SuY0F9Fjxjp2F6gq9s+yknhlC90WFcmpgLDqJG
 rCCQ==
X-Gm-Message-State: APjAAAXAOuGyONZ4a+iUG8ppyOaEKCt8BRTl6MocajxpCSY9NfZi21oJ
 46UFNZV5/nt6+3e6wQDo/uJTAg==
X-Google-Smtp-Source: APXvYqwbzttDtmy6pWpaJrs7g1ARuy3VZVuCB6FyNsgY5LSj2ZHkI303o5iap5DQ5kkRV0v+4tYwDw==
X-Received: by 2002:a63:2147:: with SMTP id s7mr42065845pgm.283.1560757203498; 
 Mon, 17 Jun 2019 00:40:03 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.40.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:40:03 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 67/99] ram: rk3399: Configure SLEWP_EN, SLEWN_EN for lpddr4
Date: Mon, 17 Jun 2019 13:02:20 +0530
Message-Id: <20190617073252.27810-68-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_004004_260508_B15664CB 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

Configure SLEWP_EN, SLEWN_EN for lpddr4 during phy IO config.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 1a5546189b..1d2c2385f1 100644
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
