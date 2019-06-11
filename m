Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 211163CF7F
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:52:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bmq5YVieDVqx2ztzPuPBG32GkTWzNeVDRXEeg7or12A=; b=YCBDxZR1HZCL0+
	zZasalnchXwC+eeo/2/GLMALYk3VmG5vcVuZYvAB1wtxM+5Ufxp02Du7T7mGcd0hjhsk3jPjGHa1d
	be7NehGJzIOVlXFavJws2EqDc5M3u71d/ZWqXVZBuAQaki/Ps8b0nf8v8qcjYvjBTDsEoBHrlyiSM
	Du6QKBKw0gqWkH6tZoom65N8cvrcLCxnWzKNuu4fMAEE0g2LfoiPhj57HFQ/2n3R/61XglZzS4qXE
	ulbNlEXC4bT/qObec7ljGWM2h5PqEmlk7YkO1h8X12ZiDmb9SdrQ93OvOW810pO9yiC1mHgwJkbAO
	K5KOtQ61h/SMs04HDXwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hai8i-0004Cv-93; Tue, 11 Jun 2019 14:52:44 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hai8e-0004BO-6l
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:52:41 +0000
Received: by mail-pf1-x443.google.com with SMTP id d126so7600436pfd.2
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:52:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lRP180Ipi3gVE2/vJfC3zMZ5wLFrHYhOkBITeXZ444Y=;
 b=mncECj6CeShZlpIKsJAWj8d/7ZKJOZ6lOAxH/mMg2SUM8wze5sxqHg5hCk4WSAqwIt
 jbSGlYA6Mh8ck9qr9gOfUwTQ+B3Ln21ksbM6e3fER3X8Bi0g5kv1QACxUYsC7wDqAK82
 N31XoeeDxv6cn8QIn3rNcrayzqpvCRmqHAK5E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lRP180Ipi3gVE2/vJfC3zMZ5wLFrHYhOkBITeXZ444Y=;
 b=bWx7AwnxCQaI/drDQDSiyZeFXUfxlzbLnK5Xm00dY4vF7OiPoGo8wA+6f+dax8mRX1
 9bWR7zKi/UQdOliZp0w0oxWAfGXEMaBMKDhOVbqiSK+IwckB7vrv+pflQ3x2JagYMESu
 3ZOG8V4HiIZPT6dhhbwnNc3yLDlob1zB78z0P3K/desmXZvL3rSPwJaGBa1ket6xO8ZR
 0/Lt8HJs1c21kLa74PoenpQ6wrUi/7UJtK05fgGqmccymXDrJUM5OAJ9nZavzqqrnoYz
 1GG6DE+VFnCcN/ZF96NuDL1tun8h0PXrvLb0JszM+QQfq1/C/yxydJnxAO3D2HPYEgma
 G1Zw==
X-Gm-Message-State: APjAAAVcuWmb4ipvrpUqKS46zaHSSKdKzODHVfYRwVPfsKTRGEmfDFTF
 FLJAjtonnGtwiUXwopGAi8m6dg==
X-Google-Smtp-Source: APXvYqx+/rGrJ+0oxzQP0Xc+kMIpp/Y9BP/dTnI+9ATJW+5l+bCyh/XPgsQJ11DRRCFCcAUNcmfaHQ==
X-Received: by 2002:a17:90a:bc08:: with SMTP id
 w8mr27864299pjr.45.1560264759657; 
 Tue, 11 Jun 2019 07:52:39 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.52.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:52:38 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 12/92] ram: rk3399: Add row_3_4 enc macro
Date: Tue, 11 Jun 2019 20:20:15 +0530
Message-Id: <20190611145135.21399-13-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075240_265398_EFF4CA68 
X-CRM114-Status: GOOD (  10.21  )
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

Add simplified and meaningful macro for row_3_4.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_common.h | 1 +
 drivers/ram/rockchip/sdram_rk3399.c               | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index 38a8bb8642..49a5d14821 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -33,6 +33,7 @@
 #define SYS_REG_NUM_CH_MASK		1
 #define SYS_REG_ROW_3_4_SHIFT(ch)	(30 + (ch))
 #define SYS_REG_ROW_3_4_MASK		1
+#define SYS_REG_ENC_ROW_3_4(n, ch)	((n) << (30 + (ch)))
 #define SYS_REG_CHINFO_SHIFT(ch)	(28 + (ch))
 #define SYS_REG_ENC_DDRTYPE(n)		((n) << 13)
 #define SYS_REG_ENC_NUM_CH(n)		(((n) - 1) << 12)
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 3d2447a24e..0a7137784e 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1021,7 +1021,7 @@ static void dram_all_config(struct dram_info *dram,
 		if (sdram_params->ch[channel].col == 0)
 			continue;
 		idx++;
-		sys_reg |= info->row_3_4 << SYS_REG_ROW_3_4_SHIFT(channel);
+		sys_reg |= SYS_REG_ENC_ROW_3_4(info->row_3_4, channel);
 		sys_reg |= 1 << SYS_REG_CHINFO_SHIFT(channel);
 		sys_reg |= (info->rank - 1) << SYS_REG_RANK_SHIFT(channel);
 		sys_reg |= (info->col - 9) << SYS_REG_COL_SHIFT(channel);
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
