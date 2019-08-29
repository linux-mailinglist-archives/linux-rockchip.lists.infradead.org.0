Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD71A171F
	for <lists+linux-rockchip@lfdr.de>; Thu, 29 Aug 2019 12:53:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CjT+FYU7OvRTNMwOgyhSbBmksrBrOtgICyvh3a2MUss=; b=PC9bJBtgy9Jwv7
	K2eBg0RpywYJkQbKfX35PbDnRRGWQmtijMdJb/WNFtTHK0YxTUAK/dH1yYlsebIuXj+7wmgVJ6jTW
	i2EuGohYCipufYmOkcAqhvgxliJbKLsc1pLvTJLOXJwMJyLWTPddKHYbzE66L5BuY/aBDCKOr9WR1
	+KnaCfiEX1RcnpE5mOU5Y7CUfqYv41MH/mS49f7Ya23hI5nWWezU5mGVNI2hnSx65xDQC6J1cOMTH
	70gEk6KlnaQgzC7Bj7+VwUrCiY0W6byvSO2bCa3IddgpnSQRMbp00rHZHWi1Cp7OJnoKLjt+PHckS
	cDZ4KT/cJWTQ1GrkKRDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3I3U-0000pU-4O; Thu, 29 Aug 2019 10:53:28 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3I3Q-0000oZ-LI
 for linux-rockchip@lists.infradead.org; Thu, 29 Aug 2019 10:53:26 +0000
Received: by mail-ed1-x544.google.com with SMTP id s49so3595736edb.1
 for <linux-rockchip@lists.infradead.org>; Thu, 29 Aug 2019 03:53:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6CrKI9MhQzT9WqpEbXKyv6DhjyLfjSiz4qRQN1f/whw=;
 b=DgTNRg87AQs/Ut2ARsvMwMQBNk7BXUVzcYL46IiYCDqUP/CeYWME6luaR3oDragNfK
 toUZVDuX453YpYlJ8isTdax4cJbJ8bcjJJjt48fQ7i/WyQAo83gdrg8+v80XAC2qi0ZS
 6srgHUKllQ0m7K214wVdDQCyw8VN9/BOl6Z52PN8+nvsyCJeZV7Z4qNScHdtQBwjHCUX
 m+ddGqTXKHXK7h9s/eVE+mAFYpA4fE0lxAiajY0rLhbmzmVnnaM9QB1xF7mStxI1oBO1
 j0yM96oSboyFcVp3L38Of0+c0TtAEgjvfEuVlMx7jU61UoRStU2SuSpAD9xWB9W6kdg0
 OBYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6CrKI9MhQzT9WqpEbXKyv6DhjyLfjSiz4qRQN1f/whw=;
 b=SvDr257jDdXy5s8vcL8kwtP/veihppEf07fv7YwhfGcpZwwNavwUtBFaVcojp0e4r2
 XV7LJlwSECAY0HDopUSX/e4u6Zk9UiFYrjqlh5ZXf9akiMdOYA15VPIKvKzzstOcNR1Z
 c125JxiMaDmXDA/v0ONqFdLUzMb5yiwwANpTc5UOifcKreWtrSiVPG3MgO1Jhn7ujY/D
 8nEUMupDZpX/xhrD7V2R0h/RVf31/G23s9TUBifyg3xVPPWB0DRmv6aQi3iMFH+qeAyS
 0ROwmYJP50i61zzYDS7hI8eqnXIlUwgzbBMmWApDVItN7zBy0qw5dxEgMIh7NoFSo0GC
 042A==
X-Gm-Message-State: APjAAAVHJ5J2fLx8OJcV8j4MoYfuAoDInF/XZL8gCgydMsOf2n32XwEW
 C9qKXCujxkUfykEWoro45KTPU3qE
X-Google-Smtp-Source: APXvYqyx/qJcgDZlIemQldwVnqLbbL+15wOWsgThaZHYnBCzryHVbown85YrmhjWLdJrNRbBMIx74w==
X-Received: by 2002:a17:906:3518:: with SMTP id
 r24mr7473430eja.133.1567076002754; 
 Thu, 29 Aug 2019 03:53:22 -0700 (PDT)
Received: from localhost (pD9E51890.dip0.t-ipconnect.de. [217.229.24.144])
 by smtp.gmail.com with ESMTPSA id j2sm331094ejj.34.2019.08.29.03.53.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 03:53:21 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>
Subject: [PATCH v2 1/6] PCI: rockchip: Propagate errors for optional regulators
Date: Thu, 29 Aug 2019 12:53:14 +0200
Message-Id: <20190829105319.14836-2-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190829105319.14836-1-thierry.reding@gmail.com>
References: <20190829105319.14836-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_035324_726006_C1F379E5 
X-CRM114-Status: GOOD (  13.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-rockchip@lists.infradead.org, Andrew Murray <andrew.murray@arm.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-pci@vger.kernel.org
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

Cc: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org
Reviewed-by: Andrew Murray <andrew.murray@arm.com>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Tested-by: Heiko Stuebner <heiko@sntech.de>
Acked-by: Shawn Lin <shawn.lin@rock-chips.com>
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
