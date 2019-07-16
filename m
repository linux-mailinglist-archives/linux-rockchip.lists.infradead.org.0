Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CF6D6A80C
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:02:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8vCGsKr6ATI1veepM3aVvBlsEbI3pZyEBanCG7Ez434=; b=lIOcrozdpgwB/w
	H/lA/gwhIoQOktH4EXlu91ZwwQlgsEp00+l/vw9zsuroS05uiFOKrU36H4JGmgyYgnzMOlMDtjqyD
	gK3wsC9EdpgOFoUnFJxytoxpb+9oPVFlgqXOf7nuzrdrgjdCJJ0Nj+xTBna3Iz9RUJPi7GjrocZil
	HKqbhn1P2znyudtnuImzsUfTKTHWqtT16G/jRWiWJb+1L5ReBcDjqxEk2h6Vk1J4nQ/8JLh7xVF8I
	2FmjjZYfpgJ8xeDnI9grcPy4YyDtIuacANKMJYYBiLY6cxYQKruUP+EIYBUX89eSBIQRujCbPHyO6
	+me36d+DBpdYI9SDEVTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnM9r-0008B0-TL; Tue, 16 Jul 2019 12:02:11 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM7s-0005tc-Pp
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 12:00:10 +0000
Received: by mail-pl1-x644.google.com with SMTP id t14so9979539plr.11
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 05:00:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=58XLNuDyUTU9lKLmcFIrRJzh/d2o9C03p3D5LTCflwA=;
 b=jVR8wFlmPsDrXd8SngNSRsyWJjgalB/JejjWD736YdhtiXmAYJ60miT9pOLP9CbWLg
 By0T05brwYGn93kg6rLNh35dslHbzR4PO83EeMt2YvNK+VAnbSmbmPmWTkHiezYxmtjZ
 SuNmsPHpFmoCs7YXCJEjA++C7YkX3fLigkrqA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=58XLNuDyUTU9lKLmcFIrRJzh/d2o9C03p3D5LTCflwA=;
 b=AvXo1ttQL/qHgs3yxges4PZKDnomho6GSSnrtAsoXm1tQxTjjNJXJB3f8X9ErwUH4q
 V0tWv6cU9jra9Je7Cg68m2mMii3xitlHBAgE09V0ZnCbmtN6sLIF4unDPtvvoXnx19P2
 noBFG6xEffAJZL9RTupDFZLP9dcL7FucJwxnJQWD+x4yB/ShU5Ue9dOnTeaiVsh6i5P5
 9LdxH0bt+E1UG7wYChBEuJk3ZTR+AdoKSuJrv2pQrChgfmUqrE48JwgIDoadTgSN1GgR
 5Kkz3eM1so4Rhe+o8rlLQgXqkMnEYbW0s4MV+o8tlM6ahFLnCrC2kaTFHYZIewF4tr3I
 TVpQ==
X-Gm-Message-State: APjAAAVh9SlggsiqtKV0Ig35zGN7SiKUxnOxwZUWmt2OrjfSSoLxTXvx
 iVEsvkKTaQYmM1L/Rb6fZPC93g==
X-Google-Smtp-Source: APXvYqwDi695rkeTM06MuCsUHVIU5orw2yY2Noh9Vml4k5Gf63ph18dlRY6R0x6Z9ozUkcZofY6O1Q==
X-Received: by 2002:a17:902:8509:: with SMTP id
 bj9mr35076461plb.79.1563278408205; 
 Tue, 16 Jul 2019 05:00:08 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.05.00.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 05:00:07 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 37/57] ram: rk3399: Get lpddr4 tsel_rd_en from io settings
Date: Tue, 16 Jul 2019 17:27:25 +0530
Message-Id: <20190716115745.12585-38-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_050008_944064_7DB66107 
X-CRM114-Status: GOOD (  10.87  )
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

For base.odt 1 the lpddr4 tsel_rd_en value is depending
on IO settings of rd_odt_en.

Add support for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index e0be9d2485..9e40880835 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -645,10 +645,14 @@ static void set_ds_odt(const struct chan_info *chan,
 		tsel_ckcs_select_n = PHY_DRV_ODT_34_3;
 	}
 
-	if (params->base.odt == 1)
+	if (params->base.odt == 1) {
 		tsel_rd_en = 1;
-	else
+
+		if (params->base.dramtype == LPDDR4)
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
