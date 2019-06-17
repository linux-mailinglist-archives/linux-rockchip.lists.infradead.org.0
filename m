Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF25447B32
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:38:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xVs/I4uYcazy7nAXfikrQ5C2t7C7uNeyhRF56OmqZ+A=; b=o+VynAFacKprrl
	a1CXtC1P5Ok9K2sbRKKVNZrECnIcF2TkTtBEP3PDl3w31TlWfmjR7PSetu4RsCWk5VOTp3/UPu3UZ
	s9gVumEqCDfEoH1LvJNHfuSQqxeIVzmA8GO2ZzzHE4AWaMqg1FTfQvoB32GQjKkBIuyzOxLOMVtUh
	OJK1yWEN98dTiLEruG4qGYHpUpyoJINd9COV8hb7v9SxHf3gD2T9ji1Pj1Ads7ftRUaJs0bZ4xmYJ
	otxa6pPPaf9p5DIQiaVIKHKzKrFpwynkuiX3ZMw+JRDlWMx+Cf5amMAG2UPJEj0N6HDRoR9ozO7wn
	2MS6YmsY/BmUx+hlP84g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmDH-0006Hp-DR; Mon, 17 Jun 2019 07:37:59 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmD6-00069J-Ve
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:37:50 +0000
Received: by mail-pl1-x644.google.com with SMTP id t7so3725499plr.11
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:37:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Fg1MxXks7YSjvcHgM4erODCDQhcjzajkytS6dAAQeq0=;
 b=Z5HSg61r1W3Nk7lrzaGZBbkAmxuW4gYozcN1/ZbFAMdcUCmHDQAZ1o5VVUSQkyN23L
 TSPj4vEHsptFCujIWlCwhFxi0vogBhSAPZit2oDWkt0YPWldVXuA4OaEfz5myV0NUK/a
 YVa3z52Hed0I+1SI+JV/M5M25+AMEplaEgz/4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Fg1MxXks7YSjvcHgM4erODCDQhcjzajkytS6dAAQeq0=;
 b=uaDgkbQkPz5iR6WSfnymVk3MIxDgN12rxrxZiYn1tLPEA5DKgVM6TXXAraLP8i37/D
 H7Ft20quQttb40FiZJ0WrsLTcrrSvXJztOaUEdckyvbLdm1Urbf39Hg07/wuAoKy1+Ny
 xHdKf3EzVKXTLC2mHNngdzMNGMiBGtKtvvd0g+F5elJebkgAlB4yHVX6fOJE/8+bsNS1
 lnIz4UKvBasHBPWoxxzjwuUFZP3KpNFPrcErEBVUfLeN6AHYik1a59y36g2fixZx+1GQ
 kZuoIT1Y6jB2OEyAKsftXBmncTn2Yvcu78XfNSpBHuaTjek2d07djgkAVYlvYqxZwBzF
 0w+A==
X-Gm-Message-State: APjAAAXPFpul891SeoWYvPHRKlJW8vf/SeZJDwQSccIHCxFUvq8Ghhyx
 s9ZEe0L1B6866dRXu1tU/R9kWA==
X-Google-Smtp-Source: APXvYqxNeyJMyBzTkRElCVbAOSkAB2WQkj8TgjwN9x8I8v1ZCFSmkSnVLTV8LSMgCOnXxwl+uRAaUQ==
X-Received: by 2002:a17:902:4643:: with SMTP id
 o61mr53833255pld.101.1560757068121; 
 Mon, 17 Jun 2019 00:37:48 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.37.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:37:47 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 26/99] ram: rk3399: Add ddr version enc macro
Date: Mon, 17 Jun 2019 13:01:39 +0530
Message-Id: <20190617073252.27810-27-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003749_203657_62B3EEE7 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
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

Add dram config macro for handling ddr version number.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_common.h | 2 ++
 drivers/ram/rockchip/sdram_rk3399.c               | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index e5145422cc..0eb068dcc0 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -28,6 +28,7 @@
  * [1:0]	dbw_ch0
 */
 #define SYS_REG_DDRTYPE_SHIFT		13
+#define DDR_SYS_REG_VERSION		2
 #define SYS_REG_DDRTYPE_MASK		7
 #define SYS_REG_NUM_CH_SHIFT		12
 #define SYS_REG_NUM_CH_MASK		1
@@ -61,6 +62,7 @@
 #define SYS_REG_DBW_MASK		3
 #define SYS_REG_ENC_DBW(n, ch)		((2 >> (n)) << SYS_REG_DBW_SHIFT(ch))
 
+#define SYS_REG_ENC_VERSION(n)		((n) << 28)
 #define SYS_REG_ENC_CS0_ROW(n, os_reg2, os_reg3, ch) do { \
 			(os_reg2) |= (((n) - 13) & 0x3) << (6 + 16 * (ch)); \
 			(os_reg3) |= ((((n) - 13) & 0x4) >> 2) << \
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 14e2afcbc4..a8100749b0 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1032,7 +1032,9 @@ static void dram_all_config(struct dram_info *dram,
 		if (info->cs1_row)
 			SYS_REG_ENC_CS1_ROW(info->cs1_row, sys_reg2,
 					    sys_reg3, channel);
+
 		sys_reg3 |= SYS_REG_ENC_CS1_COL(info->col, channel);
+		sys_reg3 |= SYS_REG_ENC_VERSION(DDR_SYS_REG_VERSION);
 
 		ddr_msch_regs = dram->chan[channel].msch;
 		noc_timing = &params->ch[channel].noc_timings;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
