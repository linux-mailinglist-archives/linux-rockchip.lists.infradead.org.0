Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D3593CF96
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:54:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PwUdDDJvakyWoTvlaShwNXazy4EaelCVdbYFLt28ClI=; b=tfCO3qrsQfJ58Y
	kvr4+6ILuUbXwptznlc6QHjh4ePgsVX3M6dUU22fyfglW11smgR+eG6WBJljIuczEsFHqVUVKkiOU
	ZI+KtSJ4bNdysZhiRK8JVYYwwmE8RC5KUrbj+P06e6ljSVaMghVI0sc/TCbyOBLVPOAyQjeufYHFE
	LiHHc7aCezzSw0Md1xdPTQcuhIKXfzi6WKOeVx6TDAQrZt9zoD142roWKgcQLnxo+ptM12d4H5oXa
	1rapWE2oTzFICVGPwx7+JNp/rMfM7UXhQuJfGMy2b5U8XFWkdCkS3f6dJjrFBd/WHZ8JiQ7ZcWjOH
	zcLJ+W/uAQGCEo1eit/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hai9z-0005Bs-Fs; Tue, 11 Jun 2019 14:54:03 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hai9v-0005AP-CW
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:54:00 +0000
Received: by mail-pl1-x644.google.com with SMTP id s24so5221531plr.8
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:53:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LHu3bpBFUtiuk/X2voRKbnQsiw8KrmHHfMc/0VzA5ZU=;
 b=fsjmc7sksIncdVxBP6hGc/xRrKkZALrzoaUdZoXgiNhBeSWad+yn2uHH5+0uBvLtBv
 3WycgHyNIuYz/Tv2vZnyTKIIQ2P2AOmobMnZ4BOzJcMiF7h8dPBGf40Tau7ZreDQTC1A
 MYQLqY+9pNApwOCUVGfLE4klN2siaLrG3jvLs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LHu3bpBFUtiuk/X2voRKbnQsiw8KrmHHfMc/0VzA5ZU=;
 b=WMUo8HRgmXWiDlIIut4xzglhuUu4A+I9JJeqnVmT+Sdi0LRyltVZj/6JFPqR9Boew2
 zkxJygcbqG4QpjyUlumiqQf43QlKzZJn2CSpDdWZqHk2TjUAJqp5A6BxzAkTC3OFvgvf
 Yqs+/5R8Xwi06DdNMBLOi4wxoVzN95j8QF7gI4076YjnL7G5sKt2m3yQElk4f9zCVZl+
 tgRAgKnGcF3JOpSle0u1p67C/kygqyDeioy9+2QadAo4YZyDtiEihzLOV2gL7KYX7218
 9Qirh+hnoBfLe0NfHqT6+I/iFKIBznEBpdqmukba5lLIYJrKg5f9ijU9hRS6bpjYjG1V
 du1w==
X-Gm-Message-State: APjAAAUdFs8NpgtnVZOjlNOt/I7EaBlZpVxfXgkD/VU1OYWVTc3RxkCS
 hBztjR6xoWp1ra1FZovAL2ho2A==
X-Google-Smtp-Source: APXvYqyYLr78evxIFrvmP/pASLY2EieJYfjVkVMBS7O0qAxpzoSwbeygUIp4FZv1BbFtcvOTiqOGyA==
X-Received: by 2002:a17:902:a405:: with SMTP id
 p5mr6314842plq.51.1560264838933; 
 Tue, 11 Jun 2019 07:53:58 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.53.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:53:58 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 32/92] ram: rk3399: s/ca_tsel_wr_select_p/tsel_wr_select_ca_p
Date: Tue, 11 Jun 2019 20:20:35 +0530
Message-Id: <20190611145135.21399-33-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075359_493962_F4D1A0F7 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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

Rename ca_tsel_wr_select_p to tsel_wr_select_ca_p based
on the bsp code and associated datasheet.

No functionality change.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index bfae4e78a9..d868621c93 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -161,14 +161,14 @@ static void set_ds_odt(const struct chan_info *chan,
 
 	u32 tsel_idle_en, tsel_wr_en, tsel_rd_en;
 	u32 tsel_idle_select_p, tsel_wr_select_dq_p, tsel_rd_select_p;
-	u32 ca_tsel_wr_select_p, tsel_wr_select_ca_n;
+	u32 tsel_wr_select_ca_p, tsel_wr_select_ca_n;
 	u32 tsel_idle_select_n, tsel_wr_select_dq_n, tsel_rd_select_n;
 	u32 reg_value;
 
 	if (sdram_params->base.dramtype == LPDDR4) {
 		tsel_rd_select_p = PHY_DRV_ODT_HI_Z;
 		tsel_wr_select_dq_p = PHY_DRV_ODT_40;
-		ca_tsel_wr_select_p = PHY_DRV_ODT_40;
+		tsel_wr_select_ca_p = PHY_DRV_ODT_40;
 		tsel_idle_select_p = PHY_DRV_ODT_HI_Z;
 
 		tsel_rd_select_n = PHY_DRV_ODT_240;
@@ -178,7 +178,7 @@ static void set_ds_odt(const struct chan_info *chan,
 	} else if (sdram_params->base.dramtype == LPDDR3) {
 		tsel_rd_select_p = PHY_DRV_ODT_240;
 		tsel_wr_select_dq_p = PHY_DRV_ODT_34_3;
-		ca_tsel_wr_select_p = PHY_DRV_ODT_48;
+		tsel_wr_select_ca_p = PHY_DRV_ODT_48;
 		tsel_idle_select_p = PHY_DRV_ODT_240;
 
 		tsel_rd_select_n = PHY_DRV_ODT_HI_Z;
@@ -188,7 +188,7 @@ static void set_ds_odt(const struct chan_info *chan,
 	} else {
 		tsel_rd_select_p = PHY_DRV_ODT_240;
 		tsel_wr_select_dq_p = PHY_DRV_ODT_34_3;
-		ca_tsel_wr_select_p = PHY_DRV_ODT_34_3;
+		tsel_wr_select_ca_p = PHY_DRV_ODT_34_3;
 		tsel_idle_select_p = PHY_DRV_ODT_240;
 
 		tsel_rd_select_n = PHY_DRV_ODT_240;
@@ -229,7 +229,7 @@ static void set_ds_odt(const struct chan_info *chan,
 	clrsetbits_le32(&denali_phy[391], 0xffffff, reg_value);
 
 	/* phy_adr_tsel_select_ 8bits DENALI_PHY_544/672/800 offset_0 */
-	reg_value = tsel_wr_select_ca_n | (ca_tsel_wr_select_p << 0x4);
+	reg_value = tsel_wr_select_ca_n | (tsel_wr_select_ca_p << 0x4);
 	clrsetbits_le32(&denali_phy[544], 0xff, reg_value);
 	clrsetbits_le32(&denali_phy[672], 0xff, reg_value);
 	clrsetbits_le32(&denali_phy[800], 0xff, reg_value);
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
