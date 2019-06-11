Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED5353CFC1
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:55:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6oAvvj1rRt7/erTpT8uVUVgafUvcnZyXMRNuUnM9P4M=; b=mBtIQNoU/iZZ8p
	t4nWvDpn9o2R1tsgQFuQbAnNQXKBB3j7h8kF8I2I936+au1W+fruM85X/advrnwdIMK3vekvcor7p
	TrA6qqWed0Cn+gnuHsIY0GEE+Tom5R+nprFNdwGNC8vXpzP1PBmfCSxDJmtqQrEX9WrwGRGbMYM8a
	p7H6Vx83g6CQHwaWXKW286LP19LxMyqdAMI2x+SKcw30U1khXpuGk4e8zy/y3KotWyDPmVbXEP0po
	J0sk8W7DWMmM6f7EQtwTfxkPmZ9lyCJKaMfG5w0EOkYCFVXls01Mb2uPVxvl9wr4i0dCYbBJ4PukZ
	Lykq8wwjeFzkE5BD/MLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiBm-0007gM-Qa; Tue, 11 Jun 2019 14:55:54 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiBi-0007dp-P2
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:55:52 +0000
Received: by mail-pl1-x641.google.com with SMTP id g21so5254467plq.0
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:55:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pvtsocxqtDyRVeeeF9ZrknNra8/8DhlqqO3pIq4y19M=;
 b=ep8QmzA4gQUa1LYC9JcQ+Ds7Okj0F1/BN/tbfgKCzMVlQMwDUaOi28p5TeW9DUmxaE
 VLkWuV9INsOjKEvlZT9iMJ/hXt+CfYwmj2XTRko4GXs2QfZw/7ndjbWrysXvnc2qQbSF
 HE/qVoeUFgHU6v0EtrRqluwDN1nF03Ysmp2Bs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pvtsocxqtDyRVeeeF9ZrknNra8/8DhlqqO3pIq4y19M=;
 b=rZoAOEWpZn6fwy6V2w9I39fQH9fhMq2AUrIMUMn18ECnNzjtFrb260ZtEGqblZsClo
 +eocG7xxV7IT7Wvd0He+6/Hkdap8y1YPWvf3SNlaEx2cCBp56wtUBTHpZH/pWvcHjGxK
 eAt22ndCxLiSfegTTdfeKCCb4r43PH5GgazQrgTpqbsenJV7QiRuOLnayEFU5hHWWYSU
 2uu24agQrY1M4RgSi8VU2Eve/YHO+S+Ihti4zyJdGnvw1H/TNDMbuoP2hJ1d6Zcp3ItK
 CiN7c/JoSE3qM2XKd0ENBLbSJPcL/5pZbyuAGf8r1e/UYaxOP3hbImVgTUfXtvoPGr1d
 ndEg==
X-Gm-Message-State: APjAAAX19tq1kRAivit+Q244YHYX9GWARtgiMcgJ1wqTFZ4AKA/AzhSH
 37unfeZtH4pSBccNSV6OUjbTjw==
X-Google-Smtp-Source: APXvYqza6DSmp9j2oLS6hjsl/cqWCKxG2VqDpZTIptVPx+s+YQll/kXz+UIMi0Amz+qEszRYTpZxQA==
X-Received: by 2002:a17:902:70cb:: with SMTP id
 l11mr15504710plt.343.1560264950254; 
 Tue, 11 Jun 2019 07:55:50 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.55.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:55:49 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 60/92] ram: rk3399: Move mode_sel assignment
Date: Tue, 11 Jun 2019 20:21:03 +0530
Message-Id: <20190611145135.21399-61-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075550_844220_50A15286 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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

mode_sel assignment is based on dram type.

In phy_io_config, already have vref setting based
on the dram type, so move this mode_sel assignment
on vref setting area.

No functionality change.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index f80c8a424c..d399ec8e38 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -206,6 +206,7 @@ static int phy_io_config(const struct chan_info *chan,
 		vref_value_dq = 0x1f;
 		vref_mode_ac = 0x6;
 		vref_value_ac = 0x1f;
+		mode_sel = 0x6;
 	} else if (sdram_params->base.dramtype == LPDDR3) {
 		if (sdram_params->base.odt == 1) {
 			vref_mode_dq = 0x5;  /* LPDDR3 ODT */
@@ -266,12 +267,14 @@ static int phy_io_config(const struct chan_info *chan,
 		}
 		vref_mode_ac = 0x2;
 		vref_value_ac = 0x1f;
+		mode_sel = 0x0;
 	} else if (sdram_params->base.dramtype == DDR3) {
 		/* DDR3L */
 		vref_mode_dq = 0x1;
 		vref_value_dq = 0x1f;
 		vref_mode_ac = 0x1;
 		vref_value_ac = 0x1f;
+		mode_sel = 0x1;
 	} else {
 		debug("Unknown DRAM type.\n");
 		return -EINVAL;
@@ -293,15 +296,6 @@ static int phy_io_config(const struct chan_info *chan,
 	/* PHY_915 PHY_PAD_VREF_CTRL_AC 12bits offset_16 */
 	clrsetbits_le32(&denali_phy[915], 0xfff << 16, reg_value << 16);
 
-	if (sdram_params->base.dramtype == LPDDR4)
-		mode_sel = 0x6;
-	else if (sdram_params->base.dramtype == LPDDR3)
-		mode_sel = 0x0;
-	else if (sdram_params->base.dramtype == DDR3)
-		mode_sel = 0x1;
-	else
-		return -EINVAL;
-
 	/* PHY_924 PHY_PAD_FDBK_DRIVE */
 	clrsetbits_le32(&denali_phy[924], 0x7 << 15, mode_sel << 15);
 	/* PHY_926 PHY_PAD_DATA_DRIVE */
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
