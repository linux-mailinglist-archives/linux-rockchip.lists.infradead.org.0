Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F1B36A817
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:02:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=il4+3sn2iMYdrp1NFmGnurq3t0elRCpxEfhnsslfN54=; b=PMzgQNgCvn3qY4
	XFmR/TY3R5nm+LaS/EXq8mDlwev5rLqv+h/E9XgNJ4Tk2nayYT11Ei61ZcuPb6072mgzuNNVAHngW
	tz0QuKEg3IbYrSUJg65/P+naJtE/jbd1VEpRkdieFX+2TNrvQ17lqx5gatufhmkLe2MHvyfkfivdh
	EfR/KIHJvyekz5l+AzYM1QdQ+nHM7TjSBGPQtmvf6WB0TGIDCT4hHKe61TKJ0pRbR2PeZsaN5OAj7
	HwvkVGNsk7cmHRIfJ7VRKXxkqDFWvI9RNC9Go1YhE6cytZwZ0SP9KcgiwuFeYJ7Pj11SesqYhp1Hm
	KwC7LcHQU4cqx46wI5VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnMAB-0008TV-Oo; Tue, 16 Jul 2019 12:02:31 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM8L-0006mt-BZ
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 12:00:38 +0000
Received: by mail-pg1-x544.google.com with SMTP id f5so506735pgu.5
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 05:00:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4ooZ4JipFDgtDLaGnlpclxsC67JdyjRNWw7MSSBZLXI=;
 b=YLmq6cnq2oR9DoFkYFj7pXcPCYp5b0cpcb9B/7C+gIEY1AKqFRNENfC0aD8sT2b0fZ
 V8bBAzZaGLsor3UKSQ1EQkwvGNvDcMm45zNh93pheeuqVCOPR8x7yQ3PAwqH8oo3Nl6T
 BvBhbzHbXybWJW8Wz1lghJliQeTjSwiiOjgqc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4ooZ4JipFDgtDLaGnlpclxsC67JdyjRNWw7MSSBZLXI=;
 b=KAkDUqx3R47ZbpGN5iBeGZ771oLiOkgjRWsMDrifOuOQ1VSFnttqVezv2KfIZ1sUjY
 rBpxYWhmI4LZBSTH4ik/QXeW10NxCyEm9nEiaD57CwU6l/c6JIag60ztsKNqKpHGbXw7
 6mAXtmjJ/PxsDpXhpRYYXc2OO+N9l+ajIahVo4qcrYWzom4ls2qK++Th2rwqPiewxOFR
 t8Obibpf+nAKmQO+35JoYnfw/yxPw/e8pWf9jDzwIICGjVoy5z0oK+TiVTXomLZGDTxo
 Ugl0TwPH5q+V8Br8EcF12bPTzKW8EbVYVWt3l7xe1u8BL120xhBg3+b7jETYxRoW+epu
 OgLg==
X-Gm-Message-State: APjAAAUuvE/1ts+2Y+cKh3FkSrYDDdf3ZrRSFlaVH87NzyYbahGR9cVp
 tw/spSJq0rWp8JHGlnpMhH0/rw==
X-Google-Smtp-Source: APXvYqyCRYMjVp7HVIyRsuvv0vJcut56/NCEnmm6CwfF70x/kjcgJ/K9+aEc9p7c9DQFp2KpJpXaYQ==
X-Received: by 2002:a17:90a:898e:: with SMTP id
 v14mr35652467pjn.119.1563278436875; 
 Tue, 16 Jul 2019 05:00:36 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.05.00.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 05:00:36 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 45/57] rockchip: rk3399: syscon: Add pmu support
Date: Tue, 16 Jul 2019 17:27:33 +0530
Message-Id: <20190716115745.12585-46-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_050037_437917_1EF4E615 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
