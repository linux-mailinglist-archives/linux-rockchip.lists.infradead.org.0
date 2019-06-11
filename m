Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C65553CFF1
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:57:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=il4+3sn2iMYdrp1NFmGnurq3t0elRCpxEfhnsslfN54=; b=YH1bOWnkYcr0zD
	G43lvI0OmEdwvTmRwidK1PLoh5rpS/93F7dX6zbmvVOg2xjl3sJsW4+V6rsPJjDsyqA5UoJvdvr4R
	fZItfZqRzV1tmscXRWu+QmOjg5AKNtia78tTCRZq2czCcEB+1VuUpA1joLydE3Ezzoadi0//OWuH4
	fjsd01rZ1TtkKi3Ksvm4N03uVNsGUoC7qm13Cb/cmNZQAdaEK8INIifUEfsVySWGQazBQjSs2YFHm
	cfe+yY19r89TY4fwxG6lOHtCU+fngYmnWhq4AJIWcVjwQbdmrT4dubncyC6JgcFWFTFLtrpWMu85p
	66HJ9/6k81/rY4TVIvqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiDB-0000PF-2g; Tue, 11 Jun 2019 14:57:21 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiCx-0000DW-1U
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:57:08 +0000
Received: by mail-pg1-x542.google.com with SMTP id k187so6619757pga.0
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:57:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4ooZ4JipFDgtDLaGnlpclxsC67JdyjRNWw7MSSBZLXI=;
 b=On5snYkDzaCHpZKs1tJ2vctPU4sJEN3Xlv+KiyGi4W6PDmJ4rVqgRHE+LjMGvhIsYk
 ESHkNu0teRJbTHkfLsc59Ot3ixafWZsQ3tD/pQzUNMF4wmyZNHVGH4zRjPCEycJ2/nHv
 +pryKyvTiVkT0a1XYG+FMbmsCkBIhakWe0mKM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4ooZ4JipFDgtDLaGnlpclxsC67JdyjRNWw7MSSBZLXI=;
 b=J9XuPYmfjtfg3/DO6wVnw7qUbodLHh4uTyh+lCaIiCbFtRCN0si/uTxUQXwpoopXkU
 fpdkNp6EWiL7KdHa3DSUxGqX1QkNEjAQfjans2eyV/KhrkMJanUlpbKrz//gkuyq0cEa
 hDJFDBXjgN6apmOzt40A8LthM13NF1GdFs3hJCUXTmoQ4qW/ZNVdlinvxtD/0xU6ogZb
 3h0XKcFo1izbQtRrCDGcK0ghw7NLYB69SD/fY1UJJBodjlBwfyaoIkIlu4aMErqwGqKm
 SnrJG6sKYojfnT7ZkKcjXd3Tj6AZW/dd+AvplNM62DzNLCJIngElXe3iKKzXSEe3fktz
 ca/A==
X-Gm-Message-State: APjAAAWuEkQ1by5CtBJayOfNQCYQ0zTGi3+IqWu3JGMa92nceqmD4RyQ
 7mkjZgZonwbGt4ZEprH0KePoKw==
X-Google-Smtp-Source: APXvYqyYX2ujh+D8W+x/2Kznqj91eaiIYhWnbj/8bkfEUO/TxFGo7oLtW6LwmehnxcIG39Itzj/FDw==
X-Received: by 2002:a63:6c87:: with SMTP id
 h129mr21165695pgc.427.1560265026486; 
 Tue, 11 Jun 2019 07:57:06 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.57.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:57:06 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 80/92] rockchip: rk3399: syscon: Add pmu support
Date: Tue, 11 Jun 2019 20:21:23 +0530
Message-Id: <20190611145135.21399-81-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075707_163495_444680F7 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

Add pmu compatible with relevant U_BOOT_DRIVER for rk3399
via syscon rk3399 driver.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/mach-rockchip/rk3399/syscon_rk3399.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/mach-rockchip/rk3399/syscon_rk3399.c b/arch/arm/mach-rockchip/rk3399/syscon_rk3399.c
index a8bb5b11e5..259ca44d68 100644
--- a/arch/arm/mach-rockchip/rk3399/syscon_rk3399.c
+++ b/arch/arm/mach-rockchip/rk3399/syscon_rk3399.c
@@ -13,6 +13,7 @@ static const struct udevice_id rk3399_syscon_ids[] = {
 	{ .compatible = "rockchip,rk3399-pmugrf", .data = ROCKCHIP_SYSCON_PMUGRF },
 	{ .compatible = "rockchip,rk3399-pmusgrf", .data = ROCKCHIP_SYSCON_PMUSGRF },
 	{ .compatible = "rockchip,rk3399-cic", .data = ROCKCHIP_SYSCON_CIC },
+	{ .compatible = "rockchip,rk3399-pmu", .data = ROCKCHIP_SYSCON_PMU },
 	{ }
 };
 
@@ -58,4 +59,11 @@ U_BOOT_DRIVER(rockchip_rk3399_cic) = {
 	.of_match = rk3399_syscon_ids + 3,
 	.bind = rk3399_syscon_bind_of_platdata,
 };
+
+U_BOOT_DRIVER(rockchip_rk3399_pmu) = {
+	.name = "rockchip_rk3399_pmu",
+	.id = UCLASS_SYSCON,
+	.of_match = rk3399_syscon_ids + 4,
+	.bind = rk3399_syscon_bind_of_platdata,
+};
 #endif
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
