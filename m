Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6ADA1AA354
	for <lists+linux-rockchip@lfdr.de>; Wed, 15 Apr 2020 15:11:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=vVO6+JDKCWcIgV8ZojLoUhRMwlxsn/mhDAbhP7+6WzE=; b=TOZ
	GgYr3sW4hoQIyO354ZKFUlaT2dgx9dFv+KQNQrr8qNq7IiGqpzpiv+l/TOSlzVtuirlGgVTBfo1k+
	NeUCllG2E4rXyAEGnZ29KTF8YSYcvy1YlXLuqSV3zfRwuPzsSBzfdDiGRBAMfGxLR+AQkOW8aCZLZ
	tz8lpB0B8TxSezS+37Ly5eM/JIVUlNAcqImPCEgSF+rO88FV2h3BkgMBzHN0wUK4UrMQ/RV1eAhbm
	OmbRZdsmyqdkmpSqgu/LPwyk/ol79iX2HiB9YU/CvDWc1nbwzPCoSEWM/Da1UzJJf39HvNIXc/73G
	VoKdAm4Yd9dnLJ1C1rihGqqDL/HV49g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOhpG-0000YP-OX; Wed, 15 Apr 2020 13:11:34 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOhop-0008Pt-Hn; Wed, 15 Apr 2020 13:11:08 +0000
Received: by mail-wm1-x342.google.com with SMTP id h2so17363144wmb.4;
 Wed, 15 Apr 2020 06:11:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=1YK31f6d9R7ZKz1959zNs117rXGUB2qZVpteQ8Nm8rE=;
 b=opvfaQb0ZITpiBld1k4u5Ru6l4CFHpZ7v8Dsm3tWBEB7BZxs190+jPFTPIwCl50rrx
 NPPMdBa7gnGMXIrhYoOpvsYB8NX67Xjf92Y6es4h/dRkErBjLDBbjqxCGRmV/GjT9ahb
 4il8jDWH3Wn9uiNiMzxAq8Po0YDsM5JA8B9WcZtp/qDYTMGaTLOYqN0SgUkn/Z7PVcSw
 hsdfygbK/xTy52wU0y6n7Cqi0wAyu61S/3Nq5uFCyTH1DprmeApdnBrS4oXhcfva95OX
 RpmoHTicjgAFZXs141O7f9i2gCRF2ctZwxqoP5d51mzkRirXjLJR34W41a7FfOC68577
 PSXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=1YK31f6d9R7ZKz1959zNs117rXGUB2qZVpteQ8Nm8rE=;
 b=Q+Fm3b6FNJIAQ3Q2MeCSvcwYYq7jHnH2Ykof8q87IzaqIJBVojpKrhMQy9P9Av9YgI
 evGBHcaGmUGPzLDtm0aAnwNk5Fw0NLsCJkHJ4ZEIKKUN90VJt1xNXLtjvvo/jlNDGQkU
 3tU00nHgKFMC6Mtxs+v1HlC/HfKp1E46N0jtTiMkXSkoipXKWRoaSq64RHkN8rPCY6uv
 RykTRyD4S1E+ziqgGZaZ5iUhAnH8T5PimWysJ+w/gtxF7MOZKGgcF5StUnXq3TDmU3Dw
 KHv2+t+PHW2I97mW8tFlmCpN/mew82+QRmbLAKWeotxSea4ybPFRd/ONehYg9N2LmOtd
 +V+Q==
X-Gm-Message-State: AGi0PuY0Bik7eKoxS1/8RIs9N7S6rFyMggwfcWUn9xnGKaat82b1f03W
 V27Bjk1nlHuDhL75CP81gqmeD1Tx
X-Google-Smtp-Source: APiQypKb/YVsijkXt1W8jtMK4h3qXbl3iX+wO+27T2T3+keWoO4EtLb2fRtUtD+xSMEElkqoUaNBbQ==
X-Received: by 2002:a1c:b70a:: with SMTP id h10mr5272755wmf.172.1586956264930; 
 Wed, 15 Apr 2020 06:11:04 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id c20sm24022450wmd.36.2020.04.15.06.11.03
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 Apr 2020 06:11:04 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH] arm64: dts: rockchip: remove bus-width from mmc nodes in
 rk3308-roc-cc.dts
Date: Wed, 15 Apr 2020 15:10:57 +0200
Message-Id: <20200415131057.2366-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_061107_587655_E4AD17B0 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
'bus-width' and pinctrl containing the bus-pins
should be in the same file, so remove all entries
from mmc nodes in 'rk3308-roc-cc.dts'.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
index aa256350b..8011e9b12 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
@@ -123,7 +123,6 @@
 };
 
 &emmc {
-	bus-width = <8>;
 	cap-mmc-highspeed;
 	disable-wp;
 	mmc-hs200-1_8v;
@@ -171,7 +170,6 @@
 };
 
 &sdmmc {
-	bus-width = <4>;
 	cap-mmc-highspeed;
 	cap-sd-highspeed;
 	card-detect-delay = <300>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
