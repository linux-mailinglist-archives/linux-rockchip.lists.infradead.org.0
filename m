Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C12521BBA7F
	for <lists+linux-rockchip@lfdr.de>; Tue, 28 Apr 2020 12:00:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=39P/13lnDIDqSdGpp5b8wJgWnIAC58uVP+ApS4kmpd4=; b=CPQjyNXfh6mRsc467jrBbLNcmm
	5X1uMCoEEaoiKBo27YOwhUwwjSNa4wFn7wRWcVVhAu7t6AG8hwg2swHRDUi0xQjELIiqx74D8YP7D
	abwR0FfnE+/fkMaHrnSR71XLcAHU1BJrvbo06LvsYjcOCe3XF+P7PZICJ+7zbpUb87ftlwKYWiQPA
	SYore99ynTO05f7KbteE7qsRfh817Bba+AqoysR33bL9BL7YcEs7UgQa0kBWOq8tgM+909xm4v/+g
	27oNd9aEBuSqRRmFkTn0Y9sTS8CcDJf9rp91xMHusERL97sgJi0wAfse4tbjgoXKiLmbuL8HvWyis
	OSIjN/kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTN2h-0006Ge-7f; Tue, 28 Apr 2020 10:00:43 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTN2c-0006DT-Lq
 for linux-rockchip@lists.infradead.org; Tue, 28 Apr 2020 10:00:40 +0000
Received: by mail-pl1-x644.google.com with SMTP id d24so8166496pll.8
 for <linux-rockchip@lists.infradead.org>; Tue, 28 Apr 2020 03:00:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=w/4FeqQT0bRL6BvMub0x/+Uap5nUkYu7lROf4Grnd8U=;
 b=YKzK4D6JkhymuG32ZjPnuCyfZWwdJFkeSqpoGqR2ukkS97ZH3s5sxlssb/WlvEN3zN
 DV5gwl9yN3/KqLXJqz9Ya59dJraubeQDyA4XSQzU7nSpHwXqE/gdPHPHCtAW8XFU0Pu1
 0jMafOeYJtvevjbYEesis990fd9AMh10nUMvk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=w/4FeqQT0bRL6BvMub0x/+Uap5nUkYu7lROf4Grnd8U=;
 b=R16EA2Im8eLSSCZ13aTwRHLnA4AZzdQgF+WcqPoNg98LzSvlEJJ+uszyiam+n86tMv
 PSDAf34tS/134m7CvrhHTZji/EEBK/IJz3n+bg83mrJnJuPhnbc8UqgmyqK/3yd8797a
 +2KWnmeenYVRpyxO9ya0nG1HDop9XC3609Dg6HR5bC4mBYFgbjfiJE5KMvOxA5k3rwwg
 KIUeL8vaUtLd2p3wMXGx1/p6xfTH5Eh+C0emVIjpaM3xq8FgDTq1+SY6NJ1MgFpEHWMB
 c8woCaldA28uNRmsO5nabObe1fEgdNZxnMerqXbn9gsvmc0aH0zPPB8afeDIfJcPGEXN
 pn9w==
X-Gm-Message-State: AGi0PuYXY1D4u0G7o/+JrX/VucvlcI+8RpYNMY6SrHAI6bFcNUc6QDyp
 H2vb6Is8hRtMf3om7RvwOjCkEQ==
X-Google-Smtp-Source: APiQypJUPRleRe1Qm0jWc1zTx7uh63YlFKqsVVc/HWlbmFMllCFjxFAMharLvfH+lOuYi8GPZNdj3g==
X-Received: by 2002:a17:902:eb43:: with SMTP id
 i3mr24761774pli.299.1588068038073; 
 Tue, 28 Apr 2020 03:00:38 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:f9c1:1c6a:49dc:267d])
 by smtp.gmail.com with ESMTPSA id j32sm12676379pgb.55.2020.04.28.03.00.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2020 03:00:37 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v2 2/6] arm64: dts: rk3399-evb: Move u-boot properties into
 -u-boot.dtsi
Date: Tue, 28 Apr 2020 15:30:15 +0530
Message-Id: <20200428100019.19155-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200428100019.19155-1-jagan@amarulasolutions.com>
References: <20200428100019.19155-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_030038_711511_4AE548C0 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 sunil@amarulasolutions.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Move U-Boot specific properties into rk3399-evb u-boot
specific dtsi file.

This would help to sync the devicetrees from Linux whenever
required instead of adding specific nodes.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- none

 arch/arm/dts/rk3399-evb-u-boot.dtsi | 8 ++++++++
 arch/arm/dts/rk3399-evb.dts         | 2 --
 2 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/arch/arm/dts/rk3399-evb-u-boot.dtsi b/arch/arm/dts/rk3399-evb-u-boot.dtsi
index ccb33d34d1..a4d68f3b98 100644
--- a/arch/arm/dts/rk3399-evb-u-boot.dtsi
+++ b/arch/arm/dts/rk3399-evb-u-boot.dtsi
@@ -11,3 +11,11 @@
 		u-boot,spl-boot-order = &sdhci, &sdmmc;
 	};
 };
+
+&i2c0 {
+	u-boot,dm-pre-reloc;
+};
+
+&rk808 {
+	u-boot,dm-pre-reloc;
+};
diff --git a/arch/arm/dts/rk3399-evb.dts b/arch/arm/dts/rk3399-evb.dts
index 4129e902a8..c72719c0d3 100644
--- a/arch/arm/dts/rk3399-evb.dts
+++ b/arch/arm/dts/rk3399-evb.dts
@@ -199,7 +199,6 @@
 	clock-frequency = <400000>;
 	i2c-scl-falling-time-ns = <50>;
 	i2c-scl-rising-time-ns = <100>;
-	u-boot,dm-pre-reloc;
 
 	rk808: pmic@1b {
 		compatible = "rockchip,rk808";
@@ -211,7 +210,6 @@
 		reg = <0x1b>;
 		rockchip,system-power-controller;
 		#clock-cells = <1>;
-		u-boot,dm-pre-reloc;
 		status = "okay";
 
 		vcc12-supply = <&vcc3v3_sys>;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
