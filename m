Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3660C3CF92
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:53:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9vFRDcEmi79AT/zgglZyhYt3vlhW+x7jG0Ms1GPvV78=; b=WwvhMGuBi6NFjW
	J5RpKJdR5Je9YnuU3nJI1wzSgY6m6UuWXfegcGM46u3N2kr2u9qh+/5tHvZxZGFr71eCbmqD1mnWM
	jJPyeQRq+oj0nLrZJucpxOlR/D7opMcdWTWYYxethOFNfmunD3LliKgLbDNSgCCK7TOFLPQzJhvab
	34kYGQpDSZz/zVn4QxT0jbXZx6WUL7XF9A0OsZll/sB3MVufcRzz2l9mb6WRT+Odn15OhVYmtLub9
	wH1E83kDX9/U2t9w5Kcf9UAgx8IgqTVjbJImeg5vC8kFmskEn+4eOxRlNSTcnFKvm8ywmhWLcNqYq
	P7AQoKDYD2jZqDdAfO1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hai9o-00053S-8E; Tue, 11 Jun 2019 14:53:52 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hai9j-0004zj-Ah
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:53:48 +0000
Received: by mail-pf1-x442.google.com with SMTP id q10so7580730pff.9
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:53:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=w03lZucNkjUk4CFMHgUL3E0J7s2uIlvAVgDnBVNXifs=;
 b=cvBQf2tQ6e1ftwofaKjR+/TR0LF3ThpJPg35or9NS5Y7WNbcGAOX/gu1+HJq4G4Cv3
 ZEQ7WXoCVj7rypH5kHOjf/mDvfUBoLHMx/Sm4P96u/TYfErbyCquHfKtFhf61+xMHlIQ
 2zsFJ63W5PioQavuot/klo8Sr8u0S0RbULs40=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=w03lZucNkjUk4CFMHgUL3E0J7s2uIlvAVgDnBVNXifs=;
 b=O0Ro01LleFPAn2+0oqExPv1aXx854yVggfwLdqzvFeHViR/4KWbCJTg995zPJbVOX2
 U4UcFjjLIoZI16tdOiwud/vWRV+O8A1TtddWqXmseda5HQxqi0whzqsF7YHOSVFPthKF
 zQhnAErBeU6yPXDhvscX+DjVlUlhqkG79s5ahhMVSqsxAhVH9vCtAUR5aeieKwcI192/
 jpo7HZqhtuR82g9nSwlfcIwZApAV7ixEf3gnW6nRm1NrNBjxBFZ2xnPJzPADhVoSSsrO
 Xei2Xd3CyD692iDvjArIQ/A0Romu4lcBvrzE31YWHw6wkEhwJaWwAA/RJOib1MbROP+V
 X+4Q==
X-Gm-Message-State: APjAAAXY5adja8mAPnsHWzSHCqRhInMh+deJl8iB2AZnZKWk5aUiuCFS
 z0463blFtMOAF9aEmLJo9F2/+g==
X-Google-Smtp-Source: APXvYqzDROplrErqCzZdln7xt5dqOt+PLZq2Tjuj7sq9i6qTVOJj0H+EdUvvqFmPZx2eN6rhZiz6vA==
X-Received: by 2002:a17:90a:730b:: with SMTP id
 m11mr27120885pjk.89.1560264826753; 
 Tue, 11 Jun 2019 07:53:46 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.53.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:53:46 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 29/92] ram: rk3399: s/tsel_wr_select_n/tsel_wr_select_dq_n
Date: Tue, 11 Jun 2019 20:20:32 +0530
Message-Id: <20190611145135.21399-30-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075347_456964_6719DE5A 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

Rename tsel_wr_select_n to tsel_wr_select_dq_n based
on the bsp code and associated datasheet.

No functionality change.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index fab7515b2d..7c05814f19 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -162,7 +162,7 @@ static void set_ds_odt(const struct chan_info *chan,
 	u32 tsel_idle_en, tsel_wr_en, tsel_rd_en;
 	u32 tsel_idle_select_p, tsel_wr_select_p, tsel_rd_select_p;
 	u32 ca_tsel_wr_select_p, ca_tsel_wr_select_n;
-	u32 tsel_idle_select_n, tsel_wr_select_n, tsel_rd_select_n;
+	u32 tsel_idle_select_n, tsel_wr_select_dq_n, tsel_rd_select_n;
 	u32 reg_value;
 
 	if (sdram_params->base.dramtype == LPDDR4) {
@@ -172,7 +172,7 @@ static void set_ds_odt(const struct chan_info *chan,
 		tsel_idle_select_p = PHY_DRV_ODT_HI_Z;
 
 		tsel_rd_select_n = PHY_DRV_ODT_240;
-		tsel_wr_select_n = PHY_DRV_ODT_40;
+		tsel_wr_select_dq_n = PHY_DRV_ODT_40;
 		ca_tsel_wr_select_n = PHY_DRV_ODT_40;
 		tsel_idle_select_n = PHY_DRV_ODT_240;
 	} else if (sdram_params->base.dramtype == LPDDR3) {
@@ -182,7 +182,7 @@ static void set_ds_odt(const struct chan_info *chan,
 		tsel_idle_select_p = PHY_DRV_ODT_240;
 
 		tsel_rd_select_n = PHY_DRV_ODT_HI_Z;
-		tsel_wr_select_n = PHY_DRV_ODT_34_3;
+		tsel_wr_select_dq_n = PHY_DRV_ODT_34_3;
 		ca_tsel_wr_select_n = PHY_DRV_ODT_48;
 		tsel_idle_select_n = PHY_DRV_ODT_HI_Z;
 	} else {
@@ -192,7 +192,7 @@ static void set_ds_odt(const struct chan_info *chan,
 		tsel_idle_select_p = PHY_DRV_ODT_240;
 
 		tsel_rd_select_n = PHY_DRV_ODT_240;
-		tsel_wr_select_n = PHY_DRV_ODT_34_3;
+		tsel_wr_select_dq_n = PHY_DRV_ODT_34_3;
 		ca_tsel_wr_select_n = PHY_DRV_ODT_34_3;
 		tsel_idle_select_n = PHY_DRV_ODT_240;
 	}
@@ -211,7 +211,7 @@ static void set_ds_odt(const struct chan_info *chan,
 	 * for write cycles for DQ/DM
 	 */
 	reg_value = tsel_rd_select_n | (tsel_rd_select_p << 0x4) |
-		    (tsel_wr_select_n << 8) | (tsel_wr_select_p << 12) |
+		    (tsel_wr_select_dq_n << 8) | (tsel_wr_select_p << 12) |
 		    (tsel_idle_select_n << 16) | (tsel_idle_select_p << 20);
 	clrsetbits_le32(&denali_phy[6], 0xffffff, reg_value);
 	clrsetbits_le32(&denali_phy[134], 0xffffff, reg_value);
@@ -251,7 +251,7 @@ static void set_ds_odt(const struct chan_info *chan,
 
 	/* phy_pad_fdbk_drive 23bit DENALI_PHY_924/925 */
 	clrsetbits_le32(&denali_phy[924], 0xff,
-			tsel_wr_select_n | (tsel_wr_select_p << 4));
+			tsel_wr_select_dq_n | (tsel_wr_select_p << 4));
 	clrsetbits_le32(&denali_phy[925], 0xff,
 			tsel_rd_select_n | (tsel_rd_select_p << 4));
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
