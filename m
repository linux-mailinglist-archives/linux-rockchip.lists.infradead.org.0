Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6941647B58
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:39:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MxCl44psIpcI1NvQTMkugztrQ6x58YGuf95uGtdg95g=; b=bmOoWAbypZY3Qb
	86lR0w9MF5pAtYEKUVZzDX5bnpq3CL4ozhFOw6ZLiwviTSq2zB3vE8qzKBRHLEwj1PSD8I1zMWTaj
	QjExSM3GfXzoeRgWKseX5UIjQAQedsaPk3VTA1q3onjh2spL89R0jgYaDZrKVkWTBLFSAm7NW/y3b
	yyzTFLKJb+E0XpDBqiLOdTujfgYYFVvUU1ETkdIyrzKxtJDrSiIFYRfsV4/9ccadPVeuOAYtjo0AP
	le9a7ODCfwa9mroRODwLZT8OLB5t7OHma9KErkmc7AAXM+bplC7gYhNlhSf0mHK3nvh/rR6+mCBb7
	YD77fR89o22UL5i6D6FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmEw-00082r-RS; Mon, 17 Jun 2019 07:39:42 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmEs-00080O-Kn
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:39:39 +0000
Received: by mail-pf1-x443.google.com with SMTP id c85so5203763pfc.1
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:39:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LGQ9bzA9T07Z4PCboB8dYXm0DbVJVBbSF3/XKR5AacI=;
 b=SPaTwfblwZczfL+m31rxyDZFBhvmqsMZb9q98k/8Y3wcJpC/extHXiDiE6QqzqG8Hm
 bfLUhMk3sdqlDcV3NWZ7tgizeTN7qqtN4L0Eu+XZA/I3Xcd+TLDI5RGwdrekicQxLA2P
 6N3F7A7fgim8CiYuUHc2SvnLsJLLdr8CfdJ9I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LGQ9bzA9T07Z4PCboB8dYXm0DbVJVBbSF3/XKR5AacI=;
 b=B4Qgbeo2Cot9ZmGt0f3aAxNmNW4T0RiK3/+Vvdufn2ExluxcKWTXZI4cQtdu1jQRL5
 iQQu0GHcAb4ZfePNtZ1sAIqfLkOaPcGMEsukdnJnPAg3HilJqYwXmNAfsRPRI850Dgsv
 Ld2/7EZFJNKptbhKl1XATYeIEVyzLPvmCytlJ8vh/gbQFSlFVcY5zwbyOwZgSzfW6bcK
 sLDaJsX5vEw0ZXVol6VPNpMf1glM25P3HAzldHrMxGRzYLQ/y36p0rcnehMaALdBqOem
 lHVv/H3hUc8V6R76NKS7hQc/m6umnxFgqlYAY2dj3W5Vaaa9sOKR214IbXWj/gJ+FHf4
 eSVQ==
X-Gm-Message-State: APjAAAX+55Vaixp/1Jo2qCiJDI7ix7cyK5tqdlI+nT1ZAemL3cJLJifw
 jfNkR5fhmaGcGY8BfR0GRrSGDA==
X-Google-Smtp-Source: APXvYqyt15knDeN3aynpyAVd1jBTEC+ZuiJrfnZ930TMj5IW8SwXzf58QRKW+/gwD1POe1fAXFsDwQ==
X-Received: by 2002:aa7:8a95:: with SMTP id
 a21mr113277741pfc.215.1560757178145; 
 Mon, 17 Jun 2019 00:39:38 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.39.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:39:37 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 59/99] ram: rockchip: Kconfig: Add RK3399 LPDDR4 entry
Date: Mon, 17 Jun 2019 13:02:12 +0530
Message-Id: <20190617073252.27810-60-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003938_687366_A161B08E 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

Supporting LPDDR4 code support in RK3399 would increases
the size of SPL/TPL.

So add kconfig entry for RK3399 LPDDR4 code so-that
the boards have LPDDR4 can enable them via defconfig.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/ram/rockchip/Kconfig | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/ram/rockchip/Kconfig b/drivers/ram/rockchip/Kconfig
index 151ffb684d..4f274e01b3 100644
--- a/drivers/ram/rockchip/Kconfig
+++ b/drivers/ram/rockchip/Kconfig
@@ -23,4 +23,11 @@ config RAM_RK3399
 	  This enables ram drivers support for the platforms based on
 	  Rockchip RK3399 SoC.
 
+config RAM_RK3399_LPDDR4
+	bool "LPDDR4 support for Rockchip RK3399"
+	depends on RAM_RK3399
+	help
+	  This enables LPDDR4 sdram code support for the platforms based
+	  on Rockchip RK3399 SoC.
+
 endif # RAM_ROCKCHIP
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
