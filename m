Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9791217072
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 May 2019 07:42:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xNcs2qnTAc4S7aoYp+CSjoSzblTg5INDEHg57zEzikE=; b=jgUFjkFTPwDIRr
	/KWgasZ0cdGDFWfGOdOtWrQx7trM1cg1mN314Ar9FptiEWmVqZZQXniY2LylGrwtlBUjMLz/tMuWC
	itIVJm9pATQvNQqtX9YMA8fMY6sP+tQPe79rWWKK7iTSO9F/L/jaFPzP8dzv6CngvUwQddeCd6KIV
	VgDgZEzNFeUzqbSJbWPYpAkF4NexUvFHizQ7qEUcqg2vJW9AYWxBZFER2zvAmsSUixh/5XykLuPYG
	GFe/SwpuUh7TesAEvil8zLSyKYqK9GWoRBgYd/bYYI35u85ukhTChyA9LetW/UfUFTZ6IPv9BQ8tl
	WIuvWTKNeaxluwiOFLYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOFLW-0003ls-QT; Wed, 08 May 2019 05:42:26 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOFLT-0003jr-QO
 for linux-rockchip@lists.infradead.org; Wed, 08 May 2019 05:42:25 +0000
Received: by mail-pg1-x542.google.com with SMTP id c13so9531956pgt.1
 for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2019 22:42:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=26N0yzTHMG/k0HJ9Nlf8W1/ymmpLZVwsJbgqbhLryoI=;
 b=ktaX6fILkyig4XaRrIvBUpCyc8MX7PLMeubKsokXeBbSQ2pr3xVAlKfUcLWPt3H6LU
 s7qRncZ0JRhiuWjIXbZ7RSDca7AOJ8eWtqYn7JeH0gtrlTcgCSbbiQwucaDQVf+50+bP
 PaBjVYwSQEMU/Bbj4AnnK4OFDXJ8rrUt/N+VY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=26N0yzTHMG/k0HJ9Nlf8W1/ymmpLZVwsJbgqbhLryoI=;
 b=SUlc+uqT7y37J7kEspHDnhnunqtzJh0Pe3kRd9U/05qZk10bTJKRbNQRx7lIszfyJO
 2UwJENXTQw8NLSbCijy4dOJkaO5mcLP/4dPeFM+bC7SjTNCsKpRnim8v01a2ib4bSNFa
 vVaLxr1xUWZsOlUMMFS3TOR25N4oWeIrm/k+zefkgN3Af4EzO7qPJIoYfM1TfmkJrbdt
 6RO1HeYagUtbG4bwD5T2yMKKNdvelDEqTqym3B6il9/tzv0i7EyAYGblLLwuO9bhvdSZ
 ahPdTUYOCXxShsBEcvuu4pH7w59goOXnK3YOVow5uaEOj490PZKRFkQHT+sT4yd4p0T+
 zWIA==
X-Gm-Message-State: APjAAAUyjqimvCJQOfEah9ZNQwcEQaoozqtjiKUAcwXFLc0+7Bqv94AO
 5QSBO8lD+ZBgDzM4N81D9lNDgOQ24DI=
X-Google-Smtp-Source: APXvYqxU5gFk0OuBx1O2GoHmb7m3W6gxZy9qYd0pN6UvZdvReVYK/2aVsdQYzn646hRzAsLgKPzPBw==
X-Received: by 2002:aa7:8b83:: with SMTP id r3mr46054107pfd.248.1557294143323; 
 Tue, 07 May 2019 22:42:23 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id p67sm33864394pfi.123.2019.05.07.22.42.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 22:42:22 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>
Subject: [RESEND PATCH v7 05/11] rockchip: dts: rk3399: nanopi4: Use CD pin as
 RK_FUNC_1
Date: Wed,  8 May 2019 11:11:45 +0530
Message-Id: <20190508054151.21762-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190508054151.21762-1-jagan@amarulasolutions.com>
References: <20190508054151.21762-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_224223_901417_ED11CFF9 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

sdmmc cd pin is configured as RK_FUNC_GPIO which is wrong and
indeed failed to detect the sdcard on the board with below error

  Card did not respond to voltage select!

So, fix it by replacing RK_FUNC_GPIO with RK_FUNC_1 which
is already defined in rk3399.dts so make use of same like
other boards.

Add these changes in -u-boot.dtsi to make Linux sync easy for future
changes.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
---
 arch/arm/dts/rk3399-nanopi4-u-boot.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)
 create mode 100644 arch/arm/dts/rk3399-nanopi4-u-boot.dtsi

diff --git a/arch/arm/dts/rk3399-nanopi4-u-boot.dtsi b/arch/arm/dts/rk3399-nanopi4-u-boot.dtsi
new file mode 100644
index 0000000000..20db99c0b8
--- /dev/null
+++ b/arch/arm/dts/rk3399-nanopi4-u-boot.dtsi
@@ -0,0 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
+ */
+
+&sdmmc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd &sdmmc_cd>;
+};
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
