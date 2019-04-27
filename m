Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7B32B33B
	for <lists+linux-rockchip@lfdr.de>; Sat, 27 Apr 2019 13:42:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DhGLvetnD1D4IdLCqdYnqp6YOubfJmTxX/GgDv0LPuw=; b=NuD0DNpx9pmjsZ
	mhMgXhPQl8g5kwhdzX3jO4jIJMZymFybG3lrxXbGHpjpnqkvpztWVVOWKnut9wXH3v5bW8/7PndAr
	reBELoERCISFEDefxkNnLRHxdLhE8bEZCX7QqoJO56yavEsq0qfUERadPQkxHW9v9ksEhAHg67Mol
	Xu0nZGuehZ80/lsP3UCONyvAe2la3rNtoFzhbcX4OeoZsBcIcNMPZmaSRsT5zUTy7rwaK5RJYydZ/
	M93rmMdhhT3jiZSJFvxAaPDZDfJQm29QMvzDV3p4CoUxlCTFCyhb0UhcAucjkXqmEnjDz+aSTt60K
	Vt3txQHHPebS/EZKehrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKLj7-0007QK-64; Sat, 27 Apr 2019 11:42:41 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKLj3-0007OU-RS
 for linux-rockchip@lists.infradead.org; Sat, 27 Apr 2019 11:42:39 +0000
Received: by mail-pl1-x643.google.com with SMTP id w24so2816566plp.2
 for <linux-rockchip@lists.infradead.org>; Sat, 27 Apr 2019 04:42:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IpZFneVy9JVt/DR/0/w8JKHfiyseQp/ECVAIuWSjprc=;
 b=P7iFw6QxSLhZm9jgpWUOKRq4lbEqW7Ge+2xGOW3kgrKAwJHYmiZkLLA1a0xwciTVjB
 QDIaRZnH48MZfL0PsJNMgaxBBw5aEqaE2k1V0x64VIDrxleobecO1J4zpgr44nFDzK57
 DNt72PQGcvxdpJy5MUDGkLWmuHm59LNUqXCWM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IpZFneVy9JVt/DR/0/w8JKHfiyseQp/ECVAIuWSjprc=;
 b=KZlnf+qDDruhZsbxcJd92O8onKaRUOe0WsUmb02Wep/Iaky4JXMMJ2eajsB2V9tCvr
 kMh4sNehX53drBSAohDXcvghBky4EAoFUpFSAvtXTzA8cSDti2RwQzYabLPauDYbSsnP
 kJzEs+yKxu2YSOaghUZ9MQWcA3hPZ1LXqR6x9kyjBNdWvbDSSenTdS35nmvBKmP2KpIY
 Iqq37hOav3tJGZ5ITYmRp6MLVLXf6GwVNoc0lgiW5xLcSvBlIGWnNMHxRZoTTA8RzXc+
 Xg+7MKLxhYK+j30/tkJDu8VduiN69cFa4khme1nQ1VpEMlNwG/mMbHf5KJ96vdmhOsXJ
 M/AQ==
X-Gm-Message-State: APjAAAV4rS3+U6dfzDFJAD2vjXdJuX4W0Qz1OMLjD7h3SB/OQPAHZgHA
 atZx70WNB4bgrrkgtr7DLljRDg==
X-Google-Smtp-Source: APXvYqyNVOaO26g74eTbHURxCFOa42XUldQnEY3hqlRb5p38/iPsJO+c3RmJ3W46uzwF4uFYSTVm3A==
X-Received: by 2002:a17:902:820a:: with SMTP id
 x10mr12306899pln.316.1556365357360; 
 Sat, 27 Apr 2019 04:42:37 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id k79sm68958973pfj.28.2019.04.27.04.42.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 27 Apr 2019 04:42:36 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>,
 Tom Rini <trini@konsulko.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v6 2/3] arm64: rockchip: dts: Add initial rk3399-u-boot.dtsi
 file
Date: Sat, 27 Apr 2019 17:12:01 +0530
Message-Id: <20190427114202.7358-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190427114202.7358-1-jagan@amarulasolutions.com>
References: <20190427114202.7358-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_044237_885922_82068BA4 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

U-Boot always managed to use Linux devicetree files with respective
bindings, but on the other hand u-boot also has it's own u-boot
specific nodes or properties example u-boot,dm-pre-reloc which
is required for SPL_OF_CONTROL to allocate particular node.

It is always better to maintain these u-boot specific nodes and
properties into seperate dts files. This would help to sync the
devicetrees directly from Linux.

This patch is adding initial rk3399-u-boot.dtsi and move sdmmc,
spi1 u-boot,dm-pre-reloc properties into it so-that the subsequent
rk3399 boards can include the same on their board dtsi files.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/dts/rk3399-u-boot.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)
 create mode 100644 arch/arm/dts/rk3399-u-boot.dtsi

diff --git a/arch/arm/dts/rk3399-u-boot.dtsi b/arch/arm/dts/rk3399-u-boot.dtsi
new file mode 100644
index 0000000000..0786c1193a
--- /dev/null
+++ b/arch/arm/dts/rk3399-u-boot.dtsi
@@ -0,0 +1,12 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
+ */
+
+&sdmmc {
+	u-boot,dm-pre-reloc;
+};
+
+&spi1 {
+	u-boot,dm-pre-reloc;
+};
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
