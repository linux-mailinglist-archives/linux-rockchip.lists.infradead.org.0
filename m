Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 282941C6A6B
	for <lists+linux-rockchip@lfdr.de>; Wed,  6 May 2020 09:51:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=R8HX+jW+WyOxrtgSeZg2d4tYRG9XO5w4zKuAmxpMgOQ=; b=AOjOJyztsUCGHDU+kyTSszK/F/
	6DS9LQ8yxw/PfyeIMfD/S7HbAKDAFKgmBK0LV8zAuynzqzuM4d8ztqISrln4rSxjiivM7qAi4uayA
	c8zlaHJ8P87Q4jMhaEje1zviTCYBnEHiF7F5fG1LQIF/Tly3InCTanOsZfDx+lA+uRhCj2Bz/Ejbz
	DrFxtIu/wpm7XXCvkzgc4tCt+SlmNGXSzeaEOClZ1tXQBtN744Dlbgk3Rul4cthG418/jJOLxLo3P
	LfsuroLHm1leNMiyrrJLUpp5fOLxnFl968FHk2v5INrMPzGB8/GyyBotqtM9/uR5FriLQJlDlm1g2
	krqwEjHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWEpq-0006wJ-Fs; Wed, 06 May 2020 07:51:18 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWEpn-0006uN-4l
 for linux-rockchip@lists.infradead.org; Wed, 06 May 2020 07:51:16 +0000
Received: by mail-pj1-x1043.google.com with SMTP id e6so455919pjt.4
 for <linux-rockchip@lists.infradead.org>; Wed, 06 May 2020 00:51:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=gUJPo9co6Z5KOWvrWwwrf+/d75bLFFIFHCHrCqTsa6w=;
 b=SP24HoaQtVn1BESgSMmUItIpuvNAhxhTJkA9ErNZ0uQq6OOSHXmZU3JBUeGFUnshki
 iuCkcje5wUkvCyJsl8Nlly4cvogtlASPtSjwFQB5+etRp1Hoa4BvcV+ZgJIlQ/GWPa9v
 9HRPY1UDfXEMpTzUdvug7RwlkmpZVKvf2LW3U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=gUJPo9co6Z5KOWvrWwwrf+/d75bLFFIFHCHrCqTsa6w=;
 b=rvVx8UwyrtV1ja03slmnRtWY9ozVZJocFMhUQSCYBNDA7BVskAKLiNvRy1gG/YD9vR
 ACy1/CfFVQoIdVE4FsKtXioGygMs2iEkSafsS4oZcGEs1Wh4L0gsac8+LwTuka1QYzQL
 o7D1xiB8Bdzh6kja5KzubA9krOA60va8xXgelbGTPaPndjHPqCmaG53E05wDMTCY5Sbo
 0KmwYEn0veD0+LoVC7GNGYYMJ3c9HdFu421Bn2d0FK1iBmdbUU+8VdSO6Tw7Ch+F9OvS
 13aU0ix1MEmbPepC5psIqQ3tTAXLeMKdmNUAdiSgGFAZ+LoXbE5LDfAAuFLsXxBCjw5T
 qWFw==
X-Gm-Message-State: AGi0PuZYB5Szwhd20ShKXZwSWgHfUdhGQP5eflzXf38dY+DotJspvyuU
 iwuhCltMXPox0c+rFtHxvlseEA==
X-Google-Smtp-Source: APiQypJqW8uDRWHgZ3APS7B8c0Ht2Yd8L5wl0dOYVn8a14IwBjtjbX5vkWZzekYIxuzHGVZYWJQJZg==
X-Received: by 2002:a17:902:7444:: with SMTP id
 e4mr7140437plt.130.1588751474575; 
 Wed, 06 May 2020 00:51:14 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:c598:8eeb:af7:7f36])
 by smtp.gmail.com with ESMTPSA id
 y186sm1011133pfy.66.2020.05.06.00.51.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 May 2020 00:51:13 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: kever.yang@rock-chips.com, philipp.tomsich@theobroma-systems.com,
 Simon Glass <sjg@chromium.org>, Frank Wang <frank.wang@rock-chips.com>,
 wmc@rock-chips.com, chenjh@rock-chips.com, heiko@sntech.de
Subject: [PATCH v2 7/7] usb: dwc3: add dis_del_phy_power_chg_quirk
Date: Wed,  6 May 2020 13:20:25 +0530
Message-Id: <20200506075025.1677-8-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200506075025.1677-1-jagan@amarulasolutions.com>
References: <20200506075025.1677-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_005115_186112_DFB8CB21 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
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
Cc: Marek Vasut <marex@denx.de>, linux-rockchip@lists.infradead.org,
 Belisko Marek <marek.belisko@gmail.com>, u-boot@lists.denx.de,
 Jagan Teki <jagan@amarulasolutions.com>, linux-amarula@amarulasolutions.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add a quirk to clear the GUSB3PIPECTL.DELAYP1TRANS bit,
which specifies whether disable delay PHY power change
from P0 to P1/P2/P3 when link state changing from U0
to U1/U2/U3 respectively.

Reference from below Linux commit,

commit <00fe081dc3a3> ("usb: dwc3: add dis_del_phy_power_chg_quirk")

Cc: Marek Vasut <marex@denx.de>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- new patch

 drivers/usb/dwc3/core.c | 6 ++++++
 drivers/usb/dwc3/core.h | 1 +
 include/dwc3-uboot.h    | 1 +
 3 files changed, 8 insertions(+)

diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
index 4ec3f6df6a..6e438e5604 100644
--- a/drivers/usb/dwc3/core.c
+++ b/drivers/usb/dwc3/core.c
@@ -377,6 +377,9 @@ static void dwc3_phy_setup(struct dwc3 *dwc)
 	if (dwc->dis_u3_susphy_quirk)
 		reg &= ~DWC3_GUSB3PIPECTL_SUSPHY;
 
+	if (dwc->dis_del_phy_power_chg_quirk)
+		reg &= ~DWC3_GUSB3PIPECTL_DEPOCHANGE;
+
 	dwc3_writel(dwc->regs, DWC3_GUSB3PIPECTL(0), reg);
 
 	mdelay(100);
@@ -715,6 +718,7 @@ int dwc3_uboot_init(struct dwc3_device *dwc3_dev)
 	dwc->rx_detect_poll_quirk = dwc3_dev->rx_detect_poll_quirk;
 	dwc->dis_u3_susphy_quirk = dwc3_dev->dis_u3_susphy_quirk;
 	dwc->dis_u2_susphy_quirk = dwc3_dev->dis_u2_susphy_quirk;
+	dwc->dis_del_phy_power_chg_quirk = dwc3_dev->dis_del_phy_power_chg_quirk;
 
 	dwc->tx_de_emphasis_quirk = dwc3_dev->tx_de_emphasis_quirk;
 	if (dwc3_dev->tx_de_emphasis)
@@ -975,6 +979,8 @@ void dwc3_of_parse(struct dwc3 *dwc)
 				"snps,dis_u3_susphy_quirk");
 	dwc->dis_u2_susphy_quirk = dev_read_bool(dev,
 				"snps,dis_u2_susphy_quirk");
+	dwc->dis_del_phy_power_chg_quirk = dev_read_bool(dev,
+				"snps,dis-del-phy-power-chg-quirk");
 	dwc->tx_de_emphasis_quirk = dev_read_bool(dev,
 				"snps,tx_de_emphasis_quirk");
 	tmp = dev_read_u8_array_ptr(dev, "snps,tx_de_emphasis", 1);
diff --git a/drivers/usb/dwc3/core.h b/drivers/usb/dwc3/core.h
index 1c08a2c5b6..7f45a9c459 100644
--- a/drivers/usb/dwc3/core.h
+++ b/drivers/usb/dwc3/core.h
@@ -821,6 +821,7 @@ struct dwc3 {
 	unsigned		rx_detect_poll_quirk:1;
 	unsigned		dis_u3_susphy_quirk:1;
 	unsigned		dis_u2_susphy_quirk:1;
+	unsigned		dis_del_phy_power_chg_quirk:1;
 
 	unsigned		tx_de_emphasis_quirk:1;
 	unsigned		tx_de_emphasis:2;
diff --git a/include/dwc3-uboot.h b/include/dwc3-uboot.h
index 3c9e204cf0..f5086fb946 100644
--- a/include/dwc3-uboot.h
+++ b/include/dwc3-uboot.h
@@ -32,6 +32,7 @@ struct dwc3_device {
 	unsigned rx_detect_poll_quirk;
 	unsigned dis_u3_susphy_quirk;
 	unsigned dis_u2_susphy_quirk;
+	unsigned dis_del_phy_power_chg_quirk;
 	unsigned tx_de_emphasis_quirk;
 	unsigned tx_de_emphasis;
 	int index;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
