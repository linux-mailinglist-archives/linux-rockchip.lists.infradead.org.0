Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E326A80E
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:02:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u2Nm3/5q13tykfnEEaoUZxMFlUn+JMjE/BNgiTnRAQg=; b=GDkh5CgDvVm+EV
	ZwFw4fbRKmp4Rs/gvFlF9zAgn5fOjFtRGndUlyOMNQS66Md01CtwCWBel3mhGhpvAZZ81Y89iNryn
	OBdnNIjSM8sOH/RWDV3IKnmICPromY62su1GgLP8EIxVkXxsRF2+IZXjWGO2MJ236b0jCxE5KhaeO
	P81L2e11I+n2y2brdePlLijtaSNOBqA4+DXQ3cj3sHa/ekpVlmwCsc4L+QAkfdP4iYAOnoSGgXUSQ
	9Eebswk5GYjCA6shgL6h2GEGmsYGkOXwfr4QEHEQrgeRlyPs4fH3oRPopSTyDxyOkEaQiXeH7wq55
	E1Tu96+aqqlOvViZkbTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnM9w-0008FA-Ig; Tue, 16 Jul 2019 12:02:16 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM7z-0006US-VP
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 12:00:17 +0000
Received: by mail-pf1-x441.google.com with SMTP id t16so8996252pfe.11
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 05:00:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tI7Xr7ZfX4sDLFzoWb7sq8otoJ97peIqf/+DbSw/Gug=;
 b=iW/MVogV4teWplN8X+PGwOGM0Ot/ldAo3RquJuAGL8bDr9tcTt70gCQiiWVFdaJKH6
 PXZ+Pr/vE2K2Gb+WBvVgC+LCI2o23kMTXqnaKffatWmTU+BZ9iJN5KphfIHFw5sbGRZb
 K59wvF1OKZoupaBtRPbwH6rSXZRj7MIlVTSx8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tI7Xr7ZfX4sDLFzoWb7sq8otoJ97peIqf/+DbSw/Gug=;
 b=ejGliDiSmUx27pLkVkSMsnRFF1dFo+WDHloU6XJniGT0XZpbfbQUiVRbYYLqF7UXp9
 vpHf8pX35XAbae2EH87RupNaCq+8sp0wd+gHrAJYwqaXy7ViFdMDGSWbPnL4lDeAPWVc
 /06X2xE2MdMYvRhkwg36KTt+B3in8wUfZ5dvmTpwZFC3shH695IznP3CqxmzV6+7sMPy
 cEY/SSZy9150Wu2TU4GY6EkEWdFF6VORgMp78QGjOUtYf5UwOg7myegpQFSZ+M2WX614
 DxMish1e0/z5okQLKIejLxgo6oKmoEWsOQh+mmLTncLnVJXhpxFhbfyItZU0/5dFV+Mf
 cPNw==
X-Gm-Message-State: APjAAAVUWFrrO3npEMJOOR8XTK6jDtBHCQBqDpqeNHi9R95U/wGYsWhh
 MN2ZMs9QtjALyPa3dmBf91IfoQ==
X-Google-Smtp-Source: APXvYqyClBUA1BWUmOu0TTFkEKbieAqO+C2Y6v1mF1TgCkWmc18gvjLi+6VnUxgqHivpjo11Ty6iMA==
X-Received: by 2002:a63:550e:: with SMTP id j14mr29995154pgb.302.1563278415278; 
 Tue, 16 Jul 2019 05:00:15 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.05.00.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 05:00:14 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 39/57] ram: rk3399: Update lpddr4 mode_sel based on io
 settings
Date: Tue, 16 Jul 2019 17:27:27 +0530
Message-Id: <20190716115745.12585-40-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_050016_038202_3AA10F7A 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

The mode_sel on lpddr4 value is depending on IO settings
of rd_vref.

Add support for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 4a2622a440..63763062f9 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -347,7 +347,7 @@ static int phy_io_config(const struct chan_info *chan,
 	u32 drv_value, odt_value;
 	u32 speed;
 
-	/* vref setting */
+	/* vref setting & mode setting */
 	if (params->base.dramtype == LPDDR4) {
 		struct io_setting *io = lpddr4_get_io_settings(params, mr5);
 		u32 rd_vref = io->rd_vref * 1000;
@@ -355,15 +355,18 @@ static int phy_io_config(const struct chan_info *chan,
 		if (rd_vref < 36700) {
 			/* MODE_LV[2:0] = LPDDR4 (Range 2)*/
 			vref_mode_dq = 0x7;
+			/* MODE[2:0]= LPDDR4 Range 2(0.4*VDDQ) */
+			mode_sel = 0x5;
 			vref_value_dq = (rd_vref - 3300) / 521;
 		} else {
 			/* MODE_LV[2:0] = LPDDR4 (Range 1)*/
 			vref_mode_dq = 0x6;
+			/* MODE[2:0]= LPDDR4 Range 1(0.33*VDDQ) */
+			mode_sel = 0x4;
 			vref_value_dq = (rd_vref - 15300) / 521;
 		}
 		vref_mode_ac = 0x6;
 		vref_value_ac = 0x1f;
-		mode_sel = 0x6;
 	} else if (params->base.dramtype == LPDDR3) {
 		if (params->base.odt == 1) {
 			vref_mode_dq = 0x5;  /* LPDDR3 ODT */
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
