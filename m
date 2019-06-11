Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A7E3CFE8
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:57:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MlwwYGKhKADrzZn7JfJp9b/SJd7NNZ9Ph0Quscep28o=; b=U6988j5aoQ2fcf
	Or4nh95igKm4x4a6jhD9mcW2vlvBa6CaB2GV7UMykHcUnaY7yeV/4I+TI+j7nuW11nfPdh3b8m22v
	AUtKnRWMZyZGQziiZJ6ZKJ9uEJZIMBh02HsSEtCztU8Z4T4dFFQtRAW919KCmH/eujYRsMYrzkZVy
	OM+BOvVTKmhHQHCd6Tu3a/dk8ZJ0fI4fsBC6af1CMN8LxcFYAr8IwZdS5Tzy/XN/FAjZTBqSER04L
	oKWelFV2DkepYEjNGtFqoUddIMN10WvYcc8gaHEhLFy0slxOAldPgjGuDMup51ZZ/Y/mfBIwdAynL
	ECn4wqKKVv1w/FEDvXIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiCv-000097-IO; Tue, 11 Jun 2019 14:57:05 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiCb-0008KG-10
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:56:46 +0000
Received: by mail-pg1-x542.google.com with SMTP id f21so1102221pgi.3
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:56:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nn/bptUR9NP7149zH48cvEKKo/AitoZ6dFu84lE6uH8=;
 b=HC25Yp5F2jt60unf7nd53Wo5uJ9DR6/E8cPC7UlYgroi24Q3aajoGs7+V0kERyNxrS
 LcifpUdCdipqT4fplXDaayo62HhW+p00vQmwPa+ETWU5LhR2/8gHyRwr5krfZQKUGAlw
 4brpcq0W9jgZrNz1jIX4YTfFopuykmIKPMCxE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nn/bptUR9NP7149zH48cvEKKo/AitoZ6dFu84lE6uH8=;
 b=EljoRJseh58sZupWL5ISzfoS9nAn26iYAtpcTh4iMY2RHqSeObiX+1bEUiJY1x5C3T
 5iroPpH34HVsh0LXuYzw2fN6AGiYeDBwPLJTNwOO8uYxC3F34bKOOR5sH/Jf9uoAOsVq
 QnNyhZVHjFg8WwuRhgYkJN28csbULBpCJwZodrsbMr3A4WJcPZ3Ghopo/6oM6BgqMGtn
 kyUaPDAEeTd13MYLHr3gsZ6IrIVU/mRpfAErw1yD0y8lGr6BEmRoLntXoEn6NfGooB9C
 9LCz32ew1DdH4TqTEYLkGa7wT+MnPYCSRX5e58zy+KtrAVJuYADMjiWPMuUYGYY6Euvs
 eIAQ==
X-Gm-Message-State: APjAAAXtyI85xaPjyExlWReq+GlGDTdwN8AtFlgP+n8YOGWcn/DCUmm5
 aBJODYcFra5jMCQLYtOaWZlg+A==
X-Google-Smtp-Source: APXvYqzwnuErl1K49iZJ/S17qgf5fgAIGsUIG8ceVZbPbnibrsFgEpxD8gYocoe6hP/9CaEUfboHiA==
X-Received: by 2002:a63:1b56:: with SMTP id b22mr19811987pgm.87.1560265004176; 
 Tue, 11 Jun 2019 07:56:44 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.56.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:56:43 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 74/92] ram: rk3399: Get lpddr4 tsel_rd_en from io settings
Date: Tue, 11 Jun 2019 20:21:17 +0530
Message-Id: <20190611145135.21399-75-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075645_098134_666C0197 
X-CRM114-Status: GOOD (  10.89  )
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

For base.odt 1 the lpddr4 tsel_rd_en value is depending
on IO settings of rd_odt_en.

Add support for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 2ce9066d53..c0e9a4e7c8 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -646,10 +646,14 @@ static void set_ds_odt(const struct chan_info *chan,
 		tsel_ckcs_select_n = PHY_DRV_ODT_34_3;
 	}
 
-	if (sdram_params->base.odt == 1)
+	if (sdram_params->base.odt == 1) {
 		tsel_rd_en = 1;
-	else
+
+		if (sdram_params->base.dramtype == LPDDR4)
+			tsel_rd_en = io->rd_odt_en;
+	} else {
 		tsel_rd_en = 0;
+	}
 
 	tsel_wr_en = 0;
 	tsel_idle_en = 0;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
