Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1ED7128803
	for <lists+linux-rockchip@lfdr.de>; Sat, 21 Dec 2019 08:55:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GtQ/r4AXISoH8hwzuR/jnu9pf4GI70Kb5IZNfK0xw/I=; b=kbUSR08ibutOJ1
	pbkmg2ydnXvOE5e3dYOMDjrhArAL53bSAUI8AkA8yL+bOjKHc9YSAVTrVEeZta2PLsl7I8zC2huCs
	SKT39O4u1mN0EiRiwHTSDFkdCwYtBp1+PGo5db4TxXUAv7CwYC2zaEoRVXwzkEoFf34lWebGA8AMt
	MXNBi3iqzDPiNu7jVY2gHz+29eioHZ6v4H8GKmWdTQ9BM9RFSksAH46kS1G5iPcCZreJ0wSDcqG4E
	uAHBqq/pq1g4LoM7uX9luVf0uFW+iyqIAu1LAUrVpnq3XrwvFN1h3lWGzHqYFdIBnw7eRl5S/lLtO
	PFWL7Wt2IwMZL5rZYtZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiZbj-0006tG-FQ; Sat, 21 Dec 2019 07:55:27 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiZbZ-0006kN-9P
 for linux-rockchip@lists.infradead.org; Sat, 21 Dec 2019 07:55:18 +0000
Received: by mail-pf1-x444.google.com with SMTP id l127so6513285pfl.1
 for <linux-rockchip@lists.infradead.org>; Fri, 20 Dec 2019 23:55:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=C8CZ20aKDd2zOhw5EtsYbeLPT+q6TypZtOf3+Yy7v1E=;
 b=h8LfcJbC6jeeXnY+5vGAPPOq+kXaawPJIzm7+mkFO6OGaLVXR37Iui1gkSt5ByQLAT
 Q9nkANaiIT2N6fE92UXULDGGnHYmCuDjli1faRsDqh1spINkMQUwRlltT9SGArLVUsKN
 WVSFye5l8FgeMRab4cGkZR6d6yOwhWfth4+sA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=C8CZ20aKDd2zOhw5EtsYbeLPT+q6TypZtOf3+Yy7v1E=;
 b=uEg3rZ++LeUH7BicrRBBglUY+6EkdTKnBVz3UP0j0JxBCXk5wNMWa1zECNzZOtiR+O
 3KJNYIuiA7YsDnBB5QRcSsGpRuzWx+uievIOoKd3BeXIvQs1Fjz5UDN5kNor6f8o8cai
 IN6mXO7pICrCa+SSSCC9J+YtqFrt7C9QRCBWt3mckPI7UCxgZnheLf2sZjMnkfe3s/9L
 wsefi4+VgmIe5bGrvEoTtoRkuz9ETVtKduxRO7Y/K0xuQZLQ5s61i8YveBdRJXzXAaUs
 U5Df9QTh9ZHq4lBb9bpk08IvcKOnIjkugSRoB/8Ji6f+lGHgCqsq1r/SUCkcgPsUfvkU
 /Z9A==
X-Gm-Message-State: APjAAAU9j7Smo97tz8kPyIOCcAuUjYeyDpZpiqX+Cy6GtF9mXYzQM4Nz
 Xu6Jdqmo9FRnOVJ17OtecAgoleOfDbw=
X-Google-Smtp-Source: APXvYqyuVXkdlEaTi0AAA4RfIZi1lgWOk4il7I79J+Dpj7a3Q8T7L08IBd7IHGpa7HqmRMsu9DSDuQ==
X-Received: by 2002:aa7:991e:: with SMTP id z30mr20358616pff.259.1576914916537; 
 Fri, 20 Dec 2019 23:55:16 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.177])
 by smtp.gmail.com with ESMTPSA id i9sm15551018pfk.24.2019.12.20.23.55.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Dec 2019 23:55:16 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>, Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 09/11] roc-pc-rk3399: Enable SPI Flash
Date: Sat, 21 Dec 2019 13:24:38 +0530
Message-Id: <20191221075440.6944-10-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191221075440.6944-1-jagan@amarulasolutions.com>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_235517_343655_18AA26B6 
X-CRM114-Status: UNSURE (   7.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: u-boot@lists.denx.de, linux-amarula <linux-amarula@amarulasolutions.com>,
 Jagan Teki <jagan@amarulasolutions.com>, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Enable winbond SPI flash for ROC-PC-RK3399 board.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/dts/rk3399-roc-pc-u-boot.dtsi | 4 ++++
 configs/roc-pc-rk3399_defconfig        | 2 ++
 2 files changed, 6 insertions(+)

diff --git a/arch/arm/dts/rk3399-roc-pc-u-boot.dtsi b/arch/arm/dts/rk3399-roc-pc-u-boot.dtsi
index 77d5cf5d3c..5746442981 100644
--- a/arch/arm/dts/rk3399-roc-pc-u-boot.dtsi
+++ b/arch/arm/dts/rk3399-roc-pc-u-boot.dtsi
@@ -7,6 +7,10 @@
 #include "rk3399-sdram-lpddr4-100.dtsi"
 
 / {
+	aliases {
+		spi0 = &spi1;
+	};
+
 	chosen {
 		u-boot,spl-boot-order = "same-as-spl", &sdhci, &sdmmc;
 	};
diff --git a/configs/roc-pc-rk3399_defconfig b/configs/roc-pc-rk3399_defconfig
index 305baa712c..f37a7bda00 100644
--- a/configs/roc-pc-rk3399_defconfig
+++ b/configs/roc-pc-rk3399_defconfig
@@ -42,6 +42,8 @@ CONFIG_RAM_RK3399_LPDDR4=y
 CONFIG_BAUDRATE=1500000
 CONFIG_DEBUG_UART_SHIFT=2
 CONFIG_SYSRESET=y
+CONFIG_SPI_FLASH_WINBOND=y
+CONFIG_ROCKCHIP_SPI=y
 CONFIG_USB=y
 CONFIG_USB_XHCI_HCD=y
 CONFIG_USB_XHCI_DWC3=y
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
