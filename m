Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 329581F1F09
	for <lists+linux-rockchip@lfdr.de>; Mon,  8 Jun 2020 20:32:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aWoONp/Z95lbpX2nT+zbOw/yllCcwwvHwj0EATdWKXg=; b=aHZVVY7cvWD+93
	S6BTlyXXP7Ea1QB7sStSzUE1GHqw4ZUuiBA2bUvJZrDH9CbDNM17QazpvSVoF0Lhl2+NQ3rkJQrxm
	OD8Yp8hTYvLbAK5pn7XHmj43NIlNWLqxy3dFHbpLzii4z8jvd2oU6p2Uqw7JFHtAFbvEpsBAISiNw
	/lhwbCUZ18axTefuZJPxn6Ee1nNDDKRBp53qY0H0iz9VmcsxCqx0ivq+f3g7Kj4OlpkWUBps7+FRq
	yNGFxp6y5KyDLOK2oASmQDb/swjfhSy2UzQsErSEDq3Gx8Fmrps9EFARgWxzbwHU5BOxINMz1IX+K
	FSEtxpJBdJAbHOlWtR2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiMZ1-00039G-N7; Mon, 08 Jun 2020 18:32:03 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiMYy-000385-OS
 for linux-rockchip@lists.infradead.org; Mon, 08 Jun 2020 18:32:02 +0000
Received: by mail-pj1-x1041.google.com with SMTP id ne5so189017pjb.5
 for <linux-rockchip@lists.infradead.org>; Mon, 08 Jun 2020 11:32:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+OOH0MJYGocj8ptIYBFShfjnt/CJ6WeKYHtBzKGq9J0=;
 b=KXrbf0GJxR39+3k6fAIO5E62G0bhoBULcRt6O+kEb/zL8ISqKbg+8tCA16LPULiN46
 F6f5HJB3sJZojD/alYCToc9MLc/Owr/+DLeqhw3he8bt92gAHS7BZppL+QOovdodIjxU
 zZR5b7msWV9Z77IO+Izw6EPtAcAr3ITMbN3Yo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+OOH0MJYGocj8ptIYBFShfjnt/CJ6WeKYHtBzKGq9J0=;
 b=O1fneiJ2jUOibjsbyRdz3JR4eYOCl6Z7W89vXj+D2NXxcRf48M0bJbv/4fGV+gGXHg
 I4xExkHVMPMg8T06IVbzseFeDwKCC8EmIaH3JLl0VnNDtkxukZ9l/4B4XXVJpNliJ7jP
 IHyOZxUkHBUPeSuWGaVnmoKQlSB4KK533qLvG0r9Eudg/FaFpCmdnP0G4M7Cmjo6bSsv
 SIoEsEADjk1EaB1BSfqag27Lp8Pok0nhTQg42UC8syvFEWzNRVuPPqwuXfYQE2ZuX4Yu
 MX9TgaQZGaLwph6+JeyVTzimGD/lIOOSfUjfvgPUuQIFIkV6l1E6GvblRmUaY6RKapW/
 04xg==
X-Gm-Message-State: AOAM530+9HeaeEjEYE/UpQ1v9/Q3mt3299Sj+VnRx6488O7GY6wMOX3Y
 p+fup9heD4luv6G/qvmF5N0f1A==
X-Google-Smtp-Source: ABdhPJw547zfZGYd6D4c8qE+50OP2OjdtddrG2LznRFGOksNBDfpkRhpeQROYt5dvPNG8MISrTTXyw==
X-Received: by 2002:a17:902:9047:: with SMTP id w7mr86571plz.275.1591641119986; 
 Mon, 08 Jun 2020 11:31:59 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:9043:af95:b7b4:3ade])
 by smtp.gmail.com with ESMTPSA id k29sm6680961pgf.77.2020.06.08.11.31.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Jun 2020 11:31:59 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>
Subject: [PATCH v3 1/5] rk3399: spl: Add rk_spl_board_init as __weak
Date: Mon,  8 Jun 2020 14:31:40 -0400
Message-Id: <20200608183144.26809-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200608183144.26809-1-jagan@amarulasolutions.com>
References: <20200608183144.26809-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_113200_793268_93FF9DAD 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Current spl_board_init is mostly specific to puma-rk3399
target and in other words it cannot be required or useful
for other rk3399 boards.

Some boards require their custom initialization to be part
of spl_board_init like roc-rk3399-pc require leds setup,
environments.

So, this patch handles all these possible scenarios.
Add rk_spl_board_init as __weak so that boards that require
their own custom initialization can be defined on their
board file.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Tested-by: Suniel Mahesh <sunil@amarulasolutions.com>
---
Changes for v3:
- new patch

 arch/arm/mach-rockchip/rk3399/rk3399.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-rockchip/rk3399/rk3399.c b/arch/arm/mach-rockchip/rk3399/rk3399.c
index 4fda93b152..681f80f339 100644
--- a/arch/arm/mach-rockchip/rk3399/rk3399.c
+++ b/arch/arm/mach-rockchip/rk3399/rk3399.c
@@ -241,7 +241,7 @@ static void rk3399_force_power_on_reset(void)
 }
 #endif
 
-void spl_board_init(void)
+__weak void rk_spl_board_init(void)
 {
 #if defined(SPL_GPIO_SUPPORT)
 	struct rockchip_cru *cru = rockchip_get_cru();
@@ -274,4 +274,11 @@ void spl_board_init(void)
 		debug("%s: Cannot enable boot on regulator\n", __func__);
 #endif
 }
+
+void spl_board_init(void)
+{
+	/* board specific spl init */
+	rk_spl_board_init();
+}
+
 #endif
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
