Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C5C1F7DE7
	for <lists+linux-rockchip@lfdr.de>; Fri, 12 Jun 2020 22:03:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6KU+fuFBX6PBQHp1MPDoLLy3PMrMG0AnxnlSYSRmMcY=; b=ucKB1aYh0HoRGp
	iu7f+ssFgwyA2pyras+Z6RoC4nhuP/BpRhs7y7Mm51RT8mIP6/i5yzU315sB/AV4ZYI7SNxd4exa0
	+ncS7a6fAaVzewoZ8NIs4w2dPjj/I/rf/H1Y7fPMGewlVlnRDE+flgIsAdVWDJJVaMsOIPG+PaKYI
	5gZ+98UtvskZftDLwAdk3L2b9PuilrOVQtjm1z+q1WON4JCVJj+GAr13aFl6AzaMrEety1nsWYpqf
	W8vNGLm76Q1O+wO20++jOUACF5V4+K6Sm5bnnEIDJLol4whAVdwtnzPAxAdlwSE1orbroqngo6Q2U
	KI+WgMb9+3JHu3E7xNDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjptD-0004yj-TP; Fri, 12 Jun 2020 20:02:59 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjptA-0004xr-5p
 for linux-rockchip@lists.infradead.org; Fri, 12 Jun 2020 20:02:57 +0000
Received: by mail-pg1-x541.google.com with SMTP id p21so4602066pgm.13
 for <linux-rockchip@lists.infradead.org>; Fri, 12 Jun 2020 13:02:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6uGSExpyps+wiw7uOwP+l2H0cv+SpFFWTmb8dRKkt6U=;
 b=h7u6dR4B19jQUlPQPyqjXka9J3KhpwDNlIcPUaI2++siCsOQzCELypYC05rGhkBGfK
 g6A0zotR7FceCE016nrOeQktoGXFoxfPsVMkwkGm2ZK8vzxnm9PHYfuf86mrONiRQW2Z
 Zw4dDBZtjL34Gk9sshcTJuMJRBFPMalZqIERo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6uGSExpyps+wiw7uOwP+l2H0cv+SpFFWTmb8dRKkt6U=;
 b=WayV9g2h3dK4wGKX8i8E6aaIoGobUEcN2wyDtMnuO1lu0+B1BPyA8lRJzsP+rwnnao
 IXIUx26yPrbsBKWfySOsE2E/ZX3DabEPeS2P9rGJP8XA2YzjQaQftR9DKxGOzNbjRmVB
 smu6Qd5atCZQ1hYzuwykKe9ai0Ks1iyJu1P/3ovigq7pZAw58PLPYL2IWNo5po55pD5J
 sxaPLvf3a7eWohr4/z8eDxV0PY4TF+KK+QwYwcXEkQqI90xwcyjPlz505usNNLW/yxUp
 BGF6iSY/xAJlAWI1LVGsq3dXATH8mCmv4cbtTBn1VlTbbrJn+t8WTi7lLAnUcTJkGAXW
 L8BQ==
X-Gm-Message-State: AOAM531hTfECuxxH8uOOGZPn91fDFhV1iq8sC5LKU5PeE4B2+8yTrAFo
 XiMYUs5mlZxfNTqjXJ3RNj2yHQ==
X-Google-Smtp-Source: ABdhPJz0sMFDiDA11ABe5kT1o/km+Y+ock0L+fTuGu64VLLvv2xzyZOb5s8slfiJArkBbrcCb8SSjA==
X-Received: by 2002:a63:1617:: with SMTP id w23mr12597286pgl.248.1591992175014; 
 Fri, 12 Jun 2020 13:02:55 -0700 (PDT)
Received: from apsdesk.mtv.corp.google.com
 ([2620:15c:202:1:e09a:8d06:a338:aafb])
 by smtp.gmail.com with ESMTPSA id f7sm6544851pje.1.2020.06.12.13.02.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 13:02:54 -0700 (PDT)
From: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
To: heiko@sntech.de,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2] ARM: dts: rockchip: Add marvell BT irq config
Date: Fri, 12 Jun 2020 13:02:48 -0700
Message-Id: <20200612130219.v2.1.I66864be898aa835ccb66b6cd5220d0b082338a81@changeid>
X-Mailer: git-send-email 2.27.0.290.gba653c62da-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_130256_238120_7EBED4B7 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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


Changes in v2:
- Move sdio0 ahead of sdmmc

 arch/arm/boot/dts/rk3288-veyron-jaq.dts | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288-veyron-jaq.dts b/arch/arm/boot/dts/rk3288-veyron-jaq.dts
index 171ba6185b6d39..c15d6865f5a390 100644
--- a/arch/arm/boot/dts/rk3288-veyron-jaq.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-jaq.dts
@@ -44,6 +44,21 @@ regulator-state-mem {
 	};
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
 &sdmmc {
 	disable-wp;
 	pinctrl-names = "default";
-- 
2.27.0.290.gba653c62da-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
