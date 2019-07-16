Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20B656A825
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:03:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NEdK0YhzWm3FIYeoxGZvGeZWfKmBFGhoxGsJRo9l3yw=; b=SsNT0Ej15xJqCZ
	EywL6ox6TGiNm8n1ndc9sH0Y2fKvjkmZEye4fs6MTLoSXE1AZAstCnD6pptN58wdgJaQ7B5aswCl9
	VXonP/vDUOjqEpJTm7BWpDuvnEeYLHPvjP7comPoUFfoQfCMu1Xxlk5On0UsqVwNOZrjZCFb9bJ8y
	kD5/BtUwmxIsqk2fIKssbzMutS7ygNQpf3icGmEaHB5/fq7uN9deJQ111rL5lwEU0xwX4KD1sQAw5
	OhrXp2TvWZ5rMmCQF/ZVFJZF5QJwUxoUVLMEoxx6RSzkXYCRDRCh/rFrC++3c1qhIsbMNDarDZVS1
	b0v5ERgYK0IlWqxxMfDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnMAk-0000Yr-Ce; Tue, 16 Jul 2019 12:03:06 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM93-0007PQ-Mo
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 12:01:23 +0000
Received: by mail-pg1-x543.google.com with SMTP id i18so9333042pgl.11
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 05:01:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eSiNIdWprSTtLeb4eEp8uQJ8QGoY6tivwLSGPJNvRoA=;
 b=hYTTtbSPGYRg+pMecmkQfjqcNcC+j8y9x934IbH5tcR8c/hoRGCRi8J0aF6pttKheZ
 ZCbjR0iAysDVX8jdRUcRVET/KzGwjLvACA5g9oefXSxHOsyzc9jDufOhlPUAOBCCe2WD
 8mBliaiBg0lY47s82k3jl3ZKGi/mSRt2GtwVY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eSiNIdWprSTtLeb4eEp8uQJ8QGoY6tivwLSGPJNvRoA=;
 b=e0NjIZ+TONSFnshImtF7K8aUadjunnfxbd3TRck+E1x7lvH9kFL53J4ITSqFnAYs/E
 CV+AtVP0SPnyjCa022OFB0IK57BXm+Wmy9xU4SJuLSATs2qWq1FHog4TGktPCMlv3AUc
 1G76GjJWjsL24tvDtBcibbx74uYYdVUc7SqaNeSZXDpgXb2U07fVdwxUnphvAQLepmxG
 SIuFyKXkEQhWfw7+BCx06rn60j4Aaa5LfgXWydOOmmrnvTGiOHx3GovZAwbmPoNeSfIw
 R1R0yjHUaLxZLJ95W0L7Cd+Y2EWYb9IApWFPz7vL3ZKAvL/rczmp+6e0kObD2WxDKSl5
 311w==
X-Gm-Message-State: APjAAAX4RD8P2oU2FiJdX6by2NmV6HohSZIw+iKgrSHni1N/U5nw6oRr
 L+x8crh6BI1PZHqPW1rQhOOtag==
X-Google-Smtp-Source: APXvYqyBFKAwoFx6uYNrZ41BalZBsRiD1OBrB8f+sm9mJ7yS9A82sOpmGfGwRHMkpMR9qFPf4Btmzw==
X-Received: by 2002:a63:8c0e:: with SMTP id m14mr16708414pgd.219.1563278481106; 
 Tue, 16 Jul 2019 05:01:21 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.05.01.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 05:01:20 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 57/57] rockchip: dts: rk3399: rock-pi-4: Use LPDDR4-100 dtsi
Date: Tue, 16 Jul 2019 17:27:45 +0530
Message-Id: <20190716115745.12585-58-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_050121_889407_272BD3C5 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

Use LPDDR4-100 sdram timings dtsi for RockPI-4 board.

All these timings are processed during TPL stage of rock-pi-4 board,
bootchain. This make TPL would replace rockchip in house rkbin in
current bootchain.

Bootchain after and before this change:

   TPL -> SPL -> U-Boot proper

 rkbin -> SPL -> U-Boot proper

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/dts/rk3399-rock-pi-4-u-boot.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/dts/rk3399-rock-pi-4-u-boot.dtsi b/arch/arm/dts/rk3399-rock-pi-4-u-boot.dtsi
index 7bddc3acdb..dbfa4ba9f8 100644
--- a/arch/arm/dts/rk3399-rock-pi-4-u-boot.dtsi
+++ b/arch/arm/dts/rk3399-rock-pi-4-u-boot.dtsi
@@ -4,3 +4,4 @@
  */
 
 #include "rk3399-u-boot.dtsi"
+#include "rk3399-sdram-lpddr4-100.dtsi"
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
