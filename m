Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7709447B63
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:40:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8idIaAIw0iQgZHcJl7iFReuVCWb6Oz6KAxSVPHZ66Pc=; b=clyoaQOqSZETt2
	VV+151ElUGG8CASYEdXwkAxJmgWgkQTLUibq5e8H+0JYvIXHNR+ZhNz92H0wHV7Dx8hMJpST50q1G
	nS4OWfzeEx9wCKO4LC8PwAIwfnqLgP532e92D16Nk5TzyBndx5ryTAw9SjPFE8PAnipRRRaxeGjon
	3symz3iQ1DXqD3srbd2IcXHC/fwIkQP8u8iwK5aaXJvOEPEdxt8ouKg3dVlRLFs7KxPd7xtzRaVJ4
	RT8rOZ5ve9KZbBrLX+MK6zoYokFbPG4eQieeDMMngkzkDcZD505u+phFdgRnof9IURlOdJ2V1O8ik
	ANQPqw+G3faXio3wVm/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmFR-00015y-GL; Mon, 17 Jun 2019 07:40:13 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmFM-0000Xh-4p
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:40:09 +0000
Received: by mail-pl1-x644.google.com with SMTP id c14so3745365plo.0
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:40:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YPTBQZOeQmGhkN9z1YFaXG9uLnxmKsFQmtWC+Mse/M8=;
 b=RbuRTpauM6pSEDOXKsMAZIQPDaljRAaohFpc3JY8g0KGRn0eH3wjutQN1HQ+eRUrH+
 qOfBVBqfIp895de5Uf2aL+cL81O0P0StUlSJm8Ynw5ZnxTPcx7CrYlXcAuZcKHrVSfTO
 CsbyfQwgPtC4+7cPaVj71WWgQCJz8Gi47p46A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YPTBQZOeQmGhkN9z1YFaXG9uLnxmKsFQmtWC+Mse/M8=;
 b=GsrT1oAUT1b4xWQcfWfQ/z5z3S8uqT7je1qD+Cze84nvX+AGTy5c0dJ1JZ3JN+FIya
 1YKDnufeONTnuiCqOc1ln0zPwx+q4jfif2StIVLtqfvgYs0QcDa+PgnCp7CuuT+42N7V
 G0WvQqs8f7LERxvCuVT7uHCRhA/pfPze7dZzU0++ZmzBItYfiaRVloOziBEMXHpczK/K
 x7MvNz0YOnkta5w5odAUy7tXuizUbHv594IKKOCGJcFpGnZtEu0PKldlOZkaVMa4iUx2
 33h8r8SKtC1rlGUy5lHS0veV3IWHmmpgs7Kik48tIXCi0SHj9AwYRqf6wOjCgy2ZHejh
 2lvg==
X-Gm-Message-State: APjAAAWYlycjNlU5h+fyGM/wIqniFOtwTUZ2TwDGCJv+r94xhHNkJirG
 4OoFIxq5vvBOI/IRI1rtLTHOWQ==
X-Google-Smtp-Source: APXvYqyvnFm0hiGwz2wIXMpyPgH747CMwqRooOebgyXlK8Bo/xq8+xCj/SXU6ylwYFiwx8fuk5LtXw==
X-Received: by 2002:a17:902:29a7:: with SMTP id
 h36mr55287395plb.158.1560757207411; 
 Mon, 17 Jun 2019 00:40:07 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.40.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:40:06 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 68/99] ram: rk3399: Configure PHY RX_CM_INPUT for lpddr4
Date: Mon, 17 Jun 2019 13:02:21 +0530
Message-Id: <20190617073252.27810-69-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_004008_243866_AC707F54 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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

Configure PHY RX_CM_INPUT for lpddr4 during phy IO config.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 1d2c2385f1..ae227b958f 100644
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
