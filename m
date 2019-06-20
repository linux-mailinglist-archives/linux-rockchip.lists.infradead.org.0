Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B044D9D9
	for <lists+linux-rockchip@lfdr.de>; Thu, 20 Jun 2019 20:55:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=agIkykO8IdWUysoG3rRm3w1dhaJ40kX9k+OESD9Py3c=; b=mQpCgfjHLbKfk/
	py8DOMUiE+IziyNr9v2KJxBtF5VK4utLnXVY0zad+u0ydJOsSQSwJ3+PlApenRw1+rd3tCXqZ2h+p
	2tkuVxLk47dIgRQYE1JeMQDyN2P1SSZZPvA/4l8KDEa3GtlbrksDU32gtlRgMwnxBhu2bIYhQX6DX
	T+RhvhVPEtq0ysKy3MwuXe0Oa8I9x7oY63RW5GwvEANnH/qFX6+VCprd4YDaDS+aleWUR2vfW+zzc
	h3QepfPG9EI+ASH5/dZR9Bou1e3YGrUiUcR1VQAmeAL6xgWhctCyIs+x1I0yQcnFTjAZfyuqndO2v
	4v9AaQ2alCeYZaq2llyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he2Dn-00032p-OW; Thu, 20 Jun 2019 18:55:43 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he2Dj-000302-A0
 for linux-rockchip@lists.infradead.org; Thu, 20 Jun 2019 18:55:40 +0000
Received: by mail-pl1-x641.google.com with SMTP id p1so1761406plo.2
 for <linux-rockchip@lists.infradead.org>; Thu, 20 Jun 2019 11:55:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kD+oEPKanpwbUqT7qImxj7fv4DhkmQG/0AnVoyVwb8k=;
 b=UYXRB88IRdD4LO1+UjCZMQoCTWH+rCo/z8yUb+7V9apqr/3fM7y1P8zCOZmiN1TMWr
 l6wkeMUWdSJBf4f1bJD6hFJJtCSTAZrf5Rz6UvGfd10lupdcpOpNhCbq8Pfm34AjFOtm
 PLE9QDxa5mJPr+T+L2nL8bqrQq+TcmcqVjcIc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kD+oEPKanpwbUqT7qImxj7fv4DhkmQG/0AnVoyVwb8k=;
 b=s/WmUo4XukjcFhZZ3vCiU2MpAYsSa6DzYOFCLt3BRuI516NaoTad9jwGde5SjGQJkj
 HPQesDZ6IGyYqeps+yHvq23KzXqjZKxAYXc/6ltl20I/wpzcGoT6hz2LeOUjCsSHvGLb
 ZKWYqCJq/ZOKK1jAcH53aIx9ysJJBb+qa65tjNVA4yxvyGD2G0HI1pYsrqeD3QJ3sDQR
 XgngaKh+ot8pJuNh/Xdn4CPLrNuT+pBsbb8CAbYhFwfPmdxTHDMuoZZUbDmhZSmwJuW2
 DSTkbt5muM423OCcd+8Js4FLZJg7dnDI30W/0zZRhe/yFpSFoJh8RR7ZAOi18H80maph
 KDPA==
X-Gm-Message-State: APjAAAUgU4bJk1DzPzAQtNwG2Beb74W/yl/1BG1FnHR1eK4zrHn9EP4J
 sAw9/xhs1CYSt1Pyh+jLDBbx2w==
X-Google-Smtp-Source: APXvYqzsGSMpnbkvOOIY7YD/2WnkN9wt64TzUkMLxMgd0DtjuU9fwd5cedvLN6y59zeZeXHYAR9bTA==
X-Received: by 2002:a17:902:6947:: with SMTP id
 k7mr52379067plt.253.1561056938788; 
 Thu, 20 Jun 2019 11:55:38 -0700 (PDT)
Received: from localhost.localdomain ([183.82.225.128])
 by smtp.gmail.com with ESMTPSA id k3sm372183pju.27.2019.06.20.11.55.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Jun 2019 11:55:38 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, u-boot@lists.denx.de
Subject: [PATCH v2 6/8] rockchip: rk3399: tpl: Add spl_board_init
Date: Fri, 21 Jun 2019 00:25:04 +0530
Message-Id: <20190620185506.11449-7-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190620185506.11449-1-jagan@amarulasolutions.com>
References: <20190620185506.11449-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_115539_372874_2923D923 
X-CRM114-Status: UNSURE (   8.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [183.82.225.128 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add spl_board_init for TPL, that have TPL banner will help
to print tpl boot prints.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/mach-rockchip/rk3399-board-tpl.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/mach-rockchip/rk3399-board-tpl.c b/arch/arm/mach-rockchip/rk3399-board-tpl.c
index 86d3ffe97c..72d0dd914e 100644
--- a/arch/arm/mach-rockchip/rk3399-board-tpl.c
+++ b/arch/arm/mach-rockchip/rk3399-board-tpl.c
@@ -8,6 +8,7 @@
 #include <dm.h>
 #include <ram.h>
 #include <spl.h>
+#include <version.h>
 #include <asm/io.h>
 #include <asm/arch-rockchip/bootrom.h>
 
@@ -73,6 +74,12 @@ u32 spl_boot_device(void)
 	return BOOT_DEVICE_BOOTROM;
 }
 
+void spl_board_init(void)
+{
+	puts("\nU-Boot TPL "  PLAIN_VERSION " (" U_BOOT_DATE " - "
+	     U_BOOT_TIME " " U_BOOT_TZ ")\n");
+}
+
 #ifdef CONFIG_SPL_LOAD_FIT
 int board_fit_config_name_match(const char *name)
 {
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
