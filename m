Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E805B9D5B7
	for <lists+linux-rockchip@lfdr.de>; Mon, 26 Aug 2019 20:21:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CAcqk3z3Y0VN4FVMjm4/AlW4CSU7/4Jf0vw1k6WXvUY=; b=UUNeqstxbP+JPK
	ZJBmCtazLzaJqwfJWKevVjNEHDr77YtjQTexndARb46IQBRW1EKcV4kuf/tEnlKB+tlThsocmPhJ2
	1dowBI6a1NmsFi5igBnrejSo5qu8uRhOc08GZYCHOQbsXtrgtoH2CYoe3QtZrMgUJjHZs3Ct2oOK+
	94rKkT2mFXYoW7fKe0PwRltKImBo7CcAYy6qPMAKfcHWbrmxXaFatZvpPzuLiIYOhgFy1OFN5peos
	xdkKZtGhtMQUEFAGdtf9X28xFXV7uqWRcO2IgpHqXVh22WW7AyQii7CFMgS53H/zfBz7GTHBv67bP
	gpClGng6nKluHYamVr7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Jcl-0001lL-Mw; Mon, 26 Aug 2019 18:21:51 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2JcT-0001TJ-Rp
 for linux-rockchip@lists.infradead.org; Mon, 26 Aug 2019 18:21:35 +0000
Received: by mail-oi1-x243.google.com with SMTP id t24so12828466oij.13
 for <linux-rockchip@lists.infradead.org>; Mon, 26 Aug 2019 11:21:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PqCk+P53M9OIrwfNEuUlXsc3KULixKlD69TP8gb4FyY=;
 b=ZZ8umxsnoMD/WZRMaSehfPXSCy7voYfjCqizUUhjfhuWWFhOzRl2n4qYELFnMRnI8q
 x/0/fT3weQri61cyhO+6IdKhjwZC+KBVVJwHd/lUIa7Jh6bDT+rsGn3UOIoPFxHhWfvK
 b/9nXQzE8AjjKBfvouuYgacGPtSfKj94BH3nY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PqCk+P53M9OIrwfNEuUlXsc3KULixKlD69TP8gb4FyY=;
 b=A1k6+FHTd2nNuyxin3tF+yr2JsqkUxrdmeY1qGTKqjMU1/nK+Z6C6ci0xUaZ5ll5YT
 BjQjV6deVjjvt6lx+TuH5qrib9OBkMYFuj8hoKelCXiS7LUiZ8IlsRjU/QGIWN7BL9Cu
 TmsVfz43s+8sOT7mw9nEWdpwbtvQRBcfpecH5HIG8Lj5UYYKXqoCGiPHLw27MKg7onR8
 taEIQaLfpYcuiY1/mvOuH2pxtPQx6SlhyuQPcx4iTMI+CZOoNkmQng77W5OKmp80nUcA
 KbEV8Q4byGO5pwz09JuWHUDbyU/HaM7OfaYsRUGTve9pT8g4bfbZPIQTRMZoda4hG71C
 rbBw==
X-Gm-Message-State: APjAAAUpRTB31CPTUb1z+UNDP3NDtUOn18olvmKP+CFBcsB2lk2b4HTQ
 JfzkJqPIrU0cy2QAiSUvFiKAyQ==
X-Google-Smtp-Source: APXvYqy1jQ4S7tDS8uXbT+fLKY0NbX/ch+TF/ibGb9tERf9y1+QjRTLhQ06Gvix+p8WegwmtpWSTZA==
X-Received: by 2002:aca:b20b:: with SMTP id b11mr13536237oif.16.1566843693149; 
 Mon, 26 Aug 2019 11:21:33 -0700 (PDT)
Received: from jagan-XPS-13-9350.attlocal.net
 ([2600:1700:7430:38e0:d5b0:4823:33c8:5e46])
 by smtp.gmail.com with ESMTPSA id c11sm4401461otr.54.2019.08.26.11.21.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 11:21:32 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v2 11/16] wdt: Kconfig: Add TPL_WDT entry
Date: Mon, 26 Aug 2019 23:51:06 +0530
Message-Id: <20190826182111.30999-12-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190826182111.30999-1-jagan@amarulasolutions.com>
References: <20190826182111.30999-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_112134_078474_50A6902F 
X-CRM114-Status: UNSURE (   7.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de,
 linux-amarula@amarulasolutions.com, Akash Gajjar <akash@openedev.com>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add missing Kconfig entry for TPL_WDT.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/watchdog/Kconfig | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index 8674633b90..7c7f0c67a0 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -182,4 +182,11 @@ config SPL_WDT
 	  Enable driver model for watchdog timer in SPL.
 	  This is similar to CONFIG_WDT in U-Boot.
 
+config TPL_WDT
+	bool "Enable driver model for watchdog timer drivers in TPL"
+	depends on TPL_DM
+	help
+	  Enable driver model for watchdog timer in TPL.
+	  This is similar to CONFIG_WDT in U-Boot.
+
 endmenu
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
