Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DF4B47B85
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:41:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NEdK0YhzWm3FIYeoxGZvGeZWfKmBFGhoxGsJRo9l3yw=; b=SRrTqcsljiQ/0x
	h8deJsfBMqnVk0n8D09TaiA9VYhlHat514XT8q5icMee6kqhm44wCvpZkDCSWsvf4JphHY6B9J3T3
	2oDpKJcnIbDEtDXi/169lM5QAq/ikSWj1DCqmsU+mYIX7TwLrSS4V0KbsOY2H0+X55+g5G8g+hxNH
	LHboQNAX5nM2A9EkAnQ2V1AFoVwvN66cQVsFaA3SRfnogNIZR3JuI3AdvY+Xl2SbYNz0mD1HJ/9TF
	vsCYWtv0RTLK4yHjvbHHMW7KdGsefNRDzjINtm7UyvYYdh8fi/JwTsTMATZaPiPPdtnLP3mg863sV
	B6IPp0hfDE6Owe6W+u4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmH3-0002Tt-US; Mon, 17 Jun 2019 07:41:54 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmGz-0002RW-6o
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:41:50 +0000
Received: by mail-pf1-x441.google.com with SMTP id r1so5183152pfq.12
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:41:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eSiNIdWprSTtLeb4eEp8uQJ8QGoY6tivwLSGPJNvRoA=;
 b=MuIotMc+dRKLX3XNz9Fd6e2LfD9GGTvb3ESUBz2IyVNFx9XrqK4kUGiWUYy5YA3d0M
 Lj9IMWcjdp9DZ3uFZRmnpKyRywjtMTpKw9hgtZesvX5szMMPqfV3oSZenGOFnYNqvIgd
 +uT69Wf4tX9AlaP6MFXkaCPyL/lTObBX52KrM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eSiNIdWprSTtLeb4eEp8uQJ8QGoY6tivwLSGPJNvRoA=;
 b=tnmZEgVFv/+nyeoGqtYlEX4rR82QxdkOPR1sK5M9jRmuHLjl6iVyoNcdg0NOgCIlKa
 PiYRUn4wjyE9h2wSdnlivlD9bOv799qFYwGJp9w++i4SDI6md6NcTLe3TClo0twLDS+O
 jW7sUIrueV5xyX+AStUh5QqVKR6QUN2oy7ySNA6FFGMLI1ccKzaiqCJcQPm9VmMfa3pY
 uzQ0pYcBeNii/u2VWVpGy9Av5RPtRQ+YB4w3ynG0dKdYvYanWvl9Mu2UtJMRkcmG2+ne
 WcZjxYqKUXEGuayf3W3e9kXqhoIggnNFOEKTyXryqZJGdLAs3k67pzq9ILsNYOVWZLpF
 TBDg==
X-Gm-Message-State: APjAAAWGXKMvP8EUM9vl9KFUtUq6MZatb2VYwk8ebWogXy20OF1RbxqN
 qSs018oEE4Wy41JBMCZjX/8Nfg==
X-Google-Smtp-Source: APXvYqyht//TSpQPytJZKuecZguSiBSHc9eVX6jI4WqcbKO3uaw2lMcJR2fV+mLO9E91uLbLUrHNpg==
X-Received: by 2002:a17:90a:25af:: with SMTP id
 k44mr24178745pje.122.1560757308724; 
 Mon, 17 Jun 2019 00:41:48 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.41.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:41:48 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 99/99] rockchip: dts: rk3399: rock-pi-4: Use LPDDR4-100 dtsi
Date: Mon, 17 Jun 2019 13:02:52 +0530
Message-Id: <20190617073252.27810-100-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_004149_316382_602CC092 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
