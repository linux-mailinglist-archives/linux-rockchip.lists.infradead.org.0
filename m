Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7684D1A49CF
	for <lists+linux-rockchip@lfdr.de>; Fri, 10 Apr 2020 20:27:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=e/D2lN7U+Ea32s/tm9DCQ9jgId0ygdi2UEGRHfWfywg=; b=pu7yZN2Upv8NDfTl5HeWgbDfW5
	eidqvGfwfwC7izwNlwhE26u2ZIOTZnh7/TK7D51TFv3GQTpLJ1nyBik7bGaAuCwnACN46OJDghsqw
	m6ktCNEj42uXs69GhvduBB0VyjO1Hbt0s4o6UpWNF9MYrN8AaNRFelMrF79IS5ElGSl4wMhFo6xHS
	L7HVNjFaZaKgGc8UYKni/EO/nmJu6KyDrY3H+7XQTLlgnQUylXe6Los20E9wqsjLZFq3N4q+yrD85
	OlWiUFtz6FBfIkJ1s822N+MgmBp3zqXY06kSxT09nVhSMaH1DbYDIkoSipg58fUxTmcKZG4O8FIH0
	/h+wXMOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMyMy-0005GZ-KU; Fri, 10 Apr 2020 18:27:12 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMyMu-0005Fp-KD
 for linux-rockchip@lists.infradead.org; Fri, 10 Apr 2020 18:27:10 +0000
Received: by mail-pg1-x544.google.com with SMTP id x26so119256pgc.10
 for <linux-rockchip@lists.infradead.org>; Fri, 10 Apr 2020 11:27:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Z5tYs86UgQjVIaZ4/weCq1kZNUCxBsvq1+pNvaLhNSM=;
 b=fR5SDbrE/kwrvKbyxKoJ+oLSvqBGlOVZPcVpdhxuGlaqGtbIBDm72SLl4gkWgPLYae
 FeflxyQhclynA8d7ZbaDFL5AZT31bf8XFZiaInuOzCFey+ZXrhZ0SJ9CH4QMv7AlXVp8
 vpzA2brXoGWik9RAiaAGm74ym+x+KOwfCp6Mk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Z5tYs86UgQjVIaZ4/weCq1kZNUCxBsvq1+pNvaLhNSM=;
 b=KBi5fix++ROsnOXje/Mfjv3B1GBoYEpIQphJ8VPAb22HLrdWN9xFIc3rLkCRpCEp+x
 5te7STzKIzU+rjHHLdyWbtg7ZmbEUi6xpNGlJh9HweKBMN/ffWOnlHpU1CWSrn5ACyw9
 rpKsXj25v70o43wYTqA9SghQpzaPInTiENbNu6btTOO2a+YksbyCku84ZDng/o7MDhS3
 u2ZnuBAKBiyDmWFcXhBmUga0pJBleG3PLGU6HVzJYiNOxFsDzEAFH4MMthBIfW43MUcX
 QAHDjC2818nPnfLXOd+OtuCNRR0v/EIfBnZMApmUekxZclxjIVmjASygOUafMdNt4TDG
 ttjw==
X-Gm-Message-State: AGi0PuYh0qoxtm4+ga0pm9GfiNH1NLj37bMxnZJBqiP5GCB/RSSKzPqC
 kF5O2Pw1i0ttz9S/+yzzpN0FSQ==
X-Google-Smtp-Source: APiQypLk9jRXjW0b97m2hNQOFS9N5OXJi0zHYsiP2Kfg9e+LQuYOYfGMGbvBCCMl0JTkNQzkY93Weg==
X-Received: by 2002:a63:4850:: with SMTP id x16mr5744920pgk.317.1586543227545; 
 Fri, 10 Apr 2020 11:27:07 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:e854:42b6:1a5:a40e])
 by smtp.gmail.com with ESMTPSA id
 w90sm2214694pjj.2.2020.04.10.11.27.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Apr 2020 11:27:07 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Tom Rini <trini@konsulko.com>, Kever Yang <kever.yang@rock-chips.com>,
 Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v2 1/3] environment: distro: Add SF distro command
Date: Fri, 10 Apr 2020 23:56:29 +0530
Message-Id: <20200410182631.11951-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200410182631.11951-1-jagan@amarulasolutions.com>
References: <20200410182631.11951-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_112708_999422_5C80ECFB 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 sunil@amarulasolutions.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add distro boot command support for SPI flash (SF).

This distro boot will read the boot script at specific
location at the flash and start sourcing the same.

This file need to include on required include/config
file.

Cc: Tom Rini <trini@konsulko.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- new patch

 include/environment/distro/sf.h | 41 +++++++++++++++++++++++++++++++++
 1 file changed, 41 insertions(+)
 create mode 100644 include/environment/distro/sf.h

diff --git a/include/environment/distro/sf.h b/include/environment/distro/sf.h
new file mode 100644
index 0000000000..e793be06c6
--- /dev/null
+++ b/include/environment/distro/sf.h
@@ -0,0 +1,41 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Copyright (C) 2020 Amarula Solutions(India)
+ *
+ * SF distro configurations.
+ */
+
+#ifndef __DISTRO_SF_CONFIG_H
+#define __DISTRO_SF_CONFIG_H
+
+#if CONFIG_IS_ENABLED(CMD_SF)
+#define BOOTENV_SHARED_SF(devtypel)				\
+	#devtypel "_boot=" 					\
+	"if " #devtypel " probe ${busnum}; then "		\
+		"devtype=" #devtypel "; "	  		\
+		"run scan_sf_for_scripts; "	  		\
+	"fi\0"
+#define BOOTENV_DEV_SF(devtypeu, devtypel, instance) 		\
+	"bootcmd_" #devtypel #instance "=" 			\
+		"busnum=" #instance "; " 			\
+		"run " #devtypel "_boot\0"
+#define BOOTENV_DEV_NAME_SF(devtypeu, devtypel, instance) 	\
+	#devtypel #instance " "
+#else
+#define BOOTENV_SHARED_SF(devtypel)
+#define BOOTENV_DEV_SF \
+	BOOT_TARGET_DEVICES_references_SF_without_CONFIG_CMD_SF
+#define BOOTENV_DEV_NAME_SF \
+	BOOT_TARGET_DEVICES_references_SF_without_CONFIG_CMD_SF
+
+#endif /* CONFIG_CMD_SF */
+
+#define BOOTENV_SF \
+	BOOTENV_SHARED_SF(sf) \
+	"scan_sf_for_scripts="					\
+		"${devtype} read ${scriptaddr} "		\
+			"${script_offset_f} ${script_size_f}; "	\
+		"source ${scriptaddr}; "			\
+		"echo SCRIPT FAILED: continuing...\0"
+
+#endif /* __DISTRO_SF_CONFIG_H */
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
