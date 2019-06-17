Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8FB47B27
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:37:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u6PcVPJCPdd2SGbdzYXFIf14R6/1lop62Ww4rjMctmU=; b=P+MXBqaW7rUD+3
	FwDP6qYlsLzRO7RDnPwCpwRj2qUpExEt+8Aaca8Heofh0T7oDZBYeNpk0ykUAr5w7f6TB5bUZm5ew
	7c2kcRh3yO9rEZ6YQjQw9wVHyjBBJG/8RBR2geuHWdzUcUZa8dkgNhkRfmiOzscVFCuZ72CgJek4C
	CoMEkX7nYh+bnQz0TDpcla/wI32zKfawhRevuDZPt+39o0Qunv7M4chWWgX5x8v3H0SL2VqW92Ln4
	rbBEJuR5UgLPrGlTp8GUxUBFK4fgLPywsWPxXfKg2QzAwS/SfTDNyUY4dsmFXBGRNTx/1YvKl8MFw
	jvraSK/JyUtKbA21/AOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmCn-0005pk-C7; Mon, 17 Jun 2019 07:37:29 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmCc-0005h0-0Q
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:37:19 +0000
Received: by mail-pl1-x641.google.com with SMTP id bi6so3715725plb.12
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:37:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pIvg8hyhdUAWXbQ47u2vkaiJB/8L5xmhs2Hetbyr5tc=;
 b=MhtNauR+JpVib4TEwgCGl1GqaZuqLzutGgXG0cWjPz7cGZDSt0lKVRLyKCBSuvhTs7
 c2VvJBjkRbNUEK4IxUnxDbmMJciWkNPAusaWTcQjEbSwN+vcqFOBY4CoMQFet9Ima+DD
 H/eERf4pGQlmlrLXtuWClnPqdA4sRHhkwGhT0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pIvg8hyhdUAWXbQ47u2vkaiJB/8L5xmhs2Hetbyr5tc=;
 b=lJtoXixqCduHJqFSPzKSrY5MR0A4X4U1sXx6cXPGwQbgOQIVhVaPo65Tl07gZCtVvK
 4LcNlyb8XPbVfrUP10Npfc/fJm3KGjflfwxLbV4HYd/mJYloJiM4xBR883+YGgEeIzQ8
 UsApxQauS16rciDU1AYa++w4X3zqpURogPvWUtYEzG+8tLbciBGz5qsZF562q3RT1IGt
 /FcJB+ycek9O7j5LP/WtxbaYyC/2icn+dzZNnJGCseSJ0HgT3tFdeyQOuk12FzVRZzWY
 t6Jd3cVloT2NzVBBN9IoHnI32lyKbPaSW8EaK22UOPKpsVshbgCjFSdRZj7HDDTZzMvZ
 ML6g==
X-Gm-Message-State: APjAAAWVOpntwBcfZiMluiE/LJOT4MKTMgldmLafltYCWjo9xpr9Ualk
 kcycBMOaaV9PElYFPnJmzxaRgQ==
X-Google-Smtp-Source: APXvYqzUPeqcQNh4BA89+8+wXNvGljpdgd9WXdOLdqPUjpGkpDUk8hCczLgiVaZcV6dnG0vhqiXgfA==
X-Received: by 2002:a17:902:9006:: with SMTP id
 a6mr101354616plp.305.1560757037517; 
 Mon, 17 Jun 2019 00:37:17 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.37.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:37:17 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 17/99] ram: rk3399: Add bk enc macro
Date: Mon, 17 Jun 2019 13:01:30 +0530
Message-Id: <20190617073252.27810-18-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003718_214331_3644917B 
X-CRM114-Status: UNSURE (   9.62  )
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

Add simplified and meaningful macro for bk.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_common.h | 2 ++
 drivers/ram/rockchip/sdram_rk3399.c               | 2 +-
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index 8cb564960d..78cca88121 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -48,6 +48,8 @@
 #define SYS_REG_ENC_COL(n, ch)		(((n) - 9) << SYS_REG_COL_SHIFT(ch))
 #define SYS_REG_BK_SHIFT(ch)		(8 + (ch) * 16)
 #define SYS_REG_BK_MASK			1
+#define SYS_REG_ENC_BK(n, ch)		(((n) == 3 ? 0 : 1) << \
+					SYS_REG_BK_SHIFT(ch))
 #define SYS_REG_CS0_ROW_SHIFT(ch)	(6 + (ch) * 16)
 #define SYS_REG_CS0_ROW_MASK		3
 #define SYS_REG_CS1_ROW_SHIFT(ch)	(4 + (ch) * 16)
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index ed2e0f54a2..77e7f92b5f 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1024,7 +1024,7 @@ static void dram_all_config(struct dram_info *dram,
 		sys_reg |= SYS_REG_ENC_CHINFO(channel);
 		sys_reg |= SYS_REG_ENC_RANK(info->rank, channel);
 		sys_reg |= SYS_REG_ENC_COL(info->col, channel);
-		sys_reg |= info->bk == 3 ? 0 : 1 << SYS_REG_BK_SHIFT(channel);
+		sys_reg |= SYS_REG_ENC_BK(info->bk, channel);
 		sys_reg |= (info->cs0_row - 13) <<
 			    SYS_REG_CS0_ROW_SHIFT(channel);
 		sys_reg |= (info->cs1_row - 13) <<
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
