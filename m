Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F53128804
	for <lists+linux-rockchip@lfdr.de>; Sat, 21 Dec 2019 08:55:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n4Dh903jmSEv6dkB2ebEGOkgRh2g/wnxGgn/SgMK3p0=; b=Hg4+uKx/v7WGDn
	eXzylaL94emUaWEVLd0OwE/29u4FPojFvHSnbzP7pOKGd2dzR5r8Fc491Cfjtpg5SMSyKRF7rpIWL
	RaDs2IT3OVIPQCEWZicA8/NQMUQ26JMnE9J+KoXlg9rzyXBBRuOStdwpwy4OCTECi4SCpAoX/qPdT
	XI9ratMZe6XnGu2q/nscKhYZ8GzYKkEytwVgwlHEifoQiZwMD/lNS4DHRdAxssn2RzmN6mDwN11Gj
	QAA2uNqjK5bYyRIyi8O5+96UWzsVIcGyifMyun1d/EsxqPgRhYqEE/AhjzGmlHbfb1Ba1ibZsZPn1
	ndyT8LWQfCPa0zbrgshw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiZbm-0006vm-7o; Sat, 21 Dec 2019 07:55:30 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiZbb-0006n6-NC
 for linux-rockchip@lists.infradead.org; Sat, 21 Dec 2019 07:55:21 +0000
Received: by mail-pg1-x541.google.com with SMTP id k197so6131146pga.10
 for <linux-rockchip@lists.infradead.org>; Fri, 20 Dec 2019 23:55:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ACNZQw9K81BypFIzBx5+GIgdZYxnDvmql6PQXJKzzj4=;
 b=SQJ3pma08Zf9KsB0soXkLpKBkYk93GiEvfiG1lCFbddjVpzogUELPWnn4+oVvsfajZ
 yX0G28Nli1NQTTTm5ahSlmM9HijsqIciE5MRx969XZuXmdLy1xEhT3Zux+GKLaaMSgc4
 9BVFBDxS1PJWTEmGZMDNkAAmdPCYG4JF8FI1E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ACNZQw9K81BypFIzBx5+GIgdZYxnDvmql6PQXJKzzj4=;
 b=XSSWTrw303EpY/IzH2cpeMM1G6UJ1YimPaWhYovJRZyfZmYTY3Gnvz3DwYfL1m+rQ+
 IyeMvQJkOVavo+gqHUQ7noVmsKeBUrB61TQOI4hrZWgl7kq4AHJKmhCHuI7vHQ9ZBDzV
 YWTBKAc0xMTPqgZJPiGb4uVFhMyCwe5BsUr1US9GLbChPcdfk8L2mtpqRTMhDUY61rSj
 oa1xZUyOBtwDBXAYQ/lfCMXsVwVrBpY8DoDPtesO2TBLKaFob3l4vv6zq4n7Iq04PxMX
 w43XuolDnRUPCgWtl2zDNyHzIvUfA4sd+Kzm5RPzHeYaQ6rS8cj8u47MPMn1kXvJPIA/
 Rw+Q==
X-Gm-Message-State: APjAAAVusjaZoTYEGgewVxwrFf91otq25EF5+x+uIQuVbY3lDzr86cLP
 UMoLUefW7xhqaHuEW8Gl2oT5Nw==
X-Google-Smtp-Source: APXvYqwGVkqALlHmjQsaMY4UOtg2KXSA+UI4Rno7kMbLOkkoaOd7UMoeTGH6p/YhQURY1EuloKP2XQ==
X-Received: by 2002:a65:56c9:: with SMTP id w9mr18701357pgs.296.1576914919229; 
 Fri, 20 Dec 2019 23:55:19 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.177])
 by smtp.gmail.com with ESMTPSA id i9sm15551018pfk.24.2019.12.20.23.55.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Dec 2019 23:55:18 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>, Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 10/11] rockpro-rk3399: Enable SPI Flash
Date: Sat, 21 Dec 2019 13:24:39 +0530
Message-Id: <20191221075440.6944-11-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191221075440.6944-1-jagan@amarulasolutions.com>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_235519_777247_DB590D33 
X-CRM114-Status: UNSURE (   7.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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
 arch/arm/dts/rk3399-rockpro64-u-boot.dtsi | 4 ++++
 configs/rockpro64-rk3399_defconfig        | 2 ++
 2 files changed, 6 insertions(+)

diff --git a/arch/arm/dts/rk3399-rockpro64-u-boot.dtsi b/arch/arm/dts/rk3399-rockpro64-u-boot.dtsi
index 4648513ea9..deaa3efd39 100644
--- a/arch/arm/dts/rk3399-rockpro64-u-boot.dtsi
+++ b/arch/arm/dts/rk3399-rockpro64-u-boot.dtsi
@@ -6,6 +6,10 @@
 #include "rk3399-u-boot.dtsi"
 #include "rk3399-sdram-lpddr4-100.dtsi"
 / {
+	aliases {
+		spi0 = &spi1;
+	};
+
 	chosen {
 		u-boot,spl-boot-order = "same-as-spl", &sdmmc, &sdhci;
 	};
diff --git a/configs/rockpro64-rk3399_defconfig b/configs/rockpro64-rk3399_defconfig
index 49e27c91cb..6a50ec7dbc 100644
--- a/configs/rockpro64-rk3399_defconfig
+++ b/configs/rockpro64-rk3399_defconfig
@@ -46,6 +46,8 @@ CONFIG_RAM_RK3399_LPDDR4=y
 CONFIG_BAUDRATE=1500000
 CONFIG_DEBUG_UART_SHIFT=2
 CONFIG_SYSRESET=y
+CONFIG_SPI_FLASH_GIGADEVICE=y
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
