Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2746069AE3
	for <lists+linux-rockchip@lfdr.de>; Mon, 15 Jul 2019 20:30:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MlQEbnLONhyr/GB2CYERtksHvm7NKlpILXfNHUywjp8=; b=k1cK9K2/SGhUEf
	AlEGaY6mK6i5D8Y3LW5yYTmIEL0FgzgGhEj2ehGE49BtxTgAe5tV+EoPXBBkDu5YqkAzv8tiF1wxN
	bBQMJUUaMhr4i6wnZaYiV4BQlG+jBYU1a47qDK5sUnGFb5Iqe4FslZThe6GWTE+cD1H9HRIZYejsB
	RMRAvUt4yB1wptQf3PXxR4rHqIAVavgnPOqgYqzYw3ckzmtDCaa4hxDygcux8lte0HIvy4IW82i/Q
	SiZyUJUsqHF6e/F1TBEcM1HnH98Eaeq4fHOeKsv50FwyUOSwXkEPgAMAyWRDTtk5U1XQ/Kj8WU64A
	NSVOtoIbexWL1gvQp62A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn5jt-0002id-52; Mon, 15 Jul 2019 18:30:17 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn5jn-0002bP-UX
 for linux-rockchip@lists.infradead.org; Mon, 15 Jul 2019 18:30:13 +0000
Received: by mail-pf1-x442.google.com with SMTP id i189so7809830pfg.10
 for <linux-rockchip@lists.infradead.org>; Mon, 15 Jul 2019 11:30:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wTBXweD1R6wZJRqFVMEPyWutx8ndp9xyM4VkgFPZiDk=;
 b=lON59up1rqoAuUl1YwGncjQfeOQTy2UBDIi8zy1+mZpchdUUephNWefENe1Ick/KmT
 ix+4+yNfhKvX1ktixSYepm82W9tkcXgH7JB+azV2uMlkxpVZ+G5LaIpYPq9N8kcL5DHK
 kiLoRiX1G7b/uL/9IRO9TKeU8UNmNZvEIHkyk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wTBXweD1R6wZJRqFVMEPyWutx8ndp9xyM4VkgFPZiDk=;
 b=UhgamgMej0suc+lewwrcR1JlmLKIQrfpxm5JeTV0KSreS6m8EiXs2k3zq+5wsU1LjS
 ike/NdndMyAlSm+DpBWW7KNTM5hxl2PRBJvBgjnnICAFyQ74jce3PCpzk/EpNdE/vHOw
 NmUx2Ag8ikM3Jeu6TAJgJRi9wqeMSw2agO3jm3TJdpmWFAjSHCfgyiXjAnXZvN8Msnux
 OMiIOq1ekHiNxpromDDVWG9eGwFYLewObXIYsjKXx+LnPxKZ77yRXYt4lBwsJ77zWLGN
 RV/kweaoMAMOoXfB+9BiqUPOYq15kTvJU/Pu33gslohC2E+dFQm+lm45bPQ6hud3sa0R
 xrDQ==
X-Gm-Message-State: APjAAAW95nlcrUFTDT3+bIqJcHZ5SCtFEb/T7cmwTlK1h+NwczofMhU9
 MpG+xWvRTqqo++PyIMpHt6a+YA==
X-Google-Smtp-Source: APXvYqwCRT5i64OhuDmqJk0PGWYpu7tXTDPPQRZFCGZ5c6XTlN9orY0DAC0widfwl6XvKRDvDWHKVg==
X-Received: by 2002:a63:5920:: with SMTP id n32mr27438776pgb.352.1563215411338; 
 Mon, 15 Jul 2019 11:30:11 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id y133sm20250075pfb.28.2019.07.15.11.30.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 11:30:10 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 18/18] rockchip: dts: rk3399: nanopi-neo4: Use DDR3-1866
 dtsi
Date: Mon, 15 Jul 2019 23:58:56 +0530
Message-Id: <20190715182856.21688-19-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190715182856.21688-1-jagan@amarulasolutions.com>
References: <20190715182856.21688-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_113012_098350_7346F13D 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Use DDR3-1866 2GB ddr timings dtsi for 1GB NanoPi Neo4 board.

Since sdram rk3399 support dynamic stride and rank detection it
can able to detect 1GB ddr eventough the timings are meant for
dual channel, 2GB size.

Bootchain after and before this change are:

 TPL -> SPL -> U-Boot proper

 rkbin -> SPL -> U-Boot proper

This certainly fix the second channel data training initialization
since we have dynamic rank, stride where second channel capabilities
are clear or memset to 0.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/dts/rk3399-nanopi-neo4-u-boot.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/dts/rk3399-nanopi-neo4-u-boot.dtsi b/arch/arm/dts/rk3399-nanopi-neo4-u-boot.dtsi
index 7d22528f49..eb0aca4758 100644
--- a/arch/arm/dts/rk3399-nanopi-neo4-u-boot.dtsi
+++ b/arch/arm/dts/rk3399-nanopi-neo4-u-boot.dtsi
@@ -4,3 +4,4 @@
  */
 
 #include "rk3399-nanopi4-u-boot.dtsi"
+#include "rk3399-sdram-ddr3-1866.dtsi"
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
