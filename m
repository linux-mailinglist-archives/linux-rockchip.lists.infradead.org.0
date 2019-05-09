Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9063418437
	for <lists+linux-rockchip@lfdr.de>; Thu,  9 May 2019 05:49:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u334J6YAwnv3fuhr07XRirqQsblgTnZ7J0byc2Ivpbw=; b=co0G6++3pOUjZ/
	89pZ9b7JMpxtOe/mw1mOsEpUI+InWG6+WDQg689LkZ9e8qreVKYs1n2rZxNykgOLXR/sLviAfM8xe
	PKsVvL88z8dNp5Sd9/zgAVJliswhb7+UKVYfRJh2TMTybFSObBxOyE4DmFfd6KQXZbdPQo0uMRjlh
	5gr/GzG5OLhwLNOHkhYuMC5zxldS9rAWTPtWACcxumRobvWIcjTlhk8zRXp0gUtyJ5ocS7DACFFMv
	fPYwLTI3uKIC0jBNMvIQKkLBaZOjlfOlsMc+ngVDRwKJVM70TAWpCgWZAC0EGX0iYmAAImDWRn/QJ
	DYtn5pjXmoGy0HjKi8lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOa45-0003yp-9i; Thu, 09 May 2019 03:49:49 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOa41-0003yP-9D
 for linux-rockchip@lists.infradead.org; Thu, 09 May 2019 03:49:47 +0000
Received: by mail-pg1-x544.google.com with SMTP id h17so483609pgv.0
 for <linux-rockchip@lists.infradead.org>; Wed, 08 May 2019 20:49:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vCS43YNsukNXHBS7I5C51JquGcaCwnhipWsJ6aqgr8c=;
 b=icR0nWb0eRGgOITwu1FewVj/DkaZOVjPgvyfmXo3hQ6sWXSZKasX6eNLOmLrB6tvWq
 8XqjwiWhoChWECXoQteL8TYuZvcMiJcJoEE/m6NlVWBIH7f5loBHvbdVKktWSgQr5baH
 XEsj0rfw3bpyO/wr/OjyrsY3mRa74KN+ZTbwo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vCS43YNsukNXHBS7I5C51JquGcaCwnhipWsJ6aqgr8c=;
 b=LvyTgJT21L+sKKcdebji4/e2zmdzG7pi0b7UzdM1bD5uYZjGejE2lgyiS2qukwS9AK
 Zgk78tSsrSKulZcYvD5C/VULANer6Z4f8LAmT6gubAtZkuuF9uVI2CeaZKOY5dkrIgLN
 HGOrnvZRb+nx5sw6smqMhCANuVQXZqe4+RqKsc4aGi8Mr07B4F9X8bwU6g41nSUbyIQz
 vYP/CXYemWH/q9ir57q/AZCEERiFzbC8rmHj9R7UxbwY0uIlES9nQj2hAX8eGsAWACiO
 OtiJ9xbLcf/dfMKH/izJIhQEBPxdF1piRiOdmw8J3zj2h8Wc0uc0qkWqQ+kYm0X7mRG8
 41pQ==
X-Gm-Message-State: APjAAAV3xhkLimze6g3r12mqcZK/COhkU5ufQNPO1Fji5FpPjIzhj6nt
 6H94X3JvmT9cSQZyLiPeFFLBNA==
X-Google-Smtp-Source: APXvYqwnG0K1Wj9Ldqke4yIJOCJSsLclHkghyIlJnEI/0UT6JBZv1Lu3c6jtRT3/waf8C4PWE5djvA==
X-Received: by 2002:a65:5c8c:: with SMTP id a12mr2638601pgt.452.1557373783980; 
 Wed, 08 May 2019 20:49:43 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id s9sm874524pfe.183.2019.05.08.20.49.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 20:49:43 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>
Subject: [PATCH v8] rockchip: dts: rk3399: nanopi4: Use CD pin as RK_FUNC_1
Date: Thu,  9 May 2019 09:19:21 +0530
Message-Id: <20190509034921.2865-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_204945_961486_3A0FB5D6 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
Cc: linux-rockchip@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 u-boot@lists.denx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Attaching GPIO functionality to SDMMC0_DET pin (which
does in Linux base dts) make dwmmc driver "fail to detect
the card".

  Card did not respond to voltage select!

It may be because the existing driver can't support gpio
card detection. So, change the pinctrl functionality from
RK_FUNC_GPIO to RK_FUNC_1 like other rk3399 dts does via
sdmmc_cd pin.

Add this change in -u-boot.dtsi so once we have a proper
fix or more details we may drop it this in future.

Cc: Robin Murphy <robin.murphy@arm.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v8:
- drop pinctrl-names
- update proper commit

 arch/arm/dts/rk3399-nanopi4-u-boot.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)
 create mode 100644 arch/arm/dts/rk3399-nanopi4-u-boot.dtsi

diff --git a/arch/arm/dts/rk3399-nanopi4-u-boot.dtsi b/arch/arm/dts/rk3399-nanopi4-u-boot.dtsi
new file mode 100644
index 0000000000..bb8bdf08c5
--- /dev/null
+++ b/arch/arm/dts/rk3399-nanopi4-u-boot.dtsi
@@ -0,0 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
+ */
+
+&sdmmc {
+	pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd &sdmmc_cd>;
+};
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
