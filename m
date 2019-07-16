Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 243276A7F6
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:01:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PjqkhO6i7EGtofAv72S30C3ae+DLMB6FhJBQqAQafdc=; b=Tf8cTRX29+565D
	8SpKe+e+8oyG8SFgGHJJQz9Jyl/UcKK0fwZoWdRxUtg/XnhxFXx35EheK/+epFc7R2hZLw5AtBkDS
	Fs6Ri6/2p/Y7WUOycVkuxBTavhHNqw1WAcBeddVRrsyPwLNHZRp8eBglm5Ta5CpcN/CIlBXcF8RPN
	GaRSncjUMhBKAi/BsbbX4K5u4RnLvgGJPFlvPzqcx6CCWMBDg3nJNmyDyq86LslLBio/3o984UxyE
	Fpcne7p6iegrACa282JffkcZRwJmPQyi3LFXMwCv8sX6V4/hflEiFupgxHjj96eWIr1NpbcTBnTBD
	368ZumBUUBBUZVYtpPcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnM8u-0007EJ-7g; Tue, 16 Jul 2019 12:01:12 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM6g-0004Ey-Bi
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 11:58:55 +0000
Received: by mail-pl1-x644.google.com with SMTP id t14so9978055plr.11
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 04:58:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=I1cEsNh4mNq3M6cYDF3QUJY54q+jdm52RlOVjMiFP8k=;
 b=BB5+fUg/xMzIEnFcn+fFx7vl91GtrKLYRf2160hl9fuOcsYxeKRDfvaN3lQODvxiy3
 Ei1rDJbO0HMqfhPuxF6UJ7kaxdCxpqKEzOo446gnnc0ipXBwymfKi2Gm8f/cBYxP5pxL
 v8LF2XFS13RkIvM1Orn7FRs5GhEeJnJxvGssY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=I1cEsNh4mNq3M6cYDF3QUJY54q+jdm52RlOVjMiFP8k=;
 b=ElXfyo7lEfxNydSRAxIasONCbzwoPR52W1fGWbAE8hUoh0YV2B7AUSr1dWmwuWaGQR
 dFW0J/EqFBfNnFtVMPpfS9Y/skuD12d+xI2OvzqWYDSdhI9J4A5hG4QEYn00rmjzCaBY
 qN780DAGxjM7CWClEkKfqQ3jRlmIEjB5RpoiQ1TWctVFZhKRAV8RNjSmG7NSGIomZs1U
 EC/TweJ8uESv4+4QPsdyCqV6TAW5bEwsxuu7cY+KyxdcgYAR+y6/adFrjxvuWOxxA3RX
 9ugsHxjsTQud4wbjnB3LCeFMlVYvA3EGYFOms9O+fuXxXTEgOT2/IDUdsdRnfEfa1gfJ
 8HSw==
X-Gm-Message-State: APjAAAXoXMVvjWjX9MHtt606A5Ny9djYC2Vt1cNvDVi3yeJK+lHhWTZD
 MmHpEF24H3aATNo+zKsqXbtsdA==
X-Google-Smtp-Source: APXvYqy8VC6ryniOUYDbtaqRlzU0QicXVmZO+RMSxktAqyV4dukh+zpy81lxMPWRiPNzzVATqDB/Tg==
X-Received: by 2002:a17:902:b109:: with SMTP id
 q9mr24807859plr.176.1563278333388; 
 Tue, 16 Jul 2019 04:58:53 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.04.58.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 04:58:52 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 16/57] ram: rk3399: Add ddr version enc macro
Date: Tue, 16 Jul 2019 17:27:04 +0530
Message-Id: <20190716115745.12585-17-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_045854_533679_CAA21ECA 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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

Add dram config macro for handling ddr version number.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_common.h | 2 ++
 drivers/ram/rockchip/sdram_rk3399.c               | 1 +
 2 files changed, 3 insertions(+)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index f5c99fea8b..8027b53636 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -66,6 +66,7 @@ struct sdram_base_params {
  * [1:0]	dbw_ch0
 */
 #define SYS_REG_DDRTYPE_SHIFT		13
+#define DDR_SYS_REG_VERSION		2
 #define SYS_REG_DDRTYPE_MASK		7
 #define SYS_REG_NUM_CH_SHIFT		12
 #define SYS_REG_NUM_CH_MASK		1
@@ -99,6 +100,7 @@ struct sdram_base_params {
 #define SYS_REG_DBW_MASK		3
 #define SYS_REG_ENC_DBW(n, ch)		((2 >> (n)) << SYS_REG_DBW_SHIFT(ch))
 
+#define SYS_REG_ENC_VERSION(n)		((n) << 28)
 #define SYS_REG_ENC_CS0_ROW(n, os_reg2, os_reg3, ch) do { \
 			(os_reg2) |= (((n) - 13) & 0x3) << (6 + 16 * (ch)); \
 			(os_reg3) |= ((((n) - 13) & 0x4) >> 2) << \
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 0f28163d6e..7f6f7d8a9a 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1102,6 +1102,7 @@ static void dram_all_config(struct dram_info *dram,
 			SYS_REG_ENC_CS1_ROW(info->cap_info.cs1_row, sys_reg2,
 					    sys_reg3, channel);
 		sys_reg3 |= SYS_REG_ENC_CS1_COL(info->cap_info.col, channel);
+		sys_reg3 |= SYS_REG_ENC_VERSION(DDR_SYS_REG_VERSION);
 
 		ddr_msch_regs = dram->chan[channel].msch;
 		noc_timing = &params->ch[channel].noc_timings;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
