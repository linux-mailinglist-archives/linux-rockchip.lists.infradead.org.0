Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA53116A50
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 May 2019 20:37:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ceHRH4OLLNpjZ/06c7aTFIU2Hr3yD5b/s4BnU6fYJE=; b=B3f8uMRSQHVhEu
	8vYwxoyNNnbR9UF5tLXTq1D83Jjq/ziWKP8J4zHzIqQvNhlSmYA8HX4dmwNxY42bE2bSFd2t/DWfx
	HebIzKLfsU4Q71N072IiYoFwZ70yKo8H1LbkJ927B+pfplNUSHW3aCmX42v8xcX9zWgTw9QUkiPWi
	5FJlkaDIWiRaqx8yQt7OMWkads2YxPz8ccljbiBwBAaNqdcbnc/cDgIr+giG8hKCynOKgRr9D6qwy
	coCRBjoTtab+e61ygZOU1OHnXWIts4QIJETgcCf0xjS3ziI1agTi3JPexN7uRkCt20YoKVdBSfKhi
	Zw2HTQ1fQog0W+zZ1a2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO4xa-00017M-VW; Tue, 07 May 2019 18:37:02 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO4xX-00014w-4E
 for linux-rockchip@lists.infradead.org; Tue, 07 May 2019 18:37:00 +0000
Received: by mail-pl1-x643.google.com with SMTP id n8so8598398plp.10
 for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2019 11:36:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=d6JHM5/ooTGFq5zs+8Ro6gi/VDxPGLGt5ecNLlHQODg=;
 b=nTZbIXVW8lZgyYuApRMPWU16Pjz5QVXsCHIXzZk0pg2vGSOL/UnzJzm8er7O6i8/rr
 IBWeRp4CfupEKSmDwIrLFEfW0CFV526qKI4ng+NtP8WnxTxSIicJASXUS3l8xYfa6yzD
 adP0QzeXEDja671zkIpu5pfNfyXIz7oKiusU8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=d6JHM5/ooTGFq5zs+8Ro6gi/VDxPGLGt5ecNLlHQODg=;
 b=jXayo0Ad5Q36nyxSINXuYADvqJRptYy+pfLCzF2uCbJU82Ipbfc/PdHez8UXSLHLIR
 NgOQVdCPDzkv0wCFNzBzPjlHIMXWNr/MLmvSg3Hk+P1XrTRPncTQvkKimKP655Rsupc6
 dfoJ/fJYxNlPvtJsrb6oa0+HnlJ8J+4SfTsBwOwFRXz3cNJNyThGAVTre8fbzpZNu77O
 hGF5lVJO8RwXf/ee/UM+d9iEk9kkHTFv5iBbSgcGNmph5fgy+F1w40tWZt2S7rinGSKd
 z8ROSuIPGTrGvQg1HUHInUQVSGMIOFaAzNbF8Ed/SJiLahQ43T6enL0nFnyBnElVtvur
 WPRw==
X-Gm-Message-State: APjAAAUahcdMbgHsJb5Ansvz0wsjRYGpd9hPsHqsjpHJlzCUjx2NISTJ
 EvF0rxYBYy2D5QAte/rmDpGBiw==
X-Google-Smtp-Source: APXvYqwgYXzrSKpg1dOoG7NwnXLlNQ24DAPJ8CblJ2R+75zfFFOKPre8nn6z09lYMoMLe/NPL0PRRA==
X-Received: by 2002:a17:902:4501:: with SMTP id
 m1mr40453967pld.302.1557254218391; 
 Tue, 07 May 2019 11:36:58 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id b22sm21743728pgg.88.2019.05.07.11.36.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 11:36:57 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>
Subject: [PATCH v7 05/11] rockchip: dts: rk3399: nanopi4: Use CD pin as
 RK_FUNC_1
Date: Wed,  8 May 2019 00:06:21 +0530
Message-Id: <20190507183625.5983-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190507183625.5983-1-jagan@amarulasolutions.com>
References: <20190507183625.5983-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_113659_335606_A0802C8D 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

sdmmc cd pin is configured as RK_FUNC_GPIO which is wrong and
indeed failed to detect the sdcard on the board with below error

  Card did not respond to voltage select!

So, fix it by replacing RK_FUNC_GPIO with RK_FUNC_1 which
is already defined in rk3399.dts so make use of same like
other boards.

Add these changes in -u-boot.dtsi to make Linux sync easy for future
changes.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/dts/rk3399-nanopi4-u-boot.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)
 create mode 100644 arch/arm/dts/rk3399-nanopi4-u-boot.dtsi

diff --git a/arch/arm/dts/rk3399-nanopi4-u-boot.dtsi b/arch/arm/dts/rk3399-nanopi4-u-boot.dtsi
new file mode 100644
index 0000000000..20db99c0b8
--- /dev/null
+++ b/arch/arm/dts/rk3399-nanopi4-u-boot.dtsi
@@ -0,0 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
+ */
+
+&sdmmc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd &sdmmc_cd>;
+};
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
