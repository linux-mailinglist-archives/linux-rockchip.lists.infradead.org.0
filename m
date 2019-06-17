Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE7C247B5B
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:39:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rec+dE+REmlmqjtms+CMxw26AIcv7vAIm/A0skXzMrA=; b=jmWCyyAkS7K/M0
	M4B3Al+7RyK8BQKuwW8mMmt0m32OyT4Vu+w+v8FEPregByhD8AcNWJkK90nDxhZ6M0YVQo4umSOsy
	Y4XSw9i3+B8sj5ke3LE+N+kf1jHlD6cXb1x4Vhe5SSC0aD8guIGk4nSzUN4e1DJgVajfr0LbAHTpx
	1V157MrdycaI4Q2+rvALzoVP2WUUM7NmqxVPzeFm/5MSq5U0tDZWH+xwjqWv/VpYIKzPOoXRgVv1b
	cMTRfl8jU6CXquH9w9KRI6v3KaTSYg6yJsWUq36xOfO1TdLxI6sHBPPDCSBl/UKFjdjusrckJ7nh2
	YLcHB6RfxiF+SwvJQJSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmF5-0008Af-TJ; Mon, 17 Jun 2019 07:39:51 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmF2-00088f-38
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:39:49 +0000
Received: by mail-pg1-x544.google.com with SMTP id n65so854274pga.4
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:39:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9VACJ/ApzH3IFsKQOjKHjSl5B/lOcX/9MePZIjfQHMQ=;
 b=lMSk2q+TJWyTqoBzxahYPwlLClf/YCfW4iR0lgWmy7LUduTtDZVt/7hsbDyYi2IuF6
 aCY63+rKFK9wtn5x8JpmrWSzcTay5TMWwP9MYyPXYqEZ6JBgSXyrhYezjzkmfVMXl5Xp
 zf73LlSiBphRLzdHg6Hd4vmmnKQ1czDInpxO8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9VACJ/ApzH3IFsKQOjKHjSl5B/lOcX/9MePZIjfQHMQ=;
 b=NX1LX7hNKmIFYdLfLZQcZX6vBV23nK6Akr6Tb1kfU8wlrWFV9EyULBrxw21GeJ8Qia
 5+wj6eIwxrEcFhdje9Ut6LZ53c4tPmjJxjZ1k8lHz8ssz25L9ot9lpKeYKYYzhDg7jHR
 99s28yTP5Mnd8uk+RZazTSYSTeTjyEcOOHuCCsg5nwf9n2v6azP9twhNqn8P1djbjEr2
 clwqWmE0on0wcGptQdRb8qJGoz9YbADvDuy/M1WA19SlArR2QGoImBXkEz+zRSe6ScZF
 XUOzi0YletrvmjNQQjm7CmjNZcZfYR4WI9Zt7PC1PSd+SFpvY7StJy4TBUtmAHz46muA
 Hb9w==
X-Gm-Message-State: APjAAAXQQ3nFnnr0PDqj0352WwCCi/nLWZuEiflOyWuDy21oYilarKbA
 2HXrO6U/Rh4UUsrihBJbrd0v1A==
X-Google-Smtp-Source: APXvYqwPjV29k6S7n4mIhHLDFRomQyBkJeMJyhMyRN7LGI5Ad9oPJ8N+y6/U0X4qowzkA2n0usQhrg==
X-Received: by 2002:aa7:8dd1:: with SMTP id j17mr22386074pfr.52.1560757187578; 
 Mon, 17 Jun 2019 00:39:47 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.39.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:39:47 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 62/99] ram: rk3399: Move mode_sel assignment
Date: Mon, 17 Jun 2019 13:02:15 +0530
Message-Id: <20190617073252.27810-63-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003948_157530_859DD155 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
index 935e3c495e..3e7261a950 100644
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
