Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B804D9D7
	for <lists+linux-rockchip@lfdr.de>; Thu, 20 Jun 2019 20:55:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LaGLA56FLx7hfTrFySjvkFpyEQYe8yL/01rcx/7xmzs=; b=pHia8hYzDpGVB1
	NJUV2b9uAHJ4hyykGQvK+4eMgBA34BaibmdnKJ+7DUF1bHEYbtmXdY6xOANOtwSdBQ9M76ipGnuJM
	DnNbz9K/TDi07Ov1UR7psxNruAyV2uKcm9s9r0gcI+F9ApBp/v+S5xtA6f6TXC+GCPhnQwPognzxu
	IxidB08Ch3IoSdrgB6+MMmK7RzJn6iqR/wJxJiVELyEr9dieIgxDQNx1oxj+oQ5xi5ckFl3vmXXdj
	/UiwNWxFxtOmaJxQYViNyvSAm2gTrcaETgpyHs0Y+F7+Y/629XuR2gL7KNVUqnAIhFNgC9vwJaKBo
	YI5eos30WA86CTufi6nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he2Dh-0002yC-Vk; Thu, 20 Jun 2019 18:55:37 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he2De-0002ug-5x
 for linux-rockchip@lists.infradead.org; Thu, 20 Jun 2019 18:55:35 +0000
Received: by mail-pl1-x642.google.com with SMTP id cl9so1735682plb.10
 for <linux-rockchip@lists.infradead.org>; Thu, 20 Jun 2019 11:55:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ejKhZV0ZePK8koi6sjYi9JqAEP6CgbDzTjWopYnMhJU=;
 b=o5EyLc1xl8bVH99jHLZ0p9F10DbjZZbC+As0NAnUP8LYJ3OnXPEzJ2QLOPCL5TRaK9
 ggujMG4C7wSEhKa7k5UaJJdAYpWfrJDdMxX49Zcg9t7zLYAiClrgcbvfZbfGZdjkLA0T
 p+2o0tZyPb4BhM6JG8FxSkrKqOqT4kLtnWVvw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ejKhZV0ZePK8koi6sjYi9JqAEP6CgbDzTjWopYnMhJU=;
 b=uZ/Vy9lc8GNx7K9bqE0TJ9krGnkkS4cgd3QyIm+46ulcbaUGfe5fEgjbBZYAdmqKpe
 RqjrX9yPU3GwufAoituBni4483/7RscdQ4ff4NihdKshsNWL7CrPvBtuyNV6pe0r0/0B
 N6B/MEVQrRGpz5OWhSgBcqrgzTSeSmfF+IgaAHTVEqiio7DSGpPIEg/V8OEBu5WULdMM
 fWUsfFOlNG1GXHs4Pt33e+KOTjSHh5n9HYRCdTLMxLYOW/CtboXSdl5U9YvpKefAQa2O
 SSp8oQUy/bPOagbrwmK9uHjGlyIUm4NIV0YPZQHNC5g//APOI+5YY4zEjhFxZZSH71Ai
 20xw==
X-Gm-Message-State: APjAAAW+kbzJtyqiqAH23zNGrBnSb3EPBEnbNjqyBQIEffAZVG3wj5O8
 dNQIin2eJRfC6sHX27a7vVpYnw==
X-Google-Smtp-Source: APXvYqwqH1dlISIogR6VE2TS9sLz8RW2JahvbydDHQPus8facOlM7DiRYVaMCRoz/FVz/L7wMRW3Vw==
X-Received: by 2002:a17:902:2aab:: with SMTP id
 j40mr83356445plb.76.1561056932569; 
 Thu, 20 Jun 2019 11:55:32 -0700 (PDT)
Received: from localhost.localdomain ([183.82.225.128])
 by smtp.gmail.com with ESMTPSA id k3sm372183pju.27.2019.06.20.11.55.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Jun 2019 11:55:32 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, u-boot@lists.denx.de
Subject: [PATCH v2 4/8] rockchip: rk3399: Move u-boot, dm-pre-reloc of uart0,
 uart2
Date: Fri, 21 Jun 2019 00:25:02 +0530
Message-Id: <20190620185506.11449-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190620185506.11449-1-jagan@amarulasolutions.com>
References: <20190620185506.11449-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_115534_266204_220E0D4C 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [183.82.225.128 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

u-boot,dm-pre-reloc for uart0, uart2 indeed u-boot specific
properties. Move them into rk3399-u-boot.dtsi so the boards
which enabled these node will available during SPL.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/dts/rk3399-gru.dtsi    | 1 -
 arch/arm/dts/rk3399-puma.dtsi   | 1 -
 arch/arm/dts/rk3399-u-boot.dtsi | 8 ++++++++
 3 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/arch/arm/dts/rk3399-gru.dtsi b/arch/arm/dts/rk3399-gru.dtsi
index ca0fc391b2..0e2e047180 100644
--- a/arch/arm/dts/rk3399-gru.dtsi
+++ b/arch/arm/dts/rk3399-gru.dtsi
@@ -629,7 +629,6 @@ ap_i2c_audio: &i2c8 {
 
 &uart2 {
 	status = "okay";
-	u-boot,dm-pre-reloc;
 };
 
 &usb_host0_ohci {
diff --git a/arch/arm/dts/rk3399-puma.dtsi b/arch/arm/dts/rk3399-puma.dtsi
index 897e0bda85..74368da550 100644
--- a/arch/arm/dts/rk3399-puma.dtsi
+++ b/arch/arm/dts/rk3399-puma.dtsi
@@ -639,7 +639,6 @@
 };
 
 &uart0 {
-	u-boot,dm-pre-reloc;
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_xfer &uart0_cts>;
 	status = "okay";
diff --git a/arch/arm/dts/rk3399-u-boot.dtsi b/arch/arm/dts/rk3399-u-boot.dtsi
index 0786c1193a..fcfce9ae02 100644
--- a/arch/arm/dts/rk3399-u-boot.dtsi
+++ b/arch/arm/dts/rk3399-u-boot.dtsi
@@ -10,3 +10,11 @@
 &spi1 {
 	u-boot,dm-pre-reloc;
 };
+
+&uart0 {
+	u-boot,dm-pre-reloc;
+};
+
+&uart2 {
+	u-boot,dm-pre-reloc;
+};
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
