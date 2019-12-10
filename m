Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF0D61189BB
	for <lists+linux-rockchip@lfdr.de>; Tue, 10 Dec 2019 14:27:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=86YvTN7JOKLHZXRpfU0bjavFPz0JT1UXwey0vYhbENk=; b=PsTs5hGeiWO8ipuPbXcRbSqEl2
	3tYxA8qYzzuqMrf8ABZCjkKD2vv1KpGKZfes5/RYe36X2rxYyOIHOpBv8/2H1xLNMUzisLKgVEuzl
	Ua9FyTTeXELgm11Wt9Hnbx+OSrG8N1BMCNVtdFJphEwy3g62wJS1+cYj76x9lSiuK6RR9Y75PTOaU
	WBWa+o1CeYnWBz8djTdFzf6KIXCIIlOerh46JSRFJI9kafD3Dd1tU1TuKsUSzVOWf0X3WVWvi8M4Q
	fYMxpgrnvsu0+5ALKo5wBYmoUERnNQg/L5R0DegJU9CL/E/wZLGjYdaINIKKbVA2amYbc86yP1m2O
	oy0emDSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iefY2-0006Kj-9O; Tue, 10 Dec 2019 13:27:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iefV7-00028O-HS
 for linux-rockchip@lists.infradead.org; Tue, 10 Dec 2019 13:24:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D18F2113E;
 Tue, 10 Dec 2019 05:24:28 -0800 (PST)
Received: from DESKTOP-VLO843J.cambridge.arm.com
 (DESKTOP-VLO843J.cambridge.arm.com [10.1.26.198])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id E38343F52E;
 Tue, 10 Dec 2019 05:24:27 -0800 (PST)
From: Robin Murphy <robin.murphy@arm.com>
To: lee.jones@linaro.org
Subject: [PATCH 2/4] mfd: rk808: Always register syscore ops
Date: Tue, 10 Dec 2019 13:24:31 +0000
Message-Id: <b59f9861afd658008fbc4f58b75a995bfe00d6ae.1575932654.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1575932654.git.robin.murphy@arm.com>
References: <cover.1575932654.git.robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_052429_643436_D6049A8E 
X-CRM114-Status: GOOD (  11.42  )
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

Registering the syscore shutdown notifier even when it's a
no-op for the given RK8xx variant should be harmless, and
saves a lot of bother in handling unregistering on probe
failure or module removal, which has been woefully lacking.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/mfd/rk808.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index f2f2f98552a0..387105830736 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -623,7 +623,6 @@ static int rk808_probe(struct i2c_client *client,
 		nr_pre_init_regs = ARRAY_SIZE(rk817_pre_init_reg);
 		cells = rk817s;
 		nr_cells = ARRAY_SIZE(rk817s);
-		register_syscore_ops(&rk808_syscore_ops);
 		break;
 	default:
 		dev_err(&client->dev, "Unsupported RK8XX ID %lu\n",
@@ -667,6 +666,7 @@ static int rk808_probe(struct i2c_client *client,
 	}
 
 	rk808_i2c_client = client;
+	register_syscore_ops(&rk808_syscore_ops);
 
 	ret = devm_mfd_add_devices(&client->dev, PLATFORM_DEVID_NONE,
 			      cells, nr_cells, NULL, 0,
@@ -684,6 +684,7 @@ static int rk808_probe(struct i2c_client *client,
 	return 0;
 
 err_irq:
+	unregister_syscore_ops(&rk808_syscore_ops);
 	regmap_del_irq_chip(client->irq, rk808->irq_data);
 	return ret;
 }
@@ -694,6 +695,8 @@ static int rk808_remove(struct i2c_client *client)
 
 	regmap_del_irq_chip(client->irq, rk808->irq_data);
 
+	unregister_syscore_ops(&rk808_syscore_ops);
+
 	/**
 	 * pm_power_off may points to a function from another module.
 	 * Check if the pointer is set by us and only then overwrite it.
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
