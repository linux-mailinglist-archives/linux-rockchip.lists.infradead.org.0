Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C723CF85
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:53:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xb9qq7geHzm2ks46hToSSD5h8fQ4CqVQr1Y6FaKaM60=; b=kEJApjbDe0vTsI
	BX/KOTfUg+Gg4tRpxGoFgSa/piOAChPeut1gehy6hy4J4wRJNw9H/Q9S8gVGFiwbfUPiYn2lDqDli
	u1tuByMt5Hk3go7IVWb3zYbeVrawu96C1WHQVlSJIylSLZBVMzrzojYQuh9JCXyoBaXhVQa9n0TjV
	eCDpXtHvNnWkE9qTS7Yoi+K3Sz14lyWds7T3H7g76nVceWiI1Ks7kjT2Xc4iGSXpPcm6hGD7bIQLr
	2qwC7WYMsK9m4VGAHvHbx2/kdbIpqzDwJWneJotND1uh50TDYjz9chREqaJHHdXY3UlokbajoqX6d
	prKDgIxTKYvOcry5XmGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hai96-0004Wg-62; Tue, 11 Jun 2019 14:53:08 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hai91-0004U2-Vi
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:53:05 +0000
Received: by mail-pf1-x442.google.com with SMTP id t16so7578207pfe.11
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:53:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=o+DRTYHelsXkRTvkcjv8LykYwXl9zXvDsP/xd3l/rlQ=;
 b=T0WdShfcdeCfdrMy+h0drhSvOLxVJMCRSRfp6OzLEC829S9k/GsFCeT3r8fO77CJH9
 ekSTDEn+T6zHSU9qJa0jeKfOmkmG0lgiC/IL0JyuvOIXHJdwXLhYPSlvNBAJykVUr/rf
 EK1hnngZ3jFT/zz8Px11kPlJdsp55TF/1C5XA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=o+DRTYHelsXkRTvkcjv8LykYwXl9zXvDsP/xd3l/rlQ=;
 b=dIw4fs+KAZ+1R7cT+hf9CguOrjjywKhraz15Jet93JXaMV3ettvNhztk/cjYXV/CHW
 Gzlv9KDg1fTBbWet64BL1ZqhRPDGeq6FxE/NUkiWFT/9q0NFAl5d4IWcBq3BgokwtDi7
 Xa4Y5lr5JzS+gb+123fxejOW6ZejfNG+97s9btU6rbhO01yOmykavmNe8JW6DcQquIVE
 i4XphcfgIfKNmbDp6OFj2g6oRxNt1edMvgfK3jqHow6iNiomCXQR6dVvDo5jn4Nau2Za
 XCrYQoTgi+qjA2Nnx51BQsjCN2IRyePY496xkfijO9vvqO5nhsvEvtsrMwNAHptr8x+d
 k9Yw==
X-Gm-Message-State: APjAAAXOmlbwMAICcqFK5P7InsKm2UcVHupY2ynHreVn0RkejQgBOQ/z
 Xo90G++sixZwSpre+y2EXJ5dvQ==
X-Google-Smtp-Source: APXvYqxPvCxUaWZg4iGIbjQyUcV0IO/3hV6AzwcpHGxW5g0zFXcWGhuRWY5ufSu/SlbkiDDPdXGlMg==
X-Received: by 2002:a17:90a:338b:: with SMTP id
 n11mr14237563pjb.21.1560264783437; 
 Tue, 11 Jun 2019 07:53:03 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.52.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:53:03 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 18/92] ram: rk3399: Add cs0_rw macro
Date: Tue, 11 Jun 2019 20:20:21 +0530
Message-Id: <20190611145135.21399-19-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075304_046127_D84EF6E5 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

Add simplified and meaningful macro for cs0_rw.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_common.h | 2 ++
 drivers/ram/rockchip/sdram_rk3399.c               | 3 +--
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index 3b0557cb6d..5c94dba39e 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -51,6 +51,8 @@
 					SYS_REG_BK_SHIFT(ch))
 #define SYS_REG_CS0_ROW_SHIFT(ch)	(6 + (ch) * 16)
 #define SYS_REG_CS0_ROW_MASK		3
+#define SYS_REG_ENC_CS0_ROW(n, ch)	(((n) - 13) << \
+					SYS_REG_CS0_ROW_SHIFT(ch))
 #define SYS_REG_CS1_ROW_SHIFT(ch)	(4 + (ch) * 16)
 #define SYS_REG_CS1_ROW_MASK		3
 #define SYS_REG_BW_SHIFT(ch)		(2 + (ch) * 16)
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 4047b4b7e3..e3555504b0 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1026,8 +1026,7 @@ static void dram_all_config(struct dram_info *dram,
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
