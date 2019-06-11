Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D10143D007
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:58:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NEdK0YhzWm3FIYeoxGZvGeZWfKmBFGhoxGsJRo9l3yw=; b=mkQA0hzDOZ6Ip0
	6oi4+Pe0Gi9vRVQvgUaT5m7WmfSM+dOdopAjv/OnI/v88PsNCmlXjFaZi0ilitD7K5s/JQLsPiWpo
	LDz0UKKUzLLHh4oTpmhToguuCmuCrOF5CpNCzXIo64MF41D3/NnuJxDN+FXagQLaEB5kCd/6iSTUV
	iL+Z7Omx+2UrEIxMa/FBCXiQiLB7M6NyOZe+MwaP3LI/6Aih7J66NJRpY+WKzWZ/ybj5NCMNrxSbh
	qQQgr9rfhOfSAIsNg+GbkQXYAsQL4/1b9M8Y0sRmFFqMM0vjTup0rcRHS3TnfcLMqUcwynBnZzBcK
	DepJR2Stc5fMicxgZU2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiDz-0001I1-T2; Tue, 11 Jun 2019 14:58:12 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiDi-0000xZ-MT
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:57:56 +0000
Received: by mail-pg1-x544.google.com with SMTP id s27so7123179pgl.2
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:57:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eSiNIdWprSTtLeb4eEp8uQJ8QGoY6tivwLSGPJNvRoA=;
 b=M6jDtJGnf9nmO9k+9yAEAp71lhlCGKhXMf4iXvH/UTRMzcNhn3eP00LtmV1yWpwveW
 9eHumWO98l4VPL7HnE5WW1sLH5hGs6cpq1wQ9x8BNiVek2bDFLLeSYe+jWcGWG26YYdz
 D6ch3h3EkROJrf5BE3YacSTyfG4nmJWXHAv+A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eSiNIdWprSTtLeb4eEp8uQJ8QGoY6tivwLSGPJNvRoA=;
 b=TyGpxZvLT+MK7OHZOdj4twR4DaC2qrzTjsUA04UPLIP41Wi9/kpn+kVSaFyzW+b/8h
 2ikm9qfqxMlCEb3fDYitsA1gi8C6Y/vY8LvfBuWO/2BEBtg/BLCPSjw3JrT5gyqs9c/R
 mjnpLTTDaBph8HuTk//dB907ydBVvs8yXjKQHZxZud/JowadvqERaICIRduLTVoT59cC
 DOS5gR4mIyhG6LUXoDgxVBGeGcn0Wcdx1Gxm0C+kusuNy8TdFKhpsxG8QdkEXzFqiopS
 R9OBPVLquFiFywuYE5DFcEL3Dky3lbT15E7qDp6jEp7c1CXTLkvR0nnHZzfSMWpAuL6w
 2C3Q==
X-Gm-Message-State: APjAAAVwpSr4uGsB3Y5J4cp2HPXsj8VpBY1op4NCeGMpKZVpBBc/Rzyd
 Z5N9Liz1Xg2HwdS2Qckyxlhqe4E7O+8=
X-Google-Smtp-Source: APXvYqwrJehV6+7D9BPXPDkJKlEYLCDcG4YoX1WZ1ZqkRplDdS6fq4lbkYT2H9p/3Mev3RI+YBACRA==
X-Received: by 2002:a63:f54c:: with SMTP id e12mr20771000pgk.62.1560265074026; 
 Tue, 11 Jun 2019 07:57:54 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.57.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:57:53 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 92/92] rockchip: dts: rk3399: rock-pi-4: Use LPDDR4-100 dtsi
Date: Tue, 11 Jun 2019 20:21:35 +0530
Message-Id: <20190611145135.21399-93-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075754_819336_8D34047C 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, gajjar04akash@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Use LPDDR4-100 sdram timings dtsi for RockPI-4 board.

All these timings are processed during TPL stage of rock-pi-4 board,
bootchain. This make TPL would replace rockchip in house rkbin in
current bootchain.

Bootchain after and before this change:

   TPL -> SPL -> U-Boot proper

 rkbin -> SPL -> U-Boot proper

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/dts/rk3399-rock-pi-4-u-boot.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/dts/rk3399-rock-pi-4-u-boot.dtsi b/arch/arm/dts/rk3399-rock-pi-4-u-boot.dtsi
index 7bddc3acdb..dbfa4ba9f8 100644
--- a/arch/arm/dts/rk3399-rock-pi-4-u-boot.dtsi
+++ b/arch/arm/dts/rk3399-rock-pi-4-u-boot.dtsi
@@ -4,3 +4,4 @@
  */
 
 #include "rk3399-u-boot.dtsi"
+#include "rk3399-sdram-lpddr4-100.dtsi"
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
