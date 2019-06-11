Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E31683CFC9
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:56:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uBlDIHqo8F8AeY7ormwpdscP1e3zell7Rs7/sfyszW8=; b=W7ptSwRj/tmgRx
	MCMSJFO4jhmr+1HTl+kEDpg0wrWxdqcO9b7ETgy4rJdxm497b8Uz+1VX6WxopoCS2PVdjBds01lmX
	mlIr5U+gnddMgtIWKNq7240vM5MbE/JC6fXpgriv4cMCwFSnoLOIC5axIn0nyqZLnJ3hi0Ji/HMX6
	A8dVxycEdKSWMWoHgHMyz/bnF9FM5pdi/tCKLdzEvlJjR8tiSSV6ABrDqCADHDW33wGkuIedVA2//
	Rc7RjkbhhIImcAflypXhIynDU3gzTfM3QahyqjPg10Hlff1Gb6nTWq5VY7YD0lDjYws+Wk5Lrc+i9
	p8ZRTomfyRU09hDCOpIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiBp-0007jM-VU; Tue, 11 Jun 2019 14:55:58 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiBm-0007gz-JU
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:55:55 +0000
Received: by mail-pg1-x543.google.com with SMTP id f25so7106663pgv.10
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:55:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Rc17BFgLGXaaIgQA51MwKypvmo5RpUkXna/erYhtptg=;
 b=kCYanFe7NFmbSNgJpsxSzilQIJsNtNgPlexWWMRulNLbZqj6wqPFY+YDnUvUvVY2PE
 Utw+C0sJ9ysHkaScomI3OEFZ1S+7Nw07HBes6XJaRlsHpR5ol0HnqmRBaJR0PWRj5s4v
 FcITLnRO4z8NhS5FEBDR6aSvo5MrU5rjvlcOI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Rc17BFgLGXaaIgQA51MwKypvmo5RpUkXna/erYhtptg=;
 b=SKVA4y0uavOdawMMaMDuv+2G5MlxA5IV1jwXD9iD8017xNdBrNYnnGlqbRz7/+nY5E
 8Z7/yujm594cgI2/GChoMJEUTdolSpW5aJKFgCcjNF4yb4MBiidbvFKz7WIKOZgnDy5T
 DelebKgA0iCDFrEde0MmlCVVtrDpYiV8aFArVZ8V+BxaoTPV0Ez/yAxO4ss2jahnDCr0
 1GzSz1PpJzG0T6smIKHFi2V4c5XlD60TATT7JbmYrlDOC/NDkaAQiOXDAXHc3bR11T9g
 pWGD8OQeNA/OOlZ3lvLgCLAZ9jUgWl6RbjwlyWvceTQQXXQUUC74FSqvZIWktTjGn1rT
 tbBA==
X-Gm-Message-State: APjAAAV85UNYx8R6e79eas6SnrZZ4i/1K0K6qpPd6ix32SfP+y9Y6TZl
 mYD687qO3CpF7oF+7i+RTn+tZQ==
X-Google-Smtp-Source: APXvYqwhWkqinjcSEAnhFiBpk1PB0AqrBVep5gDZbrlDZG6S4Gh0Pl3ZF9z81nVJxtmz4JMkiGueUg==
X-Received: by 2002:a63:794:: with SMTP id 142mr12485448pgh.157.1560264953912; 
 Tue, 11 Jun 2019 07:55:53 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.55.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:55:53 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 61/92] ram: rk3399: Don't wait for PLL lock in lpddr4
Date: Tue, 11 Jun 2019 20:21:04 +0530
Message-Id: <20190611145135.21399-62-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075554_665339_DD96EEC0 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

lpddr4 has PLL bypass mode during phy initialization phase,
which does all pll configurations.

So need to wait explicitly during pctl config.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 26 ++++++++++++++++----------
 1 file changed, 16 insertions(+), 10 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index d399ec8e38..3d26cede77 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -575,16 +575,22 @@ static int pctl_cfg(struct dram_info *dram, const struct chan_info *chan,
 	setbits_le32(&denali_pi[0], START);
 	setbits_le32(&denali_ctl[0], START);
 
-	/* Waiting for phy DLL lock */
-	while (1) {
-		tmp = readl(&denali_phy[920]);
-		tmp1 = readl(&denali_phy[921]);
-		tmp2 = readl(&denali_phy[922]);
-		if ((((tmp >> 16) & 0x1) == 0x1) &&
-		    (((tmp1 >> 16) & 0x1) == 0x1) &&
-		    (((tmp1 >> 0) & 0x1) == 0x1) &&
-		    (((tmp2 >> 0) & 0x1) == 0x1))
-			break;
+	/**
+	 * LPDDR4 use PLL bypass mode for init
+	 * not need to wait for the PLL to lock
+	 */
+	if (sdram_params->base.dramtype != LPDDR4) {
+		/* Waiting for phy DLL lock */
+		while (1) {
+			tmp = readl(&denali_phy[920]);
+			tmp1 = readl(&denali_phy[921]);
+			tmp2 = readl(&denali_phy[922]);
+			if ((((tmp >> 16) & 0x1) == 0x1) &&
+			    (((tmp1 >> 16) & 0x1) == 0x1) &&
+			    (((tmp1 >> 0) & 0x1) == 0x1) &&
+			    (((tmp2 >> 0) & 0x1) == 0x1))
+				break;
+		}
 	}
 
 	copy_to_reg(&denali_phy[896], &params_phy[896], (958 - 895) * 4);
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
