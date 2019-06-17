Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E111A47B74
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:41:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=il4+3sn2iMYdrp1NFmGnurq3t0elRCpxEfhnsslfN54=; b=TkaKjFviGflbB5
	cbipaNzhJ+ZJQhKOAWsLW5+mmA9fwu4tDmUAK+GvStMxXOdk9Fyx8trbbLQkoGb9415dcp3cBSKB2
	gqHnZzD05oF/lUNDnsukXd5dD0SmnqjuYRt6DD5C1TSlvQiRKleXmk1+bbiJNmU17YoDBNlbL5Cq9
	uUBtPWE9CLmo+XsX7thPeSqzDhYwkI8Y5+LL3/E57FgX5FNYf8fIVyroLNmdeKziO3zDOV2sw7HlW
	5qrQqXtcXeMpU31VDWSGNs3yLW6rB/Kk1qLbPEy9ecbeFWDvq6LR9SgYh9DNSRfSdgRPLY0IZ6beY
	+dtX1qy8XtXWxEi4WvVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmGG-0001r2-T1; Mon, 17 Jun 2019 07:41:04 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmGC-0001nU-58
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:41:01 +0000
Received: by mail-pl1-x642.google.com with SMTP id m7so141555pls.8
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:41:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4ooZ4JipFDgtDLaGnlpclxsC67JdyjRNWw7MSSBZLXI=;
 b=KzvRlyRUlfs93wJMekTtVXCFIL7ZA43XIsnps79TyHKbowi56wrjkGcR0ydpyO7hMb
 T9bnIhLcw/tbn/3cDZU9mdjs3bQ+l9mWZ9AZGy0OYOTOrvvTIffXgzG4Al5GF5S8kyWx
 9T8juvIw6ngQrxiB9eJ0PLkQFbLuzbZjpWcx4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4ooZ4JipFDgtDLaGnlpclxsC67JdyjRNWw7MSSBZLXI=;
 b=MuWD8f46FAeTCKDIuKhKBYfH9lSJFJWSd0gvCkz6RZNolZ34Lwgh/FabnvF2YKrcpK
 0arDMYF747dJKoecs+8Mlux0W/A/05Ld64TVkP88CdNxwx63S+Of1G7ONlpJ3oj19YVp
 QKchQxrJt3d7CT0QsZb5IcRN5rkMbQdi9sE2dSNoYv5it2zZq7ZBZfSyxSZjMSc/EXhC
 d3qZMc0BgOEjjmjdrJ7HqkiIpGdrSKdY/W977193Wb9Z6/LuXXefxKP1uJHIuGO9eDxg
 MVICvX2NzNvybJRhENbFiW2teO9U/iaL26ZZmxNZKfomXVZYIXTEzS5Eb2Bt9/KTCdBO
 bsoA==
X-Gm-Message-State: APjAAAU9m7GGqxV4OrCizWBZQYPHYOs8W0qLkJLDn3vR9wz9UCLT2ANK
 7J5daOlOn24iI0bQhi3rUwtr7Q==
X-Google-Smtp-Source: APXvYqy0gtB+kluW30GPQW3BeRy7WP7LO4OTohB8yvUtEwJwU+w8Ym6mOrY+wsOdzflmiduhVCjpHw==
X-Received: by 2002:a17:902:a516:: with SMTP id
 s22mr66643305plq.178.1560757259674; 
 Mon, 17 Jun 2019 00:40:59 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.40.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:40:59 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 84/99] rockchip: rk3399: syscon: Add pmu support
Date: Mon, 17 Jun 2019 13:02:37 +0530
Message-Id: <20190617073252.27810-85-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_004100_203927_BAAD2DBC 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
