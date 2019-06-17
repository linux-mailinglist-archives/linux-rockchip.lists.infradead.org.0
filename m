Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F2F47B29
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:37:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/VOovEH2UJyyBczi4AVx35KeC/HUvQUP4EFK1HyJTsU=; b=KV60uNbJzi0ZJr
	iPKCyFZKusN+vHL6OxDx02PG3TPWVoLLB2tzb+hteaqkre49t4mPPzfvZu20nVqo4OSPN7DL8xCu3
	7AjQCOcQQXjIeG25uzYEuZkJVFxM00gRNoWxdcICWYEdW8xn7zdAUDxN9dlfnQ/DSPYqipKWB34Jo
	cqatzQUekyoS6CEkJTH/vAzVEWA5C8cQKDZAb0sKuln1dz4FkhZfTxopCPba/66YfgB4npKqEZBeK
	Me67U3Y6+4xgX+k9iKZ0yo44Nur6Y62jbs1livx6azoYGjGFZj80qCrpvzPu4VlHQi1xxC79mywRb
	QO329fd+nvpeDlXCBQ5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmCr-0005v3-NR; Mon, 17 Jun 2019 07:37:33 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmCj-0005nN-BP
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:37:26 +0000
Received: by mail-pf1-x444.google.com with SMTP id j2so5189287pfe.6
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:37:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=s1N1anu3At0P/bqk81w7TSPz1h9XuAST8M/gMm7u8IU=;
 b=g7V9UUTTdiT0q6Yf00Fx+FtvhS4WhnxO4nBGlq2zcpBSY9muFxlzrWFtpJB5AxgKht
 OQflWtLU+rbiaeY0JhS2t4LThlnFIx8vZSrtKNg9Qzl5dkjY6uHvYLq65X8+ajWB86JW
 EodpGuCC5xvC4t3MXVPqRaHD5WAbcVQRHu09I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=s1N1anu3At0P/bqk81w7TSPz1h9XuAST8M/gMm7u8IU=;
 b=UgJPC5XD2F5tNriJORvFhplJZO4zfS6RWHfgg5rR4K2sTDr5v4tQbuvg1y2IhYYJv6
 8xpDv5lKc0uq7Zmj7RWeuDXkxUYb7uxPFqR6V9U8RPiRxrTwOSZOhUTwjRzLe72fRirv
 taurKyecbQkFLFY27LhFqy8C/YT3XUqGK2B7DsZ/L4hRr0pLB5qByOBH7MH8HfMAYOZA
 hL69uLnetFxM9TYcjZ1ZYQhA/bNl6O3Oxf3E2GryLbmhaQj9WMPaBTrKGWUP89UxTBb/
 TVP1gS41P8NXghy9WNAlw4PE+uqaxUqn7LXAYvTB1nKixGbSH4RANCKccJ64koJG/KIk
 XI8g==
X-Gm-Message-State: APjAAAXoYR+ytA+PinBsxs8BWK7BGUsZRmI2nD0uMiDOpPlCsF8o3jeb
 oSAy5T4968TS2z0SsccfthdPAA==
X-Google-Smtp-Source: APXvYqyXB+AVf4xuRK5tzFqdwQvFFefVgkDuiVdAUFuNGGpkIrjRGp4mtgiQ3378v/DBOxQxn2UXLw==
X-Received: by 2002:aa7:9197:: with SMTP id x23mr77160492pfa.161.1560757044168; 
 Mon, 17 Jun 2019 00:37:24 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.37.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:37:23 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 19/99] ram: rk3399: Add cs0_rw macro
Date: Mon, 17 Jun 2019 13:01:32 +0530
Message-Id: <20190617073252.27810-20-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003725_620918_EBF64ED0 
X-CRM114-Status: GOOD (  10.37  )
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

Add simplified and meaningful macro for cs0_rw.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_common.h | 2 ++
 drivers/ram/rockchip/sdram_rk3399.c               | 3 +--
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index 72cc9c94cc..2b4745acbf 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -52,6 +52,8 @@
 					SYS_REG_BK_SHIFT(ch))
 #define SYS_REG_CS0_ROW_SHIFT(ch)	(6 + (ch) * 16)
 #define SYS_REG_CS0_ROW_MASK		3
+#define SYS_REG_ENC_CS0_ROW(n, ch)	(((n) - 13) << \
+					SYS_REG_CS0_ROW_SHIFT(ch))
 #define SYS_REG_CS1_ROW_SHIFT(ch)	(4 + (ch) * 16)
 #define SYS_REG_CS1_ROW_MASK		3
 #define SYS_REG_BW_SHIFT(ch)		(2 + (ch) * 16)
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 1a3285892a..1907fc9eac 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1025,8 +1025,7 @@ static void dram_all_config(struct dram_info *dram,
 		sys_reg |= SYS_REG_ENC_RANK(info->rank, channel);
 		sys_reg |= SYS_REG_ENC_COL(info->col, channel);
 		sys_reg |= SYS_REG_ENC_BK(info->bk, channel);
-		sys_reg |= (info->cs0_row - 13) <<
-			    SYS_REG_CS0_ROW_SHIFT(channel);
+		sys_reg |= SYS_REG_ENC_CS0_ROW(info->cs0_row, channel);
 		sys_reg |= (info->cs1_row - 13) <<
 			    SYS_REG_CS1_ROW_SHIFT(channel);
 		sys_reg |= (2 >> info->bw) << SYS_REG_BW_SHIFT(channel);
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
