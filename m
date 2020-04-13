Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5DB31A6C94
	for <lists+linux-rockchip@lfdr.de>; Mon, 13 Apr 2020 21:37:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=COvL9Xyt3oFmSs6MooLtW7aKujIvjm1LVPj+4Wk9iUU=; b=Jff
	/zCpgTijN+t8YQ35P9dQpWkoiv6QMw84Gx0LdTP5TlYnmrl6lftkw2ye7JRXUw7VZEALUztMNyhpd
	o9WKMaFzeHbGJzL5NbR7haxdR4u8QzULdvngYwYjtXKq6wolB85vQ+ju2F24N41DS8LMFCeuOhcX5
	0RZfodtWGQW7kLyTNRda0+C3JGQxkzWliwr9oRaYTjGGjvnl+NdJovA6vAMoCvDEam5+qgTHnKxUx
	/m/BQ71kNXIyNynElpqQkR86tpVgR1EQdiEFoDRYHWrrrPga9oJRdHXFYwqlkKGk0rRedb0h/D3EM
	yM2hf5EWjJKi6MoCGCqJLIXB6KIcGiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO4tM-0003EC-Tb; Mon, 13 Apr 2020 19:37:12 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO4tE-00037g-Fl; Mon, 13 Apr 2020 19:37:05 +0000
Received: by mail-wr1-x442.google.com with SMTP id h9so11411667wrc.8;
 Mon, 13 Apr 2020 12:37:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=IL8UM2G8ckEvz5Q1HLyYzF8mVCI5/VI6cQ0z6c472EQ=;
 b=XV7U7X1uveyRb9PqFljNV4aJTxa3bkX51B52APKWQ966g3JSC5gvNoJEzwMITXvu4w
 8WpFgNgK3PYryJPfcnHdA2tdc5pEiqnZwrjX/EFiy1skmg9LqAER1U7Fvc9ozcKXNnd+
 X74GyxoMg6w5PmxaQbeq0BkHivsnaSSItAbCEC7nMfw/h48FJ6xZJJzjndZqHyfpiVuf
 hjwj8hRiy6jk7Oo2QTQeDKtIKyWR/3OkYUQrdlTWqBDVYgU3w1UJJEKzLoqug9CsS2kV
 vD1DLdh1amsg09ityJ4RQFMUYoNN620mliVCKOf4GCjk1bCieTf0vo2d6hjZHvUC0Z4W
 udcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=IL8UM2G8ckEvz5Q1HLyYzF8mVCI5/VI6cQ0z6c472EQ=;
 b=SQIRue6zXHXIVYa108agoqaA4yN+VIJmqQz9E8zx8j4N/ETvjnrjqf3s6ytORiMqWp
 9v14d6j0RXBvH0IFVB0r4sW7XdFGa0680UT6K7Lqw5E1o3IDsHoN+wKqqoJRu4se19mU
 lBksdOmBfevzWm8V9u+qT+0+Ji1qtiCxY/vmxRmKBugZ0xY6bai4RKYKYc4wXxw8SfL+
 OGQ0vgMnApabS5pkmune4pwnPwBWH+J2UkVRLgb6X/J0nRE8iKN/zAJf9KPaakEEySwc
 iYVhgrrvJ45taMZXkmGJ6cj1WtzgDskdDYG90ky8+tQ6ZRLEIbYqTl4SJIKqgTptHkjr
 Of/g==
X-Gm-Message-State: AGi0PubnuELE4+OwCesibEfL+/pjcXOBu5BOiZOIYJPG9HB/aVFaAV0c
 IzhdMm1lU+KARSbAq6pNsbw=
X-Google-Smtp-Source: APiQypL9aZQMlpGKhdYWyFuCrzaNq51hpaS4p3qbtjobH7zo8hHacrhQXSiGqmJXkX1J+79WQN70IQ==
X-Received: by 2002:adf:f8d2:: with SMTP id f18mr20903930wrq.139.1586806621899; 
 Mon, 13 Apr 2020 12:37:01 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id b4sm11121659wrv.42.2020.04.13.12.37.00
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 Apr 2020 12:37:01 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH] arm64: dts: rockchip: remove bus-width from mmc nodes in
 rk3308.dtsi
Date: Mon, 13 Apr 2020 21:36:52 +0200
Message-Id: <20200413193652.1952-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_123704_548222_CD20D889 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The 'bus-width' property for mmc nodes is defined both in
'rk3308.dtsi' and 'rk3308-roc-cc.dts'.
In line with the other Rockchip SoCs define that in a user dts only,
so remove all entries from mmc nodes in 'rk3308.dtsi'.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index a9b98555d..130771ede 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -587,7 +587,6 @@
 		compatible = "rockchip,rk3308-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xff480000 0x0 0x4000>;
 		interrupts = <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH>;
-		bus-width = <4>;
 		clocks = <&cru HCLK_SDMMC>, <&cru SCLK_SDMMC>,
 			 <&cru SCLK_SDMMC_DRV>, <&cru SCLK_SDMMC_SAMPLE>;
 		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
@@ -602,7 +601,6 @@
 		compatible = "rockchip,rk3308-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xff490000 0x0 0x4000>;
 		interrupts = <GIC_SPI 77 IRQ_TYPE_LEVEL_HIGH>;
-		bus-width = <8>;
 		clocks = <&cru HCLK_EMMC>, <&cru SCLK_EMMC>,
 			 <&cru SCLK_EMMC_DRV>, <&cru SCLK_EMMC_SAMPLE>;
 		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
@@ -615,7 +613,6 @@
 		compatible = "rockchip,rk3308-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xff4a0000 0x0 0x4000>;
 		interrupts = <GIC_SPI 78 IRQ_TYPE_LEVEL_HIGH>;
-		bus-width = <4>;
 		clocks = <&cru HCLK_SDIO>, <&cru SCLK_SDIO>,
 			 <&cru SCLK_SDIO_DRV>, <&cru SCLK_SDIO_SAMPLE>;
 		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
