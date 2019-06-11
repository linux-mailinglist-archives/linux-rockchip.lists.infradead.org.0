Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D227C3CF84
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:53:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0P1RzL45NkbcpgWWmgGZOSY2znwmcdj6xB2SlvT8RHc=; b=V0vesPwEu3pIMd
	Du3C2+fCjFobWrgaeHZBu7tIkBP0aG+JoOume0oMajZvVXwdinzEKwW88bUqpxCw6GTub8geFeIF/
	ZkgtitED+VVszOG2Pm5VMLQB48Ubqli+J2Y1vgYtK0N1Gl6jBLiwXSLzois1rsQdNFhxN5yOqtEUm
	WhgP+UzmRPwh3b8YBAKoMSolkI3Ee3NGVpWC2T8Abcz4jHf4VDmP+nb6knXPSZab/wOXMxA22LIAD
	sTl7SDDjPFYMHvrd19LIdMenPVVabMh/NBZdHSuqzwop6IUinmnjBx9a3AAgzPv7MIqdfpqqzoU8n
	uyqp408AcYJ8FE5vgFkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hai92-0004TX-Pu; Tue, 11 Jun 2019 14:53:04 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hai8y-0004QI-1v
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:53:01 +0000
Received: by mail-pl1-x641.google.com with SMTP id d21so5232116plr.3
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:53:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=R+1CMpZiNEH+ushANNr2dTBii85xIEL+0FGwdkiznWY=;
 b=jvVjp8hbZOwenutLPLeZSskWTkOS4pOxspWDFQtDtzijOrbm3+t6TyBhM0zyBJ4SJo
 9cUCmUoaMDmC54TFLpoWDZa4QvHuvLyHmSafuQ7MuFJjvAhSoK6GJrndFAJie9QOiT2z
 SB9Sna0s0Lh+41yZFjPbaxJBN/vAhawJx2jL0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=R+1CMpZiNEH+ushANNr2dTBii85xIEL+0FGwdkiznWY=;
 b=KwnN5mM27J2xsE7MLK5tqATYifGfgQZGGfzepfJaSo/NTD3vISJBxf8gfBXwhCG25u
 pqXwgbMyUQhlt5nszLaX/kn0zrhidpQPRAxQYBgmekBMT9ChkbNlEODeQuMOwdOouA2u
 A1gkgWVvpaYPxTJadosHkH1V9B13WSLPaF9qn3n7CRLVV8moTeo7+L4fca+dgsv9JwPa
 EbW9IJxZ7oQVwDGFEET5xeyVCjuCvLABVCk9WAdiK6KCEuzKZmW9kcuI1Lapmh9UwQ/c
 RY0rEDuBbLe10YL2AcJb31CtcsXRwchsG6fHEVkMt37q1JPeCtI3kRGg8TYuy5TwGbyn
 /Hqg==
X-Gm-Message-State: APjAAAWaXmf/KNypLY/LSUgCK+QojOAxHbSX3Xgt+H3VzP3C+UJvl3oB
 0vq17ThKEIWpEPzEWDdxnSpRwg==
X-Google-Smtp-Source: APXvYqyGRFZVizjaKldGhn+dvHBPvX1ixjHUsKR9deAQ2V+/bnx7KjbRFIGg7b1wmQQTb0N9EPQ+bA==
X-Received: by 2002:a17:902:934b:: with SMTP id
 g11mr63998336plp.245.1560264779500; 
 Tue, 11 Jun 2019 07:52:59 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.52.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:52:59 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 17/92] ram: rk3399: Add dbw enc macro
Date: Tue, 11 Jun 2019 20:20:20 +0530
Message-Id: <20190611145135.21399-18-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075300_406870_20CB9262 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
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

Add simplified and meaningful macro for dbw.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_common.h | 1 +
 drivers/ram/rockchip/sdram_rk3399.c               | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index 8a71e8ad87..3b0557cb6d 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -57,6 +57,7 @@
 #define SYS_REG_BW_MASK			3
 #define SYS_REG_DBW_SHIFT(ch)		((ch) * 16)
 #define SYS_REG_DBW_MASK		3
+#define SYS_REG_ENC_DBW(n, ch)		((2 >> (n)) << SYS_REG_DBW_SHIFT(ch))
 
 /* Get sdram size decode from reg */
 size_t rockchip_sdram_size(phys_addr_t reg);
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 2614fef407..4047b4b7e3 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1031,7 +1031,7 @@ static void dram_all_config(struct dram_info *dram,
 		sys_reg |= (info->cs1_row - 13) <<
 			    SYS_REG_CS1_ROW_SHIFT(channel);
 		sys_reg |= (2 >> info->bw) << SYS_REG_BW_SHIFT(channel);
-		sys_reg |= (2 >> info->dbw) << SYS_REG_DBW_SHIFT(channel);
+		sys_reg |= SYS_REG_ENC_DBW(info->dbw, channel);
 
 		ddr_msch_regs = dram->chan[channel].msch;
 		noc_timing = &sdram_params->ch[channel].noc_timings;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
