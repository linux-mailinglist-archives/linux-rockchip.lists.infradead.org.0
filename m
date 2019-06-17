Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9914747B25
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:37:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/3gZ8kTZ43u5h4Dzi9+pJdCMGwq5FWERMqG23f6OiiQ=; b=NjD+D8hn6ccjb8
	OTpWSth6zaPnsa7WDijhadrFvqZuVD9fUwXdEEGJ2MsRXS124GoEi3IT18liCNegszKYOVrTDp7OU
	lNMN3v4f2rmWWXX6+IKvMY2HiYGcJjj+EuJFJolKq3kaonS2I70boFMzQYEIRyB8Udlq3rwQ9gGDD
	ViaB7LFc27RGCVrmHUK27q8HZcj3kj3uHhFh1a3g2WVURFAN+dpEXcvWKnH7L/FOh3XrsHYltX5H4
	wKy6WIGqLvnLK6jAVUSf93QeYSwsplU1U7m51IGqAGbKC4jKPcm/auDaoQj7xfJqlLwpaOVXv/TNw
	UOlgVpHtPZ5C9pEu4AaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmCh-0005j1-2k; Mon, 17 Jun 2019 07:37:23 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmCV-0005cc-Ec
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:37:12 +0000
Received: by mail-pg1-x542.google.com with SMTP id f21so5314567pgi.3
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:37:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7GVQ6MeWi0wTHocOqmKID+Eml8vdHp60v/A+s5GMBA8=;
 b=WGmn47fQfvxxAkT0iILzUhQRRT0jZZZSu2zu7SXRqZwJw/QuEiV2q1tJPeAJft1uqc
 I6+T9BtxTzH7J8KL35fgkDAvlJrRw53wvFPGXZrZ5i7QVjI6+UsAG+eumy5kfQhbg1EZ
 t0HP6zBD3LhpYbLm/YSNzUt7rfqkrcL6SvKfc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7GVQ6MeWi0wTHocOqmKID+Eml8vdHp60v/A+s5GMBA8=;
 b=U3aqzDyNJI3A6PbLF2F7kb3XuouuS5Jdl0zN2AxbiF71LqL46eTYVZ2B+QMHcs13LL
 pUigU4NMEYhh0kMhuXHQUkK+Xz1ISD9IiHdq0/9XrLNTqkXzdryTc7ZBXuOdteUWRHPV
 7vyMTvXKzwTiAhCIjYR6C39oScuw2upAoV8VSLK+GR6hoSug58ySJWVlj2J/cX/Lv6rL
 VOypsBstG3vgqIAMFP38KA56sYNOOFXOhFIhaVc76B4nhh4/7i3ZfndAyouRcaSGk6RI
 zO7zrMgrwAQlKDFcvjfefBaQRuqje1+hmLW8loY2DN6+3zdvKaaSd64JIh+pL0DsVq2p
 kaDg==
X-Gm-Message-State: APjAAAWY+OHjIdhXbKPf6MMSKc3JVBVRwWOPyen6pKg6dPDmc3F6SlwK
 ixUlagubVB25EQs7yJQB4hWprg==
X-Google-Smtp-Source: APXvYqzIqZiD/LPecUY5zunX4899f+HvOacL3+k+ZAf4WOlcq+HQd4Jdx/lg+AEbT9cXV0b8nlH8NQ==
X-Received: by 2002:a17:90a:29c5:: with SMTP id
 h63mr23743463pjd.83.1560757030816; 
 Mon, 17 Jun 2019 00:37:10 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.37.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:37:10 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 15/99] ram: rk3399: Add rank enc macro
Date: Mon, 17 Jun 2019 13:01:28 +0530
Message-Id: <20190617073252.27810-16-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003711_612724_E1FC7637 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

Add simplified and meaningful macro for rank.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_common.h | 2 ++
 drivers/ram/rockchip/sdram_rk3399.c               | 2 +-
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_common.h b/arch/arm/include/asm/arch-rockchip/sdram_common.h
index d7d44749de..e2173aeeea 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_common.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_common.h
@@ -41,6 +41,8 @@
 					SYS_REG_NUM_CH_SHIFT)
 #define SYS_REG_RANK_SHIFT(ch)		(11 + (ch) * 16)
 #define SYS_REG_RANK_MASK		1
+#define SYS_REG_ENC_RANK(n, ch)		(((n) - SYS_REG_RANK_MASK) << \
+					 SYS_REG_RANK_SHIFT(ch))
 #define SYS_REG_COL_SHIFT(ch)		(9 + (ch) * 16)
 #define SYS_REG_COL_MASK		3
 #define SYS_REG_BK_SHIFT(ch)		(8 + (ch) * 16)
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 7d071f998b..acc8f17491 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1022,7 +1022,7 @@ static void dram_all_config(struct dram_info *dram,
 		idx++;
 		sys_reg |= SYS_REG_ENC_ROW_3_4(info->row_3_4, channel);
 		sys_reg |= SYS_REG_ENC_CHINFO(channel);
-		sys_reg |= (info->rank - 1) << SYS_REG_RANK_SHIFT(channel);
+		sys_reg |= SYS_REG_ENC_RANK(info->rank, channel);
 		sys_reg |= (info->col - 9) << SYS_REG_COL_SHIFT(channel);
 		sys_reg |= info->bk == 3 ? 0 : 1 << SYS_REG_BK_SHIFT(channel);
 		sys_reg |= (info->cs0_row - 13) <<
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
