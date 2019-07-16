Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ADD36A7F8
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:01:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vkD/RSEbcPp/Sv91pkistOyZ2ZWbC4wd0ObUUaXraZM=; b=tSWz3As2QRaNF5
	tgwZQRqyeJqq6iMDV4ZuAJ8gLPj53nUSVLKbUxq+e0APOnN6VFDVVRuIhBH5Ob6CMSTl8TyDz6i7L
	ppq+gusLbenXl/sgDoElEEm1cVLyUytUdEo/28/njNz3njTEtcxwONNJc17qAgrLrd8k37X3BaxdL
	GVqjeJJWFKQRXwLc3aq83tmAqK8ESVuA2thzzw9Zer42kAiLOCYEBfqESoxpIjCr/ZIYqd/jXAvd7
	koQWbNcSif/MWau6MepPoWAPPSNFXihTqS1BJhH4Y6EyB2pDx4jT8kRE8DUgaPUcrdUY7UnsqQnsT
	reHv/l9+Dbhkg3OcV8XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnM90-0007KV-9s; Tue, 16 Jul 2019 12:01:18 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM6n-0004KX-2o
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 11:59:04 +0000
Received: by mail-pl1-x644.google.com with SMTP id i2so10017441plt.1
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 04:59:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OBBqxzwZk8zFsYhB5wViSonLKwBtWoREpqgXCRrl5xk=;
 b=mWXJia57PVItEPN4DB5ae/8ku5AEVVpvfVjkVctoY2vhLJYown6pvmf9WXFt9Zgkbb
 3+cTfx8v5Ab8WGDQnNLDCPD60E8GpyYQrrhvzUk6KlviAsLprxburx5I1m6BV9BzjQMI
 fboSxSOHZ1IfPoZvDgRJVhwE2LhoafZQpjzTY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OBBqxzwZk8zFsYhB5wViSonLKwBtWoREpqgXCRrl5xk=;
 b=gloxNP/UZfB6a/cQVkxd5N1a+r/QRwpe0pXjwhigfiqk2Ci9pZcfEsFVoYLZ4t8ql+
 IPKW3+vu6n/5xbcUrCI9l4ZJ7B0JwwBxbPBhtd65DV6dxhe0aIUtlU0npVttnUD/1oUg
 Il1WPkKTiS4Sao/pC+gwqB2vYVtg4tKNNDBDWRqTc6CNrHYGt5fa9ZXx5mewIvJTnBiY
 IzZXTkCOlRS6xZPQUSHRxgPida8iOE/+lFgfdbCJeFfPKJizXSkia6TprVayUev6ZveZ
 rZH+N1gh8y2lKLnDszNGwr7DJWvJuXwW8L7KFZh8OfUXRDqWZQxko0szUEd8qqlUxFOX
 j95g==
X-Gm-Message-State: APjAAAX7N+u8bvNrGGVhGU7nUtyiiSPHIid90XbYaODdl/rlenH68pC2
 bv4A5OFxpX6hMJIOCPIaMDLleA==
X-Google-Smtp-Source: APXvYqxgcqSNLVrkoQvBMOpAmev1IkPLx/yvFhkCzDi44t9gR+Hk0XYauivC6+/a8gGbJ9Sgj8v2eQ==
X-Received: by 2002:a17:902:2a29:: with SMTP id
 i38mr35053781plb.46.1563278340462; 
 Tue, 16 Jul 2019 04:59:00 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.04.58.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 04:59:00 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 18/57] ram: rk3399: Add DdrMode
Date: Tue, 16 Jul 2019 17:27:06 +0530
Message-Id: <20190716115745.12585-19-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_045901_464101_655DDAE3 
X-CRM114-Status: UNSURE (   9.85  )
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

Add DdrMode structure with associated bit fields.

These would help to reconfigure sdram capabilities during
lpddr4 setup related configs.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../include/asm/arch-rockchip/sdram_rk3399.h    | 17 ++++++++++++++++-
 drivers/ram/rockchip/sdram_rk3399.c             |  2 +-
 2 files changed, 17 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h b/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
index 7f41a67242..dc65ae7924 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
@@ -28,6 +28,21 @@ union noc_ddrtimingc0 {
 	} b;
 };
 
+union noc_ddrmode {
+	u32 d32;
+	struct {
+		unsigned autoprecharge : 1;
+		unsigned bypassfiltering : 1;
+		unsigned fawbank : 1;
+		unsigned burstsize : 2;
+		unsigned mwrsize : 2;
+		unsigned reserved2 : 1;
+		unsigned forceorder : 8;
+		unsigned forceorderstate : 8;
+		unsigned reserved3 : 8;
+	} b;
+};
+
 struct rk3399_msch_regs {
 	u32 coreid;
 	u32 revisionid;
@@ -48,7 +63,7 @@ struct rk3399_msch_timings {
 	u32 ddrtimingb0;
 	union noc_ddrtimingc0 ddrtimingc0;
 	u32 devtodev0;
-	u32 ddrmode;
+	union noc_ddrmode ddrmode;
 	u32 agingx0;
 };
 
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index e916448fc0..e4723c7d59 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1114,7 +1114,7 @@ static void dram_all_config(struct dram_info *dram,
 		       &ddr_msch_regs->ddrtimingc0);
 		writel(noc_timing->devtodev0,
 		       &ddr_msch_regs->devtodev0);
-		writel(noc_timing->ddrmode,
+		writel(noc_timing->ddrmode.d32,
 		       &ddr_msch_regs->ddrmode);
 
 		/* rank 1 memory clock disable (dfi_dram_clk_disable = 1) */
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
