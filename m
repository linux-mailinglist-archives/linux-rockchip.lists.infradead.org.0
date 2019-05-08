Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AFBA1734E
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 May 2019 10:09:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=agIkykO8IdWUysoG3rRm3w1dhaJ40kX9k+OESD9Py3c=; b=qdl3G57N0P6m3F
	nkx2/imEI7hgqIhWIFbL4wtmHMfcf0lJDxOAT5OJ61qzx0sglTCsRtRbXTzPtMyY32VaISswx9vWh
	QLhfVAkhYqsMurCOGL++eWaMA+4hbQDrc9n5jnlgQzK+/EhpYZy0p1/7W9O81y2qwfkg5A/AEl2Q6
	K7rSPTxg8/f323ss6kqvvgMmhC0i/i4qR3EKP/W/vBf2w1K2cpgIEdT0mjfhrpVfHNubDJWsUmE4u
	2pfiFcvJVsDAhm98AwJ4LDIHH3X8DRKOd0O96OEaKKYZ/obi4kLnZqkdAFhiCbHLI/9J8KJmonKOB
	+212KpCui50I7mNd03UA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOHe4-0007vs-3c; Wed, 08 May 2019 08:09:44 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOHe1-0007uN-6C
 for linux-rockchip@lists.infradead.org; Wed, 08 May 2019 08:09:42 +0000
Received: by mail-pg1-x542.google.com with SMTP id z3so5999608pgp.8
 for <linux-rockchip@lists.infradead.org>; Wed, 08 May 2019 01:09:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kD+oEPKanpwbUqT7qImxj7fv4DhkmQG/0AnVoyVwb8k=;
 b=EjyyN0t+S2uqk0YyrBotbNiVD8lBam8zNTuRGgAJXzgO0RHlD/I6TulY8aefSlArIp
 uzcuv5zDGxpt8miVjCEE8drNkoIP6dzY0eRsdxj8cqmcHrjTRNN5D07KXP3TD/Ood591
 E1i8gjWxpRL63Bs1Q3mvS2ksJsgnkc+bQoVOE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kD+oEPKanpwbUqT7qImxj7fv4DhkmQG/0AnVoyVwb8k=;
 b=KSsOomaJ3i+awOsTYafLYiFsQqwfUDtTxUL14ynCCfjVEArpXTcm4S8Cuuddlzr6qD
 UHOGfAkGycaOcNXnx1yIhDc6kiSvVEYk+sqgyndf0uW+HRCZ0C/d4ysdQ+PKTRMFa16B
 RgFvoa856TqUQS3XF7KT81OIdPfDLlw5r7bKeEXrkT6ET7lFNw8XFZN3/n4sSNxeyMl5
 9e0likfcw9okQCrXyND96kRhB/lCvCYnTlom1sv2VdzRq1dF3RlQ8ig4UQDWrRBu/qpG
 O7GHBGZfe52ktYJdasAh+I0r+fmu858uhNatk2uWQDlVthw37LBpvImsa0YIMiwpUABp
 AWrA==
X-Gm-Message-State: APjAAAU5uvs5rHjPgG6aqNSba9SEsO7WNp8t9SuKFA7fnDQJpqVIEgcM
 D0RW4hIx6CUf8MdttoH5JpFXwA==
X-Google-Smtp-Source: APXvYqyEestRF6uglU6YJiu6JXbF9oAhl/rZTPVmRgUPisawq5NNPnDvtUdTbEDY8OkypLNs9DCKxg==
X-Received: by 2002:a63:4c54:: with SMTP id m20mr37292632pgl.316.1557302980529; 
 Wed, 08 May 2019 01:09:40 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id j9sm33537133pfc.43.2019.05.08.01.09.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 01:09:39 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>
Subject: [PATCH 6/8] rockchip: rk3399: tpl: Add spl_board_init
Date: Wed,  8 May 2019 13:39:02 +0530
Message-Id: <20190508080904.1567-7-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190508080904.1567-1-jagan@amarulasolutions.com>
References: <20190508080904.1567-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_010941_223373_FDC67B23 
X-CRM114-Status: UNSURE (   7.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de
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
