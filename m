Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D339A1189B9
	for <lists+linux-rockchip@lfdr.de>; Tue, 10 Dec 2019 14:27:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KFygfPL/Jwt/MGWnxGDFL/u2/yApnTlK8o2eILtqKTI=; b=tK3eZdHTGeCOmgxHmoPAuuwzGi
	XoZz1AAi1a1BxhcWWSDlh6F/CPx2k0bagCYl3Dyp3tLyzIQUNf1y93J+eS5JFGUlIGurlsYyW5ZQN
	kXKPVab0CAebnBTjnCf8hDhddL0QZmiHo1Q3+h33UvYcq+gppGbAQub5+RgqBDhYf6VlxvDYwW6s9
	xRUz5lveaG0lYT4+0rL5RMO/QEYhw6JornENc/bH4CrhtpS4jIbLKLhgfv+sJaH1PO6AcKLBiX1Na
	bUrAdh/8vCCud9BeZRjZXGSAbwWVzsm1HomSW7+Uo0adoPDhL4DRgWn5MsA/3tL+PR4EnQU3sm9cx
	Y3T04Ecg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iefXu-0006Ek-Sp; Tue, 10 Dec 2019 13:27:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iefV6-000277-F5
 for linux-rockchip@lists.infradead.org; Tue, 10 Dec 2019 13:24:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 96F3E1045;
 Tue, 10 Dec 2019 05:24:27 -0800 (PST)
Received: from DESKTOP-VLO843J.cambridge.arm.com
 (DESKTOP-VLO843J.cambridge.arm.com [10.1.26.198])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id A23853F52E;
 Tue, 10 Dec 2019 05:24:26 -0800 (PST)
From: Robin Murphy <robin.murphy@arm.com>
To: lee.jones@linaro.org
Subject: [PATCH 1/4] mfd: rk808: Set global instance unconditionally
Date: Tue, 10 Dec 2019 13:24:30 +0000
Message-Id: <f55d95c36ac21c4eeef38f5a17035574049a5f03.1575932654.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1575932654.git.robin.murphy@arm.com>
References: <cover.1575932654.git.robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_052428_591322_8D7240A8 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux.amoon@gmail.com, linux-rockchip@lists.infradead.org, smoch@web.de,
 linux-kernel@vger.kernel.org, heiko@sntech.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The RK817 syscore ops rely on the global rk808_i2c_client being set,
but are essentially independent of whether this driver has authority
over system power control - indeed, setting the SLEEP pin functionality
is most likely wanted when firmware is in charge of power via PSCI.
There's also no harm in setting it unconditionally anyway, so do it.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/mfd/rk808.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index 616e44e7ef98..f2f2f98552a0 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -666,6 +666,8 @@ static int rk808_probe(struct i2c_client *client,
 		}
 	}
 
+	rk808_i2c_client = client;
+
 	ret = devm_mfd_add_devices(&client->dev, PLATFORM_DEVID_NONE,
 			      cells, nr_cells, NULL, 0,
 			      regmap_irq_get_domain(rk808->irq_data));
@@ -675,7 +677,6 @@ static int rk808_probe(struct i2c_client *client,
 	}
 
 	if (of_property_read_bool(np, "rockchip,system-power-controller")) {
-		rk808_i2c_client = client;
 		pm_power_off = rk808->pm_pwroff_fn;
 		pm_power_off_prepare = rk808->pm_pwroff_prep_fn;
 	}
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
