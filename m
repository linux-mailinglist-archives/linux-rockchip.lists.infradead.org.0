Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F8D3CF7D
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:52:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ALSIkhr8LiCK1tsiahv/7tSHjhm0V0Ovw/Yh8+cAzHg=; b=h42PWOjy373gk6
	vY3MDB54EhBAAU2jcClR/DYwMkT/6xNrez/u3fNj5fDuHQ+w6iHlZX9coGMfIi1q68pgj2JAUJmlR
	gwgxVNjanu7hcNqZuwwFeBoL4DBFcfDVfsvcbYhNTEpK7DKIVgsVUdC5ePP2bEDjk+FTlcaYp0zup
	nghVJgZGTWVtm+8XlCIizvy7+wceml9wB9ZjP3kBa9B53x9YyxtH13POhbqWetRtyT5IuOJte7B8v
	B4kLodURhQDnBVPaBd/XkJlF9BFNIHlcL3WOZsSXjvZrDA9yvYdatPpq7ViyfBi2Jj3A3Nks8AKPJ
	tRRDQvjDI/txB5b2V9hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hai8Z-00047g-Fp; Tue, 11 Jun 2019 14:52:35 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hai8V-000464-PG
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:52:33 +0000
Received: by mail-pg1-x544.google.com with SMTP id 83so7104767pgg.8
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:52:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=G8BU7jn9Nzu+haHvyO3dpJamq/Bm20SU6tSZMgZffqo=;
 b=IM/IqXBvbJJWuShya/nB9SCnsZXY7GmXdPd8K8SuFI57OnFUqAk313N0crtFzPR3Nc
 RHZwFoUK29NZbkR1VkjBN4lj4wpxCcQ1jQ5hrMbkmE0oDOrMJF7mXrHvrbG9ZkOjoePL
 qR7JHsSWxNoHMaOQKfB8nqnN8Z9dJSVIlDxKs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=G8BU7jn9Nzu+haHvyO3dpJamq/Bm20SU6tSZMgZffqo=;
 b=LCJlYP1KCT701kE6yN2IkEQUHhQR+SFhRvM82cxyBhDh/cb7+2B/xAHdyxuArZQlym
 x789oaJL8RGpZzQdYHMhXi6gVeZMo+WtV6qfiF6+lOZyvsSPC0n5/YsUaokjNDQul8Km
 BGOd7lLSCSzjFZCBHNNfh7Ia2Sggbk0hKu2nwvmMK/r9uIguF13ul0W/wayzl8RDbeHQ
 7OOrhSDtEHDziFsBqM5PnCLd1JktTrs6Bb4GeLASsLfBaypEIa8V0qSf2MK0QBFE6r7E
 Rddd7nCzHS3H6ByQb44HSAYQE5LhCTDgUmemJxpcsFmAT7m73o1H0djxZhC4sF1Ko+e+
 S6Rg==
X-Gm-Message-State: APjAAAWksp9smMzjXSrmoBffKLvWKGWJpbsnGJEThz5Bt71bZGqpCpfd
 BJqs8WEE0PEKY7H1PnkZ2uIT/Q==
X-Google-Smtp-Source: APXvYqzvcmYrEU22Sjx1HpNgnv9AUNp2qlpO7T36ztiPVgmwrglxz2fPDFzGJaa1J2DfVx5luJgUfg==
X-Received: by 2002:a63:e304:: with SMTP id f4mr20513657pgh.187.1560264751146; 
 Tue, 11 Jun 2019 07:52:31 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.52.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:52:30 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 10/92] ram: rk3399: Add ddrtype enc macro
Date: Tue, 11 Jun 2019 20:20:13 +0530
Message-Id: <20190611145135.21399-11-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075231_844372_E50EB5CE 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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

Add simplified and meaningful macro for ddrtype macro.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_common.h | 1 +
 drivers/ram/rockchip/sdram_rk3399.c               | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index 671c318d50..83936d3679 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -34,6 +34,7 @@
 #define SYS_REG_ROW_3_4_SHIFT(ch)	(30 + (ch))
 #define SYS_REG_ROW_3_4_MASK		1
 #define SYS_REG_CHINFO_SHIFT(ch)	(28 + (ch))
+#define SYS_REG_ENC_DDRTYPE(n)		((n) << 13)
 #define SYS_REG_RANK_SHIFT(ch)		(11 + (ch) * 16)
 #define SYS_REG_RANK_MASK		1
 #define SYS_REG_COL_SHIFT(ch)		(9 + (ch) * 16)
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 1541b34a7d..69c8d53314 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1008,7 +1008,7 @@ static void dram_all_config(struct dram_info *dram,
 	u32 sys_reg = 0;
 	unsigned int channel, idx;
 
-	sys_reg |= sdram_params->base.dramtype << SYS_REG_DDRTYPE_SHIFT;
+	sys_reg |= SYS_REG_ENC_DDRTYPE(sdram_params->base.dramtype);
 	sys_reg |= (sdram_params->base.num_channels - 1)
 		    << SYS_REG_NUM_CH_SHIFT;
 	for (channel = 0, idx = 0;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
