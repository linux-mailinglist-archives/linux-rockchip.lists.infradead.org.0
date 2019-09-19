Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 321F9B72AE
	for <lists+linux-rockchip@lfdr.de>; Thu, 19 Sep 2019 07:30:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GYb5caakcObMl7F3FD/ep5IRfIPAivWcxSlSstOI404=; b=m6CeIT/ayom1og
	HxufD6RHp6fTryqhRCHEqasVvqZQDpufMZrAra/b4HQ2aa/0GR/CkkjBmXcLGg1pngpPodYp1PTVR
	/3hCNNlS9uJK4s8yMMLjbBSMnQMHh3rfhYv2dLcUxFdG9/5C/LfojrD0nV+tjL7kkr97mSltTTw+g
	or3wLNajFgg2bZLCiR9iS9flXLIfSLMjMjhY3wtM18c1+mHsvwuFCW+F/yo0tyqWnXOy87caYvj9u
	0fYYI2OEiCsqBgaYaR+gLJdHCgY8yZQWZ4oxNE/3L+i6ES3Fq7kR1EVBMGbOiv/5CmDUpXQO9DsuY
	0LchkvNWcBCjjG9Tp1nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAp1P-0007do-LB; Thu, 19 Sep 2019 05:30:27 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAp06-0005F7-2J
 for linux-rockchip@lists.infradead.org; Thu, 19 Sep 2019 05:29:08 +0000
Received: by mail-pg1-x542.google.com with SMTP id n190so1217709pgn.0
 for <linux-rockchip@lists.infradead.org>; Wed, 18 Sep 2019 22:29:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7UOcZwhIF06MhGn+HJKXs6pdfSRqhxVhEIb50OgmNOI=;
 b=Y7HZPUIUZqEK4jo+BJve1KpFrqXMnsuT4bQMzaur4NSxYR5oJZEaU/x99ezt/hgzfm
 M8PBWQosHOZYlBM54/Fa5fMIwPZQ7ECsrS5UPQMAhp40MvbZCPvEYUe+LfiUyItaU+O5
 VrurC+B1oAuvwLo1lyOl7ZjDnYwRIKRGoziX0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7UOcZwhIF06MhGn+HJKXs6pdfSRqhxVhEIb50OgmNOI=;
 b=VP5pD5ug0NP+xm594CPjl3KPkQBVX7fno6hEMszzNQcJ+tchQFwyn+Cy0DdTDHVhXr
 fKCb8DxwVe7a359pbhC5/BtTWAnhEG2c+8YdEiUGQxnPLH2MQqsLj3RlyN26n48lxbZ8
 n5HBVqOojAjdbIUWqWRXPY5B39D9f6j3gtMA4v83PWF5PfyzGO53IFLPSqUBF2BjdAtC
 5aHbUw1XFA5TlSOfYUwxJk8JpzrqERpCZ4mvnewKxHNs+DZj0xd/Z2yDbdKR+6VyzZ5k
 YsfzcBDhEP1n4QTUnKbPaaSIy9aMDj1nySmgJmfFgXPfAOjMZEkqbGp6Kteo6013T0iv
 b8Cg==
X-Gm-Message-State: APjAAAVAz7bvgwH4nQ2Qvg5Y+RUg4O8fRBHcHTibSHDegQ8jZb0jYDgA
 qdmrWKc4Zg8DgmDgvh5u3ao96nY5uLg=
X-Google-Smtp-Source: APXvYqwhNboYAOFo2Eq0/XPNnZNqgcNjmWaxGA4Hw7IJ25NN0lvkUgCVt3/UnpQ1hpCwXf1Vlu0p/A==
X-Received: by 2002:a62:fb06:: with SMTP id x6mr724333pfm.186.1568870945159;
 Wed, 18 Sep 2019 22:29:05 -0700 (PDT)
Received: from localhost.localdomain ([49.206.200.127])
 by smtp.gmail.com with ESMTPSA id z20sm5051930pjn.12.2019.09.18.22.29.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 22:29:04 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Levin Du <djw@t-chip.com.cn>,
 Akash Gajjar <akash@openedev.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 5/6] arm64: dts: rockchip: Rename vcc12v_sys into dc_12v for
 roc-rk3399-pc
Date: Thu, 19 Sep 2019 10:58:21 +0530
Message-Id: <20190919052822.10403-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190919052822.10403-1-jagan@amarulasolutions.com>
References: <20190919052822.10403-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_222906_520334_EEEF4270 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Jagan Teki <jagan@amarulasolutions.com>,
 Da Xue <da@lessconfused.com>, linux-amarula@amarulasolutions.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

It is always better practice to follow regulator naming conventions
as per the schematics for future references.

This would indeed helpful to review and check the naming convention
directly on schematics, both for the code reviewers and the developers.

So, rename vcc12v_sys into dc_12v as per rk3399 power tree as per
roc-rk3399-pc schematics.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../boot/dts/rockchip/rk3399-libretech-roc-rk3399-pc.dts  | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-libretech-roc-rk3399-pc.dts b/arch/arm64/boot/dts/rockchip/rk3399-libretech-roc-rk3399-pc.dts
index e09bcbdd92f5..51242ea5447d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-libretech-roc-rk3399-pc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-libretech-roc-rk3399-pc.dts
@@ -57,9 +57,9 @@
 	 * should be placed inside mp8859, but not until mp8859 has
 	 * its own dt-binding.
 	 */
-	vcc12v_sys: mp8859-dcdc1 {
+	dc_12v: mp8859-dcdc1 {
 		compatible = "regulator-fixed";
-		regulator-name = "vcc12v_sys";
+		regulator-name = "dc_12v";
 		regulator-always-on;
 		regulator-boot-on;
 		regulator-min-microvolt = <12000000>;
@@ -85,7 +85,7 @@
 		regulator-boot-on;
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
-		vin-supply = <&vcc12v_sys>;
+		vin-supply = <&dc_12v>;
 	};
 
 	/* Actually 3 regulators (host0, 1, 2) controlled by the same gpio */
@@ -118,7 +118,7 @@
 		regulator-boot-on;
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
-		vin-supply = <&vcc12v_sys>;
+		vin-supply = <&dc_12v>;
 	};
 
 	vdd_log: vdd-log {
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
