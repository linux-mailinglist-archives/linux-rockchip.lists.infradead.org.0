Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AF313CFD9
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:56:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tYWY9PlBsRQgFgFjbE7iwart7jhGgw6p5jUccCZ38dA=; b=pSx9O7iN2NW1Hi
	xEdgOlBHwNX8GPMqpW1VjrfDfmF8zRBAN4nBvbsTLdBalqBDa7FIMrJ9edF7pX4dOQup6vsSotREl
	1kNTR2TuRoIuxWKprXNnTGhIxF4gYcNF/VdUqNvcKBcqIDdWtfTgjlxcr6WRXrIFxdteDrOkjoWVf
	Ou84BwktT08O9o4jiGlFn34DY4h5Spf8Bg0BmUeWOMszRE9yk/fqNiQVWHDJUFSPGktbr5o4sQeJB
	f0mHCXzzV4KSSmhd8I1W6MIgLBeOG60Gq4oDq0z8sk9nfdDmM5Lb3i8LASacv+7oK9ERlL6I6Urha
	p9LQOvlMchuv1CgWzDCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiCP-0008BJ-4r; Tue, 11 Jun 2019 14:56:33 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiCL-00089A-7Z
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:56:30 +0000
Received: by mail-pl1-x642.google.com with SMTP id go2so5218782plb.9
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:56:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=be5iGODuHUyOHnG/APAPnJWbjtO4VKwOHIm/JwaS84I=;
 b=GANHWTSc89wP98kGQKwTaI1FZ5/JJKeGgFwLCLSjz6l/szK4JnjdWMRuW7vI/m05xT
 ef++Tv2Dmla/Oc/n6vp0wb+bUd2pP/tbS/uG6S8+1FpQ/a1k+LHbXV991X3jRcu8viSU
 ftq994YJtgXTeAJaGgJQEErYXKh3De8oAkD9w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=be5iGODuHUyOHnG/APAPnJWbjtO4VKwOHIm/JwaS84I=;
 b=Urrh64JyvCzt18PW8ZbNqAuhMdiHS7ICmcZAfB96jYJ61e9dNGxNduLcFgXI7fiYTr
 UJAoLtn+nqLMH/KHfkpkxPmUhtt3Rro+GHtbOMtY5bEy/CyCP7qZY7IlqY9R2Oe2jrED
 X5/aNxQLqN4NUb9gKrJ6PUg5PmdrH/3pEkoDdYMZhvvLq4O1PbjcQmY4SeZ6YvDBagc1
 DQqi52kgqzbm8WOlVcH5MO4BulIhxXP1fnUIydn8CkMhFZiiTY2dUFKat/+GIGXF3dgH
 cGKyhEFj45LiWiN2iwZT5SigSzd6Phl4T5yXej5kcvlpaZ0/zeFLh0REI/+dBieXYLGE
 8PMg==
X-Gm-Message-State: APjAAAXmAFnbOk2yYIQF2seoOVQMbOE6+03sVNnwbDEnsTBLLT1sSgCs
 EA4WSma4kIGe4dYrG7tb02TeAg==
X-Google-Smtp-Source: APXvYqwpxnCJoFCxd2hkd4evlxOf6cPFOEaDfik1C9v3g1wCXpBM07BNlUwJqpY9/UX9APTqZYc9xQ==
X-Received: by 2002:a17:902:4181:: with SMTP id
 f1mr73651417pld.22.1560264988626; 
 Tue, 11 Jun 2019 07:56:28 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.56.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:56:28 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 70/92] ram: rk3399: Add IO settings
Date: Tue, 11 Jun 2019 20:21:13 +0530
Message-Id: <20190611145135.21399-71-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075629_311371_E2F8DF0D 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

Add IO settings for dram ctl and phy.

IO settings are useful for configuring ctl, phy odt, vref,
mr5, mode select and other needed input output operations
for lpddr4 or any other dramtype sdram.

Right now, this patch added IO setting for all supported
sdram frequencies.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 104 ++++++++++++++++++++++++++++
 1 file changed, 104 insertions(+)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 9151b023e2..5db7cbe116 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -80,6 +80,110 @@ struct rockchip_dmc_plat {
 	struct regmap *map;
 };
 
+struct io_setting {
+	u32 mhz;
+	u32 mr5;
+	/* dram side */
+	u32 dq_odt;
+	u32 ca_odt;
+	u32 pdds;
+	u32 dq_vref;
+	u32 ca_vref;
+	/* phy side */
+	u32 rd_odt;
+	u32 wr_dq_drv;
+	u32 wr_ca_drv;
+	u32 wr_ckcs_drv;
+	u32 rd_odt_en;
+	u32 rd_vref;
+} lpddr4_io_setting[] = {
+	{
+		50 * MHz,
+		0,
+		/* dram side */
+		0,	/* dq_odt; */
+		0,	/* ca_odt; */
+		6,	/* pdds; */
+		0x72,	/* dq_vref; */
+		0x72,	/* ca_vref; */
+		/* phy side */
+		PHY_DRV_ODT_HI_Z,	/* rd_odt; */
+		PHY_DRV_ODT_40,	/* wr_dq_drv; */
+		PHY_DRV_ODT_40,	/* wr_ca_drv; */
+		PHY_DRV_ODT_40,	/* wr_ckcs_drv; */
+		0,	/* rd_odt_en;*/
+		41,	/* rd_vref; (unit %, range 3.3% - 48.7%) */
+	},
+	{
+		600 * MHz,
+		0,
+		/* dram side */
+		1,	/* dq_odt; */
+		0,	/* ca_odt; */
+		6,	/* pdds; */
+		0x72,	/* dq_vref; */
+		0x72,	/* ca_vref; */
+		/* phy side */
+		PHY_DRV_ODT_HI_Z,	/* rd_odt; */
+		PHY_DRV_ODT_48,	/* wr_dq_drv; */
+		PHY_DRV_ODT_40,	/* wr_ca_drv; */
+		PHY_DRV_ODT_40,	/* wr_ckcs_drv; */
+		0,	/* rd_odt_en; */
+		32,	/* rd_vref; (unit %, range 3.3% - 48.7%) */
+	},
+	{
+		800 * MHz,
+		0,
+		/* dram side */
+		1,	/* dq_odt; */
+		0,	/* ca_odt; */
+		1,	/* pdds; */
+		0x72,	/* dq_vref; */
+		0x72,	/* ca_vref; */
+		/* phy side */
+		PHY_DRV_ODT_40,	/* rd_odt; */
+		PHY_DRV_ODT_48,	/* wr_dq_drv; */
+		PHY_DRV_ODT_40,	/* wr_ca_drv; */
+		PHY_DRV_ODT_40,	/* wr_ckcs_drv; */
+		1,	/* rd_odt_en; */
+		17,	/* rd_vref; (unit %, range 3.3% - 48.7%) */
+	},
+	{
+		933 * MHz,
+		0,
+		/* dram side */
+		3,	/* dq_odt; */
+		0,	/* ca_odt; */
+		6,	/* pdds; */
+		0x59,	/* dq_vref; 32% */
+		0x72,	/* ca_vref; */
+		/* phy side */
+		PHY_DRV_ODT_HI_Z,	/* rd_odt; */
+		PHY_DRV_ODT_48,	/* wr_dq_drv; */
+		PHY_DRV_ODT_40,	/* wr_ca_drv; */
+		PHY_DRV_ODT_40,	/* wr_ckcs_drv; */
+		0,	/* rd_odt_en; */
+		32,	/* rd_vref; (unit %, range 3.3% - 48.7%) */
+	},
+	{
+		1066 * MHz,
+		0,
+		/* dram side */
+		6,	/* dq_odt; */
+		0,	/* ca_odt; */
+		1,	/* pdds; */
+		0x10,	/* dq_vref; */
+		0x72,	/* ca_vref; */
+		/* phy side */
+		PHY_DRV_ODT_40,	/* rd_odt; */
+		PHY_DRV_ODT_60,	/* wr_dq_drv; */
+		PHY_DRV_ODT_40,	/* wr_ca_drv; */
+		PHY_DRV_ODT_40,	/* wr_ckcs_drv; */
+		1,	/* rd_odt_en; */
+		17,	/* rd_vref; (unit %, range 3.3% - 48.7%) */
+	},
+};
+
 static void *get_ddrc0_con(struct dram_info *dram, u8 channel)
 {
 	return (channel == 0) ? &dram->grf->ddrc0_con0 : &dram->grf->ddrc0_con1;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
