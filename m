Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF013CF8F
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:53:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l6WPpahYWtT2sZbYYm609ntpatHtdmVSrZBWLTh1Eas=; b=rCZ0we9/HUlFud
	xGCykneTLH2vNSDMOtkHEZ+V5Me2iGacXxCTSvlYjB2Eg+hicN577NPSalD9fLO2LscRbTD8gzwjE
	vj3br+tMdaqcQkTRGFyyY/cSNESH9kipqVTmZJCSBsfANN24gH13FkkCUF9GPbrYs7yJTYoqU6DOT
	4dnsuU2UVTwYYsY0IOpS+RJ2QusSIDjWf0nbJWGeTsuPkK5Iih5A/hCJjCbxxglwZtXvD2TOgjNYn
	1sHlhG9pMvQxXQKowHqihwxD2WcZPIH0rFaq/3VMN9VRFGUR2qgnJDiJctGO4pNn+PyUaoz2QIqod
	UhNWaT+v77es0/J1cbqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hai9f-0004wb-Jt; Tue, 11 Jun 2019 14:53:43 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hai9b-0004vF-RR
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:53:41 +0000
Received: by mail-pf1-x441.google.com with SMTP id j2so7595063pfe.6
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:53:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pNzjAraVNoewldxYhRz1aFbJ02OEpUk5OMXvghfzWZ0=;
 b=rpD/jA2RFdr9NFKISejVFV7QM31lgWQcyrXmAI1udBaJz0X+bm4u8xhANCz0ziJLII
 RFzPZLaBuSRoGdPk1ibPRQEpwdlkpkQcMG0HtmVORBja2HdZHJvBXuMkaXiGBDTv9TeL
 aLsnJPzKjcc0ICkL0kuVSjtlIiaZgmW3AVxdM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pNzjAraVNoewldxYhRz1aFbJ02OEpUk5OMXvghfzWZ0=;
 b=C79u2MI80+9w37VfAWFDWGXFMk11COputCeNn4u0qHIidpDz36WH4Mg8q6pyjrm8lH
 9yZMvIzT90zSO7YI53vvwgArNzmpAnwD4JbTuGy4tEjcRYqMyt+wyuENYKlTkw+pcgZ8
 yUQ0RYkW4swG7pAn7tXvl+baeaIVV55v1JIzYQK12RHSsBNkZKKwBhpr2sgs97zs51/V
 Rn4WWxFkJNKydMOJ9XZ5oBQNk0gHbFRVmxKVR4lh9Pwc/V2TAeLVlbYq3EieINszOI/X
 k7FUuTs4B2gUtO1X/3roXDb+lkMnj079eRbpyFbHukGOJK0mPmVDOSPES+FRVablweBN
 r/Ng==
X-Gm-Message-State: APjAAAWxNkb5kegdgPKwBrBQV+H1dnvzb7Kk8e2UVCpZ2FLuZ/7kZJYY
 3/hevlz3qHf26Mk4I92j73RUdA==
X-Google-Smtp-Source: APXvYqxF24dSKOyq5Eeejl6Bl2OU5yCuETvZGBWlidEu/ijKzQC7YF8KMLdtvDpUakqHf7PVfyOiiQ==
X-Received: by 2002:a63:1a59:: with SMTP id a25mr13440302pgm.173.1560264819239; 
 Tue, 11 Jun 2019 07:53:39 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.53.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:53:38 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 27/92] ram: rk3399: Add DdrMode
Date: Tue, 11 Jun 2019 20:20:30 +0530
Message-Id: <20190611145135.21399-28-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075339_919940_4008603C 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

Add DdrMode structure with associated bit fields.

These would help to reconfigure sdram capabilities during
lpddr4 setup related configs.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../include/asm/arch-rockchip/sdram_rk3399.h    | 17 ++++++++++++++++-
 drivers/ram/rockchip/sdram_rk3399.c             |  2 +-
 2 files changed, 17 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h b/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
index 924eeb3bac..a191d242f8 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
@@ -36,6 +36,21 @@ union noc_ddrtimingc0 {
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
@@ -56,7 +71,7 @@ struct rk3399_msch_timings {
 	u32 ddrtimingb0;
 	union noc_ddrtimingc0 ddrtimingc0;
 	u32 devtodev0;
-	u32 ddrmode;
+	union noc_ddrmode ddrmode;
 	u32 agingx0;
 };
 
diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index f9fec14758..6bf8dce6e0 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1047,7 +1047,7 @@ static void dram_all_config(struct dram_info *dram,
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
