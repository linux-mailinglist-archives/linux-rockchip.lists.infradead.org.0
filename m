Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 421B947B23
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:37:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xg8f/z7fZk6f/m+vKy4rHlXAWx/+mwKKKAJ3Apwlr8s=; b=ZYckoDs4z7b8fL
	htIvBhPNxYPnrZTa0WANxxoqogXJbCI3t9tjqLnGp9fUW/24RtfzCLX1EI6lAKTphYz4BCI4qFzRX
	Oy2s2Ir3Euhh8QVz2buSoLn3CMCHZ6CsuD2L4ipj8xYsSoj9wr3G0cUvDDbs04XL1doOL5gjkIvP4
	oJDkjehQwKwiHMFX2jzZF6HNwd4H7jwWLvDea8j3Tp/HuGwSAvll8NGFanF3UPX5l8f0tSPN2MNbf
	/hqjk+eZ1jY47s5DqXoBENmP0KqVC0NL31C9kMkcVOT02Dv54HSThwSasMsdzSai+g3GbymFco9Jl
	VZmQnAFvnrYxFb63r+mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmCd-0005gr-EU; Mon, 17 Jun 2019 07:37:19 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmCS-0005aO-6n
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:37:09 +0000
Received: by mail-pf1-x442.google.com with SMTP id p184so5183418pfp.7
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:37:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HDDzgSg1T7ysLRxOk37SCsYqNfotDW81GKuZvXoig7o=;
 b=ge66l99qAyy5sqtpqiwI2j8DzvtcWDX7be0CfQFNiqFE+RwLFOgUkJDQDaJ1uWTIHJ
 VM9lzuRk34zWJAVmR0VGUK2xe8hqtZoVUqvfgY1Vzdy3RdKXiFVhGY6ZuMkLSf4MLLD/
 +jaY0z5WVor4uIE+/1z7UbTraVAgWMIbVZCLc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HDDzgSg1T7ysLRxOk37SCsYqNfotDW81GKuZvXoig7o=;
 b=pEVJw6j8Ph5Ew6ByhqgFunu4XacKPZmFFVPdJI986dlq1V/bYQoO9GCwHqfcCRLZy9
 dc4FfBWUwsdbr2wEbjk3GBaCyUT4hPT7x9gfOd9CtCe8ZBeZmmuWl6IPUkbE9kwyMQNV
 k2l8eCVnpHn9rGdOCvD38HRvjt/j8vRlkPe02+KZKyYPONgJkE9JI46WJWImqN2ImxOX
 /LgpvADXYI4sR/lANNZj8DKLBtQir7DSEeAXo/N8p4KBiQhbdV4Bsj9WuY4EOBk33Ug7
 Cx//ttgPNWyJcpIakzsj9/gtDDTNAo9Ah61+lnqU5fQxVRGz9YK3o/MGhLbckJZDswtW
 qPRA==
X-Gm-Message-State: APjAAAU3WqlVG1SO1Kj/4gfWlurzjeILhLJjLgbHPDBtwbG0LSK6wUxM
 A9wSazVrRDzicnptBpl2f+DZEg==
X-Google-Smtp-Source: APXvYqzjOq6K+jE8qJvIYxjLYs5V2zweS931uKTWZGE6LMqNZQuMySqchQ4dWkW5tqE++NQYfLD7Lg==
X-Received: by 2002:a17:90a:db44:: with SMTP id
 u4mr24758976pjx.52.1560757027565; 
 Mon, 17 Jun 2019 00:37:07 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.37.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:37:07 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 14/99] ram: rk3399: Add chipinfo macro
Date: Mon, 17 Jun 2019 13:01:27 +0530
Message-Id: <20190617073252.27810-15-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003708_269746_B46510B1 
X-CRM114-Status: GOOD (  10.11  )
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

Add simplified and meaningful macro for chip info.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_common.h | 1 +
 drivers/ram/rockchip/sdram_rk3399.c               | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index edb2ee50f4..d7d44749de 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -35,6 +35,7 @@
 #define SYS_REG_ROW_3_4_MASK		1
 #define SYS_REG_ENC_ROW_3_4(n, ch)	((n) << (30 + (ch)))
 #define SYS_REG_CHINFO_SHIFT(ch)	(28 + (ch))
+#define SYS_REG_ENC_CHINFO(ch)		(1 << SYS_REG_CHINFO_SHIFT(ch))
 #define SYS_REG_ENC_DDRTYPE(n)		((n) << SYS_REG_DDRTYPE_SHIFT)
 #define SYS_REG_ENC_NUM_CH(n)		(((n) - SYS_REG_NUM_CH_MASK) << \
 					SYS_REG_NUM_CH_SHIFT)
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 26bbb4208a..7d071f998b 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1021,7 +1021,7 @@ static void dram_all_config(struct dram_info *dram,
 			continue;
 		idx++;
 		sys_reg |= SYS_REG_ENC_ROW_3_4(info->row_3_4, channel);
-		sys_reg |= 1 << SYS_REG_CHINFO_SHIFT(channel);
+		sys_reg |= SYS_REG_ENC_CHINFO(channel);
 		sys_reg |= (info->rank - 1) << SYS_REG_RANK_SHIFT(channel);
 		sys_reg |= (info->col - 9) << SYS_REG_COL_SHIFT(channel);
 		sys_reg |= info->bk == 3 ? 0 : 1 << SYS_REG_BK_SHIFT(channel);
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
