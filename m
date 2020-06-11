Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E88FB1F5FD4
	for <lists+linux-rockchip@lfdr.de>; Thu, 11 Jun 2020 04:07:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=m7S7unmBqiIG4MPGsUxvooAJyt10DbqCH41rvoMfg0g=; b=JSvhIwfb5CHeyP
	88hX/A+JHdzDxIiSiPR+jrgit+oE8hzxrjKupyeQy0p3NUKvu/4lsoiYVHpdHw2tzKqRStF2QnQZq
	8BZA+2L0kfpCNAAvu7SbRwTxtFOF0bcTUfWyNcFKKGEYAPOxyAHd7eBNU++Zrl8Vh3qsvH6jdkNmG
	irkUW3E6zfuMIk6GX7SoxfND5jtemubkkQJmLhw19laY0Bb5qbeU4M3EX49B75nG3a9otr/ibQQzw
	qxFtyxsnS8kYceaU+SYKOGFvpJTox5Rlkjpesrvv0/p0zyuzZM8IYGkeiJrAJA3T7hm3KAbRunXLM
	0MI2+gkpiBtRKk6KDVpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjCcO-0001y4-Sy; Thu, 11 Jun 2020 02:07:00 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjCcD-0001mN-CF
 for linux-rockchip@lists.infradead.org; Thu, 11 Jun 2020 02:06:52 +0000
Received: by mail-pf1-x442.google.com with SMTP id z63so1039704pfb.1
 for <linux-rockchip@lists.infradead.org>; Wed, 10 Jun 2020 19:06:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4Y4ynudYVEOF2bwcSaKUAcBc0jJC1pTFViDYeCyBDLg=;
 b=jvxxdLqpo+0mRShkaVWeuKTjdbq2SY5zHyPUmlP9mEguLJSjmHKBHGLHY/cTzOCXlH
 eB3qRpNpvIRDJNO6JSxhOVYAWeI1bubmvS8iGittDjXx1zJkHd9kKOYlFpBODIyQu0vG
 bsc7fBBrlfcKF/fevWNzdttAJeifoXfQhjkps=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4Y4ynudYVEOF2bwcSaKUAcBc0jJC1pTFViDYeCyBDLg=;
 b=W2E2ohk7kTUYIYv9aKT4dE6elvE4Wnc/L+eLrwh58vEr0fHCt8q5rFpjW3UFHrKcZA
 rHVIEZW7QBowDkHCxOELMlDFcJiyy+evw3FllaBzH6yRTzH6BR3rCBDSd6VwVngBx5XM
 oDGD8AYkhhVSsDkax9dbf/nWRnfPjM4zchQHVssCdJrx8v+ZzzSRadvEX9OZ6RKCIYwV
 PMdAi0CQcJikEaqBF7gewNWojwOs2/bH0S0Uqm1uWk40LFkfIun76eDv7+2AJ/5IT4H+
 D/SqzSAyTi5FMs980Ks/F768iLidV92a2MR+14mMXoTZYX2nbdfT4HwxnZrGlxlFbe/P
 AusQ==
X-Gm-Message-State: AOAM530Hj0kYW9cHJCL4mzbC29NjU2v1UW5cTMv/Z6L4qN1UOV6nzkhS
 OhGGZPOotPXxzta9V6ZgY9Gqew==
X-Google-Smtp-Source: ABdhPJxLvo0RCihK079Elloiqp25pBxh1dZDJDeBEoYZ+9fEvWiGN7wubOfZ1xMsnxVkw0tD3DWWMQ==
X-Received: by 2002:a62:1c46:: with SMTP id c67mr5101876pfc.170.1591841207862; 
 Wed, 10 Jun 2020 19:06:47 -0700 (PDT)
Received: from apsdesk.mtv.corp.google.com
 ([2620:15c:202:1:e09a:8d06:a338:aafb])
 by smtp.gmail.com with ESMTPSA id u14sm1291983pfk.211.2020.06.10.19.06.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 19:06:47 -0700 (PDT)
From: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
To: heiko@sntech.de,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] ARM: dts: rockchip: Add marvell BT irq config
Date: Wed, 10 Jun 2020 19:06:42 -0700
Message-Id: <20200610190622.1.I66864be898aa835ccb66b6cd5220d0b082338a81@changeid>
X-Mailer: git-send-email 2.27.0.278.ge193c7cf3a9-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_190649_411105_1788821B 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, chromeos-bluetooth-upstreaming@chromium.org,
 dianders@chromium.org, Rob Herring <robh+dt@kernel.org>,
 linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org,
 mka@chromium.org, Abhishek Pandit-Subedi <abhishekpandit@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Veyron Jaq and Mighty both use the Marvel 8897 WiFi+BT chip. Add wakeup
and pinctrl block to devicetree so the btmrvl driver can correctly
configure the wakeup interrupt.

Signed-off-by: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
Reviewed-by: Reviewed-by: Douglas Anderson <dianders@chromium.org>
---
The Veyron Mighty Chromebook (rk3288 based board) is missing the wake
configuration for Bluetooth. Without this change, the wake irq was not
configurable and wake on Bluetooth was broken.

I verified this change with additional changes in the Bluetooth driver
(the series is at https://patchwork.kernel.org/cover/11599101/). The
driver changes are not necessary for this dts change and shouldn't block
it.


 arch/arm/boot/dts/rk3288-veyron-jaq.dts | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288-veyron-jaq.dts b/arch/arm/boot/dts/rk3288-veyron-jaq.dts
index 171ba6185b6d39..976c0c17a71199 100644
--- a/arch/arm/boot/dts/rk3288-veyron-jaq.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-jaq.dts
@@ -51,6 +51,21 @@ &sdmmc {
 			&sdmmc_bus4>;
 };
 
+&sdio0 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	btmrvl: btmrvl@2 {
+		compatible = "marvell,sd8897-bt";
+		reg = <2>;
+		interrupt-parent = <&gpio4>;
+		interrupts = <RK_PD7 IRQ_TYPE_LEVEL_LOW>;
+		marvell,wakeup-pin = /bits/ 16 <13>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_host_wake_l>;
+	};
+};
+
 &vcc_5v {
 	enable-active-high;
 	gpio = <&gpio7 RK_PC5 GPIO_ACTIVE_HIGH>;
-- 
2.27.0.278.ge193c7cf3a9-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
