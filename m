Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D76EA05B3
	for <lists+linux-rockchip@lfdr.de>; Wed, 28 Aug 2019 17:07:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ubx6EB/YRoRbOmHos6az1MCouPF9uZMO9mSahymn3A4=; b=ijEWbCgi5TJlJ+
	Ws1laB0AiJSYSdExvPPkcS1RY8p5Iae3HEaxaeu42Peu4ZowHlLcbGSl9gGoy9squBOJhVO+bbiPf
	YvHj7cD8J81sk88I1zSunYqZh5W9718GOwzT0cQcgT8Pt5M/yYhWpvVu5zPurIhIbubEMfY13bmBt
	cFJIunKFMRHCZMjR80gnNRWAjAMvx9DVwjR+OSpB/5x2z0J/tb/QDD+qneYljjF1fe0saHBAE1T6X
	PnZSmsJuYZ4nyTXIAc6deghqe3w8bpmVRcmApt6etEhCYCZjQM89YinVVqElaLY7/JYhsCHMVlMMg
	hhZYskhJYA4dlyAnXr2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2zY4-0004PR-D4; Wed, 28 Aug 2019 15:07:48 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2zY0-0004O8-6n; Wed, 28 Aug 2019 15:07:45 +0000
Received: by mail-wm1-x344.google.com with SMTP id t6so422591wmj.4;
 Wed, 28 Aug 2019 08:07:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0g6/GWz5P/gWnoS2zvVct0hdhKaGG9FVra9wvXgtYro=;
 b=G4yuIL9aACyk+T1kP/v/gjWwqvfosJhV/CrOwvCZWPq9LWrgypos/FB/at6623Os0t
 MOjMC5p8GDAvrCudo/Voigjzi7LGwqvDvmptJA2N/SJb9rzz8l1OWLHyPaqkWWcUGFex
 aFbl21PTj2DpaTmDZxsWCQjknQ/v/A64x+9/I1RBG3ySsddEYNFul/ZMysk6C1zIEDz2
 MBRhkBBi6OTf8+IF1x3Yqfpd1ba9BTNHpuLTo4c6l2c6OM/5/CgsdXZXizmAgTS9lc1G
 OUcRyNcj3Ue1IAA6TzU/T+ka6LERlX/TAPj5w547tGTGFhy+L711EsFj3W5yPt8ZSB+p
 Tmqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0g6/GWz5P/gWnoS2zvVct0hdhKaGG9FVra9wvXgtYro=;
 b=DzOrRoynW9Z5yc2ceQPnSTf3bFCK7u8XHN0sD/VnuXDvl/AB8CFB/XPiyHLCp5gy7o
 0mbQjW2KlfO0+j5rcQ9mr6qp90vdwELymc8T/P/jGvwHa9sTZaz3uaV46qoAZj7BOP7E
 yhMrrHa6N4bhYP4h1eN+YoZu+7uhby8oiUvd4UyWwdY2kIOcmJKf+FabmQTktJwZGdgu
 6WaHprr3ylU2iEWYxzBzO0np3mQALang+LYRjB8DWiyY3wf51mieLKiKltxtQv/hRxJ8
 8ILHB+UgQyhl/r1+dRfsO7B6+4EfwtzbtPjL+P+qAWu/YZm7jsbUsycWBuU/xOurY3/9
 4SNQ==
X-Gm-Message-State: APjAAAUTzSxHDKTot7dMJvbHZ/5qUB21TfWrnuMcwbNYX1qmow+JhO0m
 ehoEPx0ThvydQuf/4C5uOcY=
X-Google-Smtp-Source: APXvYqzpBqySxGG2yCcwTNpgYDuAfZBmGQmktNF+X+q9cdeGc6c9u/8Edr1Xpqs95F0MjOE+3g8WCA==
X-Received: by 2002:a1c:d108:: with SMTP id i8mr5824675wmg.28.1567004860039;
 Wed, 28 Aug 2019 08:07:40 -0700 (PDT)
Received: from localhost (pD9E51890.dip0.t-ipconnect.de. [217.229.24.144])
 by smtp.gmail.com with ESMTPSA id v124sm3115316wmf.23.2019.08.28.08.07.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Aug 2019 08:07:38 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH] PCI: rockchip: Properly handle optional regulators
Date: Wed, 28 Aug 2019 17:07:37 +0200
Message-Id: <20190828150737.30285-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_080744_255877_A16F7427 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
 Vidya Sagar <vidyas@nvidia.com>, linux-rockchip@lists.infradead.org,
 Andrew Murray <andrew.murray@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

regulator_get_optional() can fail for a number of reasons besides probe
deferral. It can for example return -ENOMEM if it runs out of memory as
it tries to allocate data structures. Propagating only -EPROBE_DEFER is
problematic because it results in these legitimately fatal errors being
treated as "regulator not specified in DT".

What we really want is to ignore the optional regulators only if they
have not been specified in DT. regulator_get_optional() returns -ENODEV
in this case, so that's the special case that we need to handle. So we
propagate all errors, except -ENODEV, so that real failures will still
cause the driver to fail probe.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/pci/controller/pcie-rockchip-host.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
index 8d20f1793a61..ef8e677ce9d1 100644
--- a/drivers/pci/controller/pcie-rockchip-host.c
+++ b/drivers/pci/controller/pcie-rockchip-host.c
@@ -608,29 +608,29 @@ static int rockchip_pcie_parse_host_dt(struct rockchip_pcie *rockchip)
 
 	rockchip->vpcie12v = devm_regulator_get_optional(dev, "vpcie12v");
 	if (IS_ERR(rockchip->vpcie12v)) {
-		if (PTR_ERR(rockchip->vpcie12v) == -EPROBE_DEFER)
-			return -EPROBE_DEFER;
+		if (PTR_ERR(rockchip->vpcie12v) != -ENODEV)
+			return PTR_ERR(rockchip->vpcie12v);
 		dev_info(dev, "no vpcie12v regulator found\n");
 	}
 
 	rockchip->vpcie3v3 = devm_regulator_get_optional(dev, "vpcie3v3");
 	if (IS_ERR(rockchip->vpcie3v3)) {
-		if (PTR_ERR(rockchip->vpcie3v3) == -EPROBE_DEFER)
-			return -EPROBE_DEFER;
+		if (PTR_ERR(rockchip->vpcie3v3) != -ENODEV)
+			return PTR_ERR(rockchip->vpcie3v3);
 		dev_info(dev, "no vpcie3v3 regulator found\n");
 	}
 
 	rockchip->vpcie1v8 = devm_regulator_get_optional(dev, "vpcie1v8");
 	if (IS_ERR(rockchip->vpcie1v8)) {
-		if (PTR_ERR(rockchip->vpcie1v8) == -EPROBE_DEFER)
-			return -EPROBE_DEFER;
+		if (PTR_ERR(rockchip->vpcie1v8) != -ENODEV)
+			return PTR_ERR(rockchip->vpcie1v8);
 		dev_info(dev, "no vpcie1v8 regulator found\n");
 	}
 
 	rockchip->vpcie0v9 = devm_regulator_get_optional(dev, "vpcie0v9");
 	if (IS_ERR(rockchip->vpcie0v9)) {
-		if (PTR_ERR(rockchip->vpcie0v9) == -EPROBE_DEFER)
-			return -EPROBE_DEFER;
+		if (PTR_ERR(rockchip->vpcie0v9) != -ENODEV)
+			return PTR_ERR(rockchip->vpcie0v9);
 		dev_info(dev, "no vpcie0v9 regulator found\n");
 	}
 
-- 
2.22.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
