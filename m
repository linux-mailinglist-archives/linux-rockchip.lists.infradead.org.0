Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29AEB6A7FD
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:01:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fU4LoJTTVmMBfSNShXdQNROtRrEPMzINKMU/I3BbPP8=; b=h3QcLzhN2HQuAv
	0596Zuf7jln66CLeMbxa5Y2TZa56EWuXhfoe9cEI4yIOZAmEEJABRh5rb6jJO6912CRNZBC9hKRCp
	FkTdp4WdpL5b13JG87Z+URQnb8dUJbZ7e8ljOsih4TSmsr6DY30RqmZLWRfJVsv8bxa5/B06z0Swt
	p9r6XLnfix1syrShOkG9dCTJ2ocn/cgRginr0vVmdTHdRZBE0JDKtpcJyYE3hwVgEo+Er6EE94sbb
	lR2fDgrLpDeHnNo9Ue+P8vlTkNqQNT0LOELdaN+qHj+P9GAVfld3MIdixxPoyEKiBNczeRm3cBDtz
	ZPIDphCmlUCkbZsrvp9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnM9G-0007bC-2f; Tue, 16 Jul 2019 12:01:34 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM75-0004ZJ-0D
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 11:59:20 +0000
Received: by mail-pg1-x542.google.com with SMTP id f5so504869pgu.5
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 04:59:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Xv7hs5BBvaJWXNOawbd4P577U6W22vvaUZK7CZedUbs=;
 b=eMdikiLI0sCNzHKqLym4XzYliprSkaE1qDvGsFO8YpX4xIjs7bM+95btiHFeTfZnup
 9sjVhXHeQrwKTDttEuELV8n1uEhxbpaUf/YW8O1VjZ+tgrTjRbkgFCl6MhDTHhk5Glw2
 Htx3qxxAznepKz0WpfT0tiTJFgtWGbJfR9wNE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Xv7hs5BBvaJWXNOawbd4P577U6W22vvaUZK7CZedUbs=;
 b=GH+3aIoIWcj9K3Y65/CJTWHTnmUuNrXjpM/FhPMN+VXByIpc92Y05sXvvA2XSGexzV
 pLOBp88GwbLJ0gQX4dLEyxMIxvNQ8sOrGc1s5a+co6TQ9vqO25DtbCuwl/mRjUIsd0oX
 HFZF7gKOnTTjj084H376hwJq6cunzRcpu6TIEydNjiS8JxO/6hw7IdgXu0gsva87Bqan
 qhnvL1joAsKiu4ak2YMriZuJJ+dKb7gJqONV2XIShjkMnsAneRVNxO5MVnRoL/OMKPpg
 +Aot/7nGu0oz7gFYwQLY9YqBefeL6Wh4n2kqRlIf2GoNTvLx0mp3Qfum6zWa5/VZaEvs
 qbKg==
X-Gm-Message-State: APjAAAUE4nrSLb9Mk42Z5WcLcpMlvcEq7DN7RgF9c8INPihBQCPj4kJC
 VpGhnatDU9hgK4ajfIv5VV3wpg==
X-Google-Smtp-Source: APXvYqwiNgS79eLrVHX/KgasnRf0ew42WqGOg+JpXyn8ILO3pllsxOaIOi3qbspkZF9EYwqjmkXmYw==
X-Received: by 2002:a17:90a:d814:: with SMTP id
 a20mr35839248pjv.48.1563278358060; 
 Tue, 16 Jul 2019 04:59:18 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.04.59.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 04:59:17 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 23/57] ram: rk3399: Move mode_sel assignment
Date: Tue, 16 Jul 2019 17:27:11 +0530
Message-Id: <20190716115745.12585-24-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_045919_142754_C1557848 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

mode_sel assignment is based on dram type.

In phy_io_config, already have vref setting based
on the dram type, so move this mode_sel assignment
on vref setting area.

No functionality change.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 711477188e..88fbfa440d 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -205,6 +205,7 @@ static int phy_io_config(const struct chan_info *chan,
 		vref_value_dq = 0x1f;
 		vref_mode_ac = 0x6;
 		vref_value_ac = 0x1f;
+		mode_sel = 0x6;
 	} else if (params->base.dramtype == LPDDR3) {
 		if (params->base.odt == 1) {
 			vref_mode_dq = 0x5;  /* LPDDR3 ODT */
@@ -265,12 +266,14 @@ static int phy_io_config(const struct chan_info *chan,
 		}
 		vref_mode_ac = 0x2;
 		vref_value_ac = 0x1f;
+		mode_sel = 0x0;
 	} else if (params->base.dramtype == DDR3) {
 		/* DDR3L */
 		vref_mode_dq = 0x1;
 		vref_value_dq = 0x1f;
 		vref_mode_ac = 0x1;
 		vref_value_ac = 0x1f;
+		mode_sel = 0x1;
 	} else {
 		debug("Unknown DRAM type.\n");
 		return -EINVAL;
@@ -292,15 +295,6 @@ static int phy_io_config(const struct chan_info *chan,
 	/* PHY_915 PHY_PAD_VREF_CTRL_AC 12bits offset_16 */
 	clrsetbits_le32(&denali_phy[915], 0xfff << 16, reg_value << 16);
 
-	if (params->base.dramtype == LPDDR4)
-		mode_sel = 0x6;
-	else if (params->base.dramtype == LPDDR3)
-		mode_sel = 0x0;
-	else if (params->base.dramtype == DDR3)
-		mode_sel = 0x1;
-	else
-		return -EINVAL;
-
 	/* PHY_924 PHY_PAD_FDBK_DRIVE */
 	clrsetbits_le32(&denali_phy[924], 0x7 << 15, mode_sel << 15);
 	/* PHY_926 PHY_PAD_DATA_DRIVE */
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
