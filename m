Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66925CD488
	for <lists+linux-rockchip@lfdr.de>; Sun,  6 Oct 2019 19:26:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K+QHJgC87lI2JkHIxH4k9yMnLqXD90BI0EorMLj68RU=; b=m9xyhLjb6uQlRw
	x4jsCGQg16u5UDEkl5quy8dGXRBK9Kh+79J6jfgyYwH9pu8pRvPOTh4uOfUP5/RXSyuAzhsTnQVak
	ztQlSTkzf83HEFxdCxRu0GAddaTT3+hOn71+sByWKm+EaApPlb2p4vItPTjRCN9gY1U7g4VYtn8xu
	koTdrOSil0HXkWPFR3CYxEL0Q6wG/075u7dbtBVPXRu6WmXplJI0BxI0RlYDKJ6n5+5SFb/98oNY3
	ZwV1fWREhMsCX7GyDYoAUuOD7C1mnpOyaco9dUmbgVE0C/qz0GBNUcLj4ALPrsnNe5rT7WeqvJPuI
	CKiUWvicRUy89L4C/rFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHAIv-0000dV-GK; Sun, 06 Oct 2019 17:26:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHAIr-0000cO-Dl
 for linux-rockchip@lists.infradead.org; Sun, 06 Oct 2019 17:26:42 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A4B8C2133F;
 Sun,  6 Oct 2019 17:26:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570382800;
 bh=Ul1IQzv9UVldGMU3yhp2umsQMRA6lOxZbadI+W5eHfI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=gX4OoC8aFenJeKTeIwOJCWA/LKVAsYa9hOYm+8z9b2+7hU665UlpJ5TeAYUriapQS
 M86Xae3RlMYjePsgMtmxvNfcjCUR1JykTH97fdrM/zCH6nNgeXhXqsFzElPs3MlSXJ
 KjJQfo1/g+CpXeHnWA47xG34zLjuGkffdW8vmaa4=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 4.14 37/68] PCI: rockchip: Propagate errors for optional
 regulators
Date: Sun,  6 Oct 2019 19:21:13 +0200
Message-Id: <20191006171126.183069965@linuxfoundation.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191006171108.150129403@linuxfoundation.org>
References: <20191006171108.150129403@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_102641_505163_4015AF33 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, stable@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Andrew Murray <andrew.murray@arm.com>,
 Thierry Reding <treding@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

[ Upstream commit 0e3ff0ac5f71bdb6be2a698de0ed0c7e6e738269 ]

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

Tested-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Thierry Reding <treding@nvidia.com>
Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Reviewed-by: Andrew Murray <andrew.murray@arm.com>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Acked-by: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/pci/host/pcie-rockchip.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/pci/host/pcie-rockchip.c b/drivers/pci/host/pcie-rockchip.c
index 9051c6c8fea49..d3f9e7d247275 100644
--- a/drivers/pci/host/pcie-rockchip.c
+++ b/drivers/pci/host/pcie-rockchip.c
@@ -1129,29 +1129,29 @@ static int rockchip_pcie_parse_dt(struct rockchip_pcie *rockchip)
 
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
2.20.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
