Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 984FC1734C
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 May 2019 10:09:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LaGLA56FLx7hfTrFySjvkFpyEQYe8yL/01rcx/7xmzs=; b=GAv8/nVbNliLPe
	/PgRUjH/UfyXBp/ZudUE/cru0JoyP8v4aofaytNjURyH/1I+qOOH6akJRYLjMKS9xs/LgUm1xfZXu
	MFNQYW3OKnX3OHYyayfplCUjWFYH5F2vhuvrrKtUrsL45XR6X57tdR1AlVe1XacwPGXFXlgr/o8SC
	e5mTKoMy0smpZdnEdCJNq5Q28ZCCObBhU+60HmMSO90f15o3QpT11HQu6nK6iZ8KTnXr0Co6bKQ71
	j84miaE2Eop21e1BjV2LcBlefkC7a4XsLZVORgByKBXDc7KmMRL+wo7V9i0gn9JV+I/0PCMPJ9UQx
	wHRma9adR2ISvAh0Mwyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOHdw-0007qe-NV; Wed, 08 May 2019 08:09:36 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOHdt-0007oT-Jh
 for linux-rockchip@lists.infradead.org; Wed, 08 May 2019 08:09:34 +0000
Received: by mail-pf1-x443.google.com with SMTP id u17so10087614pfn.7
 for <linux-rockchip@lists.infradead.org>; Wed, 08 May 2019 01:09:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ejKhZV0ZePK8koi6sjYi9JqAEP6CgbDzTjWopYnMhJU=;
 b=FbENm5OcYQoEBZeVzlwL+jcCvqFBvSV4CoByXKBqlYX7QMyCeWHkbQq1FoNoX0h16C
 YF8PUWT3UuFOxXjW3O1pnx3+Uf1c2jrcStf8FHjTG1pp5jw9fWpMENV4p6OgvgsexL1R
 Zt820yGgABka1HX0HTKonkFKHqHcvs4hSW8Oo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ejKhZV0ZePK8koi6sjYi9JqAEP6CgbDzTjWopYnMhJU=;
 b=loUF1ua70sJRJb//TALcOIS/xktjaMgTSKwOc3fz9KOg9Eusud50m40BxGSnyVfH+v
 dBNUQDNNTn9wwTFf89hu3K6fpgeqgMpYV93Ol+78SWwOfnkMjPLs+WaDR83jmfaNogw0
 QU6+KjwZTw33W70WWNNJ/MPE+AJh1cgod5Rt893+4Y3Ca1rS2nFLba84VlSLFVI0/dXP
 JZiSVkAWimyFMKVidIkEGj1ei+GNUiDWjEdZcxmxONSmdwvWOXrbvdn34mQfMW0oQUBh
 MQ+OZqzbtGpDk6a/l4J80wBOLgmyhHq1azR02c/cDfrQinVzM/aW+XgJ4m2hxtW2D3yy
 kf6A==
X-Gm-Message-State: APjAAAWskQEpkoy/cuD1nHdGFwz6opSjUonI2PtpzuzW7mKARIXlhg6/
 Jro9Mxko8uaCfEBdsaW6ikQ8CA==
X-Google-Smtp-Source: APXvYqzvaPv0QxMv6GuhVWYuh76M8jvUjL0f1Aj5nyYgNDRs9lhD7YyB4pdVAonrC/Cf8ZStr87Vow==
X-Received: by 2002:a62:6f02:: with SMTP id k2mr48079306pfc.136.1557302972935; 
 Wed, 08 May 2019 01:09:32 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id j9sm33537133pfc.43.2019.05.08.01.09.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 01:09:32 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>
Subject: [PATCH 4/8] rockchip: rk3399: Move u-boot, dm-pre-reloc of uart0,
 uart2
Date: Wed,  8 May 2019 13:39:00 +0530
Message-Id: <20190508080904.1567-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190508080904.1567-1-jagan@amarulasolutions.com>
References: <20190508080904.1567-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_010933_656015_A80495B7 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de
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
